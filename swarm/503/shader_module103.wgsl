struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<f32>(1065f, 306f), vec3<f32>(-322f, 1261f, 1000f), vec3<f32>(-1296f, -1259f, 472f), vec2<f32>(1309f, 1000f), 313f), Struct_1(vec2<f32>(-928f, -380f), vec3<f32>(2129f, -241f, 2335f), vec3<f32>(376f, -1196f, -770f), vec2<f32>(-181f, 1545f), -1741f), Struct_1(vec2<f32>(-222f, 195f), vec3<f32>(562f, -175f, 426f), vec3<f32>(236f, 1838f, -279f), vec2<f32>(1000f, -878f), -219f), Struct_1(vec2<f32>(320f, 873f), vec3<f32>(924f, 1086f, 285f), vec3<f32>(2373f, 1879f, -988f), vec2<f32>(-829f, -688f), -810f), Struct_1(vec2<f32>(-1205f, 1190f), vec3<f32>(2470f, 782f, -371f), vec3<f32>(-366f, 840f, 2316f), vec2<f32>(-131f, -530f), 236f), Struct_1(vec2<f32>(897f, -1362f), vec3<f32>(449f, 203f, -535f), vec3<f32>(228f, 699f, -335f), vec2<f32>(-1000f, 1223f), 156f), Struct_1(vec2<f32>(-1062f, 1038f), vec3<f32>(-394f, 1624f, -516f), vec3<f32>(-237f, 1000f, -663f), vec2<f32>(-1559f, -2564f), -477f), Struct_1(vec2<f32>(-444f, 776f), vec3<f32>(808f, 1442f, -307f), vec3<f32>(1500f, 2370f, 1926f), vec2<f32>(-137f, 236f), 1162f), Struct_1(vec2<f32>(2849f, -1347f), vec3<f32>(-1124f, 394f, -907f), vec3<f32>(341f, 234f, -1000f), vec2<f32>(227f, -831f), 1000f), Struct_1(vec2<f32>(1520f, -1195f), vec3<f32>(-174f, 1036f, 781f), vec3<f32>(443f, -1043f, -948f), vec2<f32>(681f, -351f), -404f), Struct_1(vec2<f32>(-411f, -225f), vec3<f32>(202f, 1580f, -907f), vec3<f32>(-2475f, -270f, 898f), vec2<f32>(129f, 2071f), 326f), Struct_1(vec2<f32>(-1007f, 591f), vec3<f32>(-1869f, 1368f, 556f), vec3<f32>(1000f, -1082f, -731f), vec2<f32>(645f, -440f), 1332f), Struct_1(vec2<f32>(-1131f, -1861f), vec3<f32>(1283f, 908f, 1196f), vec3<f32>(-234f, -111f, -429f), vec2<f32>(196f, -1024f), -962f), Struct_1(vec2<f32>(354f, -1226f), vec3<f32>(1340f, 1680f, 123f), vec3<f32>(1442f, 1000f, 2881f), vec2<f32>(-684f, 1430f), -731f), Struct_1(vec2<f32>(-165f, -424f), vec3<f32>(-1000f, -144f, 822f), vec3<f32>(-1000f, 496f, 1000f), vec2<f32>(-559f, -1014f), -1000f), Struct_1(vec2<f32>(1000f, -368f), vec3<f32>(1228f, 515f, -498f), vec3<f32>(-783f, -273f, 1045f), vec2<f32>(771f, 880f), 1022f), Struct_1(vec2<f32>(1856f, 1096f), vec3<f32>(-563f, -1100f, -504f), vec3<f32>(1533f, -1000f, 250f), vec2<f32>(-142f, 533f), 758f), Struct_1(vec2<f32>(-1210f, -1000f), vec3<f32>(-298f, -809f, 1406f), vec3<f32>(-498f, -114f, -761f), vec2<f32>(-454f, -1727f), 858f), Struct_1(vec2<f32>(924f, 1288f), vec3<f32>(-1106f, 2267f, 961f), vec3<f32>(922f, -838f, -1146f), vec2<f32>(719f, 1771f), -544f));

var<private> global2: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(40536i, 3248i), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, 0i), vec2<i32>(-30152i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(-16745i, -14217i), vec2<i32>(-22076i, -1i), vec2<i32>(-6709i, 1i), vec2<i32>(33139i, -69589i), vec2<i32>(2147483647i, -1i), vec2<i32>(3901i, 1i), vec2<i32>(2147483647i, 1i), vec2<i32>(13487i, 0i), vec2<i32>(31403i, 0i), vec2<i32>(2147483647i, 13049i), vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-12470i, 0i), vec2<i32>(2147483647i, 58816i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(15243i, 29587i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-14714i, i32(-2147483648)), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(56671i, -10575i), vec2<i32>(-38232i, i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-6120i, 0i), vec2<i32>(14604i, -1i), vec2<i32>(13223i, -22320i), vec2<i32>(-2432i, -13438i));

var<private> global3: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: bool) -> i32 {
    let var_0 = vec2<bool>(arg_1, true);
    global0 = array<vec3<i32>, 8>();
    global1 = array<Struct_1, 19>();
    let var_1 = _wgslsmith_f_op_f32(trunc(540f));
    var var_2 = arg_0;
    return u_input.a.x;
}

fn func_1() -> u32 {
    var var_0 = vec4<i32>(u_input.c.x, select(select(1i, abs(~u_input.a.x), true), func_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2427f, 1760f))), vec3<f32>(204f, -829f, -226f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-727f, 1184f, -799f), vec3<f32>(692f, 1792f, -528f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(184f, -624f) + vec2<f32>(-230f, 751f)), _wgslsmith_f_op_f32(1548f * -1000f)), !global3.x, -312f, global3.x), true), i32(-1i) * -countOneBits(0i), u_input.c.x);
    var var_1 = firstTrailingBit(u_input.b);
    var_1 = 0u;
    let var_2 = true | any(select(!select(vec4<bool>(global3.x, global3.x, global3.x, true), vec4<bool>(global3.x, global3.x, global3.x, false), global3.x), !(!vec4<bool>(global3.x, global3.x, global3.x, global3.x)), !select(vec4<bool>(true, global3.x, global3.x, false), vec4<bool>(true, global3.x, false, global3.x), vec4<bool>(false, global3.x, false, global3.x))));
    global0 = array<vec3<i32>, 8>();
    return u_input.b;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = select(!global3.wy, select(vec2<bool>(!(!global3.x), true), select(global3.wz, !select(global3.xx, vec2<bool>(global3.x, false), true), -72472i >= abs(u_input.c.x)), vec2<bool>(any(!global3.yw), any(!vec4<bool>(false, false, true, global3.x)))), select(vec2<bool>(true, global3.x), global3.zy, any(select(global3.zwx, select(vec3<bool>(global3.x, false, true), global3.yyy, false), global3.x))));
    global2 = array<vec2<i32>, 32>();
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b.x, arg_0.b.x))), arg_1.b.x)), _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_div_f32(747f, 468f))), arg_0.c, arg_0.b, arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1278f, 208f))))) * _wgslsmith_f_op_f32(arg_0.d.x * arg_0.a.x)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d * arg_1.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_1.c.zy))));
    var_0 = !select(global3.yx, global3.xz, select(select(select(global3.xz, vec2<bool>(true, var_0.x), vec2<bool>(true, true)), select(vec2<bool>(global3.x, var_0.x), vec2<bool>(global3.x, var_0.x), false), global3.zw), select(select(vec2<bool>(false, false), global3.xw, global3.yx), vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x)), false));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2603f - 456f), 1268f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 19>();
    global0 = array<vec3<i32>, 8>();
    var var_0 = global1[_wgslsmith_index_u32(func_1(), 19u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1434f)), 1000f));
    global3 = !select(vec4<bool>(all(vec4<bool>(false, true, global3.x, false)), !(u_input.b <= u_input.b), !(u_input.c.x > 0i), ~u_input.c.x <= -2147483647i), vec4<bool>(u_input.c.x < -u_input.a.x, global3.x & all(global3.xw), false, !global3.x), _wgslsmith_mod_i32(2147483647i, func_2(Struct_1(vec2<f32>(var_0.c.x, -316f), vec3<f32>(1281f, -1889f, 650f), var_0.b, vec2<f32>(var_0.e, 899f), 805f), true, var_0.b.x, true)) > 33335i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-263f, _wgslsmith_f_op_f32(-1222f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(-110f, var_0.d.x), var_0.b, var_0.b, var_0.b.xz, var_0.c.x), global1[_wgslsmith_index_u32(19164u, 19u)])) - 1f))), u_input.c.xwx, -757f, u_input.c, u_input.b);
}

