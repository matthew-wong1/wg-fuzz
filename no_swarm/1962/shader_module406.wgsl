struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(Struct_2(4294967295u, Struct_1(1018f, vec4<bool>(true, true, false, false), vec3<bool>(false, false, true), true, vec4<bool>(false, false, false, true)), Struct_1(-376f, vec4<bool>(true, true, false, true), vec3<bool>(true, false, true), false, vec4<bool>(true, false, false, true)), Struct_1(-299f, vec4<bool>(true, true, false, false), vec3<bool>(false, true, false), true, vec4<bool>(false, false, false, false)), 2317f)), Struct_5(Struct_2(4294967295u, Struct_1(1734f, vec4<bool>(false, true, false, false), vec3<bool>(false, false, false), false, vec4<bool>(false, false, false, true)), Struct_1(137f, vec4<bool>(false, false, true, true), vec3<bool>(false, false, true), false, vec4<bool>(true, true, true, true)), Struct_1(-486f, vec4<bool>(false, false, false, false), vec3<bool>(false, true, true), true, vec4<bool>(true, false, false, false)), -469f)), Struct_5(Struct_2(30691u, Struct_1(2356f, vec4<bool>(false, true, true, false), vec3<bool>(false, true, false), false, vec4<bool>(true, false, true, false)), Struct_1(-1000f, vec4<bool>(false, false, false, false), vec3<bool>(false, false, true), true, vec4<bool>(true, false, true, false)), Struct_1(240f, vec4<bool>(false, true, false, false), vec3<bool>(false, false, false), false, vec4<bool>(false, false, false, false)), -448f)), Struct_5(Struct_2(1u, Struct_1(-1000f, vec4<bool>(false, true, true, true), vec3<bool>(true, true, false), true, vec4<bool>(false, true, false, false)), Struct_1(1059f, vec4<bool>(false, true, true, false), vec3<bool>(true, true, false), false, vec4<bool>(false, true, false, false)), Struct_1(573f, vec4<bool>(false, true, true, true), vec3<bool>(false, true, true), false, vec4<bool>(true, true, false, true)), 1544f)), Struct_5(Struct_2(42422u, Struct_1(1217f, vec4<bool>(true, false, false, false), vec3<bool>(false, false, true), false, vec4<bool>(false, true, true, false)), Struct_1(-607f, vec4<bool>(false, false, false, true), vec3<bool>(false, true, true), true, vec4<bool>(false, true, true, true)), Struct_1(780f, vec4<bool>(false, false, false, false), vec3<bool>(false, false, false), false, vec4<bool>(true, false, false, true)), 465f)), Struct_5(Struct_2(71706u, Struct_1(-966f, vec4<bool>(false, true, true, true), vec3<bool>(false, true, true), false, vec4<bool>(true, false, true, true)), Struct_1(601f, vec4<bool>(false, true, false, true), vec3<bool>(false, false, true), false, vec4<bool>(true, true, false, false)), Struct_1(-818f, vec4<bool>(true, true, false, true), vec3<bool>(true, false, true), true, vec4<bool>(false, false, false, false)), 283f)), Struct_5(Struct_2(30646u, Struct_1(201f, vec4<bool>(false, false, false, true), vec3<bool>(true, false, true), true, vec4<bool>(true, false, true, false)), Struct_1(-682f, vec4<bool>(false, true, true, false), vec3<bool>(true, true, false), true, vec4<bool>(true, false, false, true)), Struct_1(1000f, vec4<bool>(false, false, true, false), vec3<bool>(true, true, false), false, vec4<bool>(true, true, true, false)), 1159f)), Struct_5(Struct_2(1575u, Struct_1(-313f, vec4<bool>(true, true, true, true), vec3<bool>(true, true, false), false, vec4<bool>(false, false, false, true)), Struct_1(-656f, vec4<bool>(true, false, false, true), vec3<bool>(true, true, false), true, vec4<bool>(true, false, false, false)), Struct_1(-1000f, vec4<bool>(false, true, true, false), vec3<bool>(false, false, true), true, vec4<bool>(false, false, false, true)), -1110f)), Struct_5(Struct_2(4294967295u, Struct_1(-247f, vec4<bool>(false, false, false, true), vec3<bool>(false, false, false), true, vec4<bool>(true, false, true, true)), Struct_1(411f, vec4<bool>(true, false, true, false), vec3<bool>(true, true, false), false, vec4<bool>(false, true, true, false)), Struct_1(-1304f, vec4<bool>(true, false, true, false), vec3<bool>(true, true, true), false, vec4<bool>(false, false, true, true)), 456f)), Struct_5(Struct_2(1u, Struct_1(234f, vec4<bool>(true, true, false, true), vec3<bool>(true, false, false), false, vec4<bool>(true, true, false, true)), Struct_1(-394f, vec4<bool>(true, false, false, false), vec3<bool>(false, false, true), true, vec4<bool>(false, true, true, true)), Struct_1(1000f, vec4<bool>(false, false, true, false), vec3<bool>(false, false, false), false, vec4<bool>(true, true, true, false)), -1566f)), Struct_5(Struct_2(67829u, Struct_1(1963f, vec4<bool>(false, false, false, true), vec3<bool>(false, false, true), true, vec4<bool>(false, false, true, true)), Struct_1(802f, vec4<bool>(true, true, true, false), vec3<bool>(false, true, false), false, vec4<bool>(true, false, true, true)), Struct_1(244f, vec4<bool>(true, false, true, false), vec3<bool>(false, true, false), true, vec4<bool>(false, false, false, true)), 867f)), Struct_5(Struct_2(4294967295u, Struct_1(583f, vec4<bool>(true, false, true, false), vec3<bool>(true, true, false), false, vec4<bool>(false, true, false, false)), Struct_1(-1038f, vec4<bool>(true, false, true, false), vec3<bool>(false, true, false), true, vec4<bool>(false, true, false, true)), Struct_1(-724f, vec4<bool>(false, true, true, false), vec3<bool>(false, false, false), true, vec4<bool>(false, false, false, false)), -1666f)), Struct_5(Struct_2(4294967295u, Struct_1(-187f, vec4<bool>(true, true, true, true), vec3<bool>(true, true, false), true, vec4<bool>(true, false, false, true)), Struct_1(748f, vec4<bool>(false, false, false, true), vec3<bool>(false, false, true), true, vec4<bool>(true, false, true, true)), Struct_1(-2631f, vec4<bool>(true, false, false, false), vec3<bool>(false, false, true), true, vec4<bool>(false, true, true, true)), -1014f)), Struct_5(Struct_2(1u, Struct_1(1894f, vec4<bool>(true, false, true, false), vec3<bool>(true, true, true), false, vec4<bool>(true, false, true, false)), Struct_1(-809f, vec4<bool>(true, false, true, false), vec3<bool>(true, true, false), false, vec4<bool>(false, false, false, false)), Struct_1(1404f, vec4<bool>(false, true, true, false), vec3<bool>(false, false, false), true, vec4<bool>(true, false, true, true)), -345f)), Struct_5(Struct_2(0u, Struct_1(289f, vec4<bool>(false, true, false, false), vec3<bool>(true, false, true), false, vec4<bool>(false, false, true, false)), Struct_1(-228f, vec4<bool>(true, false, true, true), vec3<bool>(false, false, false), true, vec4<bool>(false, true, true, false)), Struct_1(1564f, vec4<bool>(false, false, false, false), vec3<bool>(false, false, false), false, vec4<bool>(false, false, true, false)), 187f)), Struct_5(Struct_2(4294967295u, Struct_1(-550f, vec4<bool>(false, false, false, false), vec3<bool>(true, true, false), false, vec4<bool>(true, false, true, true)), Struct_1(-592f, vec4<bool>(true, false, false, false), vec3<bool>(false, true, false), true, vec4<bool>(true, false, true, true)), Struct_1(1209f, vec4<bool>(true, false, true, true), vec3<bool>(true, false, true), true, vec4<bool>(false, true, true, false)), -830f)), Struct_5(Struct_2(33532u, Struct_1(1238f, vec4<bool>(false, false, true, false), vec3<bool>(false, false, true), true, vec4<bool>(false, true, true, false)), Struct_1(1440f, vec4<bool>(true, true, true, true), vec3<bool>(false, true, false), true, vec4<bool>(false, true, false, true)), Struct_1(357f, vec4<bool>(true, false, false, true), vec3<bool>(true, false, true), false, vec4<bool>(true, false, false, false)), -1000f)), Struct_5(Struct_2(8292u, Struct_1(670f, vec4<bool>(true, false, true, true), vec3<bool>(false, false, true), false, vec4<bool>(false, false, false, true)), Struct_1(-563f, vec4<bool>(true, false, false, true), vec3<bool>(false, true, true), true, vec4<bool>(true, true, true, true)), Struct_1(457f, vec4<bool>(true, false, false, false), vec3<bool>(true, false, true), true, vec4<bool>(false, false, false, false)), -1135f)), Struct_5(Struct_2(4294967295u, Struct_1(1000f, vec4<bool>(false, false, true, false), vec3<bool>(true, true, true), false, vec4<bool>(true, true, false, false)), Struct_1(197f, vec4<bool>(true, false, true, true), vec3<bool>(false, true, true), false, vec4<bool>(false, true, false, true)), Struct_1(901f, vec4<bool>(false, false, false, true), vec3<bool>(false, true, false), true, vec4<bool>(true, false, true, true)), -1931f)), Struct_5(Struct_2(0u, Struct_1(-1402f, vec4<bool>(true, true, true, false), vec3<bool>(false, false, false), false, vec4<bool>(true, false, false, false)), Struct_1(-815f, vec4<bool>(false, true, false, true), vec3<bool>(false, true, true), false, vec4<bool>(false, false, true, true)), Struct_1(-916f, vec4<bool>(false, false, true, false), vec3<bool>(true, false, false), true, vec4<bool>(false, false, true, false)), -865f)), Struct_5(Struct_2(59730u, Struct_1(1096f, vec4<bool>(false, true, true, false), vec3<bool>(true, true, false), true, vec4<bool>(true, false, false, true)), Struct_1(734f, vec4<bool>(true, true, false, false), vec3<bool>(true, true, true), false, vec4<bool>(false, true, false, true)), Struct_1(-2520f, vec4<bool>(true, true, true, false), vec3<bool>(true, false, false), false, vec4<bool>(false, true, true, true)), -423f)), Struct_5(Struct_2(49547u, Struct_1(-246f, vec4<bool>(true, false, false, false), vec3<bool>(true, false, false), true, vec4<bool>(false, true, true, false)), Struct_1(-537f, vec4<bool>(true, false, false, true), vec3<bool>(false, false, true), true, vec4<bool>(false, true, false, false)), Struct_1(2262f, vec4<bool>(true, false, true, false), vec3<bool>(true, false, true), false, vec4<bool>(true, true, true, false)), -1753f)), Struct_5(Struct_2(4294967295u, Struct_1(-830f, vec4<bool>(true, true, true, false), vec3<bool>(true, true, false), false, vec4<bool>(false, true, false, false)), Struct_1(-590f, vec4<bool>(false, true, true, false), vec3<bool>(true, true, true), true, vec4<bool>(false, true, true, false)), Struct_1(-1844f, vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), false, vec4<bool>(false, true, false, true)), -476f)), Struct_5(Struct_2(0u, Struct_1(887f, vec4<bool>(true, true, false, true), vec3<bool>(true, true, true), true, vec4<bool>(false, false, false, false)), Struct_1(217f, vec4<bool>(true, false, false, true), vec3<bool>(false, true, true), true, vec4<bool>(true, false, false, true)), Struct_1(-584f, vec4<bool>(true, false, true, true), vec3<bool>(false, true, true), false, vec4<bool>(false, false, false, true)), -858f)), Struct_5(Struct_2(43803u, Struct_1(258f, vec4<bool>(false, true, true, false), vec3<bool>(true, true, true), true, vec4<bool>(false, false, false, false)), Struct_1(-576f, vec4<bool>(false, false, true, false), vec3<bool>(true, false, false), true, vec4<bool>(false, true, false, true)), Struct_1(-842f, vec4<bool>(true, true, false, true), vec3<bool>(false, true, true), false, vec4<bool>(false, true, true, true)), 182f)), Struct_5(Struct_2(4294967295u, Struct_1(1000f, vec4<bool>(true, false, false, false), vec3<bool>(false, true, true), false, vec4<bool>(false, false, true, false)), Struct_1(1461f, vec4<bool>(true, true, false, true), vec3<bool>(true, true, true), true, vec4<bool>(true, true, true, false)), Struct_1(796f, vec4<bool>(true, false, false, false), vec3<bool>(true, true, true), true, vec4<bool>(false, false, true, false)), -561f)), Struct_5(Struct_2(18003u, Struct_1(-561f, vec4<bool>(true, false, false, false), vec3<bool>(false, true, true), true, vec4<bool>(true, true, true, false)), Struct_1(1717f, vec4<bool>(true, false, true, true), vec3<bool>(true, true, true), false, vec4<bool>(false, false, true, true)), Struct_1(-642f, vec4<bool>(true, false, true, false), vec3<bool>(false, true, true), false, vec4<bool>(false, true, false, false)), -1309f)), Struct_5(Struct_2(4294967295u, Struct_1(-1255f, vec4<bool>(true, true, false, false), vec3<bool>(false, false, false), false, vec4<bool>(false, true, true, false)), Struct_1(1193f, vec4<bool>(true, true, false, true), vec3<bool>(true, false, true), false, vec4<bool>(true, false, false, false)), Struct_1(-723f, vec4<bool>(false, false, true, true), vec3<bool>(true, true, true), true, vec4<bool>(false, true, true, true)), -1000f)), Struct_5(Struct_2(4294967295u, Struct_1(-1509f, vec4<bool>(true, false, true, false), vec3<bool>(false, true, true), false, vec4<bool>(false, true, false, true)), Struct_1(488f, vec4<bool>(false, true, false, false), vec3<bool>(true, true, true), false, vec4<bool>(true, false, true, false)), Struct_1(-140f, vec4<bool>(false, false, true, true), vec3<bool>(false, false, true), false, vec4<bool>(false, true, false, true)), 1783f)), Struct_5(Struct_2(23943u, Struct_1(363f, vec4<bool>(false, true, true, true), vec3<bool>(false, true, true), false, vec4<bool>(true, true, true, true)), Struct_1(-1124f, vec4<bool>(true, true, false, false), vec3<bool>(false, false, false), true, vec4<bool>(true, false, false, true)), Struct_1(-1154f, vec4<bool>(false, true, false, true), vec3<bool>(true, false, true), true, vec4<bool>(true, false, true, false)), -865f)), Struct_5(Struct_2(1u, Struct_1(-1061f, vec4<bool>(false, true, true, false), vec3<bool>(true, false, false), true, vec4<bool>(true, false, true, false)), Struct_1(727f, vec4<bool>(true, true, false, false), vec3<bool>(true, true, false), false, vec4<bool>(false, true, true, true)), Struct_1(-595f, vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), false, vec4<bool>(false, true, false, false)), 602f)));

var<private> global1: Struct_1 = Struct_1(564f, vec4<bool>(true, true, true, false), vec3<bool>(true, false, true), false, vec4<bool>(true, false, false, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> f32 {
    var var_0 = global1.d;
    let var_1 = _wgslsmith_clamp_vec4_u32(~(~abs(~vec4<u32>(11086u, 4294967295u, u_input.c, 136966u))), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(~arg_0.a, 19477u, ~0u, 4294967295u)), select(vec4<u32>(u_input.d, firstTrailingBit(arg_0.a), ~u_input.c, 4454u), ~(~vec4<u32>(0u, 46037u, u_input.d, u_input.c)), vec4<bool>(global1.c.x, all(global1.e), any(global1.e.wx), !global1.c.x))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_0.a, 1u, 0u, 5982u)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.d, arg_0.a, 77381u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_0.a, 1u, 49956u), vec4<u32>(u_input.c, 61925u, arg_0.a, 0u))))));
    var var_2 = select(true, arg_0.c.d, true) | true;
    global0 = array<Struct_5, 31>();
    let var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1260f - 1f)), arg_0.c.a, arg_0.b.a, global1.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -310f), _wgslsmith_f_op_f32(-arg_0.c.a), _wgslsmith_div_f32(497f, global1.a)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.a, 535f, global1.a, global1.a), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2337f, arg_0.b.a, global1.a, -382f))))))))), !all(arg_0.b.b)));
    return _wgslsmith_f_op_f32(-global1.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2336f * -548f)), global1.e.x | !all(!global1.b), global1.e.zy, ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.d), min(vec4<u32>(1u, u_input.c, u_input.c, 17259u), vec4<u32>(1u, u_input.c, 1u, 21447u))), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 27205u, u_input.c, u_input.c), vec4<u32>(19457u, u_input.c, 7171u, 0u))), global1.c.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -955f))))), global1.b, !global1.b.ywx, !(!(_wgslsmith_f_op_f32(step(-151f, -664f)) > _wgslsmith_f_op_f32(arg_1 + global1.a))), !select(global1.b, vec4<bool>(false, true, all(vec3<bool>(global1.b.x, true, global1.e.x)), true), global1.e));
    global0 = array<Struct_5, 31>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(arg_2.x, global1.a)), _wgslsmith_f_op_f32(abs(arg_2.x)));
    let var_3 = any(select(global1.b.wz, select(global1.c.yy, select(!vec2<bool>(var_0.b, false), vec2<bool>(false, false), select(vec2<bool>(var_0.c.x, global1.e.x), vec2<bool>(var_0.e, global1.b.x), var_1.d)), var_0.c), !(false | global1.b.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1028f, arg_1)))), arg_1)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = ~(~3722u);
    let var_1 = _wgslsmith_f_op_f32(func_4(countOneBits(select(_wgslsmith_mult_vec4_i32(arg_2, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, 1i, u_input.a.x, -2147483647i), vec4<i32>(arg_2.x, 1i, arg_2.x, 38328i))), arg_2, !arg_0.d.e)), _wgslsmith_f_op_f32(func_3(Struct_2(26421u, arg_0.c, arg_0.b, arg_0.d, arg_0.b.a), !arg_0.d.d)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(808f, -319f, arg_1.x)), _wgslsmith_f_op_vec3_f32(-arg_1.xxz))), vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(166f, arg_0.b.a))), _wgslsmith_f_op_f32(f32(-1f) * -967f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-330f, global1.a), _wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(-arg_1.x), arg_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e, 547f, -208f, arg_1.x) - arg_1)))));
    var_2 = arg_1;
    var var_3 = Struct_2(~select(reverseBits(1u), ~arg_0.a, arg_0.d.b.x) & 4294967295u, arg_0.d, arg_0.c, arg_0.c, _wgslsmith_f_op_f32(func_4(select(~abs(vec4<i32>(arg_2.x, 39749i, arg_2.x, -1i)), arg_2, vec4<bool>(false, global1.b.x, arg_0.c.e.x, !global1.c.x)), _wgslsmith_f_op_f32(func_3(arg_0, global1.b.x)), var_2.wwx)));
    return arg_0.d;
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> bool {
    var var_0 = Struct_3(global1.a, true, func_2(Struct_2(~(~u_input.c), arg_3, Struct_1(_wgslsmith_f_op_f32(round(arg_3.a)), global1.e, vec3<bool>(true, global1.c.x, arg_2), arg_0.c.x, select(arg_3.e, vec4<bool>(global1.d, false, true, arg_0.e), global1.b)), arg_3, arg_3.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a, 202f, arg_0.a, 278f) + vec4<f32>(-125f, -636f, arg_3.a, 481f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(300f, 625f, 1599f, -1000f) + vec4<f32>(arg_0.a, global1.a, -1527f, arg_0.a)), vec4<bool>(global1.d, arg_3.d, false, arg_0.b))))), vec4<i32>(-2147483647i << (arg_0.d.x % 32u), ~3439i, arg_1, ~14782i) ^ _wgslsmith_clamp_vec4_i32(~u_input.e, vec4<i32>(arg_1, -8633i, u_input.b.x, 1i), -vec4<i32>(4726i, 33561i, 0i, -8329i))).c.zz, ~arg_0.d ^ ~arg_0.d, !func_2(Struct_2(_wgslsmith_clamp_u32(u_input.c, 14516u, 0u), Struct_1(arg_3.a, vec4<bool>(true, true, arg_2, global1.b.x), vec3<bool>(false, false, arg_2), false, arg_3.e), arg_3, func_2(Struct_2(0u, arg_3, arg_3, Struct_1(1405f, global1.e, vec3<bool>(arg_0.e, arg_2, true), arg_3.e.x, global1.b), -316f), vec4<f32>(-280f, -1000f, 2072f, arg_0.a), vec4<i32>(-1i, 1i, 0i, arg_1)), _wgslsmith_f_op_f32(select(global1.a, -309f, global1.e.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.a, 442f, arg_3.a, global1.a), vec4<f32>(global1.a, -1468f, global1.a, arg_0.a)))), u_input.e).b.x);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.a, -799f)) * 1547f)))) >= -579f;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(227f + _wgslsmith_f_op_f32(-var_0.a)), !all(select(!global1.c, vec3<bool>(arg_2, arg_0.e, false), all(arg_3.b))), !(!arg_0.c), vec4<u32>(abs(arg_0.d.x), _wgslsmith_div_u32(u_input.c, ~(~u_input.c)), max(10108u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.d.zx, vec2<u32>(arg_0.d.x, var_0.d.x)), vec2<u32>(arg_0.d.x, 47518u) ^ vec2<u32>(14178u, 5873u))), _wgslsmith_div_u32(max(u_input.d, 4294967295u) >> ((arg_0.d.x << (var_0.d.x % 32u)) % 32u), 4294967295u)), true);
    global0 = array<Struct_5, 31>();
    var var_3 = u_input.a.x;
    return true;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> Struct_4 {
    global0 = array<Struct_5, 31>();
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + 134f)), !vec4<bool>(any(global1.b), func_5(Struct_3(global1.a, true, vec2<bool>(true, false), vec4<u32>(u_input.c, 0u, 6758u, u_input.d), false), 2147483647i, true, func_2(Struct_2(u_input.d, Struct_1(global1.a, vec4<bool>(true, arg_0, true, true), vec3<bool>(true, global1.d, global1.e.x), arg_0, vec4<bool>(global1.d, true, false, false)), Struct_1(global1.a, vec4<bool>(global1.d, false, global1.c.x, global1.b.x), global1.e.zzw, false, vec4<bool>(arg_0, arg_0, global1.b.x, global1.c.x)), Struct_1(global1.a, global1.b, global1.b.ywx, arg_0, vec4<bool>(true, global1.b.x, true, global1.e.x)), -340f), vec4<f32>(1009f, -1000f, global1.a, global1.a), vec4<i32>(arg_1.x, u_input.b.x, 19007i, -7563i))), !global1.b.x, (u_input.c | 51348u) < 35505u), global1.c, any(vec3<bool>(false, arg_0, global1.e.x)), !global1.e);
    var var_0 = all(vec4<bool>(true, any(func_2(Struct_2(u_input.c, Struct_1(global1.a, global1.b, global1.c, global1.b.x, vec4<bool>(false, arg_0, true, arg_0)), Struct_1(global1.a, global1.e, vec3<bool>(global1.d, arg_0, false), false, vec4<bool>(false, arg_0, true, false)), Struct_1(global1.a, vec4<bool>(arg_0, true, global1.d, true), vec3<bool>(global1.d, global1.c.x, global1.d), false, vec4<bool>(true, global1.d, true, arg_0)), global1.a), vec4<f32>(global1.a, global1.a, 1000f, -298f), vec4<i32>(33731i, u_input.e.x, -2147483647i, 0i)).b.zz) == true, ~(22514u >> (u_input.c % 32u)) < _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.c, 51063u)), vec2<u32>(4294967295u, u_input.c) | vec2<u32>(u_input.c, u_input.d)), global1.e.x));
    let var_1 = abs(~u_input.a.x) | reverseBits(-16167i);
    let var_2 = global1.a;
    return Struct_4(func_2(Struct_2(~u_input.d << (u_input.c % 32u), Struct_1(_wgslsmith_div_f32(-823f, global1.a), select(vec4<bool>(global1.c.x, global1.c.x, global1.e.x, false), vec4<bool>(true, global1.d, false, true), global1.e), global1.b.wxw, true, !vec4<bool>(arg_0, arg_0, arg_0, arg_0)), func_2(Struct_2(u_input.d, Struct_1(-668f, vec4<bool>(false, global1.d, arg_0, false), global1.c, arg_0, vec4<bool>(global1.c.x, arg_0, true, true)), Struct_1(2432f, global1.e, vec3<bool>(arg_0, arg_0, true), global1.d, global1.b), Struct_1(1516f, global1.e, global1.e.yxz, global1.d, global1.b), -161f), vec4<f32>(-1004f, 1175f, -1781f, -577f), ~vec4<i32>(0i, var_1, -2147483647i, u_input.a.x)), Struct_1(global1.a, !vec4<bool>(false, global1.c.x, arg_0, true), vec3<bool>(global1.e.x, arg_0, true), true, func_2(Struct_2(u_input.d, Struct_1(global1.a, global1.e, global1.e.wwz, global1.b.x, global1.e), Struct_1(189f, global1.e, global1.e.xxy, true, global1.e), Struct_1(global1.a, vec4<bool>(global1.d, true, global1.d, global1.c.x), global1.b.yzx, true, vec4<bool>(arg_0, arg_0, true, true)), 141f), vec4<f32>(global1.a, -1000f, global1.a, -928f), u_input.e).b), _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-862f, 922f, global1.a, global1.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, -436f, -846f, global1.a), vec4<f32>(-1000f, global1.a, global1.a, global1.a))), false)), -arg_1));
}

fn func_6(arg_0: Struct_4, arg_1: vec4<bool>) -> Struct_4 {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(~max(1u, u_input.c), _wgslsmith_mod_u32(u_input.c, u_input.d)), 4294967295u, _wgslsmith_sub_u32(108473u, ~(1u & firstTrailingBit(u_input.d))));
    let var_1 = -vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.e.x, u_input.e.x, u_input.b.x), u_input.e), u_input.e.x, ~abs(-965i), ~max(_wgslsmith_clamp_i32(u_input.b.x, 3477i, u_input.e.x), -u_input.b.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a, global1.a, 384f))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, 1049f, 158f)))))) * vec3<f32>(_wgslsmith_f_op_f32(func_4(select(vec4<i32>(-162i, -30799i, u_input.b.x, var_1.x) << (vec4<u32>(u_input.d, u_input.c, var_0.x, var_0.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b.x, 13687i, u_input.e.x), vec4<i32>(0i, u_input.e.x, -25877i, 56608i)), global1.b), 551f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a.a, global1.a, 1427f), vec3<f32>(-173f, 566f, global1.a))))))), global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(0u, arg_0.a, arg_0.a, arg_0.a, -289f), arg_0.a.d)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-227f, 206f, var_2.x, 687f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, -200f, -1827f, -595f), vec4<f32>(global1.a, -1847f, 817f, arg_0.a.a)))))));
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1293f, global1.a, 809f, -621f) - var_3), vec4<f32>(var_2.x, -673f, var_2.x, var_2.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, arg_0.a.a, 162f, global1.a), vec4<f32>(arg_0.a.a, 1157f, global1.a, var_3.x), arg_1.x))))) - _wgslsmith_f_op_vec4_f32(var_3 * _wgslsmith_f_op_vec4_f32(var_3 + _wgslsmith_f_op_vec4_f32(vec4<f32>(-880f, arg_0.a.a, global1.a, var_2.x) + vec4<f32>(arg_0.a.a, -831f, arg_0.a.a, var_3.x))))));
    return func_1(!all(!(!global1.b.wx)), ~vec4<i32>(firstLeadingBit(abs(var_1.x)), reverseBits(abs(u_input.b.x)), 2147483647i, 1i ^ var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 31>();
    let var_0 = u_input.c;
    let var_1 = global1.e.zyy;
    var var_2 = _wgslsmith_f_op_f32(ceil(global1.a));
    var var_3 = func_6(func_1(!global1.e.x, vec4<i32>(u_input.b.x & -1i, 64692i, max(-31295i, -13946i), u_input.e.x)), !(!vec4<bool>(true, true, global1.c.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.a);
}

