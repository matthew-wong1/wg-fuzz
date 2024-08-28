struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(-618f, Struct_1(vec2<u32>(34577u, 21456u), vec3<f32>(-1745f, -740f, -1228f)), vec2<f32>(-670f, 131f), Struct_1(vec2<u32>(51827u, 0u), vec3<f32>(1828f, -833f, -1152f))), Struct_2(-256f, Struct_1(vec2<u32>(45158u, 4294967295u), vec3<f32>(636f, -414f, -1958f)), vec2<f32>(-1000f, 1000f), Struct_1(vec2<u32>(9224u, 0u), vec3<f32>(-1166f, -2798f, -203f))), Struct_2(404f, Struct_1(vec2<u32>(1u, 71325u), vec3<f32>(160f, 248f, 275f)), vec2<f32>(1000f, 1656f), Struct_1(vec2<u32>(8627u, 57296u), vec3<f32>(-1495f, 654f, -472f))), Struct_2(-362f, Struct_1(vec2<u32>(1u, 70092u), vec3<f32>(-1000f, 1621f, 1895f)), vec2<f32>(931f, 934f), Struct_1(vec2<u32>(2356u, 1u), vec3<f32>(1672f, 470f, 814f))), Struct_2(-1000f, Struct_1(vec2<u32>(48780u, 1u), vec3<f32>(-478f, 1000f, -108f)), vec2<f32>(-387f, 368f), Struct_1(vec2<u32>(59869u, 89857u), vec3<f32>(-2716f, -1068f, -1393f))), Struct_2(-1361f, Struct_1(vec2<u32>(42679u, 4294967295u), vec3<f32>(-658f, -288f, -178f)), vec2<f32>(-1230f, 280f), Struct_1(vec2<u32>(0u, 28034u), vec3<f32>(-1043f, -694f, -623f))), Struct_2(752f, Struct_1(vec2<u32>(21993u, 28827u), vec3<f32>(-1436f, 1470f, -1272f)), vec2<f32>(-505f, 706f), Struct_1(vec2<u32>(20111u, 4294967295u), vec3<f32>(307f, 427f, 462f))), Struct_2(-1333f, Struct_1(vec2<u32>(4294967295u, 45109u), vec3<f32>(649f, -400f, 851f)), vec2<f32>(2634f, 1026f), Struct_1(vec2<u32>(1u, 0u), vec3<f32>(-1000f, 115f, -909f))), Struct_2(203f, Struct_1(vec2<u32>(54262u, 4294967295u), vec3<f32>(-1198f, 372f, -1865f)), vec2<f32>(2033f, -590f), Struct_1(vec2<u32>(34924u, 80104u), vec3<f32>(283f, -843f, -1134f))), Struct_2(-1438f, Struct_1(vec2<u32>(1u, 4721u), vec3<f32>(-402f, -451f, 692f)), vec2<f32>(356f, 799f), Struct_1(vec2<u32>(10081u, 6012u), vec3<f32>(-424f, 1000f, 588f))), Struct_2(238f, Struct_1(vec2<u32>(12972u, 24u), vec3<f32>(1181f, 1536f, -302f)), vec2<f32>(-212f, 1371f), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<f32>(724f, -327f, 238f))), Struct_2(-167f, Struct_1(vec2<u32>(15340u, 2846u), vec3<f32>(-336f, -1053f, -911f)), vec2<f32>(759f, -1000f), Struct_1(vec2<u32>(4294967295u, 17511u), vec3<f32>(124f, 1915f, -1000f))), Struct_2(1443f, Struct_1(vec2<u32>(34755u, 174507u), vec3<f32>(267f, -175f, -363f)), vec2<f32>(926f, 1322f), Struct_1(vec2<u32>(50862u, 67669u), vec3<f32>(-737f, -1330f, 1003f))), Struct_2(-641f, Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(-346f, 710f, 714f)), vec2<f32>(495f, 950f), Struct_1(vec2<u32>(20865u, 73277u), vec3<f32>(446f, 641f, 1288f))), Struct_2(1829f, Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(349f, -997f, 631f)), vec2<f32>(-873f, -1249f), Struct_1(vec2<u32>(1u, 0u), vec3<f32>(1000f, 1475f, -1000f))), Struct_2(987f, Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(-743f, 304f, -2186f)), vec2<f32>(745f, -367f), Struct_1(vec2<u32>(37256u, 18967u), vec3<f32>(491f, 847f, -1523f))), Struct_2(-1278f, Struct_1(vec2<u32>(63596u, 38589u), vec3<f32>(724f, 1650f, 1168f)), vec2<f32>(-866f, -1610f), Struct_1(vec2<u32>(52880u, 4294967295u), vec3<f32>(931f, 2147f, 1060f))), Struct_2(-948f, Struct_1(vec2<u32>(71487u, 65787u), vec3<f32>(-402f, 1000f, 803f)), vec2<f32>(-780f, 1378f), Struct_1(vec2<u32>(0u, 1u), vec3<f32>(-1023f, -276f, -130f))), Struct_2(-822f, Struct_1(vec2<u32>(0u, 0u), vec3<f32>(1000f, -932f, -123f)), vec2<f32>(661f, -1720f), Struct_1(vec2<u32>(1u, 4294967295u), vec3<f32>(-468f, 114f, -1615f))), Struct_2(-172f, Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(-887f, 512f, -321f)), vec2<f32>(2188f, 411f), Struct_1(vec2<u32>(0u, 1u), vec3<f32>(563f, 1734f, 518f))), Struct_2(-204f, Struct_1(vec2<u32>(26306u, 1u), vec3<f32>(-615f, 1118f, -1000f)), vec2<f32>(-115f, -584f), Struct_1(vec2<u32>(0u, 1u), vec3<f32>(736f, -1015f, -459f))), Struct_2(186f, Struct_1(vec2<u32>(1u, 5760u), vec3<f32>(-494f, 663f, -391f)), vec2<f32>(1000f, -1000f), Struct_1(vec2<u32>(21177u, 1u), vec3<f32>(355f, -898f, -504f))), Struct_2(2414f, Struct_1(vec2<u32>(4294967295u, 42055u), vec3<f32>(2075f, 333f, 286f)), vec2<f32>(-1680f, 675f), Struct_1(vec2<u32>(33898u, 9317u), vec3<f32>(-2153f, 969f, -1406f))), Struct_2(-129f, Struct_1(vec2<u32>(1u, 0u), vec3<f32>(1000f, 773f, -938f)), vec2<f32>(-1000f, -718f), Struct_1(vec2<u32>(1u, 8334u), vec3<f32>(-527f, 124f, -848f))), Struct_2(3436f, Struct_1(vec2<u32>(18608u, 54636u), vec3<f32>(179f, 947f, -815f)), vec2<f32>(550f, 692f), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<f32>(-1450f, 623f, 2343f))));

var<private> global1: Struct_1 = Struct_1(vec2<u32>(0u, 1u), vec3<f32>(470f, -585f, 148f));

var<private> global2: i32 = 79275i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x + -782f) * -1040f));
    global1 = Struct_1(u_input.b.xz, vec3<f32>(1079f, var_0, 1790f));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(470f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_0) + -578f)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> vec3<f32> {
    global2 = u_input.c.x;
    global0 = array<Struct_2, 25>();
    var var_0 = !(!vec4<bool>(false, false, false, !any(vec3<bool>(true, true, true))));
    var var_1 = Struct_1((firstTrailingBit(global1.a) | ~_wgslsmith_mod_vec2_u32(u_input.b.xx, vec2<u32>(arg_1.x, global1.a.x))) | global1.a, _wgslsmith_f_op_vec3_f32(step(arg_0.d.b, _wgslsmith_f_op_vec3_f32(arg_0.d.b * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b))))));
    let var_2 = Struct_2(var_1.b.x, Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global1.b, vec3<f32>(global1.b.x, -473f, var_1.b.x))) * _wgslsmith_f_op_vec3_f32(trunc(global1.b)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1179f + -2035f) - -1345f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - 222f) + _wgslsmith_f_op_f32(step(-501f, -110f)))))), Struct_1(vec2<u32>(u_input.b.x, 1u), _wgslsmith_f_op_vec3_f32(max(arg_0.d.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -1000f, var_1.b.x))))));
    return _wgslsmith_f_op_vec3_f32(max(var_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1720f * var_1.b.x)), 121f) - vec3<f32>(353f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1758f) - _wgslsmith_f_op_f32(max(560f, var_1.b.x))), _wgslsmith_f_op_f32(255f + _wgslsmith_f_op_f32(func_2(0u)))))));
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(~42359u)))), Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 84176u), vec2<u32>(global1.a.x, 0u)) & vec2<u32>(u_input.e, 57077u), firstTrailingBit(global1.a), u_input.b.zx), _wgslsmith_f_op_vec3_f32(max(global1.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global1.b - global1.b)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global1.b.zy, global1.b.zz)) * global1.b.yx) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.b.yy, vec2<f32>(-110f, global1.b.x)) - _wgslsmith_f_op_vec2_f32(-global1.b.yx)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b.zz) - global1.b.xy))), Struct_1(u_input.b.yy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-770f, 990f, -392f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.a, abs(abs(u_input.b.yz))), 25u)], vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 16137u, 32198u, global1.a.x), min(vec4<u32>(u_input.d, 0u, 98954u, global1.a.x), vec4<u32>(4186u, u_input.b.x, u_input.a, global1.a.x))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, global1.a.x, global1.a.x, var_0.d.a.x), abs(vec4<u32>(19406u, u_input.e, 1u, u_input.e)))), ~30823u)));
    var var_2 = var_0.b;
    var var_3 = vec2<u32>(firstTrailingBit(10408u), 8684u) >> (var_0.b.a % vec2<u32>(32u));
    return _wgslsmith_f_op_vec3_f32(var_2.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.d.b, var_2.b))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-2039f, 287f, 610f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-630f, var_2.b.x, -1541f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<u32>(~_wgslsmith_clamp_u32(global1.a.x, 4294967295u, u_input.b.x), u_input.d), _wgslsmith_f_op_vec3_f32(func_1()));
    var var_1 = global0[_wgslsmith_index_u32(47879u, 25u)];
    var var_2 = global0[_wgslsmith_index_u32(var_0.a.x, 25u)];
    var_0 = var_2.d;
    global1 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(563f, _wgslsmith_clamp_i32(max(u_input.c.x, 10919i), ~_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), select(u_input.c.x, -11446i, (var_0.a.x << (0u % 32u)) == _wgslsmith_add_u32(u_input.e, var_0.a.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.a, -930f, var_1.c.x, 1768f))) - vec4<f32>(var_1.b.b.x, var_1.b.b.x, -1544f, -1573f))))));
}

