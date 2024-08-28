struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = false;
    return 1u;
}

fn func_2() -> bool {
    var var_0 = firstLeadingBit(abs(vec4<u32>(countOneBits(~50596u), u_input.b, func_3(), abs(4294967295u))));
    var_0 = vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(u_input.b), ~_wgslsmith_clamp_u32(18066u, 1u, _wgslsmith_div_u32(u_input.b, 0u))), u_input.b, u_input.b, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, u_input.a, 57785u), vec4<u32>(var_0.x, var_0.x, u_input.a, 4294967295u))));
    let var_1 = reverseBits(firstTrailingBit(min(u_input.c.wz << (vec2<u32>(14511u, 12448u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.c.x, u_input.c.x)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.c.x), u_input.c.xy)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(358f - -1369f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-252f, -527f))));
    var_0 = max(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.x, var_0.x, u_input.b) >> (_wgslsmith_add_vec4_u32(vec4<u32>(15937u, 1u, var_0.x, u_input.b), vec4<u32>(u_input.b, 7222u, 91312u, var_0.x)) % vec4<u32>(32u)), ~vec4<u32>(var_0.x, 0u, 29792u, 22324u) & (vec4<u32>(77061u, 63625u, var_0.x, u_input.a) | vec4<u32>(u_input.a, var_0.x, 4294967295u, var_0.x)))), ~max(vec4<u32>(4294967295u, _wgslsmith_mod_u32(u_input.b, var_0.x), var_0.x << (u_input.a % 32u), 33357u >> (1u % 32u)), ~(~vec4<u32>(u_input.b, u_input.a, var_0.x, 74080u))));
    return all(select(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), true)), vec2<bool>(true, true), vec2<bool>(false, true)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = firstTrailingBit(vec4<u32>(56815u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a, u_input.a), firstTrailingBit(vec3<u32>(1u, 118058u, u_input.a))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), abs(~19839u)), 15964u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1179f, -1490f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + -1000f))), 1102f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-700f, -1956f, -350f, -368f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-908f, 1195f, 347f, 1491f) + vec4<f32>(-1616f, -648f, 101f, -570f)))) * vec4<f32>(_wgslsmith_f_op_f32(select(-147f, -167f, arg_2.a.x)), _wgslsmith_f_op_f32(sign(412f)), _wgslsmith_f_op_f32(-3811f * 937f), _wgslsmith_f_op_f32(floor(655f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-697f, 2901f, -2174f, -760f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-348f, 115f, 1188f, -734f) - vec4<f32>(1314f, -785f, -857f, -128f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(659f, -1129f, 1422f, -312f)))), 23640u >= ~var_0.x))));
    var var_2 = Struct_1(select(arg_2.a, select(vec4<bool>(true, u_input.b == 0u, any(vec2<bool>(arg_1.c.x, arg_1.a.x)), true), select(arg_2.c, arg_2.a, vec4<bool>(arg_2.c.x, arg_2.a.x, false, arg_1.c.x)), true), arg_2.a), 38358i, arg_2.c);
    let var_3 = arg_1.c;
    let var_4 = min(~firstLeadingBit(1u), 11124u);
    return ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(~var_4, countOneBits(4294967295u)), vec2<u32>(var_0.x, select(reverseBits(var_0.x), ~var_0.x, !arg_2.c.x)), min(min(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a), var_0.xy), vec2<u32>(60484u, u_input.b)), vec2<u32>(0u, 49855u)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-arg_2), arg_2))), vec2<f32>(243f, arg_2)));
    let var_1 = true;
    let var_2 = -769f;
    let var_3 = vec2<f32>(948f, arg_2);
    return Struct_1(select(vec4<bool>(all(select(vec4<bool>(arg_1.x, true, false, false), vec4<bool>(false, false, false, arg_1.x), var_1)), false, !select(var_1, true, true), false), !(!(!vec4<bool>(var_1, var_1, true, false))), select(!vec4<bool>(true, true, arg_1.x, true), !select(vec4<bool>(true, var_1, true, arg_1.x), vec4<bool>(false, true, true, false), true), vec4<bool>(select(arg_1.x, true, var_1), !arg_1.x, func_2(), all(vec3<bool>(var_1, false, false))))), -u_input.c.x, !select(select(select(vec4<bool>(var_1, true, var_1, false), vec4<bool>(true, var_1, false, var_1), arg_1.x), vec4<bool>(var_1, false, var_1, true), true), select(select(vec4<bool>(arg_1.x, var_1, true, arg_1.x), vec4<bool>(false, true, false, arg_1.x), true), !vec4<bool>(true, false, var_1, false), vec4<bool>(var_1, arg_1.x, var_1, var_1)), -1291f == _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32) -> i32 {
    var var_0 = arg_1.c.x;
    let var_1 = arg_1.a;
    var var_2 = func_5(func_4(select(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.c.x, arg_1.b, -10845i), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), arg_1.b << (u_input.a % 32u)), -(u_input.c.x & -1i), func_2()), Struct_1(arg_1.a, _wgslsmith_dot_vec3_i32(u_input.c.ywx, _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_1.b, 2147483647i), u_input.c.ywz)), vec4<bool>(true, false, !var_1.x, !var_1.x)), arg_1), vec2<bool>((_wgslsmith_f_op_f32(ceil(-1017f)) <= _wgslsmith_f_op_f32(round(arg_0.x))) != true, false), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-arg_0.x))))));
    let var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(countOneBits(-1i), var_2.b << (arg_2 % 32u), -_wgslsmith_add_i32(-21645i, 1i), (arg_1.b ^ var_2.b) ^ var_2.b), vec4<i32>(abs(_wgslsmith_mod_i32(-31142i, u_input.c.x)), u_input.c.x, 85666i, firstTrailingBit(_wgslsmith_sub_i32(u_input.c.x, arg_1.b)))), firstLeadingBit(~firstTrailingBit(min(vec4<i32>(u_input.c.x, arg_1.b, var_2.b, u_input.c.x), vec4<i32>(15867i, u_input.c.x, 0i, -42413i)))));
    var var_4 = true;
    return _wgslsmith_mult_i32(1i, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.c.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c.xyy, u_input.c.wwx), func_1(vec4<f32>(1363f, 1646f, 883f, 2062f), Struct_1(vec4<bool>(true, false, false, false), u_input.c.x, vec4<bool>(false, true, false, true)), 12816u)), ~vec4<i32>(u_input.c.x, u_input.c.x, 45584i, -21052i) | vec4<i32>(1i, -61988i, -1i, u_input.c.x)));
    let var_1 = u_input.a;
    var var_2 = Struct_2(func_5(vec2<u32>(~(var_1 >> (44230u % 32u)), 1u), vec2<bool>(false, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c) <= u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(242f - 586f), _wgslsmith_f_op_f32(round(1057f)))) * -539f)), -35453i, ~(~(~u_input.b) >> (u_input.b % 32u)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(969f, -1026f, true)) + 253f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2056f)), _wgslsmith_f_op_f32(step(764f, 1062f))), -1960f, 827f))), Struct_1(!vec4<bool>(false, any(vec4<bool>(false, false, false, true)), func_2(), false), u_input.c.x, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, u_input.c.x <= 12201i, var_1 <= u_input.a))));
    var var_3 = 664f;
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) * -751f);
    var_0 = countOneBits(vec2<i32>(-27116i, _wgslsmith_dot_vec3_i32(u_input.c.wxx, -vec3<i32>(1i, var_2.e.b, var_0.x))));
    let var_4 = Struct_2(Struct_1(select(vec4<bool>(all(vec3<bool>(var_2.a.a.x, false, var_2.e.c.x)), var_2.d.x >= var_2.d.x, false, false), vec4<bool>(true, !var_2.e.a.x, var_2.e.a.x && var_2.e.a.x, true), vec4<bool>(!var_2.e.c.x, u_input.c.x > 31607i, all(var_2.a.c), all(vec4<bool>(var_2.e.a.x, var_2.e.c.x, false, true)))), ~_wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, u_input.c.x), abs(var_2.b)), vec4<bool>(any(var_2.e.c.yw), !var_2.a.a.x, true, var_2.e.c.x | (var_2.d.x == var_2.d.x))), 0i, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(var_1, 0u, u_input.b, var_2.c) ^ vec4<u32>(17957u, 109347u, 27798u, u_input.b)), vec4<u32>(1u, max(u_input.b & 4294967295u, u_input.b), 66881u, _wgslsmith_sub_u32(var_1, _wgslsmith_sub_u32(4294967295u, u_input.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -560f, _wgslsmith_f_op_f32(max(var_2.d.x, var_2.d.x)), var_2.d.x))) - vec4<f32>(_wgslsmith_f_op_f32(sign(-1432f)), _wgslsmith_f_op_f32(min(var_2.d.x, 1549f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(max(1159f, var_2.d.x)), var_2.d.x != -1000f)), _wgslsmith_f_op_f32(var_2.d.x * _wgslsmith_f_op_f32(-var_2.d.x)))), Struct_1(!vec4<bool>(!var_2.e.c.x, true, u_input.c.x < var_0.x, true), -1i, var_2.e.c));
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(8515u, var_5, var_4.c, var_1), vec4<u32>(var_2.c, 27158u, var_2.c, var_5)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.b, u_input.b), vec4<u32>(95544u, 1u, 1u, 42666u), vec4<u32>(1u, 69794u, 4294967295u, 12665u)), ~vec4<u32>(4294967295u, 0u, 1u, var_1))), vec4<f32>(_wgslsmith_div_f32(var_4.d.x, -164f), -515f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(209f + -575f))), var_4.d.x));
}

