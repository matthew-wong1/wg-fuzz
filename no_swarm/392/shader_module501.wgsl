struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(15779u, -396f, Struct_2(true, vec3<f32>(-1000f, 342f, -1377f), 4294967295u, Struct_1(vec4<f32>(-494f, 128f, 1215f, 202f), vec2<bool>(true, true))), Struct_2(true, vec3<f32>(-1301f, 298f, 1050f), 65297u, Struct_1(vec4<f32>(1606f, -1000f, 1040f, 1296f), vec2<bool>(false, true)))), Struct_3(68955u, -1198f, Struct_2(false, vec3<f32>(-393f, 203f, 353f), 4294967295u, Struct_1(vec4<f32>(-1449f, 189f, -1000f, -609f), vec2<bool>(false, false))), Struct_2(false, vec3<f32>(-1168f, 748f, -1977f), 0u, Struct_1(vec4<f32>(-1699f, -420f, -764f, -216f), vec2<bool>(false, true)))), Struct_3(65696u, 1000f, Struct_2(true, vec3<f32>(-1091f, 217f, -1031f), 75638u, Struct_1(vec4<f32>(-437f, -369f, 1108f, 144f), vec2<bool>(false, false))), Struct_2(true, vec3<f32>(875f, -1062f, 183f), 11682u, Struct_1(vec4<f32>(339f, -338f, 100f, 1270f), vec2<bool>(false, false)))), Struct_3(4705u, -459f, Struct_2(false, vec3<f32>(1339f, 335f, 422f), 44026u, Struct_1(vec4<f32>(-2257f, 1737f, -203f, -1000f), vec2<bool>(true, true))), Struct_2(false, vec3<f32>(1049f, 547f, 1697f), 5838u, Struct_1(vec4<f32>(1000f, 478f, 1677f, 1516f), vec2<bool>(true, true)))), Struct_3(4294967295u, -452f, Struct_2(false, vec3<f32>(-727f, 1138f, -1492f), 50919u, Struct_1(vec4<f32>(1301f, 347f, 521f, 367f), vec2<bool>(true, true))), Struct_2(true, vec3<f32>(-650f, -289f, -176f), 0u, Struct_1(vec4<f32>(-171f, 307f, 1445f, -1109f), vec2<bool>(true, true)))), Struct_3(1u, 1000f, Struct_2(true, vec3<f32>(-1624f, 253f, 361f), 16695u, Struct_1(vec4<f32>(-257f, 1223f, 381f, 1000f), vec2<bool>(true, true))), Struct_2(true, vec3<f32>(864f, -730f, -160f), 1u, Struct_1(vec4<f32>(-449f, -285f, -411f, 172f), vec2<bool>(false, true)))), Struct_3(0u, 1132f, Struct_2(false, vec3<f32>(-2207f, 145f, 425f), 13128u, Struct_1(vec4<f32>(633f, -260f, 1273f, 1926f), vec2<bool>(false, false))), Struct_2(true, vec3<f32>(549f, 1000f, -1790f), 38659u, Struct_1(vec4<f32>(-156f, -283f, 303f, -305f), vec2<bool>(false, false)))), Struct_3(61158u, -685f, Struct_2(true, vec3<f32>(1369f, -1515f, -157f), 5754u, Struct_1(vec4<f32>(-888f, 302f, -635f, 1370f), vec2<bool>(false, true))), Struct_2(true, vec3<f32>(1589f, 1268f, 828f), 0u, Struct_1(vec4<f32>(-913f, 632f, -1151f, -1622f), vec2<bool>(true, true)))), Struct_3(1u, 556f, Struct_2(true, vec3<f32>(-856f, 1209f, 722f), 0u, Struct_1(vec4<f32>(-1000f, -966f, -812f, 442f), vec2<bool>(true, false))), Struct_2(true, vec3<f32>(948f, 1153f, -931f), 13546u, Struct_1(vec4<f32>(-1040f, 2206f, 1000f, 1000f), vec2<bool>(true, false)))), Struct_3(0u, -554f, Struct_2(true, vec3<f32>(-586f, -1570f, -196f), 0u, Struct_1(vec4<f32>(-1000f, 1000f, -1105f, 765f), vec2<bool>(false, true))), Struct_2(false, vec3<f32>(369f, 217f, -1382f), 39518u, Struct_1(vec4<f32>(853f, -1719f, -930f, 1289f), vec2<bool>(true, true)))), Struct_3(75875u, 159f, Struct_2(true, vec3<f32>(-1905f, -376f, -242f), 101719u, Struct_1(vec4<f32>(426f, 373f, 652f, 214f), vec2<bool>(false, false))), Struct_2(false, vec3<f32>(487f, 1799f, -1491f), 1u, Struct_1(vec4<f32>(-1116f, 1304f, 405f, 1221f), vec2<bool>(false, false)))), Struct_3(4294967295u, -134f, Struct_2(true, vec3<f32>(-2909f, -848f, -1197f), 4294967295u, Struct_1(vec4<f32>(-1400f, 2029f, -1517f, 443f), vec2<bool>(false, false))), Struct_2(true, vec3<f32>(-215f, -1092f, 902f), 38569u, Struct_1(vec4<f32>(118f, 233f, 506f, -768f), vec2<bool>(false, false)))), Struct_3(25733u, -278f, Struct_2(false, vec3<f32>(-371f, 139f, -1720f), 1u, Struct_1(vec4<f32>(-1294f, 1147f, 1539f, 1152f), vec2<bool>(true, true))), Struct_2(true, vec3<f32>(1026f, 319f, -696f), 31800u, Struct_1(vec4<f32>(1824f, 179f, -315f, -962f), vec2<bool>(true, false)))));

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(2147483647i, 13468i, 1i), vec3<i32>(2147483647i, -8485i, 59321i), vec3<i32>(59886i, -59836i, i32(-2147483648)), vec3<i32>(27069i, 0i, -157i), vec3<i32>(-1i, -1i, 1i), vec3<i32>(i32(-2147483648), 1i, 0i), vec3<i32>(2147483647i, -18817i, 14833i), vec3<i32>(-12781i, i32(-2147483648), 74547i), vec3<i32>(1i, 25551i, -1i), vec3<i32>(43080i, 19345i, i32(-2147483648)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = global1.x;
    global2 = array<vec3<i32>, 10>();
    let var_1 = global1.x;
    global2 = array<vec3<i32>, 10>();
    global0 = array<Struct_3, 13>();
    return !global1.x;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    return Struct_2(true, arg_3.a.zzx, 14468u, Struct_1(arg_3.a, vec2<bool>(true, !global1.x)));
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(arg_0.d.a.x - _wgslsmith_f_op_f32(-arg_0.d.a.x)), 1f, _wgslsmith_f_op_f32(step(-2181f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1821f)))));
    global2 = array<vec3<i32>, 10>();
    global2 = array<vec3<i32>, 10>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-arg_0.d.a);
    return arg_0.d;
}

fn func_4(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -199f);
    var var_1 = ~firstTrailingBit(1u);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1087f * arg_0.b.x), _wgslsmith_f_op_f32(arg_0.d.a.x + 302f)))));
    let var_2 = func_2(u_input.a.x, ((_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 23073i), u_input.a) & u_input.a) << (vec2<u32>(~3897u, arg_0.c) % vec2<u32>(32u))) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), countOneBits(~firstLeadingBit(_wgslsmith_add_vec3_i32(global2[_wgslsmith_index_u32(arg_0.c, 10u)], vec3<i32>(u_input.a.x, u_input.a.x, 24459i)))), arg_0.d);
    var_0 = var_2.d.a.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -291f;
    var var_1 = vec3<bool>(false, true, func_1(var_0));
    global1 = vec3<bool>(var_1.x, func_4(Struct_2(global1.x, vec3<f32>(var_0, _wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(-var_0)), u_input.c | (u_input.c << (11901u % 32u)), func_3(func_2(2147483647i, vec2<i32>(26812i, u_input.a.x), vec3<i32>(-2147483647i, 1i, 0i), Struct_1(vec4<f32>(-1000f, var_0, 389f, 1254f), var_1.zz))))), false);
    var_1 = select(vec3<bool>(var_1.x, func_3(func_2(u_input.a.x, reverseBits(vec2<i32>(-31553i, u_input.a.x)), global2[_wgslsmith_index_u32(~0u, 10u)], Struct_1(vec4<f32>(-1489f, var_0, -855f, var_0), vec2<bool>(global1.x, var_1.x)))).b.x, !global1.x), vec3<bool>(false, any(select(vec3<bool>(global1.x, var_1.x, true), vec3<bool>(true, true, true), vec3<bool>(true, false, var_1.x))), global1.x), global1.x);
    var var_2 = u_input.a.x;
    var var_3 = ~abs(-29969i);
    var var_4 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~firstLeadingBit(u_input.a.x), u_input.a.x, 25703i), vec3<i32>(countOneBits(-u_input.a.x), abs(u_input.a.x), ~countOneBits(0i))), u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, _wgslsmith_mult_i32(-2147483647i, -1i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 36827u), vec3<u32>(1u, 0u, 30892u)) % 32u)), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(~u_input.a, ~vec2<i32>(u_input.a.x, 2147483647i)), vec2<i32>(_wgslsmith_div_i32(-2147483647i, -6377i), 0i))));
    var var_5 = global0[_wgslsmith_index_u32(56010u, 13u)];
    var var_6 = max(-vec3<i32>(reverseBits(u_input.a.x), u_input.a.x, -2147483647i), (vec3<i32>(1i, 1229i, -var_4.x) | -(vec3<i32>(u_input.a.x, -57918i, var_4.x) << (vec3<u32>(u_input.c, 2778u, 25133u) % vec3<u32>(32u)))) | ~(~firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 10u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(var_5.d.c, var_5.c.c, u_input.c))), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(20675u, 45836u, 27228u), vec3<u32>(var_5.d.c, var_5.a, 10221u))) << (~reverseBits(vec3<u32>(var_5.a, 4294967295u, var_5.a)) % vec3<u32>(32u))), 541f, -1i, ~(~vec3<u32>(_wgslsmith_mod_u32(u_input.b, 0u), var_5.c.c, func_2(u_input.a.x, vec2<i32>(var_6.x, 24864i), global2[_wgslsmith_index_u32(1u, 10u)], Struct_1(vec4<f32>(-176f, var_0, 1000f, -606f), vec2<bool>(false, var_1.x))).c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_5.d.d.a.xxx) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.d.d.a.x, 814f, var_5.d.d.a.x))) * var_5.c.d.a.xxz)));
}

