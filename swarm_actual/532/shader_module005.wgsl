struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(-1045f, 458f, 477f, 974f), vec4<f32>(-511f, 717f, 1123f, -699f), vec4<f32>(923f, -716f, -1387f, -1608f), vec4<f32>(-1105f, 774f, -482f, -1658f), vec4<f32>(-208f, -413f, 1637f, -690f), vec4<f32>(-232f, 210f, -574f, -551f), vec4<f32>(1411f, -1000f, 1321f, 177f), vec4<f32>(1704f, -515f, 820f, 1526f), vec4<f32>(1000f, 1161f, -151f, -1000f), vec4<f32>(-458f, 1444f, 1132f, 119f), vec4<f32>(-1218f, 1027f, -263f, 1058f), vec4<f32>(-543f, 947f, 1345f, -175f), vec4<f32>(1218f, 984f, -1006f, 209f), vec4<f32>(462f, 1000f, 774f, 418f), vec4<f32>(397f, 2453f, 1677f, 1194f), vec4<f32>(438f, -538f, -171f, 180f), vec4<f32>(502f, 1140f, -2586f, 589f), vec4<f32>(-1634f, 796f, -449f, 496f), vec4<f32>(810f, -918f, -992f, 577f), vec4<f32>(-1662f, -220f, -1179f, 1459f), vec4<f32>(1000f, -192f, -1090f, 124f), vec4<f32>(-777f, 815f, -1365f, 1000f), vec4<f32>(1000f, -982f, 1662f, -228f), vec4<f32>(-346f, -521f, -1242f, 411f), vec4<f32>(-1881f, -961f, 1487f, 809f));

var<private> global1: vec3<bool>;

var<private> global2: Struct_1;

var<private> global3: vec2<f32> = vec2<f32>(-954f, -1601f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    let var_0 = vec3<u32>(0u, _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(1u, global2.b.x)), ~abs(vec2<u32>(global2.b.x, 0u))) | global2.b.x, countOneBits(u_input.b.x));
    global0 = array<vec4<f32>, 25>();
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global2.c.x, global2.c.x, global1.x)))), global2.c.x)));
    var var_1 = Struct_3(global2.a.x);
    let var_2 = vec4<i32>(global2.a.x, _wgslsmith_sub_i32(~1i, firstTrailingBit(-global2.a.x)), u_input.c.x, -8818i);
    return 38689u;
}

fn func_2() -> Struct_1 {
    global1 = !select(vec3<bool>((global1.x & global1.x) | (false != global1.x), global1.x, false), vec3<bool>(true, true, true), true);
    global3 = global2.c;
    var var_0 = Struct_3(~global2.a.x << (func_3() % 32u));
    global2 = Struct_1(global2.a, vec2<u32>(u_input.b.x, _wgslsmith_mod_u32(func_3(), 1u)), _wgslsmith_f_op_vec2_f32(-global2.c));
    global1 = vec3<bool>(true, (_wgslsmith_add_u32(global2.b.x, 1u) ^ u_input.b.x) < ~(~(~global2.b.x)), (1u & _wgslsmith_div_u32(71687u, _wgslsmith_mult_u32(global2.b.x, 21006u))) >= (((global2.b.x | 1u) | u_input.d.x) ^ ~_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)));
    return Struct_1(~vec3<i32>(var_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(21711i, var_0.a, var_0.a, 23230i) ^ vec4<i32>(-2147483647i, u_input.c.x, var_0.a, 13884i), max(vec4<i32>(0i, 29087i, u_input.c.x, global2.a.x), vec4<i32>(var_0.a, -2967i, u_input.c.x, u_input.c.x))), -8149i), ~u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global2.c + _wgslsmith_f_op_vec2_f32(global2.c - vec2<f32>(global2.c.x, global3.x))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-355f, global2.c.x))));
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(arg_0.a.x);
    global1 = !select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, global1.x), all(vec4<bool>(global1.x, false, true, global1.x))), !(!select(vec3<bool>(false, true, true), vec3<bool>(global1.x, false, false), true)), !(!(!global1.x)));
    var var_1 = Struct_3(-2147483647i);
    global0 = array<vec4<f32>, 25>();
    let var_2 = Struct_3(abs(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, var_1.a, 0i), select(vec3<i32>(-1i, global2.a.x, 2147483647i), vec3<i32>(arg_0.a.x, global2.a.x, 0i), vec3<bool>(true, false, global1.x))), _wgslsmith_add_i32(func_2().a.x, var_1.a))));
    return Struct_3(43579i);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: bool) -> i32 {
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global2.c, vec2<f32>(581f, _wgslsmith_f_op_f32(-global2.c.x)))) + global2.c);
    var var_0 = true;
    var var_1 = u_input.b.x;
    let var_2 = func_4(Struct_1(~(~(~global2.a)), ~max(u_input.b.xx, u_input.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.c - global2.c) * global2.c))));
    var var_3 = select(!vec3<bool>(true, arg_1.x, arg_1.x), !(!arg_1.xzy), global1.x);
    return -1i;
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.c.x;
    let var_1 = ~func_5(Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, global2.a.x, 24399i, u_input.c.x) | vec4<i32>(global2.a.x, u_input.c.x, u_input.c.x, 24878i), vec4<i32>(17560i, u_input.c.x, global2.a.x, global2.a.x) ^ vec4<i32>(1i, global2.a.x, global2.a.x, u_input.c.x))), vec4<bool>(true && any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), true, true || (false | global1.x), false), func_4(func_2()), true);
    var var_2 = -2147483647i;
    global3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-516f, global3.x), _wgslsmith_f_op_vec2_f32(-global2.c))))));
    let var_3 = -1i;
    return Struct_2(func_2(), vec4<u32>(func_3(), u_input.a.x, u_input.d.x, ~19130u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_1();
    let var_2 = var_0.a;
    let var_3 = func_1();
    let var_4 = Struct_2(Struct_1(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.a.x, -13001i, -59200i), min(vec3<i32>(var_3.a.a.x, u_input.c.x, var_1.a.a.x), global2.a)), var_1.a.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(global2.c, global2.c)))))), ~_wgslsmith_mult_vec4_u32(~var_1.b, var_1.b ^ var_3.b) & ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 64851u, 1u, var_3.a.b.x), var_3.b));
    var_0 = func_1();
    global2 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(6340i, global2.a.x, _wgslsmith_mod_i32(-23275i << (var_0.b.x % 32u), -var_4.a.a.x)), _wgslsmith_clamp_vec3_i32(var_3.a.a, _wgslsmith_mult_vec3_i32(var_2.a, var_0.a.a), func_1().a.a)), func_2().b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.c.x))), _wgslsmith_f_op_f32(round(var_0.a.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(-149f, _wgslsmith_f_op_f32(min(-377f, -1000f)), _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-var_0.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.c.x)), -1718f)), firstLeadingBit(_wgslsmith_mod_i32(firstLeadingBit(0i), 2763i)), var_3.b.x);
}

