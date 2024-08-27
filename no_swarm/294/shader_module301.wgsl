struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = -2147483647i;
    var var_1 = arg_0;
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-781f, 964f) * -370f));
    let var_2 = Struct_1(arg_0.a);
    var var_3 = ~vec2<u32>(~firstLeadingBit(~0u), ~0u);
    return var_3.x;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(167f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1039f)) - -1244f))))));
    let var_1 = Struct_1(-479f);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-2101f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f) - -1141f))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * _wgslsmith_f_op_f32(sign(var_1.a))))));
    var_3 = Struct_1(-1140f);
    return vec3<bool>(!any(vec4<bool>(true, true, true, true)), !select(all(vec3<bool>(false, true, false)) || true, arg_1.x < firstLeadingBit(arg_1.x), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), true);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = select(~_wgslsmith_mod_u32(18577u, ~19790u), 1u, false) > firstLeadingBit(1u);
    var var_1 = Struct_1(1379f);
    var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-829f - arg_0.a), arg_0.a))), -930f)));
    var_0 = all(select(vec3<bool>(false, any(vec2<bool>(false, false)), false), func_4(func_3(Struct_1(-2983f), u_input.a, arg_1), max(vec3<i32>(5931i, 1i, u_input.a) & vec3<i32>(u_input.a, u_input.a, u_input.a), firstTrailingBit(vec3<i32>(u_input.a, 0i, 36136i)))), select(vec3<bool>(select(true, true, true), false, true), vec3<bool>(true, true, all(vec2<bool>(false, false))), vec3<bool>(true, true, true))));
    var var_2 = 4294967295u;
    return ~(-vec4<i32>(u_input.a, u_input.a, firstTrailingBit(-76361i), max(-2147483647i, 1i))) & vec4<i32>(abs(firstTrailingBit(~u_input.a)), 1i, u_input.a, 19494i);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> i32 {
    return _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(57616i, -13225i, u_input.a, u_input.a)), ~vec4<i32>(u_input.a, -1i, u_input.a, 77660i)) ^ (func_2(Struct_1(144f), Struct_1(-1000f)) >> (firstLeadingBit(vec4<u32>(0u, 29621u, 42012u, 1u)) % vec4<u32>(32u))), ~(vec4<i32>(_wgslsmith_div_i32(-47268i, u_input.a), u_input.a, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))) & countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))));
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<bool>) -> i32 {
    var var_0 = select(vec4<bool>(select(arg_2.x, all(vec3<bool>(arg_2.x, true, true)), true) | arg_2.x, arg_2.x, false, true), select(!(!select(vec4<bool>(arg_2.x, false, false, false), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), true)), vec4<bool>(arg_2.x, all(!arg_2), any(vec3<bool>(true, true, false)), true), select(vec4<bool>(true, true, arg_2.x, !arg_2.x), select(!vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, false, true), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false)), !(!vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x)))), !(!vec4<bool>(true, false, arg_2.x, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-899f + _wgslsmith_f_op_f32(f32(-1f) * -289f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-722f)))))));
    var var_2 = vec4<bool>(var_1.x == -1921f, !arg_2.x, false, arg_2.x);
    var var_3 = min(-(~vec3<i32>(-7727i ^ u_input.a, arg_1.x, 0i)), vec3<i32>(70735i, u_input.a, arg_0));
    var var_4 = ~vec3<i32>(func_1(Struct_1(-1230f), var_1.x, Struct_1(var_1.x)), -_wgslsmith_div_i32(-2147483647i, 18126i), -1i);
    return min(var_4.x, -countOneBits(i32(-1i) * -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var var_1 = -820f;
    let var_2 = max(func_5(firstTrailingBit(-(~(-16340i))), select(vec3<i32>(func_1(Struct_1(-496f), -878f, Struct_1(-384f)), u_input.a & 9319i, -u_input.a), vec3<i32>(u_input.a, ~12683i, func_1(Struct_1(-1086f), -1368f, Struct_1(-1258f))), true), vec2<bool>(false, func_4(66799u, _wgslsmith_div_vec3_i32(vec3<i32>(-12119i, u_input.a, 0i), vec3<i32>(0i, 10986i, u_input.a))).x)), -27970i);
    var_0 = var_2;
    let var_3 = Struct_1(291f);
    var_0 = -1i;
    var_1 = _wgslsmith_f_op_f32(trunc(var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(min(func_3(Struct_1(-1051f), -firstTrailingBit(19130i), Struct_1(_wgslsmith_f_op_f32(min(var_3.a, 870f)))), 1u), select(vec2<u32>(abs(35208u), 90572u), vec2<u32>(~(~68111u), 1u), vec2<bool>(true, true)));
}

