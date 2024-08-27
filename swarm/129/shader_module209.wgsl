struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<u32>) -> bool {
    var var_0 = Struct_1(2581f);
    var_0 = Struct_1(417f);
    var var_1 = arg_0;
    var var_2 = select((~vec2<u32>(arg_1, arg_1) << (vec2<u32>(~77308u, 11259u) % vec2<u32>(32u))) ^ ~(~(~vec2<u32>(3235u, arg_1))), arg_3 << (~(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), arg_3) | (vec2<u32>(arg_1, u_input.a) & arg_3)) % vec2<u32>(32u)), select(arg_2.x, !arg_2.x, true) | false);
    return arg_2.x;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> vec3<bool> {
    let var_0 = vec4<bool>(arg_2, func_3(arg_1, ~(~35076u), select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, true), select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, arg_2), arg_2)), vec2<u32>(~55015u, 90458u)) | arg_2, arg_2, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)) < _wgslsmith_f_op_f32(min(arg_1.a, _wgslsmith_f_op_f32(max(arg_1.a, arg_1.a))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1095f, arg_3.x, arg_3.x), arg_3.yyz))) - _wgslsmith_f_op_vec3_f32(floor(arg_3.yzx)));
    var var_2 = firstLeadingBit(-32771i);
    var_2 = abs(-1i);
    var_2 = 2147483647i;
    return var_0.zyx;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec2<i32> {
    var var_0 = false;
    var_0 = true;
    let var_1 = u_input.a | u_input.a;
    let var_2 = arg_2;
    var var_3 = select(!vec3<bool>(!any(vec3<bool>(false, true, false)), arg_2 <= -27209i, all(vec2<bool>(true, true))), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(true, false)), true, true)), !select(!func_2(1u, Struct_1(arg_0.a), false, vec4<f32>(arg_0.a, arg_1.a, arg_0.a, 700f)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))));
    return _wgslsmith_add_vec2_i32(~vec2<i32>(-24413i, var_2), select(vec2<i32>(var_2 << (4294967295u % 32u), _wgslsmith_sub_i32(1i, ~arg_2)), _wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(arg_2), select(72206i, arg_2, var_3.x)), firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(var_2, var_2)))), !(!var_3.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-65370i, 51036i) & func_1(Struct_1(-371f), Struct_1(1000f), -2147483647i), -(vec2<i32>(-1i, -1i) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))))));
    let var_1 = !all(!select(func_2(0u, Struct_1(179f), false, vec4<f32>(699f, -651f, 1584f, 1000f)), vec3<bool>(true, false, true), true));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(742f, _wgslsmith_f_op_f32(sign(-1009f)))))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(select(var_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(-var_2.a)), true)));
    let var_3 = any(vec4<bool>(var_1, true, var_1, all(!(!vec3<bool>(var_1, var_1, true)))));
    var_2 = Struct_1(var_2.a);
    let var_4 = select(select(!select(vec4<bool>(true, var_3, var_1, var_3), select(vec4<bool>(var_3, var_3, true, false), vec4<bool>(var_3, var_3, var_3, var_1), var_3), !vec4<bool>(var_3, false, false, var_3)), vec4<bool>(var_3, any(!vec3<bool>(false, var_1, var_3)), any(vec4<bool>(false, var_3, false, true)) | all(vec3<bool>(false, var_3, var_3)), !any(vec4<bool>(true, false, false, var_1))), select(select(!vec4<bool>(true, var_3, true, var_3), !vec4<bool>(var_1, false, var_1, false), false), select(!vec4<bool>(var_1, var_1, false, var_1), select(vec4<bool>(var_1, var_1, false, true), vec4<bool>(true, var_3, true, var_3), vec4<bool>(false, var_1, true, var_1)), var_0.x < var_0.x), select(select(vec4<bool>(true, true, var_3, false), vec4<bool>(var_1, var_3, false, var_3), var_1), select(vec4<bool>(var_1, var_3, true, var_1), vec4<bool>(true, var_1, var_3, false), true), vec4<bool>(true, var_3, var_3, var_3)))), vec4<bool>(var_3, all(vec2<bool>(true, var_3)), true, all(select(select(vec3<bool>(var_3, var_3, false), vec3<bool>(true, true, var_1), vec3<bool>(var_1, false, var_1)), vec3<bool>(true, var_3, false), func_2(61561u, Struct_1(-649f), false, vec4<f32>(var_2.a, -698f, 576f, 192f))))), var_3);
    var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_2.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(42295u, 1u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 1u))), ~(~(~vec3<u32>(1u, u_input.a, 9460u)))), reverseBits(~abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -1i, var_0.x, 0i), vec4<i32>(-69137i, var_0.x, -26667i, -2147483647i)))), 672f, 44331i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(299f, 1000f, 434f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(404f, var_2.a, 187f), vec3<f32>(-1000f, var_2.a, -827f), false))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, var_2.a, -188f)))))));
}

