struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(sign(-844f)), true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(732f))) + -1737f))));
    var var_1 = Struct_2(u_input.a.zx);
    var_1 = Struct_2(var_1.a);
    var var_2 = Struct_1(~arg_0.a);
    var var_3 = arg_0;
    return 653f;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1022f, -610f, false)))))), _wgslsmith_f_op_f32(func_3(Struct_1(38805u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.b.x))), _wgslsmith_f_op_f32(1063f - 391f), any(arg_0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-692f)), 1499f)))), -499f), 1f);
    let var_1 = vec4<f32>(_wgslsmith_div_f32(642f, var_0.x), -974f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -163f) - var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-var_0.x));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1 - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(var_1)), _wgslsmith_f_op_vec4_f32(var_1 - vec4<f32>(1116f, var_0.x, var_1.x, var_1.x)))))));
    var var_2 = 1u;
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(var_1.x, 1633f), 1f);
    return Struct_1(u_input.d.x);
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(4294967295u);
    let var_1 = !vec4<bool>(!(!any(vec4<bool>(false, true, true, false))), true | all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), all(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), all(vec2<bool>(true, false)))));
    var var_2 = _wgslsmith_div_vec3_u32(~u_input.b, vec3<u32>(1u, ~0u, select(var_0.a, var_0.a >> (_wgslsmith_mod_u32(u_input.b.x, var_0.a) % 32u), false)));
    var_0 = func_2(var_1.wwx, false);
    let var_3 = abs(vec2<i32>(u_input.a.x, u_input.a.x));
    return Struct_1(u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = ~(~u_input.d >> (vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(u_input.d.x, 84860u)), 0u & var_0, _wgslsmith_mod_u32(~27008u, _wgslsmith_div_u32(var_0, 0u)), 31190u) % vec4<u32>(32u)));
    let var_2 = func_1(~u_input.d.ww);
    var var_3 = Struct_1(reverseBits(1u << (~u_input.b.x % 32u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, 12259u), 81027u, _wgslsmith_mod_u32(19306u, var_2.a), 0u), _wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(0u, var_1.x, u_input.d.x, var_0)) & u_input.d));
    var var_4 = _wgslsmith_sub_i32(~(-2147483647i ^ firstLeadingBit(u_input.c)), _wgslsmith_div_i32(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -19819i), u_input.a.yx, vec2<i32>(-12800i, u_input.a.x)), firstTrailingBit(vec2<i32>(-21332i, u_input.c))))) | (u_input.c | _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-9270i, u_input.c, 1i), vec3<i32>(u_input.c, u_input.a.x, 19906i), vec3<bool>(true, true, true)), vec3<i32>(-2147483647i, -18879i, -12286i)), u_input.c));
    var_1 = ~u_input.d;
    var var_5 = vec2<i32>(-2147483647i, u_input.a.x);
    var var_6 = Struct_2(u_input.a.yx);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(max(-13438i, _wgslsmith_div_i32(-2147483647i, var_6.a.x)) | var_6.a.x, var_6.a.x, ~62934i, _wgslsmith_div_i32(var_5.x, _wgslsmith_clamp_i32(min(32621i, u_input.a.x), u_input.a.x, -var_6.a.x))), _wgslsmith_dot_vec4_u32(u_input.d, ~(u_input.d | (vec4<u32>(var_1.x, var_2.a, 84519u, u_input.d.x) & u_input.d))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -288f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-246f, 918f, false)), _wgslsmith_f_op_f32(-954f - 1259f)))))), vec3<u32>(abs(1u), _wgslsmith_clamp_u32(0u, 1u, 4294967295u) << (~abs(var_2.a) % 32u), ~func_2(vec3<bool>(false, false, false), any(vec3<bool>(true, true, false))).a));
}

