struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_5, 24> = array<Struct_5, 24>(Struct_5(vec2<f32>(-743f, -1063f), Struct_3(vec4<f32>(-785f, 1868f, -1685f, -1358f), 1i, Struct_2(vec4<i32>(33126i, 359i, -1i, 2147483647i)), vec4<bool>(false, true, false, true), Struct_1(-13690i, vec3<bool>(false, true, true)))), Struct_5(vec2<f32>(246f, -1111f), Struct_3(vec4<f32>(-931f, -1184f, -240f, -1365f), -1i, Struct_2(vec4<i32>(0i, -1i, -1i, -9692i)), vec4<bool>(true, false, true, false), Struct_1(-16613i, vec3<bool>(false, true, false)))), Struct_5(vec2<f32>(201f, -1000f), Struct_3(vec4<f32>(647f, 225f, 172f, 1035f), -1i, Struct_2(vec4<i32>(32242i, 1i, 48149i, 0i)), vec4<bool>(true, true, false, true), Struct_1(-31212i, vec3<bool>(false, true, true)))), Struct_5(vec2<f32>(-775f, 260f), Struct_3(vec4<f32>(291f, -1341f, -1301f, 1111f), 9087i, Struct_2(vec4<i32>(-1i, 10015i, 1i, -1i)), vec4<bool>(false, true, true, true), Struct_1(54383i, vec3<bool>(false, true, true)))), Struct_5(vec2<f32>(-316f, -432f), Struct_3(vec4<f32>(740f, 647f, 1119f, 412f), 2147483647i, Struct_2(vec4<i32>(0i, 1i, 1i, 2147483647i)), vec4<bool>(false, true, true, true), Struct_1(-1i, vec3<bool>(false, false, false)))), Struct_5(vec2<f32>(1354f, 942f), Struct_3(vec4<f32>(-905f, -2380f, 223f, -2255f), 0i, Struct_2(vec4<i32>(-1i, 1i, -4564i, i32(-2147483648))), vec4<bool>(false, false, true, true), Struct_1(15972i, vec3<bool>(false, true, false)))), Struct_5(vec2<f32>(260f, -1581f), Struct_3(vec4<f32>(510f, -1135f, 220f, -1000f), 2147483647i, Struct_2(vec4<i32>(-7558i, 2147483647i, 2147483647i, -14559i)), vec4<bool>(true, false, true, true), Struct_1(1i, vec3<bool>(false, false, true)))), Struct_5(vec2<f32>(1304f, 1122f), Struct_3(vec4<f32>(680f, -866f, 1299f, -813f), 2147483647i, Struct_2(vec4<i32>(-23393i, 36785i, 1i, -59408i)), vec4<bool>(false, false, false, true), Struct_1(i32(-2147483648), vec3<bool>(false, true, false)))), Struct_5(vec2<f32>(1088f, 1000f), Struct_3(vec4<f32>(-1286f, -744f, -330f, 1609f), 29032i, Struct_2(vec4<i32>(-16463i, 22019i, -11994i, 35712i)), vec4<bool>(false, false, false, false), Struct_1(-1i, vec3<bool>(false, true, true)))), Struct_5(vec2<f32>(-2064f, 444f), Struct_3(vec4<f32>(127f, -1102f, -496f, 1000f), -1i, Struct_2(vec4<i32>(49701i, 3267i, -9822i, -20193i)), vec4<bool>(true, true, false, false), Struct_1(78396i, vec3<bool>(true, true, false)))), Struct_5(vec2<f32>(733f, -467f), Struct_3(vec4<f32>(-146f, -988f, -185f, 1129f), 15653i, Struct_2(vec4<i32>(0i, i32(-2147483648), -1i, 2147483647i)), vec4<bool>(false, false, true, true), Struct_1(0i, vec3<bool>(true, false, true)))), Struct_5(vec2<f32>(586f, -1731f), Struct_3(vec4<f32>(-1000f, 274f, 914f, -2171f), 1i, Struct_2(vec4<i32>(45931i, -12899i, -62242i, -30750i)), vec4<bool>(false, true, true, false), Struct_1(14798i, vec3<bool>(true, true, true)))), Struct_5(vec2<f32>(1255f, 1405f), Struct_3(vec4<f32>(-631f, -728f, 1000f, 586f), -19232i, Struct_2(vec4<i32>(-1i, 24920i, 0i, -43934i)), vec4<bool>(false, true, false, false), Struct_1(11684i, vec3<bool>(true, false, true)))), Struct_5(vec2<f32>(209f, -1225f), Struct_3(vec4<f32>(1524f, -445f, 521f, -1000f), -11122i, Struct_2(vec4<i32>(7447i, 1i, -53118i, 23317i)), vec4<bool>(true, false, false, false), Struct_1(-1i, vec3<bool>(true, false, true)))), Struct_5(vec2<f32>(828f, -1153f), Struct_3(vec4<f32>(-878f, 1227f, 746f, 200f), i32(-2147483648), Struct_2(vec4<i32>(2147483647i, -33572i, i32(-2147483648), i32(-2147483648))), vec4<bool>(false, true, false, true), Struct_1(1i, vec3<bool>(false, false, false)))), Struct_5(vec2<f32>(226f, 802f), Struct_3(vec4<f32>(-492f, 574f, 491f, -1171f), 0i, Struct_2(vec4<i32>(1i, 0i, 49767i, 0i)), vec4<bool>(true, false, false, true), Struct_1(-23528i, vec3<bool>(false, true, true)))), Struct_5(vec2<f32>(-444f, 1113f), Struct_3(vec4<f32>(-460f, 465f, 527f, 390f), -11209i, Struct_2(vec4<i32>(-10350i, 2147483647i, -41733i, 2147483647i)), vec4<bool>(true, true, false, false), Struct_1(-1i, vec3<bool>(true, true, true)))), Struct_5(vec2<f32>(992f, -165f), Struct_3(vec4<f32>(-462f, -335f, 2797f, -622f), 0i, Struct_2(vec4<i32>(0i, 50960i, -1i, -22405i)), vec4<bool>(true, true, false, false), Struct_1(0i, vec3<bool>(false, false, true)))), Struct_5(vec2<f32>(-2194f, 130f), Struct_3(vec4<f32>(-1000f, -1000f, -707f, 487f), 17269i, Struct_2(vec4<i32>(-4520i, 5260i, 0i, -2538i)), vec4<bool>(false, true, true, false), Struct_1(2147483647i, vec3<bool>(false, false, true)))), Struct_5(vec2<f32>(-1005f, -1188f), Struct_3(vec4<f32>(640f, 1368f, -130f, 317f), 13110i, Struct_2(vec4<i32>(-1i, -55760i, -1i, -25736i)), vec4<bool>(false, false, true, false), Struct_1(35033i, vec3<bool>(true, true, true)))), Struct_5(vec2<f32>(-1282f, 1197f), Struct_3(vec4<f32>(-249f, 969f, 818f, 117f), -16007i, Struct_2(vec4<i32>(-1i, 1i, 18612i, -1i)), vec4<bool>(true, true, false, false), Struct_1(-21708i, vec3<bool>(false, true, false)))), Struct_5(vec2<f32>(-165f, -1648f), Struct_3(vec4<f32>(1000f, 1180f, -1713f, 1094f), 2147483647i, Struct_2(vec4<i32>(10616i, i32(-2147483648), 2147483647i, 6083i)), vec4<bool>(false, true, true, true), Struct_1(-22762i, vec3<bool>(false, false, true)))), Struct_5(vec2<f32>(704f, 1000f), Struct_3(vec4<f32>(233f, 721f, 617f, -699f), 0i, Struct_2(vec4<i32>(1i, 52321i, i32(-2147483648), -37594i)), vec4<bool>(true, false, false, true), Struct_1(1i, vec3<bool>(true, false, true)))), Struct_5(vec2<f32>(344f, -2213f), Struct_3(vec4<f32>(-1577f, -1000f, 1210f, -115f), -18571i, Struct_2(vec4<i32>(-10766i, -12577i, 17815i, 8892i)), vec4<bool>(true, true, false, false), Struct_1(-1i, vec3<bool>(true, false, false)))));

var<private> global4: vec4<i32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec3<u32> {
    let var_0 = 7854u;
    global0 = 0u;
    global2 = _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(arg_3 << (var_0 % 32u), 1u & var_0, ~4294967295u)), ~vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(global2.zz), vec2<u32>(8405u, global2.x)), _wgslsmith_div_u32(firstTrailingBit(4294967295u), max(arg_3, 13603u)), var_0), ~(firstTrailingBit(vec3<u32>(arg_3, 4294967295u, var_0)) >> (abs(vec3<u32>(arg_3, 0u, 65423u)) % vec3<u32>(32u))));
    let var_1 = Struct_4(_wgslsmith_dot_vec3_i32(select(-u_input.a, u_input.a, arg_2.b.x) >> (_wgslsmith_clamp_vec3_u32(select(vec3<u32>(var_0, 0u, 4294967295u), vec3<u32>(61878u, var_0, 29436u), arg_2.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_3, var_0), vec3<u32>(33007u, 0u, var_0), vec3<u32>(34599u, 4294967295u, 1u)), firstLeadingBit(vec3<u32>(4294967295u, global2.x, global2.x))) % vec3<u32>(32u)), -(vec3<i32>(-1i) * -vec3<i32>(0i, -9458i, u_input.a.x))));
    let var_2 = global3[_wgslsmith_index_u32(~37011u, 24u)];
    return firstTrailingBit(firstTrailingBit(vec3<u32>(36885u, 33392u, ~_wgslsmith_clamp_u32(var_0, 1u, arg_3))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    var var_0 = arg_2.c.a.x >> (global2.x % 32u);
    let var_1 = vec3<i32>(arg_1.e.a, (firstTrailingBit(-26461i) & reverseBits(u_input.a.x)) & 2147483647i, 2147483647i);
    var var_2 = min(~(~vec3<u32>(global2.x, global2.x, global2.x)), func_3(arg_1.a.x, arg_1.c, arg_1.e, global2.x)) >> (~(~max(func_3(-1471f, Struct_2(vec4<i32>(var_1.x, -341i, var_1.x, 1i)), arg_2.e, 39359u), vec3<u32>(0u, 1u, global2.x))) % vec3<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.a.yxw, arg_2.a.wyw) * arg_0);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), arg_1.a.x) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.xz * arg_2.a.wx), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.x, 252f) - vec2<f32>(-732f, -1100f)), arg_1.e.b.xz)))));
    return arg_2.a.x;
}

fn func_1() -> vec3<f32> {
    return vec3<f32>(-540f, -904f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-150f * 938f) + _wgslsmith_f_op_f32(func_2(vec3<f32>(-253f, 814f, 310f), Struct_3(vec4<f32>(-304f, 713f, -993f, 534f), 1i, Struct_2(vec4<i32>(global4.x, 11063i, u_input.a.x, -1i)), vec4<bool>(false, true, true, false), Struct_1(u_input.a.x, vec3<bool>(true, false, false))), Struct_3(vec4<f32>(-1086f, -268f, 1266f, -149f), 2147483647i, Struct_2(vec4<i32>(-12167i, 0i, global4.x, u_input.a.x)), vec4<bool>(true, true, false, false), Struct_1(3059i, vec3<bool>(true, false, false)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()));
    let var_1 = vec2<i32>(global4.x, -(~1i));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x));
    global1 = -17896i;
    global4 = min(firstLeadingBit(-countOneBits(vec4<i32>(2147483647i, u_input.a.x, 2147483647i, global4.x))), ~(~max(vec4<i32>(var_1.x, -1i, global4.x, 1i), vec4<i32>(u_input.a.x, u_input.a.x, -7439i, -2147483647i)))) & countOneBits(vec4<i32>(_wgslsmith_mod_i32(-14336i, abs(global4.x)), max(firstLeadingBit(u_input.a.x), i32(-1i) * -25880i), i32(-1i) * -1i, countOneBits(u_input.a.x) ^ u_input.a.x));
    var var_3 = Struct_4(-15734i);
    global4 = _wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(var_1.x), ~global4.x, u_input.a.x, var_3.a), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-29776i, -1i), 2147483647i), var_1.x, u_input.a.x, -3406i));
    global0 = ~(~countOneBits(global2.x));
    global4 = (vec4<i32>(~var_3.a & (16760i ^ var_1.x), u_input.a.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(-12898i, global4.x, -21326i), vec3<i32>(var_3.a, 0i, -28148i)), _wgslsmith_mod_i32(reverseBits(var_3.a), ~30390i)) << (select(abs(~vec4<u32>(19297u, global2.x, global2.x, global2.x)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, global2.x, global2.x, 1u), vec4<u32>(29248u, global2.x, 16871u, 1u))), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false))) % vec4<u32>(32u))) & countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(global4.x, var_1.x, -2147483647i, u_input.a.x), ~vec4<i32>(2147483647i, -71259i, -36826i, var_1.x)), select(firstTrailingBit(vec4<i32>(var_1.x, -10332i, u_input.a.x, var_3.a)), firstLeadingBit(vec4<i32>(19303i, var_3.a, u_input.a.x, global4.x)), true), max(vec4<i32>(30411i, var_1.x, 41925i, -12491i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, -1i), vec4<i32>(-114i, 0i, var_3.a, global4.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.x), func_3(var_2.x, Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(var_3.a, u_input.a.x, var_1.x, var_3.a), vec4<i32>(-2147483647i, var_3.a, global4.x, global4.x)) | vec4<i32>(var_1.x, -1i, var_3.a, -18020i)), Struct_1(_wgslsmith_mult_i32(i32(-1i) * -18403i, _wgslsmith_add_i32(var_1.x, var_3.a)), vec3<bool>(true, all(vec2<bool>(false, false)), false)), 22249u).x, global2.yy, vec3<f32>(var_2.x, var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-427f)), -1219f)), 266f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(vec3<f32>(var_0.x, var_2.x, 220f), Struct_3(vec4<f32>(var_0.x, 183f, var_0.x, 188f), -75794i, Struct_2(vec4<i32>(2147483647i, global4.x, 0i, 1i)), vec4<bool>(false, false, false, true), Struct_1(var_3.a, vec3<bool>(true, false, false))), Struct_3(vec4<f32>(var_0.x, -144f, 1000f, 971f), 0i, Struct_2(vec4<i32>(535i, global4.x, var_3.a, 2147483647i)), vec4<bool>(true, true, false, false), Struct_1(2147483647i, vec3<bool>(false, false, false)))))))));
}

