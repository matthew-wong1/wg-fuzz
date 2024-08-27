struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: i32,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<bool>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(55151i, 44i), Struct_1(vec4<i32>(-1i, i32(-2147483648), 2147483647i, -65387i), vec3<bool>(false, false, true), -34711i, vec3<bool>(true, false, true), vec3<u32>(4294967295u, 4294967295u, 147u)), vec3<f32>(797f, -455f, 2020f), 57584u, vec4<bool>(true, false, true, false));

var<private> global1: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(Struct_4(Struct_2(vec2<i32>(-12706i, -26695i), Struct_1(vec4<i32>(37642i, 2147483647i, -17414i, -1886i), vec3<bool>(false, true, false), -15121i, vec3<bool>(true, true, true), vec3<u32>(24656u, 2261u, 4294967295u)), vec3<f32>(1170f, -565f, -244f), 3043u, vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, false)), true), Struct_5(Struct_4(Struct_2(vec2<i32>(36199i, -1i), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -1i), vec3<bool>(true, true, false), -77847i, vec3<bool>(false, false, true), vec3<u32>(4294967295u, 48522u, 45732u)), vec3<f32>(1573f, -234f, -296f), 0u, vec4<bool>(true, true, false, true)), vec4<bool>(false, true, true, true)), false), Struct_5(Struct_4(Struct_2(vec2<i32>(-4037i, -1i), Struct_1(vec4<i32>(-42031i, -63275i, 33054i, -1i), vec3<bool>(true, false, true), -48966i, vec3<bool>(false, false, true), vec3<u32>(1u, 62645u, 79988u)), vec3<f32>(-465f, -1019f, 238f), 4294967295u, vec4<bool>(true, false, true, false)), vec4<bool>(false, true, false, false)), false), Struct_5(Struct_4(Struct_2(vec2<i32>(1i, 10872i), Struct_1(vec4<i32>(-1i, i32(-2147483648), -9890i, 1i), vec3<bool>(false, false, true), -24498i, vec3<bool>(false, true, false), vec3<u32>(4294967295u, 42723u, 31520u)), vec3<f32>(1041f, -1000f, 465f), 1u, vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, false)), false), Struct_5(Struct_4(Struct_2(vec2<i32>(-5425i, -38596i), Struct_1(vec4<i32>(i32(-2147483648), -65209i, -21185i, 2147483647i), vec3<bool>(false, false, true), 6073i, vec3<bool>(false, true, false), vec3<u32>(13076u, 1u, 1u)), vec3<f32>(513f, -491f, 1335f), 254u, vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), true), Struct_5(Struct_4(Struct_2(vec2<i32>(1i, -25956i), Struct_1(vec4<i32>(29507i, 1i, 33004i, -40818i), vec3<bool>(true, false, false), 37954i, vec3<bool>(true, true, false), vec3<u32>(20574u, 11703u, 1u)), vec3<f32>(-677f, -511f, -328f), 4294967295u, vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, false)), false), Struct_5(Struct_4(Struct_2(vec2<i32>(-52846i, -1i), Struct_1(vec4<i32>(-22103i, i32(-2147483648), 2147483647i, 0i), vec3<bool>(false, false, true), 1i, vec3<bool>(false, true, true), vec3<u32>(14943u, 21348u, 66249u)), vec3<f32>(-441f, 1843f, 227f), 4294967295u, vec4<bool>(false, false, true, false)), vec4<bool>(false, true, true, false)), true), Struct_5(Struct_4(Struct_2(vec2<i32>(-25068i, i32(-2147483648)), Struct_1(vec4<i32>(-1i, 2147483647i, -23027i, -16833i), vec3<bool>(false, true, false), 6199i, vec3<bool>(true, true, false), vec3<u32>(1u, 4294967295u, 4294967295u)), vec3<f32>(290f, 123f, 1466f), 4294967295u, vec4<bool>(true, false, false, true)), vec4<bool>(false, false, false, false)), false), Struct_5(Struct_4(Struct_2(vec2<i32>(i32(-2147483648), -8659i), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 1i, -20347i), vec3<bool>(false, true, true), 13051i, vec3<bool>(false, true, true), vec3<u32>(4294967295u, 1u, 1u)), vec3<f32>(2118f, 100f, 946f), 0u, vec4<bool>(false, true, true, false)), vec4<bool>(false, false, false, false)), true), Struct_5(Struct_4(Struct_2(vec2<i32>(0i, 28876i), Struct_1(vec4<i32>(-24162i, 46546i, 0i, -26090i), vec3<bool>(true, true, false), -7549i, vec3<bool>(false, false, false), vec3<u32>(1u, 55832u, 0u)), vec3<f32>(2110f, 372f, 1859f), 41648u, vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, false)), true), Struct_5(Struct_4(Struct_2(vec2<i32>(-17819i, i32(-2147483648)), Struct_1(vec4<i32>(0i, 47224i, 98293i, 0i), vec3<bool>(true, true, true), 2147483647i, vec3<bool>(false, false, true), vec3<u32>(32415u, 7011u, 0u)), vec3<f32>(-1164f, 301f, -429f), 0u, vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), true), Struct_5(Struct_4(Struct_2(vec2<i32>(0i, 2147483647i), Struct_1(vec4<i32>(-2105i, 1i, 27268i, 1i), vec3<bool>(true, false, false), i32(-2147483648), vec3<bool>(true, false, true), vec3<u32>(17944u, 10659u, 0u)), vec3<f32>(-1000f, 1000f, 2419f), 47203u, vec4<bool>(false, false, false, true)), vec4<bool>(false, true, false, true)), false), Struct_5(Struct_4(Struct_2(vec2<i32>(-1350i, 0i), Struct_1(vec4<i32>(25063i, 6648i, 2147483647i, 23625i), vec3<bool>(false, true, false), 1i, vec3<bool>(true, false, false), vec3<u32>(14288u, 1u, 0u)), vec3<f32>(-418f, 338f, -888f), 1u, vec4<bool>(false, false, true, true)), vec4<bool>(true, false, true, true)), true), Struct_5(Struct_4(Struct_2(vec2<i32>(0i, 26261i), Struct_1(vec4<i32>(1090i, 2147483647i, -9183i, 8642i), vec3<bool>(false, true, true), 2147483647i, vec3<bool>(false, false, true), vec3<u32>(102124u, 38877u, 83155u)), vec3<f32>(2094f, 1351f, 205f), 4294967295u, vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, true)), true), Struct_5(Struct_4(Struct_2(vec2<i32>(-39683i, 2147483647i), Struct_1(vec4<i32>(37810i, 7445i, 10i, i32(-2147483648)), vec3<bool>(true, false, false), 0i, vec3<bool>(true, false, false), vec3<u32>(1u, 66657u, 1u)), vec3<f32>(813f, -1000f, 1000f), 5620u, vec4<bool>(true, true, false, false)), vec4<bool>(true, true, false, true)), false), Struct_5(Struct_4(Struct_2(vec2<i32>(-3274i, i32(-2147483648)), Struct_1(vec4<i32>(-51447i, 52042i, -1i, 39661i), vec3<bool>(false, false, false), -14358i, vec3<bool>(false, true, false), vec3<u32>(30072u, 84881u, 4294967295u)), vec3<f32>(-672f, -1000f, 1364f), 39378u, vec4<bool>(false, false, false, true)), vec4<bool>(true, false, false, true)), true), Struct_5(Struct_4(Struct_2(vec2<i32>(2147483647i, -1i), Struct_1(vec4<i32>(-3269i, 14533i, -57527i, 1i), vec3<bool>(false, true, true), 0i, vec3<bool>(false, true, true), vec3<u32>(1u, 34753u, 64195u)), vec3<f32>(-969f, -1027f, -420f), 1u, vec4<bool>(false, false, false, false)), vec4<bool>(true, true, false, true)), true), Struct_5(Struct_4(Struct_2(vec2<i32>(-1i, 2147483647i), Struct_1(vec4<i32>(-1i, 4749i, -23701i, 26657i), vec3<bool>(false, true, false), -7755i, vec3<bool>(false, true, false), vec3<u32>(36867u, 740u, 82694u)), vec3<f32>(-345f, 359f, -167f), 19388u, vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, false)), true), Struct_5(Struct_4(Struct_2(vec2<i32>(0i, i32(-2147483648)), Struct_1(vec4<i32>(3448i, -5302i, 36837i, 1i), vec3<bool>(false, true, false), 1i, vec3<bool>(true, true, true), vec3<u32>(2672u, 0u, 0u)), vec3<f32>(145f, 949f, -1443f), 15322u, vec4<bool>(true, false, false, true)), vec4<bool>(false, false, false, false)), true));

var<private> global2: array<Struct_5, 4>;

var<private> global3: u32;

var<private> global4: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>) -> vec3<f32> {
    let var_0 = vec3<u32>(firstLeadingBit(countOneBits(global0.d)), (global0.d & firstTrailingBit(~global0.d)) ^ 4302u, u_input.a | select(10269u, 101497u >> (~global0.b.e.x % 32u), ~global0.d != (u_input.a >> (7866u % 32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(global0.c));
    global3 = min(global0.b.e.x, 46342u);
    let var_2 = global0.b;
    return global0.c;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = select(global0.e, !(!global0.e), true);
    global3 = global0.d << (u_input.a % 32u);
    global3 = 1u;
    global1 = array<Struct_5, 19>();
    let var_1 = Struct_3(Struct_2(global0.a, Struct_1(global0.b.a, vec3<bool>(false, true, all(global0.e.wwx)), global0.a.x, var_0.wzx, ~(~global0.b.e)), _wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(global0.a.x, global0.a.x, global0.b.a.x) ^ countOneBits(global0.b.a.xyw))), 1u, vec4<bool>(var_0.x, all(vec3<bool>(global0.b.d.x, global0.e.x, global0.e.x)), var_0.x, _wgslsmith_add_u32(global0.b.e.x, global0.b.e.x) < 4294967295u)), global0.b.a.x, vec4<bool>(!global0.b.b.x, true, true, all(!global0.e) & false), -110f, Struct_2(_wgslsmith_clamp_vec2_i32(global0.b.a.xy, -min(global0.b.a.zx, global0.b.a.yz), global0.a), global0.b, vec3<f32>(_wgslsmith_f_op_f32(-765f + global0.c.x), 1255f, 335f), 23812u, global0.e));
    return Struct_1(~(-var_1.a.b.a), !vec3<bool>(false, any(var_0.zw) && any(var_1.c.ywy), true), global0.a.x, select(select(!(!var_1.a.e.ywz), !(!vec3<bool>(false, global0.e.x, false)), !var_0.wyw), global0.b.b, !(!vec3<bool>(var_0.x, false, global0.b.b.x))), global0.b.e);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec2<u32>) -> u32 {
    global0 = Struct_2(global0.a >> ((vec2<u32>(global0.d >> (67851u % 32u), u_input.a >> (u_input.a % 32u)) & vec2<u32>(arg_2.x, 8567u)) % vec2<u32>(32u)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, -188f, -179f, _wgslsmith_f_op_f32(ceil(global0.c.x))))), _wgslsmith_f_op_vec3_f32(global0.c + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(global0.b.a.ywy)), _wgslsmith_f_op_vec3_f32(-global0.c)))), countOneBits(1u), arg_0);
    let var_0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1292f)), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 18047i, -1i), _wgslsmith_div_vec3_i32(global0.b.a.zzz, vec3<i32>(20486i, -10132i, -6203i))))).x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-271f))))));
    global0 = Struct_2(firstLeadingBit(vec2<i32>(~global0.b.c, _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.a.x, var_0.c), var_0.c))), Struct_1(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(global0.b.c, global0.b.c, 21865i, 13648i), var_0.a)), select(!vec3<bool>(arg_0.x, false, false), select(arg_1.xzw, var_0.d, !vec3<bool>(false, var_0.b.x, false)), !vec3<bool>(arg_1.x, true, arg_1.x)), _wgslsmith_sub_i32(global0.a.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_0.a.xyx, var_0.a.xwx), global0.a.x >> (var_0.e.x % 32u))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(420f, global0.c.x, global0.c.x, 394f))).d, vec3<u32>(_wgslsmith_mult_u32(u_input.a, 1052u), 1u, var_0.e.x | global0.d) | global0.b.e), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(global0.c.x, 127f, true)), _wgslsmith_f_op_f32(min(1020f, global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * global0.c.x) - _wgslsmith_f_op_f32(select(global0.c.x, global0.c.x, arg_0.x)))))), 1u, arg_1);
    let var_1 = Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, 1i, -2147483647i, global0.a.x), vec4<i32>(var_0.a.x << (19687u % 32u), var_0.a.x, global0.a.x >> (global0.b.e.x % 32u), ~var_0.c)), max(global0.b.a, vec4<i32>(var_0.a.x, 1i, var_0.a.x, -28466i)) | ~max(global0.b.a, global0.b.a)), select(var_0.d, global0.e.xyz, !(-603f >= _wgslsmith_f_op_f32(sign(global0.c.x)))), 8101i, select(vec3<bool>(true, select(any(vec3<bool>(global0.b.d.x, false, arg_0.x)), !var_0.b.x, true), true), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, global0.c.x, 1923f))).b, !select(vec3<bool>(var_0.d.x, true, false), !arg_0.xyx, select(var_0.d.x, arg_1.x, true))), vec3<u32>(5141u, _wgslsmith_dot_vec4_u32(abs(select(vec4<u32>(global0.b.e.x, global0.d, 1749u, 1u), vec4<u32>(4294967295u, 16064u, u_input.a, global0.d), false)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global0.d, global0.d, arg_2.x), vec4<u32>(u_input.a, arg_2.x, 4970u, var_0.e.x))), 1u));
    var var_2 = !vec2<bool>(all(vec2<bool>(!arg_1.x, false)), global0.e.x);
    return firstLeadingBit(global0.b.e.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: vec2<u32>) -> Struct_2 {
    global3 = 1u;
    global0 = Struct_2(reverseBits(vec2<i32>(arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-17330i, arg_0.x, global0.a.x), vec3<i32>(global0.b.a.x, 2147483647i, -1430i)) << (max(global0.b.e.x, 97918u) % 32u))), Struct_1(global0.b.a, !global0.b.b, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(global0.b.a.wwy, arg_0.zww), _wgslsmith_div_i32(-2147483647i, global0.b.c), -global0.b.c), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-21515i, -2147483647i, -4238i), arg_0.zxy), abs(vec3<i32>(-20119i, arg_0.x, arg_0.x)))), vec3<bool>(any(vec4<bool>(global0.b.b.x, arg_1, true, arg_1)), true, true), global0.b.e), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c - _wgslsmith_f_op_vec3_f32(sign(global0.c))) - global0.c), _wgslsmith_f_op_vec3_f32(-global0.c), global0.b.b)), func_1(select(global0.e, select(global0.e, !vec4<bool>(global0.e.x, false, false, arg_1), global0.e.x), reverseBits(u_input.a) > firstLeadingBit(u_input.a)), global0.e, select(_wgslsmith_sub_vec2_u32(~arg_2, firstLeadingBit(arg_2)), countOneBits(~global0.b.e.yx), !vec2<bool>(false, global0.e.x))), !vec4<bool>(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(240f, 413f, -801f, 3484f) + vec4<f32>(global0.c.x, global0.c.x, -252f, global0.c.x))).d.x, -global0.b.c == global0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, -8607i, global0.b.a.x, arg_0.x), global0.b.a) < (global0.a.x >> (global0.d % 32u)), _wgslsmith_f_op_f32(exp2(global0.c.x)) > 664f));
    let var_0 = Struct_2(-((vec2<i32>(global0.b.c, global0.b.c) ^ vec2<i32>(arg_0.x, 2147483647i)) ^ vec2<i32>(_wgslsmith_clamp_i32(arg_0.x, global0.a.x, global0.b.a.x), -2147483647i)), global0.b, _wgslsmith_f_op_vec3_f32(sign(global0.c)), 0u, global0.e);
    var var_1 = Struct_3(Struct_2(select(vec2<i32>(reverseBits(var_0.a.x), var_0.b.c << (29262u % 32u)), -arg_0.ww & vec2<i32>(54213i, arg_0.x), !var_0.b.d.zy), Struct_1(vec4<i32>(arg_0.x, 2147483647i, 50038i, ~var_0.b.c), select(global0.e.xxw, !global0.e.yzy, !vec3<bool>(var_0.b.d.x, true, true)), arg_0.x | ~1i, select(!vec3<bool>(global0.e.x, global0.b.b.x, false), !var_0.e.zyz, !global0.b.d), vec3<u32>(_wgslsmith_clamp_u32(483u, arg_2.x, 0u), 539u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_0.b.e.x), vec2<u32>(arg_2.x, 0u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.c))), func_1(select(select(vec4<bool>(global0.e.x, true, false, false), var_0.e, false), vec4<bool>(arg_1, false, global0.b.b.x, global0.b.b.x), var_0.e), global0.e, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.d, var_0.b.e.x), vec2<u32>(4294967295u, global0.b.e.x), global0.b.e.zy)), select(vec4<bool>(all(vec2<bool>(global0.b.b.x, arg_1)), all(vec3<bool>(false, arg_1, false)), true, arg_0.x == -1i), global0.e, true)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, reverseBits(var_0.a.x), -global0.a.x) ^ firstTrailingBit(2147483647i ^ arg_0.x), var_0.b.a.x), vec4<bool>(true, all(var_0.b.d), func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, 1764f, 802f, -125f)), vec4<f32>(global0.c.x, var_0.c.x, var_0.c.x, -3273f)))).d.x, true), _wgslsmith_f_op_f32(-278f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c.x), -1361f)), -1240f)), var_0);
    global4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -677f) + var_1.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.e.c.x, _wgslsmith_div_f32(var_1.d, -1893f), any(vec4<bool>(var_0.b.d.x, true, true, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(arg_0.x, -1i, -8674i))).x)))))));
    return Struct_2(-vec2<i32>(-32784i, var_0.a.x), func_2(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(firstTrailingBit(global0.b.a.zww))).x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(484f, 1407f) + -688f), _wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.c.x, var_1.d), var_1.a.c.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-194f, 1645f, var_0.c.x)))))), func_2(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.d, _wgslsmith_f_op_f32(floor(-865f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * var_1.d) + -468f), 537f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.a.c.x)))))).e.x, vec4<bool>(any(global0.e), var_0.b.b.x, !any(var_1.a.b.b.xx), global0.a.x <= -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(global0.c.x, global0.c.x);
    let var_1 = global0.b.a.x;
    var var_2 = func_4(vec4<i32>(abs(0i), -51549i, 27213i, -2147483647i) >> (vec4<u32>(_wgslsmith_div_u32(global0.d, ~24490u), ~global0.b.e.x & ~u_input.a, u_input.a, _wgslsmith_add_u32(0u, ~u_input.a)) % vec4<u32>(32u)), _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(u_input.a, u_input.a, 43773u), abs(func_1(global0.e, global0.e, global0.b.e.yx)), 25998u) >= ~firstLeadingBit(u_input.a), _wgslsmith_add_vec2_u32(~countOneBits(vec2<u32>(u_input.a, 34807u)), global0.b.e.yx | (global0.b.e.zz ^ min(vec2<u32>(0u, 30212u), vec2<u32>(global0.d, global0.b.e.x)))));
    let var_3 = Struct_3(func_4(max(firstLeadingBit(var_2.b.a), var_2.b.a), true, global0.b.e.zx), _wgslsmith_sub_i32(global0.b.a.x, _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(1i, 0i, 25303i), _wgslsmith_mult_i32(countOneBits(global0.a.x), var_2.b.c))), vec4<bool>(false, global0.b.b.x, !(~var_2.d <= _wgslsmith_mult_u32(23197u, 25562u)), false & !select(true, global0.b.d.x, var_2.e.x)), var_0.x, Struct_2((-vec2<i32>(global0.b.a.x, var_2.a.x) & reverseBits(global0.b.a.yz)) >> (vec2<u32>(_wgslsmith_mod_u32(global0.b.e.x, 1u), global0.b.e.x) % vec2<u32>(32u)), func_4(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.a.x, 0i, -5028i, var_2.a.x), -var_2.b.a), true, ~(~vec2<u32>(u_input.a, u_input.a))).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.c)) * _wgslsmith_f_op_vec3_f32(-global0.c))), global0.d, vec4<bool>(true, false, select(!global0.e.x, global0.b.d.x == true, true), !(global0.a.x > 40572i))));
    let var_4 = Struct_5(Struct_4(var_3.a, var_2.e), func_2(vec4<f32>(var_2.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1210f), -289f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-515f * -1000f))), _wgslsmith_f_op_f32(var_3.d * _wgslsmith_f_op_f32(round(-1695f))))).d.x);
    global4 = var_0.x;
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3(var_2.b.a.xwz)).yy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(var_2.c)), _wgslsmith_f_op_vec3_f32(trunc(var_3.a.c)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.a.a.c.x, global0.c.x)), _wgslsmith_f_op_f32(-var_2.c.x), var_4.a.a.c.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -(vec2<i32>(var_2.a.x, 2147483647i) | var_2.b.a.yy), (_wgslsmith_add_vec2_i32(vec2<i32>(var_4.a.a.a.x, var_3.b), vec2<i32>(1i, global0.b.a.x)) ^ var_2.b.a.wx) ^ ~var_3.e.a), ~func_4(func_4(func_2(vec4<f32>(var_0.x, var_4.a.a.c.x, -1000f, global0.c.x)).a, select(true, true, global0.b.b.x), vec2<u32>(50638u, 1u)).b.a, true, firstLeadingBit(func_2(vec4<f32>(global0.c.x, global0.c.x, 240f, var_2.c.x)).e.zz)).b.a.x);
}

