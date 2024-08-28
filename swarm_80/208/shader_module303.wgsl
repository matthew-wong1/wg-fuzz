struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(u_input.a >> (vec4<u32>(1u, ~u_input.a.x, 4294967295u, u_input.c) % vec4<u32>(32u)), _wgslsmith_div_vec2_f32(vec2<f32>(-1228f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(489f * -1632f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1017f, -290f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(745f, 913f), vec2<f32>(-1000f, 998f)))) + vec2<f32>(1f, 1f))));
    global0 = array<Struct_1, 28>();
    var_0 = Struct_3(var_0.a ^ ~select(u_input.a, vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 1u), true), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.x)) - _wgslsmith_f_op_f32(2915f * 740f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))))));
    var_0 = Struct_3(vec4<u32>(u_input.b.x, 12474u, 8212u, 1u), var_0.b);
    var var_1 = 1u;
    return 49607u;
}

fn func_2(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = Struct_4(Struct_3(select(abs(u_input.a), ~u_input.a, true) & vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(64423u, arg_1, arg_0), vec3<u32>(12770u, u_input.a.x, arg_0)), _wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.xx), func_3(), 4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1086f, -2079f)))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(613f, 1420f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-600f, 631f)))))), _wgslsmith_f_op_f32(-1390f - 132f), 180i, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.d, ~abs(u_input.e)), 29871i));
    let var_1 = Struct_2(var_0.a.a.x, -132f, arg_1, var_0.c, max(abs(~vec3<u32>(var_0.a.a.x, arg_1, u_input.a.x)), ~_wgslsmith_add_vec3_u32(~u_input.a.zwy, vec3<u32>(arg_1, arg_0, arg_1))));
    var var_2 = !select(vec4<bool>(true, true, true, any(vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true)));
    global0 = array<Struct_1, 28>();
    var var_3 = Struct_4(Struct_3(vec4<u32>(~(~24731u), var_1.a, var_0.a.a.x, abs(11139u) & (arg_1 | arg_0)), _wgslsmith_f_op_vec2_f32(select(var_0.a.b, vec2<f32>(-900f, _wgslsmith_f_op_f32(-318f + 768f)), var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b))) - 335f), 1i, -u_input.d);
    return ~var_0.a.a.x;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2) -> vec2<bool> {
    global0 = array<Struct_1, 28>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-361f * -128f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b)))) * -400f), _wgslsmith_f_op_f32(ceil(-1732f)), arg_0.a.b.x);
    var var_1 = func_2(firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, ~(~arg_0.a.a.x))), 1977u);
    let var_2 = !vec2<bool>(false, any(vec3<bool>(true, true, true)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-631f, 1887f, -1316f, 214f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -127f, arg_1.b, arg_1.b) - vec4<f32>(arg_1.b, var_0.x, var_0.x, -965f))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), arg_0.a.b.x, _wgslsmith_f_op_f32(min(arg_1.b, 179f)), _wgslsmith_f_op_f32(-196f + -829f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1108f, var_0.x)), arg_0.a.b.x, _wgslsmith_f_op_f32(198f + arg_0.a.b.x), _wgslsmith_f_op_f32(-arg_0.b)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, -126f, -223f, 323f))))))));
    return vec2<bool>(var_2.x, true & var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    let var_0 = select(all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), select(true, all(vec2<bool>(true, true)), true))), true | any(vec2<bool>(true, true)), !all(select(func_1(Struct_4(Struct_3(u_input.a, vec2<f32>(-467f, 2121f)), 1000f, 42827i, u_input.e), Struct_2(u_input.b.x, 1403f, 65496u, 33543i, u_input.b)), vec2<bool>(true, true), func_1(Struct_4(Struct_3(u_input.a, vec2<f32>(1000f, 414f)), 1049f, 1i, u_input.d), Struct_2(u_input.c, -664f, u_input.c, u_input.d, vec3<u32>(7969u, 35628u, u_input.a.x))))));
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1307f - 1494f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1093f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-107f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1379f, -1297f))))));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(vec2<i32>(u_input.d, 2147483647i) | vec2<i32>(u_input.d, 2147483647i))));
}

