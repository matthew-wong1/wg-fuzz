struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: Struct_3,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(Struct_3(vec4<i32>(25323i, 43545i, i32(-2147483648), 26856i), Struct_1(-1i, vec3<u32>(6003u, 39935u, 1u), true), vec2<i32>(-5685i, -1i)), vec4<u32>(6673u, 15487u, 3245u, 3615u), Struct_3(vec4<i32>(i32(-2147483648), -1i, -1i, -1i), Struct_1(i32(-2147483648), vec3<u32>(129763u, 22452u, 4800u), false), vec2<i32>(4653i, i32(-2147483648))), vec4<f32>(250f, 1004f, -211f, 1068f), Struct_3(vec4<i32>(29191i, 1i, 2147483647i, -1525i), Struct_1(24067i, vec3<u32>(1u, 4294967295u, 53836u), false), vec2<i32>(1i, i32(-2147483648)))), Struct_4(Struct_3(vec4<i32>(0i, -3099i, 2147483647i, 18460i), Struct_1(33080i, vec3<u32>(13151u, 4294967295u, 25744u), false), vec2<i32>(12844i, i32(-2147483648))), vec4<u32>(4294967295u, 0u, 12231u, 1u), Struct_3(vec4<i32>(-59144i, -30111i, 0i, 32962i), Struct_1(-44929i, vec3<u32>(0u, 6711u, 0u), false), vec2<i32>(1i, 43447i)), vec4<f32>(-2075f, 1101f, 282f, -882f), Struct_3(vec4<i32>(24970i, 3936i, -36834i, 39090i), Struct_1(i32(-2147483648), vec3<u32>(12909u, 4294967295u, 0u), false), vec2<i32>(-55312i, -1i))), Struct_4(Struct_3(vec4<i32>(-41752i, 0i, -15831i, 147i), Struct_1(-33968i, vec3<u32>(4294967295u, 1u, 1u), false), vec2<i32>(0i, 5469i)), vec4<u32>(35270u, 0u, 18127u, 4294967295u), Struct_3(vec4<i32>(0i, -40181i, -1i, -18897i), Struct_1(-1i, vec3<u32>(46329u, 1u, 0u), true), vec2<i32>(1i, i32(-2147483648))), vec4<f32>(-1200f, 774f, 356f, -1412f), Struct_3(vec4<i32>(-40016i, 2147483647i, -28507i, 22901i), Struct_1(-1i, vec3<u32>(0u, 55751u, 4294967295u), true), vec2<i32>(9349i, -33747i))), Struct_4(Struct_3(vec4<i32>(1i, 45871i, -50915i, -1i), Struct_1(-12530i, vec3<u32>(4294967295u, 104614u, 1u), false), vec2<i32>(i32(-2147483648), 19402i)), vec4<u32>(4294967295u, 0u, 0u, 1u), Struct_3(vec4<i32>(-1i, -32390i, -12058i, i32(-2147483648)), Struct_1(0i, vec3<u32>(1u, 4294967295u, 1u), true), vec2<i32>(i32(-2147483648), -14445i)), vec4<f32>(138f, 297f, -699f, -1000f), Struct_3(vec4<i32>(-1i, -1i, 0i, i32(-2147483648)), Struct_1(35854i, vec3<u32>(0u, 77937u, 36032u), false), vec2<i32>(2147483647i, -21811i))), Struct_4(Struct_3(vec4<i32>(2147483647i, 61324i, -25480i, -41655i), Struct_1(-69603i, vec3<u32>(1u, 90852u, 15710u), true), vec2<i32>(2147483647i, 0i)), vec4<u32>(4294967295u, 36115u, 0u, 13394u), Struct_3(vec4<i32>(-1i, 2147483647i, 20460i, -28870i), Struct_1(-1i, vec3<u32>(27581u, 1u, 0u), true), vec2<i32>(9815i, -20868i)), vec4<f32>(-1063f, -1399f, 615f, 1527f), Struct_3(vec4<i32>(6812i, -23861i, i32(-2147483648), -26280i), Struct_1(-36572i, vec3<u32>(4903u, 61869u, 0u), true), vec2<i32>(-37474i, -11762i))), Struct_4(Struct_3(vec4<i32>(1i, -9936i, 49703i, -43817i), Struct_1(1i, vec3<u32>(0u, 78750u, 0u), false), vec2<i32>(-2099i, 9814i)), vec4<u32>(101130u, 0u, 7183u, 1u), Struct_3(vec4<i32>(-30881i, 44179i, i32(-2147483648), -6547i), Struct_1(i32(-2147483648), vec3<u32>(16579u, 2472u, 6185u), true), vec2<i32>(1i, -18925i)), vec4<f32>(1239f, -602f, -973f, -1342f), Struct_3(vec4<i32>(0i, -26538i, 0i, -8365i), Struct_1(-36443i, vec3<u32>(26351u, 4294967295u, 59935u), true), vec2<i32>(0i, -47606i))), Struct_4(Struct_3(vec4<i32>(57955i, -69082i, i32(-2147483648), 55210i), Struct_1(74430i, vec3<u32>(1u, 39095u, 42695u), false), vec2<i32>(0i, 0i)), vec4<u32>(59304u, 1u, 96244u, 0u), Struct_3(vec4<i32>(16025i, 38522i, 0i, 1i), Struct_1(i32(-2147483648), vec3<u32>(37362u, 0u, 68845u), true), vec2<i32>(2147483647i, 2147483647i)), vec4<f32>(782f, 1101f, -1000f, -1600f), Struct_3(vec4<i32>(-50239i, 2147483647i, 1i, -7086i), Struct_1(i32(-2147483648), vec3<u32>(18991u, 11842u, 44104u), false), vec2<i32>(-14914i, -31460i))), Struct_4(Struct_3(vec4<i32>(0i, -14569i, 1i, 2147483647i), Struct_1(1i, vec3<u32>(30002u, 1u, 23327u), true), vec2<i32>(2147483647i, -37340i)), vec4<u32>(1u, 0u, 0u, 16393u), Struct_3(vec4<i32>(-1i, -20535i, 0i, 0i), Struct_1(1791i, vec3<u32>(52450u, 91441u, 89600u), false), vec2<i32>(1i, 2147483647i)), vec4<f32>(2388f, 804f, 672f, -1816f), Struct_3(vec4<i32>(1i, -1i, -36340i, 0i), Struct_1(-1i, vec3<u32>(13233u, 74438u, 24626u), false), vec2<i32>(-1i, 0i))), Struct_4(Struct_3(vec4<i32>(2147483647i, -12215i, 22203i, 0i), Struct_1(0i, vec3<u32>(279u, 4294967295u, 1u), true), vec2<i32>(-1i, 18677i)), vec4<u32>(0u, 0u, 69821u, 4294967295u), Struct_3(vec4<i32>(66540i, 31880i, -3067i, -1i), Struct_1(-2758i, vec3<u32>(62023u, 33896u, 44397u), true), vec2<i32>(-1i, 1i)), vec4<f32>(3401f, -133f, -847f, 1469f), Struct_3(vec4<i32>(57793i, -1i, 10853i, 4452i), Struct_1(-7133i, vec3<u32>(25677u, 0u, 1u), false), vec2<i32>(-44166i, 5745i))), Struct_4(Struct_3(vec4<i32>(2147483647i, -1i, i32(-2147483648), 2147483647i), Struct_1(0i, vec3<u32>(45033u, 4294967295u, 0u), false), vec2<i32>(2147483647i, -9663i)), vec4<u32>(4294967295u, 0u, 22896u, 1u), Struct_3(vec4<i32>(5870i, 2147483647i, -370i, 0i), Struct_1(-1i, vec3<u32>(1u, 80356u, 0u), false), vec2<i32>(-2003i, 64152i)), vec4<f32>(1565f, -361f, 940f, -734f), Struct_3(vec4<i32>(35203i, 37536i, i32(-2147483648), -3278i), Struct_1(i32(-2147483648), vec3<u32>(47991u, 0u, 30520u), true), vec2<i32>(-7537i, -43994i))), Struct_4(Struct_3(vec4<i32>(2147483647i, -39383i, i32(-2147483648), 2147483647i), Struct_1(-1i, vec3<u32>(0u, 0u, 1u), true), vec2<i32>(11656i, i32(-2147483648))), vec4<u32>(1u, 12688u, 64393u, 78167u), Struct_3(vec4<i32>(13660i, 1i, 1i, 13364i), Struct_1(0i, vec3<u32>(0u, 0u, 37229u), true), vec2<i32>(-47692i, 2147483647i)), vec4<f32>(1069f, -495f, 420f, -679f), Struct_3(vec4<i32>(18393i, 16542i, i32(-2147483648), -36222i), Struct_1(-1i, vec3<u32>(0u, 4294967295u, 2456u), true), vec2<i32>(-1i, 0i))), Struct_4(Struct_3(vec4<i32>(1i, 2147483647i, 2147483647i, 64163i), Struct_1(i32(-2147483648), vec3<u32>(1610u, 0u, 0u), false), vec2<i32>(27409i, i32(-2147483648))), vec4<u32>(52848u, 1u, 15122u, 63705u), Struct_3(vec4<i32>(i32(-2147483648), 2147483647i, 0i, 0i), Struct_1(-6429i, vec3<u32>(0u, 7868u, 1u), true), vec2<i32>(-8460i, 2147483647i)), vec4<f32>(-439f, 1000f, 426f, 1000f), Struct_3(vec4<i32>(1i, 5970i, -1i, 0i), Struct_1(2147483647i, vec3<u32>(39223u, 20027u, 0u), true), vec2<i32>(-29584i, -8166i))), Struct_4(Struct_3(vec4<i32>(-7501i, -1i, i32(-2147483648), 9313i), Struct_1(-17311i, vec3<u32>(4294967295u, 131999u, 0u), true), vec2<i32>(2147483647i, -1i)), vec4<u32>(1u, 1u, 4294967295u, 0u), Struct_3(vec4<i32>(25025i, 0i, i32(-2147483648), 2147483647i), Struct_1(2786i, vec3<u32>(4294967295u, 24301u, 0u), true), vec2<i32>(0i, 2147483647i)), vec4<f32>(-926f, 1262f, 723f, -1082f), Struct_3(vec4<i32>(34303i, -1i, -1i, -79535i), Struct_1(2147483647i, vec3<u32>(0u, 4294967295u, 34199u), false), vec2<i32>(40682i, 0i))), Struct_4(Struct_3(vec4<i32>(2147483647i, -14585i, -26i, 2147483647i), Struct_1(55806i, vec3<u32>(4294967295u, 34928u, 101u), true), vec2<i32>(-30882i, 1i)), vec4<u32>(33381u, 1u, 0u, 3241u), Struct_3(vec4<i32>(-32318i, i32(-2147483648), 0i, 14495i), Struct_1(0i, vec3<u32>(4294967295u, 71233u, 1u), false), vec2<i32>(-12320i, 2147483647i)), vec4<f32>(-1359f, -1743f, 1119f, -1459f), Struct_3(vec4<i32>(41701i, i32(-2147483648), 0i, 0i), Struct_1(35812i, vec3<u32>(10786u, 1u, 30032u), false), vec2<i32>(-15268i, i32(-2147483648)))));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<bool> {
    global1 = Struct_1(-82539i | min(u_input.d, reverseBits(_wgslsmith_mod_i32(u_input.e.x, global1.a))), global1.b, !(!global1.c));
    global2 = array<Struct_4, 14>();
    let var_0 = Struct_4(Struct_3(-u_input.b, Struct_1(u_input.b.x ^ 2147483647i, vec3<u32>(_wgslsmith_div_u32(73199u, 6597u), ~40248u, ~0u), select(global1.c, false, true)), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(u_input.e.x, 14083i)), _wgslsmith_div_vec2_i32(-vec2<i32>(-50949i, global1.a), u_input.b.xw))), ~(firstTrailingBit(select(vec4<u32>(4294967295u, 1u, global1.b.x, 1u), vec4<u32>(60283u, global1.b.x, 0u, 73825u), global1.c)) >> (countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.b.x, 6u)], 6u)], 6u)], global1.b.x, 4294967295u, 22467u) ^ vec4<u32>(u_input.c.x, 37860u, u_input.c.x, 0u)) % vec4<u32>(32u))), Struct_3(abs(-(u_input.b >> (vec4<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]) % vec4<u32>(32u)))), Struct_1(abs(firstTrailingBit(u_input.b.x)), ~select(u_input.c, global1.b, vec3<bool>(false, global1.c, global1.c)), global1.c), max(vec2<i32>(-2147483647i, 18066i << (0u % 32u)), vec2<i32>(-32237i, global1.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(601f, 397f, -885f, -191f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-723f, 1000f, 442f, -883f))), global1.c)) * vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2241f - -1572f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-111f, -853f)), 499f, -441f)), Struct_3(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, global1.a), ~global1.a, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 22077i, global1.a, 46756i), u_input.b))), Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(-56677i, -18173i, global1.a, -4536i), u_input.b), vec3<u32>(36596u, global1.b.x, global0[_wgslsmith_index_u32(0u, 6u)]) & (vec3<u32>(global0[_wgslsmith_index_u32(0u, 6u)], global1.b.x, global1.b.x) << (global1.b % vec3<u32>(32u))), all(select(vec2<bool>(global1.c, true), vec2<bool>(false, true), global1.c))), vec2<i32>((u_input.a.x >> (global0[_wgslsmith_index_u32(58932u, 6u)] % 32u)) ^ -2378i, ~1i)));
    let var_1 = !global1.c;
    let var_2 = ~(0u << (((min(global1.b.x, 26443u) ^ 4294967295u) | firstLeadingBit(22824u ^ u_input.c.x)) % 32u));
    return vec3<bool>(!(~1u > _wgslsmith_div_u32(_wgslsmith_sub_u32(15589u, 8843u), ~u_input.c.x)), true, var_0.c.b.c);
}

fn func_4(arg_0: vec3<bool>) -> vec3<u32> {
    var var_0 = !select(vec4<bool>(!arg_0.x, !global1.c, false, arg_0.x), select(vec4<bool>(global1.c, false, !global1.c, all(vec3<bool>(global1.c, false, global1.c))), !vec4<bool>(global1.c, global1.c, true, false), true), true);
    global0 = array<u32, 6>();
    var var_1 = Struct_2(10861i, var_0.x, -(_wgslsmith_div_vec4_i32(-u_input.b, max(u_input.b, vec4<i32>(34784i, u_input.e.x, -2147483647i, u_input.e.x))) | vec4<i32>(1i, ~global1.a, _wgslsmith_dot_vec3_i32(u_input.b.zwy, vec3<i32>(global1.a, 0i, -2147483647i)), global1.a)));
    let var_2 = select(!vec4<bool>(any(var_0.wy) & true, all(select(vec4<bool>(var_0.x, var_1.b, false, var_1.b), vec4<bool>(var_1.b, true, false, false), vec4<bool>(true, true, var_0.x, var_0.x))), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.c.x, 6u)], 1u) <= 50743u, false), vec4<bool>(var_1.b, any(select(vec4<bool>(var_1.b, false, true, false), vec4<bool>(false, true, global1.c, var_1.b), vec4<bool>(arg_0.x, false, true, false))) || true, var_1.b, any(select(func_3(), vec3<bool>(var_0.x, var_0.x, var_1.b), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56986u, 6u)], 6u)], 6u)] != global1.b.x))), func_3().x);
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2429f) + _wgslsmith_f_op_f32(-816f - 2109f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), 340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-625f + 163f))))));
    return abs(_wgslsmith_mult_vec3_u32(firstLeadingBit(select(firstLeadingBit(vec3<u32>(global1.b.x, 4294967295u, 4294967295u)), select(u_input.c, vec3<u32>(0u, 67218u, global1.b.x), true), var_2.zxw)), _wgslsmith_add_vec3_u32(firstTrailingBit(u_input.c) << ((vec3<u32>(u_input.c.x, 4294967295u, global1.b.x) | vec3<u32>(global1.b.x, 17911u, 50893u)) % vec3<u32>(32u)), ~u_input.c)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1723f);
    global2 = array<Struct_4, 14>();
    global1 = Struct_1(arg_1.a, (vec3<u32>(7943u << (0u % 32u), _wgslsmith_sub_u32(1u, arg_0.x), 1u) >> (global1.b % vec3<u32>(32u))) & func_4(select(select(vec3<bool>(arg_1.c, arg_3.b, arg_3.b), vec3<bool>(global1.c, arg_3.b, global1.c), arg_3.b), func_3(), arg_1.c)), !((arg_3.a == 2147483647i) && (arg_1.c || arg_1.c)) & global1.c);
    var var_1 = firstTrailingBit(~vec4<u32>(20870u, 34828u, abs(65142u), _wgslsmith_mult_u32(6199u, _wgslsmith_mod_u32(0u, 1u))));
    var var_2 = !vec4<bool>(true, global1.c, arg_3.b, select(true, false, true));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -279f), 1691f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-832f, 1000f), vec2<f32>(1165f, var_0))))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2(reverseBits(vec3<u32>(~(u_input.c.x ^ global1.b.x), _wgslsmith_add_u32(_wgslsmith_clamp_u32(global1.b.x, 22226u, 4048u), arg_3.b.b.x), min(global0[_wgslsmith_index_u32(u_input.c.x, 6u)] | arg_3.b.b.x, ~4294967295u))), arg_3.b, arg_3.a.ww, arg_2)).x;
    var var_1 = !func_3().zy;
    global1 = arg_3.b;
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.b.x, 0u, 21068u, global1.b.x), vec4<u32>(global1.b.x, 4294967295u, 4294967295u, 38162u))), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(68393u, 1u, u_input.c.x, global1.b.x), ~vec4<u32>(u_input.c.x, 1u, arg_3.b.b.x, 0u)))), global0[_wgslsmith_index_u32(72879u >> (~4294967295u % 32u), 6u)], global1.b.x ^ _wgslsmith_sub_u32(_wgslsmith_mult_u32(~arg_3.b.b.x, global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(1u, 6u)], 4294967295u, true), 6u)]), func_4(vec3<bool>(global1.c, true, arg_2.b)).x));
    let var_3 = Struct_3(~_wgslsmith_div_vec4_i32(vec4<i32>(-17221i | arg_2.c.x, ~global1.a, 6640i, -42095i), u_input.b), Struct_1(_wgslsmith_dot_vec2_i32(select(~u_input.a, -vec2<i32>(u_input.a.x, arg_2.a), !arg_3.b.c), u_input.e.zx), global1.b, !(!any(vec3<bool>(true, false, var_1.x)))), _wgslsmith_add_vec2_i32(arg_2.c.yy, arg_3.a.xy) & abs(_wgslsmith_sub_vec2_i32(arg_2.c.yw | vec2<i32>(arg_3.b.a, 2147483647i), abs(arg_3.c))));
    return global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_3.b.b.x, ~61466u), 6u)], 14u)];
}

fn func_6(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    var var_0 = arg_1.a.b;
    var var_1 = -1000f;
    var var_2 = Struct_3(vec4<i32>(1i, ~1i, ~firstTrailingBit(_wgslsmith_dot_vec4_i32(arg_1.c.a, vec4<i32>(global1.a, 10127i, var_0.a, arg_1.a.a.x))), arg_1.e.c.x), Struct_1(var_0.a, firstLeadingBit(u_input.c), true), u_input.b.xw);
    let var_3 = true;
    var var_4 = firstTrailingBit(firstTrailingBit(u_input.b.xyw));
    return Struct_1(var_2.a.x, ~vec3<u32>(var_2.b.b.x, ~select(arg_1.c.b.b.x, 4294967295u, arg_1.e.b.c), u_input.c.x), var_0.c);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> u32 {
    global0 = array<u32, 6>();
    global2 = array<Struct_4, 14>();
    let var_0 = -776f;
    var var_1 = func_6(_wgslsmith_f_op_f32(-var_0), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(u_input.c, Struct_1(-30563i, u_input.c, arg_2.b), arg_2.c.zy, arg_2)))), var_0, arg_2, Struct_3(arg_2.c, Struct_1(-2147483647i, _wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(26501u, 6u)], global1.b.x, global1.b.x), global1.b), global1.c), vec2<i32>(min(2147483647i, 45264i), firstTrailingBit(-2147483647i)))));
    var_1 = Struct_1(abs(arg_1) & arg_2.a, max(_wgslsmith_add_vec3_u32(~func_6(1658f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 6u)], 14u)]).b, var_1.b), firstTrailingBit(global1.b)), any(!vec4<bool>(global1.c || arg_2.b, global1.c || false, var_1.c, any(vec4<bool>(true, var_1.c, false, var_1.c)))));
    return 6218u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(global1.b.x, ~select(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 46312u), ~global1.b.x, true));
    var var_1 = _wgslsmith_div_u32(func_1(_wgslsmith_add_u32(~u_input.c.x, ~33645u), countOneBits(_wgslsmith_clamp_i32(-1i, -18083i, u_input.a.x)), Struct_2(~1i, global1.c, ~vec4<i32>(0i, global1.a, 2147483647i, u_input.e.x))), 0u) & var_0.x;
    var var_2 = global1.c;
    let var_3 = 4294967295u;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(108f - 699f), func_5(_wgslsmith_f_op_vec2_f32(func_2(~u_input.c, Struct_1(2147483647i, ~vec3<u32>(4294967295u, 1u, 20561u), global1.c), u_input.a, Struct_2(_wgslsmith_div_i32(global1.a, global1.a), global1.c, countOneBits(vec4<i32>(global1.a, 2147483647i, global1.a, global1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-483f))), Struct_2(~min(-2362i, -49547i), select(true, true, select(global1.c, global1.c, false)), u_input.b), Struct_3(vec4<i32>(-2147483647i, ~global1.a, 1i, u_input.a.x >> (75390u % 32u)), Struct_1(u_input.e.x, global1.b, true), u_input.b.wx)).d.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, _wgslsmith_div_u32(~min(var_3, u_input.c.x), _wgslsmith_div_u32(var_0.x, global1.b.x) ^ var_3), 40544u, global1.b.x), global1.a, -global1.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1481f - 1313f)))));
}

