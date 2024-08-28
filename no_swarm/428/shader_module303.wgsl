struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(100f, -280f);

var<private> global1: vec2<u32> = vec2<u32>(1u, 0u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> vec2<f32> {
    global1 = u_input.b.zy;
    global1 = abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(51821u, u_input.a), select(abs(vec2<u32>(u_input.b.x, 0u)) | u_input.b.yy, abs(vec2<u32>(global1.x, u_input.b.x)) | _wgslsmith_add_vec2_u32(u_input.b.yx, u_input.b.zx), true), ~reverseBits(abs(u_input.b.xy))));
    global1 = u_input.b.yz;
    let var_0 = select(select(vec2<bool>(true, all(!vec3<bool>(arg_0, true, false))), select(vec2<bool>(!arg_0, 422f == global0.x), !vec2<bool>(arg_0, arg_0), arg_0 | true), false), select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0 | true), all(select(vec4<bool>(arg_0, false, false, arg_0), select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), arg_0), arg_0 != arg_0))), vec2<bool>(arg_0, false));
    let var_1 = vec4<bool>(any(select(!select(vec3<bool>(true, arg_0, false), vec3<bool>(false, arg_0, var_0.x), arg_0), !vec3<bool>(false, arg_0, false), vec3<bool>(!var_0.x, !arg_0, true))), global1.x <= ~1u, arg_0 | var_0.x, false);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(470f, _wgslsmith_f_op_f32(trunc(-683f))), global0.x));
}

fn func_2() -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -457f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(true)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(true)).x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + global0.x) * global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))))));
    var var_0 = Struct_4(global1.x);
    let var_1 = all(vec3<bool>(true, true, true)) & false;
    var var_2 = Struct_2(true, ~(~(-2147483647i)));
    var var_3 = -(vec2<i32>(abs(_wgslsmith_add_i32(var_2.b, -1i)), abs(1i)) & min(_wgslsmith_add_vec2_i32(vec2<i32>(var_2.b, -5263i), -vec2<i32>(13785i, -7499i)), ~(vec2<i32>(var_2.b, var_2.b) | vec2<i32>(var_2.b, var_2.b))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-237f, global0.x), vec2<f32>(global0.x, 991f)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(151f, global0.x)))))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-466f * _wgslsmith_f_op_f32(global0.x - -573f)), -604f))));
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-532f, global0.x), vec2<f32>(global0.x, 1496f), vec2<bool>(false, true))))))))));
    let var_0 = select(true, (arg_0.a.x > firstTrailingBit(max(arg_0.a.x, global1.x))) == (all(vec2<bool>(false, true)) | any(vec2<bool>(true, true))), false);
    let var_1 = firstLeadingBit(~(~vec4<u32>(max(48588u, 32732u), 0u, ~global1.x, ~14659u)));
    let var_2 = var_1;
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(var_0 & true)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1715f, -866f), vec2<f32>(global0.x, -1331f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(trunc(1166f)), 772f)))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(202f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) + _wgslsmith_f_op_f32(-global0.x))))));
    global1 = firstTrailingBit(~vec2<u32>(~_wgslsmith_mod_u32(4294967295u, 4294967295u), global1.x));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1000f));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0))) * _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec3<u32>(0u, global1.x, global1.x))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0, var_0)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1077f, global0.x))), false))) + _wgslsmith_f_op_vec2_f32(func_2()));
    let var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a ^ 1u, -((i32(-1i) * -1i) & _wgslsmith_clamp_i32(-1i, ~34692i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -26089i, -7340i, 0i), vec4<i32>(-52879i, 0i, -2147483647i, -27437i)))));
}

