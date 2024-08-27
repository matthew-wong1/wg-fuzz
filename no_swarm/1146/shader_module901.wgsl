struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(19156u, 0u);

var<private> global1: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(1024f, Struct_1(vec2<i32>(-65968i, 0i), -1908f, 1i), Struct_2(Struct_1(vec2<i32>(-37174i, i32(-2147483648)), -1000f, 4618i)), Struct_1(vec2<i32>(i32(-2147483648), 33499i), 1120f, 1i), Struct_2(Struct_1(vec2<i32>(-18168i, 2707i), 668f, 0i))), Struct_3(445f, Struct_1(vec2<i32>(-12352i, -59387i), 1000f, i32(-2147483648)), Struct_2(Struct_1(vec2<i32>(22030i, 36543i), 694f, 0i)), Struct_1(vec2<i32>(i32(-2147483648), 36689i), 637f, 18113i), Struct_2(Struct_1(vec2<i32>(1i, -1i), -218f, -1i))), Struct_3(2242f, Struct_1(vec2<i32>(-25851i, 6076i), 308f, 1i), Struct_2(Struct_1(vec2<i32>(-38725i, -34908i), 434f, 2147483647i)), Struct_1(vec2<i32>(i32(-2147483648), -5063i), -724f, -1i), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -27095i), 107f, i32(-2147483648)))), Struct_3(-1563f, Struct_1(vec2<i32>(-4524i, -25622i), -1865f, -42441i), Struct_2(Struct_1(vec2<i32>(-1i, 1i), 1673f, 27640i)), Struct_1(vec2<i32>(4956i, 29897i), -356f, 2147483647i), Struct_2(Struct_1(vec2<i32>(-13323i, 2147483647i), 338f, 1i))));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    var var_0 = arg_2.b;
    global0 = _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(~25184u, u_input.c), _wgslsmith_div_vec2_u32(vec2<u32>(max(4088u, 70710u), 4294967295u), firstLeadingBit(~vec2<u32>(global0.x, u_input.c))), ~vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, 0u), countOneBits(global0.x))), countOneBits(firstLeadingBit(u_input.a)));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(762f, -2201f) - vec2<f32>(-1000f, 207f)), vec2<f32>(var_0.b, -386f), arg_0.yy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b, arg_1.d.b))), true))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + arg_2.e.a.b) + _wgslsmith_div_f32(arg_2.c.a.b, 1000f)), -1443f)));
    global0 = select(reverseBits(u_input.a), u_input.a, arg_0.x) & vec2<u32>(countOneBits(2949u), 48479u);
    return true;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1297f, 661f, 1000f), vec3<f32>(1000f, -670f, 1000f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1274f), _wgslsmith_f_op_f32(1581f - 1000f), -296f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1444f * 1238f), _wgslsmith_f_op_f32(f32(-1f) * -301f), _wgslsmith_f_op_f32(f32(-1f) * -525f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1373f, 1251f, -286f))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-565f, -490f, 676f))))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1514f - var_0.x) + var_0.x);
    let var_2 = Struct_2(Struct_1(-u_input.e, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_div_i32(u_input.b.x << (90739u % 32u), -37890i & u_input.e.x) | 2147483647i));
    let var_3 = func_3(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), global1[_wgslsmith_index_u32(global0.x, 4u)], Struct_3(var_1, var_2.a, var_2, var_2.a, Struct_2(var_2.a)), var_2.a) | false;
    let var_4 = var_2;
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(~countOneBits(vec4<u32>(2658u, 46252u, 4294967295u, 1u)), vec4<u32>(u_input.a.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(21741u, 108588u, global0.x, u_input.a.x), vec4<u32>(4294967295u, 1u, global0.x, 4294967295u)), global0.x)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.c, u_input.a.x), vec4<u32>(u_input.c, global0.x, 4294967295u, 13438u)), vec4<u32>(45175u | u_input.c, global0.x | 4294967295u, _wgslsmith_sub_u32(global0.x, 41353u), u_input.a.x)), ~(~vec4<u32>(global0.x, 0u, u_input.a.x, 0u)))), 4u)];
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    let var_0 = func_2();
    global0 = _wgslsmith_add_vec2_u32(~(~_wgslsmith_div_vec2_u32(~vec2<u32>(global0.x, u_input.a.x), vec2<u32>(arg_0, 4294967295u))), _wgslsmith_add_vec2_u32(~u_input.a ^ (~u_input.a & vec2<u32>(4294967295u, 1u)), u_input.a));
    let var_1 = max(~u_input.b, -((abs(u_input.b) >> (~vec3<u32>(0u, 0u, arg_0) % vec3<u32>(32u))) ^ vec3<i32>(~var_0.c.a.a.x, ~u_input.d.x, 5216i)));
    global1 = array<Struct_3, 4>();
    var var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1006f), func_2().b, Struct_2(var_0.c.a), var_0.c.a, Struct_2(var_0.d));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(~(~_wgslsmith_div_u32(9004u, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -939f), _wgslsmith_f_op_f32(-929f + -191f)))));
    var var_1 = Struct_2(func_2().e.a);
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(13438i, 2147483647i), ~vec2<i32>(-1i, var_1.a.c), _wgslsmith_add_vec2_i32(u_input.e, var_1.a.a)), vec2<i32>(8926i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(393f - 813f) + -1174f)), firstTrailingBit(_wgslsmith_sub_i32(firstTrailingBit(-3684i), u_input.d.x & 76792i))));
    global0 = u_input.a;
    let var_3 = func_2().e;
    var var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1356f, var_3.a.b, var_3.a.b, var_3.a.b) + vec4<f32>(689f, 1000f, -1226f, var_0.a.b))))))), vec4<f32>(var_1.a.b, _wgslsmith_f_op_f32(-1276f - func_2().a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(331f * _wgslsmith_f_op_f32(f32(-1f) * -169f)) - var_0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b - var_3.a.b) - -550f))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec3<f32>(func_2().d.b, _wgslsmith_f_op_f32(-var_2.a.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1217f - _wgslsmith_f_op_f32(var_2.a.b * -1274f))))));
}

