struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = arg_1;
    var var_1 = arg_2;
    let var_2 = Struct_1(var_1.a);
    let var_3 = vec3<f32>(-598f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1849f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1281f, -901f, var_0.a.x))) * _wgslsmith_f_op_f32(f32(-1f) * -715f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-355f, -831f)))) - _wgslsmith_f_op_f32(424f + 1f))));
    var var_4 = var_2;
    return !var_4.a;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2069f, -369f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1173f), _wgslsmith_f_op_f32(f32(-1f) * -533f))) * 886f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(415f, 1536f, 1000f) - vec3<f32>(-647f, 1458f, 797f)) * vec3<f32>(796f, 235f, 1776f))))));
    let var_1 = Struct_1(select(vec3<bool>(true, true, true), select(!func_3(u_input.b.x, Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, false))), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), func_3(u_input.b.x, Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, false)))), true), true));
    let var_2 = _wgslsmith_div_vec2_f32(var_0.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-380f, _wgslsmith_f_op_f32(abs(-729f)))));
    let var_3 = _wgslsmith_f_op_f32(abs(-432f));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(sign(var_3)))) + var_0.x));
    return var_1;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = !(!(!vec4<bool>(any(vec3<bool>(false, var_0.a.x, var_0.a.x)), true, all(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x)), false)));
    var_0 = Struct_1(vec3<bool>(select(-944f > _wgslsmith_f_op_f32(round(arg_0.x)), false, !var_0.a.x), true, false));
    var_0 = Struct_1(func_2().a);
    var var_2 = select(vec4<u32>(_wgslsmith_div_u32(0u, ~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), u_input.b.x, u_input.b.x, 4294967295u), (reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 30753u, 44712u, 1u), vec4<u32>(u_input.b.x, u_input.b.x, 9183u, u_input.b.x))) >> (select(vec4<u32>(u_input.b.x, u_input.b.x, 20909u, 26040u) >> (vec4<u32>(34160u, u_input.b.x, u_input.b.x, 47911u) % vec4<u32>(32u)), vec4<u32>(2268u, 4294967295u, 345u, u_input.b.x), true) % vec4<u32>(32u))) ^ firstTrailingBit(~select(vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x), vec4<u32>(1u, 38841u, 4294967295u, u_input.b.x), vec4<bool>(true, false, true, var_0.a.x))), select(vec4<bool>(false, true, var_0.a.x, !(!var_1.x)), !select(vec4<bool>(true, false, false, var_1.x), vec4<bool>(var_0.a.x, true, true, true), true), !all(!var_0.a)));
    return Struct_1(!(!var_0.a));
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = any(!select(vec4<bool>(arg_0.a.x, !arg_0.a.x, func_3(u_input.b.x, arg_0, Struct_1(vec3<bool>(arg_0.a.x, false, false))).x, func_2().a.x), select(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false), vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x)), vec4<bool>(arg_0.a.x, true, false, arg_0.a.x), !vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x)), arg_0.a.x));
    var_0 = !(!arg_0.a.x & (u_input.a != countOneBits(max(u_input.a, u_input.c.x))));
    var_0 = any(!arg_0.a.zx);
    var var_1 = vec4<i32>(firstLeadingBit(-38625i), -26715i, firstLeadingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c.x, -1i, -41583i), vec4<i32>(-18798i, u_input.c.x, u_input.c.x, u_input.a))), ~u_input.c.x) | vec4<i32>(-u_input.a, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, u_input.a, 1862i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i), vec3<i32>(0i, -2147483647i, -40905i))), -9193i, abs(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, u_input.c.x, -23314i, u_input.a)), firstTrailingBit(vec4<i32>(2147483647i, u_input.c.x, -1429i, -2147483647i)))));
    var_1 = _wgslsmith_sub_vec4_i32(~firstLeadingBit(vec4<i32>(~u_input.a, var_1.x, ~(-2147483647i), u_input.c.x)), vec4<i32>(-1i) * -(~vec4<i32>(-4168i, u_input.c.x, 6967i, u_input.a)));
    return func_2().a.x == true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(func_4(func_1(vec3<f32>(828f, 716f, 549f))), true, all(vec3<bool>(true, false, false))));
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1768f, 156f, 1680f), vec3<f32>(-559f, -1226f, 189f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(445f, -1874f, 738f)))))));
    var var_2 = select(false, false, true);
    var_2 = !(true != all(vec3<bool>(all(var_0.yy), true, var_0.x)));
    var_2 = true && var_1.a.x;
    let var_3 = vec4<bool>(var_0.x, false, var_1.a.x, var_0.x);
    var var_4 = _wgslsmith_f_op_f32(sign(-706f));
    let var_5 = abs(u_input.b);
    var_4 = 830f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.c.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, -20347i, u_input.a), vec3<i32>(-25259i, u_input.c.x, u_input.c.x))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 38237i, 509i), firstTrailingBit(vec3<i32>(u_input.a, -13199i, 3877i)))) << (u_input.b % vec3<u32>(32u)), u_input.a, -1616f, select(~vec4<u32>(~170u, u_input.b.x << (33210u % 32u), ~var_5.x, _wgslsmith_div_u32(42705u, 41916u)), vec4<u32>(var_5.x, firstLeadingBit(~var_5.x), ~max(u_input.b.x, 0u), var_5.x), true));
}

