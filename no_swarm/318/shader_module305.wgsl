struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 504f;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: f32) -> i32 {
    global0 = _wgslsmith_f_op_f32(exp2(arg_1));
    let var_0 = Struct_1(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), any(vec2<bool>(true, all(vec3<bool>(true, false, false)))) | (true == all(vec2<bool>(false, false))), _wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(37179i, 18242i, arg_0), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, 62957i, u_input.c), vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(arg_0, u_input.c, arg_0))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(8887i, u_input.c, u_input.c), vec3<i32>(2147483647i, -100389i, arg_0)), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), true)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(-2147483647i, arg_0, arg_0)), vec3<i32>(arg_0, arg_0, -76077i)), vec3<i32>(37091i & u_input.c, -37840i, arg_0))));
    global0 = arg_1;
    var var_1 = vec3<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 * 143f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), arg_1, var_0.b)));
    var var_2 = var_0.b;
    return -min(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(54299i, u_input.c, -1i) ^ vec3<i32>(arg_0, -1i, 23529i), ~vec3<i32>(-47241i, var_0.c, u_input.c)), 21807i), -firstTrailingBit(var_0.c) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.c, 2147483647i, u_input.c), max(vec4<i32>(var_0.c, 2147483647i, u_input.c, var_0.c), vec4<i32>(0i, 9184i, var_0.c, u_input.c))));
}

fn func_2() -> f32 {
    var var_0 = 1506f;
    global0 = _wgslsmith_f_op_f32(-644f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1298f, -1000f)))))));
    let var_1 = Struct_1(vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true)) && (max(u_input.a, u_input.b.x ^ 3512u) != u_input.a), -abs(func_3(u_input.c, _wgslsmith_f_op_f32(min(-334f, -206f)))));
    return -1547f;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-352f)))) + _wgslsmith_f_op_f32(step(763f, -770f)))));
    let var_0 = !(!all(vec4<bool>(all(vec4<bool>(false, true, true, false)), true, false, true)));
    var var_1 = Struct_1(vec3<bool>(var_0, true, var_0), true, _wgslsmith_sub_i32(_wgslsmith_add_i32(abs(u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(3035i, 2147483647i), vec2<i32>(u_input.c, -2147483647i))) << (firstTrailingBit(max(arg_0, arg_0)) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(8173i, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, 2147483647i) >> (vec3<u32>(u_input.a, 1u, 4294967295u) % vec3<u32>(32u))), vec3<i32>(2147483647i, ~u_input.c, 1i))));
    var var_2 = _wgslsmith_sub_u32(u_input.b.x & u_input.b.x, _wgslsmith_sub_u32(4294967295u, arg_0));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(floor(1914f)))), 557f, -618f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return Struct_1(var_1.a, u_input.a == abs(arg_0), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mod_u32(~u_input.a, max(_wgslsmith_clamp_u32(~u_input.a, u_input.a, u_input.b.x), ~(~1u))));
    let var_1 = select(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, -2147483647i), vec2<i32>(var_0.c, 40623i)), ~(~u_input.c)), select(_wgslsmith_sub_vec2_i32(select(vec2<i32>(-25479i, -2147483647i), vec2<i32>(12870i, -12550i), var_0.a.x), vec2<i32>(u_input.c, u_input.c)), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(21643i, var_0.c), vec2<i32>(81177i, u_input.c), vec2<bool>(var_0.a.x, var_0.a.x)), ~vec2<i32>(-2147483647i, 59864i), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(-26782i, 2147483647i))), func_1(u_input.b.x).a.yy), all(select(vec2<bool>(true, true), vec2<bool>(var_0.b, var_0.a.x), vec2<bool>(false, var_0.b))) == false) << (select(select(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.b), u_input.b, _wgslsmith_add_i32(u_input.c, u_input.c) <= firstLeadingBit(-47226i)), u_input.b, u_input.c >= -1i) % vec2<u32>(32u));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1520f))))) - 315f)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-438f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2()))), -1000f)))));
    global0 = 386f;
    var var_2 = Struct_1(!vec3<bool>(var_0.a.x, true, var_0.b), all(vec3<bool>(all(vec3<bool>(true, var_0.a.x, false)), var_0.b, var_0.b)), _wgslsmith_clamp_i32(1i, var_1.x, 16562i));
    var var_3 = var_0;
    var var_4 = Struct_1(var_0.a, true, firstLeadingBit(_wgslsmith_div_i32(var_0.c, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~u_input.c, ~(-2147483647i)), select(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(49284u, u_input.a, 0u, u_input.a), firstTrailingBit(vec4<u32>(4294967295u, u_input.b.x, 23705u, u_input.b.x))), ~abs(vec4<u32>(31526u, u_input.a, 41837u, 65298u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, 4294967295u, 4294967295u), vec4<u32>(35540u, 4294967295u, u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 1u, u_input.a), vec4<u32>(1u, 0u, 1u, u_input.a)))), _wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.b.x, 20404u, u_input.a, 0u) | vec4<u32>(0u, 4294967295u, u_input.b.x, 1u)), _wgslsmith_add_vec4_u32(~vec4<u32>(109044u, u_input.b.x, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, 12029u))), !(_wgslsmith_f_op_f32(sign(1000f)) != 801f)), -vec3<i32>(-var_3.c, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c, var_3.c), vec3<i32>(2147483647i, -1i, -69430i)), 6753i ^ var_4.c) >> (~vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), 0i, _wgslsmith_div_vec3_i32(select(vec3<i32>(~2147483647i, ~(-32030i), u_input.c), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(var_4.c, -17305i, var_1.x)), ~vec3<i32>(59476i, u_input.c, 1i), max(vec3<i32>(var_0.c, -2147483647i, var_0.c), vec3<i32>(u_input.c, var_3.c, var_3.c))), vec3<bool>(!var_4.a.x, !var_2.b, true)), ~select(vec3<i32>(-2147483647i, 37526i, 2147483647i), vec3<i32>(-2147483647i, 1i, var_4.c), var_3.b) ^ reverseBits(firstLeadingBit(vec3<i32>(var_1.x, var_4.c, var_1.x)))));
}

