struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(1i, -1163i), vec2<i32>(2147483647i, -68400i), vec2<i32>(0i, -29309i), vec2<i32>(-1i, -5069i), vec2<i32>(0i, 1i), vec2<i32>(-48309i, i32(-2147483648)), vec2<i32>(-35185i, 1i), vec2<i32>(-27969i, 1i), vec2<i32>(1i, 1i), vec2<i32>(i32(-2147483648), 57279i), vec2<i32>(53809i, 18242i), vec2<i32>(2147483647i, -56189i), vec2<i32>(44070i, -22644i), vec2<i32>(-21824i, i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(-42018i, 10940i), vec2<i32>(-33507i, i32(-2147483648)), vec2<i32>(34704i, 25787i), vec2<i32>(39474i, 0i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(9366i, -40744i), vec2<i32>(2147483647i, 2147483647i));

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<bool>(false, false), 0u, vec4<i32>(-23995i, 3699i, -75509i, i32(-2147483648)), vec4<u32>(1u, 6447u, 43387u, 18983u)), Struct_1(vec2<bool>(true, false), 68719u, vec4<i32>(1i, 1i, -13361i, -642i), vec4<u32>(75984u, 34153u, 7107u, 0u)), Struct_1(vec2<bool>(false, true), 62280u, vec4<i32>(15527i, i32(-2147483648), -1i, -64515i), vec4<u32>(1u, 4294967295u, 10720u, 0u)), Struct_1(vec2<bool>(false, true), 39538u, vec4<i32>(-52482i, 1i, 56542i, i32(-2147483648)), vec4<u32>(70781u, 40100u, 1u, 113356u)), Struct_1(vec2<bool>(true, false), 17889u, vec4<i32>(i32(-2147483648), -12704i, -1i, 2147483647i), vec4<u32>(1u, 8420u, 0u, 13229u)), Struct_1(vec2<bool>(false, false), 1u, vec4<i32>(i32(-2147483648), -18679i, 2147483647i, 2147483647i), vec4<u32>(0u, 1u, 4294967295u, 25333u)), Struct_1(vec2<bool>(false, false), 16955u, vec4<i32>(10501i, 0i, -1i, 47569i), vec4<u32>(1u, 25539u, 4294967295u, 4294967295u)), Struct_1(vec2<bool>(false, false), 9505u, vec4<i32>(i32(-2147483648), i32(-2147483648), -44692i, 2147483647i), vec4<u32>(16770u, 28698u, 1u, 4294967295u)), Struct_1(vec2<bool>(true, true), 77797u, vec4<i32>(10697i, -1i, 1i, 2147483647i), vec4<u32>(65175u, 0u, 0u, 29634u)), Struct_1(vec2<bool>(false, false), 0u, vec4<i32>(-39729i, -37935i, 2147483647i, 11354i), vec4<u32>(36247u, 0u, 73397u, 0u)), Struct_1(vec2<bool>(false, true), 1u, vec4<i32>(41070i, 39864i, 0i, 13161i), vec4<u32>(20386u, 2301u, 51163u, 108077u)), Struct_1(vec2<bool>(false, false), 25043u, vec4<i32>(16900i, 1i, 15728i, -19778i), vec4<u32>(0u, 34517u, 0u, 52133u)), Struct_1(vec2<bool>(true, false), 10361u, vec4<i32>(-46132i, -1i, 2147483647i, -24193i), vec4<u32>(8787u, 1u, 0u, 4294967295u)), Struct_1(vec2<bool>(true, true), 50898u, vec4<i32>(25242i, -13754i, -40545i, -11753i), vec4<u32>(52345u, 4294967295u, 56820u, 0u)), Struct_1(vec2<bool>(false, false), 10831u, vec4<i32>(0i, -7208i, 42707i, i32(-2147483648)), vec4<u32>(53492u, 1u, 0u, 9528u)), Struct_1(vec2<bool>(false, true), 89898u, vec4<i32>(-22791i, 750i, -1i, 53743i), vec4<u32>(1u, 1u, 2809u, 12505u)), Struct_1(vec2<bool>(true, true), 48935u, vec4<i32>(-1i, 57079i, -15750i, -1i), vec4<u32>(28803u, 8064u, 0u, 7252u)), Struct_1(vec2<bool>(false, true), 0u, vec4<i32>(14664i, -37383i, -27845i, 20066i), vec4<u32>(1u, 0u, 50429u, 24825u)), Struct_1(vec2<bool>(false, false), 21433u, vec4<i32>(10169i, -38696i, 1i, -19201i), vec4<u32>(0u, 4294967295u, 4294967295u, 13252u)), Struct_1(vec2<bool>(false, false), 4294967295u, vec4<i32>(2147483647i, -1i, 5167i, -4468i), vec4<u32>(40868u, 36586u, 22633u, 11787u)), Struct_1(vec2<bool>(true, false), 0u, vec4<i32>(-22542i, -2801i, 2147483647i, 0i), vec4<u32>(0u, 31160u, 4294967295u, 75490u)), Struct_1(vec2<bool>(false, false), 17314u, vec4<i32>(-1i, 1i, -28781i, -18695i), vec4<u32>(42647u, 90973u, 1u, 1u)), Struct_1(vec2<bool>(true, true), 4294967295u, vec4<i32>(27876i, -56071i, -72624i, -1i), vec4<u32>(9222u, 14008u, 4294967295u, 4294967295u)), Struct_1(vec2<bool>(true, true), 1u, vec4<i32>(i32(-2147483648), -29169i, -73187i, i32(-2147483648)), vec4<u32>(81097u, 20032u, 4294967295u, 10734u)), Struct_1(vec2<bool>(false, true), 91686u, vec4<i32>(17310i, 27829i, 40803i, -1766i), vec4<u32>(76851u, 1u, 4294967295u, 55911u)), Struct_1(vec2<bool>(true, true), 0u, vec4<i32>(5647i, 2147483647i, i32(-2147483648), 41138i), vec4<u32>(4294967295u, 105256u, 4294967295u, 30353u)), Struct_1(vec2<bool>(true, false), 57223u, vec4<i32>(14336i, 4029i, -1i, 0i), vec4<u32>(1u, 0u, 4294967295u, 0u)), Struct_1(vec2<bool>(true, false), 0u, vec4<i32>(9631i, 2147483647i, 0i, 1i), vec4<u32>(1u, 41359u, 0u, 23275u)));

var<private> global3: array<vec4<bool>, 16>;

var<private> global4: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(-1435f, -2065f, 223f), vec3<f32>(-218f, 1000f, 217f), vec3<f32>(597f, -1831f, -1000f), vec3<f32>(-336f, -420f, -610f), vec3<f32>(-1473f, -1029f, -1189f), vec3<f32>(-783f, 1180f, 418f), vec3<f32>(536f, 925f, 1000f), vec3<f32>(-1087f, 166f, -1242f), vec3<f32>(-1000f, 353f, -450f), vec3<f32>(366f, 1498f, 445f), vec3<f32>(-328f, -606f, 776f), vec3<f32>(-584f, 464f, 915f), vec3<f32>(1115f, -2288f, -264f), vec3<f32>(-1000f, 627f, -1708f), vec3<f32>(458f, -395f, 760f), vec3<f32>(2322f, -901f, -334f), vec3<f32>(1327f, 2633f, -1035f), vec3<f32>(-1000f, 202f, 477f), vec3<f32>(-325f, -987f, -741f), vec3<f32>(-928f, 852f, 1852f), vec3<f32>(1707f, -1656f, -1039f), vec3<f32>(-1278f, -207f, 712f), vec3<f32>(444f, 150f, 525f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-696f + 1047f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(188f * 230f), _wgslsmith_f_op_f32(trunc(916f))))), _wgslsmith_f_op_f32(467f + -704f));
    let var_1 = global2[_wgslsmith_index_u32(reverseBits(~u_input.c.x), 28u)];
    global0 = arg_0;
    var var_2 = _wgslsmith_div_vec4_i32(arg_0.c, _wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(abs(arg_0.c.x)), _wgslsmith_mult_i32(1i, _wgslsmith_add_i32(-56150i, 1i)), -(~34013i), -1i), ~vec4<i32>(countOneBits(var_1.c.x), arg_0.c.x >> (u_input.a.x % 32u), ~1i, _wgslsmith_sub_i32(var_1.c.x, 34813i))));
    global0 = global2[_wgslsmith_index_u32(1u, 28u)];
    return 0u;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec2<bool> {
    var var_0 = select(arg_0.a, vec2<bool>(true, false), arg_0.a.x);
    var var_1 = !select(global3[_wgslsmith_index_u32(func_3(Struct_1(vec2<bool>(false, arg_0.a.x), ~1u, vec4<i32>(2147483647i, 2147483647i, arg_0.c.x, 35237i), global0.d)), 16u)], select(vec4<bool>(global0.a.x, all(vec4<bool>(var_0.x, false, true, true)), all(global3[_wgslsmith_index_u32(u_input.c.x, 16u)]), var_0.x), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b, ~1978u), 16u)], !(!global3[_wgslsmith_index_u32(50643u, 16u)])), select(select(vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x), global3[_wgslsmith_index_u32(~global0.b, 16u)], select(vec4<bool>(arg_0.a.x, false, true, var_0.x), global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(u_input.a.x, 16u)])), !(!global3[_wgslsmith_index_u32(arg_0.b, 16u)]), select(global3[_wgslsmith_index_u32(23218u, 16u)], global3[_wgslsmith_index_u32(global0.b, 16u)], global3[_wgslsmith_index_u32(~arg_0.d.x, 16u)])));
    var var_2 = select(global3[_wgslsmith_index_u32(global0.d.x, 16u)], !global3[_wgslsmith_index_u32(firstTrailingBit(0u), 16u)], select(select(select(global3[_wgslsmith_index_u32(select(0u, 4294967295u, false), 16u)], global3[_wgslsmith_index_u32(1u, 16u)], !vec4<bool>(false, var_1.x, var_0.x, false)), !(!vec4<bool>(var_0.x, true, var_1.x, false)), true), global3[_wgslsmith_index_u32(u_input.d >> (reverseBits(_wgslsmith_add_u32(45266u, 1u)) % 32u), 16u)], false));
    var var_3 = arg_0.c;
    var var_4 = -1i;
    return select(select(var_2.wz, vec2<bool>(firstTrailingBit(arg_0.c.x) == -2147483647i, true), select(vec2<bool>(var_2.x | false, false), select(select(vec2<bool>(true, var_0.x), arg_0.a, false), select(var_2.wz, vec2<bool>(arg_0.a.x, global0.a.x), global0.a.x), !global0.a), all(vec3<bool>(global0.a.x, var_0.x, var_1.x)) && (0i >= global0.c.x))), vec2<bool>(var_1.x, var_0.x), !vec2<bool>(var_1.x, !(global0.b > arg_0.d.x)));
}

fn func_1() -> Struct_1 {
    global3 = array<vec4<bool>, 16>();
    global2 = array<Struct_1, 28>();
    let var_0 = global2[_wgslsmith_index_u32(global0.d.x, 28u)];
    let var_1 = Struct_1(func_2(Struct_1(!global0.a, ~11217u, ~global0.c, ~(~vec4<u32>(1u, 1u, 12879u, var_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-139f, 485f) + -1581f)), _wgslsmith_sub_u32(~0u, 57987u), var_0.c, global0.d);
    var var_2 = Struct_1(vec2<bool>(var_0.a.x, select(true, all(var_0.a), false)), var_0.d.x, vec4<i32>(_wgslsmith_mod_i32(global0.c.x, var_0.c.x), ~firstTrailingBit(var_1.c.x), -_wgslsmith_dot_vec3_i32(var_1.c.yxz, vec3<i32>(-1i, var_1.c.x, 0i)), countOneBits(~(~var_1.c.x))), global0.d);
    return Struct_1(func_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.d.x, var_1.b, global0.d.x, 61737u), abs(vec4<u32>(24628u, 5422u, 40584u, var_2.b))), max(vec4<u32>(4294967295u, 11205u, var_2.b, global0.d.x), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(24091u, var_1.d.x, var_0.b, u_input.d)))), 28u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-596f)), -1054f)), ~firstLeadingBit(~(0u & var_0.d.x)), vec4<i32>(var_2.c.x, 1i, _wgslsmith_mult_i32(global0.c.x, min(select(global0.c.x, var_2.c.x, false), -2147483647i)), ~_wgslsmith_mult_i32(0i, -1i)), min(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(3058u, var_2.d.x, 84952u, global0.d.x)) ^ vec4<u32>(14684u, var_1.d.x, var_1.b, 38078u), _wgslsmith_mult_vec4_u32(~var_2.d, ~var_2.d), vec4<u32>(var_0.b, max(31646u, 109092u), global0.d.x, _wgslsmith_div_u32(40975u, 10595u))), ~vec4<u32>(_wgslsmith_div_u32(55305u, var_2.d.x), u_input.b, countOneBits(var_1.b), ~global0.d.x)));
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = func_1();
    global3 = array<vec4<bool>, 16>();
    var var_1 = Struct_1(global0.a, var_0.d.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(-_wgslsmith_sub_i32(0i, -3769i), abs(var_0.c.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 60683i, 0i), vec3<i32>(6155i, arg_0.c.x, -14669i)), global0.c.xwz), ~8643i), ~var_0.c, arg_0.c), vec4<u32>(41204u, arg_0.b, 4294967295u, ~1u));
    global0 = Struct_1(select(global0.a, vec2<bool>(func_2(global2[_wgslsmith_index_u32(min(4294967295u, global0.b), 28u)], -1205f).x, true), true), ~_wgslsmith_dot_vec3_u32(arg_0.d.wzz, func_1().d.xyz), ~func_1().c, func_1().d);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-2067f, _wgslsmith_div_f32(1915f, 2044f)))) * -1278f), 205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-315f)), _wgslsmith_f_op_f32(f32(-1f) * -765f)) + _wgslsmith_f_op_f32(f32(-1f) * -580f))));
}

fn func_5(arg_0: vec3<f32>) -> Struct_1 {
    global3 = array<vec4<bool>, 16>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(670f, arg_0.x))) + _wgslsmith_f_op_vec2_f32(select(arg_0.yz, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 684f) + vec2<f32>(arg_0.x, 654f)), global0.a))));
    let var_1 = min(-_wgslsmith_div_vec4_i32(vec4<i32>(1i, -9304i, global0.c.x, global0.c.x), global0.c) >> (vec4<u32>(firstLeadingBit(~4294967295u), abs(global0.d.x) | ~u_input.d, _wgslsmith_sub_u32(~9795u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 416u, 1u), u_input.a.zxx)), min(18597u, u_input.b)) % vec4<u32>(32u)), -vec4<i32>(-_wgslsmith_mod_i32(global0.c.x, -54582i), -(~(-29264i)), countOneBits(_wgslsmith_mult_i32(global0.c.x, global0.c.x)), global0.c.x));
    global4 = array<vec3<f32>, 23>();
    global3 = array<vec4<bool>, 16>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~113282u, 28u)];
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4[_wgslsmith_index_u32(27087u, 23u)] - global4[_wgslsmith_index_u32(~global0.d.x, 23u)]) - _wgslsmith_f_op_vec3_f32(func_4(func_1())))));
    var var_2 = Struct_1(global0.a, abs(~global0.d.x | _wgslsmith_mod_u32(1u, ~global0.d.x)), ~max(var_0.c, vec4<i32>(i32(-1i) * -2147483647i, 39631i, _wgslsmith_mult_i32(88470i, 6392i), var_1.c.x | global0.c.x)), var_0.d);
    var_2 = Struct_1(select(vec2<bool>(true, global0.a.x), vec2<bool>(true, any(vec4<bool>(true, false, true, true))), !var_1.a.x), global0.b, var_1.c << (~vec4<u32>(_wgslsmith_mult_u32(34267u, 20401u), 37549u, 0u << (u_input.a.x % 32u), _wgslsmith_div_u32(var_1.b, var_0.d.x)) % vec4<u32>(32u)), vec4<u32>(var_1.b, firstTrailingBit(firstLeadingBit(1u)), 0u, ~(~0u)) << (~global0.d % vec4<u32>(32u)));
    var var_3 = Struct_1(var_1.a, ~global0.d.x, var_2.c, vec4<u32>(~_wgslsmith_add_u32(38583u, var_1.b) ^ ~global0.d.x, 6491u, select(1u, 27642u, all(select(vec3<bool>(true, false, var_1.a.x), vec3<bool>(var_2.a.x, var_1.a.x, var_1.a.x), false))), global0.b));
    global2 = array<Struct_1, 28>();
    var var_4 = _wgslsmith_div_vec2_u32(countOneBits(max(countOneBits(var_3.d.xx), _wgslsmith_sub_vec2_u32(var_3.d.yw, global0.d.yz) & ~vec2<u32>(var_3.d.x, var_0.d.x))), min(reverseBits(vec2<u32>(4294967295u, global0.b) | vec2<u32>(u_input.a.x, var_1.d.x)), vec2<u32>(4294967295u, ~7380u)) | (vec2<u32>(1u, ~var_2.b) ^ select(~vec2<u32>(global0.d.x, 25304u), countOneBits(vec2<u32>(var_3.b, 1u)), vec2<bool>(var_0.a.x, var_2.a.x))));
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(202f, -949f)) - vec2<f32>(245f, -1538f)) * _wgslsmith_f_op_vec3_f32(func_4(var_1)).yz) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1150f, -1300f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-922f, 1772f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(659f, -134f) - vec2<f32>(1370f, -1250f))))));
    let var_6 = Struct_1(vec2<bool>(!func_1().a.x, false), 1u, func_1().c, vec4<u32>(34753u, 15391u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.x, 0u), u_input.a.wx) ^ _wgslsmith_dot_vec2_u32(var_3.d.zy, vec2<u32>(30312u, 3140u)), u_input.b), 6921u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_5.x, _wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(exp2(var_5.x))))) - vec3<f32>(1702f, var_5.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(694f, var_5.x, true)), _wgslsmith_f_op_f32(var_5.x + var_5.x), false)))), min(vec2<i32>(_wgslsmith_dot_vec4_i32(var_6.c & vec4<i32>(-1i, 1i, -44145i, 0i), firstLeadingBit(var_6.c)), select(~var_6.c.x, _wgslsmith_sub_i32(55334i, -34242i), var_1.a.x)), vec2<i32>(-_wgslsmith_div_i32(global0.c.x, global0.c.x), 4978i)));
}

