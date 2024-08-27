struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = 1i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: f32) -> vec2<i32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -474f, 467f, 222f) - vec4<f32>(211f, -209f, arg_1, arg_0)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, arg_1, -911f, arg_0), vec4<f32>(arg_1, arg_0, -245f, arg_1))), true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, -311f, -575f), vec4<f32>(arg_1, arg_0, arg_1, 257f)))), all(select(vec4<bool>(false, global0.a.x, true, global0.a.x), vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x), false))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), 251f, 222f, _wgslsmith_f_op_f32(261f - 1000f))));
    global1 = u_input.b & _wgslsmith_add_i32(min(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(-58951i, u_input.b)), 40386i), abs(3602i)), _wgslsmith_mod_i32(-1i, 1i));
    var var_1 = Struct_1(!(!(!(!vec3<bool>(false, global0.a.x, global0.a.x)))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0), vec4<f32>(-326f, 750f, arg_1, arg_1))), vec4<f32>(_wgslsmith_f_op_f32(-184f - 1000f), _wgslsmith_f_op_f32(arg_0 - arg_0), 1416f, arg_1)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(745f, var_0.x, 309f, -1550f), vec4<f32>(var_0.x, 515f, var_0.x, arg_1))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, var_0.x, arg_1, arg_1), vec4<f32>(-232f, -635f, 512f, var_0.x), vec4<bool>(true, var_1.a.x, var_1.a.x, false))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0, vec4<f32>(var_0.x, 1994f, -796f, -573f), vec4<bool>(var_1.a.x, false, var_1.a.x, false))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)) - _wgslsmith_div_vec4_f32(vec4<f32>(743f, 1587f, var_0.x, arg_0), var_0))));
    var var_3 = Struct_1(select(select(vec3<bool>(var_1.a.x, true, u_input.b < u_input.b), vec3<bool>(!global0.a.x, var_1.a.x != global0.a.x, var_1.a.x), true), vec3<bool>(any(vec4<bool>(false, var_1.a.x, true, global0.a.x)), false, select(all(vec3<bool>(true, false, global0.a.x)), all(vec2<bool>(global0.a.x, true)), global0.a.x)), (any(global0.a.zz) != false) && true));
    return select(-vec2<i32>(min(u_input.b, u_input.b >> (u_input.a % 32u)), 2147483647i), select(vec2<i32>(0i, 79733i), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.b, 22980i), u_input.b), _wgslsmith_div_vec2_i32(-vec2<i32>(40235i, u_input.b), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, -37260i), vec3<i32>(1i, -1i, u_input.b)), u_input.b)), vec2<bool>(true, _wgslsmith_sub_i32(u_input.b, 0i) < (u_input.b << (u_input.a % 32u)))), vec2<bool>(false, var_1.a.x));
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_mod_i32(2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(24188i, 54794i), vec2<i32>(u_input.b, -2147483647i), vec2<i32>(-55228i, -34792i)), func_3(1060f, -554f)), ~(vec2<i32>(2147483647i, u_input.b) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)))), ~u_input.b));
    let var_0 = Struct_1(vec3<bool>(global0.a.x, all(vec3<bool>(all(vec3<bool>(global0.a.x, false, global0.a.x)), true, global0.a.x)), global0.a.x));
    global1 = 0i << (min(0u, 0u) % 32u);
    let var_1 = Struct_2(Struct_1(vec3<bool>(global0.a.x, u_input.a < _wgslsmith_div_u32(4294967295u, u_input.a), u_input.a <= _wgslsmith_mult_u32(69657u, 1u))), Struct_1(select(select(select(global0.a, var_0.a, vec3<bool>(var_0.a.x, global0.a.x, true)), !var_0.a, true), global0.a, !vec3<bool>(global0.a.x, true, global0.a.x))), 1u, Struct_1(select(select(!vec3<bool>(var_0.a.x, var_0.a.x, false), !var_0.a, var_0.a.x), global0.a, select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, global0.a.x), vec3<bool>(var_0.a.x, false, false), vec3<bool>(var_0.a.x, global0.a.x, false)), !var_0.a))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1661f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 374f)))) >> (max(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, 9085u) % vec2<u32>(32u)), countOneBits(vec2<u32>(1u, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4330u), vec2<u32>(u_input.a, u_input.a))), _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 18500u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(4294967295u, u_input.a)))) % vec2<u32>(32u)));
    var var_2 = -213f;
    return var_1.d;
}

fn func_1() -> Struct_1 {
    global0 = func_2();
    var var_0 = ~firstLeadingBit(0u);
    var var_1 = ~u_input.a;
    var var_2 = vec4<u32>(u_input.a, u_input.a | _wgslsmith_mod_u32(u_input.a, u_input.a), ~_wgslsmith_add_u32(~_wgslsmith_sub_u32(u_input.a, u_input.a), 0u), firstLeadingBit(22000u));
    var_1 = 0u ^ var_2.x;
    return Struct_1(select(vec3<bool>(!(1i > u_input.b), false, any(select(vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x), vec4<bool>(true, global0.a.x, global0.a.x, false), false))), vec3<bool>(!all(global0.a.xz), !global0.a.x, true), any(global0.a.yy)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global1 = 12470i;
    global1 = _wgslsmith_sub_i32(~arg_0.e.x, -abs(firstLeadingBit(u_input.b ^ -1i)));
    global1 = firstLeadingBit(_wgslsmith_sub_i32(~(-arg_0.e.x), 2526i));
    let var_0 = (_wgslsmith_div_u32(0u, ~(~21091u)) < ~arg_0.c) && true;
    global0 = func_2();
    return Struct_1(func_1().a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(Struct_1(!global0.a), func_1(), ~_wgslsmith_mod_u32(u_input.a, abs(u_input.a)), Struct_1(vec3<bool>(true & global0.a.x, false, func_1().a.x)), vec2<i32>(_wgslsmith_mod_i32(-47448i, -u_input.b), -2147483647i)));
    global1 = _wgslsmith_mod_i32(-18715i, 61740i);
    var var_1 = ~_wgslsmith_add_u32(~max(31091u >> (u_input.a % 32u), _wgslsmith_div_u32(u_input.a, u_input.a)), _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.a, u_input.a)), abs(vec2<u32>(u_input.a, u_input.a))));
    var var_2 = _wgslsmith_f_op_f32(-438f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1886f)))))));
    global1 = _wgslsmith_div_i32(min(u_input.b, 20411i), i32(-1i) * -9383i);
    var var_3 = vec4<bool>(var_0.a.x | true, func_1().a.x, all(global0.a.zy), var_0.a.x);
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(step(1f, 1825f)), -334f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(713f * -831f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -113f), _wgslsmith_f_op_f32(1000f - -392f))), -327f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a), var_4.x, _wgslsmith_clamp_i32(~(-1i), u_input.b << (~_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u), ~(~_wgslsmith_clamp_i32(u_input.b, 21823i, u_input.b))));
}

