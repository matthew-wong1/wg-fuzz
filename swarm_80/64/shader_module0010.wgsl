struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec2<i32>,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<f32>(147f, 1101f, 792f, 839f), vec3<f32>(-491f, 1487f, -464f), false, 1263u), -18183i);

var<private> global2: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(Struct_2(Struct_1(vec4<f32>(-318f, 948f, -383f, -1000f), vec3<f32>(1372f, -1111f, 633f), false, 1u), -52458i), vec3<bool>(true, false, false), vec2<i32>(1i, 22641i), Struct_3(-154f, vec3<bool>(true, false, false)), Struct_3(-184f, vec3<bool>(false, true, true))), Struct_4(Struct_2(Struct_1(vec4<f32>(258f, 581f, -209f, -709f), vec3<f32>(300f, -404f, 1494f), true, 30059u), 2147483647i), vec3<bool>(true, false, true), vec2<i32>(8342i, 1i), Struct_3(871f, vec3<bool>(false, false, false)), Struct_3(-699f, vec3<bool>(false, true, true))), Struct_4(Struct_2(Struct_1(vec4<f32>(-584f, -637f, -1000f, -911f), vec3<f32>(491f, -339f, -1046f), false, 4294967295u), -5782i), vec3<bool>(true, true, false), vec2<i32>(2147483647i, i32(-2147483648)), Struct_3(-360f, vec3<bool>(true, true, false)), Struct_3(-136f, vec3<bool>(true, true, false))), Struct_4(Struct_2(Struct_1(vec4<f32>(-888f, -1967f, 1251f, 1254f), vec3<f32>(1232f, -492f, -1000f), true, 34040u), -18116i), vec3<bool>(true, false, true), vec2<i32>(-34529i, i32(-2147483648)), Struct_3(506f, vec3<bool>(true, false, false)), Struct_3(-230f, vec3<bool>(true, true, false))), Struct_4(Struct_2(Struct_1(vec4<f32>(495f, 1000f, 1439f, -277f), vec3<f32>(-203f, 992f, -479f), false, 6485u), 1i), vec3<bool>(false, false, true), vec2<i32>(-1i, i32(-2147483648)), Struct_3(209f, vec3<bool>(false, true, true)), Struct_3(1243f, vec3<bool>(false, false, false))), Struct_4(Struct_2(Struct_1(vec4<f32>(-708f, -126f, 1000f, -208f), vec3<f32>(-586f, 124f, 2266f), true, 25164u), 12157i), vec3<bool>(false, false, false), vec2<i32>(-7222i, -1i), Struct_3(431f, vec3<bool>(true, false, true)), Struct_3(-399f, vec3<bool>(true, true, false))), Struct_4(Struct_2(Struct_1(vec4<f32>(363f, 101f, 1000f, -341f), vec3<f32>(234f, 1000f, -960f), true, 5726u), 6947i), vec3<bool>(true, true, true), vec2<i32>(5979i, 12570i), Struct_3(2013f, vec3<bool>(false, false, false)), Struct_3(-1792f, vec3<bool>(true, false, true))), Struct_4(Struct_2(Struct_1(vec4<f32>(170f, 1224f, -521f, 601f), vec3<f32>(-391f, 520f, -207f), true, 1u), -35611i), vec3<bool>(true, false, true), vec2<i32>(-3978i, 2147483647i), Struct_3(475f, vec3<bool>(false, false, true)), Struct_3(-1000f, vec3<bool>(true, true, true))), Struct_4(Struct_2(Struct_1(vec4<f32>(-1224f, 1000f, 443f, 623f), vec3<f32>(-2259f, -725f, 205f), true, 81394u), 0i), vec3<bool>(false, true, true), vec2<i32>(-8688i, i32(-2147483648)), Struct_3(-1340f, vec3<bool>(true, false, false)), Struct_3(1329f, vec3<bool>(true, false, false))));

var<private> global3: array<vec3<i32>, 9>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<bool>) -> vec4<f32> {
    let var_0 = select(select(vec4<bool>(global1.a.c, _wgslsmith_f_op_f32(trunc(-1000f)) > global1.a.b.x, global1.a.c, true), select(vec4<bool>(false && arg_0, true, true, true), vec4<bool>(true & arg_2.x, arg_0, !global1.a.c, global1.a.c), select(vec4<bool>(false, arg_0, false, arg_0), select(vec4<bool>(false, arg_0, global1.a.c, arg_0), vec4<bool>(arg_0, false, global1.a.c, true), true), arg_0)), !vec4<bool>(true, all(vec4<bool>(true, true, false, arg_2.x)), arg_2.x, true || arg_2.x)), vec4<bool>(global1.a.c, global1.a.c, true, true), arg_0);
    global2 = array<Struct_4, 9>();
    global3 = array<vec3<i32>, 9>();
    global0 = array<vec2<f32>, 31>();
    let var_1 = Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.b.x, -166f, global1.a.b.x, global1.a.a.x) * global1.a.a))), global1.a.b, !(arg_0 || !arg_0), firstTrailingBit(arg_1.x) >> (1u % 32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global1.a.a)) * _wgslsmith_f_op_vec4_f32(-global1.a.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.a.b.x), _wgslsmith_f_op_f32(global1.a.a.x - global1.a.b.x), _wgslsmith_f_op_f32(trunc(2144f)))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(1i, u_input.d)), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 11076i), vec2<i32>(u_input.d, -21711i), vec2<i32>(1i, -47534i))) >= -4549i, 1u), _wgslsmith_mult_vec3_u32(select(vec3<u32>(_wgslsmith_mult_u32(arg_1.x, u_input.b), 4294967295u, _wgslsmith_mod_u32(42542u, 79333u)), u_input.a, true), vec3<u32>(abs(~global1.a.d), 94522u, max(33480u, global1.a.d))), global1.a.b.x);
    return vec4<f32>(var_1.a.b.x, -213f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-870f + -1050f))) + -301f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-138f, _wgslsmith_f_op_f32(sign(global1.a.b.x)))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = Struct_3(1000f, vec3<bool>(any(vec3<bool>(24334i >= arg_1.b, arg_1.a.c, 4294967295u <= arg_0.d)), false, true));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a.b.x)));
    let var_2 = global2[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(48771u, ~arg_0.d) | 0u), 9u)];
    var var_3 = var_2.a;
    var_3 = arg_1;
    return _wgslsmith_f_op_vec4_f32(func_3(var_0.b.x, ~u_input.a.xx, select(!var_2.e.b, select(var_2.e.b, var_2.e.b, vec3<bool>(global1.a.c, !var_0.b.x, false)), global1.a.c)));
}

fn func_1(arg_0: vec3<bool>) -> vec2<bool> {
    global3 = array<vec3<i32>, 9>();
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(global1.a, Struct_2(Struct_1(global1.a.a, global1.a.a.xwz, global1.a.c, global1.a.d), u_input.d)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.a.b.x, global1.a.a.x, -933f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(global1.a.c, vec2<u32>(u_input.c.x, u_input.b), arg_0)).zyx)), !(!arg_0.x), global1.a.d), _wgslsmith_dot_vec2_i32(~vec2<i32>(-u_input.d, 0i), -vec2<i32>(2632i, global1.b)));
    var var_0 = Struct_5(Struct_1(vec4<f32>(_wgslsmith_div_f32(-678f, _wgslsmith_f_op_f32(1270f - global1.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -812f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(256f - 445f), global1.a.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(575f, -239f, global1.a.b.x)), global1.a.b), false, ~u_input.e), global1.a, ~u_input.a, -174f);
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-abs(u_input.d), (global1.b | min(2147483647i, -219i)) >> (_wgslsmith_div_u32(min(4294967295u, var_0.b.d), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 1u, var_0.a.d), vec3<u32>(6326u, u_input.e, 8729u))) % 32u), -(~u_input.d), select(~u_input.d, ~u_input.d, any(vec4<bool>(true, false, true, false))) << (43487u % 32u)), firstLeadingBit(firstTrailingBit(reverseBits(vec4<i32>(10898i, global1.b, 22745i, -57203i)))) ^ -_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(36744i, -16187i, global1.b, 2147483647i)), ~vec4<i32>(global1.b, 2147483647i, global1.b, -10525i)));
    var var_2 = 1294f;
    return !vec2<bool>(arg_0.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(!vec3<bool>(false, true, 890f < global1.a.b.x));
    var var_1 = Struct_5(global1.a, global1.a, u_input.a, -1116f);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -362f) * _wgslsmith_f_op_f32(-global1.a.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d * -1000f) - global1.a.b.x)));
    var_1 = Struct_5(var_1.b, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-288f)), _wgslsmith_f_op_f32(trunc(-1000f)), -1309f, var_2) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1905f, 194f, global1.a.a.x, var_1.a.a.x), global1.a.a) + vec4<f32>(1589f, 1315f, -630f, var_1.b.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a.a.zxz, global1.a.b)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.b.a.wzy), vec3<f32>(-1654f, global1.a.b.x, -1000f), any(vec2<bool>(var_1.a.c, var_0.x))))), true & var_0.x, global1.a.d), u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1597f));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(abs(-3558f)), !select(select(!vec3<bool>(false, var_0.x, false), select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, var_1.a.c, global1.a.c), false), select(vec3<bool>(global1.a.c, global1.a.c, true), vec3<bool>(var_1.a.c, true, var_1.b.c), global1.a.c)), select(select(vec3<bool>(global1.a.c, false, var_1.b.c), vec3<bool>(true, global1.a.c, true), true), select(vec3<bool>(var_0.x, global1.a.c, true), vec3<bool>(false, true, true), var_0.x), !vec3<bool>(global1.a.c, false, var_0.x)), global1.a.c));
    let var_4 = global2[_wgslsmith_index_u32(u_input.a.x, 9u)];
    let var_5 = Struct_5(Struct_1(vec4<f32>(-1739f, -1532f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.a.b.x, var_4.d.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.a.b.x - 1564f), _wgslsmith_f_op_f32(-var_3.a), true))), var_4.a.a.a.wzz, all(!func_1(vec3<bool>(false, global1.a.c, var_1.b.c))), var_1.b.d), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_4.a.a.a, global1.a.a)))), global1.a.b, var_1.a.c, ~u_input.a.x), vec3<u32>(var_1.b.d, _wgslsmith_mod_u32(~var_4.a.a.d, var_1.b.d), 45169u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.a + -1940f), _wgslsmith_f_op_f32(-1415f * var_1.a.b.x)))) + _wgslsmith_f_op_f32(ceil(var_2))));
    global0 = array<vec2<f32>, 31>();
    let var_6 = vec4<bool>(true, true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(333f, _wgslsmith_f_op_f32(f32(-1f) * -2181f), var_5.a.a.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_5.b.b), _wgslsmith_f_op_vec3_f32(var_1.b.b + global1.a.b), false))), _wgslsmith_f_op_vec4_f32(func_2(Struct_1(var_5.a.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_1.a.a.x, -349f)), var_1.b.c, var_1.c.x), var_4.a)).wzy), ~max(-1i, global1.b), global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, u_input.e), global1.a.d | var_5.a.d) | 21861u), 9u)]);
}

