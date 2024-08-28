struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = true;
    var var_1 = false;
    return arg_1;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = (max(arg_0.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(-37474i, 0i, 1i), max(vec3<i32>(arg_0.x, arg_2, 2147483647i), vec3<i32>(u_input.a, -26623i, -2147483647i)))) << (select(~1u, 4294967295u, all(vec2<bool>(false, true)) | false) % 32u)) >> (~35940u % 32u);
    var_0 = arg_2;
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = arg_1.a;
    return func_2(true, Struct_1(var_2));
}

fn func_3() -> Struct_1 {
    var var_0 = Struct_1(57834u);
    var_0 = Struct_1(_wgslsmith_dot_vec2_u32(select(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(var_0.a, 1u), vec2<u32>(0u, var_0.a)), ~(~vec2<u32>(0u, 0u)), !(var_0.a < 4494u)), firstTrailingBit(vec2<u32>(var_0.a << (var_0.a % 32u), ~var_0.a))));
    let var_1 = all(select(vec4<bool>(any(vec4<bool>(false, true, false, false)) & false, all(vec2<bool>(false, false)), false, all(vec4<bool>(false, true, true, false))), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(all(vec2<bool>(false, false)), true, any(vec4<bool>(false, false, false, false)), false), true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    let var_2 = Struct_1(var_0.a);
    var_0 = Struct_1(~var_2.a);
    return func_2(var_1, Struct_1(firstTrailingBit(var_2.a)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec4<bool> {
    return select(vec4<bool>(true, true, true, true), vec4<bool>(!select(any(vec4<bool>(false, true, false, true)), 496f < arg_1.x, true), false, any(vec2<bool>(true, true)), !(_wgslsmith_sub_i32(u_input.a, u_input.a) == -2147483647i)), !(!vec4<bool>(arg_1.x != arg_1.x, true, arg_2.a >= arg_0.a, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~(vec2<i32>(-1i) * -max(vec2<i32>(56761i, u_input.a), vec2<i32>(5924i, u_input.a))));
    var var_1 = -2147483647i;
    var_1 = ~u_input.a;
    var var_2 = func_1(vec4<i32>(~select(firstTrailingBit(u_input.a), var_0.x, true), -38085i, u_input.a, firstTrailingBit(_wgslsmith_dot_vec2_i32(-var_0, -vec2<i32>(-2147483647i, 0i)))), Struct_1(~(~abs(34437u))), _wgslsmith_div_i32(1i, var_0.x));
    var var_3 = !(!func_4(func_3(), vec4<f32>(1f, 1f, 1f, 1f), Struct_1(var_2.a ^ var_2.a)));
    var_3 = vec4<bool>(0u >= var_2.a, abs(var_2.a) == ~4294967295u, true && func_4(func_1(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 0i, var_0.x, 43694i), vec4<i32>(-1i, u_input.a, 1i, var_0.x)), Struct_1(var_2.a), -2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, 522f, 485f)) + _wgslsmith_div_vec4_f32(vec4<f32>(821f, -860f, -351f, -555f), vec4<f32>(1084f, 2113f, 169f, 710f))), Struct_1(var_2.a & 66799u)).x, all(vec2<bool>(false, any(var_3.yyw))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~var_2.a, ~var_2.a ^ 1u));
}

