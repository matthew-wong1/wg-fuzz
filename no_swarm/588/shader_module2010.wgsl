struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 26> = array<u32, 26>(16622u, 0u, 3016u, 42381u, 9242u, 48504u, 37539u, 25099u, 0u, 23708u, 4294967295u, 1u, 4294967295u, 44541u, 4294967295u, 83644u, 4294967295u, 0u, 41239u, 55316u, 15344u, 0u, 1u, 1u, 4294967295u, 4294967295u);

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(false, 4294967295u, vec4<f32>(634f, 1177f, 281f, 1679f), i32(-2147483648)), vec2<f32>(-236f, 427f), vec4<i32>(i32(-2147483648), 22527i, 779i, -18588i)), Struct_2(Struct_1(true, 1u, vec4<f32>(-178f, 335f, -1518f, -627f), -1i), vec2<f32>(-671f, 984f), vec4<i32>(1i, 0i, 0i, -34365i)), Struct_2(Struct_1(true, 4294967295u, vec4<f32>(-1397f, -2434f, -470f, 1743f), -1i), vec2<f32>(1261f, -1000f), vec4<i32>(i32(-2147483648), 1i, 10315i, -2898i)), Struct_2(Struct_1(true, 0u, vec4<f32>(-1155f, -1148f, 1672f, 1062f), -14990i), vec2<f32>(538f, 102f), vec4<i32>(22699i, 2147483647i, -1i, 2147483647i)), Struct_2(Struct_1(false, 5752u, vec4<f32>(-1933f, 1000f, 931f, -1000f), -7504i), vec2<f32>(-2685f, 1145f), vec4<i32>(-298i, 18899i, -1i, 25602i)), Struct_2(Struct_1(true, 4294967295u, vec4<f32>(-292f, 277f, -1089f, -929f), -1i), vec2<f32>(-444f, 1798f), vec4<i32>(9422i, -55013i, i32(-2147483648), -21929i)), Struct_2(Struct_1(false, 10059u, vec4<f32>(-185f, 591f, 2113f, 1038f), 1i), vec2<f32>(870f, 1750f), vec4<i32>(i32(-2147483648), 1348i, -27862i, 30451i)), Struct_2(Struct_1(false, 28156u, vec4<f32>(-975f, -312f, -557f, -742f), 907i), vec2<f32>(1732f, 786f), vec4<i32>(17083i, i32(-2147483648), 35210i, 2147483647i)), Struct_2(Struct_1(true, 110133u, vec4<f32>(130f, -382f, 1235f, 1000f), -1i), vec2<f32>(376f, 1345f), vec4<i32>(2147483647i, -23180i, 0i, 1i)), Struct_2(Struct_1(true, 0u, vec4<f32>(-381f, 874f, 1320f, 1944f), -1i), vec2<f32>(842f, 304f), vec4<i32>(7060i, -21133i, 0i, 0i)), Struct_2(Struct_1(true, 12860u, vec4<f32>(629f, 630f, 1247f, -1000f), 1i), vec2<f32>(1263f, 1000f), vec4<i32>(1053i, 1i, 24291i, -54826i)), Struct_2(Struct_1(false, 70930u, vec4<f32>(-223f, -1913f, 1759f, 626f), -41284i), vec2<f32>(-942f, -175f), vec4<i32>(2147483647i, 2147483647i, 0i, -17526i)), Struct_2(Struct_1(true, 1u, vec4<f32>(1000f, 1468f, 1000f, -179f), -1i), vec2<f32>(-2234f, -591f), vec4<i32>(2147483647i, -18038i, -19867i, 54395i)), Struct_2(Struct_1(true, 7836u, vec4<f32>(754f, -1174f, 515f, 563f), 11533i), vec2<f32>(1327f, 488f), vec4<i32>(36965i, -10453i, -999i, -1i)), Struct_2(Struct_1(true, 1u, vec4<f32>(1000f, 772f, -870f, -781f), 27777i), vec2<f32>(905f, -704f), vec4<i32>(-7896i, 68318i, 2147483647i, 17315i)), Struct_2(Struct_1(false, 12684u, vec4<f32>(-542f, -413f, 414f, 1074f), 35679i), vec2<f32>(441f, 161f), vec4<i32>(2147483647i, 2147483647i, -11634i, -44021i)), Struct_2(Struct_1(true, 31828u, vec4<f32>(541f, -499f, -447f, 1357f), 2147483647i), vec2<f32>(1000f, 247f), vec4<i32>(-1i, 0i, 50758i, 28858i)), Struct_2(Struct_1(true, 72620u, vec4<f32>(-1793f, -334f, 1000f, 458f), -35514i), vec2<f32>(-1209f, 1542f), vec4<i32>(1i, 2147483647i, 4580i, 17024i)), Struct_2(Struct_1(false, 1u, vec4<f32>(676f, -1137f, 2550f, -656f), -35619i), vec2<f32>(1886f, 1000f), vec4<i32>(5600i, 22784i, -1i, 70304i)), Struct_2(Struct_1(true, 38775u, vec4<f32>(2389f, 939f, -1509f, -1060f), 2147483647i), vec2<f32>(-1000f, 1570f), vec4<i32>(23017i, -1i, 2515i, 0i)), Struct_2(Struct_1(false, 18291u, vec4<f32>(-1128f, 1256f, 186f, -1049f), 1i), vec2<f32>(-1055f, 478f), vec4<i32>(2147483647i, 2147483647i, 0i, 6258i)), Struct_2(Struct_1(false, 28394u, vec4<f32>(-1051f, 433f, -841f, 759f), -1i), vec2<f32>(375f, 197f), vec4<i32>(-1927i, -21986i, -42547i, -37624i)), Struct_2(Struct_1(true, 0u, vec4<f32>(-769f, 123f, 1000f, 1490f), 2147483647i), vec2<f32>(867f, 752f), vec4<i32>(-55369i, 2147483647i, -1i, i32(-2147483648))), Struct_2(Struct_1(true, 0u, vec4<f32>(-1138f, 451f, -374f, 1253f), -40642i), vec2<f32>(1428f, -1026f), vec4<i32>(4702i, -7544i, 2147483647i, 4439i)), Struct_2(Struct_1(true, 0u, vec4<f32>(-451f, 399f, -1000f, 1583f), 2147483647i), vec2<f32>(476f, -1582f), vec4<i32>(2147483647i, i32(-2147483648), -1945i, 52877i)), Struct_2(Struct_1(false, 5620u, vec4<f32>(-1261f, -1012f, -175f, 289f), 16020i), vec2<f32>(534f, -274f), vec4<i32>(2147483647i, 1i, -14511i, -26190i)), Struct_2(Struct_1(false, 26435u, vec4<f32>(140f, -743f, 1209f, -1000f), 2147483647i), vec2<f32>(-657f, 451f), vec4<i32>(i32(-2147483648), 60406i, -52999i, 59538i)), Struct_2(Struct_1(false, 0u, vec4<f32>(-881f, -598f, 1341f, 415f), 0i), vec2<f32>(1788f, 683f), vec4<i32>(-32225i, -1i, 25931i, 1i)), Struct_2(Struct_1(true, 61980u, vec4<f32>(1146f, 677f, -817f, -1000f), 0i), vec2<f32>(-463f, -1000f), vec4<i32>(i32(-2147483648), -331i, -1i, -1i)));

var<private> global3: array<f32, 32>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = !((7590u != _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a.b, global0.a.b, 32515u, 19830u), vec4<u32>(0u, global0.a.b, 24724u, u_input.c))) || (global4.a & global0.a.a));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(global0.c.x, ~firstTrailingBit(~(-7904i))), _wgslsmith_mod_i32(global4.d, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a | -1i, 21004i, ~63857i), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 4999i, 0i, global0.c.x), global0.c))));
    global3 = array<f32, 32>();
    let var_2 = Struct_2(Struct_1(true, ~abs(~4294967295u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-297f, 2956f, global0.a.c.x, global3[_wgslsmith_index_u32(u_input.b.x, 32u)])) - vec4<f32>(global3[_wgslsmith_index_u32(51837u, 32u)], global0.a.c.x, global0.b.x, global3[_wgslsmith_index_u32(39396u, 32u)])) - vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 32u)]), global0.a.c.x, global3[_wgslsmith_index_u32(firstLeadingBit(global4.b), 32u)], global0.a.c.x)), 1i), vec2<f32>(_wgslsmith_div_f32(1241f, _wgslsmith_div_f32(424f, 866f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14998u, 26u)] << (4294967295u % 32u), 32u)]))), global0.c);
    global0 = var_2;
    return ~abs(global0.a.b);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(~0u << (~func_3() % 32u), 29u)];
    var var_1 = global2[_wgslsmith_index_u32(1u, 29u)];
    global1 = array<u32, 26>();
    global4 = global0.a;
    var_0 = Struct_2(global0.a, arg_0, firstTrailingBit(~(vec4<i32>(29918i, 40871i, 28803i, 1i) ^ (global0.c >> (vec4<u32>(1u, global4.b, global4.b, 4294967295u) % vec4<u32>(32u))))));
    return global0.a;
}

fn func_1(arg_0: u32, arg_1: bool) -> bool {
    let var_0 = select(select(!(!vec2<bool>(true, global4.a)), select(!(!vec2<bool>(false, global0.a.a)), select(!vec2<bool>(global4.a, false), vec2<bool>(true, arg_1), !vec2<bool>(global4.a, true)), global4.a), global0.a.c.x >= global4.c.x), vec2<bool>(true, true), (any(select(vec2<bool>(global0.a.a, true), vec2<bool>(true, global4.a), vec2<bool>(global0.a.a, global0.a.a))) & ((global4.d ^ global4.d) != global0.c.x)) & global4.a);
    var var_1 = global0.b.x;
    var var_2 = global0.a;
    let var_3 = false;
    let var_4 = func_2(_wgslsmith_f_op_vec2_f32(select(global4.c.xx, _wgslsmith_f_op_vec2_f32(max(global0.a.c.wy, _wgslsmith_f_op_vec2_f32(-global4.c.zw))), select(var_0, select(vec2<bool>(true, true), select(vec2<bool>(false, global4.a), var_0, true), !var_0), var_3))));
    return global0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(global0.a.b, ~(~global1[_wgslsmith_index_u32(~global4.b >> ((9426u << (global0.a.b % 32u)) % 32u), 26u)]), 60048u);
    var var_1 = ~vec4<i32>(u_input.a, -_wgslsmith_mult_i32(u_input.a, 0i) >> (1u % 32u), global4.d, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global0.a.d, -1i, global0.c.x, global0.c.x)), global0.c));
    var var_2 = vec4<bool>(any(select(select(vec2<bool>(true, false), !vec2<bool>(global4.a, true), true), select(!vec2<bool>(true, global4.a), select(vec2<bool>(global4.a, true), vec2<bool>(global4.a, global0.a.a), true), vec2<bool>(false, global0.a.a)), false)), !func_1(~43371u, !(4294967295u < global1[_wgslsmith_index_u32(4294967295u, 26u)])), true, !all(vec2<bool>(true, true)));
    global0 = Struct_2(Struct_1(!(_wgslsmith_f_op_f32(-global0.b.x) >= _wgslsmith_f_op_f32(select(-1000f, 296f, global4.a))), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(42667u), _wgslsmith_sub_u32(0u, u_input.b.x)), 26u)], min(global4.b, 21290u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(68658u, 26u)], 26u)] % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.a.c, vec4<f32>(global0.b.x, -1803f, global3[_wgslsmith_index_u32(1u, 32u)], -375f), -7994i > global4.d))), ~min(-28092i, -1i)), vec2<f32>(global4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1948f, -907f, true)))), vec4<i32>(var_1.x << (global4.b % 32u), ~(-23157i), -var_1.x, u_input.a));
    let var_3 = ~(~42660u) >> (~select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.b, 0u, 1u, global4.b) >> (vec4<u32>(global4.b, global4.b, 0u, 47121u) % vec4<u32>(32u)), select(vec4<u32>(4294967295u, global0.a.b, global4.b, 4294967295u), vec4<u32>(33704u, 50226u, 0u, global4.b), false)), 26u)], 26u)], _wgslsmith_add_u32(~4494u, _wgslsmith_sub_u32(61571u, u_input.b.x)), all(!vec2<bool>(global0.a.a, false))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.b.zz), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global4.b, global4.b), u_input.b.xx)), 407f, -341f, ~abs(~u_input.b), ~global0.a.d);
}

