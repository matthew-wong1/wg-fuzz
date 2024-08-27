struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<u32>(4294967295u, 12987u, 3092u)), Struct_1(vec3<u32>(41079u, 5729u, 4294967295u)), Struct_1(vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec3<u32>(1u, 4294967295u, 0u)), Struct_1(vec3<u32>(34676u, 92135u, 0u)), Struct_1(vec3<u32>(2661u, 7471u, 4294967295u)), Struct_1(vec3<u32>(6175u, 1u, 1u)), Struct_1(vec3<u32>(1u, 19064u, 4294967295u)), Struct_1(vec3<u32>(25297u, 4294967295u, 56120u)), Struct_1(vec3<u32>(1u, 4294967295u, 1u)), Struct_1(vec3<u32>(3776u, 1827u, 40582u)), Struct_1(vec3<u32>(4294967295u, 20644u, 57523u)), Struct_1(vec3<u32>(0u, 20365u, 39422u)), Struct_1(vec3<u32>(79123u, 4294967295u, 32644u)), Struct_1(vec3<u32>(31135u, 0u, 62713u)), Struct_1(vec3<u32>(4294967295u, 63286u, 4294967295u)), Struct_1(vec3<u32>(700u, 27230u, 8990u)), Struct_1(vec3<u32>(1u, 28181u, 29168u)), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(42700u, 20757u, 0u)), Struct_1(vec3<u32>(20107u, 39484u, 8951u)), Struct_1(vec3<u32>(6022u, 54170u, 80647u)), Struct_1(vec3<u32>(37465u, 65907u, 71105u)), Struct_1(vec3<u32>(25517u, 1833u, 0u)), Struct_1(vec3<u32>(52862u, 80242u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec3<u32>(21486u, 0u, 4294967295u)), Struct_1(vec3<u32>(0u, 1u, 69796u)), Struct_1(vec3<u32>(1u, 39991u, 0u)), Struct_1(vec3<u32>(36401u, 1u, 16060u)), Struct_1(vec3<u32>(4294967295u, 187u, 0u)));

var<private> global1: array<vec3<i32>, 10>;

var<private> global2: Struct_3;

var<private> global3: i32 = 12500i;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: f32) -> i32 {
    global2 = Struct_3(-294f);
    var var_0 = 21981u;
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global2.a, arg_1)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(global2.a, -136f, -1146f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(736f, global2.a, 291f), vec3<f32>(1000f, arg_1, 1667f)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2447f, global2.a, global2.a)))))))));
    return u_input.d;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_sub_u32(reverseBits(0u), u_input.c.x);
    let var_1 = Struct_4(vec3<i32>(-41790i, i32(-1i) * -43836i, -2147483647i), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 0u, u_input.c.x), u_input.c.yzx), u_input.c.yzw >> (vec3<u32>(u_input.c.x, 17106u, 1u) % vec3<u32>(32u))), ~(u_input.c.x & 11355u)), global0[_wgslsmith_index_u32(u_input.c.x, 31u)]);
    global3 = -1i;
    return _wgslsmith_clamp_u32(1u, ~_wgslsmith_div_u32(~21386u, ~43617u), _wgslsmith_add_u32(1u, countOneBits(var_1.c.a.x)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = -vec4<i32>(_wgslsmith_mult_i32(20972i, ~reverseBits(u_input.d)), -_wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(u_input.e, 20415i)), u_input.a, ~func_2(1113f, -1569f));
    var var_1 = var_0.x;
    global3 = 1i;
    let var_2 = global2.a;
    return Struct_2(global0[_wgslsmith_index_u32(9124u, 31u)], select(u_input.c.x, 44856u, all(vec4<bool>(true, true, true, true))), -(~(~var_0.x) << (select(func_3(Struct_3(2758f), vec2<f32>(global2.a, -225f)), ~u_input.c.x, arg_0) % 32u)), global0[_wgslsmith_index_u32(u_input.c.x, 31u)], global2.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    var var_0 = u_input.c;
    global1 = array<vec3<i32>, 10>();
    let var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-524f, global2.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2841f, -1698f), vec2<f32>(arg_1.e, global2.a))) - vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, arg_0.e)), _wgslsmith_f_op_f32(floor(arg_1.e)))))));
    let var_2 = select(!select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec4<bool>(true, false, false, true))), select(vec2<bool>(true, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true))), vec2<bool>(true, true), !(29525i >= (u_input.b | 12401i))), false);
    global3 = 5112i;
    return var_2.x;
}

fn func_5(arg_0: bool) -> f32 {
    let var_0 = Struct_4(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -u_input.d, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.d, u_input.d, -14769i)), global1[_wgslsmith_index_u32(4294967295u, 10u)])), min(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a, -12674i) | vec3<i32>(u_input.e, u_input.a, u_input.a), ~vec3<i32>(-1i, -30816i, 1i)), vec3<i32>(-1i) * -vec3<i32>(u_input.e, u_input.e, u_input.d))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(func_3(Struct_3(-429f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.a, global2.a)))), u_input.c.x << (u_input.c.x % 32u)), u_input.c.x), func_1(true).a);
    let var_1 = func_3(Struct_3(1007f), vec2<f32>(1711f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(934f + global2.a)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-927f)) + 1633f), -917f);
    let var_3 = Struct_4(-(~select(_wgslsmith_sub_vec3_i32(var_0.a, vec3<i32>(var_0.a.x, 8321i, u_input.a)), ~vec3<i32>(var_0.a.x, u_input.a, -24830i), !vec3<bool>(arg_0, arg_0, true))), countOneBits(abs(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(32792u, 0u), var_0.c.a.yz)))), func_1(false).a);
    var var_4 = Struct_1(var_3.c.a | max(var_0.c.a, min(var_0.c.a, var_0.c.a) ^ (vec3<u32>(63412u, 14310u, 89206u) << (u_input.c.xyy % vec3<u32>(32u)))));
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d >> (4294967295u % 32u);
    let var_1 = var_0;
    let var_2 = -28770i;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_5(func_4(func_1(false), Struct_2(global0[_wgslsmith_index_u32(21318u, 31u)], u_input.c.x, 0i, Struct_1(u_input.c.yyz), global2.a)))), -442f, _wgslsmith_f_op_f32(func_5(func_4(func_1(false), Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], u_input.c.x, -3968i, Struct_1(u_input.c.yyx), 184f)))), global2.a));
    var_3 = vec4<f32>(-506f, var_3.x, _wgslsmith_f_op_f32(-363f * 1891f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1204f) + _wgslsmith_f_op_f32(-global2.a)));
    let var_4 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_3.x, 1042f), var_3.x))))));
    let var_5 = global0[_wgslsmith_index_u32(u_input.c.x, 31u)];
    var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(1170f - 623f), _wgslsmith_div_f32(global2.a, 442f), 222f), vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), -1601f, _wgslsmith_f_op_f32(select(global2.a, -1107f, false)), _wgslsmith_f_op_f32(-global2.a)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-198f, -767f, -705f, 1000f) - vec4<f32>(1000f, var_3.x, global2.a, -1531f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1461f, var_4, -1000f, 237f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 885f, global2.a, -1116f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1432f, var_4, -1599f, -142f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(216f, -617f, global2.a, var_4))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 1000f, -1858f, global2.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, -621f, global2.a, var_4)))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_add_vec4_u32(vec4<u32>(var_5.a.x, ~64597u ^ var_5.a.x, u_input.c.x, ~var_5.a.x), ~u_input.c), min(u_input.c.zw, firstLeadingBit(~(u_input.c.wy << (u_input.c.wy % vec2<u32>(32u))))));
}

