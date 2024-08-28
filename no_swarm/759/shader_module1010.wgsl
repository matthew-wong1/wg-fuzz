struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = arg_0;
    var var_1 = -_wgslsmith_add_i32(reverseBits(global0.x & 1i) ^ 1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 40469i, global0.x), vec4<i32>(861i, var_0.a.x, -8621i, 1i)) & var_0.a.x);
    var var_2 = true;
    let var_3 = any(!vec2<bool>(false, all(vec4<bool>(false, true, true, true))));
    global0 = ~(~(~(abs(vec4<i32>(var_0.a.x, global0.x, arg_0.a.x, -1i)) | abs(vec4<i32>(-1i, var_0.a.x, arg_0.a.x, -40144i)))));
    return !(!select(vec2<bool>(true, true), !(!vec2<bool>(false, var_3)), var_3 && true));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: bool) -> vec2<bool> {
    var var_0 = Struct_1(global0.xxw & global0.yxx);
    var_0 = Struct_1(vec3<i32>(i32(-1i) * -arg_0.x, ~arg_0.x, firstLeadingBit(~global0.x) ^ _wgslsmith_div_i32(6035i, -35290i)));
    var var_1 = Struct_1(arg_0.zxx);
    var var_2 = Struct_1(vec3<i32>(-2147483647i, arg_0.x, ~(-countOneBits(-2147483647i))));
    let var_3 = arg_1.xy;
    return vec2<bool>(true, any(!select(select(vec4<bool>(arg_1.x, arg_2, true, arg_2), vec4<bool>(arg_2, true, var_3.x, false), arg_1.x), !vec4<bool>(arg_2, var_3.x, true, true), select(vec4<bool>(true, arg_2, true, false), vec4<bool>(true, arg_2, false, true), vec4<bool>(var_3.x, false, true, false)))));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_add_vec3_i32(abs(-global0.wzy) << (reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 147u)) % vec3<u32>(32u)), vec3<i32>(global0.x, arg_0, -_wgslsmith_add_i32(global0.x, -1i))));
    global0 = ~vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -1i, -1i, -1i), vec4<i32>(21883i, global0.x, -1i, var_0.a.x)) ^ _wgslsmith_sub_i32(-9549i, -9562i)), var_0.a.x, max(-61021i, arg_0) << (u_input.a.x % 32u), global0.x);
    global0 = abs(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, _wgslsmith_clamp_i32(global0.x, -44328i, 22956i), ~54226i, 1i), (vec4<i32>(0i, arg_0, var_0.a.x, var_0.a.x) | vec4<i32>(48991i, 196i, 7688i, -67763i)) | vec4<i32>(0i, arg_0, global0.x, arg_0))));
    return 11994u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(vec2<bool>(true, true), select(func_1(Struct_1(vec3<i32>(-3976i, 0i, -2147483647i))), vec2<bool>(true, true), func_1(Struct_1(vec3<i32>(global0.x, global0.x, global0.x)))), select(func_2(vec4<i32>(58421i, global0.x, -2147483647i, -37011i), vec3<bool>(true, false, false), true), vec2<bool>(true, true), all(vec4<bool>(true, false, true, false))))) || true;
    let var_1 = Struct_1(~(-global0.xwz));
    let var_2 = countOneBits(global0.x);
    let var_3 = 46795u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(715f + -254f)))), vec4<u32>(~67869u, func_3(75659i), 1u, firstLeadingBit(reverseBits(u_input.a.x)) ^ 1u));
}

