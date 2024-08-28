struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: f32, arg_1: i32) -> i32 {
    return firstLeadingBit(arg_1 << (u_input.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_sub_i32(func_1(-306f, -2147483647i) | max(i32(-1i) * -16227i, 34634i), ~_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, -19141i)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(467f, 365f) * vec2<f32>(983f, -219f)))))));
    var_0 = _wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -27896i), _wgslsmith_mod_vec2_i32(~vec2<i32>(-8610i, 15913i), -vec2<i32>(1i, 2147483647i))), vec2<i32>(28631i >> ((abs(43609u) << (reverseBits(u_input.a) % 32u)) % 32u), -(2147483647i >> (u_input.a % 32u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -309f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_1)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1 * var_1))))));
    var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x + 904f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1 - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_1, vec2<f32>(-564f, -1907f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(46635i, ~(-60572i) >> (~u_input.a % 32u), 1i) & vec3<i32>(1i, max(_wgslsmith_mult_i32(29591i, 1i), _wgslsmith_mod_i32(-2147483647i, -8850i)), func_1(-892f, firstLeadingBit(13691i))), _wgslsmith_sub_i32(-56402i, -27313i));
}

