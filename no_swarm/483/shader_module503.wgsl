struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_1(vec3<bool>(true, false, true), 0i, vec4<u32>(4294967295u, 1u, 15800u, 0u)), vec3<f32>(1035f, 796f, 3250f), 34829i, 875f), Struct_3(Struct_1(vec3<bool>(false, false, true), -1i, vec4<u32>(1u, 63678u, 2655u, 1u)), vec3<f32>(-2166f, -739f, -250f), 16833i, 402f), Struct_3(Struct_1(vec3<bool>(false, false, true), 18713i, vec4<u32>(25232u, 96625u, 4294967295u, 76607u)), vec3<f32>(327f, 1000f, 479f), 0i, -833f), Struct_3(Struct_1(vec3<bool>(true, false, true), -54735i, vec4<u32>(30470u, 7816u, 0u, 57769u)), vec3<f32>(604f, 375f, -546f), 98196i, 319f), Struct_3(Struct_1(vec3<bool>(true, false, true), i32(-2147483648), vec4<u32>(0u, 0u, 1u, 4294967295u)), vec3<f32>(1511f, 785f, -1332f), -1i, -308f), Struct_3(Struct_1(vec3<bool>(false, true, true), 15902i, vec4<u32>(0u, 18804u, 0u, 23436u)), vec3<f32>(2707f, -849f, 1000f), 1i, -137f), Struct_3(Struct_1(vec3<bool>(true, false, false), 2147483647i, vec4<u32>(1u, 4294967295u, 41848u, 0u)), vec3<f32>(1000f, -1404f, 1123f), -1i, -161f), Struct_3(Struct_1(vec3<bool>(true, true, false), -7033i, vec4<u32>(25985u, 23551u, 870u, 1u)), vec3<f32>(454f, -168f, -364f), 21347i, 302f), Struct_3(Struct_1(vec3<bool>(false, true, false), 41572i, vec4<u32>(66252u, 0u, 4294967295u, 59424u)), vec3<f32>(-1000f, 753f, -907f), 2147483647i, 633f), Struct_3(Struct_1(vec3<bool>(false, true, false), 50353i, vec4<u32>(1u, 4294967295u, 0u, 15575u)), vec3<f32>(462f, 253f, 717f), -28511i, -619f));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global1 = array<Struct_3, 10>();
    var var_0 = vec2<u32>(1u, 1u) | ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 14843u), select(vec3<u32>(32919u, 4294967295u, 0u), vec3<u32>(u_input.b, u_input.b, u_input.b), false)), _wgslsmith_mult_u32(u_input.b, 0u & u_input.b));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-394f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-553f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-229f, 175f)))), -1497f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(254f, -1000f)))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-620f))));
    var var_3 = vec3<u32>(max(var_0.x, ~u_input.b), ~var_0.x, 38959u);
    return _wgslsmith_mod_u32(reverseBits(4294967295u) ^ u_input.b, ~_wgslsmith_mod_u32(48594u, u_input.b));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, false)), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(false, false, true), any(vec4<bool>(true, true, true, false))), func_3() != 0u), ~(1i | -_wgslsmith_clamp_i32(-12537i, u_input.c, -2147483647i)), _wgslsmith_add_vec4_u32(vec4<u32>(15876u, u_input.b, ~1u, _wgslsmith_div_u32(~u_input.b, _wgslsmith_mult_u32(77844u, 53353u))), _wgslsmith_sub_vec4_u32(vec4<u32>(max(58409u, 32016u), max(u_input.b, u_input.b), u_input.b ^ 1u, ~9023u), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), ~vec4<u32>(u_input.b, u_input.b, 1u, 71561u), vec4<u32>(u_input.b, 0u, 52504u, 1u)))));
    let var_1 = firstTrailingBit(~(~_wgslsmith_clamp_u32(var_0.c.x, u_input.b, 0u))) < 1u;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(246f, 166f)))))), _wgslsmith_div_vec2_f32(vec2<f32>(-578f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(586f, -1799f)))))));
    let var_3 = Struct_1(!var_0.a, _wgslsmith_mod_i32(firstLeadingBit(-u_input.c), max(var_0.b, u_input.a.x ^ 2147483647i)) | var_0.b, _wgslsmith_div_vec4_u32(~(~(~var_0.c)), vec4<u32>(~u_input.b, _wgslsmith_add_u32(u_input.b, ~var_0.c.x), firstLeadingBit(_wgslsmith_dot_vec3_u32(var_0.c.yzw, vec3<u32>(u_input.b, 1u, u_input.b))), var_0.c.x)));
    global0 = !var_1;
    return global1[_wgslsmith_index_u32(var_3.c.x, 10u)];
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> Struct_5 {
    global0 = arg_1.a.a.x;
    let var_0 = arg_1.a;
    return Struct_5(arg_0.a, min(-u_input.a, _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-u_input.a, ~u_input.a), u_input.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -892f) - _wgslsmith_div_f32(arg_1.d, arg_0.d))), -1000f), Struct_2(~1i, -2147483647i, func_2().a));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_5, arg_3: vec4<bool>) -> Struct_4 {
    global1 = array<Struct_3, 10>();
    return Struct_4(func_4(func_2(), arg_0, countOneBits(_wgslsmith_mod_u32(_wgslsmith_add_u32(6363u, 24806u), 23898u))).a);
}

fn func_1() -> Struct_4 {
    let var_0 = u_input.c;
    global0 = false;
    let var_1 = _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_mult_i32(u_input.c, i32(-1i) * -1i)) ^ -16800i, _wgslsmith_dot_vec4_i32(u_input.a, ~(-u_input.a)));
    global1 = array<Struct_3, 10>();
    var var_2 = func_5(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~4294967295u) & ((88270u << (u_input.b % 32u)) << (u_input.b % 32u)), 9526u), 10u)], ~u_input.b, func_4(func_2(), global1[_wgslsmith_index_u32(0u, 10u)], ~1u), vec4<bool>(true, (var_0 | select(0i, 1i, false)) <= 33120i, false, any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)))));
    return func_5(Struct_3(var_2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-217f, 610f, -187f) - vec3<f32>(1119f, -451f, -228f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1242f, 650f, 250f)))) - vec3<f32>(1f, 1f, 1f)), ~countOneBits(var_1 << (4294967295u % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -395f)), ~(~firstLeadingBit(var_2.a.c.x) << (6572u % 32u)), Struct_5(Struct_1(var_2.a.a, abs(u_input.d), var_2.a.c), vec4<i32>(u_input.d, -u_input.c, ~_wgslsmith_sub_i32(var_2.a.b, -23429i), 10864i << (u_input.b % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), Struct_2(-2147483647i, reverseBits(var_0), Struct_1(var_2.a.a, i32(-1i) * -11234i, ~vec4<u32>(var_2.a.c.x, 30663u, 0u, var_2.a.c.x)))), select(select(!select(vec4<bool>(false, false, var_2.a.a.x, var_2.a.a.x), vec4<bool>(false, true, var_2.a.a.x, var_2.a.a.x), vec4<bool>(true, var_2.a.a.x, true, true)), vec4<bool>(func_4(Struct_3(Struct_1(vec3<bool>(true, var_2.a.a.x, true), 25251i, vec4<u32>(1u, 37526u, var_2.a.c.x, u_input.b)), vec3<f32>(188f, 733f, 448f), 33655i, 534f), Struct_3(Struct_1(var_2.a.a, 2147483647i, var_2.a.c), vec3<f32>(279f, 696f, -406f), var_0, -211f), u_input.b).a.a.x, all(vec4<bool>(true, true, false, false)), var_2.a.a.x | var_2.a.a.x, 99714u > u_input.b), var_2.a.a.x), select(select(vec4<bool>(true, var_2.a.a.x, var_2.a.a.x, false), select(vec4<bool>(var_2.a.a.x, false, true, var_2.a.a.x), vec4<bool>(false, var_2.a.a.x, false, var_2.a.a.x), false), select(var_2.a.a.x, var_2.a.a.x, true)), !vec4<bool>(var_2.a.a.x, var_2.a.a.x, var_2.a.a.x, var_2.a.a.x), var_2.a.a.x), var_2.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<Struct_3, 10>();
    var var_1 = u_input.c;
    let var_2 = var_0.a;
    var var_3 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(~firstLeadingBit(u_input.a), u_input.a), _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(178i, -31486i, u_input.c), vec3<i32>(-15418i, var_2.b, var_2.b)), abs(var_0.a.b), var_0.a.b, 0i))) << (~(~vec4<u32>(~33849u, 4294967295u, max(20826u, 1u), ~26411u)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~select(reverseBits(vec4<u32>(u_input.b, u_input.b, var_2.c.x, var_0.a.c.x)) << (var_2.c % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 28239u, var_0.a.c.x, u_input.b), vec4<u32>(var_2.c.x, 65714u, 64968u, var_0.a.c.x)), true), vec4<i32>(-1i, _wgslsmith_sub_i32(abs(var_2.b), firstTrailingBit(1i)) & min(-2147483647i >> (var_2.c.x % 32u), -5953i), ~var_3.x, -14827i), -abs(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a.b, var_3.x), var_3.ww))));
}

