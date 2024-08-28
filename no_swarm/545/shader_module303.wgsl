struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec2<u32>(21022u, 0u), Struct_1(vec3<f32>(-538f, -1000f, 424f), vec3<bool>(false, true, true), -1851f, -1277f, i32(-2147483648)), vec2<i32>(26943i, -32036i), true), Struct_2(vec2<u32>(10555u, 49343u), Struct_1(vec3<f32>(-1643f, -514f, -1130f), vec3<bool>(false, false, false), -170f, 1006f, 39003i), vec2<i32>(-1i, 2147483647i), false), Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(vec3<f32>(170f, 385f, 156f), vec3<bool>(true, false, false), 1000f, 799f, 7986i), vec2<i32>(-44287i, -1035i), false), Struct_2(vec2<u32>(22519u, 51151u), Struct_1(vec3<f32>(-940f, 452f, 294f), vec3<bool>(true, true, false), -1114f, -111f, 24112i), vec2<i32>(-40707i, 13984i), false), Struct_2(vec2<u32>(0u, 1u), Struct_1(vec3<f32>(-935f, 1036f, 890f), vec3<bool>(false, false, true), -159f, 455f, -1i), vec2<i32>(569i, -1i), true), Struct_2(vec2<u32>(50375u, 4294967295u), Struct_1(vec3<f32>(-1000f, -125f, 801f), vec3<bool>(true, false, false), 322f, 965f, -1i), vec2<i32>(-24102i, 2147483647i), false), Struct_2(vec2<u32>(0u, 0u), Struct_1(vec3<f32>(-969f, 1179f, -175f), vec3<bool>(false, true, true), -1778f, 140f, 3433i), vec2<i32>(i32(-2147483648), 29568i), true), Struct_2(vec2<u32>(0u, 44715u), Struct_1(vec3<f32>(-294f, -969f, 1523f), vec3<bool>(true, true, false), -1915f, 107f, i32(-2147483648)), vec2<i32>(18356i, -4402i), true), Struct_2(vec2<u32>(1u, 0u), Struct_1(vec3<f32>(1758f, -1682f, -810f), vec3<bool>(false, true, false), 530f, 553f, -5829i), vec2<i32>(15780i, 4697i), false), Struct_2(vec2<u32>(432u, 129420u), Struct_1(vec3<f32>(1059f, -509f, 876f), vec3<bool>(false, false, true), -1785f, -998f, i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), false), Struct_2(vec2<u32>(0u, 27656u), Struct_1(vec3<f32>(1013f, -776f, -114f), vec3<bool>(true, false, false), 647f, 298f, -1i), vec2<i32>(-1i, 2147483647i), true), Struct_2(vec2<u32>(4294967295u, 64301u), Struct_1(vec3<f32>(-259f, 1274f, -793f), vec3<bool>(false, false, true), -403f, -858f, 2147483647i), vec2<i32>(6718i, -1i), false), Struct_2(vec2<u32>(0u, 42555u), Struct_1(vec3<f32>(-444f, -1000f, -1493f), vec3<bool>(true, true, true), 887f, 433f, 50479i), vec2<i32>(971i, -20467i), true), Struct_2(vec2<u32>(85045u, 64372u), Struct_1(vec3<f32>(-656f, -990f, -653f), vec3<bool>(false, false, true), -1497f, -343f, -111693i), vec2<i32>(-1i, -3613i), false), Struct_2(vec2<u32>(0u, 0u), Struct_1(vec3<f32>(-628f, 132f, -442f), vec3<bool>(true, false, false), -2098f, -456f, 2147483647i), vec2<i32>(0i, 1i), true), Struct_2(vec2<u32>(0u, 32114u), Struct_1(vec3<f32>(-424f, -881f, -1315f), vec3<bool>(false, true, true), 476f, 377f, 48651i), vec2<i32>(0i, -24936i), false), Struct_2(vec2<u32>(7555u, 15838u), Struct_1(vec3<f32>(-554f, -845f, -1607f), vec3<bool>(true, true, false), -155f, -327f, -50132i), vec2<i32>(-14438i, i32(-2147483648)), true), Struct_2(vec2<u32>(67351u, 1u), Struct_1(vec3<f32>(-1272f, 181f, -123f), vec3<bool>(false, true, false), -211f, -361f, -30077i), vec2<i32>(30447i, -1i), true), Struct_2(vec2<u32>(120630u, 2739u), Struct_1(vec3<f32>(1317f, -350f, 153f), vec3<bool>(false, true, true), 1000f, 215f, i32(-2147483648)), vec2<i32>(-1i, 28279i), true), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(vec3<f32>(253f, 1379f, 1000f), vec3<bool>(false, true, false), 301f, -1000f, -1i), vec2<i32>(0i, 6478i), false), Struct_2(vec2<u32>(56422u, 16046u), Struct_1(vec3<f32>(-972f, -1649f, 705f), vec3<bool>(false, true, true), -345f, 1902f, 1i), vec2<i32>(-7736i, -6117i), false), Struct_2(vec2<u32>(1u, 18150u), Struct_1(vec3<f32>(-671f, -699f, -1169f), vec3<bool>(true, true, true), -735f, -1286f, 59709i), vec2<i32>(i32(-2147483648), 2147483647i), true), Struct_2(vec2<u32>(1163u, 8457u), Struct_1(vec3<f32>(-379f, 383f, -2179f), vec3<bool>(false, true, true), -1889f, 1611f, i32(-2147483648)), vec2<i32>(-27614i, 1657i), false), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec3<f32>(-112f, 244f, -302f), vec3<bool>(false, true, true), 204f, -1335f, 7318i), vec2<i32>(16979i, 1i), false));

var<private> global1: array<Struct_2, 11>;

var<private> global2: array<vec2<i32>, 31>;

var<private> global3: Struct_1;

var<private> global4: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = 0i;
    let var_1 = true;
    var var_2 = Struct_1(arg_1.b.a, global3.b, _wgslsmith_f_op_f32(ceil(arg_1.b.d)), -962f, countOneBits(_wgslsmith_mult_i32(abs(abs(-1i)), max(u_input.d, ~global3.e))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-global3.a);
    global3 = arg_1.b;
    return arg_1.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    global1 = array<Struct_2, 11>();
    global4 = array<vec2<bool>, 28>();
    global1 = array<Struct_2, 11>();
    var var_0 = select(abs(vec2<u32>(func_2(global3.b, global1[_wgslsmith_index_u32(u_input.c ^ u_input.c, 11u)]).x, ~18749u)), ~(~vec2<u32>(u_input.c << (u_input.c % 32u), u_input.c)), true);
    var var_1 = arg_0.a.x;
    return -317f;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<f32>) -> bool {
    var var_0 = Struct_2(~_wgslsmith_mod_vec2_u32(~func_2(vec3<bool>(arg_1, true, false), Struct_2(vec2<u32>(arg_0.x, arg_0.x), Struct_1(vec3<f32>(850f, -331f, -1013f), vec3<bool>(true, false, arg_1), global3.a.x, -1530f, u_input.b.x), global2[_wgslsmith_index_u32(arg_0.x, 31u)], global3.b.x)), ~(~arg_0.yx)), Struct_1(global3.a, global3.b, _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.x, global3.c, -651f), global3.a, vec3<bool>(global3.b.x, false, true))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-2117f * arg_2.x), _wgslsmith_f_op_f32(step(global3.a.x, global3.c)), -2147483647i), vec4<f32>(_wgslsmith_f_op_f32(ceil(1343f)), _wgslsmith_f_op_f32(arg_2.x - global3.a.x), global3.a.x, _wgslsmith_f_op_f32(trunc(global3.a.x))))), _wgslsmith_f_op_f32(exp2(arg_2.x)), ~1i << (~select(u_input.c, 0u, global3.b.x) % 32u)), vec2<i32>(1i, -1i), true);
    var_0 = Struct_2(~_wgslsmith_div_vec2_u32(var_0.a, arg_0.yy) ^ var_0.a, var_0.b, min(vec2<i32>(-1i, _wgslsmith_div_i32(u_input.e.x, global3.e) ^ -21541i), vec2<i32>(17964i, 2147483647i) & ~var_0.c), any(!(!select(vec4<bool>(arg_1, true, false, false), vec4<bool>(true, false, global3.b.x, var_0.d), vec4<bool>(arg_1, false, arg_1, true)))));
    global3 = var_0.b;
    global4 = array<vec2<bool>, 28>();
    global4 = array<vec2<bool>, 28>();
    return all(vec4<bool>(all(vec3<bool>(any(vec4<bool>(global3.b.x, var_0.b.b.x, global3.b.x, true)), all(vec2<bool>(false, true)), all(vec4<bool>(true, true, false, arg_1)))), true, any(global3.b), global3.b.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>) -> f32 {
    var var_0 = global3.e;
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(global3.a))))), arg_0, _wgslsmith_f_op_f32(step(-732f, -199f)), 160f, countOneBits(max(i32(-1i) * -57288i, global3.e)));
    var var_1 = reverseBits(u_input.e);
    global4 = array<vec2<bool>, 28>();
    return _wgslsmith_f_op_f32(f32(-1f) * -475f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.b.x;
    var_0 = select(false, any(!select(vec2<bool>(false, true), vec2<bool>(false, global3.b.x), select(global3.b.xy, global4[_wgslsmith_index_u32(14319u, 28u)], true))), true);
    global3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global3.a.x), global3.a.x, 1927f), global3.b, global3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<bool>(global3.b.x, func_1(vec3<u32>(u_input.c, u_input.c, 16481u), true, global3.a), true), global2[_wgslsmith_index_u32(u_input.c, 31u)]))), ~(i32(-1i) * -40054i));
    var var_1 = u_input.d;
    let var_2 = Struct_2(_wgslsmith_clamp_vec2_u32(~(~firstTrailingBit(vec2<u32>(4294967295u, u_input.c))), max(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 0u)), ~vec2<u32>(1u, u_input.c)) << (~vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), vec2<u32>(~4294967295u, 0u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(global3.a, vec3<bool>(global3.b.x, global3.b.x, false), 278f, global3.d, 0i), vec4<f32>(-377f, -1719f, global3.a.x, global3.c)))), -529f, _wgslsmith_f_op_f32(-2635f + global3.c)), !(!global3.b), 1000f, _wgslsmith_f_op_f32(step(global3.c, _wgslsmith_f_op_f32(global3.d * _wgslsmith_f_op_f32(-675f + 1062f)))), ~u_input.e.x), reverseBits(-select(vec2<i32>(0i, u_input.a), u_input.e.xx, !global3.b.yx)), !all(global3.b));
    let var_3 = select(vec3<bool>(!((u_input.d <= -12416i) && true), true, !(!global3.b.x)), vec3<bool>(true, false, global3.b.x), vec3<bool>(true, true, true));
    var_0 = any(!vec3<bool>(var_2.b.b.x, -2147483647i > var_2.b.e, true));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.c))) * global3.c) >= global3.d;
    let x = u_input.a;
    s_output = StorageBuffer(-721f, _wgslsmith_f_op_f32(-global3.c), _wgslsmith_mult_u32(abs(u_input.c), ~abs(0u)));
}

