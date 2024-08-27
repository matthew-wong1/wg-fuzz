struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
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

var<private> global0: array<vec2<u32>, 28>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_2) -> f32 {
    let var_0 = select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(!any(vec4<bool>(false, false, false, false)), any(vec4<bool>(true, true, true, true))), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, true)), true), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(false, all(vec4<bool>(true, false, false, true))))));
    var var_1 = Struct_2(arg_3.a);
    var_1 = arg_3;
    let var_2 = 38462i;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(151f * arg_3.a.c.x), _wgslsmith_f_op_f32(min(arg_2.x, -677f)), -1517f > arg_3.a.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.c.x)))))));
    return var_1.a.c.x;
}

fn func_2() -> i32 {
    let var_0 = -1099f;
    var var_1 = 37847u;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-708f, var_0)), -188f), _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(-var_0))), var_0, var_0) - vec4<f32>(-962f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(u_input.c.x, 27452u), -2147483647i, vec4<f32>(var_0, 1805f, -460f, var_0), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 1u)), u_input.a.x, vec3<f32>(var_0, -1000f, var_0), Struct_2(Struct_1(vec2<u32>(28782u, u_input.c.x), -2147483647i, vec4<f32>(459f, var_0, var_0, -245f), vec4<u32>(43820u, u_input.c.x, 9021u, 0u)))))), var_0, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(exp2(var_0))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 931f, var_0, var_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -2023f, 1027f)))))));
    global0 = array<vec2<u32>, 28>();
    var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), abs(1u), ~48716u, u_input.c.x | 6339u) >> (select(~vec4<u32>(7063u, 1u, 1u, u_input.c.x), max(vec4<u32>(u_input.c.x, u_input.c.x, 57863u, u_input.c.x), vec4<u32>(54005u, u_input.c.x, 0u, u_input.c.x)), true) % vec4<u32>(32u)), min(_wgslsmith_add_vec4_u32(vec4<u32>(656u, 4294967295u, 8408u, u_input.c.x), vec4<u32>(u_input.c.x, 0u, 32171u, 4294967295u)), ~vec4<u32>(2901u, u_input.c.x, 0u, u_input.c.x)) & (vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 17725u) & vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u))), ~u_input.c.x, u_input.c.x);
    return -1i;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> Struct_2 {
    global0 = array<vec2<u32>, 28>();
    var var_0 = func_2();
    var_0 = arg_1.a.b;
    var var_1 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(33524u, u_input.c.x), u_input.c.zy), _wgslsmith_sub_i32(-_wgslsmith_mod_i32(-1i, select(arg_1.a.b, 1i, true)), ~0i), arg_1.a.c, arg_1.a.d);
    var var_2 = max(vec4<u32>(abs(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.a.a.x, u_input.c.x, var_1.d.x, 0u)), vec4<u32>(u_input.c.x, arg_1.a.a.x, 124830u, arg_1.a.d.x) ^ var_1.d)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_1.d.wxy, u_input.c), _wgslsmith_clamp_u32(1u, u_input.c.x, var_1.a.x) >> (0u % 32u)), 1921u, 1u), var_1.d);
    return Struct_2(Struct_1(var_1.a, u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.x, arg_1.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.c.x)) - _wgslsmith_f_op_f32(919f + arg_1.a.c.x)), -162f, _wgslsmith_f_op_f32(f32(-1f) * -377f)), var_1.d));
}

fn func_4(arg_0: Struct_2) -> u32 {
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    var var_0 = Struct_2(arg_0.a);
    var var_1 = arg_0.a;
    var_1 = Struct_1(min(~firstTrailingBit(~vec2<u32>(21505u, u_input.c.x)), var_1.d.zx), firstLeadingBit(~arg_0.a.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.c.x))), _wgslsmith_div_f32(var_0.a.c.x, -903f), _wgslsmith_div_f32(-1130f, _wgslsmith_f_op_f32(ceil(arg_0.a.c.x))), var_0.a.c.x) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(110f, var_1.c.x, arg_0.a.c.x, 2262f)) - var_0.a.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.a.c)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.a.c.x, var_0.a.c.x, 640f) + var_0.a.c))))), vec4<u32>(abs(~var_0.a.a.x), 1u, ~((1u ^ var_0.a.d.x) & _wgslsmith_sub_u32(arg_0.a.a.x, var_1.d.x)), 27750u));
    return _wgslsmith_add_u32(max(~0u, func_1(vec4<bool>(true, var_1.c.x <= arg_0.a.c.x, false, true), func_1(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false), func_1(vec4<bool>(true, false, false, false), Struct_2(arg_0.a), false, true), u_input.c.x >= var_0.a.a.x, all(vec3<bool>(true, false, false))), true, true).a.d.x), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<u32>(_wgslsmith_add_u32(func_4(func_1(vec4<bool>(true, true, true, true), Struct_2(Struct_1(u_input.c.zy, 0i, vec4<f32>(-348f, 874f, 640f, -588f), vec4<u32>(u_input.c.x, u_input.c.x, 101824u, u_input.c.x))), true, true)), u_input.c.x), _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.x, ~reverseBits(_wgslsmith_div_u32(45755u, u_input.c.x))), _wgslsmith_add_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 8154u, u_input.c.x, u_input.c.x), abs(vec4<u32>(u_input.c.x, 78240u, u_input.c.x, 44438u))), countOneBits(~vec4<u32>(36547u, u_input.c.x, 0u, u_input.c.x))), vec4<u32>(~(u_input.c.x >> (4294967295u % 32u)), func_1(vec4<bool>(true, false, false, true), func_1(vec4<bool>(false, false, true, false), Struct_2(Struct_1(u_input.c.zx, -37950i, vec4<f32>(-645f, 1379f, -185f, 1000f), vec4<u32>(u_input.c.x, 24287u, u_input.c.x, u_input.c.x))), true, true), u_input.c.x <= 59755u, false).a.d.x, 23434u, ~(8534u & u_input.c.x))), !select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false))), vec4<bool>(true, any(vec4<bool>(false, false, true, false)), true, u_input.b.x >= -18013i), true));
    var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, abs(0u), 1u, _wgslsmith_div_u32(0u, u_input.c.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(62071u, 4294967295u, _wgslsmith_dot_vec3_u32(var_0.zxz, vec3<u32>(var_0.x, var_0.x, 1u)) >> (abs(60130u) % 32u), ~u_input.c.x), vec4<u32>(~4294967295u, abs(_wgslsmith_mult_u32(55576u, u_input.c.x)), _wgslsmith_sub_u32(min(u_input.c.x, u_input.c.x), u_input.c.x), ~(26925u << (var_0.x % 32u)))));
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 1u, 63944u), vec4<u32>(var_0.x, var_0.x, 1u, u_input.c.x))), ~(~abs(u_input.c.x))), u_input.c.x, _wgslsmith_sub_u32(~firstLeadingBit(u_input.c.x), ~(~(0u | u_input.c.x))), ~var_0.x);
    var var_2 = func_1(vec4<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), (u_input.b.x <= -86335i) & true, true | !any(vec3<bool>(true, true, false)), true), Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_1.x) >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)), vec2<u32>(0u, var_0.x) << (vec2<u32>(var_1.x, 1u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(var_1.wz, vec2<u32>(var_1.x, u_input.c.x), u_input.c.yy)), -1i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -236f), _wgslsmith_f_op_f32(1434f - 1525f), _wgslsmith_f_op_f32(trunc(-660f)), _wgslsmith_f_op_f32(f32(-1f) * -719f)), ~(vec4<u32>(4294967295u, 1u, var_1.x, var_0.x) >> (var_1 % vec4<u32>(32u))))), any(!vec2<bool>(false, 1u >= var_1.x)), false);
    var_0 = var_2.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, u_input.a.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-59333i, u_input.b.x, u_input.b.x, u_input.a.x), vec4<i32>(-45156i, -2154i, var_2.a.b, var_2.a.b)), u_input.b.x | _wgslsmith_add_i32(22389i, -u_input.a.x)));
}

