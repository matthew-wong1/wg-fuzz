struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-531f, -919f));

var<private> global1: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(arg_1.a)), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), 1097f), vec2<bool>(true, true))))));
}

fn func_3() -> u32 {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a - vec2<f32>(-178f, global0.a.x)))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1015f)), _wgslsmith_f_op_f32(round(1437f)))) + 983f), func_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(79294u, 4294967295u), vec2<u32>(5217u, 1u)), func_1(min(23597u, u_input.b.x), func_1(13901u, Struct_1(vec2<f32>(global0.a.x, global0.a.x))))).a.x, _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-507f + global0.a.x))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(797f, -980f, -685f), vec3<f32>(global0.a.x, global0.a.x, global0.a.x)))) + vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), -345f, _wgslsmith_f_op_f32(global0.a.x * -1363f))))));
    global1 = vec3<i32>(~global1.x, _wgslsmith_add_i32(max(-8691i, -2147483647i), ~_wgslsmith_add_i32(0i, global1.x)), _wgslsmith_dot_vec3_i32(abs(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -15286i, -2147483647i), vec3<i32>(-9886i, global1.x, global1.x))), abs(vec3<i32>(global1.x, global1.x, global1.x))) | global1.x);
    global0 = func_1(reverseBits(0u), Struct_1(global0.a));
    let var_1 = -6883i < global1.x;
    return u_input.b.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -495f);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, 412f) - global0.a)))))));
    let var_1 = arg_0.xyw;
    let var_2 = vec4<bool>(var_1.x, (14420u <= _wgslsmith_add_u32(26714u | u_input.a.x, func_3())) | true, var_1.x, arg_2);
    var var_3 = arg_1;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(4294967295u, Struct_1(_wgslsmith_f_op_vec2_f32(step(global0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, 1535f) - vec2<f32>(global0.a.x, global0.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1512f, 594f)), all(vec4<bool>(true, false, false, false))))))));
    global1 = vec3<i32>(global1.x, -global1.x, firstTrailingBit(-func_2(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false), ~(-49087i), all(vec4<bool>(true, true, true, true)))));
    global0 = var_0;
    global0 = var_0;
    var var_1 = func_1(u_input.a.x, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(select(-18898i, global1.x, any(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true))), -1627f);
}

