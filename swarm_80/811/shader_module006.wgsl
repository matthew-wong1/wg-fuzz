struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: Struct_4,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -11989i;

var<private> global1: Struct_2;

var<private> global2: Struct_3;

var<private> global3: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec3<i32>(-32366i, 0i, 1548i), 12214i, Struct_2(vec2<f32>(196f, -567f), i32(-2147483648), Struct_1(vec2<i32>(-1i, -1i), 4294967295u, -56219i)), false), Struct_3(vec3<i32>(33398i, -33652i, 0i), 1347i, Struct_2(vec2<f32>(-417f, -1048f), 26178i, Struct_1(vec2<i32>(-68503i, i32(-2147483648)), 14546u, 12700i)), true), Struct_3(vec3<i32>(-59088i, -1i, -1i), -8661i, Struct_2(vec2<f32>(1153f, 605f), 41395i, Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 4294967295u, -33131i)), true), Struct_3(vec3<i32>(2147483647i, i32(-2147483648), -1i), 0i, Struct_2(vec2<f32>(-2028f, 2449f), 1i, Struct_1(vec2<i32>(-8709i, 2147483647i), 46356u, -1i)), false), Struct_3(vec3<i32>(2147483647i, 26569i, -3678i), -12421i, Struct_2(vec2<f32>(1073f, 531f), 24072i, Struct_1(vec2<i32>(18658i, i32(-2147483648)), 3224u, -15729i)), true), Struct_3(vec3<i32>(-38067i, i32(-2147483648), 1i), 2147483647i, Struct_2(vec2<f32>(-405f, -915f), -30277i, Struct_1(vec2<i32>(-1i, -7059i), 5522u, 1518i)), true), Struct_3(vec3<i32>(i32(-2147483648), -60008i, 1i), i32(-2147483648), Struct_2(vec2<f32>(994f, -434f), 1i, Struct_1(vec2<i32>(-1i, 0i), 40830u, 40933i)), true), Struct_3(vec3<i32>(36444i, -35125i, 0i), -23384i, Struct_2(vec2<f32>(1000f, 318f), 1i, Struct_1(vec2<i32>(-27252i, 17977i), 0u, 0i)), true), Struct_3(vec3<i32>(1i, 0i, 1i), 11509i, Struct_2(vec2<f32>(-1000f, -442f), 55248i, Struct_1(vec2<i32>(-12072i, 0i), 99403u, -54194i)), false), Struct_3(vec3<i32>(1i, -33178i, 47163i), 1i, Struct_2(vec2<f32>(-549f, -1452f), 62722i, Struct_1(vec2<i32>(2147483647i, 78163i), 4294967295u, i32(-2147483648))), true), Struct_3(vec3<i32>(32852i, -21423i, 19806i), 28835i, Struct_2(vec2<f32>(-1154f, 189f), 1i, Struct_1(vec2<i32>(-47249i, 0i), 4119u, 65845i)), false), Struct_3(vec3<i32>(22744i, 23010i, 1i), 42271i, Struct_2(vec2<f32>(146f, -594f), 0i, Struct_1(vec2<i32>(-41041i, 2147483647i), 1u, -26890i)), true), Struct_3(vec3<i32>(i32(-2147483648), -15827i, 49809i), 1i, Struct_2(vec2<f32>(-364f, -658f), 0i, Struct_1(vec2<i32>(23587i, -12901i), 4294967295u, -1i)), true), Struct_3(vec3<i32>(-16307i, 13901i, -1i), 55760i, Struct_2(vec2<f32>(-529f, 1328f), i32(-2147483648), Struct_1(vec2<i32>(-1i, 27711i), 1u, 0i)), false), Struct_3(vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), -555i, Struct_2(vec2<f32>(-924f, -1250f), 12124i, Struct_1(vec2<i32>(0i, 162i), 1u, 1437i)), true), Struct_3(vec3<i32>(67133i, 2147483647i, 1i), 2147483647i, Struct_2(vec2<f32>(-677f, 325f), 24435i, Struct_1(vec2<i32>(-45641i, 65861i), 1u, 12959i)), true), Struct_3(vec3<i32>(1i, -10046i, -20138i), -13877i, Struct_2(vec2<f32>(1861f, 140f), 26595i, Struct_1(vec2<i32>(-1i, 18465i), 0u, 0i)), false));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> vec2<i32> {
    global3 = array<Struct_3, 17>();
    let var_0 = Struct_2(global2.c.a, global2.b, Struct_1(arg_1.c.c.a, global2.c.c.b, ~abs(1i)));
    let var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(0i >> (arg_2.c.b % 32u), 0i), global1.c.a), arg_2.c.a);
    var var_2 = select(vec4<bool>(global2.d, (_wgslsmith_mod_i32(-32718i, 66933i) | _wgslsmith_dot_vec4_i32(vec4<i32>(46386i, arg_2.b, -5862i, -2147483647i), vec4<i32>(var_1.x, arg_1.b, 0i, 0i))) <= global2.b, true, true), select(vec4<bool>(var_0.c.b == 1u, arg_1.d, true, true), select(select(select(vec4<bool>(arg_1.d, arg_1.d, arg_1.d, global2.d), vec4<bool>(arg_1.d, arg_1.d, global2.d, global2.d), vec4<bool>(arg_1.d, false, true, arg_1.d)), !vec4<bool>(false, global2.d, arg_1.d, global2.d), !vec4<bool>(arg_1.d, arg_1.d, global2.d, global2.d)), select(select(vec4<bool>(false, global2.d, true, arg_1.d), vec4<bool>(global2.d, global2.d, arg_1.d, true), global2.d), vec4<bool>(true, arg_1.d, arg_1.d, true), vec4<bool>(false, arg_1.d, true, true)), !vec4<bool>(arg_1.d, true, false, arg_1.d)), !(!select(vec4<bool>(true, arg_1.d, arg_1.d, false), vec4<bool>(arg_1.d, true, false, arg_1.d), vec4<bool>(arg_1.d, global2.d, false, false)))), (arg_1.d && false) | arg_1.d);
    let var_3 = -286f;
    return _wgslsmith_sub_vec2_i32(arg_2.c.a, global1.c.a);
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = Struct_5(38423i, Struct_1(firstTrailingBit(func_3(_wgslsmith_f_op_f32(global2.c.a.x + 1286f), Struct_3(global2.a, global1.c.a.x, Struct_2(vec2<f32>(global1.a.x, -224f), global2.a.x, Struct_1(global1.c.a, 12458u, 2147483647i)), global2.d), global2.c)), 4980u, -37946i), Struct_4(_wgslsmith_sub_vec2_u32(u_input.a, _wgslsmith_clamp_vec2_u32(u_input.a, ~vec2<u32>(arg_0, global1.c.b), max(u_input.a, vec2<u32>(arg_0, global1.c.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1502f, -1332f, global1.a.x, 696f)) - vec4<f32>(_wgslsmith_f_op_f32(397f - -538f), _wgslsmith_f_op_f32(select(global2.c.a.x, 898f, false)), _wgslsmith_f_op_f32(floor(global1.a.x)), global2.c.a.x)), global2.c), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, 1i, global2.a.x, 0i) >> (select(vec4<u32>(u_input.a.x, 0u, 4294967295u, global2.c.c.b), vec4<u32>(u_input.a.x, 0u, 54803u, 1u), vec4<bool>(global2.d, true, global2.d, true)) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(global1.c.a.x, 1i, -21636i, global2.a.x)) >> (firstTrailingBit(vec4<u32>(arg_0, 16498u, global1.c.b, 0u)) % vec4<u32>(32u))), countOneBits(~vec4<i32>(10227i, 1i, 48643i, global2.b))), ~_wgslsmith_dot_vec2_i32(global1.c.a, ~global1.c.a));
    var var_1 = 1u;
    let var_2 = Struct_5(global1.b, var_0.b, var_0.c, _wgslsmith_div_i32(var_0.a << (1u % 32u), 2147483647i), global1.b ^ firstTrailingBit(global1.b));
    let var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(global2.a, global2.a), global2.a);
    let var_4 = var_2.c;
    return i32(-1i) * -8646i;
}

fn func_1() -> Struct_1 {
    var var_0 = global2.c.c.b;
    let var_1 = Struct_3(global2.a, _wgslsmith_mult_i32(_wgslsmith_mod_i32(26386i, 2147483647i), _wgslsmith_mult_i32(func_2(_wgslsmith_mult_u32(0u, 4294967295u)), _wgslsmith_sub_i32(global2.a.x, -global1.c.c))), global2.c, true);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-var_1.c.a.x), 1287f, 308f) + vec4<f32>(_wgslsmith_f_op_f32(sign(global1.a.x)), global2.c.a.x, 1497f, _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-156f, global2.c.a.x, global1.a.x, -870f) - vec4<f32>(var_1.c.a.x, var_1.c.a.x, 657f, -1257f)) * vec4<f32>(global1.a.x, -214f, -1225f, 1127f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-796f, global1.a.x, 266f, -1294f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(537f, global2.c.a.x, 417f, var_1.c.a.x)))), select(vec4<bool>(false, true, global2.d, true), vec4<bool>(global2.d, false, false, global2.d), global2.d))), vec4<f32>(-124f, global2.c.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global1.a.x)), _wgslsmith_f_op_f32(round(global1.a.x)), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2006f), 1825f))))));
    let var_3 = ~_wgslsmith_mult_vec4_u32(max(vec4<u32>(~global2.c.c.b, _wgslsmith_mult_u32(global2.c.c.b, var_1.c.c.b), global2.c.c.b ^ global2.c.c.b, select(3620u, 70564u, false)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 17446u, 0u), vec4<u32>(42988u, global2.c.c.b, 4294967295u, u_input.a.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, global1.c.b, global2.c.c.b))), firstTrailingBit(vec4<u32>(global2.c.c.b, global1.c.b, u_input.a.x, 32261u)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), 1511f, _wgslsmith_f_op_f32(global1.a.x + var_1.c.a.x)));
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(global2.a, -33864i, global2.c, global2.d);
    let var_0 = Struct_5(min(1922i, ~abs(global2.b)), func_1(), Struct_4(reverseBits(~(~vec2<u32>(3849u, global1.c.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-global1.a.x), -846f, _wgslsmith_f_op_f32(-global1.a.x))), global2.c), 0i, global1.b >> (firstLeadingBit(firstLeadingBit(global2.c.c.b & global2.c.c.b)) % 32u));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a * _wgslsmith_f_op_vec2_f32(vec2<f32>(438f, -1000f) - vec2<f32>(1645f, -1372f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.b.x, global1.a.x))))) + _wgslsmith_f_op_vec2_f32(min(global1.a, vec2<f32>(_wgslsmith_f_op_f32(step(732f, 259f)), _wgslsmith_f_op_f32(f32(-1f) * -1052f))))), ~(~global1.b), Struct_1(vec2<i32>(firstLeadingBit(-1i), var_0.a), 2799u, -var_0.e));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(var_0.c.b.wxw));
    var var_3 = Struct_5(global1.c.c, Struct_1(~var_0.b.a, abs(~reverseBits(var_1.c.b)), ~select(global2.c.b | var_0.e, global2.c.c.c, all(vec2<bool>(true, global2.d)))), Struct_4(vec2<u32>(0u, 0u), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_1.a.x)), 873f, !global2.d)), global1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-736f)), _wgslsmith_f_op_f32(sign(-195f)), true)), -1144f), global2.c), global2.a.x, func_1().c);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, 0u, (((vec4<u32>(u_input.a.x, 81327u, 123613u, u_input.a.x) ^ vec4<u32>(var_3.c.c.c.b, 1u, 65221u, var_1.c.b)) | _wgslsmith_mult_vec4_u32(vec4<u32>(global2.c.c.b, var_0.c.c.c.b, 74875u, 1u), vec4<u32>(var_3.b.b, 0u, 17974u, 48964u))) & _wgslsmith_mult_vec4_u32(~vec4<u32>(global1.c.b, 0u, 1u, var_1.c.b), ~vec4<u32>(global1.c.b, 1u, u_input.a.x, 38491u))) << ((countOneBits(abs(vec4<u32>(global1.c.b, var_0.b.b, u_input.a.x, 0u))) << (~vec4<u32>(var_3.c.a.x, 83338u, 33422u, var_1.c.b) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

