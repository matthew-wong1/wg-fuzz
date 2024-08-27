struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: vec3<i32>,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec3<i32>(i32(-2147483648), -1260i, -21396i), -4327i, vec3<f32>(-2051f, 1000f, -1295f), vec4<u32>(75180u, 65251u, 4294967295u, 2085u), vec2<u32>(43662u, 4294967295u)), Struct_3(vec3<i32>(2147483647i, 9702i, -34439i), -41071i, vec3<f32>(1412f, 2069f, 959f), vec4<u32>(0u, 80213u, 1u, 55280u), vec2<u32>(0u, 4080u)), Struct_3(vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), i32(-2147483648), vec3<f32>(172f, -212f, -355f), vec4<u32>(0u, 29760u, 44813u, 0u), vec2<u32>(7393u, 45340u)), Struct_3(vec3<i32>(0i, -1i, 0i), 2147483647i, vec3<f32>(-688f, 190f, -1153f), vec4<u32>(72226u, 4415u, 1u, 32294u), vec2<u32>(2793u, 13131u)), Struct_3(vec3<i32>(45884i, -32979i, 1977i), -1i, vec3<f32>(420f, 1241f, -276f), vec4<u32>(31517u, 4294967295u, 1u, 1u), vec2<u32>(1u, 1u)), Struct_3(vec3<i32>(-40139i, 0i, 1i), 2147483647i, vec3<f32>(-1913f, 902f, 1823f), vec4<u32>(0u, 4294967295u, 48047u, 4294967295u), vec2<u32>(23077u, 0u)), Struct_3(vec3<i32>(20528i, -1i, -1i), -1i, vec3<f32>(1001f, 1995f, -131f), vec4<u32>(0u, 23864u, 31425u, 1u), vec2<u32>(11692u, 33772u)), Struct_3(vec3<i32>(4263i, -67907i, -9062i), i32(-2147483648), vec3<f32>(-1000f, -383f, 2685f), vec4<u32>(0u, 4294967295u, 10319u, 74880u), vec2<u32>(4294967295u, 4294967295u)), Struct_3(vec3<i32>(-1451i, 28695i, i32(-2147483648)), 1028i, vec3<f32>(632f, 1287f, 596f), vec4<u32>(36745u, 0u, 4294967295u, 4294967295u), vec2<u32>(0u, 1u)), Struct_3(vec3<i32>(1i, -16297i, -50935i), i32(-2147483648), vec3<f32>(-123f, 1635f, 1000f), vec4<u32>(28961u, 0u, 21207u, 0u), vec2<u32>(0u, 2645u)), Struct_3(vec3<i32>(0i, 1i, 1i), -1i, vec3<f32>(-774f, -1520f, -813f), vec4<u32>(4294967295u, 1u, 51102u, 5237u), vec2<u32>(4294967295u, 65960u)), Struct_3(vec3<i32>(-1i, 2147483647i, -1i), 2877i, vec3<f32>(-1056f, 207f, -1908f), vec4<u32>(27888u, 1u, 0u, 24473u), vec2<u32>(39039u, 43359u)), Struct_3(vec3<i32>(2147483647i, -33195i, 14377i), 8740i, vec3<f32>(1253f, 332f, -1344f), vec4<u32>(16748u, 4294967295u, 19200u, 46147u), vec2<u32>(4294967295u, 21369u)), Struct_3(vec3<i32>(15055i, 854i, 21802i), -1i, vec3<f32>(869f, -1524f, -595f), vec4<u32>(4294967295u, 1u, 30098u, 1u), vec2<u32>(0u, 4294967295u)), Struct_3(vec3<i32>(i32(-2147483648), 0i, 1i), -36497i, vec3<f32>(-1000f, 106f, -713f), vec4<u32>(1u, 1u, 21270u, 1882u), vec2<u32>(1u, 0u)), Struct_3(vec3<i32>(-1i, 1i, -53112i), -1i, vec3<f32>(-239f, -288f, 581f), vec4<u32>(21145u, 33389u, 11195u, 27043u), vec2<u32>(44856u, 61685u)), Struct_3(vec3<i32>(34424i, -1i, 1i), -37519i, vec3<f32>(-1338f, 1220f, 158f), vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec2<u32>(287u, 1148u)), Struct_3(vec3<i32>(1i, 49829i, 1i), 23041i, vec3<f32>(1485f, 1888f, 1072f), vec4<u32>(70764u, 39186u, 20028u, 17003u), vec2<u32>(15868u, 4294967295u)), Struct_3(vec3<i32>(-38538i, -36057i, -1i), 1i, vec3<f32>(386f, -1229f, 1000f), vec4<u32>(24520u, 1u, 6956u, 0u), vec2<u32>(4294967295u, 48826u)), Struct_3(vec3<i32>(15737i, -1i, 25409i), 1i, vec3<f32>(-1324f, 944f, 1000f), vec4<u32>(4294967295u, 7119u, 1u, 44645u), vec2<u32>(13504u, 4294967295u)), Struct_3(vec3<i32>(-17127i, 5647i, -13668i), -76084i, vec3<f32>(637f, -253f, 931f), vec4<u32>(0u, 1549u, 4294967295u, 1u), vec2<u32>(0u, 0u)), Struct_3(vec3<i32>(-27474i, 2147483647i, -10135i), -30788i, vec3<f32>(1000f, 320f, 2520f), vec4<u32>(19112u, 59838u, 129783u, 21597u), vec2<u32>(10062u, 4294967295u)), Struct_3(vec3<i32>(54839i, -73841i, -20834i), -50611i, vec3<f32>(-400f, 315f, 1000f), vec4<u32>(4294967295u, 19453u, 1u, 4294967295u), vec2<u32>(74427u, 79149u)), Struct_3(vec3<i32>(-29503i, 0i, 20185i), 46669i, vec3<f32>(914f, -500f, -443f), vec4<u32>(50335u, 45902u, 1u, 22699u), vec2<u32>(0u, 9819u)), Struct_3(vec3<i32>(1i, i32(-2147483648), 35183i), 10857i, vec3<f32>(-1417f, 186f, -1813f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 57900u), vec2<u32>(47547u, 1u)), Struct_3(vec3<i32>(-13967i, 23623i, -3437i), i32(-2147483648), vec3<f32>(221f, 341f, 1083f), vec4<u32>(39218u, 4294967295u, 0u, 11979u), vec2<u32>(43909u, 14379u)));

var<private> global1: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global2: array<Struct_3, 28>;

var<private> global3: Struct_3;

var<private> global4: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<u32>(59284u, 23031u, 4294967295u, 8047u), vec4<i32>(15906i, 35603i, -56576i, i32(-2147483648))), Struct_1(vec4<u32>(0u, 1u, 0u, 62453u), vec4<i32>(2147483647i, 0i, -24287i, -1i)), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<i32>(38463i, -1i, 31823i, 2147483647i)), Struct_1(vec4<u32>(103984u, 4175u, 0u, 8006u), vec4<i32>(67i, -54792i, 71323i, i32(-2147483648))), Struct_1(vec4<u32>(33259u, 1u, 20517u, 4294967295u), vec4<i32>(0i, 0i, 28142i, -46881i)), Struct_1(vec4<u32>(24081u, 40109u, 20144u, 52679u), vec4<i32>(-24144i, 0i, 1i, -40794i)), Struct_1(vec4<u32>(83919u, 0u, 36697u, 35805u), vec4<i32>(48138i, 0i, 1i, 23723i)), Struct_1(vec4<u32>(27557u, 1u, 26492u, 42675u), vec4<i32>(i32(-2147483648), 0i, 1i, -57448i)), Struct_1(vec4<u32>(0u, 3844u, 34847u, 65677u), vec4<i32>(i32(-2147483648), 0i, 76427i, -16841i)), Struct_1(vec4<u32>(0u, 11824u, 1u, 0u), vec4<i32>(0i, 1i, 64573i, 2147483647i)), Struct_1(vec4<u32>(4294967295u, 49479u, 97124u, 1u), vec4<i32>(i32(-2147483648), -15534i, -2170i, 18052i)), Struct_1(vec4<u32>(4294967295u, 15615u, 1u, 1u), vec4<i32>(5822i, 2147483647i, -32501i, 1i)), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<i32>(-63183i, i32(-2147483648), i32(-2147483648), 1i)), Struct_1(vec4<u32>(39411u, 20879u, 12545u, 48561u), vec4<i32>(2147483647i, 0i, -8217i, -42463i)), Struct_1(vec4<u32>(0u, 76718u, 1u, 71735u), vec4<i32>(8741i, 1i, 2147483647i, 0i)), Struct_1(vec4<u32>(1u, 38861u, 46399u, 79307u), vec4<i32>(-6185i, 1i, i32(-2147483648), 56474i)), Struct_1(vec4<u32>(4294967295u, 120648u, 0u, 1725u), vec4<i32>(17253i, 2147483647i, -2529i, 3253i)), Struct_1(vec4<u32>(4294967295u, 50344u, 1u, 1u), vec4<i32>(i32(-2147483648), -1i, -2853i, -46575i)), Struct_1(vec4<u32>(71039u, 26283u, 1u, 1u), vec4<i32>(1i, 11206i, -49657i, 0i)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_clamp_u32(global3.e.x >> (firstLeadingBit(4294967295u) % 32u), ~(~_wgslsmith_add_u32(arg_2, arg_2)), firstLeadingBit(firstTrailingBit(1u << (global3.e.x % 32u))));
    global2 = array<Struct_3, 28>();
    var var_1 = vec2<i32>(global3.a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, global3.a.x), global3.a.yy), _wgslsmith_div_i32(arg_0, abs(arg_0 ^ global3.b))));
    var var_2 = arg_0;
    var var_3 = vec2<bool>(any(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)))), select(!(_wgslsmith_sub_u32(63940u, arg_2) < global3.d.x), !(_wgslsmith_f_op_f32(global3.c.x - global3.c.x) != 334f), (true & all(vec4<bool>(false, true, true, true))) & true));
    return select(select(global1[_wgslsmith_index_u32(4294967295u, 10u)], select(vec2<bool>(true, var_3.x || var_3.x), vec2<bool>(true, any(vec3<bool>(true, var_3.x, false))), global1[_wgslsmith_index_u32(~0u ^ global3.e.x, 10u)]), select(true, false, true)), !vec2<bool>(1269f == _wgslsmith_f_op_f32(abs(global3.c.x)), var_3.x || any(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x))), vec2<bool>(false, !((global3.d.x != 56738u) | true)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32) -> i32 {
    global3 = Struct_3(arg_1.e.b.ywy, arg_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c.x, _wgslsmith_f_op_f32(abs(1000f)), 1f) * global3.c) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.c * vec3<f32>(arg_2, arg_2, global3.c.x))))), arg_1.e.a, ~vec2<u32>(1u << (global3.e.x % 32u), abs(4294967295u)));
    global2 = array<Struct_3, 28>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.c.x, _wgslsmith_f_op_f32(arg_2 - arg_2), 1398f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.c.x, arg_2, 273f)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global3.c.x, 227f), _wgslsmith_f_op_f32(arg_2 + 824f), _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global3.c))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, global3.c.x, arg_2))))), select(vec3<bool>(arg_1.d != arg_1.d, 0u > arg_1.e.a.x, false), vec3<bool>(!arg_1.b.x, true, false), 0u > ~arg_1.e.a.x))));
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -924f)) <= _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), !arg_1.d)))), all(!func_3(~76707i, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.x, -1i, -2147483647i), u_input.b.zwy), 0u)), 0i >= u_input.b.x);
    var var_2 = Struct_3(global3.a, _wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(arg_1.e.b, u_input.b), vec4<i32>(global3.b, 2147483647i, 0i, u_input.a.x)), _wgslsmith_mod_i32(-arg_1.a, global3.a.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-230f, global3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1450f + 372f) - _wgslsmith_f_op_f32(abs(2187f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1168f, -1114f, -1000f) + global3.c)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(global3.c, global3.c))))))), arg_1.e.a, ~reverseBits(global3.e));
    return 1i;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: i32, arg_3: vec4<bool>) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(global3.c.x - _wgslsmith_f_op_f32(-global3.c.x)), _wgslsmith_div_f32(-255f, global3.c.x), -458f, _wgslsmith_f_op_f32(-global3.c.x));
    var var_1 = vec4<i32>(_wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec2_i32(-u_input.a, vec2<i32>(3323i, arg_2) << (global3.e % vec2<u32>(32u)))), arg_2), min(func_4(vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(arg_2, 32278i)), Struct_2(38280i, func_3(0i, 0i, 4294967295u), _wgslsmith_div_i32(global3.a.x, u_input.b.x), all(arg_3), Struct_1(vec4<u32>(1u, global3.e.x, global3.d.x, 0u), vec4<i32>(arg_2, arg_2, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(118f + 631f) * _wgslsmith_f_op_f32(global3.c.x + global3.c.x))), _wgslsmith_add_i32(select(global3.a.x, -35262i, !arg_3.x), i32(-1i) * -7371i)), _wgslsmith_dot_vec3_i32(~(-u_input.b.zwy), u_input.b.yww), func_4(-(~_wgslsmith_mod_vec2_i32(vec2<i32>(global3.a.x, 5636i), vec2<i32>(33209i, 1i))), Struct_2(2147483647i, !vec2<bool>(arg_1.a.x, true), u_input.b.x, !(!arg_1.a.x), global4[_wgslsmith_index_u32(58851u, 19u)]), _wgslsmith_f_op_f32(trunc(1000f))));
    global2 = array<Struct_3, 28>();
    global2 = array<Struct_3, 28>();
    var var_2 = Struct_3(~var_1.xyw, u_input.b.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global3.c))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1154f), _wgslsmith_f_op_f32(abs(global3.c.x)))), 791f, global3.c.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global3.d.x, global3.d.x, global3.d.x, 19342u), global3.d), _wgslsmith_mod_vec4_u32(~global3.d, ~vec4<u32>(global3.d.x, 1u, global3.e.x, global3.e.x))), global3.d), abs(vec2<u32>(1u, 35743u)));
    return ~48574u;
}

fn func_1() -> u32 {
    var var_0 = ~abs(vec3<u32>(global3.e.x ^ 5867u, 9525u, _wgslsmith_add_u32(23697u << (global3.e.x % 32u), func_2(vec3<bool>(false, false, true), Struct_4(global1[_wgslsmith_index_u32(global3.d.x, 10u)]), u_input.a.x, vec4<bool>(false, true, true, true)))));
    let var_1 = (i32(-1i) * -(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -10883i, u_input.b.x, 2147483647i), u_input.b) | u_input.b.x)) <= (i32(-1i) * -73990i);
    let var_2 = Struct_5(~abs(~firstLeadingBit(5588u)), Struct_4(!global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, global3.d.x), 10u)]), countOneBits(-(u_input.b.wyw | _wgslsmith_sub_vec3_i32(u_input.b.ywz, u_input.b.xwx))), countOneBits(var_0.x & global3.e.x) < countOneBits(global3.e.x), global1[_wgslsmith_index_u32(~func_2(!select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, var_1, var_1), var_1), Struct_4(!global1[_wgslsmith_index_u32(4294967295u, 10u)]), _wgslsmith_mult_i32(min(-20029i, 1i), _wgslsmith_clamp_i32(u_input.b.x, u_input.a.x, 69999i)), select(vec4<bool>(var_1, var_1, var_1, var_1), select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(true, var_1, var_1, true), false), select(vec4<bool>(true, true, var_1, var_1), vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(var_1, true, true, false)))), 10u)]);
    global1 = array<vec2<bool>, 10>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1662f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(926f + 452f), _wgslsmith_f_op_f32(floor(global3.c.x)))), (countOneBits(u_input.b.x) << (global3.d.x % 32u)) == ~reverseBits(u_input.b.x))) - 482f);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(~6960u), var_0.x, _wgslsmith_mult_u32(global3.d.x, reverseBits(var_0.x >> (var_0.x % 32u))), ~(~(~var_2.a))), global3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(select(~vec3<u32>(4294967295u, 8393u, 37261u), vec3<u32>(func_1(), ~0u, global3.d.x >> (122510u % 32u)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))), ~(~(~global3.d.xzw))), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(global3.e.x, 4294967295u, global3.e.x), global3.d.wyx), _wgslsmith_mult_vec3_u32(~global3.d.wxz, ~vec3<u32>(global3.d.x, global3.d.x, global3.d.x)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, global3.e.x), ~vec3<u32>(global3.d.x, global3.e.x, 0u))), vec3<u32>(1u, global3.d.x, global3.e.x)));
    global2 = array<Struct_3, 28>();
    let var_1 = Struct_5(abs(~global3.e.x), Struct_4(global1[_wgslsmith_index_u32(9608u, 10u)]), select(vec3<i32>(46973i, ~global3.a.x, -5061i), global3.a, !any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false))), (abs(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.b, -1i, -2147483647i), u_input.b.xww)) != -28524i) || (true || any(vec3<bool>(true, true, true))), global1[_wgslsmith_index_u32(1u, 10u)]);
    global0 = array<Struct_3, 26>();
    global3 = Struct_3(u_input.b.yyw, -max(func_4(min(vec2<i32>(u_input.b.x, -1i), var_1.c.zz), Struct_2(u_input.a.x, vec2<bool>(var_1.b.a.x, true), -5560i, true, global4[_wgslsmith_index_u32(74449u, 19u)]), _wgslsmith_f_op_f32(-global3.c.x)), -36840i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.c)))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(func_1(), ~1u), ~_wgslsmith_mod_u32(global3.d.x, 76562u)), global3.d.x ^ var_0.x, firstTrailingBit(global3.d.x), ~var_1.a >> (~(~var_1.a) % 32u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(~var_0.x, 1u), var_0.yz | _wgslsmith_sub_vec2_u32(global3.e, vec2<u32>(var_0.x, 4294967295u))));
    let var_2 = !select(vec3<bool>(!(!var_1.b.a.x), -385f <= global3.c.x, true), select(!(!vec3<bool>(var_1.b.a.x, false, true)), !(!vec3<bool>(false, var_1.b.a.x, var_1.b.a.x)), select(!vec3<bool>(var_1.b.a.x, var_1.e.x, var_1.b.a.x), !vec3<bool>(var_1.e.x, false, var_1.b.a.x), vec3<bool>(true, var_1.e.x, true))), var_1.b.a.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(-global3.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-global3.c));
}

