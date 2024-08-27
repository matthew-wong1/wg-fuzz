struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_mult_vec4_i32(abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 70485i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)) >> (_wgslsmith_add_vec4_u32(arg_1.b, arg_0.b) % vec4<u32>(32u)), max(vec4<i32>(-1i, 42291i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, -2147483647i, -12761i)) | vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), -vec4<i32>(_wgslsmith_div_i32(-2147483647i, u_input.b | u_input.b), abs(-12862i ^ u_input.b), 2147483647i, u_input.b));
    let var_1 = vec2<bool>(false, !arg_3.x);
    var var_2 = Struct_1(firstLeadingBit(vec2<u32>(1579u ^ abs(arg_2.a.x), ~4294967295u)), arg_1.b);
    var_2 = arg_2;
    var var_3 = arg_3;
    return select(var_3.zx, !vec2<bool>(false, !(!var_3.x)), var_3.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(986f)), -1000f))), -1381f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-932f + -2061f)) - 271f) * 1342f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1258f * _wgslsmith_f_op_f32(floor(1214f))) - _wgslsmith_f_op_f32(657f * _wgslsmith_f_op_f32(min(278f, 581f)))))), 825f);
    var var_1 = vec2<i32>(select(abs(u_input.b), firstTrailingBit(-(~(-38112i))), any(vec2<bool>(var_0.x < var_0.x, arg_0.x))), -_wgslsmith_clamp_i32(~(-30909i), firstTrailingBit(u_input.b), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(15021i, u_input.b), vec2<i32>(u_input.b, u_input.b)))));
    let var_2 = vec4<i32>(u_input.b, _wgslsmith_add_i32(1i, u_input.b) | var_1.x, -91190i, _wgslsmith_sub_i32(u_input.b, _wgslsmith_mod_i32(var_1.x << (arg_2.a.x % 32u), 1i << (u_input.a % 32u))));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(445f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(760f))), 812f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(110f, -793f, 483f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1046f, var_0.x, -1195f) + vec4<f32>(var_0.x, -671f, var_0.x, -744f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-394f, var_0.x, -988f, -486f), vec4<f32>(-1018f, 340f, var_0.x, -1365f), false)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, -192f, -780f), vec4<f32>(1794f, -364f, 1027f, 1859f))), 152f < var_0.x))))) * vec4<f32>(_wgslsmith_f_op_f32(-1713f * -518f), _wgslsmith_f_op_f32(-var_0.x), 1082f, var_0.x));
    return arg_0;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = func_4(!select(func_3(arg_2, arg_2, arg_2, vec3<bool>(true, true, true)), !select(vec2<bool>(true, false), vec2<bool>(false, true), true), true), ~_wgslsmith_div_u32(0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_2.b.xwz, vec3<u32>(arg_2.b.x, arg_2.b.x, u_input.a)), u_input.a >> (4294967295u % 32u))), arg_2);
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(arg_2.a & arg_2.a, firstTrailingBit(arg_2.a)) >> (firstTrailingBit(countOneBits(arg_2.a)) % vec2<u32>(32u)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.a, arg_2.b.x, 66526u, 4294967295u)), arg_2.b >> (arg_2.b % vec4<u32>(32u)), arg_2.b)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(843f - _wgslsmith_f_op_f32(floor(-3929f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1040f)), _wgslsmith_f_op_f32(floor(-975f)))))), abs(vec2<u32>(91389u, 0u)), 1i, vec4<i32>(3177i, _wgslsmith_mod_i32(20472i, reverseBits(-44943i)), _wgslsmith_div_i32(24541i, -u_input.b), _wgslsmith_clamp_i32(-1690i, _wgslsmith_div_i32(-1i, 60818i), -9119i)) & (vec4<i32>(-1i) * -(~vec4<i32>(arg_0.x, -5626i, arg_0.x, arg_0.x))));
    let var_2 = ~(~arg_2.b.zw);
    var var_3 = vec2<i32>(2147483647i, -1i) & _wgslsmith_clamp_vec2_i32(vec2<i32>(select(0i, -27073i, var_0.x) & _wgslsmith_mult_i32(-15543i, 0i), ~_wgslsmith_mult_i32(-43346i, u_input.b)), vec2<i32>(~firstTrailingBit(var_1.e.x), _wgslsmith_mult_i32(0i, 0i)), ~vec2<i32>(2147483647i, ~43999i));
    var_3 = _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(min(arg_0.zy, min(vec2<i32>(u_input.b, 34251i), arg_0.zx)), vec2<i32>(_wgslsmith_clamp_i32(-57291i, arg_1, 15138i), _wgslsmith_add_i32(-2147483647i, arg_0.x))) >> (~arg_2.b.zy % vec2<u32>(32u)), ~vec2<i32>(-2147483647i, ~2147483647i), -abs(reverseBits(vec2<i32>(var_3.x, var_1.e.x))));
    return var_1.e.zzw;
}

fn func_1() -> bool {
    var var_0 = vec3<i32>(-(~(~(-u_input.b))), ~u_input.b, select(-5552i, 2147483647i, !(!(u_input.a >= 1u))));
    var_0 = firstLeadingBit(~_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(30184i, 3017i, -2147483647i), func_2(vec3<i32>(-3792i, u_input.b, 6786i), -24973i, Struct_1(vec2<u32>(4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)))), -vec3<i32>(22097i, 21633i, var_0.x) << (abs(vec3<u32>(74301u, u_input.a, u_input.a)) % vec3<u32>(32u)), min(min(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(32614i, u_input.b, u_input.b)), abs(vec3<i32>(var_0.x, -17125i, -2147483647i)))));
    var_0 = ~vec3<i32>(~569i, u_input.b, 1i);
    var var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(select(min(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(902u, u_input.a, u_input.a, 0u)), ~vec4<u32>(0u, u_input.a, u_input.a, 36510u), all(vec2<bool>(true, false))), ~(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a))) | ~(~min(vec4<u32>(11640u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u))), ~(~(~select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 23660u), vec4<bool>(true, true, true, true)))));
    var var_2 = u_input.b;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(func_1(), true), func_4(vec2<bool>(true, all(vec3<bool>(true, true, true))), ~max(u_input.a, 72892u), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(35991u, 74596u), vec2<u32>(u_input.a, u_input.a)), min(vec4<u32>(41900u, 18547u, 1u, 1u), vec4<u32>(u_input.a, u_input.a, 1u, 57587u)))), vec2<bool>(all(vec4<bool>(true, true, true, true)), false));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -726f) - -781f), -926f))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1084f, _wgslsmith_f_op_f32(step(-1137f, -2479f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -641f)), 1003f), any(select(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)), !(!vec3<bool>(true, var_0.x, var_0.x)), select(select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, true, var_0.x), false), vec3<bool>(true, true, true), vec3<bool>(var_0.x, true, var_0.x))))));
    let var_2 = u_input.a;
    var var_3 = false;
    var_0 = func_3(Struct_1(~(~select(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a, 0u), vec2<bool>(true, var_0.x))), select(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 70728u, var_2), vec4<u32>(13575u, 1u, u_input.a, 42565u), vec4<u32>(1u, 4294967295u, u_input.a, u_input.a))), ~vec4<u32>(u_input.a, u_input.a, 76856u, var_2), select(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, false)), vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x)))), Struct_1(~(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 39209u), vec2<u32>(4294967295u, var_2)) & _wgslsmith_clamp_vec2_u32(vec2<u32>(32875u, 32408u), vec2<u32>(u_input.a, 70019u), vec2<u32>(u_input.a, var_2))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 27023u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 100565u), vec2<u32>(0u, 1u))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(var_2, var_2, var_2, 0u), vec4<u32>(4294967295u, 2059u, u_input.a, 7232u), vec4<bool>(false, false, var_0.x, false)), vec4<u32>(1u, u_input.a, 73496u, u_input.a)))), Struct_1(~_wgslsmith_mod_vec2_u32(min(vec2<u32>(4294967295u, 54776u), vec2<u32>(var_2, u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 18936u), vec2<u32>(4294967295u, u_input.a))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(71368u, u_input.a, var_2, 30525u) & vec4<u32>(var_2, 2931u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_2, u_input.a), reverseBits(u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 15850u, 4294967295u) >> (vec3<u32>(u_input.a, var_2, var_2) % vec3<u32>(32u)), ~vec3<u32>(var_2, var_2, u_input.a)), max(u_input.a ^ 1u, 1u))), select(vec3<bool>(false, var_0.x, (1u & u_input.a) < _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, u_input.a, u_input.a, 46993u), vec4<u32>(6178u, var_2, u_input.a, u_input.a))), vec3<bool>(false, !var_0.x, var_0.x), !select(!vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true), all(vec4<bool>(var_0.x, var_0.x, true, false)))));
    var_3 = !var_0.x;
    let var_4 = Struct_1(vec2<u32>(select(~(4294967295u >> (0u % 32u)), _wgslsmith_add_u32(firstLeadingBit(u_input.a), 0u), !var_0.x != (u_input.a < 4294967295u)), 19669u), reverseBits(vec4<u32>(~u_input.a, var_2, _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_2, var_2, 30907u, u_input.a), vec4<u32>(u_input.a, var_2, u_input.a, var_2), var_0.x), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), _wgslsmith_sub_u32(~var_2, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_mod_i32(i32(-1i) * -(u_input.b ^ u_input.b), abs(_wgslsmith_add_i32(u_input.b >> (var_4.b.x % 32u), u_input.b))), 8129u);
}

