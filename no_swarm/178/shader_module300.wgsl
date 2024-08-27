struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 19>;

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec4<i32>(64447i, -69720i, 0i, 0i), true, vec3<i32>(1i, i32(-2147483648), -16720i)), Struct_2(vec4<i32>(-18112i, i32(-2147483648), 1i, -15727i), false, vec3<i32>(0i, 1i, 1i)), Struct_2(vec4<i32>(0i, 1i, i32(-2147483648), -7928i), false, vec3<i32>(52243i, -1i, -1i)), Struct_2(vec4<i32>(-10438i, 1i, 2147483647i, i32(-2147483648)), false, vec3<i32>(1i, i32(-2147483648), 1i)), Struct_2(vec4<i32>(-7059i, 2147483647i, -17796i, 9560i), true, vec3<i32>(18057i, -20778i, 1i)), Struct_2(vec4<i32>(-11495i, 40747i, 2147483647i, -20807i), false, vec3<i32>(1i, -1i, 413i)));

var<private> global3: vec4<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2164f, 1000f, 1282f, 902f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1721f, -413f, -760f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-271f, -1756f, 1000f, -1334f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1608f, 502f, -212f, -863f)), vec4<f32>(310f, 1947f, 437f, -1708f))))))));
    global1 = array<Struct_1, 19>();
    return global3.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_add_u32(select(43626u, ~15726u, any(vec4<bool>(true, true, global0.b, false))), _wgslsmith_dot_vec2_u32(vec2<u32>(8722u, arg_0.x), global3.zy) >> (11507u % 32u))), 6u)];
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(arg_0.x, u_input.b.x), func_3(vec3<u32>(u_input.b.x, arg_0.x, 0u), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, arg_0.x, 4294967295u)), _wgslsmith_mult_u32(arg_0.x, global3.x), global3.x, u_input.b.x)) >> ((60126u >> (abs(_wgslsmith_clamp_u32(1u, global3.x, 36719u)) % 32u)) % 32u)), 19u)];
    let var_1 = !vec2<bool>(global0.b, !all(!vec4<bool>(true, global0.b, false, global0.b)));
    let var_2 = select(var_1, var_1, !var_1);
    global0 = Struct_2(vec4<i32>(_wgslsmith_clamp_i32(arg_1.a, ~1i, arg_1.a), _wgslsmith_add_i32(i32(-1i) * -9757i, _wgslsmith_mult_i32(-30344i, ~global0.c.x)), global0.a.x, -1i), any(!vec3<bool>(true, var_1.x || true, !global0.b)), -(vec3<i32>(~1i, -1i, firstTrailingBit(u_input.c)) << (global3.zzx % vec3<u32>(32u))));
    return arg_1;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec4<i32> {
    global1 = array<Struct_1, 19>();
    let var_0 = select(select(!(!vec3<bool>(false, false, global0.b)), !(!(!vec3<bool>(global0.b, true, global0.b))), !all(!vec3<bool>(false, false, global0.b))), vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-232f + 485f)) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1520f), _wgslsmith_f_op_f32(f32(-1f) * -572f))), !global0.b), !(!(!select(vec3<bool>(global0.b, global0.b, false), vec3<bool>(global0.b, false, false), vec3<bool>(true, global0.b, global0.b)))));
    var var_1 = select(select(select(!(!var_0), select(vec3<bool>(false, global0.b, var_0.x), vec3<bool>(var_0.x, global0.b, var_0.x), var_0.x), select(var_0, vec3<bool>(var_0.x, true, true), var_0)), select(var_0, !(!var_0), select(var_0, !var_0, global0.b)), false), !var_0, select(var_0, vec3<bool>(true | (global0.b && false), var_0.x, false), select(vec3<bool>(global0.b, var_0.x, !var_0.x), !var_0, var_0)));
    global3 = _wgslsmith_sub_vec4_u32(~abs(~(~vec4<u32>(global3.x, global3.x, u_input.b.x, 1031u))), vec4<u32>(~0u, ~countOneBits(29916u), u_input.b.x, global3.x));
    global0 = global2[_wgslsmith_index_u32(~u_input.b.x, 6u)];
    return vec4<i32>(-2147483647i, 20057i, 0i, -_wgslsmith_div_i32(abs(-arg_1.a), ~(-global0.a.x)));
}

fn func_1(arg_0: Struct_2) -> u32 {
    global1 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1241f * -1790f))) + _wgslsmith_f_op_f32(floor(-929f))) + _wgslsmith_f_op_f32(1038f + _wgslsmith_f_op_f32(step(1000f, -466f)))));
    var_0 = -141f;
    let var_1 = Struct_2(func_4(4101i, func_2(~vec2<u32>(global3.x, global3.x), global1[_wgslsmith_index_u32(global3.x, 19u)])), true, global0.a.xzx);
    let var_2 = var_1;
    return 25818u;
}

fn func_5(arg_0: vec2<bool>) -> Struct_2 {
    global2 = array<Struct_2, 6>();
    let var_0 = _wgslsmith_div_i32(u_input.c, -global0.c.x);
    var var_1 = global2[_wgslsmith_index_u32(55567u, 6u)];
    let var_2 = u_input.a.x;
    var_1 = global2[_wgslsmith_index_u32(~min(_wgslsmith_sub_u32(~(u_input.b.x >> (1u % 32u)), func_1(Struct_2(global0.a, global0.b, vec3<i32>(var_2, var_2, -1i)))), select(86431u, ~global3.x, all(vec2<bool>(true, global0.b)))), 6u)];
    return Struct_2(global0.a, false, ~var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!select(select(vec4<bool>(global0.b, false, global0.b, true), vec4<bool>(false, global0.b, false, false), vec4<bool>(global0.b, global0.b, global0.b, false)), vec4<bool>(true, false, false, true), true)));
    let var_1 = global3.x;
    global1 = array<Struct_1, 19>();
    var var_2 = func_5(vec2<bool>(!(50650u <= func_1(Struct_2(global0.a, global0.b, vec3<i32>(9524i, u_input.a.x, global0.a.x)))), true));
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(9701u, 1u)), select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), global3.yy), ~vec2<u32>(global3.x, 21314u), var_0.x)), u_input.b.zz));
}

