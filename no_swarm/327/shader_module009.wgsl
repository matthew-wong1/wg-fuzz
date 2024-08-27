struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> vec2<i32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(-220f)));
    let var_1 = Struct_2(any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), 2147483647i < arg_1.x)), Struct_1(-_wgslsmith_add_i32(arg_1.x, -1i) >= ~_wgslsmith_div_i32(-50798i, arg_1.x)));
    return firstLeadingBit(reverseBits(u_input.b.yx | vec2<i32>(abs(-1i), arg_0)));
}

fn func_2() -> Struct_2 {
    var var_0 = ~(-func_3(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-28986i, 0i), abs(-2147483647i)), vec4<i32>(1i, 1i, 1i, 1i)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(select(1f, 1f, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(105f, 1449f) - vec2<f32>(895f, var_1.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_1.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 1723f))), true))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(-970f, -587f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1784f))) - var_2.x) - 693f), _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-291f, _wgslsmith_f_op_f32(select(-104f, 1734f, false)))), var_1.a)));
    var var_4 = abs(-(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(7149i, var_0.x, u_input.b.x), u_input.b)) & u_input.b));
    return Struct_2(798f <= var_2.x, Struct_1(firstLeadingBit(u_input.b.x) <= max(36462i, var_4.x)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> vec4<i32> {
    var var_0 = func_2();
    var var_1 = func_2();
    var_1 = arg_1;
    let var_2 = vec2<bool>(!arg_3, false);
    var var_3 = ~u_input.b.x;
    return ~vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, u_input.b.x, u_input.b.x, 1i), vec4<i32>(arg_2, -20293i, -1i, -29817i), vec4<i32>(u_input.b.x, 38802i, u_input.b.x, arg_2) | vec4<i32>(u_input.b.x, arg_2, 0i, u_input.b.x)), -(vec4<i32>(u_input.b.x, u_input.b.x, arg_2, -1i) << (u_input.a % vec4<u32>(32u)))), -_wgslsmith_sub_i32(-2147483647i, arg_2) | arg_2, 2147483647i, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(true, all(vec2<bool>(true, true)), true, false));
    let var_1 = func_1(Struct_3(_wgslsmith_f_op_f32(1f + -1000f)), Struct_2(true, Struct_1(true)), u_input.b.x, true);
    var_0 = all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, all(vec3<bool>(true, true, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    var var_2 = Struct_2(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-2302f)), -176f, true)) >= _wgslsmith_f_op_f32(select(-251f, -932f, true)), all(vec4<bool>(true, true, true, true)), func_2().b.a), Struct_1(any(vec4<bool>(true, true, false, false)) == all(vec3<bool>(true, false, true))));
    var_2 = func_2();
    var var_3 = var_2.b;
    var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1408f))), _wgslsmith_f_op_f32(-1010f - 1497f)));
}

