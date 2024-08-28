struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: f32 = 1817f;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> vec4<bool> {
    global0 = arg_2;
    var var_0 = Struct_4(-_wgslsmith_dot_vec3_i32(~abs(vec3<i32>(1i, -2975i, u_input.c.x)), vec3<i32>(u_input.c.x, _wgslsmith_mod_i32(36480i, u_input.c.x), 1i)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3 * arg_0), _wgslsmith_f_op_f32(max(arg_0, 537f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, global0.a))), vec2<f32>(_wgslsmith_f_op_f32(max(arg_3, -1713f)), -1579f), vec2<bool>(true, true))))), arg_2.a, vec4<bool>(arg_1, arg_1, true, false));
    global0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) + arg_3));
    let var_1 = min(~_wgslsmith_mult_u32(16592u, min(u_input.b, 0u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, u_input.a, 74802u), vec3<u32>(u_input.a, u_input.b, u_input.a), var_0.d.yzz), _wgslsmith_div_vec3_u32(vec3<u32>(79958u, 0u, u_input.a), vec3<u32>(u_input.b, u_input.a, u_input.a))) & u_input.a, ~u_input.a, u_input.b & u_input.b));
    return var_0.d;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<bool>) -> f32 {
    return arg_1.b.a.x;
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<f32>) -> f32 {
    var var_0 = arg_0;
    global1 = arg_0.b.x;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = 45788u;
    var_0 = arg_0;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(179f)), arg_0.c);
}

fn func_2(arg_0: Struct_3) -> vec2<f32> {
    global0 = arg_0;
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1064f, global0.a, true)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0.a)))) * -142f)), _wgslsmith_f_op_f32(func_5(Struct_4(-16656i, vec2<f32>(428f, 374f), _wgslsmith_f_op_f32(func_4(vec3<u32>(u_input.b, 0u, 52449u), Struct_2(false, Struct_1(vec2<f32>(global0.a, 1363f), u_input.c, arg_0.a, u_input.b)), all(vec2<bool>(true, true)), func_3(-146f, true, arg_0, arg_0.a))), vec4<bool>(true, true, true, true)), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, all(vec4<bool>(false, true, true, false)), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1572f, arg_0.a, -791f, global0.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, -1886f, arg_0.a, global0.a), vec4<f32>(-1200f, arg_0.a, arg_0.a, global0.a), vec4<bool>(false, true, false, true)))))))));
    global1 = 979f;
    var var_0 = _wgslsmith_f_op_f32(trunc(arg_0.a));
    global0 = Struct_3(global0.a);
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, global0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-564f, arg_0.a) - vec2<f32>(-1876f, -477f))))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_3(412f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global0.a) - vec2<f32>(142f, 1884f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 514f) + vec2<f32>(global0.a, 435f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.a, 1254f)))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(985f, global0.a) + vec2<f32>(global0.a, global0.a))))));
    global0 = Struct_3(430f);
    let var_1 = Struct_4(~firstLeadingBit(-u_input.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(func_4(vec3<u32>(1u, u_input.a, u_input.b), Struct_2(true, Struct_1(var_0, vec2<i32>(-15953i, u_input.c.x), -751f, u_input.a)), true, vec4<bool>(true, true, true, true)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 475f) + vec2<f32>(var_0.x, global0.a))), var_0))), _wgslsmith_f_op_f32(global0.a + global0.a), select(vec4<bool>(u_input.b == _wgslsmith_mod_u32(0u, u_input.b), false, _wgslsmith_f_op_f32(-global0.a) >= -1000f, !func_3(254f, true, Struct_3(150f), -1418f).x), vec4<bool>(true, true, true, true), true));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), global0.a)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1118f * 1400f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global0.a, true)));
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, -235f) - var_1.b))))), vec2<f32>(-1750f, var_1.c)), _wgslsmith_add_vec2_i32(~(u_input.c >> (vec2<u32>(105106u, 4294967295u) % vec2<u32>(32u))), u_input.c) | -((vec2<i32>(31088i, 14160i) | u_input.c) >> (~vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))), global0.a, min(13u, 13245u));
}

fn func_6(arg_0: Struct_2) -> f32 {
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(620f, -1235f) - _wgslsmith_f_op_f32(-1000f - global0.a))))));
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-705f, global0.a, any(select(vec4<bool>(arg_0.a, true, false, false), !vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), any(vec4<bool>(false, false, false, arg_0.a))))))));
    let var_1 = arg_0.b;
    var var_2 = vec2<i32>(u_input.c.x, u_input.c.x);
    var var_3 = Struct_4(countOneBits(-abs(~(-2147483647i))), _wgslsmith_f_op_vec2_f32(func_2(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2365f * var_0), _wgslsmith_f_op_f32(sign(global0.a)))))), _wgslsmith_f_op_f32(arg_0.b.a.x - _wgslsmith_f_op_f32(-func_1().a.x)), select(!(!select(vec4<bool>(true, false, true, arg_0.a), vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false))), !vec4<bool>(true, false, arg_0.a, true), all(!select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, false), arg_0.a))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-114f - arg_0.b.c))))) - _wgslsmith_f_op_f32(var_3.b.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(646f + -466f)), _wgslsmith_div_f32(-206f, var_3.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.a;
    global1 = global0.a;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(Struct_2(select(false, false, true), func_1())))));
    global0 = Struct_3(771f);
    var var_0 = select(min(41881u, ~firstTrailingBit(u_input.b) & abs(u_input.a)), ~(~_wgslsmith_clamp_u32(abs(u_input.a), min(4294967295u, u_input.b), _wgslsmith_add_u32(0u, u_input.a))), true | !any(func_3(global0.a, false, Struct_3(global0.a), global0.a).xyz));
    let var_1 = Struct_3(-1000f);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -192f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(func_5(Struct_4(u_input.c.x, vec2<f32>(1673f, -3390f), 1196f, vec4<bool>(false, true, false, false)), vec3<bool>(true, false, false), vec4<f32>(global0.a, global0.a, global0.a, 1000f))))), global0.a) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1421f, -380f, var_1.a), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a, global0.a, var_1.a))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(197f, _wgslsmith_div_f32(_wgslsmith_div_f32(global0.a, var_1.a), 1260f), _wgslsmith_f_op_f32(global0.a + -1000f))), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(~_wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, u_input.c.x)), firstTrailingBit(abs(vec2<i32>(-885i, u_input.c.x))), vec2<i32>(-27294i, ~u_input.c.x) ^ u_input.c), select(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(u_input.c.x, 23547i, u_input.c.x)), vec3<i32>(u_input.c.x, 0i, -u_input.c.x)), ~(~vec3<i32>(u_input.c.x, 1i, u_input.c.x) & -vec3<i32>(u_input.c.x, u_input.c.x, -5243i)), vec3<bool>(true, false, !all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-101f, var_2.x, global0.a))))));
}

