struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec2<bool> {
    var var_0 = vec3<bool>(all(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), !select(true, false, true), any(vec3<bool>(true, true, true)))), firstLeadingBit(max(_wgslsmith_sub_i32(0i, -2147483647i), -15890i)) == max(-1i, _wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(-6072i, 2147483647i, 2147483647i))), true);
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1058f + 331f) - _wgslsmith_f_op_f32(trunc(605f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1352f, -270f)), -426f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f - -117f)) - -872f)), -916f);
    var_0 = select(vec3<bool>(var_0.x, var_0.x, !var_0.x), vec3<bool>(var_0.x, true, (true && var_0.x) | var_0.x), vec3<bool>(((var_0.x | var_0.x) & true) || true, !(false && (var_1.x > var_1.x)), var_0.x));
    let var_2 = -(1i >> (0u % 32u));
    let var_3 = Struct_4(-2147483647i, Struct_3(Struct_2(-2147483647i), var_0.x, firstTrailingBit(-reverseBits(vec2<i32>(-1i, 0i)))));
    return var_0.yx;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1754f)), _wgslsmith_f_op_f32(f32(-1f) * -1576f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-400f + -396f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-276f, -339f)))));
    let var_1 = _wgslsmith_mod_vec3_i32(((_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2, arg_1.c.x, arg_2), vec3<i32>(arg_1.a.a, arg_2, arg_2)) & _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -1i, arg_1.c.x), vec3<i32>(-11284i, -42389i, arg_1.c.x))) | vec3<i32>(min(-2147483647i, -2147483647i), arg_2, -2147483647i)) & select(-vec3<i32>(arg_1.c.x, 23988i, arg_2), vec3<i32>(arg_1.a.a, -arg_2, _wgslsmith_sub_i32(31307i, 1i)), -998f == _wgslsmith_f_op_f32(var_0 + var_0)), -countOneBits(-vec3<i32>(20952i, 6118i, arg_1.a.a)) >> (select(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a), vec3<u32>(1u, 1u, 43593u)), u_input.a, vec3<bool>(arg_0.x, select(arg_0.x, arg_1.b, true), true)) % vec3<u32>(32u)));
    var var_2 = Struct_3(arg_1.a, true, _wgslsmith_clamp_vec2_i32(~arg_1.c, -(vec2<i32>(-1i) * -vec2<i32>(arg_1.a.a, 23976i)), ~firstTrailingBit(vec2<i32>(2147483647i, arg_1.c.x))));
    var var_3 = _wgslsmith_clamp_i32(arg_1.c.x, var_2.a.a, min(abs(var_1.x) << ((u_input.b.x & max(u_input.b.x, u_input.a.x)) % 32u), arg_1.a.a));
    var_3 = 1i;
    return var_1.x;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = 4381u;
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_sub_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(16142i, 0i, 2147483647i, 0i), vec4<i32>(20125i, -2147483647i, 1i, 1i)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, 0i, -39661i), -vec4<i32>(-2147483647i, -27244i, -42991i, -17041i)))), vec4<i32>(i32(-1i) * -(~(-10132i)), func_4(func_3(), Struct_3(Struct_2(-37825i), !arg_0.x, vec2<i32>(-1i, -47740i)), 1i), _wgslsmith_mult_i32(max(func_4(arg_0, Struct_3(Struct_2(-4098i), true, vec2<i32>(8335i, 0i)), 2147483647i), _wgslsmith_mult_i32(27934i, 0i)), _wgslsmith_mult_i32(~(-17321i), i32(-1i) * -11245i)), 1i ^ countOneBits(_wgslsmith_clamp_i32(2147483647i, 2147483647i, -1i))));
    var var_3 = !(all(!vec2<bool>(false, arg_0.x)) | func_3().x) | all(select(!select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(true, arg_0.x, true, false), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), !vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, false, false), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), var_2.x > -7001i)));
    var_1 = max(vec3<u32>(0u, u_input.b.x, (select(1u, 8345u, true) << (firstTrailingBit(var_1.x) % 32u)) & (firstTrailingBit(var_0) << (var_1.x % 32u))), countOneBits(vec3<u32>(~31642u, ~(~u_input.b.x), _wgslsmith_mod_u32(var_0, var_0 << (4294967295u % 32u)))));
    return Struct_1(~(-60560i), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -13300i);
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> vec2<f32> {
    var var_0 = Struct_3(Struct_2(~(-11607i)), !(false && (~4294967295u != ~u_input.a.x)), firstTrailingBit(~(vec2<i32>(-8481i, 2748i) & vec2<i32>(2147483647i, arg_0.c)) ^ ~(-vec2<i32>(arg_0.a, -2147483647i))));
    var var_1 = _wgslsmith_div_u32(firstLeadingBit(34344u), abs(~max(u_input.a.x, u_input.b.x)));
    var var_2 = Struct_4(arg_0.c, Struct_3(var_0.a, false, firstTrailingBit(~_wgslsmith_div_vec2_i32(vec2<i32>(-15542i, 22325i), var_0.c))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -445f), _wgslsmith_f_op_f32(-824f + -1000f), all(vec3<bool>(true, var_0.b, true)))))), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-arg_1)));
}

fn func_6(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = arg_0.x;
    var var_1 = func_3().x;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x - var_0))), 1993f))) + vec3<f32>(arg_0.x, -317f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))))));
    var var_3 = i32(-1i) * -1i;
    var var_4 = vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -_wgslsmith_div_i32(0i, 43524i), _wgslsmith_mult_i32(1i, 1i)), firstTrailingBit(_wgslsmith_sub_i32(~(i32(-1i) * -46725i), -17642i)), -_wgslsmith_div_i32(-26320i, _wgslsmith_clamp_i32(1i, i32(-1i) * -36809i, -10842i)));
    return Struct_2(~func_4(select(func_3(), vec2<bool>(false, false), false), Struct_3(Struct_2(-1i), true, _wgslsmith_clamp_vec2_i32(var_4.yy, vec2<i32>(-26551i, var_4.x), vec2<i32>(-47519i, 12277i))), var_4.x));
}

fn func_1() -> Struct_2 {
    let var_0 = -915f;
    var var_1 = ~1i;
    var var_2 = Struct_3(func_6(_wgslsmith_f_op_vec2_f32(func_5(func_2(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), _wgslsmith_f_op_f32(-var_0)))), false, -vec2<i32>(~1i, -(-2147483647i >> (1u % 32u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)), _wgslsmith_f_op_f32(min(1545f, _wgslsmith_f_op_f32(var_0 * -408f))), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-func_2(vec2<bool>(false, false)).b)))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(345f, var_0, 832f, -773f), vec4<f32>(185f, var_0, -381f, -1486f), vec4<bool>(var_2.b, var_2.b, true, var_2.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, 1762f, 618f, var_0))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-504f, 195f, -181f, 368f)))), vec4<f32>(1478f, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(floor(-874f))), _wgslsmith_f_op_f32(sign(-1381f)), _wgslsmith_f_op_f32(-1498f * _wgslsmith_f_op_vec2_f32(func_5(Struct_1(-1i, var_0, -2147483647i), -225f)).x))));
    let var_4 = var_0;
    return func_6(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4, _wgslsmith_f_op_vec2_f32(func_5(Struct_1(var_2.c.x, var_4, -69374i), 645f)).x) - 930f), var_4));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-42325i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-428f - 997f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-303f - 1000f))))), reverseBits(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(1i, 1i)), -max(vec2<i32>(0i, -64978i), vec2<i32>(-38949i, -44700i)))));
    var var_1 = Struct_2(abs(2147483647i));
    var var_2 = vec3<bool>(true, true, true);
    var var_3 = func_1();
    var var_4 = false;
    let var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-110f))));
    var var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_5 * var_5), _wgslsmith_f_op_f32(var_0.b + -2349f), _wgslsmith_f_op_f32(-1069f + 200f), var_0.b), vec4<f32>(_wgslsmith_f_op_f32(var_0.b + 151f), -901f, var_5, var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.wz, var_6.zw);
}

