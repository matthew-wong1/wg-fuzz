struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(-22673i), vec4<i32>(1846i, -51572i, 2147483647i, -1i), 1i, -1948f, Struct_1(42487i)), Struct_2(Struct_1(-22910i), vec4<i32>(-8089i, i32(-2147483648), 2281i, 2147483647i), 27388i, -1221f, Struct_1(0i)), Struct_2(Struct_1(-24789i), vec4<i32>(2147483647i, i32(-2147483648), 1i, 34908i), 18230i, 1001f, Struct_1(-45444i)), Struct_2(Struct_1(-50309i), vec4<i32>(-3772i, -65083i, -20537i, 20053i), 38584i, 250f, Struct_1(-22896i)), Struct_2(Struct_1(-11993i), vec4<i32>(11776i, 1i, -16929i, 2147483647i), -12178i, 762f, Struct_1(2147483647i)), Struct_2(Struct_1(-23675i), vec4<i32>(-45797i, 1i, -38108i, 20817i), 0i, 765f, Struct_1(59904i)), Struct_2(Struct_1(-44231i), vec4<i32>(6177i, -31424i, -1i, 35309i), 44432i, 1033f, Struct_1(i32(-2147483648))), Struct_2(Struct_1(5293i), vec4<i32>(-10713i, -8707i, -34510i, i32(-2147483648)), 0i, -384f, Struct_1(-1i)), Struct_2(Struct_1(-11577i), vec4<i32>(47154i, 1i, 48842i, 0i), 1i, 1000f, Struct_1(-14458i)), Struct_2(Struct_1(-55020i), vec4<i32>(-20423i, -60302i, -46506i, -44385i), 27638i, 1084f, Struct_1(i32(-2147483648))), Struct_2(Struct_1(-6503i), vec4<i32>(2147483647i, 0i, 1i, 36193i), -16455i, -1200f, Struct_1(1i)), Struct_2(Struct_1(-56935i), vec4<i32>(-6754i, -37056i, 0i, 1i), -18758i, -980f, Struct_1(-42612i)));

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(-10230i), vec4<i32>(2147483647i, 45076i, 567i, i32(-2147483648)), 6151i, 717f, Struct_1(-45667i)), Struct_2(Struct_1(2147483647i), vec4<i32>(-58946i, -59092i, -185i, 21214i), -4986i, 715f, Struct_1(-1i)), Struct_2(Struct_1(16151i), vec4<i32>(50569i, 61445i, 0i, 2147483647i), 1i, 247f, Struct_1(-22518i)), Struct_2(Struct_1(-1i), vec4<i32>(-1i, -12366i, 1i, -25308i), -1i, -1053f, Struct_1(0i)), Struct_2(Struct_1(-7826i), vec4<i32>(2147483647i, -25198i, 0i, -11761i), 2147483647i, 1885f, Struct_1(59159i)), Struct_2(Struct_1(-51828i), vec4<i32>(i32(-2147483648), -43187i, -6879i, 0i), -6405i, 1393f, Struct_1(-33969i)), Struct_2(Struct_1(11390i), vec4<i32>(20705i, 18168i, 1i, -67909i), -633i, 511f, Struct_1(48634i)), Struct_2(Struct_1(1i), vec4<i32>(1i, -4489i, 32645i, 1i), 1i, -1413f, Struct_1(-1i)), Struct_2(Struct_1(9710i), vec4<i32>(-17223i, 2147483647i, 1i, -11694i), 21892i, -1000f, Struct_1(1i)), Struct_2(Struct_1(13831i), vec4<i32>(i32(-2147483648), 10806i, 34393i, 1i), i32(-2147483648), 820f, Struct_1(1i)), Struct_2(Struct_1(-19587i), vec4<i32>(0i, -1i, -30699i, -15570i), 61610i, 1435f, Struct_1(5084i)), Struct_2(Struct_1(1i), vec4<i32>(i32(-2147483648), 14793i, 2147483647i, -4716i), -34059i, 2737f, Struct_1(11794i)), Struct_2(Struct_1(-44774i), vec4<i32>(2147483647i, 2147483647i, 1i, i32(-2147483648)), 27973i, 1588f, Struct_1(-1i)), Struct_2(Struct_1(2147483647i), vec4<i32>(-38392i, 0i, 2147483647i, 45276i), 46212i, 591f, Struct_1(-18143i)), Struct_2(Struct_1(-1i), vec4<i32>(-1i, 0i, -1i, i32(-2147483648)), i32(-2147483648), 1000f, Struct_1(i32(-2147483648))), Struct_2(Struct_1(6868i), vec4<i32>(-18748i, i32(-2147483648), -1i, i32(-2147483648)), -42090i, -1245f, Struct_1(-1i)), Struct_2(Struct_1(-29477i), vec4<i32>(36092i, 0i, -31657i, -45803i), -1i, -243f, Struct_1(-8216i)), Struct_2(Struct_1(34207i), vec4<i32>(1i, 67510i, -18704i, 4719i), -11206i, 1362f, Struct_1(i32(-2147483648))), Struct_2(Struct_1(-21952i), vec4<i32>(0i, i32(-2147483648), -12686i, -9554i), 1i, -151f, Struct_1(-21477i)), Struct_2(Struct_1(0i), vec4<i32>(-1i, 2147483647i, 1i, 0i), -13139i, -644f, Struct_1(-231i)), Struct_2(Struct_1(0i), vec4<i32>(-1i, 55378i, 0i, 1961i), i32(-2147483648), 801f, Struct_1(-51002i)), Struct_2(Struct_1(-11639i), vec4<i32>(34569i, 1i, 0i, 2147483647i), -1i, 1695f, Struct_1(i32(-2147483648))));

var<private> global3: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = Struct_4(global0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(643f, 479f, true))), 1000f, 922f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b))), _wgslsmith_f_op_f32(222f - arg_1.d.d));
    var var_1 = Struct_1(i32(-1i) * -2147483647i);
    var var_2 = _wgslsmith_div_i32(~(~2147483647i), 46116i);
    let var_3 = !(!vec3<bool>(true, all(vec2<bool>(true, false)), all(vec3<bool>(true, true, true))));
    global0 = Struct_4(Struct_3(arg_0, arg_1.b, arg_1.b, arg_1.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(global0.b)))))), _wgslsmith_f_op_f32(-arg_1.d.d));
    return vec2<bool>(var_3.x, ~(~max(0u, 85801u)) != ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 59548u, 14583u), vec3<u32>(36986u, 1u, 55770u)), ~84668u));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.d.d)), _wgslsmith_f_op_f32(sign(global0.a.d.d)), _wgslsmith_f_op_f32(global0.a.d.d + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -163f), _wgslsmith_f_op_f32(round(global0.b.x))))))));
    global1 = array<Struct_2, 12>();
    var var_1 = Struct_4(Struct_3(Struct_1(abs(0i >> (1u % 32u))), Struct_1(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, -50241i), global0.a.a.a)), Struct_1(i32(-1i) * -global0.a.b.a), global2[_wgslsmith_index_u32(51545u, 22u)]), _wgslsmith_f_op_vec3_f32(min(global0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1494f), _wgslsmith_f_op_f32(-474f - -740f), _wgslsmith_f_op_f32(var_0.x - 1000f))))), 1f);
    var var_2 = func_3(global0.a.d.e, var_1.a, var_1.a.a);
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, 949f, var_1.c) + var_1.b))), vec3<f32>(_wgslsmith_f_op_f32(var_1.a.d.d - _wgslsmith_f_op_f32(global0.a.d.d * 1000f)), var_0.x, _wgslsmith_f_op_f32(-var_0.x)), all(!(!vec4<bool>(true, var_2.x, false, var_2.x)))));
    return _wgslsmith_mult_i32(2147483647i >> (0u % 32u), 0i ^ ~(-(u_input.a << (1u % 32u))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    global3 = ~4294967295u;
    let var_0 = min(-1i, -2147483647i | func_2());
    let var_1 = (vec4<i32>(1i, 1i, 1i, 1i) ^ ~vec4<i32>(arg_0.x, -54739i, -global0.a.b.a, -48227i)) >> (~(~vec4<u32>(countOneBits(61952u), 1u, reverseBits(1u), _wgslsmith_add_u32(2647u, 0u))) % vec4<u32>(32u));
    global3 = 1u;
    global0 = Struct_4(Struct_3(global0.a.d.a, Struct_1(abs(i32(-1i) * -2147483647i)), global0.a.d.e, Struct_2(global0.a.c, global0.a.d.b, -(~(-1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * -1993f)), Struct_1(-1i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global0.a.d.d)), _wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.d.d * global0.c)), _wgslsmith_f_op_f32(-global0.a.d.d)) - global0.b), 217f);
    return Struct_3(Struct_1(~(-global0.a.b.a)), Struct_1(_wgslsmith_sub_i32(u_input.a, -_wgslsmith_add_i32(20499i, -1i))), Struct_1(select(1i, var_0, all(vec2<bool>(true, true)))), Struct_2(Struct_1(_wgslsmith_sub_i32(global0.a.d.e.a, i32(-1i) * -44635i)), var_1, abs(global0.a.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b.x, global0.a.d.d, false))) + 944f), Struct_1(u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 22>();
    var var_0 = global0.a.d;
    global0 = Struct_4(func_1(var_0.b), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-533f - var_0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) - -696f)), global0.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-932f)), 785f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) - _wgslsmith_f_op_vec3_f32(global0.b * global0.b)), vec3<f32>(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(145f - -1821f)), var_0.d)), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 15655u, 11873u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), reverseBits(48837u) >> (1u % 32u)), _wgslsmith_div_u32(1u, 101553u)), 55698u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(427f, 734f, var_0.d))) + vec3<f32>(365f, -128f, var_0.d)))));
}

