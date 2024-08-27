struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-32238i, vec4<i32>(2147483647i, 22505i, 25417i, 1i), 1000f), vec2<f32>(1361f, 609f), Struct_1(2147483647i, vec4<i32>(0i, 774i, -35601i, -35481i), 2206f));

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(29736i, vec4<i32>(2147483647i, 1i, 2147483647i, -17608i), -1000f), vec2<f32>(284f, 2184f), Struct_1(-1i, vec4<i32>(2147483647i, 48437i, i32(-2147483648), 9549i), -557f)), Struct_2(Struct_1(12964i, vec4<i32>(1i, -1i, 1i, 6819i), 579f), vec2<f32>(1000f, -190f), Struct_1(1i, vec4<i32>(-44815i, -14488i, i32(-2147483648), 10884i), -408f)), Struct_2(Struct_1(-21216i, vec4<i32>(5002i, -1i, -5613i, -1i), 379f), vec2<f32>(-1000f, -156f), Struct_1(-1822i, vec4<i32>(i32(-2147483648), 52639i, 2147483647i, 10870i), -777f)), Struct_2(Struct_1(i32(-2147483648), vec4<i32>(-14509i, 105723i, 38753i, -1i), -987f), vec2<f32>(-658f, -302f), Struct_1(-21807i, vec4<i32>(2147483647i, -1i, 2147483647i, 1i), -284f)), Struct_2(Struct_1(1i, vec4<i32>(-2588i, -16817i, 0i, 1i), -743f), vec2<f32>(-2045f, -1305f), Struct_1(-51801i, vec4<i32>(22918i, 1i, 24536i, 2147483647i), -1460f)), Struct_2(Struct_1(-1i, vec4<i32>(1i, i32(-2147483648), 27415i, -16523i), 579f), vec2<f32>(-706f, -955f), Struct_1(10213i, vec4<i32>(0i, 0i, -1i, 45035i), 1392f)), Struct_2(Struct_1(-1i, vec4<i32>(-24727i, 2147483647i, i32(-2147483648), 2147483647i), 1569f), vec2<f32>(562f, -871f), Struct_1(-62932i, vec4<i32>(-15188i, 1i, 60071i, 2147483647i), 762f)), Struct_2(Struct_1(95808i, vec4<i32>(1i, 26019i, 48835i, -23661i), -1064f), vec2<f32>(130f, 737f), Struct_1(i32(-2147483648), vec4<i32>(1i, i32(-2147483648), 47828i, 26451i), 2095f)), Struct_2(Struct_1(2147483647i, vec4<i32>(-15184i, 2147483647i, -42445i, 16904i), -164f), vec2<f32>(641f, 324f), Struct_1(1i, vec4<i32>(-32788i, 1i, -45482i, 2147483647i), -1458f)), Struct_2(Struct_1(-1i, vec4<i32>(25989i, i32(-2147483648), i32(-2147483648), 1i), 860f), vec2<f32>(276f, 362f), Struct_1(-43323i, vec4<i32>(52840i, -5062i, -4080i, -45682i), -599f)), Struct_2(Struct_1(0i, vec4<i32>(-52846i, 16459i, -23376i, -35336i), 493f), vec2<f32>(587f, 1280f), Struct_1(1i, vec4<i32>(2147483647i, 17728i, -15919i, -14126i), 1225f)), Struct_2(Struct_1(-61060i, vec4<i32>(i32(-2147483648), 1i, 0i, 1i), -221f), vec2<f32>(-304f, 248f), Struct_1(-1i, vec4<i32>(i32(-2147483648), -892i, i32(-2147483648), 0i), -143f)), Struct_2(Struct_1(2147483647i, vec4<i32>(i32(-2147483648), 2147483647i, -1i, -11763i), 114f), vec2<f32>(186f, -742f), Struct_1(0i, vec4<i32>(9958i, 1i, 2147483647i, i32(-2147483648)), 1555f)), Struct_2(Struct_1(-29941i, vec4<i32>(0i, -41895i, -1i, i32(-2147483648)), 1986f), vec2<f32>(-252f, 267f), Struct_1(16228i, vec4<i32>(36370i, 1i, 8787i, i32(-2147483648)), 1067f)), Struct_2(Struct_1(1i, vec4<i32>(-7308i, -32790i, 2147483647i, 6944i), -1074f), vec2<f32>(1492f, 1003f), Struct_1(-6480i, vec4<i32>(-42607i, 2147483647i, -12885i, i32(-2147483648)), -193f)), Struct_2(Struct_1(i32(-2147483648), vec4<i32>(52942i, -1i, 2147483647i, 16707i), -301f), vec2<f32>(-1000f, 1368f), Struct_1(1i, vec4<i32>(0i, 14993i, 8881i, -1367i), 1232f)), Struct_2(Struct_1(i32(-2147483648), vec4<i32>(0i, -1i, i32(-2147483648), 27026i), 1225f), vec2<f32>(-837f, 1000f), Struct_1(-1i, vec4<i32>(7066i, -1i, 2147483647i, -5705i), -323f)), Struct_2(Struct_1(9545i, vec4<i32>(19234i, 0i, 20042i, -1i), 294f), vec2<f32>(-742f, 298f), Struct_1(-13170i, vec4<i32>(2147483647i, 1i, 2147483647i, 1i), -1210f)), Struct_2(Struct_1(2147483647i, vec4<i32>(-6164i, i32(-2147483648), 26537i, -41282i), -1182f), vec2<f32>(-215f, 881f), Struct_1(16097i, vec4<i32>(-1i, -11043i, 2147483647i, 2147483647i), -393f)));

var<private> global2: bool;

var<private> global3: array<Struct_2, 6>;

var<private> global4: array<i32, 19>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    var var_0 = Struct_3(vec4<u32>(0u, _wgslsmith_div_u32(28666u, ~41738u), 4940u, 54078u) >> (firstTrailingBit(firstTrailingBit(select(vec4<u32>(4294967295u, 1u, 663u, 27618u), vec4<u32>(56427u, 0u, 16026u, 42902u), vec4<bool>(false, true, true, false)))) % vec4<u32>(32u)), _wgslsmith_dot_vec4_i32(-(global0.a.b & global0.a.b), vec4<i32>(global0.c.a, global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 50820u), 19u)], global0.c.b.x, arg_2.x)) | -6031i, global0.a, -2147483647i);
    var var_1 = firstLeadingBit(_wgslsmith_mult_i32(~_wgslsmith_clamp_i32(global0.c.b.x, -2147483647i, u_input.a), -1i)) >= abs(2147483647i);
    var var_2 = 1i;
    return _wgslsmith_f_op_f32(f32(-1f) * -487f);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = arg_0.c;
    var var_1 = _wgslsmith_mod_i32(9371i, -2147483647i) & global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_1.a.x, 61714u, arg_0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, 4294967295u, ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(27448u, arg_0.a.x, arg_1.a.x), arg_0.a.xzx)), ~select(vec4<u32>(arg_0.a.x, 1u, 32830u, 4840u), vec4<u32>(arg_1.a.x, arg_1.a.x, 1u, arg_1.a.x), vec4<bool>(true, false, true, false)))), 19u)];
    let var_2 = global1[_wgslsmith_index_u32(arg_0.a.x, 19u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -803f), _wgslsmith_f_op_f32(select(-1767f, global0.b.x, false))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-236f, 2215f))), _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), -vec2<i32>(arg_2.x, arg_0.c.b.x), any(vec2<bool>(false, true)))))));
    global1 = array<Struct_2, 19>();
    return Struct_1(-arg_2.x, ~arg_0.c.b, global0.b.x);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = Struct_2(global0.c, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1342f * -1676f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2564f - -757f))))), func_2(Struct_3(abs(vec4<u32>(4294967295u, 648u, 89503u, 85455u)), -arg_0.b.x, Struct_1(_wgslsmith_mod_i32(2934i, 2147483647i), -vec4<i32>(u_input.a, 11652i, u_input.a, arg_0.a), 440f), global4[_wgslsmith_index_u32(reverseBits(min(1u, 0u)), 19u)]), Struct_3(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_0.b.x, -1i), i32(-1i) * -39071i), global0.a, _wgslsmith_dot_vec3_i32(arg_0.b.zzz, -vec3<i32>(global4[_wgslsmith_index_u32(21374u, 19u)], arg_0.b.x, u_input.a))), ~(vec3<i32>(0i, global0.c.a, -10064i) << (vec3<u32>(4294967295u, 4294967295u, 4294967295u) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(0u, 4294967295u, 4005u)), select(vec3<u32>(91331u, 95897u, 24939u), vec3<u32>(0u, 2726u, 86312u), vec3<bool>(true, false, false))) % vec3<u32>(32u))));
    var var_0 = 1298f;
    global0 = global1[_wgslsmith_index_u32(~(min(reverseBits(~0u), 0u) << (firstTrailingBit(1u) % 32u)), 19u)];
    let var_1 = 1u;
    let var_2 = -113f;
    return func_2(Struct_3(~abs(vec4<u32>(1u, 83139u, var_1, 62386u)), _wgslsmith_sub_i32(-u_input.a, global0.a.a), Struct_1(4619i << (var_1 % 32u), global0.a.b, _wgslsmith_f_op_f32(-637f - _wgslsmith_f_op_f32(-global0.b.x))), 37793i), Struct_3(max(vec4<u32>(~0u, 4294967295u, 28603u, 4294967295u), vec4<u32>(~var_1, 4294967295u, 0u, var_1)), global0.c.a, Struct_1(43532i, global0.a.b, _wgslsmith_div_f32(var_2, -377f)), _wgslsmith_add_i32(_wgslsmith_add_i32(3766i, -global0.c.b.x), 2147483647i)), vec3<i32>(_wgslsmith_sub_i32(-2147483647i, arg_0.a), _wgslsmith_add_i32(countOneBits(_wgslsmith_mod_i32(arg_0.a, 0i)), -(global4[_wgslsmith_index_u32(12033u, 19u)] & global4[_wgslsmith_index_u32(59972u, 19u)])), -global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(39042u, ~var_1, 4294967295u), 19u)]));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec4<bool> {
    let var_0 = arg_0.c;
    global0 = global1[_wgslsmith_index_u32(firstTrailingBit(~max(firstTrailingBit(arg_1), arg_1)) >> (~arg_1 % 32u), 19u)];
    global0 = Struct_2(Struct_1(95651i, global0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, arg_0.c))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), vec3<bool>(true, false, true), vec2<i32>(global0.a.b.x, global0.c.b.x), false))) - global0.b))), arg_0);
    let var_1 = true;
    var var_2 = func_4(arg_0);
    return select(select(vec4<bool>(!var_1, 12640i == arg_0.a, false, !var_1), !vec4<bool>(false, select(false, var_1, false), !var_1, any(vec2<bool>(var_1, var_1))), !(!(global4[_wgslsmith_index_u32(arg_1, 19u)] >= global0.c.b.x))), vec4<bool>(!(_wgslsmith_f_op_f32(func_3(vec2<bool>(var_1, var_1), vec3<bool>(true, false, true), var_2.b.xz, false)) == arg_2), all(!select(vec3<bool>(var_1, false, true), vec3<bool>(false, true, true), vec3<bool>(var_1, false, var_1))), (false & !var_1) && !(var_1 | true), !(true || (var_0 <= global0.b.x))), select(select(vec4<bool>(global0.c.c == arg_0.c, true, true & var_1, var_1), !select(vec4<bool>(var_1, var_1, true, false), vec4<bool>(true, true, false, true), vec4<bool>(var_1, true, var_1, true)), select(select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, false, var_1, false), var_1), vec4<bool>(true, true, false, false), !vec4<bool>(var_1, true, false, false))), !vec4<bool>(all(vec3<bool>(var_1, var_1, false)), true, true, any(vec2<bool>(var_1, var_1))), select(vec4<bool>(all(vec4<bool>(true, var_1, var_1, false)), false, false, !var_1), !vec4<bool>(var_1, var_1, var_1, var_1), var_1)));
}

fn func_1(arg_0: f32) -> Struct_3 {
    global4 = array<i32, 19>();
    global4 = array<i32, 19>();
    let var_0 = vec2<bool>(all(func_5(func_4(func_2(Struct_3(vec4<u32>(4294967295u, 22118u, 4294967295u, 1u), u_input.a, global0.a, -1i), Struct_3(vec4<u32>(54622u, 0u, 38703u, 65874u), u_input.a, Struct_1(2147483647i, vec4<i32>(-20879i, -1i, 0i, 1i), -1842f), 16618i), global0.c.b.xwz)), ~0u, 1137f)), true);
    global2 = !var_0.x;
    var var_1 = select(var_0, !vec2<bool>(all(select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x))), var_0.x), vec2<bool>(!func_5(Struct_1(u_input.a, global0.c.b, -430f), _wgslsmith_mult_u32(0u, 0u), func_4(global0.c).c).x, any(func_5(func_2(Struct_3(vec4<u32>(4294967295u, 50354u, 83u, 22117u), -2147483647i, Struct_1(-6201i, vec4<i32>(0i, global0.c.b.x, global0.c.a, -4805i), arg_0), u_input.a), Struct_3(vec4<u32>(55013u, 1u, 4294967295u, 1u), 0i, global0.a, 0i), global0.c.b.yyz), _wgslsmith_add_u32(3054u, 63857u), -1204f).xzz)));
    return Struct_3(~countOneBits(~vec4<u32>(1u, 1u, 1u, 1u)), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_add_u32(0u, ~16409u), 1u, ~(~2218u)), ~select(vec4<u32>(16260u, 10460u, 2899u, 4294967295u), vec4<u32>(0u, 23588u, 23587u, 101318u), var_1.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(2218u, 4294967295u, 16917u, 57268u), select(vec4<u32>(0u, 0u, 45602u, 18400u), vec4<u32>(1u, 96812u, 21584u, 20610u), true)) % vec4<u32>(32u))), 19u)], func_4(func_4(global0.a)), -u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c - -1423f)))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.c) * global0.a.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0.c.c, var_0.c.c)), _wgslsmith_f_op_f32(-var_0.c.c), all(vec4<bool>(true, true, true, false)))), -1152f))), vec3<f32>(-216f, global0.c.c, _wgslsmith_f_op_f32(-var_0.c.c)));
    let var_2 = var_1;
    let var_3 = all(select(select(vec2<bool>(true, select(true, false, false)), vec2<bool>(true, true), vec2<bool>(8095u >= var_0.a.x, true)), vec2<bool>(true, u_input.a != _wgslsmith_add_i32(u_input.a, 0i)), true && (var_2.x > -511f)));
    let var_4 = vec2<bool>(all(vec3<bool>(true, true, true)), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, var_0.a.yx);
}

