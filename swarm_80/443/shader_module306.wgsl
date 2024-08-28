struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(551f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2019f))) * _wgslsmith_f_op_f32(-858f * _wgslsmith_f_op_f32(f32(-1f) * -1277f)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<i32>) -> u32 {
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(1u, u_input.a.x), _wgslsmith_sub_u32(u_input.a.x ^ 0u, 33450u), u_input.a.x) | u_input.a.wzy;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1612f, 909f, -1742f, -436f))))));
    return _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, 4294967295u), reverseBits(var_0.x), 1u, _wgslsmith_mod_u32(4294967295u, var_0.x)), abs(max(vec4<u32>(130923u, 54931u, u_input.a.x, 4294967295u), vec4<u32>(0u, u_input.a.x, u_input.a.x, var_0.x)))), select(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, var_0.x, 4294967295u), ~vec4<u32>(var_0.x, var_0.x, u_input.a.x, var_0.x), u_input.a)), vec4<u32>(var_0.x, 1u, _wgslsmith_mult_u32(92479u, _wgslsmith_mod_u32(6174u, 41703u)), u_input.a.x), true | !any(vec4<bool>(true, false, arg_2.b.x, true))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(-reverseBits(u_input.b), u_input.b), -2147483647i, min(u_input.b, min(41854i, u_input.b)));
    let var_1 = Struct_4(var_0.x);
    let var_2 = Struct_4(-_wgslsmith_mult_i32(reverseBits(var_0.x), abs(0i)));
    var var_3 = vec3<u32>(_wgslsmith_add_u32(~u_input.a.x & u_input.a.x, func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(220f, 1000f) + vec2<f32>(531f, -1386f)) + vec2<f32>(-778f, -943f)), Struct_2(_wgslsmith_f_op_f32(-107f - 1393f), vec3<bool>(true, true, true)), Struct_2(_wgslsmith_f_op_f32(func_3()), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), ~select(vec4<i32>(-2147483647i, u_input.b, -2147483647i, 1i), vec4<i32>(var_1.a, -2147483647i, var_2.a, var_0.x), true))), ~u_input.a.x, 74331u);
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(953f, 832f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-729f + 797f) - _wgslsmith_f_op_f32(trunc(480f)))), _wgslsmith_f_op_f32(max(-706f, _wgslsmith_f_op_f32(f32(-1f) * -175f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-438f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1076f + -1044f) - 897f))))));
    return Struct_1(var_3.x, countOneBits(~u_input.a.xxz), -abs(abs(select(2147483647i, -6948i, true))), var_0.x);
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    let var_0 = func_2();
    var var_1 = func_2();
    let var_2 = Struct_3(arg_0);
    var var_3 = 26120u;
    var_3 = var_0.b.x >> (_wgslsmith_mod_u32(var_1.a, _wgslsmith_dot_vec4_u32(select(u_input.a, u_input.a, arg_0.b.x), u_input.a)) % 32u);
    return Struct_4(-u_input.b);
}

fn func_5(arg_0: Struct_4) -> StorageBuffer {
    var var_0 = _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_add_u32(108052u, 83457u) << (~u_input.a.x % 32u));
    let var_1 = Struct_1(~_wgslsmith_div_u32(57290u, u_input.a.x & (u_input.a.x ^ 4294967295u)), firstTrailingBit(min(~(~u_input.a.wzz), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 29427u, 0u), u_input.a.xwy))), -2147483647i, _wgslsmith_div_i32(func_1(Struct_2(519f, vec3<bool>(true, true, true))).a >> (u_input.a.x % 32u), ~_wgslsmith_sub_i32(0i, arg_0.a ^ arg_0.a)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -610f), -358f, any(vec2<bool>(true, true))))), vec3<bool>(true, false, false));
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(max(_wgslsmith_add_i32(-1i, var_1.d), _wgslsmith_mult_i32(-2490i, 2072i)), var_1.c, -u_input.b, arg_0.a) >> (vec4<u32>(4294967295u, _wgslsmith_mod_u32(~48478u, ~var_1.b.x), max(var_1.a, _wgslsmith_clamp_u32(1u, var_1.b.x, u_input.a.x)), _wgslsmith_dot_vec4_u32(max(u_input.a, vec4<u32>(var_1.b.x, var_1.b.x, u_input.a.x, var_1.b.x)), vec4<u32>(1u, 1u, 17998u, 95447u))) % vec4<u32>(32u)), ~firstTrailingBit(select(vec4<i32>(2425i, -34703i, 71587i, arg_0.a), vec4<i32>(15043i, var_1.c, arg_0.a, -2147483647i), var_2.b.x) >> (vec4<u32>(u_input.a.x, 36886u, 19181u, 1u) % vec4<u32>(32u))));
    return StorageBuffer(countOneBits(~(-var_1.d) << (~26485u % 32u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(arg_0.a, -1174i, -2147483647i, -1i), vec4<i32>(~u_input.b, max(98178i, 11099i), arg_0.a, -var_3.x)), ~abs(max(vec4<i32>(u_input.b, arg_0.a, -15645i, u_input.b), vec4<i32>(var_1.d, 2147483647i, 10446i, 1i))), (vec4<i32>(2147483647i, arg_0.a, 2147483647i, u_input.b) & abs(vec4<i32>(var_3.x, 33117i, -1i, var_3.x))) << (vec4<u32>(func_4(vec2<f32>(var_2.a, 337f), Struct_2(var_2.a, var_2.b), Struct_2(1055f, vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x)), vec4<i32>(2147483647i, -2147483647i, 35799i, var_1.d)), ~0u, countOneBits(var_1.b.x), 1u) % vec4<u32>(32u))), 1u, 896f, (firstLeadingBit(~var_1.b.yy) << (max(_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_1.b.x), vec2<u32>(u_input.a.x, u_input.a.x)), reverseBits(vec2<u32>(1u, var_1.b.x))) % vec2<u32>(32u))) ^ func_2().b.zy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec3<u32>(43462u, u_input.a.x, 0u) >> (u_input.a.yxz % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = func_5(func_1(Struct_2(1304f, vec3<bool>(any(vec4<bool>(true, false, true, true)), true, all(vec2<bool>(false, true))))));
}

