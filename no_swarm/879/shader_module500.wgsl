struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: bool) -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(u_input.c.x), -abs(arg_1 & vec2<i32>(u_input.c.x, u_input.c.x)) ^ ~(-arg_1), Struct_1(~min(countOneBits(arg_1.x), abs(-118964i))), u_input.c.x, _wgslsmith_sub_vec3_i32(~abs(_wgslsmith_sub_vec3_i32(vec3<i32>(39354i, arg_1.x, arg_1.x), vec3<i32>(-13889i, u_input.c.x, 0i))), -(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, u_input.c.x), vec3<i32>(arg_1.x, arg_1.x, 46631i)))));
    return _wgslsmith_div_vec2_i32(select(abs(-firstLeadingBit(u_input.c)), ~var_0.b, select(!(!vec2<bool>(true, arg_2)), vec2<bool>(true, true), any(select(vec2<bool>(false, false), vec2<bool>(arg_2, arg_2), false)))), abs(firstTrailingBit(arg_1)));
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 215f)))));
    var var_1 = -_wgslsmith_sub_vec2_i32(-abs(u_input.c), min(u_input.c, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1000f, 309f, arg_0)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -7410i), u_input.c), true)));
    return select(select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)))), vec2<bool>(true, true), any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)), vec2<bool>(any(vec3<bool>(true, true, true)), false), vec2<bool>(select(true, true, true), !all(vec4<bool>(true, false, false, true)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(-1i);
    var_0 = arg_3.a;
    var var_1 = Struct_1(-select(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_3.d, 0i, -8565i, u_input.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(15922i, u_input.c.x, var_0.a, u_input.c.x), vec4<i32>(arg_1, -66474i, var_0.a, var_0.a))), ~(-2147483647i), any(!arg_0)));
    var_0 = Struct_1(~(-arg_1));
    var_1 = Struct_1(2147483647i);
    return Struct_1(~var_0.a);
}

fn func_1() -> Struct_2 {
    return Struct_2(func_4(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), select(vec2<bool>(true, true), func_2(2661f), vec2<bool>(false, true)), vec2<bool>(all(vec3<bool>(false, false, false)), true)), 1i, vec3<u32>(~u_input.a, firstTrailingBit(u_input.b), u_input.b | u_input.a) >> (vec3<u32>(countOneBits(60238u), ~22760u, _wgslsmith_mod_u32(1u, u_input.b)) % vec3<u32>(32u)), Struct_2(Struct_1(396i), firstLeadingBit(func_3(vec4<f32>(-519f, -595f, -680f, -795f), u_input.c, true)), Struct_1(u_input.c.x), 2147483647i, _wgslsmith_div_vec3_i32(-vec3<i32>(-39357i, -19672i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, 1i)))), vec2<i32>(_wgslsmith_mult_i32(~select(-590i, u_input.c.x, false), u_input.c.x), _wgslsmith_mult_i32(~22739i << (_wgslsmith_div_u32(u_input.a, 0u) % 32u), u_input.c.x)), Struct_1(-20116i), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(3328f, -183f, -648f, -1755f)))), vec2<i32>(u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.c.x, -6427i), -26810i)), !select(all(vec3<bool>(true, false, false)), all(vec3<bool>(true, false, false)), false)).x, abs(-vec3<i32>(~(-2147483647i), _wgslsmith_mult_i32(u_input.c.x, -1i), _wgslsmith_mult_i32(-16254i, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), ~(~u_input.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(895f, 212f, 767f), vec3<f32>(-669f, 2137f, 1821f), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -271f, -1313f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(644f, -1122f, 1547f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(899f, 226f, -484f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-190f, -200f, -421f)), vec3<bool>(true, true, all(vec3<bool>(true, false, true)))))));
    let var_1 = true;
    let var_2 = i32(-1i) * -1i;
    let var_3 = _wgslsmith_mod_vec4_u32(countOneBits(max(max(abs(vec4<u32>(1u, u_input.a, u_input.b, var_0.b)), vec4<u32>(u_input.a, var_0.b, 4294967295u, u_input.a)), ~(~vec4<u32>(0u, 22294u, 120649u, var_0.b)))), ~_wgslsmith_add_vec4_u32(vec4<u32>(abs(0u), u_input.b, select(4294967295u, u_input.b, false), var_0.b), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.b, var_0.b, var_0.b, 18506u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, var_0.b, u_input.a, u_input.b), vec4<u32>(var_0.b, 1u, u_input.a, var_0.b)))));
    var var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.d, -1i), select(u_input.c, vec2<i32>(-2147483647i, -2147483647i) & ~vec2<i32>(0i, var_0.a.a.a), var_1));
    var var_5 = func_1().c;
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-29380i);
}

