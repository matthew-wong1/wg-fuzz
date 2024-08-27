struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec4<u32> {
    global1 = _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(~(~38615u)), _wgslsmith_clamp_u32(countOneBits(23721u), ~(~20737u), firstTrailingBit(_wgslsmith_add_u32(1u, 34951u)))), vec2<u32>(~(~1u), 1u));
    let var_0 = _wgslsmith_clamp_vec4_i32(-firstLeadingBit(firstTrailingBit(vec4<i32>(u_input.a.x, -1i, -13486i, 52482i))), firstLeadingBit(min(~vec4<i32>(-20453i, u_input.a.x, u_input.a.x, u_input.a.x) | ~vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), -vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 20771i))), ~(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 15233i), vec3<i32>(u_input.a.x, -1i, u_input.a.x)), select(-7507i, u_input.a.x, false), u_input.a.x, min(42634i, -20969i)) << (~(~vec4<u32>(0u, 26591u, 3348u, 0u)) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_dot_vec2_u32(abs(~reverseBits(vec2<u32>(4294967295u, 16232u))), vec2<u32>(1u, 1u));
    let var_2 = Struct_2(-226f, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(957f - -1388f), _wgslsmith_f_op_f32(895f + -1332f), any(vec4<bool>(false, true, false, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-432f, 560f, false)), -208f), -1485f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -205f))))), Struct_1(1000f, firstLeadingBit(max(vec3<u32>(4294967295u, 7529u, var_1), vec3<u32>(15125u, 1u, 31392u)) >> (~vec3<u32>(var_1, 94252u, 59973u) % vec3<u32>(32u))), vec2<f32>(_wgslsmith_div_f32(-280f, _wgslsmith_f_op_f32(f32(-1f) * -1448f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-353f - 156f) + 1f)), ~(~(vec2<u32>(var_1, var_1) >> (vec2<u32>(var_1, var_1) % vec2<u32>(32u)))), !all(vec2<bool>(true, true))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, false), true), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), true));
    global1 = var_1;
    return _wgslsmith_mult_vec4_u32(~vec4<u32>(abs(var_1 & var_2.c.b.x), 4294967295u, 1u, 4294967295u), ~vec4<u32>(_wgslsmith_mod_u32(1u, var_2.c.b.x >> (1u % 32u)), var_2.c.b.x, var_1, ~38780u ^ var_1));
}

fn func_2(arg_0: Struct_1) -> bool {
    global0 = !any(!select(select(vec2<bool>(false, arg_0.e), vec2<bool>(true, arg_0.e), vec2<bool>(arg_0.e, true)), vec2<bool>(true, arg_0.e), !vec2<bool>(arg_0.e, false)));
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), arg_0.c.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-470f, 626f, 638f, arg_0.c.x)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(992f, arg_0.c.x, -618f, arg_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(477f + arg_0.c.x), _wgslsmith_f_op_f32(arg_0.a * arg_0.a), _wgslsmith_f_op_f32(round(arg_0.c.x)), 1374f))), Struct_1(_wgslsmith_f_op_f32(633f - _wgslsmith_f_op_f32(trunc(-377f))), _wgslsmith_mod_vec3_u32(arg_0.b & arg_0.b, max(arg_0.b, arg_0.b)), arg_0.c, _wgslsmith_sub_vec2_u32(arg_0.b.zx, arg_0.d >> (arg_0.d % vec2<u32>(32u))), arg_0.e), select(select(!vec3<bool>(arg_0.e, false, false), vec3<bool>(true, arg_0.e, false), vec3<bool>(true, true, true)), vec3<bool>(arg_0.e, true, arg_0.e || arg_0.e), !vec3<bool>(arg_0.e, false, arg_0.e))));
    let var_1 = vec4<bool>(arg_0.e, false, true, false);
    var var_2 = vec3<u32>(~(~max(min(var_0.a.c.b.x, arg_0.b.x), ~arg_0.d.x)), arg_0.b.x, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(arg_0.d.x, var_0.a.c.d.x, 15359u, var_0.a.c.d.x)), _wgslsmith_div_vec4_u32(~func_3(), func_3())));
    return var_0.a.d.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = Struct_3(Struct_2(arg_1.a.a, arg_0, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -1112f) + _wgslsmith_f_op_f32(arg_1.a.b.x - arg_2.x)), arg_1.a.c.b, vec2<f32>(_wgslsmith_div_f32(639f, arg_2.x), _wgslsmith_f_op_f32(arg_2.x - -1159f)), vec2<u32>(50045u, 4294967295u) >> (countOneBits(arg_1.a.c.d) % vec2<u32>(32u)), true), vec3<bool>((arg_1.a.d.x | true) || select(arg_1.a.d.x, arg_1.a.d.x, false), any(select(vec4<bool>(true, arg_1.a.c.e, arg_1.a.d.x, false), vec4<bool>(arg_1.a.d.x, arg_1.a.d.x, arg_1.a.c.e, true), vec4<bool>(arg_1.a.c.e, false, true, arg_1.a.c.e))), !arg_1.a.d.x)));
    global0 = min(_wgslsmith_clamp_u32(var_0.a.c.b.x, var_0.a.c.b.x, abs(~var_0.a.c.d.x)), _wgslsmith_div_u32(reverseBits(~1u), _wgslsmith_div_u32(~arg_1.a.c.d.x, _wgslsmith_mod_u32(var_0.a.c.d.x, var_0.a.c.b.x)))) < 1u;
    var var_1 = 259f;
    let var_2 = false;
    global0 = var_0.a.c.e;
    return Struct_4(u_input.a.x, u_input.a.x & (u_input.a.x ^ -13601i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), var_0.a.c.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_0.wx))), vec2<u32>(~select(1u, var_0.a.c.d.x, arg_1.a.d.x), 0u), arg_1.a.d.x && !arg_1.a.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(373f)), _wgslsmith_f_op_f32(316f * var_0.a.c.c.x), _wgslsmith_f_op_f32(ceil(-150f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(807f))))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 808f) * _wgslsmith_f_op_f32(-arg_1.a.a)))), _wgslsmith_mult_vec3_u32(arg_1.a.c.b, ~arg_1.a.c.b), arg_1.a.c.c, var_0.a.c.d, true));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_mult_u32(0u, arg_3.x);
    let var_1 = _wgslsmith_dot_vec3_u32(func_3().wzw, ~vec3<u32>(var_0 << ((1u | arg_3.x) % 32u), arg_3.x, ~var_0));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.c.c, arg_0.e.c))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.e.c + vec2<f32>(arg_0.d.x, arg_1.c.x))))));
    global1 = ~(abs(_wgslsmith_sub_u32(~0u, ~var_1)) ^ 44340u);
    let var_3 = Struct_4(-(~2147483647i), arg_0.b, func_4(_wgslsmith_f_op_vec4_f32(-func_4(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c.x, 1031f, 266f, 2852f), arg_0.d), Struct_3(Struct_2(-1537f, vec4<f32>(arg_1.c.x, 168f, 212f, arg_1.a), Struct_1(-383f, arg_1.b, vec2<f32>(-1677f, -681f), arg_3, arg_2.x), vec3<bool>(arg_2.x, true, true))), _wgslsmith_f_op_vec2_f32(select(var_2, vec2<f32>(1225f, arg_1.c.x), vec2<bool>(false, arg_2.x)))).d), Struct_3(Struct_2(_wgslsmith_div_f32(var_2.x, 397f), arg_0.d, Struct_1(var_2.x, arg_1.b, vec2<f32>(737f, 922f), arg_1.d, arg_2.x), select(arg_2, vec3<bool>(arg_0.e.e, true, false), arg_2))), var_2).c, arg_0.d, func_4(arg_0.d, Struct_3(Struct_2(1145f, vec4<f32>(-1934f, -795f, var_2.x, -984f), Struct_1(arg_1.c.x, vec3<u32>(72616u, 1u, 1u), var_2, arg_3, true), arg_2)), vec2<f32>(_wgslsmith_f_op_f32(ceil(-956f)), 129f)).c);
    return var_3.e.e;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-1149f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-292f)))));
    return func_5(func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1449f, 1335f, -1000f, 310f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-106f, -388f, 610f, 386f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(578f, -1918f, 873f, -841f))), !func_2(Struct_1(-728f, vec3<u32>(0u, 1u, 1u), vec2<f32>(1000f, 529f), vec2<u32>(15573u, 1u), true)))), Struct_3(Struct_2(_wgslsmith_f_op_f32(trunc(552f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-105f, -530f, 348f, 1000f)), Struct_1(-151f, vec3<u32>(1u, 40977u, 32589u), vec2<f32>(776f, 327f), vec2<u32>(1u, 0u), true), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-395f, 434f) - vec2<f32>(-718f, 269f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1736f, 458f), vec2<f32>(196f, 681f))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1031f) + vec2<f32>(239f, -138f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1735f, -377f)))))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-435f - _wgslsmith_f_op_f32(1526f * 198f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(719f, -458f)), true)), ~vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f + 1513f), -495f)), ~vec2<u32>(countOneBits(4294967295u), ~0u), (true && any(vec2<bool>(false, true))) == all(vec3<bool>(false, false, true))), select(select(vec3<bool>(true, true, false), vec3<bool>(true, all(vec4<bool>(true, false, false, true)), true), !all(vec2<bool>(false, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(vec2<u32>(~(~1u), ~abs(4294967295u)), vec2<u32>(min(13577u, 66609u), reverseBits(~4056u)), firstTrailingBit(_wgslsmith_sub_u32(52794u, 0u)) <= 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -813f) * _wgslsmith_f_op_f32(297f - -239f)) + 974f)), -368f));
    let var_1 = Struct_4(-10588i, u_input.a.x, func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1155f, 2365f, -908f, -694f), vec4<f32>(313f, 1000f, 278f, 832f))), func_4(_wgslsmith_div_vec4_f32(vec4<f32>(719f, -1000f, -197f, 494f), vec4<f32>(2257f, -782f, -336f, -353f)), Struct_3(Struct_2(857f, vec4<f32>(-547f, -378f, -729f, 686f), Struct_1(-2095f, vec3<u32>(51810u, 2454u, 4294967295u), vec2<f32>(257f, -277f), vec2<u32>(4294967295u, 0u), false), vec3<bool>(false, true, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-755f, 1000f))).d), Struct_3(Struct_2(-124f, vec4<f32>(1f, 1f, 1f, 1f), func_4(vec4<f32>(406f, 170f, -2372f, -972f), Struct_3(Struct_2(142f, vec4<f32>(102f, 639f, -1005f, -129f), Struct_1(-1339f, vec3<u32>(1u, 36878u, 0u), vec2<f32>(-728f, -711f), vec2<u32>(0u, 8255u), true), vec3<bool>(true, true, true))), vec2<f32>(-592f, 1016f)).c, vec3<bool>(false, false, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(452f * 129f), _wgslsmith_div_f32(1319f, -249f)))).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1209f, -1565f, 791f, 413f), vec4<f32>(-1008f, 1932f, -230f, 145f)))))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), Struct_3(Struct_2(_wgslsmith_f_op_f32(-1127f + -339f), vec4<f32>(-889f, 1000f, -1337f, -2211f), Struct_1(-833f, vec3<u32>(0u, 0u, 1u), vec2<f32>(268f, -2245f), vec2<u32>(1u, 6963u), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2322f, 706f))))).e);
    global1 = firstLeadingBit(~abs(_wgslsmith_clamp_u32(~var_1.c.b.x, var_1.c.d.x >> (4294967295u % 32u), ~0u)));
    let var_2 = Struct_1(var_1.c.a, vec3<u32>(select(~var_1.c.b.x, ~_wgslsmith_div_u32(var_1.e.b.x, var_1.c.b.x), all(vec4<bool>(var_1.c.e, var_1.e.e, var_1.e.e, var_1.e.e)) || false), var_1.e.d.x, func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(var_1.d, var_1.d)), var_1.d, vec4<bool>(false, var_1.e.e, var_1.e.e, var_1.c.e))), Struct_3(Struct_2(-1054f, vec4<f32>(var_1.c.a, -333f, -791f, var_1.e.c.x), Struct_1(var_1.d.x, vec3<u32>(var_1.e.d.x, 0u, 24664u), vec2<f32>(var_1.e.a, var_1.c.c.x), var_1.c.b.zx, var_1.e.e), vec3<bool>(false, var_1.c.e, var_1.c.e))), vec2<f32>(-261f, -1480f)).e.d.x), _wgslsmith_f_op_vec2_f32(ceil(var_1.e.c)), vec2<u32>(var_1.c.d.x, ~(~var_1.e.d.x << (~var_1.e.b.x % 32u))), false);
    let var_3 = ~(vec3<i32>(var_1.a | var_1.b, -4487i, -var_1.a) >> (_wgslsmith_mult_vec3_u32(var_1.e.b, var_1.c.b ^ var_2.b) % vec3<u32>(32u))) & _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, var_1.b ^ max(u_input.a.x, 80549i), -(~u_input.a.x)), ~(vec3<i32>(0i, -31832i, u_input.a.x) | vec3<i32>(38237i, 1i, var_1.b)) ^ (_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 1i, u_input.a.x), vec3<i32>(var_1.a, 68826i, 5324i)) & -vec3<i32>(var_1.b, var_1.b, var_1.a)));
    var var_4 = _wgslsmith_dot_vec4_i32(select(-(~vec4<i32>(u_input.a.x, 9482i, 30865i, -2147483647i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_1.a, 0i, -34122i), vec4<i32>(-13864i, 0i, 71398i, u_input.a.x)), !(!vec4<bool>(true, false, var_1.e.e, var_1.c.e))) | vec4<i32>(-var_3.x, 1i, ~(-2147483647i), 47455i), -vec4<i32>(u_input.a.x, (2147483647i ^ var_1.b) | ~(-2147483647i), u_input.a.x, -46972i));
    var_0 = var_2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1.c.c.x, _wgslsmith_f_op_f32(105f * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1559f, -1582f), -1178f))), -146f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + 1750f), 1564f)) * 1635f), 900f), var_1.a, var_2.b);
}

