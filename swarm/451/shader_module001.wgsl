struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: array<vec4<f32>, 11>;

var<private> global3: array<vec4<f32>, 26>;

var<private> global4: Struct_5;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    global1 = any(!select(select(select(vec4<bool>(false, global0.b.x, global0.b.x, false), vec4<bool>(false, global0.b.x, global0.b.x, false), vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x)), vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), !vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x)), vec4<bool>(true, global0.b.x, true, global0.b.x), false));
    let var_0 = 1303f;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(select(var_0, var_0, global0.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-752f + -835f) * _wgslsmith_f_op_f32(select(1000f, arg_0, false)))) * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))), var_0, true)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f + 903f))))), _wgslsmith_f_op_f32(-arg_1.c.x));
    var var_2 = Struct_3(57531u, Struct_2(vec2<i32>(abs(_wgslsmith_add_i32(2147483647i, global0.a.x)), 1i), !select(global0.b, vec2<bool>(false, global0.b.x), global0.b.x)), Struct_2(-global4.a, !vec2<bool>(true, global0.b.x)));
    let var_3 = _wgslsmith_mult_i32(~(-46907i), abs(max(_wgslsmith_clamp_i32(arg_1.a.x >> (10195u % 32u), ~22806i, _wgslsmith_div_i32(-2147483647i, -1i)), u_input.c)));
    return select(reverseBits(-2147483647i), -24177i, ~reverseBits(~u_input.e) >= ~(~var_2.a));
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = Struct_2(vec2<i32>(~0i, _wgslsmith_mult_i32(func_3(_wgslsmith_f_op_f32(-528f + 1557f), Struct_1(vec3<i32>(-2147483647i, -51113i, global0.a.x), -1000f, vec3<f32>(-832f, -1029f, 1081f))), u_input.d)), vec2<bool>(~(global4.a.x & u_input.c) <= -24233i, true));
    let var_0 = max(reverseBits(u_input.d), -28248i);
    global2 = array<vec4<f32>, 11>();
    let var_1 = Struct_3(countOneBits(u_input.e), Struct_2(~global4.a, global0.b), Struct_2(abs(global0.a & global4.a), vec2<bool>(true, true)));
    global1 = var_1.c.b.x;
    return var_1.b;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> vec2<bool> {
    global2 = array<vec4<f32>, 11>();
    return vec2<bool>(!global0.b.x, ~select(1u, ~arg_0, true) >= 5424u);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32) -> Struct_1 {
    var var_0 = 29605u;
    return Struct_1(vec3<i32>(reverseBits(2147483647i), _wgslsmith_add_i32(arg_1.a, _wgslsmith_dot_vec2_i32(func_2(u_input.e).a, vec2<i32>(11371i, 8149i))), _wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i, global4.a.x), max(62813i, arg_0.a.x))), _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(760f, arg_1.b, -627f) - vec3<f32>(-542f, 362f, arg_1.b)))), _wgslsmith_div_vec3_f32(vec3<f32>(317f, 885f, _wgslsmith_f_op_f32(-1330f + -1776f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.b, -1190f, -1000f)))))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(Struct_2(~(~firstLeadingBit(global0.a)), select(global0.b, func_4(~u_input.b, true, func_2(u_input.e), _wgslsmith_div_f32(-424f, 508f)), select(!vec2<bool>(true, global0.b.x), vec2<bool>(true, true), vec2<bool>(global0.b.x, global0.b.x)))), Struct_4(_wgslsmith_mult_i32(-22388i, -21385i) << (u_input.e % 32u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(223f)), _wgslsmith_f_op_f32(max(-157f, -124f))) + _wgslsmith_f_op_f32(-241f - _wgslsmith_f_op_f32(f32(-1f) * -584f)))), _wgslsmith_dot_vec3_i32(vec3<i32>(global4.a.x, select(-17072i ^ global0.a.x, global4.a.x, true), -global4.a.x), ~abs(abs(vec3<i32>(global4.a.x, 26580i, global4.a.x)))));
    var var_1 = Struct_1(-vec3<i32>(_wgslsmith_clamp_i32(~0i, global4.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, global4.a.x, global4.a.x), vec3<i32>(global4.a.x, 51164i, u_input.c))), 1i, 68219i), var_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c + vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(step(-2438f, var_0.b)), func_5(Struct_2(global4.a, global0.b), Struct_4(-1i, var_0.b), var_0.a.x).b)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-363f, _wgslsmith_f_op_f32(var_0.b + var_0.b), _wgslsmith_f_op_f32(-var_0.b))))));
    var var_2 = func_5(func_2(u_input.a), Struct_4(select(~u_input.d, firstLeadingBit(u_input.d) | func_3(-473f, Struct_1(vec3<i32>(23873i, u_input.c, var_1.a.x), -1735f, var_0.c)), 1u == u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-289f, _wgslsmith_f_op_f32(max(var_1.b, -765f))))), global0.a.x);
    var var_3 = func_2(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 0u)), vec2<u32>(~u_input.b, 80373u)));
    return Struct_2(global0.a >> (vec2<u32>(u_input.b, max(u_input.a, 27267u)) % vec2<u32>(32u)), select(func_4(25311u, global0.b.x == !global0.b.x, Struct_2(_wgslsmith_sub_vec2_i32(var_2.a.zz, global4.a), global0.b), 1896f), select(func_4(~0u, true, func_2(u_input.e), 247f), !vec2<bool>(global0.b.x, false), true), false));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 26>();
    global4 = Struct_5(global4.a);
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(499f, -548f, 114f) * vec3<f32>(-218f, -1000f, 711f)))))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(3214f * 1460f), _wgslsmith_f_op_f32(ceil(-1136f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-176f, 1388f, -1000f) + vec3<f32>(517f, -724f, 537f))))))));
    global0 = Struct_2(countOneBits(firstLeadingBit(-_wgslsmith_mod_vec2_i32(global0.a, global0.a))), vec2<bool>(!global0.b.x, false));
    global3 = array<vec4<f32>, 26>();
    global1 = !(u_input.e != _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a, 11672u, u_input.b), abs(vec4<u32>(u_input.a, u_input.a, 1u, 2270u)))) == (-func_5(func_2(u_input.b), Struct_4(global4.a.x, var_1.x), global4.a.x).a.x >= func_1().a.x);
    global3 = array<vec4<f32>, 26>();
    var var_2 = _wgslsmith_mod_i32(0i, _wgslsmith_add_i32(abs(min(u_input.c, -31800i)) << ((1u << (1u % 32u)) % 32u), 31857i));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~abs(-19826i), _wgslsmith_f_op_f32(var_1.x * 419f), vec4<i32>(var_0.a.x, -_wgslsmith_add_i32(global4.a.x, -var_0.a.x), ~((global4.a.x ^ global4.a.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4514u, u_input.e), vec3<u32>(166u, 38901u, 4294967295u)) % 32u)), i32(-1i) * -6309i));
}

