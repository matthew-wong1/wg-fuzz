struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: array<Struct_5, 12> = array<Struct_5, 12>(Struct_5(vec2<i32>(-1i, 0i), Struct_1(vec2<i32>(i32(-2147483648), 0i), -1796f), Struct_2(Struct_1(vec2<i32>(-22898i, i32(-2147483648)), 1341f), Struct_1(vec2<i32>(-13424i, -4176i), -375f), Struct_1(vec2<i32>(-1i, -45772i), -1114f), Struct_1(vec2<i32>(-44864i, 2147483647i), -277f), Struct_1(vec2<i32>(2147483647i, 10054i), 699f)), -1i), Struct_5(vec2<i32>(2147483647i, -2943i), Struct_1(vec2<i32>(-11440i, -1i), 424f), Struct_2(Struct_1(vec2<i32>(-1i, 7038i), 962f), Struct_1(vec2<i32>(-1i, 0i), 1023f), Struct_1(vec2<i32>(-1i, 17146i), -1000f), Struct_1(vec2<i32>(-19885i, -1i), -1000f), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 1102f)), i32(-2147483648)), Struct_5(vec2<i32>(11098i, -62808i), Struct_1(vec2<i32>(0i, 33819i), 1167f), Struct_2(Struct_1(vec2<i32>(80847i, 1i), -1447f), Struct_1(vec2<i32>(0i, 1i), -820f), Struct_1(vec2<i32>(604i, -33895i), -1584f), Struct_1(vec2<i32>(-16748i, -9261i), -2220f), Struct_1(vec2<i32>(7408i, -4312i), -772f)), 15177i), Struct_5(vec2<i32>(1i, i32(-2147483648)), Struct_1(vec2<i32>(i32(-2147483648), -17252i), -1529f), Struct_2(Struct_1(vec2<i32>(-1i, -26411i), 248f), Struct_1(vec2<i32>(-30790i, 0i), 151f), Struct_1(vec2<i32>(0i, 1i), -267f), Struct_1(vec2<i32>(i32(-2147483648), 1i), -1782f), Struct_1(vec2<i32>(15218i, -28238i), -2089f)), i32(-2147483648)), Struct_5(vec2<i32>(9328i, 0i), Struct_1(vec2<i32>(61215i, 6475i), -1015f), Struct_2(Struct_1(vec2<i32>(15465i, -1i), -1782f), Struct_1(vec2<i32>(-1i, 35965i), 2177f), Struct_1(vec2<i32>(-26225i, 12925i), -236f), Struct_1(vec2<i32>(0i, 0i), -341f), Struct_1(vec2<i32>(1i, 18704i), 123f)), -10732i), Struct_5(vec2<i32>(2147483647i, -32792i), Struct_1(vec2<i32>(40336i, 15468i), -1841f), Struct_2(Struct_1(vec2<i32>(145i, 1i), -1000f), Struct_1(vec2<i32>(0i, 2147483647i), 1377f), Struct_1(vec2<i32>(2147483647i, -1349i), 913f), Struct_1(vec2<i32>(-52432i, 11540i), 1490f), Struct_1(vec2<i32>(2147483647i, 29538i), -418f)), 1i), Struct_5(vec2<i32>(0i, 0i), Struct_1(vec2<i32>(-1i, 2147483647i), 816f), Struct_2(Struct_1(vec2<i32>(-33193i, 2147483647i), 680f), Struct_1(vec2<i32>(-9345i, 0i), -1202f), Struct_1(vec2<i32>(1i, 30780i), 416f), Struct_1(vec2<i32>(-6114i, 52047i), -452f), Struct_1(vec2<i32>(-1i, 4529i), 725f)), -33145i), Struct_5(vec2<i32>(0i, 2147483647i), Struct_1(vec2<i32>(-1i, 55088i), 1373f), Struct_2(Struct_1(vec2<i32>(1i, -9066i), -230f), Struct_1(vec2<i32>(66132i, 20903i), 1006f), Struct_1(vec2<i32>(2147483647i, -529i), 374f), Struct_1(vec2<i32>(-19474i, 1i), -293f), Struct_1(vec2<i32>(i32(-2147483648), 74170i), -194f)), -5597i), Struct_5(vec2<i32>(15117i, -24622i), Struct_1(vec2<i32>(25970i, 32743i), 345f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 1i), -246f), Struct_1(vec2<i32>(1i, 1i), -1669f), Struct_1(vec2<i32>(36129i, -1i), 1992f), Struct_1(vec2<i32>(1i, -1i), -768f), Struct_1(vec2<i32>(24029i, 71621i), 1000f)), 13930i), Struct_5(vec2<i32>(2147483647i, -1i), Struct_1(vec2<i32>(1i, -17839i), -837f), Struct_2(Struct_1(vec2<i32>(59760i, 8307i), 343f), Struct_1(vec2<i32>(14158i, 59182i), -2113f), Struct_1(vec2<i32>(i32(-2147483648), -10000i), 1000f), Struct_1(vec2<i32>(0i, -1i), 764f), Struct_1(vec2<i32>(-44028i, i32(-2147483648)), -300f)), 0i), Struct_5(vec2<i32>(-50442i, -56707i), Struct_1(vec2<i32>(1i, 8315i), -1442f), Struct_2(Struct_1(vec2<i32>(45013i, -6236i), -564f), Struct_1(vec2<i32>(19733i, 33073i), 409f), Struct_1(vec2<i32>(10651i, 14882i), -1000f), Struct_1(vec2<i32>(-1i, -1i), 829f), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), -408f)), 0i), Struct_5(vec2<i32>(-1i, -25033i), Struct_1(vec2<i32>(-1i, 22918i), 1624f), Struct_2(Struct_1(vec2<i32>(13757i, -1i), -1000f), Struct_1(vec2<i32>(1i, 0i), 260f), Struct_1(vec2<i32>(i32(-2147483648), -18004i), 1914f), Struct_1(vec2<i32>(i32(-2147483648), -34702i), -376f), Struct_1(vec2<i32>(-1i, 33912i), 886f)), i32(-2147483648)));

var<private> global2: bool;

var<private> global3: Struct_3;

var<private> global4: vec4<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = Struct_3(Struct_2(Struct_1(select(global3.a.b.a ^ global3.b.yz, global3.b.yx, arg_0 & false), -1957f), global3.a.e, global3.a.a, global3.a.e, global3.a.c), select(vec3<i32>(-36344i, min(global3.a.d.a.x, u_input.c.x), countOneBits(u_input.c.x)) ^ (vec3<i32>(-1i) * -u_input.a.yyw), vec3<i32>(-2147483647i, 2147483647i, select(u_input.a.x, 16767i, arg_0)) << (vec3<u32>(~21246u, ~0u, 4294967295u) % vec3<u32>(32u)), arg_0), vec3<u32>(u_input.b, _wgslsmith_mod_u32(~u_input.b, 83987u), 4294967295u));
    global4 = vec4<bool>(arg_0, all(!select(select(vec4<bool>(global4.x, global4.x, global4.x, true), vec4<bool>(true, true, false, true), global4.x), select(vec4<bool>(false, arg_0, global4.x, false), vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(global4.x, true, true, arg_0)), vec4<bool>(arg_0, true, arg_0, global4.x))), global4.x, select(all(!(!vec4<bool>(arg_0, false, true, true))), false, true));
    var var_1 = ~(((_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b, global0[_wgslsmith_index_u32(u_input.b, 19u)], global3.c.x), vec4<u32>(1u, var_0.c.x, u_input.b, 28286u)) << (vec4<u32>(var_0.c.x, global3.c.x, 4294967295u, 89280u) % vec4<u32>(32u))) | vec4<u32>(25684u, ~4294967295u, min(1u, 4294967295u), 75163u)) << (min(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(612u, global0[_wgslsmith_index_u32(14087u, 19u)], global0[_wgslsmith_index_u32(379u, 19u)], 1u)), max(vec4<u32>(u_input.b, u_input.b, 7026u, 84464u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.c.x, 19u)], 19u)], 1u, global0[_wgslsmith_index_u32(0u, 19u)], 26772u))), vec4<u32>(~24632u, 19355u, countOneBits(var_0.c.x), reverseBits(62916u))) % vec4<u32>(32u)));
    let var_2 = 1i;
    var var_3 = var_0.b;
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec3<i32>) -> vec4<u32> {
    let var_0 = Struct_4(arg_2, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.a.b.b - global3.a.a.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global3.a.e.b, global3.a.b.b)), global3.a.e.b, func_3(global4.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.b.b, global3.a.d.b))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-648f, global3.a.a.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.c.b, global3.a.e.b))))))), _wgslsmith_div_f32(global3.a.c.b, global3.a.c.b));
    let var_1 = ~vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, abs(17435i), _wgslsmith_sub_i32(-26802i, -8227i)), 2147483647i, abs(_wgslsmith_div_i32(~33328i, 1i)));
    let var_2 = global4.yx;
    let var_3 = select(select(select(select(vec4<bool>(true, var_2.x, global4.x, global4.x), select(vec4<bool>(true, global4.x, false, global4.x), vec4<bool>(true, false, var_2.x, global4.x), vec4<bool>(var_2.x, global4.x, var_2.x, global4.x)), global4.x), !select(vec4<bool>(true, false, true, var_2.x), vec4<bool>(global4.x, global4.x, false, false), vec4<bool>(true, true, false, true)), !vec4<bool>(true, var_2.x, true, true)), select(select(!vec4<bool>(true, true, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, false, false), true), select(vec4<bool>(global4.x, true, global4.x, true), vec4<bool>(global4.x, true, true, false), true), !global4.x), select(!select(vec4<bool>(true, false, global4.x, global4.x), vec4<bool>(true, var_2.x, global4.x, global4.x), vec4<bool>(false, false, global4.x, var_2.x)), vec4<bool>(!global4.x, any(vec2<bool>(global4.x, false)), false, true), !global4.x)), !(!select(select(vec4<bool>(false, true, true, global4.x), vec4<bool>(false, true, true, false), false), select(vec4<bool>(global4.x, global4.x, false, var_2.x), vec4<bool>(true, global4.x, false, true), global4.x), !vec4<bool>(var_2.x, global4.x, false, global4.x))), global4.x);
    global4 = !vec4<bool>((var_3.x & (0i == u_input.c.x)) | any(vec2<bool>(global4.x, false)), reverseBits(-6705i) == firstLeadingBit(_wgslsmith_mult_i32(var_0.a.x, 0i)), func_3(true || !var_3.x), true);
    return ~select(~abs(vec4<u32>(global3.c.x, global3.c.x, 31885u, global3.c.x)), ~countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(28574u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 19u)], 19u)], 23150u), vec4<u32>(u_input.b, 8268u, 22015u, u_input.b))), !vec4<bool>(false, global4.x, arg_0.x != -8869i, true));
}

fn func_1() -> Struct_2 {
    let var_0 = max(~func_2(u_input.a.wy, vec4<i32>(global3.b.x, u_input.a.x, global3.a.b.a.x, select(18903i, -2147483647i, true)), abs(vec3<i32>(-1i, 1671i, u_input.a.x)) >> ((vec3<u32>(global3.c.x, global0[_wgslsmith_index_u32(u_input.b, 19u)], 1u) ^ vec3<u32>(global0[_wgslsmith_index_u32(75040u, 19u)], 17589u, global0[_wgslsmith_index_u32(12983u, 19u)])) % vec3<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, global3.c.x, global3.c.x), abs(vec4<u32>(global3.c.x, u_input.b, 42526u, global0[_wgslsmith_index_u32(u_input.b, 19u)]))) >> (~u_input.b % 32u), u_input.b, 55135u, ~32932u));
    global2 = ~u_input.a.x == ~u_input.a.x;
    let var_1 = Struct_3(Struct_2(global3.a.c, Struct_1(firstLeadingBit(select(global3.b.xx, vec2<i32>(0i, -2147483647i), vec2<bool>(global4.x, global4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1267f) + _wgslsmith_f_op_f32(global3.a.d.b + 233f))), global3.a.b, Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a.x), countOneBits(u_input.a.wx)), global3.a.b.b), global3.a.a), select(vec3<i32>(~(-376i), 1i, i32(-1i) * -2147483647i), -u_input.a.wyy, 11535u < _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 20620u, global0[_wgslsmith_index_u32(49694u, 19u)], 0u), vec4<u32>(var_0.x, 40962u, u_input.b, 56143u))) >> (abs(var_0.wxw << (vec3<u32>(1u, 0u, 39034u) % vec3<u32>(32u))) % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(var_0.x, u_input.b, 1u), vec3<u32>(global3.c.x, global3.c.x, 4294967295u), global4.x), var_0.wwz), vec3<u32>(global3.c.x, global0[_wgslsmith_index_u32(30703u, 19u)], ~global0[_wgslsmith_index_u32(4294967295u, 19u)]), ~abs(var_0.www))));
    global2 = true;
    global0 = array<u32, 19>();
    return Struct_2(global3.a.b, Struct_1(-(abs(vec2<i32>(global3.a.b.a.x, u_input.c.x)) | -vec2<i32>(global3.b.x, 2147483647i)), var_1.a.e.b), Struct_1(_wgslsmith_div_vec2_i32(~global3.b.xz, u_input.c.yz >> (vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(1u, 19u)]) % vec2<u32>(32u))), var_1.a.b.b), Struct_1(-_wgslsmith_clamp_vec2_i32(min(vec2<i32>(global3.b.x, -3702i), global3.a.d.a), ~vec2<i32>(-2147483647i, 27144i), u_input.c.zz << (vec2<u32>(124769u, global3.c.x) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_1.a.d.b)))))), Struct_1(select(var_1.b.xx, vec2<i32>(u_input.a.x, u_input.a.x), global3.b.x > 24897i) << (max(var_1.c.yx, vec2<u32>(81177u, 106828u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-1315f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f)))));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(global3.c.x, 82723u, global3.c.x), vec3<u32>(u_input.b, u_input.b, 1u)) << (global3.c % vec3<u32>(32u)), ~vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(35939u, 75213u, global0[_wgslsmith_index_u32(global3.c.x, 19u)], 52637u), vec4<u32>(1u, 64536u, global0[_wgslsmith_index_u32(global3.c.x, 19u)], 66729u)), (u_input.b & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)]) & max(global0[_wgslsmith_index_u32(59053u, 19u)], global0[_wgslsmith_index_u32(10522u, 19u)]), u_input.b), vec3<u32>(global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(24578u, 53267u, global0[_wgslsmith_index_u32(global3.c.x, 19u)])), 19u)], abs(global0[_wgslsmith_index_u32(global3.c.x, 19u)]), ~global3.c.x));
    global0 = array<u32, 19>();
    return Struct_3(func_1(), u_input.a.xxw, firstLeadingBit(firstTrailingBit(vec3<u32>(var_0.x, 0u, global3.c.x)) >> (~min(global3.c, global3.c) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(func_1());
    var var_0 = 25091u;
    let var_1 = func_4(func_4(global3.a).a);
    global0 = array<u32, 19>();
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(185f, var_1.a.d.b, 951f), vec3<f32>(_wgslsmith_f_op_f32(global3.a.d.b * global3.a.c.b), global3.a.a.b, _wgslsmith_f_op_f32(-global3.a.d.b))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(466f, 1000f, -391f))))))));
    global2 = all(!select(vec2<bool>(false | global4.x, false), select(select(vec2<bool>(global4.x, global4.x), vec2<bool>(global4.x, global4.x), global4.xy), !global4.yy, true), global4.x));
    var var_3 = func_4(func_4(var_1.a).a).a.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

