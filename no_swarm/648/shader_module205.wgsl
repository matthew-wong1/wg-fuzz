struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(-645f), Struct_1(-1475f), Struct_1(-662f), Struct_1(110f), Struct_1(2551f), Struct_1(-635f), Struct_1(-326f), Struct_1(1246f), Struct_1(362f), Struct_1(-333f), Struct_1(-137f), Struct_1(-746f), Struct_1(663f), Struct_1(-1000f), Struct_1(-705f), Struct_1(-767f));

var<private> global1: i32;

var<private> global2: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1286f * 666f))));
    global2 = array<vec3<bool>, 7>();
    global1 = -1i & firstTrailingBit(abs(_wgslsmith_mod_i32(31947i << (u_input.b % 32u), 1i)));
    var var_1 = vec4<bool>((-127f == var_0.a) || false, 88805u >= u_input.a, false, !((_wgslsmith_f_op_f32(step(var_0.a, -595f)) <= _wgslsmith_f_op_f32(var_0.a - var_0.a)) || select(true, all(vec4<bool>(true, true, false, true)), true)));
    global2 = array<vec3<bool>, 7>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(964f)) * _wgslsmith_f_op_f32(-var_0.a))), var_0.a, true)), var_0.a, !(-1012f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-210f)) - _wgslsmith_f_op_f32(860f + -1240f)))));
}

fn func_3(arg_0: u32) -> bool {
    return all(vec4<bool>(false, any(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true, true || any(vec2<bool>(true, true))));
}

fn func_1(arg_0: f32, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(159f * arg_0) - _wgslsmith_f_op_f32(func_2()))), -999f)));
    var var_1 = all(select(vec3<bool>(false, any(!global2[_wgslsmith_index_u32(1u, 7u)]), false), !vec3<bool>(func_3(1u), true, 1u <= arg_1), false));
    global2 = array<vec3<bool>, 7>();
    let var_2 = ~abs(select(countOneBits(-1i), ~(-2147483647i), true)) <= (_wgslsmith_mod_i32(-47042i, ~firstTrailingBit(-11519i)) ^ _wgslsmith_mod_i32(select(-1i << (arg_1 % 32u), abs(-33413i), true), _wgslsmith_add_i32(1i, -30549i) >> (_wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.c.yy) % 32u)));
    var_1 = var_2;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 7>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 18132u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -915f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_div_f32(454f, -842f)), true))));
    global0 = array<Struct_1, 16>();
    let var_2 = ~_wgslsmith_mod_vec3_u32(~(vec3<u32>(u_input.b, u_input.b, 0u) | _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4334u, u_input.a), vec3<u32>(3084u, u_input.a, u_input.b))), max(u_input.c, ~_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(u_input.b, 53486u, u_input.a))));
    var var_3 = ~vec4<u32>(u_input.a, max(~var_2.x ^ u_input.b, _wgslsmith_add_u32(_wgslsmith_add_u32(30422u, var_2.x), ~u_input.a)), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_2.x | 0u), vec2<u32>(~30489u, _wgslsmith_mult_u32(666u, u_input.b))));
    var var_4 = ~(~var_3.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_1.a, var_1.a)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 2179f, -370f) - vec3<f32>(548f, var_1.a, var_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_0, -1444f)))))));
}

