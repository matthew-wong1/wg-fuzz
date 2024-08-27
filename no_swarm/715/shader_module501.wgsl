struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    let var_0 = arg_1;
    let var_1 = Struct_2(_wgslsmith_sub_vec2_i32(arg_1.a << (vec2<u32>(19707u, u_input.d.x) % vec2<u32>(32u)), vec2<i32>(-(var_0.a.x | arg_1.a.x), ~max(45002i, arg_1.a.x))), vec4<f32>(3300f, -167f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(764f)), _wgslsmith_f_op_f32(arg_1.b.x * -506f)))), _wgslsmith_f_op_f32(-1f)), Struct_1(!select(vec2<bool>(var_0.e, arg_1.d.a.x), vec2<bool>(false, arg_2.a.x), true)), arg_0, !(true | (u_input.e.x != 2147483647i)) || arg_2.a.x);
    var var_2 = vec3<i32>(8264i, reverseBits(40213i), -1i);
    var var_3 = -838f;
    var_2 = max(u_input.e, firstTrailingBit(select(vec3<i32>(var_2.x | var_2.x, var_2.x, var_1.a.x), u_input.e, true)));
    return false;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> bool {
    var var_0 = arg_1;
    var var_1 = select(select(vec2<bool>(true, var_0.d.a.x), vec2<bool>(arg_1.e, var_0.d.a.x), vec2<bool>(func_3(var_0.d, arg_1, Struct_1(var_0.c.a)), ~1u >= u_input.d.x)), vec2<bool>(true, false), -2147483647i == u_input.e.x);
    var var_2 = vec2<bool>(var_1.x, false);
    var var_3 = arg_1;
    var var_4 = var_3.c.a;
    return true;
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = false;
    let var_1 = select(vec4<bool>(all(vec4<bool>(all(vec4<bool>(false, false, false, false)), func_2(vec2<f32>(536f, 196f), Struct_2(vec2<i32>(-15719i, u_input.e.x), vec4<f32>(829f, 872f, 666f, -193f), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), true)), true, true)), false, true || (firstLeadingBit(u_input.e.x) < ~2147483647i), true), !(!vec4<bool>(true, all(vec3<bool>(false, true, false)), true, select(false, true, true))), func_2(vec2<f32>(-1412f, _wgslsmith_f_op_f32(-1349f + _wgslsmith_f_op_f32(min(1000f, -1614f)))), Struct_2(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.e.x, 2147483647i), vec2<i32>(1i, 0i)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1294f, 1334f, -2364f, 780f), vec4<f32>(1089f, 1544f, 168f, -2616f)))), Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), Struct_1(vec2<bool>(true, true)), true)));
    var_0 = all(var_1.zxw);
    var var_2 = ~(u_input.a | vec2<u32>(4294967295u, ~(~0u)));
    var var_3 = Struct_1(var_1.zw);
    return min(countOneBits(u_input.e.x), i32(-1i) * -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-30225i, max(33271i, u_input.e.x), u_input.e.x | u_input.e.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1658f)));
    var var_2 = ~abs(select(vec4<i32>(u_input.e.x, 30908i, u_input.e.x, 40523i), -vec4<i32>(1i, var_0.x, var_0.x, u_input.e.x), true)) | vec4<i32>(var_0.x, -var_0.x, u_input.e.x, u_input.e.x);
    var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, var_2.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(22301i, 2147483647i, 9542i, var_2.x), vec4<i32>(var_0.x, 18160i, 2147483647i, u_input.e.x)), vec4<i32>(~var_0.x, var_2.x, ~(-30128i), 26551i)), -5171i), ~(~abs(vec4<i32>(21317i, -2147483647i, -7938i, var_0.x))));
    var_2 = firstLeadingBit(vec4<i32>(-5213i << (abs(u_input.a.x ^ u_input.a.x) % 32u), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, -2147483647i, -2147483647i) | vec4<i32>(var_2.x, 0i, -1i, var_2.x), select(vec4<i32>(u_input.e.x, var_0.x, 1i, -1i), vec4<i32>(-2147483647i, -1i, var_0.x, 2147483647i), false))), u_input.e.x, var_0.x));
    var_2 = vec4<i32>(i32(-1i) * -(~34659i), 9094i, 3124i, func_1(u_input.d.x | ~1u));
    var var_3 = _wgslsmith_mod_i32(u_input.e.x, abs(0i ^ -_wgslsmith_sub_i32(u_input.e.x, -1i)));
    var var_4 = select(vec3<bool>(func_3(Struct_1(vec2<bool>(true, true)), Struct_2(var_2.zx, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, -290f, 1239f) * vec4<f32>(1000f, var_1, 1000f, -468f)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), var_1 > var_1), Struct_1(vec2<bool>(true, true))), true, true), vec3<bool>(any(vec2<bool>(true, true)), !(482f < var_1), (max(u_input.a.x, u_input.d.x) >> (firstTrailingBit(26071u) % 32u)) <= 4294967295u), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), all(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-815f, _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 0u, ~90018u), select(~vec3<u32>(4294967295u, 0u, u_input.c) | ~vec3<u32>(u_input.d.x, u_input.a.x, u_input.a.x), vec3<u32>(_wgslsmith_mult_u32(u_input.c, 0u), abs(6079u), ~u_input.d.x), !select(vec3<bool>(var_4.x, false, var_4.x), vec3<bool>(false, var_4.x, true), true))));
}

