struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: bool) -> vec2<bool> {
    var var_0 = 1u;
    return select(!vec2<bool>(all(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), false)), any(vec2<bool>(arg_0, arg_0))), !select(!select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), arg_0), vec2<bool>(false, !arg_0), select(!vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), true)), false);
}

fn func_3() -> i32 {
    let var_0 = 0u;
    let var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -72621i, firstTrailingBit(u_input.a.x)), ~firstLeadingBit(min(vec2<i32>(u_input.a.x, -1i), vec2<i32>(-22279i, u_input.a.x)))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x >> (12168u % 32u)), _wgslsmith_add_vec4_i32(vec4<i32>(7281i, u_input.a.x, -2147483647i, -40087i), -u_input.a), true), ~(~u_input.a | ~vec4<i32>(u_input.a.x, 0i, 17603i, 6303i))));
    let var_2 = _wgslsmith_mod_i32(-reverseBits(~(~(-2147483647i))), _wgslsmith_sub_i32(~(-1i), _wgslsmith_mult_i32(~u_input.a.x, (var_1 | 22715i) ^ -var_1)));
    var var_3 = _wgslsmith_clamp_i32(62160i, ~(-1i) ^ abs(reverseBits(-var_2)), 34682i);
    var_3 = -2147483647i;
    return select(_wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(u_input.a.xww, vec3<i32>(var_2, 2147483647i, var_1)), ~_wgslsmith_div_vec3_i32(vec3<i32>(-19396i, -2147483647i, 18366i), vec3<i32>(50549i, u_input.a.x, var_1))) | 1i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_1 << (var_0 % 32u), ~var_1), -var_1), var_1, u_input.a.x), true);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -886f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2512f))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0), select(vec4<bool>(arg_0.x, func_1(arg_0.x).x, arg_0.x & arg_0.x, arg_0.x), vec4<bool>(!arg_0.x, var_0 > -850f, !(-821f <= var_0), true), vec4<bool>(false, all(vec3<bool>(arg_0.x, arg_0.x, true)), true && !arg_0.x, arg_0.x)), _wgslsmith_mod_i32(41602i, func_3()), i32(-1i) * -26262i);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), var_1.a)), var_1.b, 7687i, ~var_1.c);
    var var_2 = vec2<u32>(~11939u, firstTrailingBit(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 21284u, 1u, 1u), vec4<u32>(0u, 13655u, 21120u, 53409u))))) ^ ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(14533u, 1u), vec2<u32>(46332u, 7775u))));
    var_2 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.x, var_2.x), vec2<u32>(_wgslsmith_mod_u32(var_2.x, var_2.x) & 21068u, ~(~var_2.x)), _wgslsmith_add_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.x, var_2.x), vec2<u32>(69659u, var_2.x))), vec2<u32>(var_2.x, var_2.x)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))), vec4<bool>(func_1(!all(vec3<bool>(true, var_1.b.x, false))).x, !any(var_1.b.xxz), _wgslsmith_f_op_f32(f32(-1f) * -553f) >= _wgslsmith_f_op_f32(round(var_1.a)), false), arg_1.x, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(select(select(select(func_1(true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec2<bool>(true, false)) || any(vec2<bool>(true, false))), func_1(true), vec2<bool>(false, true)), _wgslsmith_mult_vec2_i32(~(u_input.a.wz & vec2<i32>(-45525i, u_input.a.x)) ^ vec2<i32>(~u_input.a.x, -u_input.a.x), _wgslsmith_mod_vec2_i32(-firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x)), select(abs(u_input.a.wx), _wgslsmith_mult_vec2_i32(u_input.a.xz, u_input.a.xx), select(vec2<bool>(true, true), vec2<bool>(true, true), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(6181u, 47908u, 77484u, 4294967295u), vec4<u32>(27703u, 65578u, 11748u, 4294967295u)), 1u), firstLeadingBit(~vec3<u32>(0u, 1u, 27331u)), vec3<u32>(1u, 1u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a)))))));
}

