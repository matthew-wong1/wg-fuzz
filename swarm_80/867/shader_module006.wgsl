struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_1(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), ~vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 131356u, 29138u, 56170u), vec4<u32>(4294967295u, 1u, 77710u, 4946u)), 17428u, 0u), arg_0.x, -vec2<i32>(u_input.a & u_input.a, _wgslsmith_add_i32(-u_input.b, _wgslsmith_mult_i32(u_input.b, 1i))));
    var_0 = Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.x, var_0.b.x << (_wgslsmith_dot_vec3_u32(var_0.b, var_0.b) % 32u), max(_wgslsmith_dot_vec2_u32(vec2<u32>(26499u, var_0.a.x), vec2<u32>(95555u, 2249u)), firstLeadingBit(0u)), var_0.a.x), ~var_0.a, ~firstLeadingBit(var_0.a) ^ var_0.a), var_0.a.zwx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-363f)))), var_0.c), vec2<i32>(var_0.d.x, u_input.a));
    var var_1 = arg_0.x;
    var var_2 = countOneBits(firstLeadingBit(var_0.b.x));
    var_1 = arg_0.x;
    return -138f;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-1850f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-807f)))), _wgslsmith_f_op_f32(trunc(-1359f)))), 383f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(-2076f, arg_2.c, 849f)))) + _wgslsmith_f_op_f32(-arg_2.c)))));
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(abs(2147483647i), _wgslsmith_dot_vec2_i32(firstLeadingBit(select(vec2<i32>(2147483647i, 39209i), arg_0.xy, false)), vec2<i32>(firstLeadingBit(-1i), abs(arg_2.d.x)))), ~arg_0.xy);
    let var_2 = arg_2;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) * _wgslsmith_f_op_f32(614f - var_2.c)), 1692f, -741f)));
    var_1 = arg_2.d >> (vec2<u32>(10264u, countOneBits(28596u)) % vec2<u32>(32u));
    return _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(firstTrailingBit(58277u), ~(~arg_2.a.x), var_2.a.x, 36563u), var_2.a), _wgslsmith_sub_vec4_u32(var_2.a, reverseBits(vec4<u32>(0u, 4294967295u, arg_2.b.x, var_2.a.x) & var_2.a)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>) -> i32 {
    var var_0 = ~(~abs(~5173u)) >> (arg_0.x % 32u);
    var var_1 = arg_0.x;
    let var_2 = vec4<bool>(all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true), select(true, true, true))), all(vec4<bool>(true, true, true, true)), true, true && all(vec2<bool>(all(vec2<bool>(false, false)), all(vec2<bool>(false, false)))));
    var var_3 = Struct_1(arg_0, arg_0.ywx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1021f)), _wgslsmith_f_op_f32(-2015f * -1251f))))) + 1391f), countOneBits(vec2<i32>(~23995i, -(1i >> (arg_0.x % 32u)))));
    var_3 = Struct_1(~_wgslsmith_mult_vec4_u32(firstLeadingBit(select(vec4<u32>(52512u, 0u, var_3.b.x, 1u), arg_0, var_2.x)), arg_0), vec3<u32>(~firstTrailingBit(~arg_0.x), arg_0.x, arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1019f)), vec2<i32>(var_3.d.x, ~1i));
    return 2147483647i;
}

fn func_1() -> vec3<bool> {
    return select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), select(vec3<bool>(all(vec2<bool>(false, true)), true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false))), vec3<bool>(true, true, true)), !(true == any(vec2<bool>(true, true)))), vec3<bool>(func_4(func_2(vec3<i32>(1i, u_input.b, u_input.b), u_input.a, Struct_1(vec4<u32>(79338u, 4294967295u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 37252u), -1000f, vec2<i32>(1340i, u_input.a))), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, 43627i, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))) > _wgslsmith_mod_i32(-1i, 1i), !all(vec2<bool>(true, false)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))) || !(u_input.b < u_input.a)), vec3<bool>(all(vec2<bool>(false, true)), true, all(vec2<bool>(true, any(vec4<bool>(true, true, false, false))))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = arg_0.yx;
    let var_1 = vec4<u32>(~(~(select(28277u, 0u, true) << (arg_1.a.x % 32u))), ~(~_wgslsmith_sub_u32(~53370u, 37733u)), 35867u, func_2(vec3<i32>(-2147483647i, u_input.b, _wgslsmith_add_i32(u_input.b, -2147483647i)), arg_1.d.x, arg_1).x);
    var_0 = arg_0.zx;
    var var_2 = Struct_1(arg_1.a, vec3<u32>(var_1.x, ((0u ^ var_1.x) >> (~var_1.x % 32u)) << (_wgslsmith_add_u32(max(var_1.x, var_1.x), ~arg_1.b.x) % 32u), ~24868u), 719f, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(3516i, 2147483647i) | ~vec2<i32>(arg_1.d.x, arg_1.d.x), vec2<i32>(u_input.b << (0u % 32u), arg_1.d.x ^ -1i)), arg_1.d));
    var_0 = arg_0.zy;
    return -15510i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(firstLeadingBit(500i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(-1i, 3069i), vec2<i32>(-5248i, u_input.b), vec2<bool>(true, true)), vec2<i32>(u_input.a, 1i) >> (vec2<u32>(1u, 10643u) % vec2<u32>(32u))) & vec2<i32>(u_input.b, 1i), -select(vec2<i32>(680i, 13823i), vec2<i32>(-1i, -13016i), false) << (vec2<u32>(countOneBits(0u), 1u) % vec2<u32>(32u))), -(~_wgslsmith_sub_i32(52903i, u_input.b)));
    let var_1 = Struct_1(vec4<u32>(~42453u ^ _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 11736u, 4294967295u, 1u), vec4<bool>(true, true, true, true)), reverseBits(vec4<u32>(8764u, 1u, 33095u, 4294967295u))), abs(_wgslsmith_clamp_u32(11937u, 1u, _wgslsmith_add_u32(76890u, 26058u))), 59667u, _wgslsmith_div_u32(firstTrailingBit(60050u), 1u)), vec3<u32>(1u, 1u, 1u), -1532f, vec2<i32>(~(_wgslsmith_mult_i32(-52037i, var_0.x) | u_input.a), func_5(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true), func_1()), Struct_1(~vec4<u32>(63344u, 12124u, 1u, 14059u), ~vec3<u32>(1u, 46154u, 12797u), _wgslsmith_f_op_f32(round(-1071f)), vec2<i32>(-1i, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1688f), ~(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.b.x, var_1.b.x), _wgslsmith_sub_vec2_u32(var_1.a.wx, var_1.a.yz)) | 1u));
}

