struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_4,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_4, arg_3: vec3<bool>) -> f32 {
    var var_0 = arg_0.c;
    let var_1 = 255f;
    return _wgslsmith_f_op_f32(floor(arg_0.c.c.x));
}

fn func_3(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = Struct_4(select(vec2<bool>(true, true), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), any(vec3<bool>(true, true, true))));
    var var_1 = var_0.a.x;
    var_1 = all(vec4<bool>(false, true, select(false, true, !(!var_0.a.x)), var_0.a.x));
    var_1 = false;
    var var_2 = -1i;
    return Struct_3(Struct_2(!(!vec3<bool>(var_0.a.x, true, var_0.a.x)), ~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, -1i)), vec2<i32>(-29013i, -2147483647i)), Struct_1(vec2<i32>(_wgslsmith_mod_i32(-1i, -51257i), max(-2147483647i, 763i)), var_0.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(1372f, -255f, arg_0.x)) - vec3<f32>(-801f, 1033f, 1000f)))), Struct_1(abs(vec2<i32>(-35561i, 1i)), false, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_div_vec3_f32(vec3<f32>(973f, arg_0.x, 1435f), vec3<f32>(-251f, -1460f, -1578f))))))), Struct_1(vec2<i32>(~1i, 0i), ~u_input.b < u_input.b, arg_0));
}

fn func_1(arg_0: bool, arg_1: i32) -> i32 {
    var var_0 = func_3(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, _wgslsmith_f_op_f32(func_2(Struct_2(vec3<bool>(false, arg_0, arg_0), 23958i, Struct_1(vec2<i32>(2147483647i, arg_1), arg_0, vec3<f32>(-783f, -669f, 141f))), false, Struct_4(vec2<bool>(arg_0, false)), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(max(804f, -143f)))))));
    let var_1 = select(~reverseBits(abs(vec3<i32>(arg_1, var_0.a.c.a.x, var_0.b.a.x))), vec3<i32>(arg_1 ^ ~var_0.c.a.x, ~var_0.c.a.x, 21416i) << (min((vec3<u32>(u_input.a, 1u, 0u) ^ vec3<u32>(u_input.a, 63477u, u_input.a)) >> (firstLeadingBit(vec3<u32>(2988u, 0u, u_input.a)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.b, 4294967295u, 25736u)), ~vec3<u32>(u_input.a, 4294967295u, u_input.b))) % vec3<u32>(32u)), (!var_0.a.c.b && false) && !arg_0);
    var var_2 = Struct_4(var_0.a.a.yx);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(~min(vec2<i32>(38674i, 71807i), vec2<i32>(1i, 11010i)), vec2<i32>(1i, 1i)), ~vec2<i32>(~countOneBits(1i), _wgslsmith_div_i32(_wgslsmith_mult_i32(14769i, 0i), func_1(true, 42671i))));
    var var_1 = ~95207i;
    var var_2 = 29831i;
    var var_3 = Struct_2(!select(select(func_3(vec3<f32>(1156f, -253f, -2070f)).a.a, vec3<bool>(true, true, true), all(vec3<bool>(false, true, false))), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), true), -(_wgslsmith_dot_vec2_i32(~var_0, var_0) >> ((1u | ~u_input.a) % 32u)), Struct_1(abs(func_3(vec3<f32>(-749f, -213f, -1377f)).a.c.a ^ func_3(vec3<f32>(550f, 200f, -311f)).c.a), true, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1372f), _wgslsmith_f_op_f32(min(552f, -1075f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(var_0.x, var_3.c.a.x, firstLeadingBit(min(var_3.b, -2147483647i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c.c.x, var_3.c.c.x) - vec2<f32>(-1349f, 347f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(887f, var_3.c.c.x))))), -361f);
}

