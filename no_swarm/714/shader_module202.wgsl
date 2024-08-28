struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<bool> {
    let var_0 = 70629u;
    var var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(23273u | var_0), var_0 | 56757u, reverseBits(var_0), var_0 << (_wgslsmith_clamp_u32(10469u, var_0, var_0) % 32u)), ~(~min(vec4<u32>(var_0, var_0, var_0, var_0), vec4<u32>(73510u, 52108u, 25703u, var_0)))), 4294967295u);
    return !(!vec2<bool>(true, ~var_0 <= 4294967295u));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(f32(-1f) * -625f)), _wgslsmith_f_op_f32(1000f - 797f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x)));
    let var_1 = Struct_2(~vec2<i32>(_wgslsmith_add_i32(u_input.a.x, 1i), _wgslsmith_mult_i32(-10968i, u_input.a.x)) ^ ~firstLeadingBit(arg_2.a), arg_1.wy);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - var_1.b.x));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(360f, -875f) + var_1.b.x), var_1.b.x);
    return Struct_3(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(true, false, true)), false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)), true), 31688u, Struct_1(-_wgslsmith_sub_vec4_i32(-vec4<i32>(8687i, var_1.a.x, 2147483647i, arg_2.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-15i, u_input.a.x, var_1.a.x, var_1.a.x), vec4<i32>(-55977i, 0i, u_input.a.x, -11096i)))), vec3<u32>(arg_3, _wgslsmith_add_u32(max(~116399u, arg_3), _wgslsmith_mod_u32(reverseBits(0u), arg_3)), 1883u), select(select(select(func_3(), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec2<bool>(true, true))), vec2<bool>(false, false), select(vec2<bool>(true, true), select(func_3(), func_3(), true), func_3())));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = !vec2<bool>(false, arg_2.a.x);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(364f, 1324f))));
    var var_2 = func_2(-688f, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(617f, arg_1, -1876f, -642f))), arg_0) + arg_0), Struct_2(_wgslsmith_sub_vec2_i32(~arg_2.c.a.zw, vec2<i32>(-2147483647i, -u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(518f, arg_1)))), _wgslsmith_mult_u32(select(~firstLeadingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d.x, arg_2.d.x, 3592u, 0u) | vec4<u32>(arg_2.b, arg_2.d.x, 4294967295u, 0u), vec4<u32>(4294967295u, arg_2.b, arg_2.b, arg_2.d.x) << (vec4<u32>(0u, arg_2.d.x, arg_2.d.x, arg_2.b) % vec4<u32>(32u))), !arg_2.e.x), _wgslsmith_mult_u32(1u, 0u))).c;
    var_2 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-644f)), arg_1)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1000f, -778f, -758f))))), arg_0), Struct_2(var_2.a.yx, _wgslsmith_f_op_vec2_f32(vec2<f32>(-511f, _wgslsmith_f_op_f32(select(arg_0.x, -1235f, true))) - vec2<f32>(_wgslsmith_f_op_f32(max(arg_1, -972f)), _wgslsmith_f_op_f32(step(arg_1, -1007f))))), ~44093u).c;
    var var_3 = true;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1090f))) * var_1), 1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2206f + var_1), var_1))), -1381f);
}

fn func_1(arg_0: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_clamp_vec2_i32(min(~arg_0, vec2<i32>(-15939i, 2147483647i)), vec2<i32>(arg_0.x, max(arg_0.x, -17525i)), ~select(arg_0 << (vec2<u32>(0u, 61351u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(arg_0, vec2<i32>(arg_0.x, 27620i), arg_0), true)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(733f, -1758f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-605f, 160f), vec2<f32>(2298f, -1000f), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1944f, 511f)), false)))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(342f, var_0.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.b.x)), -281f))), vec3<f32>(1573f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-430f, var_0.b.x))), var_0.b.x), vec3<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false))), false, !any(vec2<bool>(true, true))))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.x))))));
    var var_2 = vec3<i32>(abs(firstTrailingBit(var_0.a.x >> (_wgslsmith_mod_u32(4294967295u, 4294967295u) % 32u))), -var_0.a.x, 0i);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * var_0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -271f));
    var var_3 = ~(~abs(vec2<u32>(1u, 1u)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), max(vec2<u32>(61325u, 0u), firstTrailingBit(vec2<u32>(43637u, 41562u)))) % vec2<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-192f, var_0.b.x, -355f, var_0.b.x), vec4<f32>(-897f, -985f, var_1.x, var_0.b.x))), vec4<f32>(var_0.b.x, var_1.x, 283f, 1288f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.x, -1000f, var_1.x, -1332f))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-212f, var_0.b.x, -443f, 1042f)))))), var_1.x, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)) * -146f), vec4<f32>(316f, _wgslsmith_f_op_f32(625f * 163f), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(trunc(295f))), var_0, 0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(462f, 389f, var_1.x, var_1.x)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)) + _wgslsmith_f_op_f32(1347f - -130f)), var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, var_0.b.x))), 1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(1u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(105898u, 17096u, 0u), vec3<u32>(1u, 1u, 1u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-813f, _wgslsmith_f_op_f32(f32(-1f) * -154f), 2234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(140f - 558f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(min(167f, 559f)), 951f, -1133f)), _wgslsmith_f_op_vec4_f32(func_1(~(-u_input.a.yy)))));
    let var_2 = ~30967u <= var_0.x;
    var_0 = abs(vec2<u32>(var_0.x, ~var_0.x) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(52299u, var_0.x, 0u) & vec3<u32>(var_0.x, var_0.x, 1u), vec3<u32>(25415u, 85317u, var_0.x) & vec3<u32>(6421u, var_0.x, var_0.x)), _wgslsmith_mult_u32(abs(var_0.x), var_0.x)) % vec2<u32>(32u)));
    var_0 = vec2<u32>(countOneBits(var_0.x), var_0.x);
    let var_3 = Struct_3(!vec4<bool>(var_2, true, var_2, false), 0u, Struct_1(vec4<i32>(-1i, u_input.a.x, ~1i, _wgslsmith_mult_i32(2147483647i, u_input.a.x)) >> (_wgslsmith_mult_vec4_u32(select(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, 20942u, 1u, var_0.x), vec4<bool>(var_2, false, true, true)), max(vec4<u32>(var_0.x, var_0.x, 1u, var_0.x), vec4<u32>(var_0.x, var_0.x, 4163u, 1u))) % vec4<u32>(32u))), ~firstLeadingBit(vec3<u32>(1u, var_0.x, var_0.x)), func_2(1965f, _wgslsmith_f_op_vec4_f32(var_1 - var_1), Struct_2(~(u_input.a.xx >> (vec2<u32>(var_0.x, 10971u) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(var_1.zy * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-579f, var_1.x)))), var_0.x).a.yy);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i ^ abs(func_2(_wgslsmith_f_op_f32(var_1.x + var_1.x), var_1, Struct_2(u_input.a.yx, var_1.xw), ~55860u).c.a.x), var_3.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.xzy, var_1.yzx)) - vec3<f32>(-733f, var_1.x, var_1.x))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1241f, -1046f) * var_1.zyx) - _wgslsmith_f_op_vec3_f32(var_1.zxz * vec3<f32>(var_1.x, var_1.x, -1000f)))))));
}

