struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_4,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_5;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = global0.a;
    return _wgslsmith_add_u32(43609u, ~_wgslsmith_sub_u32(~u_input.b.x << (u_input.b.x % 32u), abs(u_input.d)));
}

fn func_2(arg_0: f32, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: Struct_4) -> f32 {
    let var_0 = global0.c;
    let var_1 = select(-20972i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_1.a.x, -global0.a.x), ~0i << (1u % 32u), ~arg_1.a.x), arg_2.x != ~(16994u << (func_3(false) % 32u)));
    let var_2 = arg_2.x;
    global0 = Struct_5(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(-28968i, u_input.a, global1.a.x, global0.a.x), min(global1.a, vec4<i32>(-14536i, u_input.a, u_input.a, 1i)), arg_1.a) & global0.a, global1.b, true);
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0))));
    return global0.b.c.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1065f, arg_2.c.a, -1874f), vec3<f32>(-1807f, arg_2.a.x, -129f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-493f, -827f, 111f) + vec3<f32>(-390f, global0.b.c.a, -861f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-710f, 644f, 973f), vec3<f32>(-842f, 1306f, global0.b.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1270f, global1.b.b.x)), select(vec3<bool>(false, false, global0.c), vec3<bool>(true, global0.c, true), global1.c)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(783f, global1.b.a.x, -1884f) * vec3<f32>(-352f, global1.b.b.x, arg_2.b.x)), _wgslsmith_div_vec3_f32(vec3<f32>(803f, arg_2.c.a, global0.b.a.x), vec3<f32>(-361f, 1000f, global0.b.b.x)), false || global1.c)), vec3<f32>(-727f, _wgslsmith_f_op_f32(min(916f, global0.b.a.x)), _wgslsmith_f_op_f32(func_2(-2773f, Struct_5(vec4<i32>(1i, arg_3.c, global1.a.x, global0.a.x), arg_2, global1.c), u_input.b.xwx, Struct_4(global0.b.a, arg_2.b, global1.b.c)))), vec3<bool>(all(vec3<bool>(false, false, true)), global0.c, true)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.c.a, -860f, _wgslsmith_f_op_f32(round(1089f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1010f, -743f, arg_2.a.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-526f, arg_2.a.x, -1000f), vec3<f32>(arg_2.b.x, 1200f, global0.b.c.a), vec3<bool>(false, true, true))), select(vec3<bool>(true, false, true), vec3<bool>(true, arg_3.d, global0.c), arg_3.d))), _wgslsmith_div_vec3_f32(vec3<f32>(327f, global1.b.a.x, -1018f), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global1.b.a.x, global1.b.b.x), vec3<f32>(arg_2.a.x, -326f, 198f))), arg_3.d)))));
    var var_1 = abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, 2147483647i), global0.a.x));
    var var_2 = global0.a;
    var var_3 = select(vec2<bool>(true, true), !(!select(select(vec2<bool>(true, false), vec2<bool>(global0.c, arg_3.d), arg_3.d), select(vec2<bool>(false, true), vec2<bool>(global1.c, global1.c), global1.c), vec2<bool>(true, true))), global1.c);
    let var_4 = 1i;
    return Struct_2(arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a.x));
    var var_1 = _wgslsmith_mult_i32(global0.a.x, ~2404i);
    var var_2 = func_1(max(-vec2<i32>(global0.a.x, _wgslsmith_sub_i32(-2487i, 0i)), (vec2<i32>(-1i) * -global0.a.wz) | vec2<i32>(abs(2147483647i), global0.a.x)), 1u, global0.b, Struct_3(61702u, ~(~reverseBits(vec2<u32>(u_input.c.x, u_input.d))), 1i, global1.c));
    var var_3 = 4159i;
    global0 = Struct_5(-_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global1.a.x, -38055i), 17934i, 1i, _wgslsmith_mult_i32(global1.a.x, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(-1030i, -55335i, 12339i, u_input.a), vec4<i32>(-25754i, 2147483647i, global1.a.x, -24951i))), Struct_4(_wgslsmith_div_vec2_f32(global0.b.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b.a - vec2<f32>(global1.b.a.x, var_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(524f, global0.b.b.x) * global1.b.b) + global1.b.a)), func_1(global1.a.xy, 0u ^ u_input.d, Struct_4(_wgslsmith_f_op_vec2_f32(global0.b.b + global1.b.b), global0.b.b, func_1(vec2<i32>(u_input.a, 21753i), u_input.b.x, global0.b, Struct_3(u_input.d, u_input.b.zy, global0.a.x, false))), Struct_3(u_input.b.x, u_input.c, global0.a.x ^ -4481i, true))), true);
    let var_4 = Struct_1(select(vec2<bool>(!(true | global0.c), true), !(!vec2<bool>(global0.c, false)), false));
    var var_5 = ~reverseBits(_wgslsmith_mod_i32(~u_input.a, ~(-7103i))) ^ _wgslsmith_div_i32(reverseBits(-5928i), global0.a.x & countOneBits(_wgslsmith_mult_i32(0i, -1i)));
    var_2 = Struct_2(func_1(global1.a.wy << (_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(2592u, u_input.b.x)), abs(vec2<u32>(33684u, u_input.d))) % vec2<u32>(32u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(abs(u_input.b.wzz), _wgslsmith_mult_vec3_u32(u_input.b.xzy, u_input.b.yzy)), 46738u), global0.b, Struct_3(~(~u_input.c.x), _wgslsmith_mult_vec2_u32(~u_input.c, u_input.b.yx), u_input.a, true)).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(33293i, global0.a.x), -2147483647i, -abs(2147483647i)), firstTrailingBit(_wgslsmith_clamp_i32(global1.a.x, -u_input.a, i32(-1i) * -2147483647i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, global1.b.a.x, global1.b.b.x, global0.b.b.x) + vec4<f32>(133f, global1.b.b.x, var_2.a, var_0)))))), vec4<f32>(_wgslsmith_f_op_f32(-1570f + -1275f), _wgslsmith_f_op_f32(532f - _wgslsmith_f_op_f32(-global0.b.a.x)), -1011f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1193f))))), abs(countOneBits(_wgslsmith_mult_vec4_i32(min(vec4<i32>(global0.a.x, global1.a.x, -40620i, 1i), vec4<i32>(global0.a.x, global0.a.x, u_input.a, global0.a.x)), global1.a >> (u_input.b % vec4<u32>(32u))))));
}

