struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<i32>, 2>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = global0.xzy;
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-1388f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -532f)))), arg_0.x), !vec4<bool>(all(vec3<bool>(true, true, true)), true, false, true), Struct_1((~u_input.a.yz | ~vec2<i32>(2147483647i, u_input.a.x)) | (min(vec2<i32>(0i, u_input.a.x), u_input.a.zw) & ~u_input.a.yw), -2147483647i, -u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -891f)), -2220f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(634f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, -237f))))), false);
    let var_2 = Struct_1(firstLeadingBit(select(_wgslsmith_mod_vec2_i32(u_input.a.xw, _wgslsmith_mod_vec2_i32(u_input.a.zw, vec2<i32>(var_1.c.b, 1i))), u_input.a.wx, false)), u_input.a.x, 824i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -185f, 1693f), vec3<f32>(var_1.c.d.x, -331f, global0.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) - vec3<f32>(-1366f, var_0.x, 1679f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2401f + -1054f), _wgslsmith_f_op_f32(sign(global0.x)), var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_1.c.e))))));
    let var_3 = any(var_1.b.yy);
    var var_4 = var_1;
    return global0.x;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec4<f32>) -> bool {
    var var_0 = vec3<i32>(firstTrailingBit(u_input.a.x), u_input.a.x, 1i);
    global1 = array<vec3<i32>, 2>();
    let var_1 = !vec3<bool>(~_wgslsmith_mod_i32(1i, u_input.a.x) < _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, var_0.x), u_input.a), -2147483647i < (1i ^ var_0.x), select(true, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), false))));
    var var_2 = select(!select(vec4<bool>(var_1.x, var_0.x > 0i, false, false), vec4<bool>(false, true, true, false), vec4<bool>(var_1.x, true, select(var_1.x, true, var_1.x), 1987f <= arg_2.x)), !(!(!(!vec4<bool>(true, var_1.x, var_1.x, false)))), select(!select(select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(false, false, var_1.x, true), vec4<bool>(var_1.x, false, true, var_1.x)), !vec4<bool>(true, false, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), false)), select(select(vec4<bool>(var_1.x, var_1.x, false, false), select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x), true), !var_1.x), !select(vec4<bool>(var_1.x, true, true, true), vec4<bool>(true, true, true, var_1.x), var_1.x), true), select(select(!vec4<bool>(var_1.x, true, var_1.x, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, var_1.x), true), -466f != arg_2.x), vec4<bool>(!var_1.x, true, all(var_1.zx), select(var_1.x, var_1.x, var_1.x)), var_1.x)));
    var var_3 = arg_2.xwx;
    return true;
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -937f);
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(arg_1.b.xz)), vec4<bool>(arg_1.a.b <= (u_input.a.x & -arg_1.a.a.x), all(vec4<bool>(true, true, true, true)), false, func_4(192f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), vec4<f32>(global0.x, _wgslsmith_f_op_f32(arg_0 + -206f), _wgslsmith_f_op_f32(func_3(global0.zyx)), _wgslsmith_f_op_f32(f32(-1f) * -948f)))), Struct_1(vec2<i32>(0i, arg_1.a.c), ~(firstTrailingBit(u_input.a.x) | select(u_input.a.x, -38090i, true)), _wgslsmith_mult_i32(2147483647i, -1i), _wgslsmith_f_op_vec3_f32(-global0.zww), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_1.a.e * vec4<f32>(arg_1.b.x, arg_1.a.e.x, global0.x, arg_1.a.d.x)))))), any(vec2<bool>(true, any(vec4<bool>(false, true, true, true)))));
    global0 = _wgslsmith_f_op_vec4_f32(-arg_1.a.e);
    let var_2 = 1000f;
    let var_3 = arg_1;
    return Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.c.e.x, var_1.c.e.x))))), var_1.b, arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_0)), 1f, var_2 < var_3.b.x)), -367f) <= _wgslsmith_div_f32(-667f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.e.x) * _wgslsmith_f_op_f32(-global0.x))));
}

fn func_5(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = 26168i;
    var var_1 = Struct_3(Struct_1(~(~arg_1 | arg_2.c.a), firstTrailingBit(u_input.a.x), 34039i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0.wxy))) * global0.xxw), vec4<f32>(442f, 508f, -980f, -872f)), vec3<f32>(_wgslsmith_f_op_f32(-arg_2.c.d.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(arg_2.c.e.x * global0.x), all(arg_2.b.zyw))))), 895f));
    var_1 = Struct_3(var_1.a, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1123f, global0.x), arg_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -755f)))), global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -661f)), 777f))));
    var var_2 = vec4<i32>(_wgslsmith_clamp_i32(~(-_wgslsmith_add_i32(var_0, -2147483647i)), _wgslsmith_dot_vec3_i32(firstLeadingBit(~vec3<i32>(10276i, 2147483647i, u_input.a.x)), vec3<i32>(2147483647i, var_0, arg_1.x) | _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, arg_2.c.a.x, arg_1.x), vec3<i32>(-1i, -1i, var_0))), u_input.a.x), abs(1i), arg_2.c.c, 1i);
    let var_3 = countOneBits(_wgslsmith_dot_vec2_u32(~(~firstLeadingBit(vec2<u32>(4294967295u, 55648u))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(38257u, 46915u), ~(~vec2<u32>(1u, 1u)), firstLeadingBit(vec2<u32>(1u, 6637u)) & select(vec2<u32>(88202u, 21227u), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(arg_2.b.x, arg_0)))));
    return arg_2.b.wy;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_2) -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, -1753f, -914f, -154f)) + arg_2.c.e)));
    let var_0 = arg_2.b.zwx;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.yy - arg_2.c.e.wx), vec2<f32>(_wgslsmith_f_op_f32(1000f + 407f), 2142f)), global0.xy, func_5(!(_wgslsmith_dot_vec3_i32(u_input.a.zww, vec3<i32>(arg_1.x, -3338i, arg_2.c.b)) <= (-2147483647i ^ u_input.a.x)), vec2<i32>(u_input.a.x, u_input.a.x << ((arg_0 & 30388u) % 32u)), func_2(-1271f, Struct_3(arg_2.c, vec3<f32>(arg_2.a.x, -941f, 493f))))));
    var var_2 = func_2(_wgslsmith_f_op_f32(-var_1.x), Struct_3(Struct_1(select(func_2(var_1.x, Struct_3(arg_2.c, global0.wzx)).c.a, vec2<i32>(83382i, 1i), false), arg_1.x << ((arg_0 << (arg_0 % 32u)) % 32u), 0i, global0.wyx, arg_2.c.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1923f, global0.x))))).b.yy;
    var var_3 = arg_2.c.c;
    return ~firstLeadingBit(22843i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 2>();
    var var_0 = _wgslsmith_add_vec4_i32(-(~(~u_input.a << (~vec4<u32>(36165u, 1681u, 96007u, 4282u) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(func_1(94500u, vec2<i32>(2147483647i, 0i), Struct_2(global0.zy, vec4<bool>(true, false, false, false), Struct_1(u_input.a.xx, u_input.a.x, 19598i, vec3<f32>(global0.x, global0.x, global0.x), vec4<f32>(global0.x, 172f, global0.x, -755f)), true)), _wgslsmith_mult_i32(0i, -49474i)), ~(~u_input.a.x)), -21263i, u_input.a.x, u_input.a.x));
    let var_1 = i32(-1i) * -(~var_0.x);
    var var_2 = vec3<i32>(var_0.x, 8725i, -_wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, ~var_0.x), 0i));
    var var_3 = ~vec3<u32>(~_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(4294967295u, 92056u)), min(0u, reverseBits(firstLeadingBit(35826u))), _wgslsmith_mult_u32(~6677u >> (0u % 32u), 1u >> (1u % 32u)));
    var_3 = reverseBits(~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.x, 4294967295u, 0u), vec3<u32>(1u, 9535u, var_3.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-730f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-107f, 365f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x)))), global0.x, global0.x) + vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-487f - global0.x)) - -367f), _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-global0.x)))));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~8231u));
}

