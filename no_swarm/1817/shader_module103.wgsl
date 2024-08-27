struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 12600u;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = u_input.c;
    global0 = _wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_clamp_vec4_u32(u_input.b, ~(~vec4<u32>(u_input.b.x, 84430u, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.d, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.b.xxy, vec3<u32>(21269u, 37656u, 44698u)), u_input.a.x), u_input.b.x, firstLeadingBit(1u))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), arg_0) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-2096f * -790f), _wgslsmith_div_f32(arg_0, 160f))))), _wgslsmith_f_op_f32(-arg_0), 322f);
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    global0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.d, u_input.d), _wgslsmith_mod_u32(u_input.a.x, ~1u));
    global0 = ~firstLeadingBit(u_input.b.x);
    var var_0 = any(!(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false))));
    let var_1 = _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(1i, 51729i), _wgslsmith_sub_i32(-u_input.c, u_input.c)), -_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.e, abs(u_input.e), -u_input.e), u_input.e));
    var var_2 = u_input.b.x;
    return _wgslsmith_mod_vec3_i32(vec3<i32>(min(u_input.e.x, 10689i), 2147483647i, reverseBits(reverseBits(_wgslsmith_mult_i32(var_1, -37500i)))), vec3<i32>(1i ^ (var_1 >> (u_input.a.x % 32u)), u_input.e.x, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, var_1, -15954i)), vec3<i32>(-28284i, -27089i, var_1) ^ vec3<i32>(1i, u_input.c, var_1)), var_1)));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_dot_vec3_i32(firstLeadingBit(-_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.c, u_input.e.x, -58241i), -vec3<i32>(u_input.c, 1i, -16189i))), func_3(func_2(_wgslsmith_f_op_f32(-726f - 1f))));
    var var_1 = -1000f;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(283f, -1573f))), vec2<f32>(-220f, 627f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1532f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1287f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(510f - -1621f))) * 1419f));
    var var_3 = func_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(879f + _wgslsmith_f_op_f32(var_2.b + var_2.b)))).a.x);
    var var_4 = Struct_1(arg_0, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 8421u, u_input.d, 0u) << (vec4<u32>(4294967295u, 6904u, u_input.d, 0u) % vec4<u32>(32u)), select(vec4<u32>(u_input.a.x, 45701u, 9047u, 4294967295u), u_input.b, arg_0.x))));
    return _wgslsmith_mod_u32(var_4.b, _wgslsmith_sub_u32(abs(0u), ~(var_4.b ^ u_input.d))) >> (~62936u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(~u_input.b.x, ~u_input.b.x, false);
    let var_0 = _wgslsmith_mod_vec3_u32(select(vec3<u32>(~_wgslsmith_sub_u32(u_input.d, u_input.a.x), 1u, select(_wgslsmith_div_u32(u_input.b.x, u_input.a.x), 0u, all(vec4<bool>(true, true, true, true)))), ~vec3<u32>(34277u, u_input.d, func_1(vec2<bool>(false, true))), true), vec3<u32>(~(~u_input.d), 4294967295u, u_input.d));
    global0 = 0u;
    let var_1 = !any(vec2<bool>(!(u_input.b.x == 59929u), select(select(false, true, false), any(vec2<bool>(false, false)), false)));
    let var_2 = all(!select(vec4<bool>(true, true, true, true), vec4<bool>(var_1, true, 41992i < u_input.e.x, !var_1), select(select(vec4<bool>(false, var_1, true, var_1), vec4<bool>(var_1, var_1, false, false), true), !vec4<bool>(true, true, true, var_1), select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, false, false, true), vec4<bool>(true, true, false, false)))));
    var var_3 = abs(31478i);
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.e.x, 27257i, 2147483647i), vec4<i32>(u_input.c, u_input.e.x & 1i, -7504i, u_input.c), !vec4<bool>(false, true, var_2, var_2)), u_input.c, 673f);
}

