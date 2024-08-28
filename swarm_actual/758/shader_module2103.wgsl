struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    let var_0 = abs(vec3<u32>(reverseBits(47290u), 1u, reverseBits(~(~u_input.e))));
    let var_1 = ~_wgslsmith_mod_u32(var_0.x, 0u);
    let var_2 = Struct_1(vec3<f32>(arg_2.a.c, _wgslsmith_f_op_f32(arg_2.a.c * _wgslsmith_f_op_f32(max(arg_2.a.c, _wgslsmith_f_op_f32(arg_0.a + arg_0.a)))), 1844f), arg_2.a.b, _wgslsmith_f_op_f32(min(-199f, arg_1.c)), _wgslsmith_clamp_u32(4294967295u, var_0.x, _wgslsmith_div_u32(~1u, ~u_input.c.x)) <= 0u);
    var var_3 = !vec3<bool>(true, true, true | arg_2.a.d);
    var var_4 = vec2<i32>(u_input.b & -1i, var_2.b);
    return var_2.b;
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> i32 {
    var var_0 = all(!select(select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, true, arg_1, true), true), !vec4<bool>(arg_1, arg_1, true, true), select(vec4<bool>(arg_1, arg_1, arg_1, false), !vec4<bool>(arg_1, arg_1, arg_1, arg_1), all(vec3<bool>(arg_1, arg_1, true)))));
    var var_1 = -u_input.d;
    var var_2 = ~vec2<u32>(u_input.e, u_input.a);
    var_1 = _wgslsmith_mod_i32(-2147483647i, arg_0.x);
    var var_3 = !select(vec4<bool>(all(vec4<bool>(false, false, arg_1, false)), true, true, select(all(vec3<bool>(arg_1, false, false)), all(vec2<bool>(arg_1, arg_1)), true)), !(!select(vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true))), vec4<bool>(~var_2.x <= firstLeadingBit(var_2.x), false, !arg_1, _wgslsmith_add_i32(u_input.b, 15359i) > 1i));
    return u_input.b | -2147483647i;
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = ~(-countOneBits(vec3<i32>(_wgslsmith_div_i32(u_input.b, 1i), firstLeadingBit(u_input.b), u_input.b >> (56384u % 32u))));
    var_0 = ~(-_wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.d, var_0.x), vec3<i32>(31744i, 12941i, -35816i), vec3<i32>(-2147483647i, var_0.x, u_input.d))), vec3<i32>(firstLeadingBit(-6759i), func_3(vec3<i32>(u_input.d, var_0.x, 0i), false), -2147483647i ^ var_0.x), vec3<i32>(var_0.x, 48832i, ~36885i)));
    let var_1 = !select(select(vec4<bool>(any(vec3<bool>(false, true, false)), 30373u <= arg_0, false, 1u != arg_0), vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.a >= u_input.a, true, any(vec3<bool>(false, false, true)))), vec4<bool>(true, false, true, false), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true))));
    let var_2 = _wgslsmith_dot_vec4_i32(max(~countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_0.x, -2147483647i, var_0.x), vec4<i32>(u_input.d, 13350i, 22336i, -34118i))), vec4<i32>(~_wgslsmith_mult_i32(u_input.d, var_0.x), u_input.d, _wgslsmith_add_i32(u_input.d, u_input.b ^ 1i), _wgslsmith_mult_i32(~3243i, var_0.x))), vec4<i32>(26473i, var_0.x ^ -1i, _wgslsmith_mult_i32(var_0.x & var_0.x, ~2147483647i) | _wgslsmith_dot_vec4_i32(vec4<i32>(45022i, var_0.x, u_input.b, u_input.d), vec4<i32>(u_input.b, -2535i, var_0.x, u_input.d) ^ vec4<i32>(-72791i, var_0.x, var_0.x, u_input.d)), ~_wgslsmith_add_i32(-2147483647i, var_0.x) & u_input.b));
    var var_3 = vec4<bool>(75507u <= _wgslsmith_mult_u32(arg_0, u_input.a), all(!(!(!vec3<bool>(false, var_1.x, false)))), true, true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-765f)) - -1172f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 794f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1565f)) + _wgslsmith_div_f32(1724f, -1595f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global0 = (!(func_1(Struct_4(-1805f, true, vec2<f32>(-170f, 1201f)), Struct_1(vec3<f32>(1019f, -136f, 726f), -2147483647i, -554f, false), Struct_2(Struct_1(vec3<f32>(-504f, -1000f, -1447f), u_input.b, -1000f, false))) > -22528i) == ((abs(u_input.a) != 28713u) != true)) || false;
    var var_0 = false != (_wgslsmith_f_op_f32(func_2(u_input.c.x << (u_input.e % 32u))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -210f))));
    var var_1 = vec3<bool>(!all(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, any(vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, true, u_input.d > -1i))));
    let var_2 = ~countOneBits(vec2<u32>(u_input.a, 1u));
    var_1 = !select(!select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), all(vec3<bool>(true, var_1.x, true))), select(select(vec3<bool>(true, false, var_1.x), vec3<bool>(true, true, var_1.x), select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.x)), select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, true, false), vec3<bool>(false, var_1.x, false)), !vec3<bool>(var_1.x, var_1.x, true), all(vec2<bool>(var_1.x, false))), any(vec2<bool>(true, false))), select(select(!vec3<bool>(var_1.x, true, var_1.x), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, false, false), var_1.x), select(vec3<bool>(false, false, var_1.x), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x))), select(vec3<bool>(false, false, var_1.x), !vec3<bool>(var_1.x, var_1.x, false), !var_1.x), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(var_1.x, var_1.x, true))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-231f, 708f, -752f), vec3<f32>(557f, 1345f, -1925f), vec3<bool>(var_1.x, var_1.x, true))), vec3<f32>(858f, -1189f, 793f), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, true, var_1.x), vec3<bool>(false, var_1.x, false)))))), 1i, _wgslsmith_f_op_f32(max(969f, _wgslsmith_f_op_f32(sign(-378f)))), -3875i != (i32(-1i) * -min(1i, u_input.d)));
    let var_4 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(50317i, _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.c.x) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(countOneBits(u_input.c.zz), min(u_input.c.ww, vec2<u32>(u_input.a, u_input.a)))), vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(95041u, 6574u, var_2.x), _wgslsmith_clamp_vec3_u32(u_input.c.zxy, vec3<u32>(u_input.e, var_2.x, u_input.c.x), u_input.c.zxw)))));
}

