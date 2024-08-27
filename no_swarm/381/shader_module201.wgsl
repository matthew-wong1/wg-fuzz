struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
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

var<private> global0: array<Struct_5, 12> = array<Struct_5, 12>(Struct_5(Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(vec2<i32>(6511i, 24277i), vec4<f32>(900f, 447f, 2095f, 302f), -2150f, -798f), Struct_1(vec2<i32>(20731i, -12050i), vec4<f32>(-752f, -792f, -409f, -400f), -702f, 486f))), Struct_5(Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(vec2<i32>(-17451i, 2147483647i), vec4<f32>(-751f, 1470f, 101f, -142f), 217f, -1054f), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<f32>(-779f, 2260f, 1167f, 2324f), -697f, 123f))), Struct_5(Struct_2(vec2<u32>(29845u, 7055u), Struct_1(vec2<i32>(71451i, i32(-2147483648)), vec4<f32>(-337f, 1810f, 1000f, -1528f), -693f, -476f), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec4<f32>(-1378f, 1152f, 896f, -859f), 264f, -2279f))), Struct_5(Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec2<i32>(-1i, -1i), vec4<f32>(-250f, -1488f, -390f, -1405f), -340f, 608f), Struct_1(vec2<i32>(16230i, i32(-2147483648)), vec4<f32>(699f, -156f, -1000f, 1300f), -1000f, 156f))), Struct_5(Struct_2(vec2<u32>(24933u, 4294967295u), Struct_1(vec2<i32>(-12676i, -13652i), vec4<f32>(-399f, -849f, 1595f, -1155f), 556f, 1000f), Struct_1(vec2<i32>(1i, 16841i), vec4<f32>(-934f, 121f, 122f, 1229f), 443f, 779f))), Struct_5(Struct_2(vec2<u32>(1u, 27913u), Struct_1(vec2<i32>(52457i, 37977i), vec4<f32>(971f, 290f, 592f, -230f), 352f, -2268f), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<f32>(485f, 1366f, 458f, -781f), -637f, -249f))), Struct_5(Struct_2(vec2<u32>(4294967295u, 52936u), Struct_1(vec2<i32>(17163i, 2147483647i), vec4<f32>(-252f, 669f, -203f, 1000f), 344f, -314f), Struct_1(vec2<i32>(0i, 2147483647i), vec4<f32>(-1616f, -259f, 774f, -565f), 1068f, 650f))), Struct_5(Struct_2(vec2<u32>(1u, 55976u), Struct_1(vec2<i32>(1i, -1i), vec4<f32>(406f, 457f, -1714f, -688f), -470f, 497f), Struct_1(vec2<i32>(1i, 5234i), vec4<f32>(-405f, -516f, -462f, -117f), -423f, 943f))), Struct_5(Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec2<i32>(-9332i, -1i), vec4<f32>(1000f, -253f, -2220f, 366f), -1545f, -1244f), Struct_1(vec2<i32>(-30648i, 1i), vec4<f32>(226f, -578f, 367f, 369f), -881f, 1000f))), Struct_5(Struct_2(vec2<u32>(10285u, 59841u), Struct_1(vec2<i32>(-1i, 17090i), vec4<f32>(2433f, -669f, -537f, 401f), 2291f, 314f), Struct_1(vec2<i32>(0i, 0i), vec4<f32>(330f, -1601f, 420f, 1526f), -109f, 945f))), Struct_5(Struct_2(vec2<u32>(5451u, 68819u), Struct_1(vec2<i32>(-1i, -1i), vec4<f32>(-1049f, -1153f, 1600f, 326f), -535f, 728f), Struct_1(vec2<i32>(28942i, -19910i), vec4<f32>(-580f, -439f, 941f, 1000f), 402f, 743f))), Struct_5(Struct_2(vec2<u32>(60388u, 0u), Struct_1(vec2<i32>(2147483647i, 32606i), vec4<f32>(182f, 532f, -240f, 1060f), -2096f, 1229f), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<f32>(-1000f, 1227f, -744f, 781f), -1252f, 131f))));

var<private> global1: array<u32, 27>;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<i32>(-48518i, -3929i), vec4<f32>(147f, 1421f, -950f, -1081f), 2589f, 618f), Struct_1(vec2<i32>(2147483647i, -35559i), vec4<f32>(487f, -843f, -861f, 995f), 659f, -1567f), Struct_1(vec2<i32>(-10042i, 19553i), vec4<f32>(-1003f, 278f, 493f, 691f), 237f, -402f), Struct_1(vec2<i32>(13770i, 2147483647i), vec4<f32>(1204f, 753f, -223f, -1506f), -190f, -1342f), Struct_1(vec2<i32>(-67714i, 15277i), vec4<f32>(-595f, -271f, -716f, 650f), 1000f, -153f), Struct_1(vec2<i32>(-24397i, -55753i), vec4<f32>(-960f, -125f, 1246f, -836f), 463f, 3061f), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<f32>(-197f, -1111f, 1002f, -138f), 1000f, 781f), Struct_1(vec2<i32>(2147483647i, -1i), vec4<f32>(919f, 1000f, 878f, 327f), -339f, 1926f), Struct_1(vec2<i32>(-19202i, 1i), vec4<f32>(1765f, 1471f, -1446f, -250f), 441f, 156f));

var<private> global3: vec2<i32>;

var<private> global4: array<f32, 19> = array<f32, 19>(157f, 2214f, 377f, -184f, 1000f, -631f, -1000f, -1030f, 1000f, 1093f, -337f, 435f, -1485f, -1396f, -1586f, -390f, -1960f, -395f, 1121f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec3<f32>, arg_3: u32) -> vec4<f32> {
    global1 = array<u32, 27>();
    let var_0 = Struct_5(Struct_2(vec2<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], 1u), 12338u), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(arg_3), 27u)], 9u)], Struct_1(arg_0.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-184f, -427f, arg_0.a.d, arg_2.x))) + _wgslsmith_f_op_vec4_f32(-arg_0.a.b)), arg_0.a.b.x, _wgslsmith_f_op_f32(arg_0.a.c + _wgslsmith_f_op_f32(-arg_2.x)))));
    let var_1 = var_0;
    let var_2 = Struct_1(max(select(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -9548i), vec2<i32>(-2147483647i, global3.x)) ^ var_0.a.b.a, select(vec2<i32>(u_input.b, var_0.a.b.a.x), select(arg_0.a.a, vec2<i32>(0i, global3.x), vec2<bool>(arg_1, false)), u_input.b > global3.x), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(arg_1, arg_1)), vec2<bool>(arg_1, true), any(vec2<bool>(false, false)))), ~vec2<i32>(2147483647i, var_0.a.c.a.x) >> (firstTrailingBit(select(u_input.a.xy, vec2<u32>(22555u, 4294967295u), vec2<bool>(arg_1, arg_1))) % vec2<u32>(32u))), vec4<f32>(var_0.a.b.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1057f), _wgslsmith_f_op_f32(select(187f, _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(10639u, 19u)])), arg_1)), arg_1)), _wgslsmith_f_op_f32(select(-285f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), false)), var_1.a.c.d), global4[_wgslsmith_index_u32(abs(4294967295u & global1[_wgslsmith_index_u32(4294967295u, 27u)]), 19u)], var_1.a.c.c);
    global2 = array<Struct_1, 9>();
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(524f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(ceil(1366f)))), var_1.a.b.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1818f - global4[_wgslsmith_index_u32(45373u, 19u)]))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(max(~global3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-11719i, -57595i, -2147483647i), vec3<i32>(2147483647i, -2683i, u_input.b))), u_input.b) >> (_wgslsmith_div_u32(25823u, ~_wgslsmith_div_u32(25498u, global1[_wgslsmith_index_u32(0u, 27u)])) % 32u), -10215i);
    let var_1 = 94950u;
    var var_2 = global4[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 18736u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), u_input.a.yx)))), 19u)];
    let var_3 = Struct_5(Struct_2((u_input.a.yz | u_input.a.zz) << (vec2<u32>(1u, ~4294967295u) % vec2<u32>(32u)), Struct_1(-select(vec2<i32>(var_0, u_input.b), vec2<i32>(var_0, var_0), arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(43533u, 19u)], 346f, arg_0.x, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60460u, 27u)], 19u)])) * _wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_1(vec2<i32>(0i, -9494i), vec4<f32>(-1906f, global4[_wgslsmith_index_u32(var_1, 19u)], 685f, -1143f), arg_0.x, 1204f)), true, vec3<f32>(arg_0.x, -2000f, 1766f), 14835u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 19u)]), arg_0.x), arg_0.x), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55431u, 27u)], 27u)], 28195u, var_1, u_input.a.x), vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(49339u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)])), select(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 27u)], 0u, global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec4<u32>(u_input.a.x, 0u, 5072u, u_input.a.x), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)))), 9u)]));
    var var_4 = vec2<bool>(arg_1.x, !all(vec3<bool>(arg_1.x | arg_1.x, arg_1.x | arg_1.x, arg_1.x || true)));
    return Struct_4(Struct_1(var_3.a.b.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -755f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_3.a.b.d, arg_0.x)))), -1013f, -754f), -661f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f)))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.zz) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -185f), global4[_wgslsmith_index_u32(0u, 19u)])), !select(vec2<bool>(true, true), vec2<bool>(true, global1[_wgslsmith_index_u32(32532u, 27u)] <= 55255u), true));
    let var_1 = -(79858i >> (max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)], ~(~global1[_wgslsmith_index_u32(108868u, 27u)])) % 32u));
    global0 = array<Struct_5, 12>();
    let var_2 = !all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), all(vec4<bool>(false, true, true, false))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(0u, 27u)]), vec2<u32>(u_input.a.x, u_input.a.x)), 27u)] < countOneBits(13292u)));
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(var_0.a.b.yy * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2705f + 335f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1600f)))))), vec2<bool>(any(vec2<bool>(var_2 & false, !var_2)), ~(~global1[_wgslsmith_index_u32(51403u, 27u)]) == _wgslsmith_add_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 9062u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 34454u), u_input.a)))).a;
    return -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.a.x, -2147483647i, 314i, u_input.b), vec4<i32>(-2147483647i, var_1, u_input.b, var_1)), -37706i), countOneBits(vec4<i32>(-arg_0.a.x, var_3.a.x, var_0.a.a.x, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, all(vec4<bool>(true, !(u_input.b < 0i), select(true, true, global3.x > u_input.b), true)), true);
    global0 = array<Struct_5, 12>();
    global0 = array<Struct_5, 12>();
    global3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(global3.x, 0i ^ (u_input.b >> (global1[_wgslsmith_index_u32(u_input.a.x, 27u)] % 32u))), ~vec2<i32>(select(-2147483647i, 19267i, true), u_input.b), -abs(abs(vec2<i32>(global3.x, 69951i)))) ^ reverseBits(max(vec2<i32>(func_1(Struct_1(vec2<i32>(2147483647i, u_input.b), vec4<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 19u)], global4[_wgslsmith_index_u32(0u, 19u)], 551f, global4[_wgslsmith_index_u32(u_input.a.x, 19u)]), global4[_wgslsmith_index_u32(1u, 19u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], 19u)]), global4[_wgslsmith_index_u32(4294967295u, 19u)]), -2147483647i), ~(~vec2<i32>(-1i, 1i))));
    global2 = array<Struct_1, 9>();
    let var_1 = Struct_1(countOneBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(global3.x, u_input.b)), vec2<i32>(1i, 0i), ~vec2<i32>(u_input.b, -3120i)), vec2<i32>(-1i, u_input.b), min(vec2<i32>(global3.x, global3.x), ~vec2<i32>(-1i, 0i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 19u)], 1260f), vec2<bool>(var_0.x, false)).a.c, _wgslsmith_f_op_f32(996f + 1456f), _wgslsmith_f_op_f32(524f * -1000f), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 19u)])))), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 27u)] | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], 27u)], 27u)]), _wgslsmith_add_u32(60459u, u_input.a.x) << (8414u % 32u)), 19u)], -533f), -1000f);
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(32759u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 27u)], global1[_wgslsmith_index_u32(1u, 27u)], var_0.x), 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)]), u_input.a.x), 27u)], 1u, max(1u, _wgslsmith_add_u32(1u, u_input.a.x ^ global1[_wgslsmith_index_u32(u_input.a.x, 27u)]))), ~select(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1865u), vec4<u32>(11991u, global1[_wgslsmith_index_u32(37569u, 27u)], 0u, 18118u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], u_input.a.x, global1[_wgslsmith_index_u32(89057u, 27u)], 81721u) >> (vec4<u32>(0u, 84621u, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], u_input.a.x) % vec4<u32>(32u)), vec4<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], 0u), abs(vec4<u32>(global1[_wgslsmith_index_u32(1u, 27u)], u_input.a.x, 0u, 4294967295u))), !select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x))));
    global2 = array<Struct_1, 9>();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b.xyx * var_1.b.zwz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(616f)) + _wgslsmith_f_op_f32(-var_3.x)))));
}

