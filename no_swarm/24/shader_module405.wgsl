struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: i32, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(-380f));
    global0 = true;
    let var_1 = vec2<i32>(-u_input.b.x, -u_input.a.x);
    global0 = ~(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0, 3996i), _wgslsmith_clamp_i32(-43165i, -31915i, var_1.x))) > (u_input.b.x >> (12652u % 32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) * -413f), _wgslsmith_f_op_f32(sign(-1163f))))));
    return !(21663i >= u_input.b.x);
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: f32) -> vec3<f32> {
    let var_0 = select(vec3<bool>(true, arg_0.c.a.b, true), vec3<bool>(all(select(vec3<bool>(true, true, arg_1), vec3<bool>(true, false, false), arg_0.c.a.d)), false, true), true);
    var var_1 = _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(u_input.c, max(firstLeadingBit(u_input.d.x), ~4294967295u), 1u)), vec3<u32>(~_wgslsmith_add_u32(abs(0u), u_input.e), 0u, ~((u_input.c >> (37259u % 32u)) >> ((u_input.e | 49037u) % 32u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(419f, arg_2) * vec2<f32>(-406f, -1616f)))))));
    global0 = !(!(abs(-u_input.b.x) <= (~(-1i) << (firstLeadingBit(u_input.c) % 32u))));
    global0 = true || func_2(~(-arg_0.b.x), reverseBits(18062u));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, arg_2, -2043f)), vec3<f32>(-355f, _wgslsmith_f_op_f32(floor(-460f)), -965f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1074f, var_2.x)))), select(!var_0, vec3<bool>(true, all(vec4<bool>(false, false, false, false)), arg_0.c.a.d), !all(vec4<bool>(arg_1, false, true, arg_1)))))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec4<i32>) -> f32 {
    var var_0 = firstTrailingBit(u_input.d.x);
    var var_1 = Struct_1(arg_1.a.b, all(select(vec3<bool>(true, func_2(-34292i, u_input.e), false), vec3<bool>(2147483647i != arg_3.x, arg_1.a.a, u_input.e <= u_input.d.x), !select(vec3<bool>(arg_1.a.c, arg_1.a.b, arg_1.a.c), vec3<bool>(arg_1.a.d, arg_1.a.c, true), arg_1.a.d))), false, false);
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(u_input.d.x, vec4<i32>(max(u_input.b.x, -2147483647i), u_input.a.x, _wgslsmith_mult_i32(38438i, arg_3.x), select(-50881i, -2147483647i, arg_1.a.c)), arg_1), arg_1.a.a, arg_0))));
    let var_3 = vec4<bool>(var_1.c, false, any(select(vec3<bool>(true, arg_1.a.b, any(vec2<bool>(arg_1.a.b, false))), vec3<bool>(true || arg_1.a.c, !arg_1.a.c, all(vec3<bool>(false, true, arg_1.a.c))), select(select(vec3<bool>(true, var_1.c, arg_1.a.c), vec3<bool>(var_1.c, false, var_1.d), vec3<bool>(false, true, false)), select(vec3<bool>(var_1.c, true, var_1.a), vec3<bool>(false, var_1.d, var_1.a), arg_1.a.a), !var_1.c))), min(0u, reverseBits(u_input.d.x << (18125u % 32u))) < (1u ^ _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, u_input.d.x), u_input.c)));
    let var_4 = 332f;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(425f + -491f) - _wgslsmith_f_op_f32(f32(-1f) * -336f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))) != _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(floor(-273f)), Struct_2(Struct_1(false, true, false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-835f, -138f, 712f, 1000f)), _wgslsmith_div_vec4_i32(vec4<i32>(-19753i, -2147483647i, -2147483647i, u_input.b.x), u_input.b))))));
    global0 = u_input.e >= _wgslsmith_mod_u32(u_input.c, ~(~_wgslsmith_mod_u32(1u, 1u)));
    let var_0 = ~vec4<u32>(u_input.d.x, _wgslsmith_add_u32(u_input.d.x, 62430u), _wgslsmith_div_u32(~31899u, u_input.e), 0u);
    global0 = false;
    let var_1 = (u_input.b ^ u_input.a) & vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(abs(u_input.a.wz), u_input.a.wx), u_input.a.yx), u_input.b.x, u_input.b.x, 2147483647i);
    global0 = true || (~_wgslsmith_div_u32(var_0.x, _wgslsmith_div_u32(4294967295u, var_0.x)) == var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(~var_0, var_0));
}

