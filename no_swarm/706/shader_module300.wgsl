struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
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

var<private> global0: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(-611f, 574f), vec2<f32>(283f, 489f), vec2<f32>(441f, 309f), vec2<f32>(-262f, -425f), vec2<f32>(-1000f, 910f), vec2<f32>(-787f, 122f), vec2<f32>(-778f, 379f), vec2<f32>(1399f, 1000f), vec2<f32>(-1000f, -1143f), vec2<f32>(-269f, 1629f), vec2<f32>(463f, 681f), vec2<f32>(1141f, -1655f), vec2<f32>(-674f, 1000f), vec2<f32>(-1075f, 749f), vec2<f32>(1047f, -592f), vec2<f32>(875f, -981f), vec2<f32>(1458f, -663f), vec2<f32>(2127f, 213f), vec2<f32>(1449f, -260f), vec2<f32>(-176f, -174f));

var<private> global1: array<vec4<bool>, 22>;

var<private> global2: u32 = 6172u;

var<private> global3: vec3<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec3<f32>) -> bool {
    var var_0 = !vec3<bool>(select(any(vec2<bool>(false, arg_1)), all(vec3<bool>(arg_1, false, arg_1)), _wgslsmith_div_f32(arg_0, arg_2.x) <= _wgslsmith_f_op_f32(-global3.x)), true, arg_1);
    let var_1 = Struct_4(vec3<bool>(arg_1, all(!select(vec3<bool>(var_0.x, true, false), vec3<bool>(false, arg_1, arg_1), var_0.x)), true));
    let var_2 = 2147483647i == _wgslsmith_mult_i32(u_input.c.x, -(u_input.c.x << (72756u % 32u)) >> (u_input.d.x % 32u));
    var_0 = !select(var_1.a, var_1.a, !(!(u_input.d.x > u_input.d.x)));
    global0 = array<vec2<f32>, 20>();
    return true && any(!(!(!var_1.a)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec2<f32>, arg_3: vec3<bool>) -> i32 {
    var var_0 = !vec2<bool>(any(arg_3), false);
    let var_1 = Struct_3(1u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, -1494f, arg_1, arg_2.x), vec4<f32>(global3.x, arg_2.x, arg_2.x, -275f), vec4<bool>(arg_3.x, var_0.x, var_0.x, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, -460f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -145f, -344f, 445f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, 381f, -621f, arg_1), vec4<f32>(3788f, 822f, arg_1, global3.x), false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, arg_1, -250f, -141f), vec4<f32>(arg_2.x, arg_1, -1028f, -1746f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, global3.x, -353f, global3.x))))));
    var_0 = select(vec2<bool>(!(~1u < _wgslsmith_clamp_u32(27252u, 1u, u_input.d.x)), any(vec3<bool>(any(arg_3), arg_3.x, false))), arg_3.zy, vec2<bool>(arg_3.x, func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x - 1341f), -404f), false, vec3<f32>(_wgslsmith_div_f32(arg_2.x, var_2.x), _wgslsmith_f_op_f32(var_2.x * arg_2.x), _wgslsmith_f_op_f32(-1000f * 107f)))));
    let var_3 = Struct_3(14325u);
    return u_input.c.x;
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = select(select(select(vec2<bool>(select(arg_0, false, arg_0), all(vec3<bool>(false, false, false))), select(!vec2<bool>(arg_0, false), vec2<bool>(false, false), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0))), _wgslsmith_clamp_u32(4294967295u, u_input.d.x, 22547u) < 0u), !(!select(vec2<bool>(true, arg_0), vec2<bool>(false, false), vec2<bool>(arg_0, true))), true), select(vec2<bool>(arg_0, true), vec2<bool>(all(select(vec2<bool>(arg_0, false), vec2<bool>(false, false), vec2<bool>(false, arg_0))), !arg_0), any(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), arg_0)))), vec2<bool>(u_input.d.x <= 23691u, arg_0));
    var var_1 = _wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-34332i, u_input.a.x, u_input.c.x, u_input.a.x) & vec4<i32>(-28103i, u_input.c.x, u_input.a.x, u_input.a.x), ~vec4<i32>(0i, 19174i, u_input.b, 0i)), vec4<i32>(u_input.a.x, 1i, 1i, u_input.a.x)), ~vec4<i32>(-func_2(u_input.d.x, global3.x, vec2<f32>(global3.x, 194f), vec3<bool>(true, arg_0, true)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), -u_input.c.x), firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-20337i, u_input.a.x))), u_input.b >> (48521u % 32u)));
    var var_2 = Struct_2((~u_input.d.x >> (_wgslsmith_div_u32(abs(4294967295u), u_input.d.x) % 32u)) >= (countOneBits(~3263u) << ((~u_input.d.x << (_wgslsmith_add_u32(u_input.d.x, u_input.d.x) % 32u)) % 32u)), select(select(!(!vec3<bool>(var_0.x, false, false)), select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, arg_0, false), vec3<bool>(false, true, true)), vec3<bool>(var_0.x, false, true), !vec3<bool>(arg_0, true, true)), _wgslsmith_clamp_u32(u_input.d.x, 58598u, 1u) > ~u_input.d.x), vec3<bool>(~28763u >= (u_input.d.x << (u_input.d.x % 32u)), arg_0, var_0.x), arg_0), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -856f) + _wgslsmith_f_op_f32(f32(-1f) * -613f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1100f, global3.x, global3.x, -1911f)))))), !vec3<bool>(var_0.x, false, true)), vec2<i32>(max(_wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(u_input.b, -28472i)), var_1.x), countOneBits(40170i)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.x, 1502f)) * 410f);
    return ~(-26415i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec4<i32>(firstTrailingBit(1i & _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.b), vec4<i32>(-1i, u_input.a.x, -11444i, 1i))), u_input.c.x, func_1(false), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.c.x, -39702i, 4058i, u_input.a.x)), select(vec4<i32>(0i, u_input.a.x, u_input.c.x, -1i), vec4<i32>(u_input.b, 14418i, -2147483647i, u_input.b), vec4<bool>(true, false, true, false))), ~abs(vec4<i32>(u_input.a.x, 2147483647i, 1i, -2147483647i)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.x, 259f, true)) * 1650f))), vec4<f32>(_wgslsmith_f_op_f32(select(-1055f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1458f)), global3.x), true)), global3.x, _wgslsmith_div_f32(1499f, global3.x), _wgslsmith_f_op_f32(-global3.x)), select(!select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), any(vec4<bool>(false, true, true, false))), false)));
    global1 = array<vec4<bool>, 22>();
    let var_2 = Struct_3(0u);
    var var_3 = Struct_2(var_1.c.x, !(!(!(!vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x)))), var_1, vec2<i32>(-1i, ~(~(~0i))));
    var var_4 = _wgslsmith_f_op_f32(trunc(var_3.c.b.x));
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x);
}

