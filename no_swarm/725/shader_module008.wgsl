struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
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

var<private> global0: array<bool, 15>;

var<private> global1: array<bool, 17>;

var<private> global2: u32 = 1u;

var<private> global3: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec4<f32>(-1386f, 542f, 469f, 413f), Struct_1(vec2<u32>(42013u, 1u), vec4<i32>(-1i, 4264i, 0i, 0i), false, i32(-2147483648), vec4<bool>(false, false, true, true)), Struct_1(vec2<u32>(4294967295u, 1u), vec4<i32>(-15312i, 1i, 0i, 2147483647i), false, 0i, vec4<bool>(true, false, false, false)), vec3<bool>(false, true, false)), Struct_3(vec4<f32>(194f, -393f, 622f, 422f), Struct_1(vec2<u32>(57940u, 1u), vec4<i32>(-18945i, 1i, 17143i, 0i), false, -8037i, vec4<bool>(false, true, false, false)), Struct_1(vec2<u32>(4294967295u, 6278u), vec4<i32>(36996i, -1i, -1i, 2147483647i), true, 2147483647i, vec4<bool>(false, false, true, false)), vec3<bool>(false, false, false)), Struct_3(vec4<f32>(1000f, -1401f, 502f, -1955f), Struct_1(vec2<u32>(1u, 105903u), vec4<i32>(66922i, 36515i, 38845i, i32(-2147483648)), true, -1i, vec4<bool>(true, false, true, false)), Struct_1(vec2<u32>(0u, 1u), vec4<i32>(-34433i, -7395i, -5403i, 0i), true, 14949i, vec4<bool>(true, true, true, true)), vec3<bool>(false, true, true)), Struct_3(vec4<f32>(-1000f, 1000f, -460f, 1655f), Struct_1(vec2<u32>(0u, 47876u), vec4<i32>(-67545i, 1i, i32(-2147483648), i32(-2147483648)), true, 26630i, vec4<bool>(false, true, true, false)), Struct_1(vec2<u32>(1u, 92919u), vec4<i32>(-1i, 2147483647i, 2147483647i, 34663i), false, i32(-2147483648), vec4<bool>(false, true, false, false)), vec3<bool>(true, false, true)), Struct_3(vec4<f32>(859f, -1600f, 742f, -1051f), Struct_1(vec2<u32>(29322u, 0u), vec4<i32>(-57259i, 1i, 0i, 0i), true, 2147483647i, vec4<bool>(true, false, false, false)), Struct_1(vec2<u32>(0u, 33072u), vec4<i32>(i32(-2147483648), -22959i, 0i, 11631i), true, -1i, vec4<bool>(false, true, false, true)), vec3<bool>(true, true, false)), Struct_3(vec4<f32>(265f, 229f, -1731f, 2026f), Struct_1(vec2<u32>(4294967295u, 1u), vec4<i32>(0i, 52123i, 73449i, 1i), true, 0i, vec4<bool>(true, true, true, false)), Struct_1(vec2<u32>(1u, 32u), vec4<i32>(-57260i, 0i, i32(-2147483648), 1i), true, 2147483647i, vec4<bool>(true, true, false, true)), vec3<bool>(true, true, true)), Struct_3(vec4<f32>(402f, -602f, -1478f, 1072f), Struct_1(vec2<u32>(0u, 77523u), vec4<i32>(-5347i, 35136i, 1i, -3280i), false, -26014i, vec4<bool>(true, true, true, true)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<i32>(6743i, 2894i, 2147483647i, 8847i), false, -1i, vec4<bool>(false, true, false, true)), vec3<bool>(false, true, false)), Struct_3(vec4<f32>(485f, 541f, -856f, -311f), Struct_1(vec2<u32>(0u, 20379u), vec4<i32>(5287i, 15400i, -23592i, 2147483647i), true, 1i, vec4<bool>(true, false, false, true)), Struct_1(vec2<u32>(4294967295u, 55589u), vec4<i32>(11804i, 2147483647i, -11644i, -16264i), false, 13903i, vec4<bool>(false, true, true, false)), vec3<bool>(false, false, true)), Struct_3(vec4<f32>(-674f, -433f, -229f, 573f), Struct_1(vec2<u32>(1u, 27772u), vec4<i32>(2147483647i, 13101i, 1i, -1i), false, -58903i, vec4<bool>(true, true, true, false)), Struct_1(vec2<u32>(1u, 40552u), vec4<i32>(41415i, 1i, 2147483647i, 1i), true, 2147483647i, vec4<bool>(false, false, false, false)), vec3<bool>(true, false, true)), Struct_3(vec4<f32>(-881f, 807f, 1989f, -686f), Struct_1(vec2<u32>(45994u, 4294967295u), vec4<i32>(2147483647i, 4864i, i32(-2147483648), 2147483647i), false, -17670i, vec4<bool>(false, true, false, false)), Struct_1(vec2<u32>(5005u, 26243u), vec4<i32>(10063i, 41669i, i32(-2147483648), i32(-2147483648)), false, 0i, vec4<bool>(false, false, false, true)), vec3<bool>(false, true, false)), Struct_3(vec4<f32>(1937f, -1199f, 926f, 536f), Struct_1(vec2<u32>(30075u, 0u), vec4<i32>(i32(-2147483648), 40389i, 2147483647i, 2622i), false, i32(-2147483648), vec4<bool>(false, false, false, false)), Struct_1(vec2<u32>(1u, 75948u), vec4<i32>(4192i, -8853i, -394i, 0i), true, 0i, vec4<bool>(false, false, false, true)), vec3<bool>(false, false, false)), Struct_3(vec4<f32>(-459f, 243f, -287f, -974f), Struct_1(vec2<u32>(44393u, 0u), vec4<i32>(33672i, -1i, 38842i, i32(-2147483648)), false, i32(-2147483648), vec4<bool>(true, true, false, true)), Struct_1(vec2<u32>(50782u, 26155u), vec4<i32>(-1i, -1942i, -13561i, 47799i), true, 1i, vec4<bool>(true, true, false, true)), vec3<bool>(true, true, true)), Struct_3(vec4<f32>(-284f, 976f, -268f, 777f), Struct_1(vec2<u32>(1u, 4302u), vec4<i32>(35469i, 0i, -1i, 16686i), true, -59242i, vec4<bool>(false, true, false, false)), Struct_1(vec2<u32>(37751u, 58849u), vec4<i32>(35757i, -5897i, 0i, -33027i), true, 1i, vec4<bool>(true, false, false, true)), vec3<bool>(false, true, true)), Struct_3(vec4<f32>(1033f, 1000f, 767f, 1656f), Struct_1(vec2<u32>(1u, 0u), vec4<i32>(-14653i, 2147483647i, 1i, -1i), true, 1i, vec4<bool>(true, false, true, true)), Struct_1(vec2<u32>(0u, 25662u), vec4<i32>(33144i, 16102i, 0i, 1i), false, 30110i, vec4<bool>(false, true, true, true)), vec3<bool>(false, false, false)), Struct_3(vec4<f32>(885f, 202f, 1000f, 1352f), Struct_1(vec2<u32>(110717u, 16405u), vec4<i32>(-12814i, 26059i, 15798i, -13604i), true, 43390i, vec4<bool>(true, false, false, true)), Struct_1(vec2<u32>(45997u, 15127u), vec4<i32>(2147483647i, i32(-2147483648), 0i, 5786i), true, i32(-2147483648), vec4<bool>(false, true, true, true)), vec3<bool>(true, false, false)), Struct_3(vec4<f32>(-1651f, 410f, 502f, -415f), Struct_1(vec2<u32>(1u, 0u), vec4<i32>(1i, 1i, 0i, 51483i), false, -28225i, vec4<bool>(false, false, false, false)), Struct_1(vec2<u32>(1u, 83208u), vec4<i32>(8667i, i32(-2147483648), i32(-2147483648), 2147483647i), true, i32(-2147483648), vec4<bool>(false, false, false, true)), vec3<bool>(false, true, true)), Struct_3(vec4<f32>(966f, -487f, -227f, -803f), Struct_1(vec2<u32>(143672u, 1u), vec4<i32>(10785i, -1i, -190i, 1i), false, 2147483647i, vec4<bool>(false, true, false, true)), Struct_1(vec2<u32>(1u, 9877u), vec4<i32>(7061i, 4141i, -34082i, 0i), true, 39931i, vec4<bool>(true, true, false, true)), vec3<bool>(true, true, false)), Struct_3(vec4<f32>(359f, -2696f, -465f, -1681f), Struct_1(vec2<u32>(4294967295u, 0u), vec4<i32>(0i, i32(-2147483648), -1i, 14044i), true, 1i, vec4<bool>(false, true, true, false)), Struct_1(vec2<u32>(1u, 9628u), vec4<i32>(-45786i, -1i, 39300i, -2108i), false, 43511i, vec4<bool>(false, false, true, true)), vec3<bool>(false, false, false)), Struct_3(vec4<f32>(301f, -209f, 1010f, -519f), Struct_1(vec2<u32>(4294967295u, 74880u), vec4<i32>(i32(-2147483648), -40327i, -28931i, -4358i), false, 1i, vec4<bool>(false, false, false, false)), Struct_1(vec2<u32>(44877u, 30214u), vec4<i32>(-1058i, -23084i, i32(-2147483648), -1i), true, 1i, vec4<bool>(true, true, false, true)), vec3<bool>(false, false, false)), Struct_3(vec4<f32>(-587f, 433f, 1470f, -325f), Struct_1(vec2<u32>(19633u, 17261u), vec4<i32>(-1i, -1i, i32(-2147483648), 2147483647i), false, -1i, vec4<bool>(false, false, false, false)), Struct_1(vec2<u32>(0u, 4294967295u), vec4<i32>(-1i, -1i, -4765i, 1i), false, 1i, vec4<bool>(true, true, true, false)), vec3<bool>(false, true, true)), Struct_3(vec4<f32>(757f, 466f, 2087f, -1066f), Struct_1(vec2<u32>(10252u, 1u), vec4<i32>(i32(-2147483648), 18883i, i32(-2147483648), 17205i), false, 2147483647i, vec4<bool>(true, false, true, true)), Struct_1(vec2<u32>(0u, 26463u), vec4<i32>(-21951i, 0i, -7486i, 10623i), true, -12479i, vec4<bool>(false, true, true, false)), vec3<bool>(true, false, false)), Struct_3(vec4<f32>(-1476f, 146f, 581f, -1058f), Struct_1(vec2<u32>(0u, 16365u), vec4<i32>(10316i, -12822i, 0i, -24318i), false, 22914i, vec4<bool>(false, true, false, false)), Struct_1(vec2<u32>(1u, 1u), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 2147483647i), true, 2147483647i, vec4<bool>(false, false, true, false)), vec3<bool>(true, false, true)), Struct_3(vec4<f32>(-815f, -617f, -904f, -694f), Struct_1(vec2<u32>(0u, 65987u), vec4<i32>(-13039i, -54759i, -30377i, 2147483647i), false, 18274i, vec4<bool>(true, false, true, true)), Struct_1(vec2<u32>(79914u, 4294967295u), vec4<i32>(0i, 20326i, -27127i, -14543i), false, -45072i, vec4<bool>(true, true, true, true)), vec3<bool>(false, true, true)), Struct_3(vec4<f32>(346f, 414f, -1000f, -195f), Struct_1(vec2<u32>(5046u, 30527u), vec4<i32>(4910i, 2147483647i, -6191i, i32(-2147483648)), true, 0i, vec4<bool>(true, false, true, false)), Struct_1(vec2<u32>(38006u, 4294967295u), vec4<i32>(-6068i, -26574i, i32(-2147483648), 2147483647i), true, -3719i, vec4<bool>(false, false, true, true)), vec3<bool>(true, false, false)), Struct_3(vec4<f32>(901f, 1265f, 1931f, -978f), Struct_1(vec2<u32>(1u, 1u), vec4<i32>(-13526i, -1i, -33758i, -9827i), true, 27927i, vec4<bool>(false, false, false, false)), Struct_1(vec2<u32>(13433u, 15959u), vec4<i32>(-13854i, -10579i, 2147483647i, 2147483647i), false, 0i, vec4<bool>(true, false, true, true)), vec3<bool>(false, true, false)));

var<private> global4: array<f32, 18>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: u32) -> vec4<f32> {
    global1 = array<bool, 17>();
    global1 = array<bool, 17>();
    global2 = arg_3;
    global4 = array<f32, 18>();
    let var_0 = vec4<i32>(select(_wgslsmith_clamp_i32(u_input.b.x, arg_0.d, -14197i), _wgslsmith_sub_i32(select(_wgslsmith_div_i32(0i, u_input.b.x), ~12263i, true), arg_0.d), all(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_1.a.a.x, 17u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 17u)]), arg_0.e.x))), ~_wgslsmith_div_i32(min(-69661i, 37840i), _wgslsmith_dot_vec3_i32(arg_1.c.b.yzz, firstLeadingBit(vec3<i32>(u_input.b.x, 1i, arg_0.b.x)))), arg_0.b.x, arg_0.b.x);
    return vec4<f32>(-223f, 1094f, 651f, -824f);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>) -> bool {
    global0 = array<bool, 15>();
    let var_0 = Struct_2(Struct_1(arg_0.c.a, -max(vec4<i32>(u_input.b.x, 579i, -2147483647i, 7139i) << (vec4<u32>(4294967295u, u_input.a, arg_0.b.a.x, arg_0.c.a.x) % vec4<u32>(32u)), vec4<i32>(arg_0.b.b.x, -1i, -1i, 1i) | arg_0.c.b), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 31276u, 45502u, u_input.a), vec4<u32>(arg_0.c.a.x, arg_0.c.a.x, 62774u, arg_0.b.a.x)), u_input.a) < (_wgslsmith_div_u32(u_input.a, 71837u) >> (firstLeadingBit(arg_0.b.a.x) % 32u)), _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(arg_0.b.b.wzz, arg_0.c.b.zyz)), firstTrailingBit(countOneBits(arg_0.b.b.zww))), !(!arg_0.b.e)), abs(-2147483647i) << (0u % 32u), arg_0.c, arg_0.c.a.x & 4294967295u);
    global3 = array<Struct_3, 25>();
    let var_1 = abs(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(76321u, 1u, 4294967295u), vec3<u32>(var_0.c.a.x, u_input.a, u_input.a))) ^ (~firstTrailingBit(vec3<u32>(22049u, 25303u, u_input.a)) & ~(~vec3<u32>(5772u, var_0.d, 18032u))));
    let var_2 = arg_0;
    return !var_0.a.c;
}

fn func_2() -> u32 {
    let var_0 = func_4(Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-115f, global4[_wgslsmith_index_u32(89623u, 18u)], global4[_wgslsmith_index_u32(55139u, 18u)], global4[_wgslsmith_index_u32(30656u, 18u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(0u, 18u)], -847f, -151f, global4[_wgslsmith_index_u32(66430u, 18u)]) * vec4<f32>(372f, global4[_wgslsmith_index_u32(58736u, 18u)], -629f, -547f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec2<u32>(u_input.a, 56540u), vec4<i32>(u_input.b.x, 0i, 56849i, -2147483647i), true, -18725i, vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 17u)], true, global0[_wgslsmith_index_u32(1u, 15u)], true)), Struct_2(Struct_1(vec2<u32>(35572u, 171087u), vec4<i32>(449i, 1i, -7886i, -26035i), false, u_input.b.x, vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(30178u, 15u)])), u_input.b.x, Struct_1(vec2<u32>(1u, 24716u), vec4<i32>(-59787i, u_input.b.x, u_input.b.x, 1i), true, 2147483647i, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], true, true)), 0u), vec2<u32>(u_input.a, u_input.a), 26631u)))), Struct_1(_wgslsmith_add_vec2_u32(min(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 0u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 1i, -5736i), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -37700i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.b.x, -2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, -1i, u_input.b.x, 32111i), vec4<i32>(1i, 0i, u_input.b.x, 2147483647i)), vec4<i32>(u_input.b.x, 8475i, -11867i, 0i)), false, -6989i, !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], false, true)), Struct_1(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a)), abs(vec4<i32>(u_input.b.x, -49772i, -20108i, u_input.b.x)) ^ vec4<i32>(-48920i, u_input.b.x, u_input.b.x, u_input.b.x), any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 17u)], true)), u_input.b.x, select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(7868u, 15u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 17u)], true, global0[_wgslsmith_index_u32(32785u, 15u)]), false), select(vec4<bool>(global0[_wgslsmith_index_u32(23562u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 17u)], false, true, true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 17u)], true, global1[_wgslsmith_index_u32(46279u, 17u)])), global1[_wgslsmith_index_u32(u_input.a >> (7391u % 32u), 17u)])), !(!select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 15u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(u_input.a, 17u)]), false))), ~((~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -32413i) ^ vec4<i32>(u_input.b.x, u_input.b.x, 7661i, -46691i)) | vec4<i32>(reverseBits(u_input.b.x), ~16337i, _wgslsmith_add_i32(u_input.b.x, -1i), _wgslsmith_div_i32(-151i, -1i))));
    global1 = array<bool, 17>();
    global2 = countOneBits(_wgslsmith_div_u32(~(~14897u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(12967u, countOneBits(1u), ~6433u), ~1u)));
    global4 = array<f32, 18>();
    global3 = array<Struct_3, 25>();
    return ~32417u;
}

fn func_1() -> Struct_3 {
    global2 = func_2();
    var var_0 = Struct_1(vec2<u32>(u_input.a, ~1u >> (reverseBits(_wgslsmith_div_u32(u_input.a, 1u)) % 32u)), (-vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) ^ (countOneBits(vec4<i32>(u_input.b.x, 2147483647i, -21123i, 0i)) ^ -vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, -19401i))) ^ min(~(-vec4<i32>(-11510i, u_input.b.x, u_input.b.x, u_input.b.x)), -(~vec4<i32>(-1i, -43589i, -2147483647i, u_input.b.x))), all(select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(1028u, 15u)], false, global0[_wgslsmith_index_u32(u_input.a, 15u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(62912u, 17u)], false, global0[_wgslsmith_index_u32(u_input.a, 15u)]), false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(2425u, 15u)], false), true), !(!vec4<bool>(global1[_wgslsmith_index_u32(28077u, 17u)], global1[_wgslsmith_index_u32(57421u, 17u)], false, global0[_wgslsmith_index_u32(0u, 15u)])), false)), u_input.b.x, !select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 17u)] & global0[_wgslsmith_index_u32(u_input.a, 15u)], select(global0[_wgslsmith_index_u32(u_input.a, 15u)], false, global1[_wgslsmith_index_u32(57578u, 17u)]), !global0[_wgslsmith_index_u32(33867u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]), select(!vec4<bool>(global1[_wgslsmith_index_u32(32846u, 17u)], true, false, true), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(73543u, 15u)], true), global1[_wgslsmith_index_u32(~u_input.a, 17u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(2887u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(62670u, 15u)])));
    global4 = array<f32, 18>();
    let var_1 = _wgslsmith_mod_u32(~var_0.a.x, 1u);
    global4 = array<f32, 18>();
    return global3[_wgslsmith_index_u32(~(~4294967295u), 25u)];
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: u32) -> Struct_1 {
    return Struct_1(vec2<u32>(70172u, select(1u, 1u, global0[_wgslsmith_index_u32(~0u, 15u)])), ~vec4<i32>(-1i, arg_0.b.b.x, ~_wgslsmith_clamp_i32(arg_0.b.b.x, u_input.b.x, 2147483647i), firstLeadingBit(-2147483647i)), false, 1i, vec4<bool>(all(arg_0.b.e.wzx) | (arg_2 >= 1u), all(!arg_0.d), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), arg_0.b.e)) != global0[_wgslsmith_index_u32(func_1().b.a.x, 15u)], true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~select(4294967295u, 7358u, global1[_wgslsmith_index_u32(u_input.a, 17u)]), 4294967295u ^ ~u_input.a), 18u)] - 1000f), 1u);
    let var_1 = global3[_wgslsmith_index_u32(~firstTrailingBit(max(var_0.a.x, var_0.a.x)), 25u)];
    let var_2 = -1399f;
    var var_3 = func_5(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(42947u, 18u)], -302f, var_1.a.x, -1550f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2, var_1.a.x, -1972f, global4[_wgslsmith_index_u32(1u, 18u)]))))), Struct_1(max(vec2<u32>(var_0.a.x, 65414u), vec2<u32>(var_1.c.a.x, u_input.a)) & var_0.a, -_wgslsmith_sub_vec4_i32(var_1.b.b, var_1.c.b), true, -(~var_0.d), select(!var_0.e, vec4<bool>(false, var_0.c, false, var_1.b.e.x), false)), func_5(Struct_3(_wgslsmith_f_op_vec4_f32(-var_1.a), func_5(Struct_3(vec4<f32>(var_1.a.x, -517f, 1035f, global4[_wgslsmith_index_u32(var_0.a.x, 18u)]), Struct_1(vec2<u32>(var_0.a.x, u_input.a), var_0.b, var_0.e.x, var_1.c.d, vec4<bool>(false, false, var_1.c.e.x, true)), Struct_1(vec2<u32>(66452u, var_0.a.x), vec4<i32>(0i, -2147483647i, 0i, -32262i), true, u_input.b.x, var_0.e), vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)], var_1.c.c, global1[_wgslsmith_index_u32(var_1.c.a.x, 17u)])), global4[_wgslsmith_index_u32(45212u, 18u)], var_1.c.a.x), var_1.c, !vec3<bool>(global1[_wgslsmith_index_u32(var_1.b.a.x, 17u)], true, global1[_wgslsmith_index_u32(12308u, 17u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(983f)) - global4[_wgslsmith_index_u32(u_input.a, 18u)]), _wgslsmith_div_u32(~20819u, ~105436u)), !vec3<bool>(!global0[_wgslsmith_index_u32(var_1.b.a.x, 15u)], global0[_wgslsmith_index_u32(var_0.a.x, 15u)], global0[_wgslsmith_index_u32(max(var_1.b.a.x, var_0.a.x), 15u)])), 845f, _wgslsmith_dot_vec4_u32(~min(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 18384u, u_input.a, 1u), vec4<u32>(28387u, 1u, 30253u, var_0.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, var_1.b.a.x, 53848u), vec4<u32>(var_1.c.a.x, 33372u, var_1.b.a.x, 47811u))), ((vec4<u32>(4294967295u, var_1.c.a.x, u_input.a, u_input.a) << (vec4<u32>(u_input.a, 34579u, u_input.a, var_0.a.x) % vec4<u32>(32u))) ^ (vec4<u32>(var_0.a.x, 36240u, 0u, var_0.a.x) >> (vec4<u32>(70146u, 0u, 4294967295u, 0u) % vec4<u32>(32u)))) >> (select(vec4<u32>(0u, 1u, 49828u, 0u), min(vec4<u32>(var_1.b.a.x, 4294967295u, 28620u, 4294967295u), vec4<u32>(var_1.c.a.x, var_0.a.x, 11335u, 43202u)), !vec4<bool>(var_1.d.x, true, true, true)) % vec4<u32>(32u))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -539f));
    var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1477f - var_2)))))));
    global2 = firstTrailingBit(var_0.a.x);
    global2 = func_1().c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(var_1.b.b, firstLeadingBit(vec4<i32>(var_3.b.x, var_0.d, u_input.b.x, u_input.b.x) & var_0.b)));
}

