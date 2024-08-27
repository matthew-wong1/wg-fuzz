struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<u32>(20269u, 1u, 42916u, 0u), Struct_1(4294967295u, vec2<bool>(true, false), 693f, 17676u), 2147483647i, Struct_1(37500u, vec2<bool>(true, false), -1271f, 1u), Struct_2(vec2<i32>(-1233i, 2147483647i), 245f, Struct_1(1u, vec2<bool>(false, false), -801f, 54247u), false));

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global2: array<u32, 24> = array<u32, 24>(0u, 4294967295u, 1u, 2811u, 1u, 48905u, 5612u, 4294967295u, 0u, 125187u, 4294967295u, 1u, 1u, 391u, 49344u, 14236u, 0u, 0u, 1u, 1u, 24785u, 12241u, 677u, 4294967295u);

var<private> global3: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-463f, -711f), vec2<f32>(2156f, -241f), vec2<f32>(1022f, 112f), vec2<f32>(-752f, -1409f), vec2<f32>(1625f, 1000f), vec2<f32>(748f, 1000f), vec2<f32>(366f, 1000f), vec2<f32>(1000f, 433f), vec2<f32>(-485f, 1524f), vec2<f32>(1872f, 511f), vec2<f32>(407f, 347f), vec2<f32>(-255f, -693f), vec2<f32>(540f, -512f), vec2<f32>(-271f, -296f), vec2<f32>(-725f, -369f), vec2<f32>(-759f, 734f), vec2<f32>(-275f, 277f), vec2<f32>(424f, 190f), vec2<f32>(1172f, -169f), vec2<f32>(-391f, -1205f), vec2<f32>(1152f, 1066f), vec2<f32>(1330f, -526f), vec2<f32>(-583f, -944f), vec2<f32>(-668f, 166f), vec2<f32>(865f, 723f), vec2<f32>(-861f, 332f));

var<private> global4: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(2147483647i, -527i, -27490i), vec3<i32>(27238i, 22131i, 2147483647i), vec3<i32>(0i, 2147483647i, -28589i), vec3<i32>(i32(-2147483648), -18776i, 1i), vec3<i32>(2147483647i, -1605i, 1i), vec3<i32>(-13675i, i32(-2147483648), 52826i), vec3<i32>(51823i, 8703i, i32(-2147483648)), vec3<i32>(-7634i, -22134i, -9844i), vec3<i32>(2147483647i, 28219i, 8752i), vec3<i32>(2147483647i, -2530i, -73788i), vec3<i32>(i32(-2147483648), 14346i, 5870i), vec3<i32>(-21378i, i32(-2147483648), 1i));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.c, -500f, -622f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.d.c, 1074f, -1000f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1607f, -385f, -139f) - vec3<f32>(1368f, -1429f, -2000f)), vec3<f32>(arg_0.a.e.c.c, 1000f, global0.d.c))), vec3<bool>(true, -357f == global0.d.c, global1.x))) - vec3<f32>(global0.b.c, global0.e.c.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(547f * arg_0.b.b.c))))));
    global0 = arg_0.b;
    let var_1 = _wgslsmith_div_i32(~(-1i), global0.c);
    var var_2 = select(!global1.wz, !global1.yz, global1.x);
    let var_3 = 1u;
    return arg_0.a.e.c;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> f32 {
    return arg_0.c;
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    let var_0 = -1235f;
    global3 = array<vec2<f32>, 26>();
    let var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(1u, ~9550u)), _wgslsmith_clamp_u32(min(countOneBits(u_input.a.x), 0u), u_input.a.x, ~20061u), 4276u, global2[_wgslsmith_index_u32(0u, 24u)]);
    let var_2 = var_1.wyz;
    let var_3 = var_1.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.c) * _wgslsmith_f_op_f32(func_3(func_2(Struct_5(Struct_4(global0.a, Struct_1(var_2.x, vec2<bool>(global0.e.d, global1.x), var_0, 4294967295u), -57967i, Struct_1(u_input.d, vec2<bool>(false, global0.d.b.x), 1757f, var_1.x), global0.e), Struct_4(vec4<u32>(4294967295u, 68633u, 19337u, var_3), global0.d, -1i, global0.d, global0.e))), var_3 >= 1u, !global1.wxx))), _wgslsmith_f_op_f32(floor(var_0))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_5(Struct_4(_wgslsmith_mod_vec4_u32(global0.a, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(0u, 24u)], 4294967295u), vec2<u32>(48682u, 4294967295u)), _wgslsmith_sub_u32(0u, arg_2.d), u_input.a.x, 1u)), func_2(Struct_5(Struct_4(global0.a, arg_0.c, u_input.e.x, global0.b, global0.e), Struct_4(vec4<u32>(37513u, 12230u, global0.b.d, global0.d.a), arg_1.c, arg_1.a.x, Struct_1(0u, vec2<bool>(arg_1.c.b.x, arg_2.b.x), arg_0.c.c, 4294967295u), Struct_2(vec2<i32>(global0.e.a.x, arg_1.a.x), arg_0.b, arg_2, arg_2.b.x)))), u_input.b, func_2(Struct_5(Struct_4(vec4<u32>(arg_2.a, 4294967295u, 68163u, 23334u), arg_2, 2147483647i, arg_1.c, arg_1), Struct_4(global0.a, arg_1.c, -4395i, arg_2, Struct_2(vec2<i32>(u_input.b, global0.e.a.x), 116f, Struct_1(21768u, arg_2.b, -710f, arg_0.c.d), true)))), Struct_2(abs(arg_1.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.c.c, global0.b.c))), Struct_1(arg_2.a, select(arg_1.c.b, arg_1.c.b, arg_2.b), _wgslsmith_f_op_f32(f32(-1f) * -1368f), 90981u), false)), Struct_4(vec4<u32>(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(arg_0.c.d, 24u)] << (global0.d.d % 32u), global0.b.a, 27485u >> (u_input.c % 32u)), 0u, ~28599u >> ((arg_1.c.d | global0.b.a) % 32u), func_2(Struct_5(Struct_4(vec4<u32>(85675u, arg_1.c.d, u_input.d, 0u), arg_0.c, arg_1.a.x, arg_1.c, Struct_2(vec2<i32>(-12340i, 2147483647i), arg_2.c, Struct_1(36262u, vec2<bool>(arg_2.b.x, global1.x), -1271f, 0u), global0.b.b.x)), Struct_4(vec4<u32>(1u, 0u, 75347u, 1u), arg_0.c, u_input.e.x, arg_0.c, global0.e))).a), func_2(Struct_5(Struct_4(vec4<u32>(457u, 65532u, 4741u, 4294967295u), Struct_1(25750u, arg_2.b, 960f, global2[_wgslsmith_index_u32(arg_1.c.a, 24u)]), -73155i, global0.b, global0.e), Struct_4(vec4<u32>(arg_1.c.d, 47508u, 37548u, arg_1.c.d), Struct_1(global2[_wgslsmith_index_u32(arg_0.c.d, 24u)], global0.b.b, arg_0.b, arg_0.c.d), -1i, arg_1.c, arg_1))), -9911i >> (_wgslsmith_mult_u32(1u, ~arg_0.c.d) % 32u), arg_2, Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a.x, 10891i), global0.e.a), -375f, arg_1.c, !global1.x)));
    let var_1 = false;
    global3 = array<vec2<f32>, 26>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(321f, -1293f, 180f), vec3<f32>(arg_2.c, arg_0.c.c, arg_1.b), global1.xzx)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(960f, arg_2.c, var_0.a.e.c.c), vec3<f32>(arg_0.c.c, arg_1.c.c, global0.d.c)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.d.c, arg_1.c.c, 195f) + vec3<f32>(var_0.a.e.b, -201f, 1719f))))))));
    let var_3 = Struct_4(vec4<u32>(abs(11962u), arg_1.c.a, 0u, countOneBits(~_wgslsmith_mod_u32(1714u, global2[_wgslsmith_index_u32(u_input.d, 24u)]))), func_2(Struct_5(Struct_4(min(vec4<u32>(0u, arg_2.a, 1u, 28497u), var_0.a.a), global0.d, -u_input.b, global0.e.c, Struct_2(arg_1.a, arg_0.b, Struct_1(0u, vec2<bool>(true, false), -907f, 4294967295u), true)), Struct_4(reverseBits(vec4<u32>(arg_2.d, var_0.a.d.d, arg_0.c.d, arg_1.c.a)), global0.b, ~(-3968i), var_0.b.b, arg_0))), _wgslsmith_dot_vec2_i32(-(~global0.e.a), vec2<i32>(i32(-1i) * -4423i, u_input.e.x)) | (global0.e.a.x & 0i), arg_0.c, Struct_2(max(vec2<i32>(u_input.b, -arg_1.a.x), vec2<i32>(_wgslsmith_mod_i32(0i, -1i), -arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_2(Struct_5(Struct_4(global0.a, arg_2, arg_1.a.x, Struct_1(93938u, arg_2.b, 1234f, 97990u), arg_0), var_0.a)), true, select(vec3<bool>(false, arg_2.b.x, arg_0.c.b.x), global1.zzy, var_0.a.e.c.b.x)))), func_2(var_0), var_1));
    return Struct_1(global0.b.d, select(!select(!vec2<bool>(false, arg_0.d), vec2<bool>(false, arg_2.b.x), global1.x), func_2(Struct_5(var_0.a, Struct_4(var_0.b.a, global0.b, arg_0.a.x, Struct_1(1u, vec2<bool>(true, true), arg_0.c.c, var_3.a.x), Struct_2(arg_1.a, var_2.x, Struct_1(arg_0.c.d, var_3.e.c.b, 230f, var_0.a.b.d), arg_1.d)))).b, vec2<bool>(true, 0u == abs(u_input.c))), arg_0.b, _wgslsmith_div_u32(4294967295u, global2[_wgslsmith_index_u32(var_3.d.d, 24u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(global0.a, func_4(Struct_2(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e.x, u_input.e.x), vec2<i32>(u_input.e.x, -1i)), global0.e.a ^ global0.e.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(0u, 26u)]))), global0.e.c, global1.x), Struct_2(max(vec2<i32>(global0.e.a.x, global0.e.a.x), vec2<i32>(u_input.b, global0.e.a.x)), 409f, func_2(Struct_5(Struct_4(global0.a, Struct_1(u_input.a.x, global0.e.c.b, 981f, u_input.c), global0.e.a.x, global0.e.c, Struct_2(global0.e.a, global0.b.c, Struct_1(45554u, vec2<bool>(global1.x, global1.x), global0.e.c.c, 4294967295u), true)), Struct_4(global0.a, global0.e.c, u_input.b, global0.e.c, global0.e))), select(global1.x, global0.b.b.x, global0.b.b.x) || global1.x), global0.b), firstTrailingBit(~21906i), global0.d, Struct_2(global0.e.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-483f + _wgslsmith_f_op_f32(859f + 841f)), _wgslsmith_f_op_f32(trunc(global0.e.b)), all(vec4<bool>(global0.b.b.x, true, true, global0.e.d)))), global0.b, global0.b.b.x || func_4(Struct_2(global0.e.a, -940f, Struct_1(0u, vec2<bool>(global0.b.b.x, global0.b.b.x), 2265f, 21119u), global1.x), Struct_2(global0.e.a, -1259f, Struct_1(global0.d.a, global0.b.b, -802f, global2[_wgslsmith_index_u32(1u, 24u)]), true), global0.b).b.x));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(759f, 940f), _wgslsmith_f_op_f32(-492f * global0.b.c), _wgslsmith_f_op_f32(-global0.d.c), _wgslsmith_f_op_f32(-605f - global0.e.c.c)) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(global0.d.c + -1579f), _wgslsmith_f_op_f32(1167f * global0.b.c), global0.b.c)) * vec4<f32>(global0.d.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b.c), _wgslsmith_f_op_f32(-global0.b.c), global0.e.a.x < global0.e.a.x)), 702f, 1664f)));
    let var_1 = Struct_5(Struct_4(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(select(global0.a, vec4<u32>(global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(u_input.a.x, 24u)], global0.e.c.a, global0.b.a), vec4<bool>(false, global1.x, false, false)), abs(global0.a)), vec4<u32>(~global2[_wgslsmith_index_u32(global0.a.x, 24u)], ~global0.a.x, ~global0.e.c.a, ~u_input.d)), Struct_1(u_input.c, func_4(Struct_2(vec2<i32>(u_input.e.x, 2147483647i), -645f, global0.e.c, global0.d.b.x), global0.e, Struct_1(global0.e.c.d, global0.e.c.b, -1000f, u_input.a.x)).b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), 974f)), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global0.e.c.d, 24u)], 24u)] ^ global0.e.c.a), ~(~global0.c) | -22281i, Struct_1(_wgslsmith_sub_u32(28409u, ~u_input.a.x), !(!global0.b.b), global0.b.c, 4294967295u), global0.e), Struct_4(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, global0.b.a, global2[_wgslsmith_index_u32(u_input.c, 24u)]), _wgslsmith_div_vec4_u32(vec4<u32>(global0.b.d, global0.d.a, u_input.c, global2[_wgslsmith_index_u32(global0.d.a, 24u)]), global0.a), vec4<u32>(u_input.c, u_input.a.x, global0.d.a, 6132u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(49712u, global0.d.d, 56307u, global2[_wgslsmith_index_u32(1u, 24u)])), vec4<u32>(20209u, global2[_wgslsmith_index_u32(12493u, 24u)], 1u, u_input.c)), false), func_2(Struct_5(Struct_4(vec4<u32>(21578u, 4294967295u, 4294967295u, 5493u), Struct_1(4294967295u, vec2<bool>(global0.e.d, false), 418f, 11145u), 1i, global0.b, Struct_2(u_input.e.wz, global0.e.b, Struct_1(4294967295u, vec2<bool>(global0.b.b.x, false), var_0.x, 0u), false)), Struct_4(global0.a, Struct_1(u_input.a.x, vec2<bool>(global1.x, global1.x), var_0.x, u_input.d), u_input.b, Struct_1(u_input.c, vec2<bool>(false, true), global0.e.b, global2[_wgslsmith_index_u32(global0.b.d, 24u)]), Struct_2(vec2<i32>(-55970i, -42243i), global0.d.c, Struct_1(92576u, vec2<bool>(true, true), -1029f, 32124u), true)))), _wgslsmith_dot_vec2_i32((vec2<i32>(u_input.e.x, -4954i) >> (u_input.a % vec2<u32>(32u))) | vec2<i32>(u_input.b, 0i), select(select(vec2<i32>(global0.c, global0.c), vec2<i32>(7175i, 2147483647i), vec2<bool>(global1.x, true)), u_input.e.ww >> (global0.a.xw % vec2<u32>(32u)), func_2(Struct_5(Struct_4(global0.a, Struct_1(34786u, global0.b.b, global0.e.c.c, global2[_wgslsmith_index_u32(6881u, 24u)]), 2147483647i, Struct_1(u_input.a.x, global1.yy, -1583f, global0.b.d), Struct_2(u_input.e.xx, -371f, global0.e.c, false)), Struct_4(global0.a, global0.d, u_input.b, global0.d, global0.e))).b.x)), Struct_1(func_2(Struct_5(Struct_4(global0.a, Struct_1(38222u, vec2<bool>(global0.d.b.x, true), 556f, 4294967295u), 1i, Struct_1(4294967295u, global1.xy, global0.e.c.c, 25161u), global0.e), Struct_4(vec4<u32>(global2[_wgslsmith_index_u32(u_input.d, 24u)], global0.d.d, u_input.a.x, 7656u), Struct_1(global0.b.a, vec2<bool>(true, global1.x), 1661f, global0.e.c.a), global0.e.a.x, global0.b, global0.e))).a, global0.e.c.b, _wgslsmith_f_op_f32(-var_0.x), u_input.d), global0.e));
    let var_2 = any(global0.b.b) || var_1.a.d.b.x;
    let var_3 = all(select(!(!(!vec4<bool>(global0.d.b.x, var_2, global1.x, true))), vec4<bool>(true, var_2, var_1.b.e.d, false), select(!select(vec4<bool>(var_2, false, true, false), vec4<bool>(true, true, false, global1.x), vec4<bool>(false, global0.b.b.x, true, false)), !(!vec4<bool>(var_1.a.e.c.b.x, global0.e.c.b.x, true, false)), true)));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(func_3(var_1.a.d, all(!select(global1.wzy, global1.yyw, var_3)), global1.yxy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.e.c.c - global0.e.c.c) * _wgslsmith_f_op_f32(var_0.x - var_0.x)))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.e.c.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(global2[_wgslsmith_index_u32(57923u, 24u)], vec2<bool>(true, false), 1352f, 61807u), false, global1.xww)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.b.b.d, 24u)], 24u)], global2[_wgslsmith_index_u32(~34628u, 24u)]), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~global2[_wgslsmith_index_u32(var_1.b.d.a, 24u)], _wgslsmith_mult_u32(~0u, ~var_1.a.b.d)), 24u)], 80201u), _wgslsmith_f_op_vec2_f32(var_4.xx * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), global0.b.c)));
}

