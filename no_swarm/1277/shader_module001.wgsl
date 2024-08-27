struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
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

var<private> global0: vec2<bool>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: f32) -> vec3<bool> {
    let var_0 = Struct_5(arg_1, Struct_1(1000f, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_2)))), _wgslsmith_f_op_f32(abs(arg_2))), _wgslsmith_dot_vec2_i32(abs(abs(vec2<i32>(arg_1.b.c, -14337i))), vec2<i32>(u_input.d.x, countOneBits(arg_1.b.c))), !vec3<bool>(arg_0.x >= 43111u, arg_1.b.c <= u_input.a, !global0.x)), Struct_2(Struct_1(-458f, _wgslsmith_f_op_vec2_f32(abs(arg_1.b.b)), -_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.a, u_input.b, 0i, 9179i)), !arg_1.b.d), arg_1.d.x, global0.x, arg_1.b), ~(u_input.c & arg_0.x));
    var var_1 = arg_1.b;
    var_1 = var_0.a.b;
    let var_2 = ~firstTrailingBit(~_wgslsmith_mod_vec3_u32(arg_0.zxx, vec3<u32>(23191u, u_input.c, 0u)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_1.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d)), arg_1.b.c, var_1.d);
    return arg_1.b.d;
}

fn func_2(arg_0: Struct_4) -> i32 {
    var var_0 = Struct_2(Struct_1(arg_0.b, vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1609f, -603f) * _wgslsmith_f_op_f32(max(arg_0.b, 1707f)))), 1i, func_3(vec4<u32>(4294967295u & u_input.c, _wgslsmith_div_u32(1u, 21945u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 4294967295u)), ~u_input.c), Struct_3(vec2<bool>(false, true), Struct_1(1000f, vec2<f32>(arg_0.b, -710f), u_input.d.x, vec3<bool>(global0.x, true, false)), any(vec3<bool>(false, global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b, arg_0.b), vec2<f32>(arg_0.b, arg_0.b), vec2<bool>(false, global0.x)))), 2539f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b))), _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(trunc(arg_0.b))))), select(arg_0.a, true, !all(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, arg_0.a), false))), Struct_1(-952f, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.b, arg_0.b)))))), -_wgslsmith_div_i32(arg_0.c.x, u_input.a) >> (_wgslsmith_clamp_u32(9874u, 4294967295u, 4294967295u) % 32u), !(!select(vec3<bool>(arg_0.a, arg_0.a, global0.x), vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, false, true)))));
    var var_1 = vec3<bool>(true, arg_0.a, true);
    var var_2 = Struct_1(1000f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1514f, arg_0.b)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(388f, 127f), vec2<f32>(arg_0.b, -688f))))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b, 878f), _wgslsmith_f_op_vec2_f32(-var_0.a.b), vec2<bool>(false, true))), var_0.d.b, var_1.zz))), 0i, vec3<bool>(true, var_1.x, var_1.x && any(select(vec2<bool>(true, false), var_1.xx, vec2<bool>(global0.x, arg_0.a)))));
    let var_3 = (1u >> (u_input.c % 32u)) | 1u;
    var_1 = var_0.d.d;
    return arg_0.c.x;
}

fn func_1() -> Struct_4 {
    let var_0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.c, 44014u), vec3<u32>(u_input.c, 52916u, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 0u, u_input.c))), u_input.c << (_wgslsmith_sub_u32(1u, u_input.c) % 32u)), ~vec2<u32>(reverseBits(u_input.c), u_input.c & 0u));
    global0 = !vec2<bool>(global0.x, true);
    let var_1 = -abs(~_wgslsmith_mult_i32(u_input.a ^ 1i, func_2(Struct_4(global0.x, 456f, vec3<i32>(15703i, u_input.d.x, u_input.a)))));
    let var_2 = 1u;
    var var_3 = ~(~vec3<i32>(_wgslsmith_sub_i32(select(u_input.b, 1i, true), _wgslsmith_div_i32(-21806i, var_1)), _wgslsmith_mult_i32(func_2(Struct_4(global0.x, 1464f, vec3<i32>(-5418i, u_input.b, var_1))), u_input.d.x), firstTrailingBit(abs(38785i))));
    return Struct_4(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1412f, -1436f), _wgslsmith_f_op_f32(abs(499f)))) + _wgslsmith_f_op_f32(f32(-1f) * -798f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(913f, 956f)))), vec3<i32>(~(~u_input.d.x), -24595i, 2147483647i));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec2<bool>) -> f32 {
    var var_0 = u_input.c;
    var var_1 = func_3(vec4<u32>(~(~0u), ~u_input.c, 23982u, max(_wgslsmith_mod_u32(u_input.c << (33158u % 32u), 8355u), 83328u)), Struct_3(vec2<bool>(func_3(~vec4<u32>(13452u, 4294967295u, u_input.c, 1208u), Struct_3(vec2<bool>(true, global0.x), Struct_1(arg_0.b, vec2<f32>(670f, -620f), arg_0.c.x, vec3<bool>(false, global0.x, false)), true, vec2<f32>(arg_0.b, -222f)), _wgslsmith_f_op_f32(round(arg_0.b))).x, true), Struct_1(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1273f, -353f) * vec2<f32>(1646f, -407f))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, arg_1.x, u_input.b), arg_0.c), !select(vec3<bool>(true, false, global0.x), vec3<bool>(false, false, false), vec3<bool>(arg_0.a, arg_2.x, true))), global0.x, vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(trunc(arg_0.b)))), -1000f).x;
    var var_2 = reverseBits(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, u_input.c, u_input.c), firstTrailingBit(vec3<u32>(u_input.c, 0u, 71487u))), _wgslsmith_clamp_u32(4294967295u, 47528u, 16156u)));
    let var_3 = arg_1;
    var var_4 = vec3<u32>(~u_input.c, ~_wgslsmith_div_u32(select(_wgslsmith_clamp_u32(4294967295u, u_input.c, u_input.c), 42274u, true), _wgslsmith_add_u32(1u, 0u)), 4294967295u);
    return _wgslsmith_f_op_f32(f32(-1f) * -816f);
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: f32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1513f, arg_0, -171f), vec3<f32>(-642f, arg_2, arg_2)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, -357f, arg_2), vec3<f32>(-1997f, 178f, arg_2)))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(529f, arg_0, arg_0)))))));
    global0 = !(!(!(!arg_1.xz)));
    let var_1 = select(arg_1, vec3<bool>((_wgslsmith_mod_i32(u_input.d.x, -2147483647i) >= u_input.a) & arg_1.x, all(arg_1) | func_1().a, !arg_1.x), !(!select(select(vec3<bool>(global0.x, arg_1.x, global0.x), vec3<bool>(false, arg_1.x, true), arg_1), arg_1, false & arg_1.x)));
    global0 = vec2<bool>(true | global0.x, false);
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.xy)));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 568f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(func_4(func_1(), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(1i, u_input.a, u_input.b, u_input.a)), _wgslsmith_add_vec4_i32(~u_input.d, vec4<i32>(-1i, u_input.a, -2947i, u_input.d.x) & u_input.d)), select(!func_3(vec4<u32>(u_input.c, u_input.c, 112041u, u_input.c), Struct_3(vec2<bool>(global0.x, false), Struct_1(2006f, vec2<f32>(-1064f, 771f), u_input.a, vec3<bool>(true, global0.x, false)), true, vec2<f32>(118f, 820f)), -365f).yx, select(!vec2<bool>(global0.x, false), vec2<bool>(global0.x, true), global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), !vec2<bool>(global0.x, false))))), !vec3<bool>(any(vec3<bool>(false, false, false)), !(u_input.c < u_input.c), any(vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-163f - -766f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-119f * _wgslsmith_f_op_f32(-847f - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-610f - 1791f)), true))));
}

