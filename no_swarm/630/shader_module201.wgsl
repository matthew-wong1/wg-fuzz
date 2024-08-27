struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

var<private> global2: array<vec3<u32>, 6>;

var<private> global3: array<vec2<f32>, 4>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> f32 {
    var var_0 = 4294967295u;
    global1 = u_input.a.x;
    var var_1 = abs(global0.b.a);
    global2 = array<vec3<u32>, 6>();
    var var_2 = global0.b.b;
    return _wgslsmith_f_op_f32(585f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-998f)) - _wgslsmith_f_op_f32(-335f - 280f)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec3<bool>) -> f32 {
    let var_0 = ~_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], ~reverseBits(_wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], global2[_wgslsmith_index_u32(u_input.a.x, 6u)])));
    var var_1 = _wgslsmith_mod_u32(abs(firstLeadingBit(0u)), min(var_0, _wgslsmith_div_u32(~var_0, 21562u)) >> (0u % 32u));
    var var_2 = 63542u;
    let var_3 = global0.b;
    var var_4 = global0.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(488f, -764f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(738f - 3095f) * 217f), _wgslsmith_f_op_f32(-239f - _wgslsmith_f_op_f32(trunc(1334f))))), arg_2.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec4_i32(abs(vec4<i32>(firstLeadingBit(arg_1.a.x >> (u_input.a.x % 32u)), firstLeadingBit(_wgslsmith_sub_i32(global0.b.a, 2391i)), _wgslsmith_mod_i32(1i, -2187i), 2147483647i)), global0.b.b);
    let var_1 = select(-firstTrailingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.a.x, -2147483647i), global0.b.b.xz), global0.a.zy)), arg_1.b.b.xw, any(select(!(!vec2<bool>(arg_2, arg_2)), !vec2<bool>(arg_2, arg_2), arg_2)));
    global2 = array<vec3<u32>, 6>();
    global2 = array<vec3<u32>, 6>();
    var var_2 = 0i;
    return arg_1;
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))), Struct_2(global0.b.b.yxy, global0.b), _wgslsmith_f_op_f32(func_3(global0.b.b.yz, global0.a, !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))) < 258f);
    var var_1 = var_0.b.b.wxx;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(262f, 672f, -1724f, -444f) - vec4<f32>(-1136f, 1030f, -255f, -682f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1541f, -430f, 147f, 873f)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-723f, 1234f, 267f, -871f) - vec4<f32>(-1973f, 215f, -746f, 352f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-864f, 824f, 641f, -1634f), vec4<f32>(481f, 317f, 462f, -1534f)))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), 202f)), _wgslsmith_f_op_f32(func_3(vec2<i32>(global0.a.x, var_0.a.x) & global0.a.xy, abs(vec3<i32>(var_0.b.a, var_1.x, var_0.b.a)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-883f, 695f)), _wgslsmith_f_op_f32(f32(-1f) * -1083f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(893f + 678f)))))), vec4<f32>(1f, 1f, 1f, 1f));
    let var_3 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<i32>(_wgslsmith_mult_i32(global0.a.x, -2147483647i), global0.a.x), -abs(vec3<i32>(var_1.x, 1i, var_1.x)), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)))), func_4(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(step(672f, -1485f))), _wgslsmith_f_op_f32(var_2.x + var_2.x), true)), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(-var_2.x)), func_4(-293f, func_4(814f, Struct_2(global0.a, Struct_1(2537i, global0.b.b)), false), true), select(u_input.a.x != 14148u, any(vec4<bool>(false, false, false, true)), true)), select(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)), (global0.b.b.x >> (u_input.a.x % 32u)) <= ~global0.b.a, true)), select(true, all(vec2<bool>(true, true)), any(vec3<bool>(0i >= global0.b.b.x, var_0.b.a > 28571i, 55442i == var_0.a.x))));
    let var_4 = global2[_wgslsmith_index_u32(~4294967295u, 6u)];
    return func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(153f, var_2.x)))), func_4(var_2.x, var_3, any(vec4<bool>(true, false, false, select(true, false, false)))), !any(vec4<bool>(true, true, select(false, false, true), any(vec2<bool>(true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b;
    let var_1 = ~u_input.a.x;
    let var_2 = global0.b;
    global0 = func_1();
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -519f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(710f, -927f)), _wgslsmith_div_f32(860f, 102f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -116f) + -368f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(271f, 1000f)))), 212f, true)), 142f);
    var_0 = Struct_1(_wgslsmith_mod_i32(global0.b.b.x, _wgslsmith_mult_i32(abs(~(-42884i)), func_1().a.x)), var_0.b);
    var var_4 = Struct_3(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, u_input.a) << (u_input.a % vec2<u32>(32u)), ~select(u_input.a, vec2<u32>(u_input.a.x, 1201u), true), vec2<u32>(u_input.a.x, max(46732u, 35209u))), max(max(abs(u_input.a), max(vec2<u32>(18172u, 48244u), vec2<u32>(7096u, u_input.a.x))), u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(909f))), Struct_1(global0.a.x, global0.b.b), min(~var_1, u_input.a.x), func_4(192f, func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-512f, var_3.x)))), Struct_2(global0.b.b.xyw, Struct_1(var_0.a, vec4<i32>(-1i, var_2.b.x, -11684i, -1i))), all(vec2<bool>(true, true))), false && any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-527f, var_4.b))), global0.b.b.x);
}

