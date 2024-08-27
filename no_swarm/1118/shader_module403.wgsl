struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: f32 = 872f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> f32 {
    let var_0 = Struct_1(vec2<i32>(6098i, _wgslsmith_dot_vec2_i32(select(arg_0.a, min(arg_0.a, vec2<i32>(u_input.b, arg_0.a.x)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), -(vec2<i32>(u_input.b, arg_0.a.x) | vec2<i32>(arg_1, 1i)))), vec3<f32>(1167f, 1243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(797f - -1206f) + 1821f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -698f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-174f)) - -1502f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(650f)), 1179f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-113f, 1000f)))), 1032f)), _wgslsmith_dot_vec3_u32(max(~(~vec3<u32>(1u, 77444u, u_input.a)), vec3<u32>(1u, 80244u, ~0u)), vec3<u32>(~u_input.a, _wgslsmith_mod_u32(1u, 49334u), 5269u) >> (firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 46219u)) % vec3<u32>(32u))));
    let var_1 = vec2<i32>(countOneBits(countOneBits(1i)), _wgslsmith_sub_i32(var_0.a.x, u_input.b));
    var var_2 = vec4<u32>(~105057u, 56087u, u_input.a, min(_wgslsmith_dot_vec3_u32(vec3<u32>(90294u, ~var_0.e, abs(var_0.e)), vec3<u32>(select(30486u, 4294967295u, false), var_0.e, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, var_0.e)))), ~(~(~0u))));
    var var_3 = _wgslsmith_mod_vec2_i32(arg_0.a, vec2<i32>(_wgslsmith_sub_i32(2147483647i, _wgslsmith_mult_i32(_wgslsmith_add_i32(-413i, arg_1), -1i >> (var_2.x % 32u))), firstLeadingBit(abs(-13396i))));
    let var_4 = Struct_2(-var_1.x, vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), true, true), Struct_1(reverseBits(_wgslsmith_sub_vec2_i32(var_0.a, var_1 >> (vec2<u32>(47424u, 43635u) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(-144f)), 217f, _wgslsmith_div_f32(var_0.d.x, 775f)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), 416f, _wgslsmith_f_op_f32(max(-1740f, var_0.d.x))), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.x, -1161f, 1410f), vec3<f32>(1380f, 576f, var_0.b.x), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1201f, -674f, var_0.b.x) - var_0.d))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-448f, -373f, -974f))))), 56843u), var_0.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.d.x - 1f))) - 611f);
}

fn func_2(arg_0: Struct_4, arg_1: u32) -> f32 {
    let var_0 = vec2<u32>(~4294967295u, 14800u);
    var var_1 = ~firstTrailingBit(~abs(vec4<i32>(u_input.b, 22648i, 17190i, 0i)));
    global0 = 1444f;
    var var_2 = Struct_4(var_1.xy);
    global0 = -152f;
    return _wgslsmith_f_op_f32(406f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1066f)) - _wgslsmith_f_op_f32(-299f + _wgslsmith_f_op_f32(func_3(arg_0, 5726i << (arg_1 % 32u))))));
}

fn func_1() -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(select(-884f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(vec2<i32>(u_input.b, u_input.b)), u_input.a)) * 451f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(480f, 494f)))))), !(!(-u_input.b != ~(-1i)))));
    let var_0 = vec4<bool>(true, all(vec4<bool>(~u_input.a < ~u_input.a, false, all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), all(vec2<bool>(true, true)))), ~(~(~u_input.a)) == 7761u, !(!any(vec4<bool>(false, true, false, false))) || all(vec4<bool>(true, 124592u == u_input.a, true, true)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-632f * _wgslsmith_f_op_f32(round(-1929f))))) + _wgslsmith_f_op_f32(f32(-1f) * -511f));
    var var_1 = Struct_4(vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, 0i)), -33911i));
    return select(!var_0, vec4<bool>(var_0.x, var_0.x, !var_0.x, any(vec2<bool>(true, all(vec2<bool>(true, var_0.x))))), vec4<bool>(var_0.x, !var_0.x, var_0.x, !any(!var_0.wx)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 380f;
    var var_0 = select(select(firstTrailingBit(vec4<u32>(72546u, firstTrailingBit(u_input.a), 59340u, _wgslsmith_add_u32(u_input.a, 7191u))), ~vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(285u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u)), ~4294967295u, u_input.a | 59621u), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true), func_1()), vec4<bool>(true, true, true, true))), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, reverseBits(u_input.a), 79608u, u_input.a) ^ ~firstLeadingBit(vec4<u32>(u_input.a, 78412u, 1u, u_input.a)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, 27406u, u_input.a), vec4<u32>(33722u, u_input.a, u_input.a, u_input.a)), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) >> (vec4<u32>(0u, u_input.a, 40833u, u_input.a) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 21706u, u_input.a, u_input.a) << (vec4<u32>(4294967295u, 56747u, 28299u, 1u) % vec4<u32>(32u)), ~vec4<u32>(30094u, u_input.a, u_input.a, 164716u))), ~vec4<u32>(max(u_input.a, u_input.a), u_input.a ^ 4294967295u, min(13097u, u_input.a), u_input.a)), u_input.b > abs(u_input.b));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(251f, -198f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-239f, 1335f) - vec2<f32>(-790f, -1000f)))) + vec2<f32>(644f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_4(vec2<i32>(u_input.b, u_input.b)), u_input.b)))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2259f, -363f)), vec2<f32>(761f, -1219f), false)))));
    let var_2 = all(vec4<bool>(!any(vec2<bool>(true, false)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(54082u, 0u), var_0.x) < 19954u, !all(vec2<bool>(false, false)), true & (select(false, true, false) || all(vec3<bool>(true, true, false)))));
    let var_3 = _wgslsmith_mult_i32(-u_input.b, u_input.b);
    var var_4 = !(var_2 & all(vec2<bool>(true, var_2)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x)))) * 1020f);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

