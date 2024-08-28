struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(Struct_2(vec2<f32>(1439f, -744f), false), Struct_3(vec2<f32>(257f, 1000f), vec2<u32>(4676u, 87652u), Struct_2(vec2<f32>(1078f, -762f), true), Struct_2(vec2<f32>(-257f, 439f), false), vec4<bool>(false, true, false, true)), true), Struct_4(Struct_2(vec2<f32>(331f, -352f), false), Struct_3(vec2<f32>(490f, -664f), vec2<u32>(1u, 50643u), Struct_2(vec2<f32>(900f, 1336f), true), Struct_2(vec2<f32>(2378f, -1553f), true), vec4<bool>(true, true, true, false)), false), Struct_4(Struct_2(vec2<f32>(1459f, 1587f), false), Struct_3(vec2<f32>(346f, 1533f), vec2<u32>(4294967295u, 0u), Struct_2(vec2<f32>(-1367f, 845f), true), Struct_2(vec2<f32>(1000f, -625f), false), vec4<bool>(false, false, true, false)), true), Struct_4(Struct_2(vec2<f32>(1376f, 1000f), false), Struct_3(vec2<f32>(-183f, 237f), vec2<u32>(13604u, 7288u), Struct_2(vec2<f32>(-1000f, 772f), false), Struct_2(vec2<f32>(-1041f, -607f), true), vec4<bool>(true, false, true, false)), true), Struct_4(Struct_2(vec2<f32>(664f, -1711f), false), Struct_3(vec2<f32>(-1228f, -3851f), vec2<u32>(28492u, 45158u), Struct_2(vec2<f32>(1275f, 1715f), false), Struct_2(vec2<f32>(-575f, -1696f), true), vec4<bool>(false, true, true, false)), false), Struct_4(Struct_2(vec2<f32>(1977f, -849f), false), Struct_3(vec2<f32>(-525f, -736f), vec2<u32>(1u, 16123u), Struct_2(vec2<f32>(1374f, 1509f), true), Struct_2(vec2<f32>(215f, 1586f), false), vec4<bool>(false, false, false, true)), false), Struct_4(Struct_2(vec2<f32>(862f, -2071f), false), Struct_3(vec2<f32>(686f, 668f), vec2<u32>(0u, 2363u), Struct_2(vec2<f32>(-1374f, 833f), false), Struct_2(vec2<f32>(-437f, 170f), true), vec4<bool>(false, false, true, true)), false), Struct_4(Struct_2(vec2<f32>(432f, -643f), false), Struct_3(vec2<f32>(-1134f, 1127f), vec2<u32>(56785u, 51235u), Struct_2(vec2<f32>(794f, 750f), true), Struct_2(vec2<f32>(1089f, -741f), true), vec4<bool>(false, false, false, true)), true), Struct_4(Struct_2(vec2<f32>(1000f, -1120f), false), Struct_3(vec2<f32>(290f, 761f), vec2<u32>(1u, 0u), Struct_2(vec2<f32>(1866f, 1685f), false), Struct_2(vec2<f32>(-787f, 551f), false), vec4<bool>(false, true, false, false)), true), Struct_4(Struct_2(vec2<f32>(-593f, -788f), true), Struct_3(vec2<f32>(1484f, 810f), vec2<u32>(337u, 4294967295u), Struct_2(vec2<f32>(-444f, 1387f), false), Struct_2(vec2<f32>(-959f, 652f), true), vec4<bool>(true, true, true, false)), true), Struct_4(Struct_2(vec2<f32>(703f, -559f), false), Struct_3(vec2<f32>(1137f, -701f), vec2<u32>(49725u, 4294967295u), Struct_2(vec2<f32>(-688f, -778f), false), Struct_2(vec2<f32>(1711f, 1863f), true), vec4<bool>(false, false, true, false)), true), Struct_4(Struct_2(vec2<f32>(2602f, -191f), true), Struct_3(vec2<f32>(-933f, 461f), vec2<u32>(1u, 0u), Struct_2(vec2<f32>(1587f, 434f), false), Struct_2(vec2<f32>(1010f, 405f), false), vec4<bool>(false, true, false, false)), true), Struct_4(Struct_2(vec2<f32>(1142f, -1526f), false), Struct_3(vec2<f32>(-506f, 1000f), vec2<u32>(1u, 4022u), Struct_2(vec2<f32>(-770f, -442f), true), Struct_2(vec2<f32>(-259f, 1444f), false), vec4<bool>(true, true, true, true)), true), Struct_4(Struct_2(vec2<f32>(751f, -2154f), true), Struct_3(vec2<f32>(981f, 1410f), vec2<u32>(14540u, 45776u), Struct_2(vec2<f32>(-723f, 2586f), false), Struct_2(vec2<f32>(-1593f, -661f), true), vec4<bool>(false, true, false, false)), false));

var<private> global1: array<Struct_2, 15>;

var<private> global2: array<vec3<f32>, 23>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1.b.x;
    var var_1 = ~1i;
    global0 = array<Struct_4, 14>();
    let var_2 = !arg_0;
    let var_3 = Struct_2(arg_1.b.xy, true);
    return _wgslsmith_f_op_f32(-arg_1.b.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: u32, arg_3: vec3<u32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1368f, arg_1.b.c.a.x), _wgslsmith_f_op_f32(-449f + -1365f))), arg_1.a.a.x)), -arg_0.x <= 19247i);
    return 4294967295u;
}

fn func_3() -> i32 {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(~(~1i), -14342i), -1i, _wgslsmith_sub_i32(1i, abs(4678i)));
    global2 = array<vec3<f32>, 23>();
    var var_1 = 787f;
    var var_2 = true;
    var var_3 = global1[_wgslsmith_index_u32(u_input.c, 15u)];
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-194f, 565f, _wgslsmith_f_op_f32(-1029f - -402f), _wgslsmith_f_op_f32(func_1(false, Struct_1(vec3<i32>(-1i, -1i, 2147483647i), vec4<f32>(108f, -1697f, 381f, -2557f), vec3<i32>(-1i, 1i, 2147483647i))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(259f, -1095f, -699f, 876f) - vec4<f32>(3154f, -1294f, -921f, 1418f)), vec4<f32>(-1321f, 1469f, -1388f, 874f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(605f, 551f, -122f, -975f) * vec4<f32>(-280f, -850f, 2361f, -1000f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(698f, -1000f, -623f, -234f), vec4<f32>(814f, -1000f, -975f, 153f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-670f, 646f, 1617f, 541f))))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(947f, 1580f), 2698f, _wgslsmith_f_op_f32(-1000f * -254f), _wgslsmith_f_op_f32(floor(961f))) + vec4<f32>(_wgslsmith_f_op_f32(1661f + -818f), 1708f, -682f, _wgslsmith_f_op_f32(459f * -774f)))))));
    var var_1 = ~(~vec3<u32>(107416u, _wgslsmith_mod_u32(34896u & u_input.a, u_input.c), ~_wgslsmith_div_u32(1u, 1u)));
    let var_2 = min(vec3<i32>(~1i, -9698i, 1i << (~func_2(vec3<i32>(-2147483647i, 32637i, 16240i), Struct_4(global1[_wgslsmith_index_u32(4294967295u, 15u)], Struct_3(vec2<f32>(var_0.x, -1115f), var_1.xx, Struct_2(var_0.xz, true), global1[_wgslsmith_index_u32(var_1.x, 15u)], vec4<bool>(false, true, false, false)), true), 84156u, vec3<u32>(0u, u_input.a, u_input.c)) % 32u)), vec3<i32>(47433i, _wgslsmith_mult_i32(16240i, _wgslsmith_clamp_i32(-9792i, 1i, 1i) ^ 6900i), -_wgslsmith_add_i32(func_3(), -29011i)));
    var var_3 = var_2.yz;
    let var_4 = ~(_wgslsmith_div_u32(var_1.x, min(~u_input.c, abs(u_input.c))) ^ var_1.x);
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32((~vec3<u32>(var_1.x, var_1.x, 4294967295u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(var_4, var_4, var_1.x), vec3<u32>(u_input.c, var_1.x, u_input.a)) % vec3<u32>(32u))) >> (select(~vec3<u32>(36000u, u_input.c, var_1.x), vec3<u32>(var_1.x, u_input.b, 1u), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 32662u, u_input.a), countOneBits(vec3<u32>(80911u, u_input.c, 41152u)))), ~vec4<i32>(var_3.x, ~var_2.x, -abs(0i), ~var_2.x), 46618u);
}

