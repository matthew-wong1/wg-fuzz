struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.b.x, 13983u, arg_1.b.x), vec3<u32>(1u, u_input.a, arg_1.b.x)) << (vec3<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(3731u, 1u, u_input.a, 4294967295u), vec4<u32>(12430u, arg_1.b.x, 35483u, 46436u)), ~25741u) % vec3<u32>(32u))), min(firstTrailingBit(vec3<u32>(arg_1.b.x, arg_1.b.x, arg_1.b.x)) | ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(arg_1.b.x, u_input.a, 49732u)), ((vec3<u32>(arg_1.b.x, arg_1.b.x, 9381u) >> (vec3<u32>(u_input.a, 3951u, u_input.a) % vec3<u32>(32u))) >> (vec3<u32>(66105u, 1u, 53461u) % vec3<u32>(32u))) >> (min(min(vec3<u32>(51148u, 39374u, u_input.a), vec3<u32>(0u, 50009u, 22887u)), vec3<u32>(arg_1.b.x, arg_1.b.x, 1u)) % vec3<u32>(32u))), ~(firstTrailingBit(vec3<u32>(1u, 4294967295u, u_input.a)) ^ (_wgslsmith_clamp_vec3_u32(vec3<u32>(10576u, 23337u, arg_1.b.x), vec3<u32>(50014u, 1u, arg_1.b.x), vec3<u32>(0u, 74189u, 1u)) & abs(vec3<u32>(45909u, 4294967295u, 22633u)))));
    let var_1 = arg_1;
    var var_2 = 12357i < (u_input.b.x | -2147483647i);
    let var_3 = arg_1;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(796f, _wgslsmith_div_f32(973f, _wgslsmith_f_op_f32(min(661f, -753f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-806f, -214f) + _wgslsmith_f_op_f32(select(1090f, -1232f, arg_0.x))) + -325f), all(select(arg_0, select(vec2<bool>(false, true), vec2<bool>(arg_1.a.x, var_3.a.x), arg_1.a.yz), false))))));
}

fn func_2() -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_3(select(vec2<bool>(true, any(vec2<bool>(true, false))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), true), !(33042u >= u_input.a)), Struct_2(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(4294967295u, 1u))))), -1194f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1800f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -755f) - 1f))));
    let var_1 = !vec3<bool>(true, false, all(vec3<bool>(true, select(true, true, false), true)));
    var var_2 = firstTrailingBit(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(0u | u_input.a, _wgslsmith_mult_u32(0u, u_input.a)), select(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u), !var_1.x))));
    var var_3 = Struct_2(!(!var_1), _wgslsmith_sub_vec2_u32(countOneBits(select(vec2<u32>(38687u, var_2.x), vec2<u32>(var_2.x, var_2.x), true) << (vec2<u32>(33152u, 1u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(4294967295u, var_2.x) & vec2<u32>(var_2.x, 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, u_input.a)))));
    var var_4 = Struct_1(_wgslsmith_add_i32(u_input.b.x, _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -40279i), vec2<i32>(u_input.b.x, u_input.b.x)), u_input.b.x)), countOneBits(firstLeadingBit(vec4<i32>(~0i, -1i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x), ~(-46956i)))));
    return all(var_3.a.zy);
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = Struct_2(!vec3<bool>(false, func_2(), true), ~reverseBits(~vec2<u32>(u_input.a, 0u) >> (_wgslsmith_div_vec2_u32(vec2<u32>(26259u, 4294967295u), vec2<u32>(u_input.a, 67392u)) % vec2<u32>(32u))));
    var var_1 = select(vec4<bool>(any(select(vec4<bool>(true, var_0.a.x, false, var_0.a.x), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, false, var_0.a.x, var_0.a.x), true), select(vec4<bool>(var_0.a.x, true, true, true), vec4<bool>(true, var_0.a.x, false, false), vec4<bool>(true, false, var_0.a.x, var_0.a.x)))), (select(var_0.a.x, var_0.a.x, true) == select(var_0.a.x, var_0.a.x, var_0.a.x)) && select(var_0.a.x, true, select(var_0.a.x, false, false)), select(!var_0.a.x, var_0.a.x, true) || !var_0.a.x, var_0.a.x), select(vec4<bool>(all(select(vec2<bool>(var_0.a.x, false), vec2<bool>(var_0.a.x, false), var_0.a.yz)), true, var_0.a.x, var_0.a.x | !var_0.a.x), !(!(!vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x))), !(_wgslsmith_f_op_f32(trunc(-105f)) >= 1173f)), !select(select(var_0.a.x, var_0.a.x, var_0.a.x) || true, false, var_0.a.x));
    let var_2 = -_wgslsmith_sub_vec4_i32(max(max(vec4<i32>(5606i, arg_0, arg_0, -41066i), vec4<i32>(arg_0, u_input.b.x, arg_0, -11094i)), vec4<i32>(~0i, -14712i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), ~u_input.b.x)), select(~vec4<i32>(arg_0, 20373i, 0i, u_input.b.x), firstLeadingBit(vec4<i32>(-23743i, arg_0, arg_0, arg_0)), false));
    let var_3 = vec2<i32>(u_input.b.x, select(arg_0, 10867i, false) ^ 0i);
    let var_4 = 49107i;
    return arg_0 < countOneBits(firstLeadingBit(countOneBits(var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec4<bool>(true, all(vec4<bool>(true, true, false, true)), !any(vec3<bool>(true, true, false)), func_1(u_input.b.x)), select(vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, all(vec4<bool>(false, true, true, true))), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false), true), true), func_1(_wgslsmith_sub_i32(u_input.b.x, -u_input.b.x)));
    var var_1 = Struct_2(vec3<bool>(all(!var_0.wxy), false, select(false, var_0.x, var_0.x)), ~(_wgslsmith_mod_vec2_u32(vec2<u32>(36626u, u_input.a), max(vec2<u32>(56926u, 0u), vec2<u32>(u_input.a, 58571u))) | abs(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(23013u, 4294967295u)))));
    let var_2 = _wgslsmith_f_op_f32(473f * 1502f);
    var var_3 = Struct_1(u_input.b.x, vec4<i32>(2147483647i, ~(-13635i), 0i, 2147483647i));
    var var_4 = var_2;
    let var_5 = ~(vec4<i32>(u_input.b.x, ~(-2147483647i | u_input.b.x), _wgslsmith_add_i32(~1i, max(-15170i, u_input.b.x)), firstTrailingBit(var_3.b.x)) >> (abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(54370u, var_1.b.x, 4294967295u, var_1.b.x) & vec4<u32>(59063u, 4294967295u, u_input.a, 32976u), max(vec4<u32>(1u, u_input.a, u_input.a, 4294967295u), vec4<u32>(var_1.b.x, 83255u, 27526u, u_input.a)), ~vec4<u32>(var_1.b.x, 0u, 0u, u_input.a))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(4138u, min(~5603u, 1u), min(12014u, var_1.b.x), _wgslsmith_sub_u32(90817u, var_1.b.x)), vec2<f32>(_wgslsmith_f_op_f32(func_3(var_0.wz, Struct_2(vec3<bool>(var_1.a.x, var_0.x, true), ~var_1.b))), _wgslsmith_f_op_f32(func_3(vec2<bool>(var_0.x, var_1.a.x), Struct_2(vec3<bool>(true, true, var_0.x), ~vec2<u32>(4294967295u, 4294967295u))))));
}

