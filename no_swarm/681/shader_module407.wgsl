struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-1000f, 1000f), vec2<f32>(-505f, -1268f), vec2<f32>(822f, 450f), vec2<f32>(-1242f, -329f), vec2<f32>(168f, -618f), vec2<f32>(1000f, -434f), vec2<f32>(181f, -145f), vec2<f32>(370f, 1000f), vec2<f32>(-834f, 1013f), vec2<f32>(1042f, 359f), vec2<f32>(-359f, -770f), vec2<f32>(430f, 1365f), vec2<f32>(-1933f, -1197f), vec2<f32>(1148f, 2613f), vec2<f32>(1522f, -480f), vec2<f32>(-255f, -1000f), vec2<f32>(-1000f, 1770f), vec2<f32>(-1055f, 939f), vec2<f32>(180f, -1850f), vec2<f32>(1401f, 906f), vec2<f32>(1558f, 515f), vec2<f32>(-1221f, 1036f), vec2<f32>(-602f, 156f), vec2<f32>(1689f, -455f), vec2<f32>(-401f, 977f), vec2<f32>(434f, 284f), vec2<f32>(1566f, 1453f), vec2<f32>(134f, -382f), vec2<f32>(1604f, 681f), vec2<f32>(-424f, 1066f), vec2<f32>(118f, 1000f));

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(true, 41248i, -40621i, Struct_1(20331i, i32(-2147483648), 4294967295u, -41842i), i32(-2147483648)), Struct_2(false, 17i, i32(-2147483648), Struct_1(1i, 11405i, 111302u, -92036i), 22260i), Struct_2(true, -1i, 79699i, Struct_1(6822i, 2147483647i, 4294967295u, 0i), -50949i), Struct_2(true, i32(-2147483648), 890i, Struct_1(38656i, -26987i, 1u, 2147483647i), -1i), Struct_2(true, -1i, 7046i, Struct_1(-38333i, -48183i, 2555u, 1i), -63621i), Struct_2(false, 0i, 2687i, Struct_1(0i, 27175i, 62316u, 75718i), i32(-2147483648)), Struct_2(false, -40688i, -29589i, Struct_1(-1i, -36353i, 1u, -16603i), 0i), Struct_2(false, 2147483647i, i32(-2147483648), Struct_1(-1i, i32(-2147483648), 1u, -1i), 2147483647i), Struct_2(true, 13915i, 33717i, Struct_1(2147483647i, -1i, 4294967295u, 0i), 27992i), Struct_2(false, 9269i, i32(-2147483648), Struct_1(1i, -3362i, 4294967295u, -1i), 2147483647i), Struct_2(false, i32(-2147483648), -34075i, Struct_1(30006i, -24158i, 1u, -38281i), -1i), Struct_2(true, 26732i, 12748i, Struct_1(0i, i32(-2147483648), 46529u, 1i), -71650i), Struct_2(false, 13515i, -1i, Struct_1(0i, -72581i, 1147u, i32(-2147483648)), 11049i), Struct_2(true, -1i, 2147483647i, Struct_1(12763i, -39163i, 4294967295u, 8246i), i32(-2147483648)), Struct_2(false, -1i, 17288i, Struct_1(2147483647i, 43635i, 10604u, 0i), 0i), Struct_2(true, 1i, 2147483647i, Struct_1(-38002i, 38125i, 4294967295u, 3076i), i32(-2147483648)), Struct_2(true, 1i, 2147483647i, Struct_1(-23251i, 103245i, 49302u, -42039i), -78300i), Struct_2(false, -1i, i32(-2147483648), Struct_1(-2513i, 1i, 33554u, 1i), -1i), Struct_2(true, 1i, 21211i, Struct_1(5596i, 1i, 31219u, 1i), -10328i), Struct_2(true, 25356i, 13873i, Struct_1(i32(-2147483648), 0i, 0u, 1i), 7413i), Struct_2(true, 2147483647i, 2147483647i, Struct_1(2147483647i, -25557i, 17736u, -11255i), 1i), Struct_2(true, 2147483647i, 2147483647i, Struct_1(-39884i, -10441i, 1u, 0i), -45579i), Struct_2(false, -23282i, 0i, Struct_1(28362i, i32(-2147483648), 15121u, 1i), -27316i), Struct_2(true, 0i, 1i, Struct_1(29450i, -2934i, 24646u, -2360i), -1i), Struct_2(false, 0i, -5077i, Struct_1(-1i, 0i, 4294967295u, -10038i), i32(-2147483648)), Struct_2(false, -13989i, -57933i, Struct_1(-1i, 0i, 0u, 2147483647i), 1i), Struct_2(true, 29913i, 2147483647i, Struct_1(i32(-2147483648), -23933i, 40132u, 0i), -1i), Struct_2(true, i32(-2147483648), 2147483647i, Struct_1(i32(-2147483648), 2147483647i, 27490u, 0i), 41482i), Struct_2(false, -5974i, 34069i, Struct_1(-19414i, -7415i, 46108u, 0i), -1080i), Struct_2(true, 11665i, 31606i, Struct_1(-1i, -1i, 5434u, 56728i), 37396i));

var<private> global3: array<u32, 6>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> u32 {
    let var_0 = -_wgslsmith_mult_vec2_i32(vec2<i32>(0i, arg_1), -vec2<i32>(2147483647i, _wgslsmith_add_i32(arg_1, 68767i)));
    let var_1 = vec3<bool>(true, all(!select(select(vec3<bool>(global0[_wgslsmith_index_u32(31773u, 5u)], false, global0[_wgslsmith_index_u32(u_input.d, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], true), true), !vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.d, 5u)]), false)), true);
    global0 = array<bool, 5>();
    let var_2 = vec2<u32>(0u, u_input.d);
    global0 = array<bool, 5>();
    return global3[_wgslsmith_index_u32(12094u, 6u)];
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_div_vec2_u32(countOneBits(~vec2<u32>(39309u, abs(global3[_wgslsmith_index_u32(4294967295u, 6u)]))), vec2<u32>(arg_0.d.c, u_input.d));
    var var_1 = vec3<i32>(2147483647i, _wgslsmith_div_i32(u_input.a, u_input.c), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.b, 2147483647i, -8912i, u_input.b.x), vec4<i32>(-33819i, arg_0.e, u_input.a, 9970i) << (vec4<u32>(arg_0.d.c, 4294967295u, var_0.x, 55219u) % vec4<u32>(32u)))));
    global1 = array<vec2<f32>, 31>();
    global0 = array<bool, 5>();
    global3 = array<u32, 6>();
    return 1u;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_5, arg_3: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_add_u32(global3[_wgslsmith_index_u32(firstTrailingBit(select(~u_input.d, _wgslsmith_mult_u32(func_3(Struct_2(false, 25821i, -21861i, Struct_1(7980i, 1i, global3[_wgslsmith_index_u32(50611u, 6u)], u_input.c), u_input.b.x), arg_2.b, true), 0u), true)), 6u)], ~countOneBits(u_input.d));
    global2 = array<Struct_2, 30>();
    var var_1 = Struct_4(arg_2.c.d, arg_2.c.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-352f, arg_2.b, arg_2.b), vec3<f32>(-769f, 606f, 1152f))))));
    global3 = array<u32, 6>();
    let var_2 = vec2<u32>(0u, arg_2.c.d.c);
    return countOneBits(reverseBits(firstTrailingBit(0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1131f))), -127f) * vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-100f * -677f)), -630f)), -u_input.b.x);
    let var_1 = u_input.b.zx;
    global3 = array<u32, 6>();
    let var_2 = all(!select(!(!vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(u_input.d, 5u)])), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(func_2(true, vec3<u32>(33691u, u_input.d, 0u), Struct_5(true, -226f, global2[_wgslsmith_index_u32(u_input.d, 30u)]), vec4<i32>(u_input.a, 0i, u_input.a, -2147483647i)), 5u)]), select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(52515u, 5u)], false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(104373u, 6u)], 5u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(57870u, 6u)], 6u)], 5u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], false)), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 5u)], true, true, true), all(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 5u)])))));
    var var_3 = select(min(vec2<i32>(-109924i, -(var_1.x & var_1.x)), u_input.b.zz), ~_wgslsmith_mult_vec2_i32(u_input.b.zz << (vec2<u32>(4294967295u, 41080u) % vec2<u32>(32u)), vec2<i32>(1i, 1i)) ^ _wgslsmith_sub_vec2_i32(u_input.b.yx, select(u_input.b.zx, firstTrailingBit(vec2<i32>(var_1.x, var_1.x)), !vec2<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 6u)], 5u)], true))), any(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(58568u, 6u)], 5u)], false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~(~vec3<u32>(19063u, 36804u, 54584u)), select(~(~vec3<u32>(u_input.d, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)], 4294967295u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(90807u, 47689u, global3[_wgslsmith_index_u32(54201u, 6u)]), ~vec3<u32>(7572u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12093u, 6u)], 6u)], 4294967295u)), vec3<bool>(1u >= u_input.d, true, true))), -40737i, select(_wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(u_input.a >> (global3[_wgslsmith_index_u32(6395u, 6u)] % 32u), 2960i, -22239i), vec3<i32>(countOneBits(-2147483647i), 0i, -1i)), _wgslsmith_clamp_vec3_i32(abs(u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 2147483647i, var_3.x), select(vec3<i32>(21575i, -10972i, 13770i), vec3<i32>(0i, -49480i, var_3.x), vec3<bool>(true, false, true)), vec3<i32>(u_input.a, -1i, u_input.b.x)), select(vec3<i32>(var_1.x, u_input.c, 20214i) & vec3<i32>(u_input.b.x, 0i, u_input.a), vec3<i32>(32550i, var_3.x, 1i) ^ vec3<i32>(-3017i, u_input.b.x, var_1.x), !vec3<bool>(false, true, var_2))), select(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26134u, 6u)], 5u)], false)), vec3<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 5u)])), false, !var_2), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 5u)] || false, var_2))), ~u_input.d);
}

