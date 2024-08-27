struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_2(_wgslsmith_dot_vec3_i32(~(~(-vec3<i32>(u_input.c, u_input.b, u_input.b))), select(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(6433i, u_input.c, u_input.c), vec3<i32>(35751i, -1i, u_input.c)), reverseBits(select(vec3<i32>(u_input.c, -2147483647i, u_input.c), vec3<i32>(-2147483647i, u_input.c, -9078i), vec3<bool>(true, false, true))), true)));
    var_0 = Struct_2(_wgslsmith_sub_i32(2147483647i, u_input.c));
    var_0 = Struct_2(u_input.c);
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(min(~(4294967295u & arg_0), firstLeadingBit(~arg_0)), arg_0));
    var var_2 = select(vec4<bool>(true, false, false, all(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)))), vec4<bool>(true, true, true, true), all(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))));
    return ~4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = ~(~(~1u ^ func_3(u_input.a.x))) << (1u % 32u);
    let var_1 = u_input.a.x;
    var var_2 = Struct_3(Struct_1(1u), Struct_2(_wgslsmith_div_i32(_wgslsmith_mod_i32(-39135i, reverseBits(5322i)), arg_1.a)), all(select(vec3<bool>(all(vec3<bool>(false, true, true)), true, true), vec3<bool>(false, any(vec2<bool>(true, false)), true), vec3<bool>(true, true, true))));
    let var_3 = firstLeadingBit(firstLeadingBit(~firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, var_2.b.a, -23759i), vec3<i32>(2147483647i, -15267i, 28579i)))));
    var var_4 = Struct_3(Struct_1(_wgslsmith_dot_vec2_u32(u_input.a.yz & vec2<u32>(u_input.a.x, 39099u), _wgslsmith_div_vec2_u32(vec2<u32>(var_1, 0u), u_input.a.xw)) ^ arg_0.a), Struct_2(-65971i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -588f)))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2443f, 1959f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1019f)))));
    return _wgslsmith_f_op_f32(sign(-1107f));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: i32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_1(61256u);
    var_0 = Struct_1(arg_3.x);
    var var_1 = ~37577u;
    var_0 = Struct_1(func_3(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(0u, u_input.a.x), ~abs(27228u))));
    var var_2 = !(!any(vec3<bool>(true, true, true)));
    return Struct_2(0i);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(~abs(-arg_1.a), u_input.c);
    var_0 = arg_1.a;
    let var_1 = Struct_2(abs(-_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(arg_1.a, 13277i)), vec2<i32>(u_input.c, arg_1.a))));
    var_0 = var_1.a;
    var var_2 = func_4(vec3<f32>(-981f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -107f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-598f * 158f), -885f, true)))), ~var_1.a, _wgslsmith_div_vec2_u32(~firstLeadingBit(~arg_0.zw), vec2<u32>(31242u, _wgslsmith_mod_u32(~1u, u_input.a.x))));
    return Struct_1(13565u);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: u32) -> vec2<u32> {
    let var_0 = ~(~_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(arg_3, arg_1, arg_1, 20279u)));
    var var_1 = Struct_2(u_input.b);
    let var_2 = func_5(_wgslsmith_clamp_vec4_u32(u_input.a, ~vec4<u32>(1u, 50733u, 0u, arg_1), vec4<u32>(abs(arg_1), 1u, ~38917u, arg_2)) & vec4<u32>(0u, 7122u, abs(~43800u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 0u, 1u), ~vec3<u32>(0u, var_0.x, arg_2))), func_4(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(18986u), Struct_2(u_input.c))), _wgslsmith_div_f32(-473f, -454f), _wgslsmith_div_f32(-423f, 262f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(323f, -1000f)))), u_input.b, ~(~vec2<u32>(arg_3, 11539u))), !select(true, true, true | (-10276i > var_1.a)));
    var var_3 = Struct_2(max(select(1i, u_input.c, any(vec2<bool>(false, true))) << (firstLeadingBit(0u) % 32u), reverseBits(1i)));
    let var_4 = Struct_3(var_2, func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1659f, -1300f, -1592f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - -523f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 254f) * -214f))), ~(-35807i), u_input.a.zw), true);
    return vec2<u32>(var_2.a, var_4.a.a) ^ u_input.a.xz;
}

fn func_6(arg_0: vec2<i32>) -> i32 {
    var var_0 = select(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)), true), vec4<bool>(true, false, true, any(vec2<bool>(true, false))), true), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true), true)), true);
    return _wgslsmith_dot_vec4_i32(-abs(select(-vec4<i32>(-15157i, arg_0.x, -32136i, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 19947i, 11522i, u_input.c), vec4<i32>(arg_0.x, arg_0.x, 0i, -1i)), !vec4<bool>(false, var_0.x, true, false))), vec4<i32>(28318i, u_input.c, -1i, -u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var_0 = 44843u;
    var_0 = 26880u;
    let var_1 = true;
    let var_2 = -25566i;
    let x = u_input.a;
    s_output = StorageBuffer(func_6(vec2<i32>(var_2, 1i) >> (func_1(~u_input.a.x, ~u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~0u) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1323f), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_div_f32(-318f, 1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-122f, 744f, 3073f))))));
}

