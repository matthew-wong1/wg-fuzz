struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 8387u), true, vec4<u32>(64835u, 1u, 1u, 8214u));

var<private> global1: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(23943i, -7730i), vec2<i32>(-17493i, -33675i), vec2<i32>(0i, 12980i), vec2<i32>(i32(-2147483648), -81589i), vec2<i32>(35134i, 0i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(39278i, -1i), vec2<i32>(8289i, -402i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, -42870i), vec2<i32>(1i, -59155i), vec2<i32>(16330i, 34226i), vec2<i32>(2147483647i, -40486i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, 860i), vec2<i32>(-41637i, 1i));

var<private> global2: array<vec4<u32>, 11>;

var<private> global3: u32 = 7128u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: bool) -> vec4<u32> {
    global3 = global0.c.x;
    global0 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, abs(global0.a.x) >> (select(96663u, global0.c.x, true) % 32u), global0.a.x, global0.c.x), ~vec4<u32>(1u, 1u, global0.c.x, 3979u) << (_wgslsmith_mult_vec4_u32(firstLeadingBit(global2[_wgslsmith_index_u32(global0.a.x, 11u)]), global2[_wgslsmith_index_u32(max(1u, global0.c.x), 11u)]) % vec4<u32>(32u))), true, ~vec4<u32>(global0.a.x, global0.a.x, 17164u, 23730u));
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(0u, 11u)], true, vec4<u32>(45792u, 1u, _wgslsmith_add_u32(global0.a.x, _wgslsmith_div_u32(_wgslsmith_add_u32(global0.a.x, global0.c.x), abs(4294967295u))), global0.a.x));
    var var_1 = u_input.a.x;
    global0 = Struct_1(global2[_wgslsmith_index_u32((min(min(2132u, var_0.c.x), firstLeadingBit(global0.c.x)) ^ _wgslsmith_div_u32(~53549u, var_0.c.x)) >> (abs(_wgslsmith_sub_u32(~global0.c.x, 4294967295u)) % 32u), 11u)], arg_1, vec4<u32>(~(~84736u), 1u, max(global0.c.x ^ var_0.c.x, _wgslsmith_dot_vec3_u32(global0.a.wyy, global0.a.wyx)), 10212u) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.x, global0.a.x, global0.a.x, var_0.a.x), select(vec4<u32>(var_0.a.x, global0.a.x, var_0.a.x, global0.c.x), global0.c, vec4<bool>(true, true, true, arg_1))));
    return ~(~(~vec4<u32>(var_0.c.x, var_0.c.x, ~global0.c.x, _wgslsmith_sub_u32(global0.a.x, var_0.c.x))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: u32) -> u32 {
    let var_0 = Struct_2(56674i, Struct_1(func_3(!all(vec4<bool>(arg_2.x, false, arg_1, global0.b)), !arg_0.b), true, global0.c), u_input.a.x, max(global1[_wgslsmith_index_u32(1u, 16u)], abs(-global1[_wgslsmith_index_u32(arg_0.c.x, 16u)] >> (countOneBits(vec2<u32>(10835u, arg_0.a.x)) % vec2<u32>(32u)))), Struct_1(vec4<u32>(firstTrailingBit(arg_3 << (32736u % 32u)), arg_0.c.x, max(abs(global0.c.x), ~1u), _wgslsmith_mult_u32(global0.c.x, arg_3)), any(!(!arg_2)), ~(~(arg_0.c << (vec4<u32>(13883u, global0.a.x, arg_0.a.x, arg_3) % vec4<u32>(32u))))));
    global2 = array<vec4<u32>, 11>();
    global1 = array<vec2<i32>, 16>();
    global1 = array<vec2<i32>, 16>();
    global1 = array<vec2<i32>, 16>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(countOneBits(28105u)), var_0.b.a.x), vec2<u32>(arg_3, global0.a.x));
}

fn func_4(arg_0: u32, arg_1: i32) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -573f) * _wgslsmith_f_op_f32(trunc(-460f))))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(923f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1031f, 1070f) + _wgslsmith_f_op_f32(f32(-1f) * -327f)))), _wgslsmith_f_op_f32(f32(-1f) * -383f));
    var var_1 = Struct_1(abs(~vec4<u32>(~arg_0, _wgslsmith_add_u32(14775u, global0.c.x), arg_0, arg_0)), all(!select(vec4<bool>(global0.b, false, global0.b, global0.b), select(vec4<bool>(true, global0.b, true, global0.b), vec4<bool>(false, true, true, false), false), global0.b)), vec4<u32>(arg_0, arg_0, _wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(~91918u, ~global0.a.x, arg_0)), arg_0));
    let var_2 = Struct_1(var_1.a, !any(!select(vec4<bool>(var_1.b, var_1.b, global0.b, var_1.b), vec4<bool>(false, true, false, false), false)), vec4<u32>(~(~countOneBits(arg_0)), 0u, 77795u, 0u));
    return var_2;
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_2(u_input.a.x, func_4(_wgslsmith_clamp_u32(func_2(Struct_1(global2[_wgslsmith_index_u32(global0.a.x, 11u)], global0.b, global2[_wgslsmith_index_u32(global0.c.x, 11u)]), true & global0.b, vec3<bool>(false, global0.b, true), 2507u), 9090u, global0.c.x), 221i), _wgslsmith_add_i32(reverseBits(countOneBits(u_input.a.x & -2147483647i)), max(~(-40886i), 0i)), global1[_wgslsmith_index_u32(0u, 16u)], Struct_1(global0.c, true, vec4<u32>(_wgslsmith_mod_u32(1u, 0u & global0.c.x), global0.c.x, ~1u, 85663u)));
    var var_1 = func_4(1u, select(u_input.a.x, -u_input.a.x, true));
    global3 = global0.a.x;
    let var_2 = u_input.a.x;
    var_1 = var_0.b;
    return vec2<u32>(var_0.b.c.x, var_0.e.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(u_input.a.x, u_input.a.x);
    var_0 = _wgslsmith_clamp_i32(-18487i, u_input.a.x, u_input.a.x);
    var var_1 = ~abs(~func_1()) & global0.a.yx;
    var var_2 = u_input.a.x;
    var_0 = 1i;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1035f, _wgslsmith_f_op_f32(abs(-342f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1440f)), _wgslsmith_div_f32(-361f, -917f))))) - 1000f);
    let var_4 = ~firstLeadingBit(4294967295u);
    var var_5 = !all(!select(vec3<bool>(false, global0.b, global0.b), vec3<bool>(false, false, true), false)) | (var_1.x != 64413u);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(global0.a.xww, ~vec3<u32>(14033u, 0u, var_1.x)));
}

