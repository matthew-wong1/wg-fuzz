struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<f32>,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 13798u;

var<private> global1: array<vec3<bool>, 8>;

var<private> global2: Struct_5 = Struct_5(vec4<bool>(false, true, true, false), Struct_3(Struct_2(Struct_1(vec2<f32>(841f, 1174f), -3981i, vec3<f32>(-1587f, 657f, 167f)), vec4<bool>(false, false, false, true), vec3<f32>(-591f, 2378f, -861f), 20884i, false), 23504i));

var<private> global3: array<vec3<i32>, 31>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_5) -> u32 {
    var var_0 = (arg_0.x >> (_wgslsmith_mod_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 23920u), vec2<u32>(4294967295u, 14805u))), countOneBits(_wgslsmith_div_u32(1u, u_input.a.x))) % 32u)) << (u_input.a.x % 32u);
    var_0 = _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(-(~vec4<i32>(arg_0.x, 18114i, -2147483647i, -16340i)), vec4<i32>(_wgslsmith_mod_i32(arg_2.b.b, arg_0.x), -12658i, arg_2.b.b >> (u_input.a.x % 32u), -1i)), ~abs((vec4<i32>(-1i, arg_0.x, -2147483647i, -30132i) >> (vec4<u32>(1238u, u_input.a.x, 1u, u_input.a.x) % vec4<u32>(32u))) | ~vec4<i32>(2147483647i, 12532i, 1i, arg_2.b.b)));
    global1 = array<vec3<bool>, 8>();
    global1 = array<vec3<bool>, 8>();
    global0 = u_input.a.x;
    return 27844u;
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4) -> vec4<bool> {
    return global2.b.a.b;
}

fn func_2() -> bool {
    var var_0 = 1u;
    var var_1 = Struct_5(func_4(Struct_4(firstLeadingBit(max(-48593i, global2.b.b)), func_3(vec2<i32>(global2.b.b, 0i), !vec4<bool>(global2.b.a.e, global2.a.x, global2.a.x, global2.b.a.b.x), Struct_5(vec4<bool>(global2.b.a.e, global2.a.x, global2.b.a.e, false), Struct_3(global2.b.a, 0i)))), global2.b.a.c.x, Struct_4(global2.b.a.a.b, u_input.a.x)), Struct_3(global2.b.a, global2.b.a.d));
    var_0 = u_input.a.x;
    let var_2 = !all(func_4(Struct_4(abs(var_1.b.a.a.b), 4294967295u >> (1u % 32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.b.a.c.x))), Struct_4(~global2.b.a.a.b, _wgslsmith_mod_u32(u_input.a.x, 0u))).yy);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.a.c.x, -846f) + global2.b.a.c.zx);
    return any(vec4<bool>(true, 17551i <= global2.b.a.d, !(~u_input.a.x == 11438u), true));
}

fn func_1() -> Struct_5 {
    global1 = array<vec3<bool>, 8>();
    global1 = array<vec3<bool>, 8>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1251f, 1300f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-605f, -1000f), global2.b.a.a.c.xz))), global2.b.b, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.b.a.c.x, _wgslsmith_f_op_f32(-149f + 229f), _wgslsmith_f_op_f32(f32(-1f) * -2260f)), vec3<f32>(_wgslsmith_div_f32(global2.b.a.c.x, global2.b.a.a.c.x), global2.b.a.a.a.x, global2.b.a.a.c.x)))), select(vec4<bool>(global2.b.a.e, func_2() | !global2.b.a.b.x, global2.a.x, (global2.b.a.a.b >= 2147483647i) & true), !global2.b.a.b, !(!(!vec4<bool>(global2.a.x, global2.b.a.b.x, global2.a.x, true)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.b.a.a.a.x, global2.b.a.c.x, global2.b.a.c.x), vec3<f32>(-127f, global2.b.a.c.x, 288f))))))), global2.b.a.d, all(!(!select(global2.a.zz, vec2<bool>(false, true), true))));
    var var_1 = vec2<bool>(global2.a.x, any(select(global2.b.a.b.yx, !(!vec2<bool>(var_0.b.x, global2.a.x)), !any(vec3<bool>(true, var_0.b.x, true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1141f, 1213f, -2059f, -966f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.x, 656f, -1055f, 541f))))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(266f)))) - var_0.a.c.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.a.x))))), -1360f, 542f));
    return Struct_5(vec4<bool>(true & (var_0.e && (false || var_0.e)), true, false, false), global2.b);
}

fn func_5(arg_0: Struct_5, arg_1: i32, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = global2.b.a;
    var var_1 = _wgslsmith_add_u32(~(~u_input.a.x), 0u);
    var var_2 = global2.a;
    var var_3 = _wgslsmith_f_op_f32(-global2.b.a.c.x);
    return global2.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 8>();
    global3 = array<vec3<i32>, 31>();
    global2 = Struct_5(!global2.a, Struct_3(func_5(func_1(), global2.b.b, u_input.a), _wgslsmith_add_i32(-55513i >> (~u_input.a.x % 32u), -2147483647i)));
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.b.a.c.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global2.b.a.a.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(710f, global2.b.a.c.x))), !global2.b.a.e))), _wgslsmith_f_op_f32(round(global2.b.a.a.c.x)), true));
    var var_1 = 115416u;
    global0 = u_input.a.x;
    let var_2 = 24776i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.b.a.a.a.x))), -_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_2, -1i), global2.b.a.d), min(firstTrailingBit(vec2<i32>(0i, var_2)), vec2<i32>(global2.b.a.d, global2.b.a.d) | vec2<i32>(-2147483647i, global2.b.b))), _wgslsmith_sub_vec4_u32(vec4<u32>(87579u, reverseBits(u_input.a.x), 1u, _wgslsmith_div_u32(abs(u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 0u), u_input.a))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 75546u), vec4<u32>(u_input.a.x, u_input.a.x, 67428u, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), 72485u, abs(u_input.a.x & 1u), select(_wgslsmith_mod_u32(u_input.a.x, 64147u), u_input.a.x, global2.a.x & false))));
}

