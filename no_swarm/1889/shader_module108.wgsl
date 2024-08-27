struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    let var_0 = u_input.a;
    let var_1 = arg_2;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -776f), var_1.a, var_1.a);
    let var_3 = 1u;
    let var_4 = arg_2;
    return false;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-1279f - 1680f);
    let var_1 = Struct_1(arg_0.a);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1.a));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0, -557f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_2.a, var_1.a)), _wgslsmith_f_op_f32(round(arg_0.a)), _wgslsmith_f_op_f32(arg_0.a + -935f)))));
    let var_4 = vec4<i32>(_wgslsmith_mult_i32(-34783i, abs(countOneBits(u_input.a))), ~(reverseBits(u_input.a) | u_input.a), _wgslsmith_mod_i32(28900i, ~2147483647i | _wgslsmith_sub_i32(u_input.a, 17634i)), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, u_input.a, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(1i, -15269i, u_input.a), vec3<i32>(-2147483647i, u_input.a, u_input.a)))) << ((~u_input.d >> (~vec4<u32>(1u, 22583u, firstTrailingBit(u_input.b), u_input.d.x) % vec4<u32>(32u))) % vec4<u32>(32u));
    return var_1;
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = func_3(arg_0, select(vec4<bool>(!func_2(13871i, vec4<i32>(-2107i, -2147483647i, u_input.a, -44041i), Struct_1(arg_0.a)), true, any(vec4<bool>(true, true, true, true)), select(true, true, func_2(u_input.a, vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), Struct_1(arg_0.a)))), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true)), !vec4<bool>(77891i == u_input.a, true, true, false)));
    var_0 = arg_0;
    var var_1 = 5684u;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1055f - -739f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-130f + arg_0.a) - 1225f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-func_3(Struct_1(861f), vec4<bool>(true, false, true, false)).a))), arg_0.a) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1095f, _wgslsmith_div_f32(arg_0.a, var_0.a), arg_0.a))));
    return -(i32(-1i) * -91552i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_add_i32(max(-(-43114i << (u_input.c % 32u)), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, -37623i, -1i)), ~vec3<i32>(-36017i, 2147483647i, u_input.a))), u_input.a), ~(-_wgslsmith_sub_i32(-22405i, func_1(Struct_1(-370f)))));
    var_0 = reverseBits(i32(-1i) * -u_input.a);
    let var_1 = 4294967295u;
    var var_2 = func_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(145f, 164f) - 566f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1312f + -921f))))), !select(vec4<bool>(true, all(vec2<bool>(true, false)), any(vec3<bool>(true, false, true)), all(vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), var_1 > var_1), all(vec3<bool>(true, true, false))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1224f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-select(u_input.a, 0i, false));
}

