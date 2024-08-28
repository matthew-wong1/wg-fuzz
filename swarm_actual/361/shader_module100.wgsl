struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
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

var<private> global0: array<bool, 20>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: u32) -> vec2<i32> {
    return select(~(~vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(1i, -76673i, arg_0))), ~vec2<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 1i), u_input.d.yy, vec2<i32>(-1i, u_input.a.x)), vec2<i32>(55953i, 1i))), false);
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> Struct_4 {
    let var_0 = Struct_2(firstLeadingBit(arg_0), Struct_1(abs(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(11598u, 33908u, 35301u, arg_0)), ~vec4<u32>(arg_0, arg_0, 16341u, 0u))), -68347i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(157f)), -1299f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1205f + -271f)))), vec4<bool>(true, all(vec2<bool>(!global0[_wgslsmith_index_u32(1u, 20u)], true)), false, global0[_wgslsmith_index_u32(~arg_0 ^ _wgslsmith_mult_u32(35876u, countOneBits(arg_0)), 20u)]));
    let var_1 = -u_input.d.x;
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    var var_2 = Struct_3(select(vec3<u32>(select(4294967295u, arg_0, true) << (0u % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 28404u, var_0.a), vec3<u32>(var_0.a, var_0.b.a, var_0.b.a)), ~var_0.a), ~(select(vec3<u32>(var_0.b.a, 0u, var_0.a), vec3<u32>(4294967295u, var_0.b.a, 1614u), vec3<bool>(var_0.c.x, false, false)) << (firstTrailingBit(vec3<u32>(4294967295u, 0u, 38430u)) % vec3<u32>(32u))), select(!(!var_0.c.xzw), select(var_0.c.wwy, !vec3<bool>(false, var_0.c.x, global0[_wgslsmith_index_u32(arg_0, 20u)]), select(var_0.c.wyz, vec3<bool>(var_0.c.x, var_0.c.x, global0[_wgslsmith_index_u32(0u, 20u)]), true)), false)), _wgslsmith_f_op_f32(max(var_0.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c + -1665f)) + 1000f))), true);
    return Struct_4(Struct_3(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-711f * _wgslsmith_f_op_f32(select(var_2.b, var_2.b, false))) + _wgslsmith_f_op_f32(var_0.b.c * _wgslsmith_f_op_f32(var_0.b.c * var_2.b))), true));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_3(~1u, func_2(~(~arg_3.b), ~reverseBits(arg_2.a)));
    let var_1 = Struct_5(u_input.d, arg_3.c, func_3(arg_3.a, arg_1.yz).a, Struct_2(_wgslsmith_dot_vec2_u32(reverseBits(~var_0.a.a.xy), abs(vec2<u32>(var_0.a.a.x, arg_2.a))), Struct_1(var_0.a.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b, arg_3.b, arg_3.b), vec3<i32>(u_input.e, arg_3.b, arg_2.b)), var_0.a.b), vec4<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(arg_3.a), 20u)], var_0.a.c && !arg_0.x, select(var_0.a.c, false, !arg_0.x), select(true, var_0.a.c, true))));
    let var_2 = Struct_3(select((var_1.c.a << (vec3<u32>(0u, 53770u, 63441u) % vec3<u32>(32u))) << (~var_1.c.a % vec3<u32>(32u)), (var_0.a.a << (vec3<u32>(var_1.c.a.x, arg_3.a, 0u) % vec3<u32>(32u))) & _wgslsmith_mod_vec3_u32(var_1.c.a, var_1.c.a), var_1.d.c.x) << (~(~min(var_1.c.a, vec3<u32>(4294967295u, 4294967295u, arg_3.a))) % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_3.c)), arg_3.c), true);
    global0 = array<bool, 20>();
    var var_3 = min(_wgslsmith_div_vec4_i32(select(u_input.a, ~(-u_input.a), true), vec4<i32>(-53744i, -34510i, _wgslsmith_add_i32(abs(var_1.d.b.b), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), -2147483647i)), -(-abs(u_input.a) << (vec4<u32>(var_0.a.a.x | 0u, 64443u, var_1.c.a.x, 7496u) % vec4<u32>(32u))));
    return var_1.d.b;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    var var_0 = -(~(_wgslsmith_clamp_i32(~arg_1.b, _wgslsmith_mult_i32(arg_1.b, arg_1.b), _wgslsmith_sub_i32(u_input.d.x, -1i)) & _wgslsmith_mod_i32(~arg_2.x, 71954i)));
    let var_1 = vec2<bool>(all(arg_0.wx), any(vec2<bool>(true, true)));
    let var_2 = Struct_1(1u, _wgslsmith_dot_vec3_i32(u_input.a.wzx, vec3<i32>(firstLeadingBit(u_input.b.x), 1i, ~25525i) | select(vec3<i32>(31516i, u_input.e, 24129i), -arg_2.xzz, arg_0.x)), -227f);
    return !(!any(!arg_0.yzy)) && any(!var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(select(func_4(vec4<bool>(true, global0[_wgslsmith_index_u32(17983u, 20u)], false, true), func_1(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 20u)], true), vec3<i32>(-18841i, u_input.e, 1i), Struct_1(9100u, u_input.e, 1000f), Struct_1(1u, u_input.a.x, 867f)), vec4<i32>(2147483647i, u_input.b.x, u_input.e, -37997i)), true, true), true, global0[_wgslsmith_index_u32(1u, 20u)] == global0[_wgslsmith_index_u32(1u, 20u)], false);
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    let var_1 = firstLeadingBit(_wgslsmith_sub_i32(-56401i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a.x, 0i), 1i))) <= min(u_input.c, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.d.x, -27725i), vec3<i32>(-2147483647i, 2147483647i, u_input.b.x))));
    let var_2 = _wgslsmith_div_f32(893f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(-478f)))));
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(46742u, 4294967295u, 4294967295u), vec3<u32>(1u, 23243u, 29673u)))));
}

