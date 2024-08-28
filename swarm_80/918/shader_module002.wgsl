struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    global0 = select(vec4<bool>(true, any(select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), !global0.zw, vec2<bool>(global0.x, global0.x))), !all(vec3<bool>(false, true, false)), global0.x), !vec4<bool>(true, true, true, global0.x), vec4<bool>(!(!global0.x), global0.x && all(!vec3<bool>(global0.x, true, true)), _wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(1i, -1i)) != _wgslsmith_sub_i32(u_input.a >> (40986u % 32u), _wgslsmith_mod_i32(55293i, -56654i)), true));
    var var_0 = Struct_1(-879f, vec4<bool>(!(0i <= -u_input.a), (false && !global0.x) & global0.x, true, select(any(vec4<bool>(false, false, false, global0.x)), !global0.x, true)), ~max(~max(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(1i, 2147483647i, -1i)), -(~vec3<i32>(0i, u_input.a, u_input.a))));
    global0 = !var_0.b;
    var_0 = Struct_1(-247f, !vec4<bool>(true & (-355f > var_0.a), all(!vec4<bool>(global0.x, true, global0.x, false)), var_0.b.x, true), var_0.c);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-537f, var_0.a), vec2<f32>(-464f, -546f), global0.xz))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(420f, var_0.a)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(981f, var_0.a)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1172f, 859f), vec2<f32>(var_0.a, var_0.a)))))));
    return (arg_0.x ^ ~firstLeadingBit(1u)) == ~(~_wgslsmith_mod_u32(1357u, arg_0.x) >> (1u % 32u));
}

fn func_2() -> Struct_1 {
    global0 = select(!vec4<bool>(global0.x, func_3(vec4<u32>(4294967295u, 22402u, 29526u, 4281u)), !(!global0.x), global0.x), select(vec4<bool>(true, true, false, true), !select(vec4<bool>(true, true, true, true), !vec4<bool>(false, true, true, global0.x), !vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), all(!select(vec2<bool>(false, global0.x), !global0.yz, true)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(1732f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1299f, -1235f)), -1358f)))))), select(select(vec4<bool>(true, any(global0.xzw), false, global0.x), select(!vec4<bool>(false, false, true, global0.x), vec4<bool>(false, global0.x, global0.x, false), !vec4<bool>(global0.x, global0.x, false, false)), true), vec4<bool>(true, true, !global0.x, !global0.x), vec4<bool>(select(1u, 0u, true) < 1u, all(vec4<bool>(global0.x, false, global0.x, global0.x)) & (global0.x || false), false, false)), ~(~(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a)) >> (~vec3<u32>(4294967295u, 72695u, 39175u) % vec3<u32>(32u)))));
    global0 = vec4<bool>(global0.x, global0.x, any(select(vec3<bool>(!var_0.b.x, true, true), vec3<bool>(true, true, select(var_0.b.x, var_0.b.x, var_0.b.x)), var_0.b.zwy)), !func_3(~vec4<u32>(0u, 74114u, 12973u, 1195u)));
    var var_1 = Struct_2(Struct_1(-511f, var_0.b, ~(var_0.c ^ var_0.c)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-686f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a)) + 1000f)), vec4<bool>(!var_0.b.x, all(select(vec2<bool>(false, global0.x), vec2<bool>(var_0.b.x, false), vec2<bool>(false, true))), true, false), ~vec3<i32>(~18808i, u_input.a, ~(-38321i))), Struct_1(_wgslsmith_f_op_f32(-2602f * 327f), !select(vec4<bool>(false, false, global0.x, true), var_0.b, true), ~(vec3<i32>(var_0.c.x, -1i, u_input.a) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a, -1081f, -451f, var_1.a.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 1302f, 223f, var_0.a) + vec4<f32>(var_0.a, -400f, var_1.b.a, var_1.b.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2414f, var_1.c.a, 247f, var_0.a))), !(!var_1.a.b))))));
    return var_1.b;
}

fn func_1(arg_0: vec3<bool>) -> vec4<i32> {
    var var_0 = Struct_3(func_2(), func_2().a, arg_0.x);
    let var_1 = Struct_2(var_0.a, func_2(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(171f)))), vec4<bool>(global0.x, true, _wgslsmith_f_op_f32(select(var_0.a.a, 530f, true)) >= _wgslsmith_f_op_f32(-193f * var_0.a.a), any(vec2<bool>(var_0.c, var_0.a.b.x))), vec3<i32>(43849i & _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.a.c.x, u_input.a, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)), i32(-1i) * -2147483647i, var_0.a.c.x)));
    let var_2 = 1i <= (var_1.a.c.x | u_input.a);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2190f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-872f, var_1.b.a)) + _wgslsmith_f_op_f32(var_0.a.a * var_1.c.a))))));
    let var_4 = var_1;
    return firstLeadingBit(~vec4<i32>(~max(-7446i, var_4.a.c.x), -var_1.b.c.x, -var_0.a.c.x & abs(u_input.a), max(u_input.a, 15603i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-845f)));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(38222i, u_input.a)), vec2<i32>(1i, u_input.a)), u_input.a >> (1u % 32u), countOneBits(i32(-1i) * -1i), _wgslsmith_clamp_i32(u_input.a, ~u_input.a, u_input.a)), _wgslsmith_mod_vec4_i32(-func_1(vec3<bool>(global0.x, false, global0.x)), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), -vec4<i32>(u_input.a, u_input.a, -1i, -7242i)))), u_input.a);
    var var_2 = Struct_5(_wgslsmith_add_vec4_i32(~(-vec4<i32>(-9674i, var_1.x, u_input.a, -1i) << (vec4<u32>(7689u, 4294967295u, 16161u, 1u) % vec4<u32>(32u))), ~(-vec4<i32>(3436i, -40914i, -1i, var_1.x))));
    var var_3 = -650f;
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.a));
}

