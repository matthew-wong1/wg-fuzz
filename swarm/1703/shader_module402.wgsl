struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: bool = true;

var<private> global2: array<vec3<u32>, 20>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec3<u32>) -> u32 {
    let var_0 = Struct_2(vec4<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true))), true, false, (select(true, true, false) & true) != (all(vec2<bool>(true, true)) && true)), vec2<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(select(u_input.a.yyx, ~vec3<u32>(26754u, 1u, arg_2.a), vec3<bool>(true, true, true)), vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, arg_2.a, 20281u), arg_3), ~arg_3.x))), true, vec3<u32>(arg_0.x & arg_3.x, 2827u, arg_0.x));
    let var_1 = true;
    var var_2 = Struct_4(arg_2.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1298f), -725f) * _wgslsmith_f_op_vec2_f32(-arg_2.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.b.x + arg_2.b.x), 684f) + arg_1.yy))), -1i);
    let var_3 = -(~(vec4<i32>(-1i) * -(~vec4<i32>(-15602i, arg_2.c, u_input.b.x, var_2.c))));
    let var_4 = ~u_input.a.zz;
    return _wgslsmith_mod_u32(arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(reverseBits(12244u), _wgslsmith_sub_u32(67998u, var_0.b.x)), _wgslsmith_sub_u32(var_2.a, 0u)), vec2<u32>(arg_0.x >> (abs(4294967295u) % 32u), 37750u)));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    global0 = !(!(!(!(30763i >= u_input.b.x))));
    let var_0 = Struct_4(~(~_wgslsmith_sub_u32(firstTrailingBit(arg_3), 31056u)), arg_0.xz, arg_1);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-var_0.b.x)) * 1000f), -1955f, true)));
    let var_2 = 1i | (_wgslsmith_clamp_i32(2147483647i, u_input.b.x << ((var_0.a & 12136u) % 32u), -1i) << (select(108034u, _wgslsmith_dot_vec3_u32(vec3<u32>(17846u, u_input.a.x, 71525u), vec3<u32>(u_input.a.x, 70294u, var_0.a)), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false))) % 32u));
    global2 = array<vec3<u32>, 20>();
    return select(vec2<bool>(true, ~_wgslsmith_sub_i32(arg_2.a, 2147483647i) >= 1i), !select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)))), vec2<bool>(~(~var_0.a) != _wgslsmith_div_u32(73432u, arg_3), true));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> bool {
    let var_0 = Struct_5(vec2<u32>(~_wgslsmith_add_u32(~u_input.a.x, ~u_input.a.x), firstLeadingBit(4294967295u << (u_input.a.x % 32u)) ^ 1u));
    global0 = _wgslsmith_mod_u32(arg_1, _wgslsmith_div_u32(min(1u, _wgslsmith_mod_u32(u_input.a.x, arg_1)), var_0.a.x)) >= ~70328u;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -180f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-683f + 251f), -547f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(427f)) * _wgslsmith_f_op_f32(674f + -500f))) + 487f));
    var var_2 = ~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, -60954i, u_input.b.x, u_input.b.x) & vec4<i32>(u_input.b.x, 40391i, -1i, u_input.b.x)), -vec4<i32>(2147483647i, 1i, u_input.b.x, u_input.b.x)), countOneBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(73202i, u_input.b.x, 1i), vec3<i32>(19306i, u_input.b.x, 2147483647i))));
    let var_3 = Struct_3(Struct_1(u_input.b.x), ~u_input.a.x, arg_0.x || (_wgslsmith_dot_vec2_i32(u_input.b, u_input.b) > reverseBits(_wgslsmith_sub_i32(1i, 21466i))));
    return !any(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -399f, var_1.x, -766f))), u_input.b.x, Struct_1(var_3.a.a), abs(func_3(vec2<u32>(0u, u_input.a.x), vec3<f32>(586f, 390f, var_1.x), Struct_4(u_input.a.x, vec2<f32>(var_1.x, 1471f), 1i), vec3<u32>(var_0.a.x, u_input.a.x, 42495u)))));
}

fn func_1(arg_0: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_1(firstTrailingBit(~(-1i)));
    var var_1 = u_input.a.zz;
    let var_2 = select(select(select(vec4<bool>(func_2(vec2<bool>(false, true), 1u), true, arg_0.x > 2147483647i, select(true, false, true)), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false), any(vec2<bool>(false, false))), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true))), vec4<bool>(all(vec2<bool>(true, false)), true, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-454f, 324f, 1184f, 1322f)), u_input.b.x | -45438i, var_0, u_input.a.x).x, func_2(vec2<bool>(true, true), _wgslsmith_dot_vec2_u32(u_input.a.wy, u_input.a.yy))), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, func_2(vec2<bool>(false, true), 24574u)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true))), ~(~62920u) == var_1.x), false);
    var var_3 = true;
    var_3 = 1u == _wgslsmith_dot_vec2_u32(max(vec2<u32>(~1u, ~var_1.x), vec2<u32>(u_input.a.x, ~40504u)), vec2<u32>(_wgslsmith_clamp_u32(20104u, 29158u, 20085u), ~1u) | u_input.a.wx);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-370f + 2030f) + _wgslsmith_f_op_f32(280f + 1721f)))));
    global0 = false;
    global1 = true;
    var var_1 = countOneBits(u_input.b);
    let var_2 = !select(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(any(func_1(vec3<i32>(var_1.x, u_input.b.x, var_1.x))), u_input.b.x < 1i, select(true, false, false) | true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec3<bool>(false, true, false))), false));
    global2 = array<vec3<u32>, 20>();
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + var_0)), -797f, -610f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-var_0))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_3.x)))), ~4294967295u, vec2<i32>(_wgslsmith_div_i32(~(~(-1i)), firstTrailingBit(-2147483647i)), firstLeadingBit(abs(_wgslsmith_add_i32(u_input.b.x, -1i)))));
}

