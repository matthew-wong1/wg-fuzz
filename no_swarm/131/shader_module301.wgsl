struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(-44792i, -33265i, 880i), vec3<i32>(21368i, -27139i, -1779i), vec3<i32>(3963i, 67620i, 1i), vec3<i32>(-31457i, -15238i, 72222i), vec3<i32>(0i, 37063i, i32(-2147483648)), vec3<i32>(-37115i, 43884i, 15441i), vec3<i32>(-1i, -1i, 46764i), vec3<i32>(0i, -32501i, 47919i), vec3<i32>(0i, -4565i, i32(-2147483648)), vec3<i32>(0i, -20933i, 16027i), vec3<i32>(-5077i, 22599i, 23668i), vec3<i32>(-7151i, 1i, -1i), vec3<i32>(0i, -5902i, -10220i), vec3<i32>(1i, 13574i, -17563i), vec3<i32>(29733i, 38078i, -20404i), vec3<i32>(12094i, -29043i, -12976i), vec3<i32>(i32(-2147483648), 6025i, -54655i), vec3<i32>(-22385i, 2147483647i, 18357i), vec3<i32>(5537i, -22611i, 0i), vec3<i32>(-361i, i32(-2147483648), 34519i), vec3<i32>(1i, 33257i, 1i), vec3<i32>(-33204i, 0i, -1i), vec3<i32>(-6260i, 1i, -51106i), vec3<i32>(-46730i, 1i, 2773i), vec3<i32>(-1i, i32(-2147483648), -2282i));

var<private> global1: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = 50275i;
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 1i, 2147483647i, -55780i) >> (global1.b % vec4<u32>(32u)), ~(~(~(vec4<i32>(u_input.c.x, -1i, -2147483647i, -10222i) << (global1.b % vec4<u32>(32u))))));
    global0 = array<vec3<i32>, 25>();
    var var_2 = global1.a.a.zx;
    let var_3 = global1.a;
    return _wgslsmith_add_u32(~(~_wgslsmith_div_u32(44355u, 4294967295u)), 4294967295u) & ~firstLeadingBit(~(~var_3.b.x));
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = global1.a;
    global0 = array<vec3<i32>, 25>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f));
    global1 = Struct_3(global1.a, global1.b, var_0.a.x);
    global1 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global1.c), -283f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(var_0.c + 1316f))), vec2<u32>(func_3(global1.c), _wgslsmith_clamp_u32(1u, 48300u, arg_0)) << (reverseBits(select(u_input.b.yx, vec2<u32>(global1.b.x, u_input.a), true)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(max(-125f, _wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_div_f32(495f, global1.c))))), -1i), abs(global1.b), 152f);
    return var_0.d ^ max(~2460i, (i32(-1i) * -1i) ^ _wgslsmith_sub_i32(u_input.c.x, 2147483647i));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.a.a, _wgslsmith_f_op_vec3_f32(-global1.a.a), true)), _wgslsmith_f_op_vec3_f32(-arg_0.a.a)), u_input.b.xy, _wgslsmith_div_f32(-681f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0.a.c)), _wgslsmith_f_op_f32(arg_0.a.c - arg_0.c.x), all(vec4<bool>(false, true, true, true))))), u_input.c.x), 46478i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global1.c)), _wgslsmith_f_op_f32(1102f * -958f)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a.x, 780f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1378f, global1.a.c)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.c, arg_0.c.x)) - _wgslsmith_f_op_vec2_f32(global1.a.a.yx + vec2<f32>(global1.c, arg_0.a.c))))));
    let var_1 = u_input.b;
    global1 = Struct_3(arg_0.a, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1441f - arg_0.c.x), global1.c))));
    var var_2 = min(_wgslsmith_add_i32(-60103i, 15502i), func_2(var_0.a.b.x)) & -(1i ^ _wgslsmith_div_i32(-4509i, _wgslsmith_sub_i32(-1i, var_0.a.d)));
    global0 = array<vec3<i32>, 25>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.c, var_0.a.c, arg_0.c.x), vec3<f32>(_wgslsmith_f_op_f32(ceil(-552f)), arg_0.c.x, arg_0.a.a.x), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)))), ~max(_wgslsmith_sub_vec2_u32(arg_0.a.b, ~u_input.b.yy), vec2<u32>(~arg_0.a.b.x, arg_0.a.b.x)), _wgslsmith_f_op_f32(-343f * arg_0.a.c), global1.a.d);
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(Struct_2(global1.a, func_2(_wgslsmith_div_u32(1u, ~u_input.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.a.c, global1.c))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.c, global1.c))))));
    var var_1 = Struct_4(Struct_1(vec3<f32>(global1.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.c * var_0.a.x)), -141f), var_0.b, global1.a.a.x, -15793i), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(global1.a.a)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-524f, var_0.a.x, -1391f))), true)), ~(global1.b.xy >> (u_input.b.zx % vec2<u32>(32u))), -1000f, -27658i), 1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.c, 870f))) - _wgslsmith_f_op_vec2_f32(-var_0.a.xx))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(-957f)), 1000f, global1.c))));
    let var_3 = var_1.b;
    var var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1503f), func_4(var_1.b).a.x));
    return var_1.b;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    global1 = Struct_3(func_4(func_1()), firstTrailingBit(global1.b), _wgslsmith_f_op_f32(max(-1392f, global1.c)));
    global1 = Struct_3(arg_0.a, global1.b, _wgslsmith_div_f32(global1.c, global1.a.a.x));
    global1 = Struct_3(global1.a, vec4<u32>(global1.a.b.x, ~1530u, func_3(_wgslsmith_f_op_f32(f32(-1f) * -1057f)), 47230u), global1.a.a.x);
    var var_0 = -1200f;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-495f)))), _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.a.x * arg_1.c.x), _wgslsmith_f_op_f32(arg_1.c.x * arg_2.a.a.x)) + arg_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(947f - -1822f)));
    return _wgslsmith_f_op_f32(-global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(u_input.a, ~global1.a.b.x);
    global1 = Struct_3(Struct_1(global1.a.a, _wgslsmith_div_vec2_u32(global1.b.zw << (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), global1.a.b), global1.c, 36616i), global1.b, _wgslsmith_f_op_f32(ceil(global1.a.a.x)));
    var var_1 = global0[_wgslsmith_index_u32(~(~36u), 25u)] | vec3<i32>(global1.a.d, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 65637i, 1i, u_input.c.x), firstTrailingBit(vec4<i32>(u_input.c.x, u_input.c.x, -1264i, 2147483647i))), ~(vec4<i32>(-1i, 10969i, u_input.c.x, -1i) >> (global1.b % vec4<u32>(32u)))), max(_wgslsmith_div_i32(45019i, 2147483647i), i32(-1i) * -1463i));
    let var_2 = -157f;
    let var_3 = u_input.c;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(), func_1(), Struct_2(Struct_1(vec3<f32>(1483f, 539f, 2171f), u_input.b.xx, -243f, 2147483647i), ~global1.a.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(-153f, -273f) * vec2<f32>(global1.c, 610f))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_f_op_f32(-global1.a.a.x)))) + global1.a.a.x);
    let var_5 = _wgslsmith_f_op_f32(abs(var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1183f - 1679f));
}

