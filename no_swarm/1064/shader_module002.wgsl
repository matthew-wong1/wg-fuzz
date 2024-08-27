struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: f32;

var<private> global2: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_3(true, Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, false, false)), vec3<u32>(4205u, 0u, 1579u), 4294967295u), Struct_2(Struct_1(vec4<bool>(true, true, true, false)), false, true, Struct_1(vec4<bool>(true, false, false, false)))), Struct_4(Struct_3(false, Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, true, false, true)), vec3<u32>(4964u, 0u, 1067u), 1897u), Struct_2(Struct_1(vec4<bool>(false, false, true, true)), false, true, Struct_1(vec4<bool>(true, true, true, false)))), Struct_4(Struct_3(true, Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, false, false)), vec3<u32>(70798u, 52647u, 68223u), 9249u), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), false, true, Struct_1(vec4<bool>(true, true, false, false)))), Struct_4(Struct_3(false, Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, false, false, true)), vec3<u32>(19115u, 13810u, 4294967295u), 85359u), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), true, true, Struct_1(vec4<bool>(false, false, false, true)))), Struct_4(Struct_3(true, Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, true, false, true)), vec3<u32>(1u, 15338u, 0u), 28511u), Struct_2(Struct_1(vec4<bool>(false, true, false, true)), true, true, Struct_1(vec4<bool>(false, false, true, true)))), Struct_4(Struct_3(false, Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, true, false, true)), vec3<u32>(0u, 1u, 3731u), 34013u), Struct_2(Struct_1(vec4<bool>(true, false, false, false)), true, true, Struct_1(vec4<bool>(true, true, false, true)))), Struct_4(Struct_3(false, Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, false, true, false)), vec3<u32>(4294967295u, 4294967295u, 0u), 4294967295u), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), true, true, Struct_1(vec4<bool>(true, true, false, true)))), Struct_4(Struct_3(true, Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, false, false, true)), vec3<u32>(44968u, 0u, 12470u), 14920u), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), true, false, Struct_1(vec4<bool>(true, false, true, true)))), Struct_4(Struct_3(true, Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, true, false)), vec3<u32>(43944u, 72848u, 68648u), 1u), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), false, true, Struct_1(vec4<bool>(false, false, false, true)))), Struct_4(Struct_3(false, Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, false, true, false)), vec3<u32>(1u, 0u, 4294967295u), 17060u), Struct_2(Struct_1(vec4<bool>(false, false, false, true)), false, false, Struct_1(vec4<bool>(false, true, false, true)))), Struct_4(Struct_3(false, Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, true, false)), vec3<u32>(47410u, 23211u, 2069u), 28592u), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), true, false, Struct_1(vec4<bool>(false, false, true, false)))), Struct_4(Struct_3(false, Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, true, true, false)), vec3<u32>(32763u, 55065u, 1u), 0u), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), false, true, Struct_1(vec4<bool>(false, true, true, false)))), Struct_4(Struct_3(false, Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, false, true, false)), vec3<u32>(4294967295u, 0u, 12690u), 1u), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), false, true, Struct_1(vec4<bool>(true, true, false, true)))), Struct_4(Struct_3(true, Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, false, true)), vec3<u32>(64223u, 0u, 1u), 20907u), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), true, true, Struct_1(vec4<bool>(true, false, true, false)))), Struct_4(Struct_3(true, Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, false, false, true)), vec3<u32>(10377u, 0u, 1u), 50572u), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), false, true, Struct_1(vec4<bool>(false, true, true, false)))), Struct_4(Struct_3(false, Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, true, false)), vec3<u32>(15197u, 21445u, 89483u), 104690u), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), false, true, Struct_1(vec4<bool>(false, true, false, false)))), Struct_4(Struct_3(true, Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, false, true)), vec3<u32>(0u, 1u, 13805u), 33248u), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), true, false, Struct_1(vec4<bool>(false, true, false, false)))), Struct_4(Struct_3(true, Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, false, false, true)), vec3<u32>(0u, 47677u, 35390u), 87660u), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), false, true, Struct_1(vec4<bool>(true, true, false, true)))), Struct_4(Struct_3(false, Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, true, false)), vec3<u32>(25473u, 16061u, 13765u), 55949u), Struct_2(Struct_1(vec4<bool>(false, false, false, false)), true, false, Struct_1(vec4<bool>(false, false, false, false)))), Struct_4(Struct_3(true, Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, true, false)), vec3<u32>(1u, 1u, 0u), 0u), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), false, true, Struct_1(vec4<bool>(true, true, true, false)))), Struct_4(Struct_3(true, Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, false, false, false)), vec3<u32>(0u, 0u, 17017u), 1576u), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), true, false, Struct_1(vec4<bool>(false, false, false, true)))), Struct_4(Struct_3(true, Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, true, false)), vec3<u32>(0u, 4294967295u, 4294967295u), 61882u), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), false, false, Struct_1(vec4<bool>(true, false, false, true)))), Struct_4(Struct_3(true, Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, true, true, true)), vec3<u32>(0u, 39490u, 1u), 4294967295u), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), true, false, Struct_1(vec4<bool>(true, false, false, true)))), Struct_4(Struct_3(false, Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, true, false, false)), vec3<u32>(4346u, 56340u, 48424u), 0u), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), false, true, Struct_1(vec4<bool>(true, true, true, true)))), Struct_4(Struct_3(true, Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, false, false)), vec3<u32>(26803u, 0u, 1u), 40988u), Struct_2(Struct_1(vec4<bool>(true, false, false, true)), true, true, Struct_1(vec4<bool>(true, true, false, true)))));

var<private> global3: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(-944f, -992f, 297f, 1454f), vec4<f32>(-210f, -317f, -656f, -792f), vec4<f32>(1641f, 633f, 243f, -1745f), vec4<f32>(-1061f, 1000f, -802f, 813f), vec4<f32>(780f, -242f, 703f, -2764f), vec4<f32>(-414f, -1625f, 873f, 1000f), vec4<f32>(-1034f, -597f, 1293f, -506f), vec4<f32>(-1760f, 1284f, 796f, 118f), vec4<f32>(178f, -1665f, 1700f, -986f), vec4<f32>(-832f, 2191f, 1404f, -184f), vec4<f32>(-969f, 1816f, -1000f, -1032f), vec4<f32>(-815f, -642f, 444f, -1114f), vec4<f32>(-224f, -1031f, -448f, -777f), vec4<f32>(756f, 1278f, 267f, -194f), vec4<f32>(-939f, 248f, -163f, 1000f), vec4<f32>(-769f, 1983f, 1633f, -360f), vec4<f32>(-1117f, 1000f, -355f, 241f), vec4<f32>(-1110f, 789f, 490f, 443f), vec4<f32>(191f, -933f, -482f, 188f), vec4<f32>(424f, 1399f, -1000f, 492f), vec4<f32>(-642f, -321f, 1560f, -172f), vec4<f32>(-553f, 104f, -257f, 549f), vec4<f32>(-479f, 329f, 253f, -1582f), vec4<f32>(-1040f, -951f, -348f, -136f), vec4<f32>(-334f, 1494f, -101f, 1261f), vec4<f32>(-370f, -1750f, 754f, -960f), vec4<f32>(1000f, 514f, 722f, -138f), vec4<f32>(-1320f, -1172f, 786f, 891f));

var<private> global4: array<bool, 8> = array<bool, 8>(true, true, false, false, true, false, false, false);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_4) -> bool {
    let var_0 = Struct_4(arg_2.a, arg_0.b);
    let var_1 = -1000f;
    let var_2 = ~(~vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x, -47039i) ^ vec3<i32>(61058i, select(u_input.a.x, -2147483647i, arg_0.b.a.a.x == arg_2.a.b.a.x), -2147483647i));
    let var_3 = Struct_4(Struct_3(arg_0.a.a, global0[_wgslsmith_index_u32(arg_2.a.e, 24u)], Struct_1(vec4<bool>(false, select(arg_2.b.a.a.x, true, false), false, !arg_0.b.c)), var_0.a.d, abs(arg_0.a.e)), arg_0.b);
    global0 = array<Struct_1, 24>();
    return all(vec3<bool>(true, select(true, true, var_0.a.a) & arg_2.a.b.a.x, _wgslsmith_f_op_f32(-var_1) <= var_1)) == (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(-var_1)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1423f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1, var_1, arg_0.a.b.a.x)), -1024f, true))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -705f))))), 277f, arg_1.a.a.x))));
    global3 = array<vec4<f32>, 28>();
    var var_0 = global2[_wgslsmith_index_u32(1u, 25u)];
    let var_1 = var_0.a.d.zy;
    let var_2 = true;
    return 643f;
}

fn func_2() -> Struct_4 {
    global0 = array<Struct_1, 24>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_3(true & (1u < u_input.b), Struct_1(vec4<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 8u)], global4[_wgslsmith_index_u32(1u, 8u)], global4[_wgslsmith_index_u32(u_input.d, 8u)])), global0[_wgslsmith_index_u32(~(~1580u), 24u)], u_input.c, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.d, u_input.c.x), u_input.d)), Struct_2(global0[_wgslsmith_index_u32(~(1u >> (u_input.c.x % 32u)), 24u)], all(select(vec4<bool>(true, true, false, true), vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 8u)], true, global4[_wgslsmith_index_u32(4294967295u, 8u)], true), true)), func_3(global2[_wgslsmith_index_u32(35670u, 25u)], true, Struct_4(Struct_3(global4[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(86672u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], vec3<u32>(119316u, 20647u, u_input.d), u_input.d), Struct_2(global0[_wgslsmith_index_u32(u_input.b, 24u)], true, global4[_wgslsmith_index_u32(u_input.b, 8u)], Struct_1(vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 8u)], global4[_wgslsmith_index_u32(u_input.c.x, 8u)], global4[_wgslsmith_index_u32(0u, 8u)], global4[_wgslsmith_index_u32(u_input.b, 8u)]))))), Struct_1(select(vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.c.x, 8u)], true, false), vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 8u)], false, true, true), vec4<bool>(false, global4[_wgslsmith_index_u32(86020u, 8u)], true, true)))))) + _wgslsmith_f_op_f32(round(-282f)));
    var var_0 = _wgslsmith_f_op_f32(sign(2025f));
    var var_1 = true;
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_3(global4[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(55028u, 24u)], Struct_1(vec4<bool>(true, false, global4[_wgslsmith_index_u32(13216u, 8u)], global4[_wgslsmith_index_u32(u_input.d, 8u)])), vec3<u32>(1u, u_input.d, u_input.c.x), u_input.b), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), false, true, global0[_wgslsmith_index_u32(52866u, 24u)]))), -1392f)))));
    return Struct_4(Struct_3(global4[_wgslsmith_index_u32(firstTrailingBit(abs(u_input.c.x)), 8u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x | ~4294967295u, ~firstLeadingBit(u_input.c.x), ~countOneBits(u_input.b)), 24u)], global0[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 24u)], firstLeadingBit(~vec3<u32>(2699u, 11161u, 1u)) | vec3<u32>(~1u, select(u_input.b, u_input.c.x, false), ~4294967295u), ~10147u), Struct_2(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.b, 32212u) >> (vec4<u32>(u_input.d, u_input.b, 34545u, u_input.d) % vec4<u32>(32u)), abs(vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u)))), 24u)], global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b << (u_input.d % 32u), 52893u << (u_input.b % 32u)), 82696u), 8u)], all(vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 8u)], true, true, false)) || (true | (71679u != u_input.b)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(39497u, u_input.b), 24u)]));
}

fn func_5(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_4) -> Struct_2 {
    let var_0 = arg_2.b;
    var var_1 = arg_1;
    let var_2 = arg_2.a.c;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) * 781f);
    global1 = -1000f;
    return arg_2.b;
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec4<f32>) -> Struct_1 {
    global3 = array<vec4<f32>, 28>();
    global3 = array<vec4<f32>, 28>();
    var var_0 = func_5(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(0i, u_input.a.x, firstLeadingBit(arg_0.x))), vec3<i32>(arg_0.x, 1090i, ~(~arg_0.x))), 1f, func_2()).a;
    let var_1 = func_2().a;
    var var_2 = arg_3.ww;
    return func_5(reverseBits(select(-firstTrailingBit(vec3<i32>(arg_0.x, arg_0.x, 1i)), _wgslsmith_mod_vec3_i32(-u_input.a, arg_0.xzx), false || func_3(global2[_wgslsmith_index_u32(arg_2.x, 25u)], var_0.a.x, global2[_wgslsmith_index_u32(u_input.c.x, 25u)]))), -898f, Struct_4(func_2().a, Struct_2(Struct_1(vec4<bool>(false, false, false, arg_1.a.a.x)), var_0.a.x && all(vec4<bool>(arg_1.b, var_0.a.x, true, global4[_wgslsmith_index_u32(var_1.d.x, 8u)])), !any(arg_1.a.a.zyy), arg_1.a))).a;
}

fn func_1() -> bool {
    global2 = array<Struct_4, 25>();
    global4 = array<bool, 8>();
    let var_0 = -3120f;
    var var_1 = Struct_3(all(vec3<bool>(all(select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.d, 8u)], global4[_wgslsmith_index_u32(1u, 8u)], global4[_wgslsmith_index_u32(3141u, 8u)]), vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 8u)], true, true), vec3<bool>(global4[_wgslsmith_index_u32(6927u, 8u)], global4[_wgslsmith_index_u32(u_input.d, 8u)], global4[_wgslsmith_index_u32(u_input.c.x, 8u)]))), global4[_wgslsmith_index_u32(~4294967295u, 8u)] & all(vec2<bool>(false, true)), true)), func_6(vec4<i32>(u_input.a.x, u_input.a.x, _wgslsmith_add_i32(select(u_input.a.x, u_input.a.x, false), u_input.a.x ^ 10450i), _wgslsmith_add_i32(-1i, abs(u_input.a.x))), func_5(_wgslsmith_mult_vec3_i32(firstTrailingBit(u_input.a), _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a)), var_0, func_2()), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.yy, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(1609u, 0u))), u_input.c.yy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global3[_wgslsmith_index_u32(26160u, 28u)]))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(1265f + -201f), -1371f, _wgslsmith_f_op_f32(var_0 - var_0)))), global0[_wgslsmith_index_u32(abs(1u), 24u)], select(min(u_input.c, abs(u_input.c)), u_input.c >> (vec3<u32>(u_input.b, reverseBits(4294967295u), ~u_input.b) % vec3<u32>(32u)), func_6(_wgslsmith_mod_vec4_i32(vec4<i32>(26674i, u_input.a.x, -40642i, 1i), vec4<i32>(-1i, u_input.a.x, 1i, 1i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.d, u_input.d), vec4<u32>(u_input.d, 1u, 4294967295u, u_input.b)) % vec4<u32>(32u)), func_2().b, u_input.c.yx, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(127f, var_0, var_0, var_0), global3[_wgslsmith_index_u32(u_input.d, 28u)], !global4[_wgslsmith_index_u32(u_input.b, 8u)]))).a.zzx), ~4294967295u);
    return ~18083i <= u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1302f);
    var var_1 = global4[_wgslsmith_index_u32(u_input.b ^ 0u, 8u)];
    let var_2 = 2147483647i;
    var var_3 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1245f))) + _wgslsmith_f_op_f32(f32(-1f) * -259f))));
    let var_4 = func_1();
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -654f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-964f - 1983f)));
    var var_5 = select(func_6(vec4<i32>(-var_2 ^ -1i, abs(var_2), -15809i, _wgslsmith_sub_i32(var_2, _wgslsmith_add_i32(u_input.a.x, u_input.a.x))), Struct_2(func_6(select(vec4<i32>(-2147483647i, -1i, var_2, var_2), vec4<i32>(var_2, 28928i, -20492i, 0i), true), func_2().b, _wgslsmith_mod_vec2_u32(u_input.c.xx, vec2<u32>(0u, 20656u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1268f, -579f, -1078f, 833f))), false, false, func_5(max(vec3<i32>(0i, -30444i, 26205i), vec3<i32>(var_2, -2147483647i, u_input.a.x)), 1671f, func_2()).a), u_input.c.zz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3068f), -3231f, -308f, 1609f))).a.wzw, select(func_5(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1436f) - -721f), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, 11766u), 34818u), 25u)]).d.a.wzx, vec3<bool>(!var_4, 15666u <= u_input.b, true), vec3<bool>(countOneBits(-2147483647i) <= ~u_input.a.x, true, true)), global4[_wgslsmith_index_u32(~select(~(~u_input.b), ~(~42694u), ~2147483647i <= abs(var_2)), 8u)]);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_sub_i32(u_input.a.x, var_2), _wgslsmith_sub_i32(-u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, -19916i, -53308i, var_2), -vec4<i32>(2147483647i, 0i, u_input.a.x, u_input.a.x))), u_input.a));
}

