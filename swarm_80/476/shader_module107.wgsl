struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(vec3<f32>(-417f, -250f, -1585f), vec2<f32>(1883f, -204f), vec2<f32>(1486f, -584f)), Struct_1(vec3<f32>(-860f, 595f, 490f), vec2<f32>(-1029f, 1920f), vec2<f32>(-293f, 308f)), Struct_1(vec3<f32>(1850f, -1625f, 894f), vec2<f32>(-522f, 1362f), vec2<f32>(-615f, 844f))), Struct_2(Struct_1(vec3<f32>(-1201f, 1154f, 1206f), vec2<f32>(1372f, 764f), vec2<f32>(-147f, 2030f)), Struct_1(vec3<f32>(-467f, -733f, -647f), vec2<f32>(185f, 1113f), vec2<f32>(-165f, -156f)), Struct_1(vec3<f32>(111f, 1240f, 621f), vec2<f32>(131f, 126f), vec2<f32>(-339f, -516f))), Struct_2(Struct_1(vec3<f32>(677f, 519f, -195f), vec2<f32>(-1074f, -1000f), vec2<f32>(-1857f, 2029f)), Struct_1(vec3<f32>(2016f, -681f, -787f), vec2<f32>(357f, 569f), vec2<f32>(-569f, 1000f)), Struct_1(vec3<f32>(306f, 2124f, 365f), vec2<f32>(-200f, -1705f), vec2<f32>(-971f, -165f))), Struct_2(Struct_1(vec3<f32>(-918f, 1000f, 147f), vec2<f32>(-494f, -557f), vec2<f32>(989f, 1164f)), Struct_1(vec3<f32>(1000f, -694f, 553f), vec2<f32>(1491f, 915f), vec2<f32>(792f, 1367f)), Struct_1(vec3<f32>(-208f, -2846f, -972f), vec2<f32>(-777f, -1000f), vec2<f32>(1412f, 981f))), Struct_2(Struct_1(vec3<f32>(-1000f, 3079f, 1498f), vec2<f32>(211f, 631f), vec2<f32>(851f, 273f)), Struct_1(vec3<f32>(-1000f, 682f, 1574f), vec2<f32>(454f, -510f), vec2<f32>(-2085f, -156f)), Struct_1(vec3<f32>(-302f, -1000f, 378f), vec2<f32>(-785f, -180f), vec2<f32>(-491f, -103f))), Struct_2(Struct_1(vec3<f32>(2000f, -1578f, -853f), vec2<f32>(-1980f, 1000f), vec2<f32>(1000f, 650f)), Struct_1(vec3<f32>(104f, 224f, 346f), vec2<f32>(-622f, -951f), vec2<f32>(597f, 424f)), Struct_1(vec3<f32>(-523f, 910f, 821f), vec2<f32>(-321f, 647f), vec2<f32>(-1464f, 177f))), Struct_2(Struct_1(vec3<f32>(-214f, 1405f, -940f), vec2<f32>(-913f, -1164f), vec2<f32>(281f, 743f)), Struct_1(vec3<f32>(-517f, -1088f, 319f), vec2<f32>(-918f, -430f), vec2<f32>(615f, 758f)), Struct_1(vec3<f32>(551f, -606f, 1643f), vec2<f32>(-1000f, -126f), vec2<f32>(882f, -164f))));

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<f32>(-1000f, -847f, -104f), vec2<f32>(1496f, -1574f), vec2<f32>(1000f, 235f)), Struct_1(vec3<f32>(-346f, -335f, -527f), vec2<f32>(1361f, -694f), vec2<f32>(1000f, 2339f)), Struct_1(vec3<f32>(374f, -952f, 997f), vec2<f32>(628f, -183f), vec2<f32>(-695f, 957f)), Struct_1(vec3<f32>(968f, 572f, -669f), vec2<f32>(-1114f, 528f), vec2<f32>(876f, -1542f)), Struct_1(vec3<f32>(842f, 720f, 628f), vec2<f32>(527f, -784f), vec2<f32>(1012f, 324f)), Struct_1(vec3<f32>(142f, -320f, 232f), vec2<f32>(1000f, 223f), vec2<f32>(1376f, 538f)), Struct_1(vec3<f32>(-566f, 187f, -240f), vec2<f32>(599f, 314f), vec2<f32>(-1684f, -1243f)), Struct_1(vec3<f32>(-828f, -940f, -2451f), vec2<f32>(1220f, 1563f), vec2<f32>(-644f, 535f)), Struct_1(vec3<f32>(644f, 590f, -177f), vec2<f32>(-865f, -215f), vec2<f32>(-573f, 455f)), Struct_1(vec3<f32>(-780f, -700f, 1821f), vec2<f32>(-824f, 800f), vec2<f32>(179f, -404f)), Struct_1(vec3<f32>(362f, -1631f, -1108f), vec2<f32>(1195f, -890f), vec2<f32>(1000f, -529f)), Struct_1(vec3<f32>(237f, 661f, 805f), vec2<f32>(-936f, -272f), vec2<f32>(-540f, -1000f)), Struct_1(vec3<f32>(966f, -132f, 595f), vec2<f32>(436f, -283f), vec2<f32>(-1593f, -246f)), Struct_1(vec3<f32>(274f, -1000f, 524f), vec2<f32>(149f, 535f), vec2<f32>(846f, 404f)), Struct_1(vec3<f32>(139f, -874f, -1000f), vec2<f32>(2255f, 1190f), vec2<f32>(-2104f, 1854f)));

var<private> global2: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-578f, 915f, -295f, 834f), vec4<f32>(598f, 1562f, -436f, 237f), vec4<f32>(-1294f, -1660f, -457f, -845f), vec4<f32>(2420f, -132f, -1000f, -1367f), vec4<f32>(-431f, -589f, -714f, 285f), vec4<f32>(969f, 1109f, -110f, 2344f));

var<private> global3: array<Struct_1, 31>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_1 {
    global2 = array<vec4<f32>, 6>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, firstTrailingBit(4294967295u)), 7u)];
    global2 = array<vec4<f32>, 6>();
    var var_1 = true;
    global1 = array<Struct_1, 15>();
    return var_0.b;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = ~(~(~(~(~vec4<u32>(18729u, u_input.b.x, 52220u, u_input.d.x)))));
    let var_1 = _wgslsmith_sub_u32(max(min(~_wgslsmith_add_u32(20261u, u_input.a.x), 4294967295u), ~(~select(1u, var_0.x, arg_1))), firstTrailingBit(var_0.x));
    global3 = array<Struct_1, 31>();
    var var_2 = select(vec3<bool>(!(!(var_0.x < var_1)), true, true), select(vec3<bool>(arg_1, true, !all(vec3<bool>(true, false, arg_1))), vec3<bool>(any(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, true, true), arg_1)), !all(vec3<bool>(arg_1, false, false)), !(true || arg_1)), true), arg_1);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-118f, arg_0.c.c.x, arg_0.a.b.x)), _wgslsmith_f_op_vec3_f32(select(arg_0.c.a, vec3<f32>(1259f, -143f, 559f), true))))))), _wgslsmith_f_op_vec2_f32(arg_0.c.a.xx - vec2<f32>(_wgslsmith_f_op_f32(select(-446f, _wgslsmith_f_op_f32(-arg_0.b.b.x), all(vec3<bool>(false, arg_1, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b.c.x, -849f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(692f, arg_0.a.c.x)) + -1651f)), arg_0.b.b.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(117f, 1292f, arg_1)) + -465f) - 250f)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global2 = array<vec4<f32>, 6>();
    let var_0 = (true & any(vec3<bool>(true, true, true))) | (~_wgslsmith_dot_vec2_i32(select(u_input.c.ww, u_input.c.zx, false), _wgslsmith_mult_vec2_i32(u_input.c.zx, vec2<i32>(u_input.c.x, 26640i))) != ~1i);
    global2 = array<vec4<f32>, 6>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1458f * -263f), _wgslsmith_f_op_f32(max(872f, 295f)), 1f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-489f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(389f)), _wgslsmith_f_op_f32(-984f + -411f), !var_0)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(449f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], var_0, 2147483647i))))));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> StorageBuffer {
    global0 = array<Struct_2, 7>();
    let var_0 = -303f;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-405f + arg_2.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(474f * arg_2.c.x))), -171f));
    return StorageBuffer(~(~arg_1), _wgslsmith_f_op_f32(arg_2.a.x * 571f), u_input.c.yz ^ vec2<i32>(u_input.c.x | -23084i, 5231i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-782f - arg_2.a.x)))) * -429f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(42455u, 31u)];
    let var_1 = vec4<bool>(all(!vec4<bool>(true, any(vec2<bool>(false, false)), select(false, false, false), true)), all(vec4<bool>(all(vec3<bool>(false, false, false)), true, true && any(vec2<bool>(true, true)), true)), true, (var_0.b.x != -624f) || any(vec2<bool>(true, true)));
    global3 = array<Struct_1, 31>();
    let var_2 = func_1();
    let var_3 = var_1;
    let x = u_input.a;
    s_output = func_4(select(false | (var_3.x | false), !(u_input.b.x < ~u_input.d.x), all(var_1.xx)), u_input.d.x, func_2(~(~select(vec4<u32>(u_input.a.x, 19923u, 25968u, 0u), vec4<u32>(u_input.b.x, 24249u, 4294967295u, 1u), var_1))));
}

