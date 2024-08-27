struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 31>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> i32 {
    global0 = array<vec3<f32>, 31>();
    global0 = array<vec3<f32>, 31>();
    global0 = array<vec3<f32>, 31>();
    global0 = array<vec3<f32>, 31>();
    let var_0 = u_input.b.x;
    return 40014i;
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_4(!select(!vec3<bool>(arg_0.a, false, false), select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, true, arg_0.a)), !vec3<bool>(arg_0.a, arg_0.a, false)), 921f, ~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, arg_0.c, u_input.a, arg_0.b.c.x)), arg_0.b.c), -31807i);
    let var_1 = Struct_5(Struct_3(Struct_2(all(select(vec2<bool>(false, var_0.a.x), vec2<bool>(true, arg_0.a), vec2<bool>(false, false))), Struct_1(select(var_0.d, arg_0.b.a, arg_0.a), -1703f, max(vec4<u32>(4294967295u, u_input.a, var_0.c, 0u), vec4<u32>(var_0.c, 52959u, u_input.a, arg_0.b.c.x))), 31589u >> (1u % 32u)), arg_0, Struct_1(1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(581f * arg_0.b.b))), max(arg_0.b.c, arg_0.b.c) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.c.x, var_0.c, var_0.c, 29920u), vec4<u32>(u_input.a, u_input.a, 0u, var_0.c)) % vec4<u32>(32u))), _wgslsmith_add_vec3_u32(~vec3<u32>(18826u, arg_0.b.c.x, u_input.a) ^ vec3<u32>(31717u, var_0.c, var_0.c), ~(~vec3<u32>(u_input.a, 4294967295u, arg_0.c)))), _wgslsmith_f_op_vec3_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(66516u ^ arg_0.b.c.x), var_0.c), 31u)])), Struct_2(all(vec4<bool>(true, false, true, var_0.d != 1i)), arg_0.b, var_0.c));
    let var_2 = all(select(vec2<bool>(!arg_0.a & var_1.c.a, false), vec2<bool>(select(any(var_0.a.yz), true, false || var_0.a.x), var_0.a.x), true));
    var var_3 = -(~select(vec4<i32>(var_1.a.a.b.a, -69826i, _wgslsmith_dot_vec2_i32(u_input.b.xz, u_input.b.zy), -1i), ~abs(vec4<i32>(-1i, var_0.d, -30399i, arg_0.b.a)), var_2));
    let var_4 = _wgslsmith_mult_i32(0i, firstLeadingBit(_wgslsmith_clamp_i32(var_0.d, var_1.c.b.a, -12553i) << (countOneBits(~u_input.a) % 32u)));
    return ~reverseBits(_wgslsmith_clamp_u32(42975u, u_input.a >> (_wgslsmith_dot_vec2_u32(arg_0.b.c.wy, var_1.c.b.c.yy) % 32u), arg_0.c));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global0 = array<vec3<f32>, 31>();
    var var_0 = vec4<i32>(_wgslsmith_add_i32(70584i, -(-u_input.b.x << (1u % 32u))), _wgslsmith_add_i32(~(~(-u_input.b.x)), _wgslsmith_mod_i32(-11136i, 19846i)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, u_input.b.x, func_2()), u_input.b.x), ~u_input.b.x);
    global0 = array<vec3<f32>, 31>();
    var var_1 = (reverseBits(abs(u_input.a) | _wgslsmith_mod_u32(u_input.a, 6426u)) & 72079u) << (abs(46454u) % 32u);
    var_0 = vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(func_2(), _wgslsmith_mult_i32(select(-u_input.b.x, -32349i, true), -2147483647i)), 42500i, -var_0.x);
    return Struct_2(true, Struct_1(-abs(min(u_input.b.x, -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-257f, -1203f))), vec4<u32>(abs(max(u_input.a, arg_0)), firstTrailingBit(3855u), 1u, 95895u)), _wgslsmith_sub_u32(1u, func_3(Struct_2(0i != u_input.b.x, Struct_1(0i, -1413f, vec4<u32>(71063u, 3663u, 1u, arg_0)), firstTrailingBit(12452u)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> u32 {
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = all(vec2<bool>(true, true));
    let var_2 = -178f;
    var var_3 = vec4<u32>(_wgslsmith_div_u32(~u_input.a, u_input.a), u_input.a, ~4294967295u, ~func_4(Struct_3(func_1(1u), func_1(94566u), func_1(36402u).b, min(vec3<u32>(4294967295u, u_input.a, 46030u), vec3<u32>(75035u, u_input.a, u_input.a))), ~vec2<u32>(4294967295u, 9441u) << (~vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))));
    var var_4 = vec4<i32>(var_0.x, -u_input.b.x ^ var_0.x, firstLeadingBit(~(~(-3224i))), abs(u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~u_input.a, abs(~var_3.x)), 724f, var_4.xz);
}

