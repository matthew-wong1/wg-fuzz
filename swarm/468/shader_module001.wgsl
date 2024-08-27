struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_mod_i32(countOneBits(reverseBits(u_input.b)), -28499i);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1101f, arg_2.b, 1122f, arg_2.b) + vec4<f32>(arg_2.b, -516f, arg_1.e.b.b, -2119f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1013f, arg_1.a.x, 856f, 197f) + vec4<f32>(arg_2.b, arg_2.b, arg_2.b, arg_2.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, -232f, -1235f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(1075f)), _wgslsmith_f_op_f32(sign(-1263f)), _wgslsmith_f_op_f32(-276f - 592f), _wgslsmith_f_op_f32(trunc(arg_2.b)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(619f, _wgslsmith_f_op_f32(f32(-1f) * -618f), var_1.x, arg_1.d))));
    let var_2 = Struct_3(vec3<bool>(arg_1.e.a.x, any(vec2<bool>(!arg_2.a, u_input.a > 0u)), any(vec3<bool>(any(arg_1.e.a), arg_1.e.b.a, arg_0.x >= u_input.b))), arg_1.e.b, _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(arg_1.b, 26336u), ~abs(vec2<u32>(1u, arg_1.b))), select(~min(vec2<u32>(u_input.a, 10174u), vec2<u32>(0u, u_input.a)), ~vec2<u32>(arg_1.b, 12766u), vec2<bool>(true, !arg_1.e.a.x)), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(24340u, 1u), vec2<u32>(0u, 38266u)), arg_1.b & u_input.a)), _wgslsmith_clamp_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, 1u, arg_1.b, u_input.a), vec4<u32>(18018u, arg_1.b, arg_1.b, u_input.a)) >> (abs(u_input.a) % 32u)), ~(~arg_1.b), ~select(arg_1.b, max(u_input.a, 64408u), true)));
    let var_3 = select(var_2.a.xz, select(vec2<bool>(true, !var_2.a.x), arg_1.e.a.wz, 2147483647i > _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -61401i, arg_1.e.c, 71862i), vec4<i32>(-1374i, arg_1.e.c, arg_1.e.c, 1i)), -vec4<i32>(-1i, u_input.b, arg_0.x, u_input.b))), !select(vec2<bool>(!var_2.a.x, false), select(select(var_2.a.yx, arg_1.e.a.wz, arg_1.e.a.x), arg_1.e.a.yx, true), select(!vec2<bool>(var_2.a.x, arg_1.e.a.x), arg_1.e.a.yw, vec2<bool>(arg_1.e.b.a, arg_2.a))));
    return -412f;
}

fn func_2() -> Struct_4 {
    let var_0 = !(!vec2<bool>(1099f >= _wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.b, u_input.b, u_input.b), Struct_4(vec3<f32>(-1836f, 467f, 1717f), 4294967295u, -542f, 690f, Struct_2(vec4<bool>(false, true, false, false), Struct_1(true, 667f), -1i)), Struct_1(true, -619f))), true));
    var var_1 = abs(_wgslsmith_div_u32(abs(u_input.a), 5329u) | (firstTrailingBit(1u) << (~0u % 32u)));
    var var_2 = Struct_1(!select(var_0.x, false, all(vec2<bool>(var_0.x, var_0.x))), 1053f);
    var_2 = Struct_1(false, _wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))));
    var_1 = ~_wgslsmith_div_u32(4294967295u, 45236u);
    return Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(187f, var_2.b, var_2.b), vec3<f32>(var_2.b, -492f, 646f)))))), u_input.a, var_2.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.b * 559f))), Struct_2(!(!vec4<bool>(var_0.x, var_2.a, false, var_0.x)), Struct_1(reverseBits(-21707i) == (u_input.b ^ u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b + 660f), var_2.b)), -(~(~u_input.b))));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_4) -> vec4<i32> {
    var var_0 = firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-28882i, 1i, u_input.b, -8693i), vec4<i32>(arg_2.e.c, arg_0, -47822i, 38437i))), ~(vec4<i32>(-2147483647i, arg_2.e.c, arg_0, u_input.b) >> (vec4<u32>(60295u, arg_2.b, u_input.a, 64937u) % vec4<u32>(32u)))), -(~arg_0), arg_2.e.c, _wgslsmith_add_i32(arg_0, ~29547i << (~arg_2.b % 32u))));
    var var_1 = true || any(vec4<bool>(true, arg_1.x, true, all(vec3<bool>(true, arg_1.x, arg_1.x))));
    let var_2 = !arg_2.e.a.xzx;
    var var_3 = ~(~vec4<u32>(0u, _wgslsmith_add_u32(arg_2.b, 1u), ~u_input.a, 4294967295u)) | min(vec4<u32>(_wgslsmith_add_u32(45662u >> (u_input.a % 32u), firstLeadingBit(u_input.a)), 1u, 4880u, firstLeadingBit(~u_input.a)), abs(~vec4<u32>(u_input.a, 19375u, arg_2.b, arg_2.b)) | select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.b, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 0u, 1u)), countOneBits(vec4<u32>(u_input.a, arg_2.b, 30144u, 1u)), false));
    var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.b, -6133i), -46681i, ~(i32(-1i) * -1i), 1i), vec4<i32>(-45135i, 2147483647i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(func_2().e.c, abs(-17291i)), ~(-2147483647i)), -2147483647i >> (1u % 32u)), _wgslsmith_add_vec4_i32(~(vec4<i32>(arg_2.e.c, -8295i, var_0.x, var_0.x) ^ vec4<i32>(var_0.x, var_0.x, 0i, arg_2.e.c)), vec4<i32>(var_0.x, 2147483647i, _wgslsmith_add_i32(arg_2.e.c, -26872i), abs(-1013i))) & _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_0.x, u_input.b, -22170i, 31169i), vec4<i32>(-41301i, min(var_0.x, 0i), 24519i, i32(-1i) * -1i)));
    return vec4<i32>(arg_0, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~var_0.zy, vec2<i32>(u_input.b, -5999i)), arg_2.e.c), -2147483647i, abs(~func_2().e.c));
}

fn func_1() -> bool {
    var var_0 = max(_wgslsmith_add_vec4_i32(select(func_4(u_input.b, vec2<bool>(true, true), func_2()), _wgslsmith_add_vec4_i32(-vec4<i32>(-25839i, -2147483647i, u_input.b, 5724i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) << (vec4<u32>(0u, 47636u, u_input.a, u_input.a) % vec4<u32>(32u))), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true)), -vec4<i32>(~10249i, u_input.b, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 19891i, u_input.b), vec3<i32>(u_input.b, u_input.b, 40404i)))), reverseBits(vec4<i32>(u_input.b, u_input.b, -_wgslsmith_mod_i32(-38379i, -45430i), u_input.b)));
    var_0 = vec4<i32>(-1i, u_input.b, _wgslsmith_dot_vec4_i32(reverseBits(-min(vec4<i32>(1i, 0i, 1i, 1i), vec4<i32>(var_0.x, var_0.x, u_input.b, 66779i))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, 1i), vec2<i32>(-18554i, -1i))), _wgslsmith_clamp_i32(40458i, 29388i, var_0.x), -1i, var_0.x)), _wgslsmith_div_i32(~(~_wgslsmith_mult_i32(-1i, 1i)), reverseBits(21950i)));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -410f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -425f)))))));
    var var_2 = func_2().e;
    var var_3 = -countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_0.x, var_2.c), ~var_0.xw));
    return any(!vec3<bool>(var_2.a.x, _wgslsmith_f_op_f32(2084f - var_2.b.b) > 545f, (var_3.x | -1510i) == _wgslsmith_mod_i32(-17059i, 24710i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec3<bool>(true && all(vec4<bool>(false, true, false, false)), true, (u_input.a != 1u) == true), Struct_1(func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-436f, -694f))) - 166f)), max(vec2<u32>(~_wgslsmith_mult_u32(12876u, 49060u), ~select(0u, 4294967295u, false)), max(countOneBits(vec2<u32>(u_input.a, u_input.a)), max(vec2<u32>(0u, u_input.a), ~vec2<u32>(1u, 49011u)))), ~(~func_2().b));
    var_0 = Struct_3(!select(vec3<bool>(var_0.b.a, func_2().e.b.a, !var_0.a.x), !var_0.a, !var_0.b.a), Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.b, _wgslsmith_div_f32(var_0.b.b, var_0.b.b)) * 1f)), var_0.c, 1u);
    var_0 = Struct_3(!vec3<bool>(true, var_0.a.x, select(true, !var_0.a.x, var_0.a.x)), var_0.b, ~countOneBits(~var_0.c), abs(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), firstTrailingBit(vec3<u32>(u_input.a, var_0.d, u_input.a))), vec3<u32>(~20630u, _wgslsmith_mult_u32(4294967295u, var_0.c.x), ~13443u))));
    let var_1 = abs(countOneBits(vec2<i32>(~u_input.b, max(u_input.b, u_input.b)))) & vec2<i32>(-(~(-10908i)), ~(-2147483647i) ^ min(u_input.b, 0i));
    var var_2 = select(select(!vec4<bool>(any(vec4<bool>(var_0.a.x, var_0.b.a, false, false)), true, var_0.b.a, func_1()), !(!(!vec4<bool>(true, var_0.b.a, true, false))), !vec4<bool>(var_0.a.x, true, func_2().e.a.x, var_0.a.x)), func_2().e.a, !vec4<bool>(!var_0.b.a || any(vec2<bool>(var_0.b.a, var_0.a.x)), false, false, false));
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, _wgslsmith_f_op_f32(-var_3.c));
}

