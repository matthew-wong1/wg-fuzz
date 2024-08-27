struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u);

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> u32 {
    global0 = Struct_1(_wgslsmith_sub_u32(arg_2.a, abs(50788u)));
    let var_0 = -39926i;
    return 4294967295u;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(~(~(func_1(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, 21500i), -1026f, arg_1, 1i) ^ 1u)));
    global0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + _wgslsmith_f_op_f32(-657f * arg_3.x)))))));
    global0 = arg_1;
    var var_2 = arg_3.x;
    return arg_1;
}

fn func_3() -> u32 {
    var var_0 = u_input.b.x;
    let var_1 = u_input.a.x;
    return 25995u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_2(vec4<u32>(abs(func_1(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, 20257i, -1i)), _wgslsmith_f_op_f32(f32(-1f) * -384f), Struct_1(u_input.a.x), ~u_input.b.x)), firstLeadingBit(~global0.a), u_input.a.x, func_1(-vec4<i32>(-52305i, u_input.b.x, u_input.b.x, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -809f)), Struct_1(abs(global0.a)), 1i)), Struct_1(~8771u), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1403f, 410f, 533f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(390f, 559f, -285f) + vec3<f32>(-814f, 462f, -2777f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1253f, 583f, -211f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(113f, -1000f, -781f) + _wgslsmith_div_vec3_f32(vec3<f32>(-585f, 1101f, 1020f), vec3<f32>(315f, 556f, 194f))))));
    var var_0 = ~_wgslsmith_mult_i32(max(-_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), u_input.b.x), firstTrailingBit(-u_input.b.x));
    var var_1 = func_2(vec4<u32>(_wgslsmith_mult_u32(func_3(), countOneBits(u_input.a.x)), 42308u ^ (global0.a >> (~0u % 32u)), min(~1u, 38793u), _wgslsmith_div_u32(global0.a, u_input.a.x)), Struct_1(~(~47231u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 57154u), u_input.a.xyz))), global1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-443f, _wgslsmith_f_op_f32(max(-234f, -236f)), _wgslsmith_f_op_f32(select(224f, -1000f, true))) - vec3<f32>(_wgslsmith_f_op_f32(-596f + -876f), _wgslsmith_f_op_f32(254f * -2813f), _wgslsmith_f_op_f32(612f * 1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(758f * 239f), -234f, _wgslsmith_f_op_f32(max(-383f, 1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    var_0 = u_input.b.x;
    let var_2 = Struct_1(_wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(reverseBits(83288u), abs(~global0.a))));
    var_0 = u_input.b.x;
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(abs(1u), var_1.a), ~65606u, 1u), 1360f);
}

