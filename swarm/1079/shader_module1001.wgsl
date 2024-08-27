struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13>;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec4<u32>(8162u, 7075u, 57348u, 1u), vec4<f32>(-1696f, -1508f, -145f, -905f), vec2<i32>(-45698i, 18660i))), Struct_2(Struct_1(vec4<u32>(0u, 33586u, 0u, 4294967295u), vec4<f32>(-627f, 1043f, 394f, 1396f), vec2<i32>(-50559i, 2147483647i))), Struct_2(Struct_1(vec4<u32>(4294967295u, 22244u, 0u, 0u), vec4<f32>(134f, -223f, -892f, -226f), vec2<i32>(54214i, 3924i))), Struct_2(Struct_1(vec4<u32>(34125u, 12715u, 6996u, 26240u), vec4<f32>(-193f, -1244f, -897f, -154f), vec2<i32>(1i, 47380i))), Struct_2(Struct_1(vec4<u32>(0u, 0u, 0u, 1u), vec4<f32>(785f, 583f, -1609f, -1301f), vec2<i32>(57785i, 2147483647i))), Struct_2(Struct_1(vec4<u32>(4294967295u, 39700u, 1u, 43912u), vec4<f32>(-1682f, 1000f, -347f, 1000f), vec2<i32>(i32(-2147483648), 2147483647i))), Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 35551u, 1u), vec4<f32>(-649f, 283f, 183f, 1205f), vec2<i32>(1i, -7807i))), Struct_2(Struct_1(vec4<u32>(73213u, 0u, 7907u, 4294967295u), vec4<f32>(-880f, 1409f, 1002f, 465f), vec2<i32>(-44909i, -1i))), Struct_2(Struct_1(vec4<u32>(0u, 1u, 64192u, 4294967295u), vec4<f32>(1043f, -871f, 1044f, 1000f), vec2<i32>(i32(-2147483648), -1i))), Struct_2(Struct_1(vec4<u32>(7519u, 0u, 0u, 40298u), vec4<f32>(-975f, 332f, 1357f, -279f), vec2<i32>(1i, -31138i))), Struct_2(Struct_1(vec4<u32>(59199u, 22587u, 2222u, 1u), vec4<f32>(-157f, -784f, 624f, 747f), vec2<i32>(-10907i, 2147483647i))), Struct_2(Struct_1(vec4<u32>(1u, 47903u, 4294967295u, 4294967295u), vec4<f32>(-1004f, 679f, -189f, 1021f), vec2<i32>(-35698i, 50483i))), Struct_2(Struct_1(vec4<u32>(43641u, 1u, 4294967295u, 51520u), vec4<f32>(-1000f, 1782f, 700f, -627f), vec2<i32>(60408i, i32(-2147483648)))), Struct_2(Struct_1(vec4<u32>(0u, 3569u, 32705u, 44714u), vec4<f32>(574f, 1423f, -1048f, -827f), vec2<i32>(6446i, 2147483647i))), Struct_2(Struct_1(vec4<u32>(7812u, 22656u, 79532u, 32902u), vec4<f32>(707f, -207f, 270f, -1332f), vec2<i32>(-38578i, -19748i))));

var<private> global2: vec4<u32> = vec4<u32>(1u, 29096u, 57080u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    global2 = u_input.a;
    var var_0 = Struct_4(global2.x == ~_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a.x, 4294967295u, arg_0.x), vec3<u32>(33265u, 0u, u_input.a.x)), ~vec3<u32>(u_input.d, 13306u, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(897f)), _wgslsmith_div_f32(-348f, _wgslsmith_f_op_f32(select(1722f, -569f, false)))))), select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, true, true))), vec4<bool>(true, all(vec2<bool>(false, false)), true, true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-535f - 609f))), -1120f)), ~max(_wgslsmith_sub_u32(~44943u, 42364u), ~global2.x));
    let var_1 = u_input.c;
    let var_2 = vec2<u32>(_wgslsmith_mult_u32(~1u << (~(~global2.x) % 32u), ~arg_0.x), 80624u);
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, var_0.b, -1184f, 1665f), vec4<f32>(797f, 998f, var_0.d, -573f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d, var_0.d, var_0.d, 179f), vec4<f32>(var_0.b, var_0.b, var_0.b, -133f), true)), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_0.d, -466f, var_0.b) * vec4<f32>(1297f, var_0.d, var_0.b, 205f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1914f, -183f, _wgslsmith_f_op_f32(step(-1057f, var_0.b)), _wgslsmith_f_op_f32(762f * -1421f)) - vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.b)), -544f, _wgslsmith_f_op_f32(var_0.d * -791f), -364f)))));
    return global1[_wgslsmith_index_u32(~(~1u), 15u)];
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    global0 = array<vec2<u32>, 13>();
    let var_0 = arg_0.b.c.x;
    var var_1 = arg_0;
    global2 = vec4<u32>(10817u, ~(~func_1(global0[_wgslsmith_index_u32(~global2.x, 13u)]).a.a.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(19602u, arg_0.c.a.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.a.x, var_1.b.a.x), min(vec2<u32>(var_1.b.a.x, 20601u), arg_0.b.a.wz)) & vec2<u32>(5366u, u_input.d)), 4526u);
    var_1 = arg_0;
    return Struct_1(_wgslsmith_mod_vec4_u32(u_input.a, ~(reverseBits(vec4<u32>(var_1.c.a.a.x, u_input.d, var_1.c.a.a.x, global2.x)) << (func_1(u_input.a.zx).a.a % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(select(arg_0.c.a.b, arg_0.b.b, !any(select(vec2<bool>(false, var_1.d), vec2<bool>(true, var_1.d), vec2<bool>(false, arg_0.d))))), arg_0.c.a.c << (u_input.a.xz % vec2<u32>(32u)));
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_3(max(firstLeadingBit(min(u_input.c, u_input.c) | _wgslsmith_sub_vec4_i32(u_input.c, u_input.c)), abs(max(~vec4<i32>(-38531i, 2147483647i, -2147483647i, 30912i), ~vec4<i32>(u_input.e.x, u_input.e.x, u_input.c.x, u_input.b)))), func_3(Struct_3(vec4<i32>(0i, u_input.e.x, -u_input.b, -u_input.c.x), Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-574f, 1205f, 1370f, -1000f)), u_input.e.xz), func_1(abs(vec2<u32>(32952u, 4731u))), true), -(i32(-1i) * -1i), vec4<i32>(u_input.e.x, -u_input.c.x, 1i, 1i)), Struct_2(func_1(vec2<u32>(global2.x << (global2.x % 32u), _wgslsmith_div_u32(77235u, global2.x))).a), false);
    global0 = array<vec2<u32>, 13>();
    var var_1 = global0[_wgslsmith_index_u32(~4294967295u, 13u)];
    var var_2 = ~(13114i << (1u % 32u));
    var var_3 = max(u_input.a.x, 1u ^ ~firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.a, var_0.c.a.a)));
    return Struct_5(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~firstLeadingBit(global0[_wgslsmith_index_u32(var_0.b.a.x, 13u)]), u_input.a.zy), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u >> (global2.x % 32u), ~1u), vec2<u32>(~var_0.b.a.x, 124929u), select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.d), 13u)], ~global2.xx, vec2<bool>(true, true)))), 15u)]);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: Struct_5) -> bool {
    global0 = array<vec2<u32>, 13>();
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(arg_3.a.a.b.yx));
    let var_1 = u_input.a.wxw;
    global1 = array<Struct_2, 15>();
    var var_2 = global1[_wgslsmith_index_u32(~0u, 15u)];
    return all(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), false, any(vec3<bool>(true, false, true)) && false));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(12854u, 4294967295u >> (~u_input.d % 32u), reverseBits(1u), 62413u), vec4<u32>(max(20071u, 5236u) << (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(u_input.a.yz << (vec2<u32>(41987u, arg_0.e) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(u_input.a.xx, vec2<u32>(arg_2.e, arg_2.e))), 27311u, ~37282u << ((global2.x | 1u) % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, -1000f, -1000f, 700f) * vec4<f32>(arg_0.b, -216f, -476f, -274f))), vec4<f32>(1003f, _wgslsmith_f_op_f32(arg_2.b + arg_2.b), arg_2.b, 1068f), arg_0.c))), reverseBits(u_input.c.xz));
    let var_1 = Struct_4(-887f >= arg_0.d, _wgslsmith_f_op_f32(-var_0.b.x), select(!arg_0.c, !(!select(arg_0.c, arg_0.c, arg_0.c)), true), -1000f, ~109189u);
    global0 = array<vec2<u32>, 13>();
    global1 = array<Struct_2, 15>();
    var var_2 = global1[_wgslsmith_index_u32(global2.x, 15u)];
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(~(~4294967295u), 13u)], ~(u_input.a.xz ^ u_input.a.xx)));
    let var_1 = func_5(Struct_4(func_4(~0u, 764f, countOneBits(countOneBits(0u)), func_2()), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.b.x - var_0.a.b.x), _wgslsmith_f_op_f32(-665f * var_0.a.b.x)), _wgslsmith_f_op_f32(-var_0.a.b.x))), select(vec4<bool>(false, u_input.c.x < 0i, true, 37594i == var_0.a.c.x), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true)), vec4<bool>(false, true, true, all(vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(-415f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -425f), var_0.a.b.x)), global2.x), 30244u, Struct_4(!any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(466f))), var_0.a.b.x)), vec4<bool>(true, select(var_0.a.a.x < 24776u, func_4(39272u, var_0.a.b.x, u_input.a.x, Struct_5(global1[_wgslsmith_index_u32(var_0.a.a.x, 15u)])), true), _wgslsmith_mod_i32(u_input.c.x, var_0.a.c.x) >= var_0.a.c.x, u_input.d < 41056u), var_0.a.b.x, ~(~18075u) >> (0u % 32u)));
    let var_2 = func_5(Struct_4(false, _wgslsmith_div_f32(var_1.b, 253f), vec4<bool>(!var_1.c.x, var_1.c.x, var_1.a, select(-2147483647i, -2147483647i, var_1.c.x) < min(-25738i, -31980i)), 406f, ~4294967295u), ~(~4294967295u), var_1).c.ywx;
    let var_3 = (_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(69334i, u_input.e.x), u_input.c.wz), _wgslsmith_mod_i32(3945i, 1i)), ~(i32(-1i) * -26278i)) | 790i) >> (_wgslsmith_add_u32(func_5(var_1, ~select(4294967295u, var_0.a.a.x, var_2.x), var_1).e, u_input.d) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_add_vec2_u32(~vec2<u32>(118464u, 79726u), ~var_0.a.a.zw)), _wgslsmith_sub_vec2_i32(var_0.a.c, -_wgslsmith_sub_vec2_i32(vec2<i32>(-64510i, var_0.a.c.x), vec2<i32>(var_0.a.c.x, u_input.b))), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(var_3, _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_add_i32(2536i, u_input.c.x)), reverseBits(35777i), _wgslsmith_mult_i32(-47820i, ~var_3))));
}

