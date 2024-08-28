struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> f32 {
    global0 = arg_0;
    global0 = arg_1.a.x;
    global0 = arg_1.a.x;
    global0 = _wgslsmith_div_u32(select(16871u, countOneBits(~2848u), -1984f != _wgslsmith_f_op_f32(-1377f * arg_1.b)) << (~(~_wgslsmith_div_u32(60553u, arg_0)) % 32u), arg_1.a.x);
    global0 = arg_1.a.x;
    return arg_1.b;
}

fn func_3() -> i32 {
    let var_0 = Struct_4(max(-abs(u_input.b), 10658i));
    global0 = 6238u;
    global0 = 20686u;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-352f, 256f)))), 573f))));
    var var_2 = ~u_input.a;
    return -_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i) >> (u_input.a.wz % vec2<u32>(32u)), reverseBits(vec2<i32>(-8343i, -9358i))) | var_0.a, -13611i, u_input.b);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a.x, Struct_1(u_input.a.yyw, 554f), 527f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1315f + -388f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), -1119f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1448f)))));
    var var_1 = vec3<i32>(-19982i, -u_input.b, func_3());
    let var_2 = select(select(vec3<bool>(~u_input.a.x >= reverseBits(0u), -27126i > _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, u_input.b, var_1.x), vec4<i32>(-1i, -2147483647i, var_1.x, -11574i)), ~u_input.a.x <= u_input.a.x), !select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), true), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), (i32(-1i) * -1i) == _wgslsmith_mod_i32(19788i, u_input.b)), true || (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2077f + 1466f), _wgslsmith_f_op_f32(-var_0.x), -816f != var_0.x)) < _wgslsmith_f_op_f32(387f * _wgslsmith_f_op_f32(max(735f, -561f)))));
    var_1 = firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(~0i, var_1.x) | var_1.x, ~(u_input.b << (~1u % 32u)), u_input.b));
    let var_3 = vec3<u32>(19197u, 4294967295u & _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x | countOneBits(15515u), _wgslsmith_mult_u32(~u_input.a.x, select(u_input.a.x, u_input.a.x, false))), u_input.a.x);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    let var_1 = -748f;
    global0 = 1u;
    let var_2 = ~u_input.a.wy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-578f * var_0))), _wgslsmith_dot_vec2_i32(firstLeadingBit((vec2<i32>(u_input.b, 2147483647i) & vec2<i32>(0i, u_input.b)) ^ ~vec2<i32>(u_input.b, u_input.b)), abs(select(vec2<i32>(0i, 3468i), vec2<i32>(u_input.b, u_input.b), false) ^ vec2<i32>(u_input.b, u_input.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1422f, _wgslsmith_div_f32(-1441f, 505f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + -184f)), _wgslsmith_div_f32(-1611f, _wgslsmith_f_op_f32(exp2(var_0))))), _wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_f32(-var_1));
}

