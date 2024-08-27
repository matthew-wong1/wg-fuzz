struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32) -> i32 {
    let var_0 = true;
    let var_1 = _wgslsmith_mod_i32(1i, countOneBits(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-9340i, 2147483647i, 2147483647i)), vec3<i32>(1i, 1i, 1i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-arg_1.a);
    var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(233f, -242f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -471f))))), 1808f), arg_1.a);
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a));
    return i32(-1i) * -5677i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(1728f - 1868f);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_0.a, arg_0.a) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a * _wgslsmith_f_op_vec4_f32(-arg_0.a)))));
    var var_1 = vec4<bool>(!(!(any(arg_2.a.yz) & !arg_1.a.x)), !arg_2.a.x, any(vec2<bool>(true, arg_2.a.x)), false);
    var_1 = !vec4<bool>(var_1.x, true || !(!arg_2.a.x), true && !any(arg_2.a), !arg_1.a.x);
    var var_2 = ~1u;
    return _wgslsmith_sub_i32(33616i, -countOneBits(func_3(_wgslsmith_f_op_vec3_f32(exp2(arg_0.a.xyy)), Struct_2(vec4<f32>(arg_3, arg_3, 800f, global0.x)), -283f)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = vec4<bool>(_wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(-41226i, -16070i), vec2<i32>(-22486i, -1i))), ~(~vec2<i32>(-1i, 14821i))) == (~1i ^ _wgslsmith_mod_i32(func_2(Struct_2(vec4<f32>(999f, -1098f, global0.x, global0.x)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, false)), 631f), func_3(vec3<f32>(-1729f, -441f, -1702f), Struct_2(vec4<f32>(arg_0, -593f, arg_0, arg_0)), -550f))), min(-1i, _wgslsmith_add_i32(2147483647i >> (u_input.a % 32u), -2147483647i)) != 2147483647i, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, false, true), all(vec3<bool>(true, true, false)), true, true), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(412f, -750f, 510f, arg_0))))))));
    let var_2 = var_0.x;
    global0 = var_1.a;
    global0 = _wgslsmith_f_op_vec4_f32(var_1.a * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 381f, -331f, arg_0) - var_1.a) - var_1.a), _wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 589f, 2191f)), _wgslsmith_f_op_vec4_f32(-var_1.a), any(vec4<bool>(var_0.x, true, true, var_0.x)))))));
    return Struct_1(!vec3<bool>(var_0.x | var_0.x, true, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(-135f * 470f))));
    var_0 = u_input.b;
    var_0 = vec4<u32>(497u, ~var_0.x, u_input.a, u_input.b.x);
    var_0 = vec4<u32>(~_wgslsmith_dot_vec3_u32(firstTrailingBit(~var_0.yyw), firstLeadingBit(~vec3<u32>(0u, 4294967295u, 5391u))), 48007u, 4294967295u, u_input.b.x);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), 980f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * _wgslsmith_div_f32(1442f, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, 1i, 1i));
}

