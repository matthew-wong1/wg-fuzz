struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(0i, 48721i, -57663i, -25576i), false, vec2<f32>(562f, -119f));

var<private> global3: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(Struct_1(vec4<i32>(-646i, -2382i, 30223i, -24612i), false, vec2<f32>(-1259f, 468f)), vec4<bool>(true, false, true, true), vec2<u32>(9339u, 53845u), Struct_2(vec2<u32>(0u, 0u), vec4<f32>(1205f, 1710f, 1000f, -327f)), Struct_1(vec4<i32>(i32(-2147483648), 30996i, 5539i, -59770i), true, vec2<f32>(-754f, 1000f))));

var<private> global4: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = false;
    global1 = 4294967295u;
    let var_1 = Struct_1(firstLeadingBit(_wgslsmith_add_vec4_i32(min(vec4<i32>(u_input.b.x, -1i, u_input.b.x, global2.a.x), global2.a >> (vec4<u32>(4294967295u, 9609u, 5298u, 28855u) % vec4<u32>(32u))), ~(vec4<i32>(-1i, 1i, 24305i, 1741i) & global2.a))), false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2.c.x + -1549f), _wgslsmith_f_op_f32(floor(1000f)))), global2.c));
    global3 = array<Struct_3, 1>();
    let var_2 = Struct_3(var_1, vec4<bool>(true, var_1.b, true, !(3274u > _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(34968u, 14211u)))), vec2<u32>(1u, 0u), Struct_2(select(~countOneBits(vec2<u32>(1u, 1u)), max(vec2<u32>(30950u, 4294967295u), vec2<u32>(4294967295u, 4294967295u)), select(global4.yx, global4.wy, select(global4.wz, vec2<bool>(true, false), global4.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, var_1.c.x, var_1.c.x, 917f) * vec4<f32>(var_1.c.x, global2.c.x, 622f, -321f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-920f, 373f, -682f, -1654f), vec4<f32>(-1507f, var_1.c.x, -1124f, var_1.c.x)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(1100f, global2.c.x, 548f, var_1.c.x), vec4<f32>(-3480f, 299f, -1995f, var_1.c.x)))))), var_1);
    return firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_sub_u32(firstLeadingBit(43519u), var_2.d.a.x) << (~1u % 32u), _wgslsmith_sub_u32(4294967295u, 1u)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = (vec2<u32>(_wgslsmith_div_u32(1u, func_3(false)), 1u) << (abs(vec2<u32>(1u, 1u)) % vec2<u32>(32u))) & vec2<u32>(~4294967295u, 4294967295u);
    global2 = arg_0;
    let var_1 = arg_0;
    var var_2 = any(vec4<bool>(all(vec4<bool>(all(vec2<bool>(arg_0.b, false)), false, global4.x & global2.b, false)), (!global4.x == !var_1.b) | false, true, true));
    var_2 = any(vec4<bool>(false, true, select(true, any(!vec3<bool>(global2.b, true, false)), global4.x), arg_0.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.c.x)));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    global3 = array<Struct_3, 1>();
    let var_0 = firstLeadingBit(vec4<i32>(20500i, global2.a.x, reverseBits(_wgslsmith_dot_vec4_i32(global2.a, global2.a)), max(-u_input.b.x, ~(-69212i))) & vec4<i32>(-45370i, u_input.a, global2.a.x, global2.a.x));
    var var_1 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1585f, 1000f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(global2.c, global2.c))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1 + arg_1), global2.c.x))), global2.b, arg_0, global4.yw, true);
    global1 = _wgslsmith_clamp_u32(arg_2.x, 64546u, select(~5193u, abs(~54907u), _wgslsmith_mod_u32(1u, 1u) != arg_2.x));
    global2 = Struct_1(var_0, true, vec2<f32>(var_1.a.x, 904f));
    return Struct_1(~var_0, !(!any(!vec4<bool>(global2.b, var_1.b, global2.b, false))), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) * -1560f))));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_3) -> vec2<u32> {
    let var_0 = 1010f;
    global1 = firstLeadingBit(30145u);
    global2 = arg_3.e;
    var var_1 = ~(~4294967295u);
    global2 = func_4(arg_3.e.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(func_2(arg_3.e))))), vec4<u32>(arg_0, _wgslsmith_sub_u32(23360u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_3.c.x, 68247u, 0u, 0u), vec4<u32>(52802u, arg_0, 1u, 1u), arg_3.b), vec4<u32>(arg_0, arg_3.d.a.x, 1u, 1u) & vec4<u32>(28439u, arg_0, 234u, arg_0))), 21845u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_0, 24008u, arg_0)), ~vec3<u32>(12929u, 4294967295u, 4294967295u))));
    return arg_3.d.a >> (~vec2<u32>(~1u, firstLeadingBit(~arg_3.c.x)) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(firstLeadingBit(~func_1(0u, vec3<bool>(false, global4.x, global4.x), global2.a.x, Struct_3(Struct_1(vec4<i32>(2147483647i, -5341i, global2.a.x, 64928i), false, vec2<f32>(global2.c.x, global2.c.x)), vec4<bool>(true, false, true, global2.b), vec2<u32>(34780u, 1u), Struct_2(vec2<u32>(1u, 4294967295u), vec4<f32>(global2.c.x, -702f, global2.c.x, global2.c.x)), Struct_1(vec4<i32>(0i, u_input.b.x, 2147483647i, 1i), true, vec2<f32>(global2.c.x, global2.c.x))))));
    global4 = vec4<bool>(any(global4.xzw), true, global4.x, global2.b);
    let var_1 = vec4<f32>(224f, global2.c.x, _wgslsmith_f_op_f32(floor(2032f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1750f) + global2.c.x) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(349f, -293f)))));
    var var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1.x, 1087f, global2.b)), _wgslsmith_f_op_f32(min(global2.c.x, global2.c.x)), global2.b)))), global2.c.x), any(vec4<bool>(true, func_4(var_1.x, var_1.x, vec4<u32>(var_0.x, var_0.x, 1u, 49011u)).a.x >= 1i, true, !(-1i > global2.a.x))), -575f, select(select(vec2<bool>(global2.b, false), vec2<bool>(!global2.b, select(true, global2.b, global4.x)), vec2<bool>(all(vec3<bool>(global4.x, global4.x, true)), all(global4.wy))), select(vec2<bool>(false, any(vec4<bool>(global2.b, global4.x, global2.b, global4.x))), global4.yz, !any(vec3<bool>(global2.b, false, global2.b))), global4.x), true);
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(356f, ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 17627u, 4294967295u, 1u) >> (vec4<u32>(var_0.x, var_0.x, var_0.x, 0u) % vec4<u32>(32u)), countOneBits(vec4<u32>(var_0.x, var_0.x, 0u, 20847u))) ^ ~vec4<u32>(_wgslsmith_mult_u32(var_0.x, var_0.x), max(1u, 20411u), 1u, ~0u));
}

