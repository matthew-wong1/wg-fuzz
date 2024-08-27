struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> u32 {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.c), vec2<u32>(abs(_wgslsmith_mod_u32(~11277u, arg_1 << (arg_1 % 32u))), 4294967295u));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1215f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, 921f), _wgslsmith_f_op_f32(749f - 1623f))), _wgslsmith_f_op_f32(sign(-100f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-159f, 1000f, -483f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-292f, -1740f, 354f), vec3<f32>(-363f, 242f, -2186f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -676f), -617f), -1293f, -1153f))));
    return u_input.a.x >> (_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(var_0.x, ~4294967295u) & _wgslsmith_add_u32(abs(4294967295u), ~u_input.a.x)) % 32u);
}

fn func_2() -> u32 {
    let var_0 = true & (~(func_3(u_input.b, 35994u) << (~59595u % 32u)) != (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, u_input.a.x, 4294967295u), vec3<u32>(1u, 1u, u_input.a.x)) & ~(u_input.c & 0u)));
    var var_1 = _wgslsmith_f_op_f32(-770f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1014f))), 577f))));
    let var_2 = Struct_5(~u_input.b.yx, Struct_1(_wgslsmith_add_i32(max(u_input.b.x, u_input.b.x), u_input.b.x) & -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 0i, -1i), vec4<i32>(0i, u_input.b.x, 0i, 12555i)), min(abs(-vec4<i32>(-24663i, 9614i, 28464i, u_input.b.x)), select(u_input.b, -u_input.b, vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1000f + -272f), 1023f, -321f, _wgslsmith_f_op_f32(f32(-1f) * -381f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1057f, -481f, 1655f, -210f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(456f, 464f, 298f, 858f))))), var_0)), (~u_input.a << ((u_input.a ^ u_input.a) % vec4<u32>(32u))) ^ select(select(vec4<u32>(u_input.c, 5905u, u_input.c, 1u), vec4<u32>(34507u, u_input.c, u_input.c, 4443u), vec4<bool>(var_0, var_0, true, true)), min(vec4<u32>(5990u, 4294967295u, u_input.a.x, 58533u), u_input.a), vec4<bool>(var_0, var_0, false, var_0)), -855f), Struct_2(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.xw) >> ((75933u | u_input.a.x) % 32u), abs(u_input.b.x) >> (u_input.c % 32u)), 1f), select(u_input.b.x >> (~(~4294967295u) % 32u), -min(u_input.b.x << (0u % 32u), u_input.b.x), true), all(vec4<bool>(false, select(var_0, var_0, false) && var_0, var_0, var_0)));
    let var_3 = Struct_2(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -803f)));
    var var_4 = countOneBits(2747u);
    return 23316u ^ ~firstTrailingBit(u_input.a.x);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3) -> u32 {
    let var_0 = 4294967295u <= (firstTrailingBit(_wgslsmith_mod_u32(arg_2.a.x, 45030u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, arg_2.a.x, arg_2.b), u_input.a)) & _wgslsmith_dot_vec3_u32(arg_2.a, ~_wgslsmith_sub_vec3_u32(u_input.a.wzy, u_input.a.www)));
    return _wgslsmith_clamp_u32(~(60618u >> (u_input.a.x % 32u)), 0u, func_2()) ^ ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_dot_vec3_u32(select(~vec3<u32>(func_1(Struct_2(-20472i, -1136f), 391f, Struct_3(vec3<u32>(u_input.a.x, 5522u, u_input.c), 1u, vec2<i32>(u_input.b.x, -26279i))), u_input.c, 31997u), _wgslsmith_mult_vec3_u32(u_input.a.wxy, vec3<u32>(40873u << (u_input.c % 32u), ~0u, ~u_input.a.x)), select(vec3<bool>(all(vec3<bool>(false, false, false)), false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true))), vec3<u32>(u_input.c, max(u_input.c, u_input.c), _wgslsmith_dot_vec2_u32(~max(u_input.a.yy, vec2<u32>(u_input.c, u_input.a.x)), u_input.a.xw)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1606f, _wgslsmith_f_op_f32(f32(-1f) * -1433f), _wgslsmith_f_op_f32(f32(-1f) * -450f), -1179f))));
    global0 = array<Struct_1, 27>();
    var var_3 = all(vec3<bool>(true, true, true)) & (false | any(vec3<bool>(true, true, true)));
    var var_4 = u_input.a.x;
    global0 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

