struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30>;

var<private> global1: i32 = -8507i;

var<private> global2: array<Struct_2, 2>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> u32 {
    let var_0 = Struct_2(vec2<f32>(415f, -322f));
    let var_1 = 1i;
    let var_2 = var_0;
    let var_3 = 48998i >= -(~_wgslsmith_clamp_i32(~var_1, ~var_1, _wgslsmith_mult_i32(var_1, -2147483647i)));
    var var_4 = vec4<bool>(all(select(vec4<bool>(!var_3, false, arg_1, var_3), select(!vec4<bool>(var_3, false, false, false), !vec4<bool>(false, arg_1, false, arg_1), false), any(!vec3<bool>(true, false, arg_1)))), all(vec4<bool>(false, 6133u >= _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), u_input.b.xy), false, all(!vec3<bool>(arg_1, var_3, var_3)))), true, false);
    return abs(~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_0.x, u_input.a, 4294967295u), ~u_input.b) & ~0u);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: i32) -> Struct_1 {
    global0 = array<vec2<i32>, 30>();
    var var_0 = _wgslsmith_mult_u32(u_input.c, _wgslsmith_dot_vec4_u32(firstTrailingBit(~(~u_input.b)), vec4<u32>(firstLeadingBit(~u_input.a), ~20803u, _wgslsmith_clamp_u32(~38791u, 91568u, u_input.c), ~firstTrailingBit(u_input.c))));
    let var_1 = ~u_input.d.zzy;
    let var_2 = !(!(u_input.c >= 143278u));
    let var_3 = Struct_1(func_3(vec3<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), ~_wgslsmith_mod_u32(u_input.c, 11860u)), var_2));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    global1 = _wgslsmith_mod_i32(u_input.e, _wgslsmith_mult_i32(u_input.d.x, ~u_input.e));
    var var_0 = _wgslsmith_f_op_f32(arg_1.a.x + arg_3.a.x);
    var var_1 = vec3<u32>(_wgslsmith_add_u32(~arg_2.a, 29325u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_div_u32(arg_0.a, arg_0.a), ~4294967295u), u_input.b.xwy), _wgslsmith_clamp_u32(4530u, 4294967295u, func_2(true, vec3<f32>(239f, arg_3.a.x, arg_1.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, 1750f, -1348f)), 1i).a) << (~(~reverseBits(u_input.c)) % 32u), ~arg_0.a);
    let var_2 = true;
    return ~func_2(any(select(!vec4<bool>(var_2, false, false, false), !vec4<bool>(true, var_2, false, true), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.a.x, -732f, 1618f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_3.a.x, arg_1.a.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1030f, 1595f, arg_3.a.x) * vec3<f32>(arg_1.a.x, arg_3.a.x, arg_3.a.x)))))), -_wgslsmith_clamp_i32(u_input.e & u_input.d.x, u_input.d.x, 29702i)).a;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_2 {
    global2 = array<Struct_2, 2>();
    global2 = array<Struct_2, 2>();
    let var_0 = any(!vec3<bool>(true, false, (1i | u_input.d.x) < _wgslsmith_div_i32(u_input.d.x, u_input.d.x)));
    let var_1 = vec3<u32>(func_4(func_2(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, arg_0.x, arg_1.a.x) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.a.x, -178f, -2379f)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(arg_1.a.x, -239f), arg_0.x), u_input.d.x), arg_1, Struct_1(u_input.a), Struct_2(_wgslsmith_f_op_vec2_f32(ceil(arg_0)))), 91529u, u_input.a);
    var var_2 = Struct_1(~firstLeadingBit(~u_input.c >> (_wgslsmith_clamp_u32(71884u, var_1.x, 111662u) % 32u)));
    return Struct_2(arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(460f, -1131f))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(441f, -1792f)) - vec2<f32>(-1408f, -519f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-822f, -939f)))));
    var var_1 = firstLeadingBit(-u_input.d.x);
    var var_2 = _wgslsmith_add_i32(select(-46010i, u_input.e, _wgslsmith_f_op_f32(abs(var_0.a.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_mult_i32(~(-2147483647i), u_input.d.x));
    global1 = ~((u_input.e | max(~u_input.d.x, 1i)) >> (u_input.a % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.d.x & -24937i, -4576i));
}

