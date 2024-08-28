struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(true, vec2<bool>(true, true), 1u, Struct_1(true), Struct_1(true)), Struct_4(false, vec2<bool>(false, true), 0u, Struct_1(true), Struct_1(false)), Struct_4(true, vec2<bool>(false, false), 2783u, Struct_1(false), Struct_1(true)), Struct_4(false, vec2<bool>(true, false), 4294967295u, Struct_1(true), Struct_1(true)), Struct_4(false, vec2<bool>(true, true), 4294967295u, Struct_1(false), Struct_1(true)), Struct_4(false, vec2<bool>(true, true), 114328u, Struct_1(false), Struct_1(false)), Struct_4(false, vec2<bool>(false, false), 46047u, Struct_1(true), Struct_1(true)), Struct_4(false, vec2<bool>(true, false), 75041u, Struct_1(true), Struct_1(false)), Struct_4(false, vec2<bool>(false, false), 34085u, Struct_1(true), Struct_1(false)), Struct_4(false, vec2<bool>(true, true), 110696u, Struct_1(false), Struct_1(false)), Struct_4(false, vec2<bool>(true, false), 0u, Struct_1(false), Struct_1(false)), Struct_4(false, vec2<bool>(false, false), 0u, Struct_1(false), Struct_1(true)), Struct_4(true, vec2<bool>(true, false), 79902u, Struct_1(true), Struct_1(false)), Struct_4(true, vec2<bool>(false, false), 20105u, Struct_1(true), Struct_1(true)), Struct_4(false, vec2<bool>(false, true), 4294967295u, Struct_1(true), Struct_1(false)), Struct_4(false, vec2<bool>(true, true), 21595u, Struct_1(true), Struct_1(true)), Struct_4(true, vec2<bool>(false, true), 4294967295u, Struct_1(false), Struct_1(false)), Struct_4(true, vec2<bool>(true, false), 85390u, Struct_1(false), Struct_1(false)), Struct_4(false, vec2<bool>(false, false), 4294967295u, Struct_1(false), Struct_1(false)), Struct_4(false, vec2<bool>(true, false), 0u, Struct_1(true), Struct_1(false)), Struct_4(false, vec2<bool>(false, false), 0u, Struct_1(false), Struct_1(true)), Struct_4(false, vec2<bool>(true, true), 64797u, Struct_1(false), Struct_1(true)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> bool {
    var var_0 = Struct_1(!arg_2);
    let var_1 = var_0.a || !any(vec3<bool>(true, !arg_2, any(vec4<bool>(true, arg_2, true, arg_1.a))));
    let var_2 = Struct_3(arg_2, !vec4<bool>(arg_1.a, false, any(select(vec2<bool>(false, true), vec2<bool>(false, arg_1.a), vec2<bool>(true, false))), true));
    let var_3 = min(vec4<u32>(4294967295u, ~1u, _wgslsmith_mod_u32(~1u, max(6125u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(9215u, 50182u)))), 0u), ~(~_wgslsmith_mod_vec4_u32(select(vec4<u32>(0u, 1u, 23832u, 79781u), vec4<u32>(0u, 46221u, 0u, 12118u), vec4<bool>(arg_2, false, true, false)), vec4<u32>(1u, 1u, 1u, 1u))));
    let var_4 = vec2<i32>(select(_wgslsmith_div_i32(0i, firstLeadingBit(arg_3.x) & (i32(-1i) * -2147483647i)), arg_3.x | -arg_3.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x)))), ~u_input.d);
    return !any(select(select(!vec4<bool>(false, true, var_1, false), vec4<bool>(true, false, true, arg_1.a), vec4<bool>(arg_1.a, true, false, arg_2)), select(vec4<bool>(arg_1.a, arg_1.a, var_2.b.x, var_2.a), select(vec4<bool>(var_0.a, true, false, false), var_2.b, vec4<bool>(var_1, var_1, var_2.b.x, true)), !vec4<bool>(var_1, true, var_0.a, arg_2)), var_2.b));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = arg_0.wx;
    let var_1 = Struct_3(true, !vec4<bool>(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1467f, arg_1) + vec2<f32>(arg_1, arg_1)), Struct_1(true), select(true, false, true), _wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(-2147483647i, 1i, u_input.c.x))), true, any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, false, false)) || all(vec2<bool>(true, true))));
    var var_2 = ~(-1i);
    var var_3 = var_0.x;
    global0 = array<Struct_4, 22>();
    return Struct_1(min(4294967295u, var_0.x | var_0.x) >= abs(~(var_0.x | arg_0.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = select(vec3<bool>(true, arg_3 == (arg_2.a || false), arg_2.a), !select(vec3<bool>(arg_3, arg_2.a, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))), true);
    return 1u;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> vec2<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -794f), -577f, -378f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1140f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(651f + 793f)))) * _wgslsmith_f_op_f32(round(-2402f))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1016f)))), _wgslsmith_add_u32(~(~1u), func_4(-787f, Struct_1(arg_1.a), func_2(vec4<u32>(23672u, 0u, 60823u, arg_0), _wgslsmith_f_op_f32(-990f + 1030f), _wgslsmith_sub_i32(0i, 18667i)), !(0u < arg_0))), func_2(min(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 0u, 4294967295u, 92884u), _wgslsmith_mod_vec4_u32(vec4<u32>(1622u, 8014u, arg_0, 4294967295u), vec4<u32>(arg_0, arg_0, arg_0, 82314u))), vec4<u32>(~arg_0, countOneBits(arg_0), _wgslsmith_add_u32(90023u, arg_0), arg_0)), 1427f, _wgslsmith_dot_vec4_i32(select(-vec4<i32>(u_input.c.x, u_input.d, -51943i, -1i), -vec4<i32>(1i, -4533i, u_input.a, u_input.d), all(vec2<bool>(false, arg_1.a))), firstLeadingBit(vec4<i32>(2943i, u_input.b, u_input.b, 2147483647i)))), _wgslsmith_add_vec3_i32(firstTrailingBit(u_input.c), vec3<i32>(_wgslsmith_dot_vec3_i32(-u_input.c, -u_input.c), abs(-u_input.b), reverseBits(u_input.b) ^ (u_input.d | u_input.d))), select(vec3<bool>(select(false, arg_2, !arg_1.a), !arg_1.a, false), select(vec3<bool>(true, all(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, false)), false), !(!vec3<bool>(arg_1.a, arg_1.a, arg_2)), all(select(vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, false), arg_1.a))), vec3<bool>(arg_2, true, func_3(_wgslsmith_f_op_vec2_f32(-var_0.wz), Struct_1(true), true, u_input.c))));
    let var_2 = Struct_4(!arg_1.a, select(var_1.e.yx, select(var_1.e.zy, vec2<bool>(true, arg_1.a), any(select(vec4<bool>(arg_1.a, true, true, true), vec4<bool>(true, true, false, arg_2), var_1.e.x))), arg_1.a), countOneBits(abs(4294967295u)), func_2(vec4<u32>(max(0u, ~var_1.b), 20606u, firstLeadingBit(var_1.b & var_1.b), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) - -1063f)), u_input.c.x), func_2(vec4<u32>(firstLeadingBit(arg_0), firstTrailingBit(0u ^ var_1.b), arg_0, arg_0), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(select(var_1.a, -1000f, arg_1.a))), -reverseBits(-2147483647i)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + -228f), var_1.a, var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1121f)) + vec4<f32>(-2055f, -1279f, _wgslsmith_f_op_f32(var_1.a * var_1.a), 592f)) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, -2061f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-739f * 2550f))))));
    global0 = array<Struct_4, 22>();
    return vec2<f32>(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1638f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a - -1267f), _wgslsmith_f_op_f32(var_0.x + 518f))) - var_1.a));
}

fn func_5(arg_0: vec2<f32>) -> bool {
    var var_0 = ~select(select(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~39029u, 1u, 1u, 16087u), true), vec4<u32>(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 38458u), vec2<u32>(0u, 23392u))), ~(~4370u), select(_wgslsmith_div_u32(99567u, 66667u), abs(4294967295u), true), ~func_4(arg_0.x, Struct_1(false), Struct_1(true), false)), !(!all(vec3<bool>(false, true, false))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0));
    return (false || func_2(vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.zxz, vec3<u32>(var_0.x, 21482u, var_0.x)), reverseBits(0u), reverseBits(var_0.x), reverseBits(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - 679f), ~(-29813i) | _wgslsmith_add_i32(u_input.d, 0i)).a) & true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(824f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1704f)))), 0i != firstLeadingBit(u_input.d)), vec2<bool>(true, func_5(_wgslsmith_f_op_vec2_f32(func_1(1u, Struct_1(true), false)))), all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false), true)));
    global0 = array<Struct_4, 22>();
    global0 = array<Struct_4, 22>();
    global0 = array<Struct_4, 22>();
    var var_1 = Struct_3(var_0.x, select(select(!(!vec4<bool>(var_0.x, var_0.x, false, false)), vec4<bool>(true, true, var_0.x, true), false), !(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), !var_0.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1050f + _wgslsmith_f_op_f32(723f + -1570f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -958f) - _wgslsmith_f_op_f32(max(490f, -219f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec4<i32>(1i, 1i, -u_input.d, 1i)));
}

