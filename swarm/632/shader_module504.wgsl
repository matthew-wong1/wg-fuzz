struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = arg_0;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-770f)), 1f))) + 1f), Struct_2(arg_1, select(select(!vec2<bool>(false, arg_1), vec2<bool>(true, false), !vec2<bool>(true, arg_0)), !vec2<bool>(arg_0, arg_1), select(vec2<bool>(arg_1, arg_1), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_1), arg_0), vec2<bool>(true, false)))));
    let var_2 = _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1209f, 1292f)) - _wgslsmith_f_op_f32(f32(-1f) * -347f))) * var_1.a));
    var var_3 = ~max(4294967295u, 12065u);
    let var_4 = Struct_3(57184u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2));
}

fn func_2() -> vec2<f32> {
    var var_0 = firstTrailingBit(_wgslsmith_mod_vec3_i32(u_input.a, _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.e.x, u_input.e.x)), -(~vec3<i32>(-22314i, -31928i, u_input.b)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(387f, -1337f)) + _wgslsmith_f_op_f32(select(-608f, -576f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(all(vec3<bool>(true, true, false)), true))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1696f, _wgslsmith_div_f32(-1738f, -770f), u_input.d >= 1u)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false, any(vec4<bool>(false, true, true, true)))) - 1f)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-961f, 1378f));
    var_0 = -((-u_input.a >> (vec3<u32>(reverseBits(4294967295u), u_input.d & 1u, u_input.d) % vec3<u32>(32u))) & vec3<i32>(1i, u_input.b, -56439i));
    var_1 = 346f;
    return vec2<f32>(-822f, 1174f);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = -_wgslsmith_mod_i32(u_input.e.x, 30013i);
    let var_1 = Struct_1(~arg_3 << (vec2<u32>(11921u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, 1u, 4294967295u), vec4<u32>(63389u, 1u, arg_3.x, 11460u))) % vec2<u32>(32u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 4294967295u, 5158u), vec3<u32>(firstTrailingBit(u_input.c), ~1u, ~1u)) ^ countOneBits(vec3<u32>(0u, 4294967295u, 4294967295u) & vec3<u32>(4294967295u, 1u, arg_3.x)), arg_3.x, ~(-(vec4<i32>(-1i) * -vec4<i32>(13230i, -32232i, var_0, var_0))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, true == all(arg_1)))), 971f, arg_2.x);
    var var_3 = arg_1.x;
    var var_4 = Struct_3(4294967295u);
    return Struct_2(_wgslsmith_f_op_f32(round(var_2.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(func_3(arg_0.x, arg_0.x)))), arg_1);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = arg_1.a;
    let var_1 = !vec3<bool>(all(vec4<bool>(func_4(arg_2.b, vec2<bool>(false, false), vec2<f32>(var_0, 1299f), vec2<u32>(u_input.c, 0u)).b.x, false, arg_1.b.b.x, arg_0.b.x && arg_2.a)), all(vec2<bool>(!arg_0.a, arg_0.a)), -2147483647i <= _wgslsmith_dot_vec3_i32(u_input.a, min(u_input.a, vec3<i32>(-8450i, 570i, u_input.b))));
    let var_2 = vec3<u32>(48337u, firstLeadingBit(0u), u_input.d);
    var var_3 = !vec3<bool>(any(vec2<bool>(true, true)), arg_0.a, all(!vec4<bool>(arg_0.a, false, true, false)) | false);
    var_3 = var_1;
    return vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(~_wgslsmith_mod_i32(u_input.b ^ -15780i, ~u_input.b), u_input.b));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(790f, 530f))))) + _wgslsmith_f_op_f32(sign(-2166f))), Struct_2(true, func_4(vec2<bool>(arg_1.x, u_input.a.x <= 1i), select(vec2<bool>(true, false), arg_0.b, all(arg_1)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-327f, -1175f)))), vec2<u32>(u_input.d >> (0u % 32u), u_input.c)).b));
    return Struct_1(~countOneBits(~(~vec2<u32>(4294967295u, 4294967295u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(u_input.d, 4294967295u, u_input.c)), 57773u), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(25629u, 0u, u_input.d), vec3<u32>(1u, u_input.c, u_input.c)), vec3<u32>(25636u, 1u, 0u)) ^ ~(~vec3<u32>(u_input.d, 1u, 1697u))), ~u_input.d, vec4<i32>(u_input.e.x, arg_2.x, _wgslsmith_div_i32(1i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(0i), arg_2.x, -17055i), max(vec3<i32>(u_input.a.x, -24493i, arg_2.x), u_input.a))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: i32) -> bool {
    let var_0 = func_6(Struct_2(true, select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), !(u_input.d > u_input.d))), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), false), _wgslsmith_sub_u32(4294967295u, arg_0.a) == select(u_input.c, arg_1.x, false)), func_5(func_4(vec2<bool>(true, false), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(func_2()), arg_1.yx & vec2<u32>(21047u, 14150u)), Struct_4(625f, Struct_2(true, func_4(vec2<bool>(false, false), vec2<bool>(true, true), vec2<f32>(220f, -903f), vec2<u32>(u_input.c, 34997u)).b)), Struct_2(true, vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(613f, _wgslsmith_f_op_f32(-1f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1129f, -1000f, true)), 1f))));
    let var_2 = var_0.d.yy;
    let var_3 = Struct_4(2001f, Struct_2(var_1 < _wgslsmith_f_op_f32(step(-1975f, -594f)), vec2<bool>(true, true)));
    var var_4 = var_3;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = vec3<bool>(true, all(!vec4<bool>(any(vec4<bool>(true, true, true, false)), true, select(false, true, false), true)), 2147483647i > u_input.a.x);
    var var_2 = Struct_3(_wgslsmith_sub_u32(min(_wgslsmith_mod_u32(~var_0, _wgslsmith_mult_u32(63163u, 424u)), ~(var_0 | 10051u)), abs(~var_0)));
    var var_3 = ~(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0, var_0, var_2.a, 1u), vec4<u32>(u_input.d, 26920u, var_2.a, var_0)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a, 45134u, 4650u, var_2.a), min(vec4<u32>(var_0, 48190u, 5932u, var_0), vec4<u32>(var_0, 43589u, var_2.a, 1u)))));
    let var_4 = reverseBits(11499u);
    var var_5 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -(~u_input.e), u_input.e, _wgslsmith_sub_vec2_i32(u_input.e, -vec2<i32>(_wgslsmith_add_i32(u_input.a.x, 0i), -43753i)));
    var_5 = _wgslsmith_mod_vec2_i32(u_input.a.zy, u_input.e);
    var_5 = u_input.e;
    let var_6 = select(var_1.x, false, any(select(vec2<bool>(false && var_1.x, u_input.b == 13595i), select(!var_1.zy, vec2<bool>(false, var_1.x), func_1(Struct_3(var_4), var_3.wxy, -9253i)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2()).x - -1896f))), _wgslsmith_f_op_f32(trunc(1533f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-646f, -1200f, -1000f, -102f)), vec4<f32>(1180f, -1124f, -724f, -568f))), vec4<f32>(_wgslsmith_f_op_f32(593f - 390f), _wgslsmith_f_op_f32(-1056f * -994f), _wgslsmith_f_op_f32(-1064f + -688f), _wgslsmith_f_op_f32(1189f * 610f)), false))));
}

