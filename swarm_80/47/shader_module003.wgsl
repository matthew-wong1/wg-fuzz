struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(259u, 97548u, 1u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>) -> f32 {
    var var_0 = vec2<bool>(all(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false))), true);
    global0 = Struct_1(u_input.a);
    var var_1 = true;
    let var_2 = -1i;
    var_0 = vec2<bool>(!var_0.x, false);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(928f)), -1063f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -165f))), 1420f, true)) - 721f);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1119f, arg_0.a.x, false)))) - 1403f)) + arg_0.a.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.a.xz);
    let var_2 = ~vec4<i32>(~0i, select(arg_1.x, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(11149i, arg_1.x, arg_1.x)), ~arg_1.zwz), any(vec2<bool>(false, false))), 2147483647i, 16353i);
    var var_3 = Struct_1(reverseBits(u_input.a));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x));
    return arg_0.a;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_3(vec3<f32>(arg_0, 499f, 1559f)), select(vec4<i32>(0i, 0i, -72253i, 1i), vec4<i32>(-2147483647i, -2147483647i, -6735i, 34638i), vec4<bool>(false, false, false, true)), Struct_1(vec3<u32>(4294967295u, 62057u, u_input.a.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-1829f + -563f), _wgslsmith_f_op_f32(1199f - _wgslsmith_div_f32(661f, arg_0))))));
    var var_1 = _wgslsmith_f_op_f32(func_1(Struct_1(~select(global0.a, ~vec3<u32>(global0.a.x, 1u, global0.a.x), vec3<bool>(true, true, true))), 2147483647i, vec2<i32>(~(i32(-1i) * -1i), _wgslsmith_div_i32(1i, _wgslsmith_div_i32(reverseBits(-18618i), _wgslsmith_div_i32(-2147483647i, -10432i))))));
    let var_2 = 0u;
    global0 = Struct_1(u_input.a);
    var var_3 = u_input.a.yz;
    return _wgslsmith_div_f32(1065f, _wgslsmith_f_op_f32(func_1(Struct_1(global0.a), _wgslsmith_sub_i32(2147483647i, 1i), vec2<i32>(firstTrailingBit(-1i), -45523i) << (global0.a.yy % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = !any(!vec4<bool>(any(vec2<bool>(true, true)), true, any(vec4<bool>(false, false, true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(min(2147483647i << (0u % 32u), -1i)), vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(func_1(Struct_1(u_input.a), _wgslsmith_add_i32(1i, -2147483647i), vec2<i32>(1i, 1i))))), _wgslsmith_f_op_f32(387f * -844f), _wgslsmith_div_f32(-508f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(205f + 262f)))));
}

