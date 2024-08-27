struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>) -> vec4<f32> {
    var var_0 = -17996i;
    var_0 = select(arg_2.x, select(max(0i, 1i >> ((u_input.b.x >> (4294967295u % 32u)) % 32u)), -(u_input.a.x >> (arg_0.b.b.x % 32u)), arg_0.e.x), true);
    let var_1 = ~vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_2.x, -1i), arg_2.x) & countOneBits(-72965i), 1i, ~arg_2.x);
    let var_2 = _wgslsmith_mod_i32(-var_1.x, i32(-1i) * -1i);
    var_0 = max(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-firstTrailingBit(vec4<i32>(arg_0.b.a, 0i, 1i, -25046i)), ~select(vec4<i32>(2147483647i, var_1.x, 21833i, 8744i), vec4<i32>(-64066i, var_2, -2147483647i, 2147483647i), arg_0.b.c.x)), -((vec4<i32>(350i, u_input.a.x, -2147483647i, -2147483647i) | vec4<i32>(-28756i, arg_0.b.a, 25028i, var_2)) & (vec4<i32>(21555i, u_input.a.x, arg_2.x, 2147483647i) << (vec4<u32>(1u, arg_0.d.x, u_input.b.x, u_input.d.x) % vec4<u32>(32u))))), -firstTrailingBit(firstLeadingBit(arg_2.x)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-383f, -743f, 635f, -889f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-633f, -238f, 1000f, 698f) + vec4<f32>(-275f, 1055f, -792f, 676f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-765f, -575f, 534f, -718f)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(307f, _wgslsmith_f_op_f32(1104f + -331f), -1375f, -650f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1805f, 2116f, 1373f, 371f) + vec4<f32>(1329f, -1096f, 1000f, -1776f))))), (~u_input.d.x < firstTrailingBit(u_input.d.x)) != (any(vec2<bool>(false, false)) | true))));
}

fn func_4(arg_0: vec4<f32>) -> f32 {
    var var_0 = -610f;
    var var_1 = select(vec4<bool>(all(vec2<bool>(true, true)), any(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), true)), !(u_input.c <= ~u_input.d.x), true), !vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), true, false), false);
    let var_2 = i32(-1i) * -28028i;
    let var_3 = reverseBits(vec4<i32>(firstLeadingBit(reverseBits(firstTrailingBit(-2147483647i))), -min(max(-1i, 0i), -98076i), 1i, var_2));
    let var_4 = select(vec2<bool>(!var_1.x, true), vec2<bool>(true, all(vec4<bool>(var_1.x != false, true, true, select(true, var_1.x, true)))), var_1.x);
    return _wgslsmith_f_op_f32(ceil(arg_0.x));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(vec3<bool>(false, arg_0, true), Struct_2(14351i, u_input.d.yx, vec2<bool>(false, true), u_input.d.xyw), vec2<i32>(u_input.a.x, u_input.a.x), u_input.d, vec2<bool>(arg_0, arg_0)), true, -vec2<i32>(u_input.a.x, -3157i))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -921f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(160f * 596f)))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-396f + 172f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-574f * 318f), _wgslsmith_f_op_f32(f32(-1f) * -1615f)))) + -1362f);
    let var_2 = Struct_3(select(vec3<bool>(true & !arg_0, 1i < u_input.a.x, true), vec3<bool>(true, true || any(vec4<bool>(true, false, false, true)), true), any(vec4<bool>(arg_0, true, all(vec3<bool>(false, arg_0, arg_0)), u_input.a.x <= u_input.a.x))), Struct_2(u_input.a.x, vec2<u32>(~(u_input.c << (u_input.c % 32u)), u_input.c), vec2<bool>(false, !(u_input.a.x <= u_input.a.x)), ~u_input.d.zxx), vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(22414i, u_input.a.x), u_input.a), _wgslsmith_sub_vec4_u32(u_input.d, _wgslsmith_div_vec4_u32(u_input.d >> (u_input.b % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(u_input.b.x, 0u, u_input.c, u_input.b.x)) | vec4<u32>(u_input.c, u_input.c, u_input.d.x, u_input.b.x))), vec2<bool>(true, false));
    var_1 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(299f)))));
    let var_3 = firstLeadingBit(9056u);
    return var_2;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2282f, -1140f, all(vec3<bool>(true, false, false)))), 222f), -1415f, _wgslsmith_f_op_f32(f32(-1f) * -844f), -483f));
    let var_1 = func_2(true);
    var var_2 = Struct_3(vec3<bool>(!(u_input.c <= var_1.b.d.x) != var_1.e.x, true, true), var_1.b, ~(-(~vec2<i32>(u_input.a.x, 1i) & select(var_1.c, vec2<i32>(21289i, u_input.a.x), var_1.e))), ~(~vec4<u32>(4294967295u, var_1.d.x, _wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(u_input.d.x, var_1.b.b.x)), u_input.b.x)), func_2(any(!(!vec4<bool>(true, var_1.e.x, var_1.e.x, var_1.a.x)))).a.yx);
    var var_3 = 14931u;
    let var_4 = abs(vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(var_2.b.b.x, var_2.d.x), abs(var_1.d.x)), ~u_input.d.x, 48336u, _wgslsmith_add_u32(1u, abs(select(4294967295u, 0u, var_1.e.x)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-268f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.x, 813f)), 1000f, var_1.b.c.x))))) * 565f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)));
    var var_1 = vec3<f32>(1f, 1f, 1f);
    var_0 = _wgslsmith_f_op_f32(func_1());
    let var_2 = true;
    var var_3 = Struct_2(31190i, _wgslsmith_clamp_vec2_u32(func_2(false).d.xy, _wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.b.x, u_input.c) ^ vec2<u32>(4294967295u, u_input.b.x)), vec2<u32>(max(u_input.b.x, u_input.b.x), 16791u << (u_input.c % 32u))), u_input.d.yx), vec2<bool>(select(all(select(vec4<bool>(false, var_2, var_2, true), vec4<bool>(false, var_2, var_2, var_2), true)), !(var_2 || false), any(!vec4<bool>(var_2, var_2, true, false))), false), ~firstTrailingBit(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(4294967295u, u_input.d.x, u_input.d.x)), u_input.b.zxw)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-var_1.xy);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

