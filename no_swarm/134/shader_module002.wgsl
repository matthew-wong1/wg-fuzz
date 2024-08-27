struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<i32>(-1i, 1i, 36413i)), Struct_1(vec3<i32>(-1i, 2633i, -83198i)), Struct_1(vec3<i32>(1i, 1i, i32(-2147483648))), Struct_1(vec3<i32>(-1i, 1i, -3154i)), Struct_1(vec3<i32>(-3898i, i32(-2147483648), -1i)), Struct_1(vec3<i32>(8989i, 27011i, 32076i)), Struct_1(vec3<i32>(-1i, 17426i, 48093i)), Struct_1(vec3<i32>(0i, -1i, -5644i)), Struct_1(vec3<i32>(1i, 2147483647i, 0i)), Struct_1(vec3<i32>(i32(-2147483648), 1i, 0i)), Struct_1(vec3<i32>(0i, 25593i, 9999i)), Struct_1(vec3<i32>(6533i, -22970i, -1i)), Struct_1(vec3<i32>(-2589i, 0i, 45786i)), Struct_1(vec3<i32>(8703i, 1i, 1i)), Struct_1(vec3<i32>(20544i, 26519i, -31770i)), Struct_1(vec3<i32>(2147483647i, -25147i, 22657i)), Struct_1(vec3<i32>(18122i, i32(-2147483648), -80492i)), Struct_1(vec3<i32>(2147483647i, -45172i, -20854i)), Struct_1(vec3<i32>(17896i, -1i, 0i)), Struct_1(vec3<i32>(0i, 0i, 42059i)), Struct_1(vec3<i32>(1i, i32(-2147483648), 1i)), Struct_1(vec3<i32>(58199i, -61584i, 2147483647i)), Struct_1(vec3<i32>(-46822i, 1i, 30999i)), Struct_1(vec3<i32>(-18026i, i32(-2147483648), -3900i)), Struct_1(vec3<i32>(38670i, 35583i, 1i)), Struct_1(vec3<i32>(-1i, 26981i, -40555i)), Struct_1(vec3<i32>(0i, 2147483647i, 1i)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global1 = array<Struct_1, 27>();
    global0 = array<Struct_3, 13>();
    global1 = array<Struct_1, 27>();
    global0 = array<Struct_3, 13>();
    let var_0 = !(!vec2<bool>(any(vec2<bool>(false, false)) != true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true))));
    return min(~u_input.b, ~abs(~_wgslsmith_mult_u32(1u, 9277u)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> bool {
    global0 = array<Struct_3, 13>();
    let var_0 = Struct_1(-vec3<i32>(-(u_input.a.x << (32122u % 32u)), arg_1.a.x, ~_wgslsmith_clamp_i32(arg_1.a.x, arg_1.a.x, 2147483647i)));
    var var_1 = select(vec4<bool>(true, !all(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)), true), vec4<bool>(_wgslsmith_div_u32(~u_input.b, 4294967295u << (u_input.b % 32u)) > func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-257f, 1000f, -1000f, 204f), vec4<f32>(-378f, 131f, -914f, -1283f)))), any(vec2<bool>(true, true)), !all(vec2<bool>(false, false)), true), 9144i == _wgslsmith_mult_i32(_wgslsmith_mod_i32(~(-20629i), arg_1.a.x), select(2147483647i, arg_1.a.x, true) | ~(-59705i)));
    var var_2 = var_1.xw;
    let var_3 = arg_0;
    return any(vec4<bool>(any(!vec3<bool>(var_2.x, var_1.x, var_2.x)), var_2.x, all(var_1.yyx), var_0.a.x >= -2147483647i));
}

fn func_4(arg_0: bool) -> Struct_2 {
    var var_0 = u_input.b;
    var var_1 = true;
    global0 = array<Struct_3, 13>();
    let var_2 = !vec4<bool>(!arg_0, 1i < u_input.a.x, arg_0, false);
    global1 = array<Struct_1, 27>();
    return Struct_2(Struct_1(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a.x, -2147483647i, -54667i) >> (u_input.c.zzx % vec3<u32>(32u)), u_input.a.wxw)), max(u_input.b, u_input.b));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -160f))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(874f)) - _wgslsmith_f_op_f32(1000f * 506f))))), -1500f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2091f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-657f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(189f + -263f) + _wgslsmith_f_op_f32(-1733f - -1468f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-876f * -761f)))));
    var var_1 = global0[_wgslsmith_index_u32(1u, 13u)];
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.zxy, ~_wgslsmith_mult_vec3_u32(u_input.c.yxz, u_input.c.xzy)), 13u)];
    let var_2 = global1[_wgslsmith_index_u32(~1u, 27u)];
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1679f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -952f))))));
    return _wgslsmith_mult_u32(1u, 1u);
}

fn func_1(arg_0: u32, arg_1: i32) -> vec3<f32> {
    var var_0 = Struct_3(!vec3<bool>(true, true != (arg_1 > arg_1), true));
    let var_1 = global0[_wgslsmith_index_u32(0u ^ (func_5(~u_input.a, func_4(func_2(arg_0, Struct_1(u_input.a.ywx)))) ^ 1u), 13u)];
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    global1 = array<Struct_1, 27>();
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -1064f), _wgslsmith_f_op_f32(step(-128f, -1698f))) - -737f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1169f + _wgslsmith_f_op_f32(f32(-1f) * -1109f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(2098f, 488f, var_0.a.x)), 432f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-639f, 334f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1395f * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -167f)))), -1893f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 13>();
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1(1u, _wgslsmith_dot_vec2_i32(max(_wgslsmith_clamp_vec2_i32(~vec2<i32>(60317i, 1i), u_input.a.wx, u_input.a.yw), ~u_input.a.wy), u_input.a.xw)));
    let var_1 = ~(~(vec3<u32>(u_input.c.x, func_5(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(global1[_wgslsmith_index_u32(1u, 27u)], 933u)), u_input.c.x) << (select(~u_input.c.zyw, countOneBits(vec3<u32>(0u, u_input.b, 1u)), vec3<bool>(true, true, true)) % vec3<u32>(32u))));
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], ~33250u);
    let var_3 = global1[_wgslsmith_index_u32(4294967295u, 27u)];
    var var_4 = func_4(!all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false)) & select(true, func_2(var_2.b, Struct_1(vec3<i32>(-3231i, u_input.a.x, -25619i))), select(any(vec2<bool>(false, true)), any(vec2<bool>(true, false)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -755f)))))), _wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))))));
}

