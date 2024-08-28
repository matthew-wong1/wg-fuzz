struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<f32, 4>;

var<private> global2: Struct_4;

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<i32>(-75230i, 1i, 12698i, 1980i), vec3<i32>(i32(-2147483648), 2147483647i, 20467i), vec4<i32>(2147483647i, 0i, 1i, 37655i), -1917i), Struct_1(vec4<i32>(-1i, 1i, -4872i, -50454i), vec3<i32>(13799i, -32733i, 1i), vec4<i32>(-84062i, -5835i, -1i, 1i), -2303i), Struct_1(vec4<i32>(-1960i, 1i, 1i, 36331i), vec3<i32>(1i, 0i, -39245i), vec4<i32>(37126i, -3412i, 3750i, i32(-2147483648)), -1i), Struct_1(vec4<i32>(0i, -16713i, 41962i, -1i), vec3<i32>(19029i, -4313i, -22247i), vec4<i32>(-1i, 34403i, -22272i, i32(-2147483648)), 0i), Struct_1(vec4<i32>(-26199i, 0i, -1i, -48814i), vec3<i32>(-24674i, -16120i, 12240i), vec4<i32>(44000i, 30617i, 2147483647i, -5438i), 13162i), Struct_1(vec4<i32>(-24588i, 17201i, -808i, 0i), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 80i, -4559i, -1201i), 18678i), Struct_1(vec4<i32>(-80026i, -31982i, 1i, -42454i), vec3<i32>(2147483647i, 2147483647i, -9355i), vec4<i32>(i32(-2147483648), 15712i, 34720i, -24484i), 2147483647i), Struct_1(vec4<i32>(-2399i, 22261i, -1i, 50524i), vec3<i32>(0i, 1i, 1i), vec4<i32>(-1i, -2377i, 1i, 14475i), 0i), Struct_1(vec4<i32>(25543i, -1i, 0i, i32(-2147483648)), vec3<i32>(4049i, i32(-2147483648), -44171i), vec4<i32>(-1i, 2147483647i, 11832i, -4033i), -27744i), Struct_1(vec4<i32>(2147483647i, -36274i, 16641i, 1i), vec3<i32>(-1i, 23854i, 0i), vec4<i32>(-30308i, 2761i, -23246i, 0i), i32(-2147483648)), Struct_1(vec4<i32>(1i, 2147483647i, 14864i, -3125i), vec3<i32>(-1i, 0i, 2147483647i), vec4<i32>(47798i, i32(-2147483648), 3398i, -1i), -11027i), Struct_1(vec4<i32>(2147483647i, -845i, 1i, 2147483647i), vec3<i32>(28603i, 9706i, 26724i), vec4<i32>(0i, -27741i, 1722i, -1i), 1i), Struct_1(vec4<i32>(35074i, 2147483647i, 4895i, -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), 29233i), vec4<i32>(-1i, i32(-2147483648), -48949i, -4601i), 1i), Struct_1(vec4<i32>(9939i, 4006i, 0i, 3300i), vec3<i32>(-7559i, -27193i, -79160i), vec4<i32>(i32(-2147483648), -12784i, 1i, 1i), 34766i), Struct_1(vec4<i32>(12542i, -29481i, 41516i, 1i), vec3<i32>(0i, i32(-2147483648), 19094i), vec4<i32>(28818i, 1i, i32(-2147483648), 0i), 12789i), Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), 13698i), vec3<i32>(55771i, -1i, 15537i), vec4<i32>(-8742i, 2147483647i, 1i, 2147483647i), 34202i), Struct_1(vec4<i32>(-1i, -47892i, -1i, 2480i), vec3<i32>(-1i, -64044i, 1i), vec4<i32>(1i, i32(-2147483648), -1i, i32(-2147483648)), i32(-2147483648)), Struct_1(vec4<i32>(-18257i, 2147483647i, 21264i, -1i), vec3<i32>(0i, 1i, -65770i), vec4<i32>(-20026i, 2147483647i, -17196i, -38044i), 21176i), Struct_1(vec4<i32>(-31131i, -30224i, 8602i, -22341i), vec3<i32>(0i, -51102i, i32(-2147483648)), vec4<i32>(23264i, 2147483647i, 58680i, 1i), 2147483647i), Struct_1(vec4<i32>(55988i, -97970i, 2147483647i, 58303i), vec3<i32>(-1i, 1i, 0i), vec4<i32>(-1i, 2147483647i, 0i, 32325i), 4272i), Struct_1(vec4<i32>(-1i, 1i, 1i, 645i), vec3<i32>(72328i, -11495i, -33859i), vec4<i32>(-46084i, -43585i, 36572i, 0i), -25509i), Struct_1(vec4<i32>(21512i, 42820i, 2147483647i, 95532i), vec3<i32>(2147483647i, 1505i, 1i), vec4<i32>(-6354i, -3941i, i32(-2147483648), -12286i), -42357i), Struct_1(vec4<i32>(1i, 50563i, -19405i, 11122i), vec3<i32>(2147483647i, i32(-2147483648), -60012i), vec4<i32>(0i, -68695i, i32(-2147483648), 15094i), -39377i), Struct_1(vec4<i32>(i32(-2147483648), 0i, 1i, 0i), vec3<i32>(-8819i, 2147483647i, i32(-2147483648)), vec4<i32>(62590i, -8195i, -23264i, 1i), 0i), Struct_1(vec4<i32>(-1i, -14241i, 27676i, 1i), vec3<i32>(50583i, 2147483647i, i32(-2147483648)), vec4<i32>(717i, i32(-2147483648), 5888i, i32(-2147483648)), 8190i), Struct_1(vec4<i32>(-5413i, -40096i, 9670i, -18917i), vec3<i32>(-1i, 7428i, 1i), vec4<i32>(-15957i, i32(-2147483648), 3049i, 1i), 42201i), Struct_1(vec4<i32>(21776i, 0i, -1i, 0i), vec3<i32>(-16865i, 18786i, -1i), vec4<i32>(-1i, -61262i, 1i, 29732i), -1i), Struct_1(vec4<i32>(-16398i, i32(-2147483648), -55558i, -42568i), vec3<i32>(1i, 1i, 34547i), vec4<i32>(2147483647i, 0i, -1147i, 1i), 20393i), Struct_1(vec4<i32>(-53645i, 4741i, 0i, -13809i), vec3<i32>(1i, 0i, -38042i), vec4<i32>(8669i, 2147483647i, -1i, 2147483647i), -1i), Struct_1(vec4<i32>(1i, 62716i, 49089i, i32(-2147483648)), vec3<i32>(1038i, 32258i, 2147483647i), vec4<i32>(0i, -15095i, 0i, -1i), 0i), Struct_1(vec4<i32>(-36384i, -47870i, 2147483647i, 8304i), vec3<i32>(36172i, 1i, 68568i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, -42227i), i32(-2147483648)), Struct_1(vec4<i32>(-38617i, i32(-2147483648), -1i, 0i), vec3<i32>(0i, -7828i, 2147483647i), vec4<i32>(-37670i, i32(-2147483648), -1i, i32(-2147483648)), -1i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<bool>) -> f32 {
    var var_0 = Struct_2(min(vec2<u32>(~0u, 23041u), vec2<u32>(~4294967295u >> ((0u ^ u_input.a) % 32u), u_input.a)));
    global3 = array<Struct_1, 32>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, _wgslsmith_f_op_f32(-global2.a)));
    var var_2 = Struct_1(abs(arg_0.a ^ u_input.c), arg_0.b, firstTrailingBit(firstLeadingBit(arg_0.c)) << (vec4<u32>(15420u, u_input.a, var_0.a.x ^ var_0.a.x, _wgslsmith_add_u32(76859u, _wgslsmith_sub_u32(94645u, 85890u))) % vec4<u32>(32u)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-_wgslsmith_mult_i32(global0.x, global0.x), 1i), arg_0.c.x));
    let var_3 = Struct_3(1i << (_wgslsmith_mod_u32(var_0.a.x, max(4294967295u, 1u)) % 32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(923f, -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_0.a.x, 4u)], global2.a, arg_2.x)))))) * 2553f);
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> u32 {
    let var_0 = ~u_input.c.x;
    var var_1 = Struct_3(_wgslsmith_dot_vec2_i32(u_input.c.xw ^ abs(countOneBits(vec2<i32>(-2466i, u_input.c.x))), max(vec2<i32>(~u_input.c.x, var_0), u_input.c.zw)));
    var var_2 = Struct_2(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), ~vec2<u32>(u_input.d.x, u_input.d.x)));
    var_1 = Struct_3(global0.x);
    var var_3 = var_1.a;
    return ~1u;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: u32, arg_3: i32) -> i32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(867f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global3[_wgslsmith_index_u32(u_input.a, 32u)], Struct_3(-17286i), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)))))));
    var var_1 = Struct_3(abs((-1i << (~u_input.b.x % 32u)) << (34847u % 32u)));
    global1 = array<f32, 4>();
    global1 = array<f32, 4>();
    let var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.d.x, func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-211f, var_0.a, -1000f, global1[_wgslsmith_index_u32(4294967295u, 4u)])) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)], 457f, 750f) + vec4<f32>(global2.a, global1[_wgslsmith_index_u32(arg_2, 4u)], global1[_wgslsmith_index_u32(u_input.d.x, 4u)], -328f))), -101f)), 32u)];
    return ~arg_3;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(arg_0, 4u)], 263f, -625f, -497f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1780f, 666f, global1[_wgslsmith_index_u32(29876u, 4u)], global1[_wgslsmith_index_u32(86001u, 4u)])))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.a)), global2.a, _wgslsmith_f_op_f32(trunc(global2.a)), global2.a))) - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 4u)]))), global1[_wgslsmith_index_u32(12853u, 4u)], _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(ceil(-1807f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.xxx * vec3<f32>(_wgslsmith_f_op_f32(2409f - _wgslsmith_f_op_f32(func_2(global3[_wgslsmith_index_u32(arg_1, 32u)], Struct_3(2147483647i), vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(431f - _wgslsmith_f_op_f32(-1000f + 2113f)), _wgslsmith_f_op_f32(1425f + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0, 4u)])))));
    var var_2 = 4294967295u;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(func_2(Struct_1(arg_2.a, arg_2.a.wxz, u_input.c ^ vec4<i32>(-16754i, 0i, 2147483647i, global0.x), ~_wgslsmith_add_i32(u_input.c.x, -1i)), Struct_3(_wgslsmith_clamp_i32(reverseBits(2147483647i), i32(-1i) * -2147483647i, -2147483647i)), vec4<bool>(false, select(true, false, false) != true, select(true, true, true), any(vec3<bool>(true, true, true))))));
    let var_4 = !(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), true)));
    return Struct_2(_wgslsmith_add_vec2_u32(u_input.d, u_input.b.yz));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> bool {
    global1 = array<f32, 4>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a))) - arg_1.x), _wgslsmith_f_op_f32(ceil(arg_1.x)));
    global1 = array<f32, 4>();
    let var_1 = 1i;
    global2 = Struct_4(-739f);
    return (i32(-1i) * -func_1(-vec3<i32>(6515i, global0.x, 15904i), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), ~1u, -3910i ^ var_1)) != min(abs(min(u_input.c.x, ~(-1i))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 4>();
    let var_0 = firstTrailingBit(~(~(vec2<u32>(23235u, 0u) << (~u_input.b.yx % vec2<u32>(32u)))));
    var var_1 = func_5(func_4(~(~u_input.d.x) >> (_wgslsmith_clamp_u32(41408u >> (u_input.d.x % 32u), ~var_0.x, u_input.a) % 32u), 1u, Struct_1(countOneBits(u_input.c), u_input.c.wzy, _wgslsmith_add_vec4_i32(-vec4<i32>(global0.x, global0.x, u_input.c.x, u_input.c.x), vec4<i32>(-1i, global0.x, global0.x, -25790i)), func_1(u_input.c.wyx, select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), ~28732u, i32(-1i) * -2147483647i))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global1[_wgslsmith_index_u32(var_0.x, 4u)], global2.a, -929f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, 1775f, 510f)), vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1181f, global1[_wgslsmith_index_u32(4085u, 4u)], global1[_wgslsmith_index_u32(30525u, 4u)], global2.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], -228f, global2.a, -636f) + vec4<f32>(168f, 1000f, 1000f, global1[_wgslsmith_index_u32(76815u, 4u)]))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], 1373f, global1[_wgslsmith_index_u32(0u, 4u)], 191f))))), any(vec2<bool>(false, false)) & true)));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 4u)], -1223f), global2.a, 472f);
    var var_3 = -107f;
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.c.x), ~u_input.b, _wgslsmith_mult_vec2_i32(u_input.c.wy << (~_wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(55511u, u_input.d.x)) % vec2<u32>(32u)), countOneBits(u_input.c.yy)), u_input.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], -2328f, global1[_wgslsmith_index_u32(var_0.x, 4u)]), vec3<f32>(var_2.x, -561f, -1761f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(286f, global2.a, 1452f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.a, var_2.x, global1[_wgslsmith_index_u32(1u, 4u)])))))));
}

