struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
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

var<private> global0: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(245f, 532f, 2106f), vec3<f32>(842f, -299f, -307f), vec3<f32>(414f, 523f, -1369f), vec3<f32>(841f, 398f, 526f), vec3<f32>(253f, 200f, 993f), vec3<f32>(919f, 515f, -133f), vec3<f32>(2271f, -311f, -138f), vec3<f32>(628f, 1000f, -524f), vec3<f32>(-224f, 239f, 971f), vec3<f32>(796f, -762f, -1010f), vec3<f32>(-927f, 1000f, -199f), vec3<f32>(1000f, -1209f, -609f), vec3<f32>(-1000f, -1372f, -302f), vec3<f32>(-182f, 523f, -2755f), vec3<f32>(445f, -1078f, 959f), vec3<f32>(-1000f, -336f, 923f), vec3<f32>(-415f, -662f, -1527f), vec3<f32>(567f, -1548f, 113f), vec3<f32>(518f, -965f, 1684f), vec3<f32>(-1429f, -396f, 312f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    var var_0 = Struct_3(_wgslsmith_clamp_i32(select(_wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_sub_vec4_i32(u_input.b, u_input.b)), max(~arg_1.a.b, arg_0.b), all(vec2<bool>(arg_1.b, true))), _wgslsmith_sub_i32(arg_0.b, -arg_0.b >> (43542u % 32u)), ~(-1i)), Struct_2(arg_1.a, arg_1.b && all(select(vec4<bool>(arg_1.b, true, false, true), vec4<bool>(arg_1.b, false, arg_1.b, arg_1.b), false)), arg_0));
    var_0 = Struct_3(arg_1.a.b, var_0.b);
    global0 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 20>();
    var var_1 = Struct_3(-2147483647i, var_0.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.c.c, var_1.b.c.c))))) - _wgslsmith_f_op_f32(arg_1.c.c + _wgslsmith_f_op_f32(arg_0.c * 1f))) != 1895f;
}

fn func_4(arg_0: bool) -> u32 {
    global0 = array<vec3<f32>, 20>();
    var var_0 = vec3<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(78761u, 34277u, u_input.c) >> (u_input.a % vec3<u32>(32u)), ~vec3<u32>(4294967295u, u_input.c, u_input.a.x)), min(1u, 0u)), reverseBits(47043u), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 10386u, u_input.c, u_input.a.x) ^ vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 15365u, u_input.a.x, u_input.c)), _wgslsmith_mult_u32(~1u, u_input.c ^ 1u)));
    var_0 = _wgslsmith_div_vec3_u32(abs(u_input.a), u_input.a);
    var_0 = u_input.a;
    var_0 = countOneBits(u_input.a);
    return var_0.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(u_input.b.x, Struct_2(Struct_1(func_4(func_3(Struct_1(4294967295u, -33287i, 1331f), Struct_2(Struct_1(34145u, u_input.b.x, 733f), true, Struct_1(2996u, -31609i, 481f)))), 26166i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1143f + -251f)))), all(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), Struct_1(4128u | min(55671u, u_input.c), _wgslsmith_clamp_i32(-u_input.b.x, -2041i, i32(-1i) * -7405i), _wgslsmith_f_op_f32(trunc(557f)))));
    return Struct_1(~49637u, 0i, var_0.b.a.c);
}

fn func_1() -> Struct_2 {
    return Struct_2(func_2(), true, func_2());
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(~abs(abs(_wgslsmith_div_i32(26704i, 2147483647i))), arg_1);
    let var_1 = Struct_2(Struct_1(91857u, _wgslsmith_mod_i32(49078i, select(arg_0.c.b, u_input.b.x, var_0.b.a.c != arg_0.a.c)), _wgslsmith_f_op_f32(var_0.b.c.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(489f - var_0.b.a.c)))), true, func_1().c);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.a.c, 1000f), vec2<f32>(arg_1.a.c, 2637f)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1036f, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-300f, -170f)), vec2<bool>(false, false))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.c, 258f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1134f, arg_0.a.c)) - vec2<f32>(938f, 2304f)) + vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.c.c, 572f)), _wgslsmith_f_op_f32(abs(417f))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.c, _wgslsmith_f_op_f32(round(var_1.c.c))));
    let var_4 = abs(u_input.a.xx) & ~_wgslsmith_add_vec2_u32(u_input.a.xz, u_input.a.xy);
    return func_1().c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.b.x, Struct_2(func_5(func_1(), Struct_2(func_2(), any(vec4<bool>(false, true, true, false)), Struct_1(0u, -53472i, 421f))), true, func_2()));
    global0 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 20>();
    let var_1 = select(-u_input.b.zzy, select(_wgslsmith_mod_vec3_i32(vec3<i32>(~(-24972i), 0i, 0i), firstTrailingBit(u_input.b.www) ^ min(u_input.b.yyz, vec3<i32>(u_input.b.x, u_input.b.x, var_0.a))), ~(u_input.b.xyz << (_wgslsmith_mod_vec3_u32(vec3<u32>(13724u, u_input.c, var_0.b.c.a), u_input.a) % vec3<u32>(32u))), vec3<bool>(true, all(vec3<bool>(var_0.b.b, true, var_0.b.b)) | func_1().b, select(false, true, true))), !(false | (all(vec2<bool>(false, true)) & (var_0.b.a.c < var_0.b.c.c))));
    var var_2 = u_input.a.xx;
    var var_3 = ~select(firstTrailingBit(~vec4<u32>(var_2.x, var_0.b.c.a, 77558u, var_0.b.c.a)), select(vec4<u32>(~0u, ~var_2.x, min(1u, 97963u), ~11276u), max(~vec4<u32>(var_0.b.c.a, u_input.a.x, 1u, u_input.c), ~vec4<u32>(var_2.x, 0u, 35103u, u_input.a.x)), select(!vec4<bool>(false, var_0.b.b, false, false), vec4<bool>(false, true, var_0.b.b, true), true)), vec4<bool>(true, ~var_0.b.a.b > ~24366i, var_0.b.b, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2().c + 875f) - var_0.b.a.c));
}

