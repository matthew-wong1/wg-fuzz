struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(-777f, arg_2, true)), _wgslsmith_f_op_f32(-1266f + arg_2), _wgslsmith_f_op_f32(step(-1159f, arg_2))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1139f, arg_2, -332f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2, arg_2, 425f), vec3<f32>(arg_2, -421f, 406f))) * vec3<f32>(arg_2, -773f, arg_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(970f, 1550f, arg_2), vec3<f32>(arg_2, -1000f, 205f), false)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1964f, arg_2, 771f), vec3<f32>(871f, 859f, arg_2))))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(399f * -290f), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_2 * arg_2))))));
    var var_1 = ~(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_3.b.x, 4294967295u, 23010u)), ~abs(vec3<u32>(arg_1.b.x, arg_3.b.x, arg_3.b.x))));
    global0 = array<Struct_1, 16>();
    var var_2 = arg_1;
    var_1 = 4294967295u;
    return var_2.a;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(!func_3(_wgslsmith_div_i32(countOneBits(-26233i), u_input.a >> (1u % 32u)), global0[_wgslsmith_index_u32(~(~36048u), 16u)], 625f, Struct_1(vec2<bool>(true, true), select(vec2<u32>(5474u, 15247u), vec2<u32>(1u, 1u), true))), ~(~vec2<u32>(1u, 1u)));
    var var_1 = vec2<u32>(~var_0.b.x, var_0.b.x);
    var var_2 = var_0;
    let var_3 = Struct_1(!(!select(func_3(u_input.a, Struct_1(var_0.a, var_2.b), 1003f, global0[_wgslsmith_index_u32(4294967295u, 16u)]), var_0.a, vec2<bool>(var_0.a.x, false))), ~(~(var_0.b & abs(vec2<u32>(0u, 12144u)))));
    global0 = array<Struct_1, 16>();
    return Struct_1(!var_2.a, vec2<u32>(1u, var_2.b.x));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 16>();
    let var_0 = !(!(!(!(!vec3<bool>(false, arg_0.a.x, false)))));
    global0 = array<Struct_1, 16>();
    let var_1 = !(!select(vec4<bool>(!arg_0.a.x, arg_0.a.x, arg_0.a.x | var_0.x, true), vec4<bool>(all(vec4<bool>(false, true, false, true)), var_0.x, false, var_0.x), vec4<bool>(!var_0.x, !var_0.x, !var_0.x, arg_0.a.x)));
    var var_2 = _wgslsmith_f_op_f32(ceil(1f));
    return Struct_1(vec2<bool>(var_0.x, func_2().a.x), vec2<u32>(~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, 0u), arg_0.b)), arg_0.b.x));
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    var var_0 = func_4(func_2());
    var var_1 = vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1144f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -121f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -885f), _wgslsmith_f_op_f32(arg_0.x - arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -393f) - _wgslsmith_div_f32(-220f, 1377f)), true))));
    var var_2 = !vec2<bool>(true, var_0.a.x);
    var_2 = !vec2<bool>(true, true | select(var_2.x, var_2.x, func_4(Struct_1(vec2<bool>(false, var_0.a.x), vec2<u32>(1u, var_0.b.x))).a.x));
    let var_3 = _wgslsmith_mult_vec2_u32(~(select(vec2<u32>(var_0.b.x, 1u), var_0.b, vec2<bool>(false, var_2.x)) | firstLeadingBit(var_0.b)) ^ firstLeadingBit(var_0.b), abs(abs(abs(~vec2<u32>(var_0.b.x, var_0.b.x)))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(abs(countOneBits(u_input.a) & -36011i), -25730i >> (func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) % 32u));
    global0 = array<Struct_1, 16>();
    let var_1 = ~_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), ~(-vec3<i32>(-5118i, 47537i, var_0))), -_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.a, 34257i) << (vec3<u32>(0u, 4294967295u, 59348u) % vec3<u32>(32u)), -vec3<i32>(23586i, u_input.a, var_0)));
    var var_2 = -(vec4<i32>(-1i) * -vec4<i32>(var_1.x, var_0 << (0u % 32u), 25887i, u_input.a));
    var var_3 = vec4<bool>(select(true, any(vec2<bool>(all(vec2<bool>(true, true)), func_2().a.x)), u_input.a >= select(-30437i, select(2147483647i, var_0, false), any(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(576f + _wgslsmith_f_op_f32(min(292f, 1249f))) + 1f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1270f * _wgslsmith_f_op_f32(ceil(765f))) + _wgslsmith_f_op_f32(f32(-1f) * -817f)), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, 0u, 1u & func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-676f, -840f))))), vec4<f32>(701f, -1642f, _wgslsmith_f_op_f32(f32(-1f) * -475f), -503f));
}

