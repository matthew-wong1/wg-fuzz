struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
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

var<private> global0: array<i32, 31> = array<i32, 31>(0i, 45566i, 2147483647i, i32(-2147483648), -2478i, 0i, 2147483647i, -22412i, 25969i, -1i, i32(-2147483648), 0i, -16359i, 9565i, -2546i, i32(-2147483648), i32(-2147483648), 72948i, -30849i, -1i, 1i, -47450i, i32(-2147483648), 1i, -1i, 2147483647i, -9917i, -6935i, 2147483647i, i32(-2147483648), -10152i);

var<private> global1: array<vec3<i32>, 18>;

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(-45634i, true, 392f), vec2<f32>(809f, -1736f), Struct_1(2147483647i, false, 743f), 20861i, false), Struct_2(Struct_1(42139i, false, 1000f), vec2<f32>(-1098f, 809f), Struct_1(1314i, true, 721f), i32(-2147483648), true), Struct_2(Struct_1(-28260i, false, -626f), vec2<f32>(-448f, -756f), Struct_1(0i, true, -1000f), -1i, true), Struct_2(Struct_1(-25934i, true, 615f), vec2<f32>(-586f, -1000f), Struct_1(-10551i, false, -452f), -38169i, true), Struct_2(Struct_1(i32(-2147483648), false, -1000f), vec2<f32>(-1610f, -177f), Struct_1(i32(-2147483648), true, -966f), 6198i, true), Struct_2(Struct_1(-6218i, false, 1000f), vec2<f32>(599f, -195f), Struct_1(i32(-2147483648), true, 759f), 1i, false), Struct_2(Struct_1(i32(-2147483648), false, 861f), vec2<f32>(1654f, -1482f), Struct_1(-1i, true, -302f), 23444i, true), Struct_2(Struct_1(0i, false, 810f), vec2<f32>(-1633f, -780f), Struct_1(1i, false, 2106f), 32749i, false), Struct_2(Struct_1(2147483647i, false, 1114f), vec2<f32>(1000f, -1395f), Struct_1(35626i, false, 683f), 29728i, false), Struct_2(Struct_1(i32(-2147483648), false, -1143f), vec2<f32>(1210f, 1289f), Struct_1(-1i, false, 846f), -28181i, true), Struct_2(Struct_1(-1i, false, 1000f), vec2<f32>(2851f, -358f), Struct_1(-1i, true, 1063f), -22205i, false), Struct_2(Struct_1(8241i, false, 356f), vec2<f32>(309f, -1447f), Struct_1(-1i, true, -676f), 1i, true), Struct_2(Struct_1(0i, true, 558f), vec2<f32>(564f, -1103f), Struct_1(-1i, false, 920f), 2147483647i, false), Struct_2(Struct_1(393i, true, -695f), vec2<f32>(158f, 1433f), Struct_1(56703i, false, 975f), -50345i, false), Struct_2(Struct_1(-60527i, false, 420f), vec2<f32>(1917f, 496f), Struct_1(-18964i, false, -260f), 70788i, true), Struct_2(Struct_1(-1i, true, 338f), vec2<f32>(1357f, 775f), Struct_1(-13508i, true, 222f), -30935i, false), Struct_2(Struct_1(-1i, false, 223f), vec2<f32>(-133f, 1051f), Struct_1(15019i, true, -462f), 2147483647i, false), Struct_2(Struct_1(46523i, true, -707f), vec2<f32>(772f, 417f), Struct_1(-10604i, true, 1877f), -1i, true), Struct_2(Struct_1(-31990i, true, 1327f), vec2<f32>(-722f, 544f), Struct_1(i32(-2147483648), false, 845f), i32(-2147483648), false), Struct_2(Struct_1(907i, false, -1821f), vec2<f32>(2106f, 115f), Struct_1(29327i, false, 224f), 2147483647i, true), Struct_2(Struct_1(1i, false, -813f), vec2<f32>(1980f, -468f), Struct_1(0i, false, 545f), 2147483647i, false), Struct_2(Struct_1(i32(-2147483648), true, -1449f), vec2<f32>(-1267f, -852f), Struct_1(i32(-2147483648), false, -1694f), -19641i, false), Struct_2(Struct_1(-19870i, false, -1220f), vec2<f32>(1218f, 1966f), Struct_1(65848i, false, 240f), 0i, false), Struct_2(Struct_1(2147483647i, true, -1000f), vec2<f32>(-273f, -1759f), Struct_1(50654i, true, -770f), 27916i, false), Struct_2(Struct_1(-8700i, true, 859f), vec2<f32>(-818f, 963f), Struct_1(-43183i, true, 1082f), 33952i, true), Struct_2(Struct_1(3930i, false, 796f), vec2<f32>(631f, 1291f), Struct_1(-11492i, true, -296f), 20620i, false), Struct_2(Struct_1(-1i, false, 581f), vec2<f32>(751f, -166f), Struct_1(-1i, false, 863f), 29995i, true), Struct_2(Struct_1(i32(-2147483648), false, -1155f), vec2<f32>(419f, 454f), Struct_1(1i, false, -388f), 19692i, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_3) -> u32 {
    var var_0 = u_input.a;
    global2 = array<Struct_2, 28>();
    global2 = array<Struct_2, 28>();
    global1 = array<vec3<i32>, 18>();
    var var_1 = true;
    return ~(~44476u) >> (1u % 32u);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: vec4<f32>) -> vec3<u32> {
    var var_0 = -2360f;
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_3.x, 862f)), 360f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-173f + 1446f), arg_3.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(341f, arg_0.c) + _wgslsmith_f_op_f32(f32(-1f) * -360f))), 2738f, arg_3.x)));
    global1 = array<vec3<i32>, 18>();
    return u_input.c.zzy;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: u32) -> f32 {
    var var_0 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~arg_0.x, func_2(Struct_3(vec2<f32>(1597f, 1826f), Struct_1(2147483647i, false, -547f), Struct_2(Struct_1(u_input.b.x, true, -1226f), vec2<f32>(-1080f, -665f), Struct_1(global0[_wgslsmith_index_u32(arg_0.x, 31u)], arg_1, 1344f), -20182i, true)))), vec3<u32>(600u, 16301u, 29843u)) << (func_3(Struct_1(-u_input.b.x, arg_1, -1000f), -2147483647i, 29183i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-149f, -257f, -822f, 1427f)))))) % vec3<u32>(32u));
    let var_1 = 1000f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(trunc(var_1))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-697f, var_1) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, var_1))) * vec2<f32>(var_1, -1066f)), vec2<f32>(_wgslsmith_f_op_f32(-var_1), -903f)))), Struct_1(u_input.b.x, !(_wgslsmith_div_i32(42333i, u_input.b.x) > 0i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_1))))))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(max(25077u, arg_0.x), 31u)], any(select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(994f + 489f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-1235f, var_1), vec2<f32>(486f, var_1))))), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 18431i, -1i, global0[_wgslsmith_index_u32(arg_2, 31u)]), u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 31u)], global0[_wgslsmith_index_u32(77514u, 31u)] << (arg_2 % 32u)), all(select(vec2<bool>(false, false), vec2<bool>(arg_1, true), vec2<bool>(false, true))), var_1), reverseBits(-2147483647i), any(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1)), vec2<bool>(true, true), any(vec3<bool>(false, true, true))))));
    let var_4 = var_3;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(125f + _wgslsmith_f_op_f32(-var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(811f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-817f, -843f))), _wgslsmith_f_op_f32(exp2(1f))));
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(func_1(vec2<u32>(_wgslsmith_mod_u32(4294967295u, u_input.c.x), reverseBits(u_input.c.x)), true, ~(~u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(892f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)))), Struct_1(0i, true, _wgslsmith_f_op_f32(func_1(~(u_input.c.ww & vec2<u32>(u_input.c.x, u_input.c.x)), any(vec3<bool>(true, true, true)), 110250u))), Struct_2(Struct_1(-(20647i & u_input.a.x), true, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, -289f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0))), Struct_1(select(-u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(-2147483647i, u_input.b.x)), all(vec3<bool>(false, false, false))), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1031f, -580f)))), _wgslsmith_dot_vec3_i32(reverseBits(u_input.a.zxz), ~_wgslsmith_clamp_vec3_i32(u_input.a.wyy, vec3<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], 31109i, u_input.a.x), global1[_wgslsmith_index_u32(1u, 18u)])), _wgslsmith_f_op_f32(var_0.x - 341f) != _wgslsmith_f_op_f32(max(var_0.x, -1341f))));
    var var_2 = false;
    var_1 = Struct_3(var_1.c.b, var_1.c.c, Struct_2(Struct_1(~u_input.a.x, any(!vec4<bool>(var_1.c.e, var_1.c.a.b, var_1.b.b, var_1.b.b)), _wgslsmith_f_op_f32(trunc(-225f))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_1.a.x)), var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -598f)), var_1.c.c, global0[_wgslsmith_index_u32(u_input.c.x, 31u)], any(vec3<bool>(any(vec2<bool>(var_1.b.b, false)), false, true))));
    var_2 = any(!vec2<bool>((u_input.a.x & 5926i) > -u_input.a.x, true));
    var var_3 = _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.c) - var_0.x));
    var_2 = all(vec3<bool>(!(!var_1.b.b), var_1.b.b, !(!(var_1.c.e & var_1.c.c.b))));
    global1 = array<vec3<i32>, 18>();
    let var_4 = var_1.c.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 1108f) - _wgslsmith_div_f32(var_1.b.c, var_0.x)))))));
}

