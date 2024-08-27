struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1209f + 599f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -807f))), _wgslsmith_f_op_f32(719f + arg_0.x), true)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1614f * _wgslsmith_f_op_f32(trunc(arg_0.x))));
    let var_1 = Struct_1(false, 1f);
    let var_2 = vec3<bool>(true, true, -181f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)));
    var_0 = false;
    var var_3 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1633f))));
    return !var_2;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> bool {
    let var_0 = Struct_1(all(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, -1668f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - -1549f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - _wgslsmith_f_op_f32(-arg_0.b))), false)));
    var var_1 = var_0;
    var var_2 = var_0;
    var_2 = var_0;
    var_2 = Struct_1(any(select(func_3(vec2<f32>(arg_0.b, var_0.b)), !(!vec3<bool>(var_1.a, false, var_0.a)), !(!arg_0.a))), _wgslsmith_f_op_f32(floor(485f)));
    return !(!(var_1.b < _wgslsmith_f_op_f32(-var_1.b)) | true);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = 1i;
    let var_1 = Struct_1(_wgslsmith_mult_u32(0u, 0u) != u_input.a.x, 858f);
    var_0 = _wgslsmith_div_i32(-arg_0, arg_0 | 1i);
    let var_2 = !vec3<bool>(true, func_2(arg_3, arg_2.x, true), any(vec3<bool>(any(vec4<bool>(true, arg_3.a, var_1.a, var_1.a)), !arg_3.a, !arg_3.a)));
    let var_3 = _wgslsmith_sub_u32(~u_input.a.x, abs(~u_input.b));
    return 7266u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = ~(firstTrailingBit(vec2<u32>(arg_0.x >> (0u % 32u), ~arg_0.x)) >> (arg_0.wx % vec2<u32>(32u)));
    let var_1 = Struct_1(any(select(vec2<bool>(arg_1.a && false, arg_1.a), vec2<bool>(arg_1.a | arg_1.a, func_2(Struct_1(arg_1.a, arg_1.b), 2147483647i, arg_1.a)), vec2<bool>(false, true && arg_1.a))), _wgslsmith_f_op_f32(floor(668f)));
    var_0 = firstTrailingBit(_wgslsmith_div_vec2_u32(arg_0.xw, ~countOneBits(u_input.a.xz)));
    var_0 = _wgslsmith_sub_vec2_u32(u_input.a.yy & _wgslsmith_mult_vec2_u32(max(arg_0.wy >> (u_input.a.yz % vec2<u32>(32u)), vec2<u32>(4294967295u, 0u)), vec2<u32>(55937u >> (u_input.a.x % 32u), _wgslsmith_dot_vec4_u32(arg_0, arg_0))), vec2<u32>(35776u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, arg_0.x) << (arg_0.zyz % vec3<u32>(32u)), min(arg_0.zxx, u_input.a)), _wgslsmith_sub_vec3_u32(u_input.a, arg_0.wyz ^ vec3<u32>(arg_0.x, 1u, 22137u)))));
    var_0 = ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a.x), select(arg_0.zw, arg_0.xw, vec2<bool>(true, arg_1.a)), ~arg_0.zz)) >> (~vec2<u32>(_wgslsmith_sub_u32(abs(var_0.x), ~var_0.x), 4294967295u) % vec2<u32>(32u));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.a.x, 1u, ~63103u, 11815u);
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~(~(-17683i)), ~_wgslsmith_div_i32(1i, ~(-45242i)), firstLeadingBit(~1i)), countOneBits(_wgslsmith_sub_i32(-(~(-1308i)), -1i)));
    var var_2 = func_4(vec4<u32>(~(u_input.a.x | u_input.b) << (~func_1(-36583i, 38049u, vec4<i32>(-1i, -2147483647i, -2147483647i, 10573i), Struct_1(true, -1494f)) % 32u), ~_wgslsmith_mod_u32(u_input.b, u_input.b & 77839u), 1u, 48625u), Struct_1(!all(vec4<bool>(true, true, true, true)), -743f), ~_wgslsmith_div_i32(~1i, ~(1i >> (0u % 32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1599f)), -1276f))))));
    var var_3 = vec2<bool>(true, true);
    var_1 = 1i;
    var var_4 = 154f < var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x | var_0.x, firstLeadingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(19516i, -40207i, 18471i), vec3<i32>(1i, 1i, 1i))), select(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, 4294967295u, 39978u) << (vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(var_0.x, u_input.a.x, 17400u, 3146u))), ~firstLeadingBit(reverseBits(vec4<u32>(u_input.a.x, 1u, 6289u, 102771u))), select(!vec4<bool>(true, false, var_3.x, var_3.x), vec4<bool>(!var_2.a, true, true, var_2.a), var_2.a && func_4(vec4<u32>(4294967295u, var_0.x, 34750u, var_0.x), Struct_1(true, var_2.b), -2147483647i, var_2.b).a)));
}

