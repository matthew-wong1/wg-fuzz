struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, -851f, 1198f, 334f);

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-1000f, vec2<u32>(1u, 67548u), vec3<u32>(1u, 4294967295u, 13089u), -220f, vec2<f32>(-1193f, 950f)), Struct_1(-927f, vec2<u32>(0u, 4294967295u), vec3<u32>(18134u, 4294967295u, 25795u), 479f, vec2<f32>(840f, 610f)), Struct_1(-1318f, vec2<u32>(49606u, 4294967295u), vec3<u32>(2904u, 6716u, 1u), 551f, vec2<f32>(-206f, 1383f)), Struct_1(744f, vec2<u32>(1u, 4294967295u), vec3<u32>(0u, 0u, 4294967295u), -592f, vec2<f32>(-1151f, -336f)), Struct_1(301f, vec2<u32>(30297u, 4294967295u), vec3<u32>(67893u, 63711u, 12680u), -372f, vec2<f32>(1100f, -2316f)), Struct_1(-1000f, vec2<u32>(1u, 1u), vec3<u32>(16178u, 94621u, 21527u), 1469f, vec2<f32>(798f, 880f)), Struct_1(586f, vec2<u32>(84469u, 71676u), vec3<u32>(64526u, 44365u, 48380u), -216f, vec2<f32>(-2128f, 884f)), Struct_1(-538f, vec2<u32>(1u, 23298u), vec3<u32>(4294967295u, 11639u, 4294967295u), -1000f, vec2<f32>(1180f, -402f)), Struct_1(-839f, vec2<u32>(0u, 4294967295u), vec3<u32>(4294967295u, 51118u, 78793u), 1000f, vec2<f32>(331f, 244f)), Struct_1(-648f, vec2<u32>(1u, 25668u), vec3<u32>(25210u, 0u, 51214u), -1028f, vec2<f32>(2172f, 256f)), Struct_1(1531f, vec2<u32>(1u, 59245u), vec3<u32>(0u, 19155u, 35212u), -562f, vec2<f32>(255f, 617f)), Struct_1(-160f, vec2<u32>(53671u, 4294967295u), vec3<u32>(67354u, 1u, 1u), -325f, vec2<f32>(1088f, 1281f)), Struct_1(-225f, vec2<u32>(40655u, 16120u), vec3<u32>(69714u, 23339u, 6261u), 653f, vec2<f32>(-1331f, 515f)), Struct_1(1104f, vec2<u32>(7930u, 56411u), vec3<u32>(48414u, 18128u, 4294967295u), -217f, vec2<f32>(800f, -1169f)), Struct_1(-1249f, vec2<u32>(0u, 0u), vec3<u32>(0u, 35648u, 0u), -1008f, vec2<f32>(-1258f, 237f)), Struct_1(124f, vec2<u32>(1u, 0u), vec3<u32>(41022u, 4294967295u, 11021u), -1398f, vec2<f32>(-2515f, -1437f)), Struct_1(-236f, vec2<u32>(0u, 1u), vec3<u32>(19696u, 24379u, 35898u), -1535f, vec2<f32>(-404f, 931f)), Struct_1(591f, vec2<u32>(4294967295u, 1u), vec3<u32>(22307u, 4283u, 94523u), 243f, vec2<f32>(1326f, 856f)), Struct_1(-1237f, vec2<u32>(0u, 4294967295u), vec3<u32>(11719u, 1u, 117269u), -796f, vec2<f32>(-867f, -1000f)), Struct_1(-144f, vec2<u32>(110293u, 0u), vec3<u32>(4294967295u, 14429u, 4294967295u), 929f, vec2<f32>(577f, 1566f)), Struct_1(-344f, vec2<u32>(0u, 55359u), vec3<u32>(97261u, 0u, 12462u), 2904f, vec2<f32>(758f, 230f)), Struct_1(1000f, vec2<u32>(0u, 13760u), vec3<u32>(31731u, 4294967295u, 1u), 371f, vec2<f32>(-798f, -1648f)), Struct_1(-1581f, vec2<u32>(41078u, 1u), vec3<u32>(4294967295u, 12681u, 32952u), -787f, vec2<f32>(-585f, 103f)), Struct_1(1213f, vec2<u32>(34759u, 1043u), vec3<u32>(54969u, 4294967295u, 1u), 1000f, vec2<f32>(1335f, 297f)), Struct_1(-1000f, vec2<u32>(52481u, 14804u), vec3<u32>(3026u, 1u, 7726u), -1254f, vec2<f32>(-390f, 232f)), Struct_1(1681f, vec2<u32>(8901u, 5600u), vec3<u32>(38021u, 24575u, 1u), 1379f, vec2<f32>(-765f, 1014f)), Struct_1(511f, vec2<u32>(1u, 25260u), vec3<u32>(0u, 54916u, 53859u), -426f, vec2<f32>(-1118f, -672f)), Struct_1(229f, vec2<u32>(1u, 4294967295u), vec3<u32>(29856u, 4294967295u, 0u), 1910f, vec2<f32>(2017f, 729f)));

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(true, vec3<f32>(929f, -977f, -643f), false, Struct_1(205f, vec2<u32>(0u, 4294967295u), vec3<u32>(0u, 48640u, 24393u), -178f, vec2<f32>(937f, -796f))), Struct_2(true, vec3<f32>(-479f, 2190f, 820f), true, Struct_1(-2172f, vec2<u32>(74752u, 1u), vec3<u32>(1u, 4957u, 43950u), 785f, vec2<f32>(367f, -902f))), Struct_2(true, vec3<f32>(-1246f, 1000f, 1030f), false, Struct_1(2435f, vec2<u32>(39352u, 57425u), vec3<u32>(1u, 1u, 1749u), 197f, vec2<f32>(-352f, -1203f))), Struct_2(true, vec3<f32>(1045f, -197f, 461f), true, Struct_1(-858f, vec2<u32>(1u, 117951u), vec3<u32>(4524u, 1u, 1u), -706f, vec2<f32>(-341f, -437f))), Struct_2(true, vec3<f32>(1025f, -1546f, 623f), false, Struct_1(-1000f, vec2<u32>(51757u, 1u), vec3<u32>(30237u, 24673u, 10768u), -855f, vec2<f32>(-583f, -1019f))), Struct_2(false, vec3<f32>(237f, -833f, -147f), false, Struct_1(382f, vec2<u32>(68627u, 28195u), vec3<u32>(4294967295u, 3518u, 1u), 2301f, vec2<f32>(762f, 808f))), Struct_2(false, vec3<f32>(-620f, -1451f, -168f), true, Struct_1(-413f, vec2<u32>(47809u, 2239u), vec3<u32>(23168u, 35333u, 27162u), -1284f, vec2<f32>(737f, -1149f))), Struct_2(true, vec3<f32>(947f, 1012f, 938f), true, Struct_1(702f, vec2<u32>(9411u, 18915u), vec3<u32>(1070u, 40161u, 1u), 1026f, vec2<f32>(1853f, -461f))), Struct_2(false, vec3<f32>(-304f, -849f, 911f), false, Struct_1(562f, vec2<u32>(0u, 16754u), vec3<u32>(0u, 1u, 0u), -1000f, vec2<f32>(-1179f, -1551f))), Struct_2(false, vec3<f32>(1356f, -531f, 498f), true, Struct_1(-884f, vec2<u32>(21403u, 0u), vec3<u32>(15002u, 4294967295u, 46125u), -403f, vec2<f32>(-796f, -971f))), Struct_2(false, vec3<f32>(-554f, -1085f, 249f), false, Struct_1(240f, vec2<u32>(4294967295u, 50953u), vec3<u32>(4294967295u, 0u, 4294967295u), 965f, vec2<f32>(1453f, -1000f))), Struct_2(false, vec3<f32>(938f, -1333f, -172f), false, Struct_1(1187f, vec2<u32>(18442u, 1u), vec3<u32>(54541u, 0u, 58599u), -490f, vec2<f32>(1126f, 625f))), Struct_2(false, vec3<f32>(-630f, 1100f, -474f), true, Struct_1(-1101f, vec2<u32>(84787u, 4294967295u), vec3<u32>(19590u, 23909u, 1u), 379f, vec2<f32>(-357f, -1000f))));

var<private> global3: Struct_2;

var<private> global4: vec2<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> i32 {
    let var_0 = global0.x;
    return abs(countOneBits(_wgslsmith_mod_i32(~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b), max(vec2<i32>(0i, 4483i), vec2<i32>(u_input.b, 12820i))))));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~reverseBits(arg_1.d.b.x), 5835u) & global3.d.c.x, 13u)];
    let var_1 = any(!(!select(select(vec2<bool>(false, global4.x), vec2<bool>(var_0.a, true), vec2<bool>(true, global4.x)), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(global4.x, false), vec2<bool>(false, global4.x)))));
    global3 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + var_0.b.x) - var_0.d.d));
    global1 = array<Struct_1, 28>();
    return _wgslsmith_mult_i32(_wgslsmith_mod_i32((-56618i | ~arg_0) & _wgslsmith_div_i32(arg_0, i32(-1i) * -2147483647i), 0i), -24305i);
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: bool) -> bool {
    var var_0 = 1u;
    global1 = array<Struct_1, 28>();
    var var_1 = abs(u_input.a);
    var_1 = func_3(u_input.b, Struct_2(false, global3.b, any(select(select(vec4<bool>(false, arg_2, false, global4.x), vec4<bool>(global3.a, true, false, global3.c), vec4<bool>(false, true, true, global3.a)), !vec4<bool>(arg_2, true, global4.x, false), !vec4<bool>(global3.a, true, true, arg_2))), Struct_1(-1785f, firstLeadingBit(vec2<u32>(0u, arg_0.x)), max(~arg_0, vec3<u32>(4294967295u, global3.d.c.x, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.d.e.x, global0.x)) * _wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_vec2_f32(floor(global0.zz)))));
    let var_2 = 938f;
    return 639f < _wgslsmith_f_op_f32(sign(-917f));
}

fn func_2() -> vec2<bool> {
    global1 = array<Struct_1, 28>();
    global4 = vec2<bool>(global4.x, any(select(vec3<bool>(select(false, global4.x, global4.x), false, global4.x), vec3<bool>(global4.x, !global3.a, global3.c), all(vec4<bool>(true, global4.x, global4.x, false)))));
    var var_0 = global3.d.c.x < 57625u;
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1124f - -703f) - _wgslsmith_div_f32(global0.x, global3.d.a)))), global0.x), ~_wgslsmith_div_vec2_u32(~global3.d.b | abs(vec2<u32>(global3.d.b.x, global3.d.b.x)), ~vec2<u32>(global3.d.b.x, 94540u) & (global3.d.c.yx ^ vec2<u32>(global3.d.b.x, global3.d.c.x))), vec3<u32>(~global3.d.c.x, 1u << (global3.d.b.x % 32u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(reverseBits(global3.d.b.x), global3.d.c.x), global3.d.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1513f))))), vec2<f32>(global3.b.x, 1f));
    global3 = global2[_wgslsmith_index_u32(41676u, 13u)];
    return select(vec2<bool>(true, func_4(~var_1.c, ~func_3(302i, global2[_wgslsmith_index_u32(0u, 13u)]), !(true && global3.a))), vec2<bool>(global3.c || (_wgslsmith_f_op_f32(global3.d.d * -436f) >= global3.d.d), global3.c), true);
}

fn func_5(arg_0: bool, arg_1: vec4<bool>) -> vec4<f32> {
    let var_0 = select(global3.d.c.x, 11412u, arg_0);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.d)) - global0.x), -557f)));
    global2 = array<Struct_2, 13>();
    var var_2 = select(arg_1.wy, vec2<bool>(global3.a, arg_0), false);
    var var_3 = global2[_wgslsmith_index_u32(4294967295u, 13u)];
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.d.a, 1000f, var_1, -634f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(480f, -1222f, var_3.b.x, var_1) * vec4<f32>(global0.x, 733f, global3.d.a, var_1))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -2020f, -1510f, 698f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d.e.x, global3.b.x, -398f, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1, 1341f, true)), 1329f, true)), _wgslsmith_f_op_f32(f32(-1f) * -369f), var_3.b.x, _wgslsmith_f_op_f32(-global3.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(func_5(all(vec2<bool>(global4.x, global3.c)), !vec4<bool>(any(vec3<bool>(true, false, global3.c)), ~u_input.a == func_1(), any(func_2()), global4.x)));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x)))) + global3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -612f));
    var var_1 = vec2<bool>(false, -2147483647i >= ~(-(u_input.a << (global3.d.b.x % 32u))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1917f, 1990f, _wgslsmith_f_op_vec4_f32(func_5(!var_1.x || false, select(select(vec4<bool>(true, global4.x, true, global4.x), vec4<bool>(global4.x, true, true, global4.x), vec4<bool>(true, var_1.x, var_1.x, false)), !vec4<bool>(global3.c, false, global3.c, true), vec4<bool>(true, global3.a, var_1.x, global3.c)))).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x * var_0))), _wgslsmith_f_op_f32(-1689f + _wgslsmith_f_op_f32(-global0.x)))));
    let var_2 = vec4<f32>(-341f, 1679f, var_0, 1516f);
    global0 = vec4<f32>(2898f, var_0, 1601f, var_0);
    var var_3 = vec2<bool>(!global4.x, func_2().x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(0u));
}

