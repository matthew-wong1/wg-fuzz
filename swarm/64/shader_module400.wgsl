struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false));

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(false, vec3<f32>(1000f, 427f, -1909f)), Struct_1(true, vec3<f32>(-784f, -1190f, 756f)), Struct_1(false, vec3<f32>(-1634f, -1226f, -788f)), Struct_1(true, vec3<f32>(-976f, 1060f, 1570f)), Struct_1(true, vec3<f32>(-400f, -1149f, 312f)), Struct_1(true, vec3<f32>(1000f, 545f, -732f)), Struct_1(false, vec3<f32>(-1292f, 700f, -263f)), Struct_1(true, vec3<f32>(-2628f, 1794f, 1511f)), Struct_1(false, vec3<f32>(762f, 264f, 455f)), Struct_1(false, vec3<f32>(740f, -764f, -720f)), Struct_1(false, vec3<f32>(-1459f, 1901f, 128f)), Struct_1(false, vec3<f32>(-1063f, 937f, 1404f)), Struct_1(true, vec3<f32>(-1215f, -841f, -877f)), Struct_1(false, vec3<f32>(567f, 1036f, 1108f)), Struct_1(false, vec3<f32>(-863f, -191f, 998f)), Struct_1(false, vec3<f32>(1280f, -216f, -1000f)), Struct_1(true, vec3<f32>(1000f, -444f, 1287f)), Struct_1(true, vec3<f32>(974f, -2158f, -285f)), Struct_1(true, vec3<f32>(377f, 563f, -730f)), Struct_1(true, vec3<f32>(-745f, -1000f, 449f)), Struct_1(false, vec3<f32>(-1122f, -461f, -378f)), Struct_1(false, vec3<f32>(-460f, 1338f, 1209f)), Struct_1(false, vec3<f32>(-111f, -394f, -294f)), Struct_1(false, vec3<f32>(-1000f, 975f, -708f)), Struct_1(true, vec3<f32>(-2024f, 342f, -390f)), Struct_1(false, vec3<f32>(2492f, 1212f, -756f)), Struct_1(false, vec3<f32>(1248f, 302f, -1051f)), Struct_1(true, vec3<f32>(1217f, -355f, 1912f)));

var<private> global2: Struct_4 = Struct_4(2147483647i, 2924f, vec2<bool>(true, true), false, vec3<bool>(false, true, false));

var<private> global3: array<u32, 28>;

var<private> global4: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec4<bool>(true, true, true, true), vec2<f32>(-1236f, 287f), vec4<u32>(81791u, 1u, 4294967295u, 0u), vec3<i32>(i32(-2147483648), 46870i, 2147483647i), Struct_1(false, vec3<f32>(125f, 1308f, -1405f))), Struct_2(vec4<bool>(true, false, true, true), vec2<f32>(402f, -264f), vec4<u32>(10520u, 36325u, 59978u, 1u), vec3<i32>(1i, -7386i, -23017i), Struct_1(true, vec3<f32>(311f, -460f, 2657f))), Struct_2(vec4<bool>(true, true, true, true), vec2<f32>(1795f, -2084f), vec4<u32>(30173u, 3768u, 46017u, 4294967295u), vec3<i32>(0i, -24573i, 21822i), Struct_1(true, vec3<f32>(-715f, 860f, 1798f))), Struct_2(vec4<bool>(false, true, true, true), vec2<f32>(-736f, 1171f), vec4<u32>(1u, 0u, 59077u, 71272u), vec3<i32>(27792i, 8955i, i32(-2147483648)), Struct_1(true, vec3<f32>(-617f, 106f, -1092f))), Struct_2(vec4<bool>(true, true, true, false), vec2<f32>(-1641f, 1195f), vec4<u32>(5329u, 1u, 0u, 4294967295u), vec3<i32>(26237i, 0i, 9039i), Struct_1(false, vec3<f32>(-750f, -303f, 1000f))), Struct_2(vec4<bool>(false, false, true, false), vec2<f32>(190f, 535f), vec4<u32>(67866u, 18064u, 4294967295u, 0u), vec3<i32>(-52348i, -30028i, 8171i), Struct_1(true, vec3<f32>(-781f, -1000f, 522f))), Struct_2(vec4<bool>(true, false, false, true), vec2<f32>(482f, -1000f), vec4<u32>(5982u, 0u, 1u, 0u), vec3<i32>(0i, 0i, i32(-2147483648)), Struct_1(true, vec3<f32>(-531f, -476f, 140f))), Struct_2(vec4<bool>(true, false, true, true), vec2<f32>(470f, 711f), vec4<u32>(7202u, 18648u, 19606u, 65663u), vec3<i32>(-1i, -29570i, 5630i), Struct_1(false, vec3<f32>(798f, 2610f, -1871f))), Struct_2(vec4<bool>(false, true, true, true), vec2<f32>(-341f, 1305f), vec4<u32>(77025u, 42591u, 1u, 4294967295u), vec3<i32>(57251i, 8657i, -1060i), Struct_1(false, vec3<f32>(432f, 1141f, -858f))), Struct_2(vec4<bool>(false, false, false, true), vec2<f32>(1000f, -753f), vec4<u32>(0u, 42830u, 15152u, 23574u), vec3<i32>(0i, -1i, 2147483647i), Struct_1(true, vec3<f32>(1137f, 2273f, -1166f))), Struct_2(vec4<bool>(false, false, false, false), vec2<f32>(-177f, 1343f), vec4<u32>(0u, 4294967295u, 80328u, 4294967295u), vec3<i32>(-23823i, -1i, 0i), Struct_1(false, vec3<f32>(262f, -1531f, 1057f))), Struct_2(vec4<bool>(false, false, false, false), vec2<f32>(1000f, -779f), vec4<u32>(0u, 0u, 38600u, 0u), vec3<i32>(8227i, 2147483647i, -39856i), Struct_1(true, vec3<f32>(-129f, 867f, 1073f))), Struct_2(vec4<bool>(true, true, true, true), vec2<f32>(1499f, 288f), vec4<u32>(0u, 1u, 0u, 49194u), vec3<i32>(0i, 1i, 11130i), Struct_1(true, vec3<f32>(1036f, -979f, -531f))), Struct_2(vec4<bool>(true, true, false, false), vec2<f32>(1121f, -404f), vec4<u32>(0u, 36908u, 0u, 1u), vec3<i32>(-11447i, 19449i, 2147483647i), Struct_1(false, vec3<f32>(-315f, -1000f, -368f))), Struct_2(vec4<bool>(true, true, false, false), vec2<f32>(-928f, -536f), vec4<u32>(37312u, 38277u, 44883u, 38033u), vec3<i32>(-17457i, -1i, -36938i), Struct_1(true, vec3<f32>(-680f, 514f, -754f))), Struct_2(vec4<bool>(true, true, false, false), vec2<f32>(1853f, 117f), vec4<u32>(4294967295u, 50388u, 0u, 32618u), vec3<i32>(-1i, 1i, i32(-2147483648)), Struct_1(true, vec3<f32>(-1000f, -336f, 322f))), Struct_2(vec4<bool>(false, false, false, true), vec2<f32>(1068f, 418f), vec4<u32>(0u, 23681u, 0u, 1u), vec3<i32>(-1i, -29654i, 78203i), Struct_1(true, vec3<f32>(-784f, 953f, -1559f))), Struct_2(vec4<bool>(false, false, true, true), vec2<f32>(1632f, -2024f), vec4<u32>(683u, 70485u, 4294967295u, 0u), vec3<i32>(2147483647i, 13403i, 1i), Struct_1(false, vec3<f32>(-848f, 575f, 1129f))), Struct_2(vec4<bool>(false, true, false, true), vec2<f32>(-547f, -846f), vec4<u32>(0u, 4294967295u, 1u, 36747u), vec3<i32>(-33967i, -86398i, 813i), Struct_1(false, vec3<f32>(-1448f, 106f, -1109f))), Struct_2(vec4<bool>(false, true, false, false), vec2<f32>(-648f, 860f), vec4<u32>(49431u, 12028u, 79362u, 1u), vec3<i32>(0i, 1i, 60030i), Struct_1(true, vec3<f32>(-2061f, -1205f, 329f))), Struct_2(vec4<bool>(true, true, true, false), vec2<f32>(140f, -2039f), vec4<u32>(4294967295u, 1u, 19950u, 56884u), vec3<i32>(-1i, 0i, -102799i), Struct_1(true, vec3<f32>(273f, -103f, -1275f))), Struct_2(vec4<bool>(true, true, true, false), vec2<f32>(672f, 143f), vec4<u32>(0u, 23283u, 1u, 1u), vec3<i32>(-41177i, -6652i, 14917i), Struct_1(false, vec3<f32>(-606f, -930f, -1048f))), Struct_2(vec4<bool>(true, true, true, true), vec2<f32>(341f, 1015f), vec4<u32>(4294967295u, 64012u, 0u, 1u), vec3<i32>(17391i, 0i, 1i), Struct_1(true, vec3<f32>(918f, -169f, -2153f))), Struct_2(vec4<bool>(false, true, true, true), vec2<f32>(-1489f, 1564f), vec4<u32>(5335u, 1u, 1u, 0u), vec3<i32>(1i, 26234i, 1i), Struct_1(false, vec3<f32>(1171f, -561f, 235f))), Struct_2(vec4<bool>(true, true, true, true), vec2<f32>(327f, -423f), vec4<u32>(0u, 33386u, 55836u, 80011u), vec3<i32>(45615i, -1i, 14412i), Struct_1(false, vec3<f32>(-1563f, -1473f, 1311f))), Struct_2(vec4<bool>(false, false, false, false), vec2<f32>(-545f, 123f), vec4<u32>(16971u, 4294967295u, 0u, 23679u), vec3<i32>(-1i, -10719i, -1i), Struct_1(true, vec3<f32>(-1510f, 1000f, -452f))), Struct_2(vec4<bool>(false, false, false, true), vec2<f32>(-188f, 1243f), vec4<u32>(0u, 9623u, 4294967295u, 1u), vec3<i32>(2147483647i, 1i, -7304i), Struct_1(false, vec3<f32>(1000f, 2135f, -311f))), Struct_2(vec4<bool>(true, false, false, false), vec2<f32>(-346f, 483f), vec4<u32>(1u, 0u, 0u, 4294967295u), vec3<i32>(2147483647i, 2147483647i, -1i), Struct_1(false, vec3<f32>(-126f, -303f, -162f))));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> i32 {
    let var_0 = 0u;
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x >> (global3[_wgslsmith_index_u32(firstTrailingBit(var_0), 28u)] % 32u), arg_1.a, -14728i) | select(-firstLeadingBit(u_input.a.zzx), vec3<i32>(countOneBits(u_input.a.x), 1i >> (0u % 32u), u_input.a.x), !global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16943u, 28u)], 28u)] << (16266u % 32u), 14u)]), ~reverseBits(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a, 2147483647i, global2.a, -61345i), u_input.a), 1419i)));
    let var_2 = Struct_2(select(!(!(!vec4<bool>(true, arg_0.a, arg_0.a, true))), select(vec4<bool>(false, false, global2.b > -2298f, false), vec4<bool>(!arg_1.c.x, true, var_1.x < -13968i, any(vec4<bool>(false, arg_1.c.x, false, false))), !select(vec4<bool>(global2.c.x, global2.d, arg_1.e.x, false), vec4<bool>(arg_0.a, arg_1.e.x, false, true), arg_0.a)), !(!select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false), vec4<bool>(arg_1.c.x, global2.d, arg_0.a, global2.e.x), arg_0.a))), _wgslsmith_f_op_vec2_f32(-arg_0.b.zy), select(~(vec4<u32>(8914u, 1u, 99905u, 20395u) | vec4<u32>(0u, var_0, 4397u, 45389u)) ^ (vec4<u32>(var_0, 57894u, var_0, var_0) & ~vec4<u32>(var_0, 4294967295u, global3[_wgslsmith_index_u32(29824u, 28u)], var_0)), _wgslsmith_mult_vec4_u32(min(vec4<u32>(0u, global3[_wgslsmith_index_u32(1u, 28u)], var_0, 45311u), abs(vec4<u32>(var_0, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(9884u, 28u)], 28u)], 28u)], 28u)], 28u)], var_0, 49065u))), ~abs(vec4<u32>(1u, 105842u, 0u, 4294967295u))), global2.b >= arg_0.b.x), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(max(global2.a, 1i), _wgslsmith_sub_i32(32059i, 0i), 9870i), max(u_input.a.zzw, vec3<i32>(global2.a, arg_1.a, u_input.b)) & u_input.a.www), vec3<i32>(_wgslsmith_mult_i32(-17384i, _wgslsmith_div_i32(-18551i, global2.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(70184i, 63916i), vec2<i32>(-57338i, 1i)) & (global2.a >> (var_0 % 32u)), -arg_1.a >> (~global3[_wgslsmith_index_u32(var_0, 28u)] % 32u))), Struct_1(arg_1.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2351f, _wgslsmith_f_op_f32(285f - arg_1.b), _wgslsmith_f_op_f32(-global2.b)))));
    var var_3 = vec4<u32>(~var_0, ~var_0, 1u, max(var_0, _wgslsmith_dot_vec3_u32(var_2.c.yxy, _wgslsmith_mult_vec3_u32(countOneBits(var_2.c.wyx), ~var_2.c.wwz))));
    let var_4 = Struct_3(~abs(-52281i), ~(~(-1i)), _wgslsmith_f_op_vec2_f32(-var_2.e.b.xy));
    return _wgslsmith_dot_vec4_i32(~max(vec4<i32>(var_2.d.x, var_2.d.x, global2.a, -1i) >> (var_2.c % vec4<u32>(32u)), u_input.a & (u_input.a & u_input.a)), vec4<i32>(-(~(-7588i)), -(arg_1.a | 1i), var_1.x, 1i) >> (_wgslsmith_add_vec4_u32(firstLeadingBit(min(var_2.c, var_2.c)), ~(~var_2.c)) % vec4<u32>(32u)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> Struct_4 {
    global2 = Struct_4(-40332i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1251f * arg_1.e.b.x))))), vec2<bool>(arg_1.e.a, true), arg_2, !vec3<bool>(select(true | arg_2, true, false), true, all(select(arg_1.a.wxw, vec3<bool>(true, true, global2.e.x), false))));
    var var_0 = global4[_wgslsmith_index_u32(firstLeadingBit(~(~(~(~arg_1.c.x)))), 28u)];
    let var_1 = Struct_3(-_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(19823i, 23213i), vec2<i32>(arg_1.d.x, arg_1.d.x)), firstTrailingBit(vec2<i32>(-18107i, 3126i))), func_3(Struct_1(true, vec3<f32>(arg_0, 1332f, arg_0)), Struct_4(55378i, var_0.e.b.x, var_0.a.yy, global2.e.x, global2.e))), 22604i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -562f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f), -1409f))));
    return Struct_4(var_0.d.x, arg_0, var_0.a.xx, arg_1.e.a, vec3<bool>(global2.c.x, true, false));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = u_input.a.x;
    let var_1 = func_2(arg_0, Struct_2(arg_1.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1456f)) * -620f), global2.b), ~arg_1.c, firstTrailingBit(vec3<i32>(~39270i, -16329i, 1i)), Struct_1(select(true, true, true), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, 1041f, arg_1.e.b.x))))), arg_1.a.x);
    let var_2 = false;
    let var_3 = Struct_3(u_input.a.x, var_1.a, arg_1.b);
    let var_4 = true;
    return global3[_wgslsmith_index_u32(select(~((70437u | _wgslsmith_dot_vec4_u32(arg_1.c, arg_1.c)) | ~arg_1.c.x), 103448u, all(vec2<bool>(!var_2, var_2))), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(global3[_wgslsmith_index_u32(max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29248u, 28u)], 28u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)]), 28u)]), 1u ^ ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(65875u, 28u)], 28u)], 28u)], ~min(0u, global3[_wgslsmith_index_u32(42742u, 28u)]), select(0u, func_1(-1634f, Struct_2(vec4<bool>(global2.c.x, global2.d, false, global2.d), vec2<f32>(164f, global2.b), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49869u, 28u)], 28u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], global3[_wgslsmith_index_u32(1u, 28u)], 4294967295u), vec3<i32>(-17924i, u_input.a.x, -19184i), global1[_wgslsmith_index_u32(4294967295u, 28u)])), select(true, global2.e.x, global2.d))), vec4<u32>(~(~12375u), countOneBits(63424u), select(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 28u)], 1u, global2.c.x), ~select(57162u, 0u, false))), 28u)], 28u)], reverseBits(countOneBits(4294967295u)), false);
    let var_1 = global2.d;
    global3 = array<u32, 28>();
    global2 = Struct_4(_wgslsmith_clamp_i32(u_input.b, 0i, abs(global2.a)), _wgslsmith_f_op_f32(-global2.b), func_2(1148f, Struct_2(select(vec4<bool>(global2.e.x, global2.c.x, global2.d, false), !vec4<bool>(global2.d, false, global2.c.x, true), !vec4<bool>(false, global2.d, global2.e.x, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.b, -2142f), vec2<f32>(global2.b, -531f), vec2<bool>(global2.e.x, false)))), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0, global3[_wgslsmith_index_u32(var_0, 28u)], global3[_wgslsmith_index_u32(34853u, 28u)], 38342u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 41703u, 4294967295u, 83565u), vec4<u32>(var_0, 44522u, 1u, 0u))), vec3<i32>(global2.a, global2.a | u_input.b, 41716i), Struct_1(global2.e.x, vec3<f32>(global2.b, global2.b, global2.b))), !any(vec4<bool>(false, global2.c.x, global2.e.x, true)) && global2.e.x).c, global2.c.x, func_2(_wgslsmith_f_op_f32(f32(-1f) * -476f), Struct_2(!select(vec4<bool>(global2.e.x, global2.d, global2.c.x, true), vec4<bool>(global2.d, global2.d, global2.e.x, global2.e.x), vec4<bool>(true, global2.d, global2.e.x, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.b, -2035f)))), vec4<u32>(~var_0, 4294967295u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 28u)]), -(~u_input.a.yyy), global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0, 28u)], 28u)], 28u)], 28u)]), false).e);
    var var_2 = func_2(-1236f, Struct_2(select(!(!vec4<bool>(global2.e.x, global2.c.x, global2.d, true)), vec4<bool>(true, true, true, true), select(!vec4<bool>(true, true, true, global2.d), select(vec4<bool>(global2.e.x, global2.d, global2.e.x, false), vec4<bool>(global2.e.x, global2.d, false, false), vec4<bool>(false, global2.c.x, global2.c.x, true)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2003f, global2.b) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, 1066f)))), vec4<u32>(var_0, 42883u, reverseBits(~1u), ~select(32549u, var_0, global2.c.x)), firstTrailingBit(firstTrailingBit(u_input.a.xzx)), global1[_wgslsmith_index_u32(min(reverseBits(global3[_wgslsmith_index_u32(46437u, 28u)]), 60304u), 28u)]), all(select(select(vec4<bool>(false, global2.c.x, global2.e.x, true), !vec4<bool>(true, false, false, global2.d), select(vec4<bool>(global2.c.x, global2.d, global2.c.x, true), vec4<bool>(global2.d, global2.d, global2.d, global2.d), global2.c.x)), select(vec4<bool>(global2.e.x, false, true, false), vec4<bool>(false, false, global2.c.x, false), global2.e.x || global2.c.x), all(!vec3<bool>(global2.d, true, global2.e.x)))));
    let var_3 = countOneBits(global2.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global2.a, -1i, i32(-1i) * -60792i), global3[_wgslsmith_index_u32(select(var_0, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0, ~4294967295u), 4294967295u), 28u)], var_2.d), 28u)], _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-994f, var_2.b, global2.b) + vec3<f32>(global2.b, var_2.b, global2.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(780f, global2.b, 713f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, var_2.b, -858f) * vec3<f32>(global2.b, 1000f, -566f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.b, var_2.b, var_2.b), vec3<f32>(var_2.b, var_2.b, -253f)), func_2(-1323f, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0, 28u)], 28u)], false).e)) + vec3<f32>(584f, global2.b, global2.b))), 1i);
}

