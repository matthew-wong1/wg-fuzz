struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(true, vec4<f32>(2052f, -1625f, -504f, 342f), false, Struct_1(vec2<f32>(236f, -254f), vec2<bool>(true, true), vec2<u32>(1u, 2358u), vec2<i32>(0i, -1350i)), 2147483647i), Struct_3(true, vec4<f32>(1000f, 822f, 233f, -1213f), false, Struct_1(vec2<f32>(-889f, -289f), vec2<bool>(true, false), vec2<u32>(2544u, 21059u), vec2<i32>(-28310i, 33194i)), 1i), Struct_3(true, vec4<f32>(326f, 1000f, 862f, 1003f), true, Struct_1(vec2<f32>(301f, 709f), vec2<bool>(true, true), vec2<u32>(15276u, 1u), vec2<i32>(10777i, -24261i)), -3381i), Struct_3(true, vec4<f32>(1596f, 1140f, -1000f, 1241f), false, Struct_1(vec2<f32>(761f, -1000f), vec2<bool>(false, true), vec2<u32>(27788u, 7956u), vec2<i32>(i32(-2147483648), 0i)), 18251i), Struct_3(false, vec4<f32>(107f, 940f, -1233f, -1000f), false, Struct_1(vec2<f32>(-1000f, 1805f), vec2<bool>(true, false), vec2<u32>(62735u, 4294967295u), vec2<i32>(1i, -13232i)), 6161i), Struct_3(true, vec4<f32>(-933f, 880f, 1620f, -1122f), true, Struct_1(vec2<f32>(-1388f, -677f), vec2<bool>(true, false), vec2<u32>(2572u, 1u), vec2<i32>(2147483647i, -19895i)), -3324i), Struct_3(false, vec4<f32>(886f, -564f, -800f, -675f), true, Struct_1(vec2<f32>(-580f, 883f), vec2<bool>(true, true), vec2<u32>(7531u, 4294967295u), vec2<i32>(1i, -44536i)), -20107i), Struct_3(false, vec4<f32>(1000f, 796f, -308f, -1000f), false, Struct_1(vec2<f32>(-482f, -392f), vec2<bool>(false, true), vec2<u32>(20494u, 95302u), vec2<i32>(-46677i, -8287i)), 2147483647i), Struct_3(true, vec4<f32>(963f, 509f, 903f, 1573f), false, Struct_1(vec2<f32>(1682f, -1465f), vec2<bool>(true, true), vec2<u32>(0u, 11207u), vec2<i32>(42197i, 5836i)), 0i), Struct_3(true, vec4<f32>(572f, 1000f, 1131f, 271f), false, Struct_1(vec2<f32>(-1551f, 551f), vec2<bool>(false, false), vec2<u32>(0u, 0u), vec2<i32>(21869i, 1i)), -4808i), Struct_3(false, vec4<f32>(-1000f, 359f, 305f, -1720f), false, Struct_1(vec2<f32>(158f, 454f), vec2<bool>(true, true), vec2<u32>(1u, 52302u), vec2<i32>(0i, 0i)), i32(-2147483648)), Struct_3(false, vec4<f32>(1000f, -766f, 503f, -589f), true, Struct_1(vec2<f32>(-176f, -424f), vec2<bool>(false, false), vec2<u32>(0u, 58476u), vec2<i32>(-1i, 18837i)), -10400i), Struct_3(false, vec4<f32>(-1472f, 1000f, 874f, -826f), true, Struct_1(vec2<f32>(525f, -634f), vec2<bool>(true, true), vec2<u32>(1u, 0u), vec2<i32>(-15603i, 2147483647i)), 2147483647i), Struct_3(false, vec4<f32>(2171f, 1596f, 855f, 1624f), false, Struct_1(vec2<f32>(1000f, -989f), vec2<bool>(true, false), vec2<u32>(0u, 4294967295u), vec2<i32>(34492i, i32(-2147483648))), 35240i), Struct_3(true, vec4<f32>(804f, -2042f, 1318f, -1987f), false, Struct_1(vec2<f32>(-371f, 1501f), vec2<bool>(true, false), vec2<u32>(0u, 15104u), vec2<i32>(-1i, -29938i)), 1i), Struct_3(true, vec4<f32>(1000f, 1078f, -115f, -154f), true, Struct_1(vec2<f32>(1724f, 1269f), vec2<bool>(true, true), vec2<u32>(0u, 30216u), vec2<i32>(i32(-2147483648), 57541i)), 0i), Struct_3(false, vec4<f32>(884f, -1635f, 627f, -1279f), true, Struct_1(vec2<f32>(1000f, 720f), vec2<bool>(false, false), vec2<u32>(1u, 0u), vec2<i32>(-1i, 1i)), -26512i), Struct_3(true, vec4<f32>(-1710f, 1004f, -416f, -1273f), false, Struct_1(vec2<f32>(-212f, 2056f), vec2<bool>(false, false), vec2<u32>(72038u, 21483u), vec2<i32>(1i, -103100i)), 2147483647i), Struct_3(true, vec4<f32>(1658f, 197f, -1532f, -590f), false, Struct_1(vec2<f32>(-974f, -662f), vec2<bool>(true, true), vec2<u32>(15228u, 39520u), vec2<i32>(27628i, i32(-2147483648))), 1i), Struct_3(true, vec4<f32>(1137f, 499f, -374f, -1132f), true, Struct_1(vec2<f32>(-448f, -841f), vec2<bool>(false, true), vec2<u32>(4294967295u, 40971u), vec2<i32>(-10254i, 1i)), -13600i), Struct_3(false, vec4<f32>(-997f, -468f, 471f, -1565f), true, Struct_1(vec2<f32>(1041f, 618f), vec2<bool>(false, true), vec2<u32>(21486u, 37686u), vec2<i32>(0i, 2147483647i)), 0i), Struct_3(true, vec4<f32>(213f, -696f, 1000f, 377f), true, Struct_1(vec2<f32>(-414f, 2491f), vec2<bool>(false, true), vec2<u32>(3068u, 0u), vec2<i32>(10938i, 1i)), -11569i), Struct_3(true, vec4<f32>(-1000f, 1619f, -196f, 729f), true, Struct_1(vec2<f32>(-1819f, 780f), vec2<bool>(false, false), vec2<u32>(4420u, 1u), vec2<i32>(-1i, -19603i)), -513i));

var<private> global2: array<u32, 21> = array<u32, 21>(60759u, 4294967295u, 1u, 0u, 55184u, 49963u, 101542u, 1u, 0u, 67865u, 4294967295u, 25827u, 44767u, 1052u, 4294967295u, 66120u, 34135u, 1u, 10621u, 19239u, 34370u);

var<private> global3: Struct_3 = Struct_3(false, vec4<f32>(783f, 906f, 1388f, 662f), true, Struct_1(vec2<f32>(-1226f, -756f), vec2<bool>(true, true), vec2<u32>(64596u, 21911u), vec2<i32>(-48266i, -1i)), 2147483647i);

var<private> global4: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    global0 = firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(~global0.x, ~4294967295u, ~13552u), vec3<u32>(0u, global0.x & 74068u, abs(global3.d.c.x)))) ^ vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(~(~max(global3.d.c.x, 29541u)), 21u)], 4294967295u);
    global3 = Struct_3(!global3.c, global3.b, global3.a, Struct_1(_wgslsmith_f_op_vec2_f32(-global3.b.xy), !global3.d.b, global0.yy, -_wgslsmith_mod_vec2_i32(vec2<i32>(global3.d.d.x, -2147483647i) ^ vec2<i32>(37479i, u_input.b), vec2<i32>(u_input.b, -2147483647i) & vec2<i32>(global3.d.d.x, global3.e))), u_input.a.x);
    let var_0 = _wgslsmith_sub_vec2_i32(-(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global3.d.d.x, u_input.a.x, -1i), vec4<i32>(u_input.c, u_input.a.x, global3.e, u_input.b)), 1i)), -(~max(-u_input.a.zz, max(u_input.a.xx, u_input.a.yx))));
    var var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(70906u), 23u)];
    var var_2 = Struct_2(vec2<i32>(u_input.b, 0i), global3.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.b.wz, vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-276f + var_1.d.a.x)), vec2<bool>(true, global3.a)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.d.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1176f, var_1.d.a.x))), select(global3.d.b, vec2<bool>(global3.a, global3.a), true)))), vec2<bool>(global3.a, var_1.a && (false | global3.a)), firstTrailingBit(~_wgslsmith_mod_vec2_u32(global0.zz, global0.xz)), abs(-(var_0 >> (global0.zz % vec2<u32>(32u))))));
    return -1153f;
}

fn func_2(arg_0: i32) -> f32 {
    global1 = array<Struct_3, 23>();
    let var_0 = Struct_3(_wgslsmith_sub_u32(~global3.d.c.x, firstLeadingBit(_wgslsmith_clamp_u32(1u, global2[_wgslsmith_index_u32(global3.d.c.x, 21u)], 9265u))) > global0.x, vec4<f32>(global3.b.x, global3.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(818f)) * _wgslsmith_f_op_f32(round(-146f))))), 225f), all(!(!vec3<bool>(global3.a, false, false))), global3.d, 72475i);
    global1 = array<Struct_3, 23>();
    let var_1 = global3.b.zwx;
    var var_2 = global3.d;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = vec3<bool>(global3.a, global3.d.b.x, true);
    let var_1 = -abs(-40848i);
    global4 = arg_1.x;
    var var_2 = true;
    var var_3 = vec2<i32>(arg_1.x, 2147483647i);
    return _wgslsmith_div_f32(global3.d.a.x, _wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(func_2(41163i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> bool {
    global0 = vec3<u32>(_wgslsmith_div_u32(~4294967295u, abs(arg_1.c.x)), 42290u, 0u) & ~reverseBits(countOneBits(firstTrailingBit(vec3<u32>(global0.x, 4294967295u, 30661u))));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1032f, -1116f, true)), _wgslsmith_f_op_f32(f32(-1f) * -566f)))) <= _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(global3.b)))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1174f), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - -1263f))), false, arg_1, select(_wgslsmith_add_i32(arg_1.d.x | 19636i, 1i) ^ abs(_wgslsmith_clamp_i32(arg_0.d.x, 14468i, 8917i)), 1i, all(select(vec4<bool>(false, false, global3.d.b.x, arg_0.b.x), vec4<bool>(false, arg_1.b.x, false, arg_0.b.x), vec4<bool>(true, true, true, true)))));
    return !(!all(vec4<bool>(true, !var_0.d.b.x, arg_1.b.x, global3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = firstTrailingBit(-1i);
    let var_0 = _wgslsmith_sub_u32(27906u, ~reverseBits(4294967295u));
    let var_1 = Struct_3(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global3.d.a))), !select(vec2<bool>(global3.a, true), vec2<bool>(false, false), global3.c), _wgslsmith_mod_vec2_u32(global0.zy, global3.d.c), u_input.a.yx), global3.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(644f - 154f) - _wgslsmith_f_op_f32(func_1(vec3<u32>(var_0, global3.d.c.x, global2[_wgslsmith_index_u32(global3.d.c.x, 21u)]), u_input.a)))))), _wgslsmith_f_op_vec4_f32(-global3.b), select(u_input.c, 1i, !(true && global3.d.b.x)) >= ~global3.e, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(global3.b.wz)), !(!select(vec2<bool>(false, false), vec2<bool>(true, global3.d.b.x), true)), vec2<u32>(var_0, global2[_wgslsmith_index_u32(countOneBits(max(42610u, global0.x)), 21u)]), ~global3.d.d), ~_wgslsmith_dot_vec4_i32(vec4<i32>(global3.e, 4441i, u_input.a.x, global3.d.d.x) | _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 30987i, -2147483647i), vec4<i32>(u_input.c, 73516i, u_input.b, global3.d.d.x), vec4<i32>(u_input.b, -37701i, u_input.a.x, -42863i)), vec4<i32>(u_input.c, 15711i, abs(u_input.a.x), -u_input.c)));
    let var_2 = Struct_2(select(u_input.a.yx, ~min(u_input.a.xx, global3.d.d) << (firstLeadingBit(var_1.d.c) % vec2<u32>(32u)), global3.d.b), var_1.c, var_1.b.zy, global3.d);
    let var_3 = var_1;
    var var_4 = var_3;
    global4 = var_1.d.d.x;
    var var_5 = vec2<i32>(select(var_4.e, i32(-1i) * -(~global3.e), any(!(!var_2.d.b))), firstTrailingBit(-global3.e));
    let x = u_input.a;
    s_output = StorageBuffer(~(~0u), global0.x, select(~(~_wgslsmith_div_u32(var_1.d.c.x, var_0)), 19621u, var_3.d.b.x));
}

