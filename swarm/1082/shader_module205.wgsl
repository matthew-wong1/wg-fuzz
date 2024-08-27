struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = firstTrailingBit(u_input.b);
    let var_1 = Struct_4(116704u >> (firstTrailingBit(~1u) % 32u), vec3<u32>(firstLeadingBit(~_wgslsmith_mult_u32(0u, 1u)), 4294967295u, 0u), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1029f), _wgslsmith_div_f32(1793f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1402f)), _wgslsmith_f_op_f32(-1086f - -499f), true)))));
    let var_2 = u_input.c.zz << (~vec2<u32>(4294967295u, ~var_1.b.x) % vec2<u32>(32u));
    let var_3 = Struct_1(~vec2<i32>(_wgslsmith_mod_i32(-var_2.x, countOneBits(var_0)), 1i));
    let var_4 = !vec3<bool>(true, !(!(var_0 == 0i)), !(true == all(vec4<bool>(true, true, true, false))));
    return 32038u;
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_4(~8874u, vec3<u32>(~max(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 18675u, 0u, 40126u), vec4<u32>(4294967295u, 1u, 24846u, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(38645u, 4294967295u, 4294967295u))), 24094u, abs(~15194u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-259f, _wgslsmith_f_op_f32(-1068f - _wgslsmith_f_op_f32(f32(-1f) * -1433f))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2362f)), 1233f)));
    var var_1 = vec4<bool>(!(func_3() <= _wgslsmith_sub_u32(var_0.b.x << (39594u % 32u), 1u)), select(arg_0.x != arg_0.x, any(vec2<bool>(true, any(vec3<bool>(false, arg_0.x, false)))), !any(arg_0.xx)), true, any(select(!arg_0, arg_0, !arg_0)));
    var_1 = vec4<bool>(true, true, !var_1.x, true);
    var_1 = select(!vec4<bool>(all(vec3<bool>(var_1.x, true, false)), _wgslsmith_f_op_f32(round(582f)) <= _wgslsmith_f_op_f32(1588f - var_0.c.x), false, !var_1.x), !(!select(!vec4<bool>(false, var_1.x, var_1.x, arg_0.x), select(vec4<bool>(arg_0.x, var_1.x, true, var_1.x), vec4<bool>(arg_0.x, var_1.x, arg_0.x, arg_0.x), var_1.x), false)), !(_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(var_0.a, var_0.a)) != var_0.b.x));
    var var_2 = countOneBits(u_input.c);
    return Struct_2(var_0.c.x, Struct_1(var_2.xz), var_1.xwz, reverseBits(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.x, u_input.c.x), u_input.c.zx & vec2<i32>(u_input.c.x, -2430i)))));
}

fn func_4(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(1000f - arg_0.a), _wgslsmith_f_op_f32(min(-1912f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a))))))), 1578f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, arg_0.c.x)).a - func_2(vec3<bool>(true, false, true)).a))))));
    let var_1 = Struct_3(func_2(select(arg_0.c, vec3<bool>(arg_0.c.x, 470f < var_0.x, arg_0.c.x), !(!vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x)))), vec2<bool>(all(func_2(func_2(vec3<bool>(true, false, arg_0.c.x)).c).c.xz), !func_2(arg_0.c).c.x));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.x, 852f), _wgslsmith_f_op_f32(-1000f * -1000f), var_1.a.a, -915f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(576f, var_1.a.a, 342f, 461f) - vec4<f32>(-2061f, 137f, var_1.a.a, arg_0.a)) + _wgslsmith_div_vec4_f32(vec4<f32>(283f, var_1.a.a, -848f, var_1.a.a), vec4<f32>(var_1.a.a, var_0.x, -2124f, var_0.x)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(var_1.a.a, -1281f)), -617f, 1103f, -892f))))) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.a), -2454f, -1000f, _wgslsmith_f_op_f32(sign(-569f))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(1348f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1807f + var_0.x), -369f, false)))), _wgslsmith_f_op_f32(var_1.a.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) + 1293f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-276f, _wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_f_op_f32(304f - var_1.a.a))) - -1172f), _wgslsmith_f_op_f32(-818f + 248f));
    let var_2 = !vec3<bool>(arg_0.c.x, true, true);
    return vec3<f32>(_wgslsmith_f_op_f32(-241f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-733f, var_1.a.a)))) + arg_0.a)), 831f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))))));
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    let var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_2(vec3<bool>(true, true, false)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-827f, -564f, -979f) - vec3<f32>(-715f, -279f, -659f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(805f, 841f, 1076f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1716f, 1121f, -990f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(350f, -925f, 1017f)), func_2(vec3<bool>(true, false, true)).c)), vec3<bool>(true, true, true)))));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 1335f, -776f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -315f, var_1.x)))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(2122f, Struct_1(vec2<i32>(21190i, 2147483647i)), vec3<bool>(true, false, true), vec2<i32>(0i, u_input.a)))).x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1463f, -225f) * func_2(vec3<bool>(true, true, false)).a), var_1.x))));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(max(func_2(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))).a, 941f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(775f, var_1.x, var_1.x))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1083f, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, 858f), vec3<f32>(2330f, var_1.x, 871f)))), false)));
    var var_2 = _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(func_2(!func_2(vec3<bool>(false, false, false)).c).a + _wgslsmith_f_op_f32(min(var_1.x, -1000f))));
    return StorageBuffer(-559f, vec3<i32>(_wgslsmith_clamp_i32(~1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 32514u), vec2<u32>(arg_0.x, 1u)) % 32u), abs(func_2(vec3<bool>(true, true, false)).d.x), max(u_input.c.x ^ u_input.b, u_input.a << (60010u % 32u))), u_input.c.x, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(abs(~vec3<u32>(_wgslsmith_mult_u32(1u, 0u), abs(4294967295u), ~0u)));
}

