struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(22892u, Struct_1(54315u, 0i), vec3<f32>(-965f, -514f, -1000f), 260f);

var<private> global1: array<i32, 24> = array<i32, 24>(22927i, 0i, -24387i, 9982i, -15243i, -1i, 1i, -68311i, -1i, 0i, 6049i, i32(-2147483648), i32(-2147483648), -17618i, 26792i, 5430i, 0i, -180i, -40536i, 60384i, 36147i, -1i, 1i, 28493i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: f32, arg_3: vec2<u32>) -> u32 {
    var var_0 = arg_1.c;
    var var_1 = true;
    let var_2 = (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, arg_3.x, arg_1.b.a, arg_3.x), vec4<u32>(55824u, arg_1.b.a, 4294967295u, arg_1.b.a)), 1u) >= countOneBits(58680u)) && false;
    var_1 = all(select(vec4<bool>(arg_0.x, true, false, (arg_3.x > arg_1.b.a) || arg_0.x), !vec4<bool>(true, !var_2, false, true), arg_0.x));
    var_1 = !all(vec4<bool>(false, arg_0.x, true, true));
    return ~arg_1.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = arg_1.b;
    global1 = array<i32, 24>();
    global0 = arg_1;
    global1 = array<i32, 24>();
    let var_1 = -vec4<i32>(27373i, _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(arg_3, global1[_wgslsmith_index_u32(arg_1.a, 24u)])), u_input.b), ~_wgslsmith_mult_i32(-arg_3, firstLeadingBit(global1[_wgslsmith_index_u32(global0.a, 24u)])), 41518i);
    return Struct_1(1u, var_1.x);
}

fn func_1() -> vec2<bool> {
    var var_0 = select(!(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, true), true)), vec2<bool>(false, false), true);
    var var_1 = -16788i;
    let var_2 = _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(global0.b.a, global0.a, global0.a, global0.a), ~vec4<u32>(global0.b.a, 18118u, 32750u, global0.b.a)) ^ ~vec4<u32>(4294967295u, 7114u, global0.a, _wgslsmith_mult_u32(global0.b.a, global0.a)), ~(~(~vec4<u32>(31238u, global0.a, global0.a, 0u) | ~vec4<u32>(0u, global0.b.a, 0u, global0.b.a))));
    var var_3 = func_3(global0.b, Struct_2(func_2(!vec2<bool>(true, var_0.x), Struct_2(11922u, Struct_1(37815u, u_input.a), vec3<f32>(global0.d, global0.c.x, -1038f), global0.c.x), _wgslsmith_div_f32(985f, 201f), min(vec2<u32>(var_2, 52710u), vec2<u32>(0u, 0u))) >> (max(1u, ~4294967295u) % 32u), global0.b, global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.c.x))))), firstLeadingBit(reverseBits(~(vec3<i32>(u_input.b.x, global1[_wgslsmith_index_u32(16652u, 24u)], u_input.a) | vec3<i32>(u_input.a, global0.b.b, global0.b.b)))), 23403i);
    let var_4 = !all(vec2<bool>(global0.c.x > 554f, var_3.b <= u_input.b.x)) == !var_0.x;
    return !(!(!(!vec2<bool>(var_4, var_0.x))));
}

fn func_4(arg_0: vec2<i32>) -> vec3<bool> {
    global1 = array<i32, 24>();
    var var_0 = ~(i32(-1i) * -arg_0.x);
    let var_1 = func_3(global0.b, Struct_2(~(global0.b.a & _wgslsmith_clamp_u32(global0.a, 1u, 113614u)), global0.b, vec3<f32>(771f, _wgslsmith_f_op_f32(f32(-1f) * -1200f), global0.d), _wgslsmith_f_op_f32(114f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)))), select(vec3<i32>(global0.b.b, min(_wgslsmith_clamp_i32(arg_0.x, global1[_wgslsmith_index_u32(4294967295u, 24u)], -18160i), arg_0.x << (global0.b.a % 32u)), u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(1u, 24u)], u_input.a, u_input.a), reverseBits(vec3<i32>(1i, 53810i, arg_0.x))) << (_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(646u, global0.a, global0.a)), vec3<u32>(global0.a, global0.b.a, 35706u) ^ vec3<u32>(1u, global0.a, global0.b.a)) % vec3<u32>(32u)), ~20715i >= _wgslsmith_mult_i32(-32413i << (global0.b.a % 32u), 1i)), max(~_wgslsmith_dot_vec2_i32(vec2<i32>(36334i, global1[_wgslsmith_index_u32(global0.b.a, 24u)]), -u_input.b), _wgslsmith_mod_i32(-1i, countOneBits(_wgslsmith_div_i32(u_input.a, 5242i)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(840f, 963f)) * 356f)));
    var var_3 = Struct_1(~var_1.a ^ ~reverseBits(~var_1.a), -6631i);
    return select(!vec3<bool>(true, all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), vec3<bool>(true, true, true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(vec2<i32>(global0.b.b, 45768i), vec2<i32>(-1i, 14771i), select(select(vec2<bool>(true, true), func_1(), true), vec2<bool>(global0.d < -374f, all(vec3<bool>(true, false, true))), select(vec2<bool>(true, false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))))));
    global1 = array<i32, 24>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(923f + _wgslsmith_f_op_f32(2134f + -274f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-799f, _wgslsmith_f_op_f32(global0.d + global0.c.x), select(var_0.x, false, true))))), 1f, -199f));
    var var_2 = Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(global0.b.a, global0.a)), vec2<u32>(1u, 1u)), 3928u), func_3(func_3(global0.b, Struct_2(10264u, func_3(Struct_1(31774u, global0.b.b), Struct_2(global0.a, global0.b, vec3<f32>(var_1.x, 167f, global0.d), -173f), vec3<i32>(u_input.b.x, global0.b.b, u_input.b.x), u_input.a), vec3<f32>(global0.d, var_1.x, global0.c.x), 179f), abs(select(vec3<i32>(global0.b.b, -1i, 27963i), vec3<i32>(-2147483647i, u_input.b.x, -2147483647i), var_0.x)), -u_input.b.x), Struct_2(~_wgslsmith_mult_u32(global0.a, global0.b.a), global0.b, vec3<f32>(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(-global0.d), 643f), global0.c.x), _wgslsmith_sub_vec3_i32(countOneBits(select(vec3<i32>(49348i, 18306i, -25002i), vec3<i32>(0i, -1i, u_input.b.x), var_0)), -abs(vec3<i32>(u_input.b.x, -1i, -16885i))), select(_wgslsmith_div_i32(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(11433u, 24u)], global0.b.b), -69414i), 2146i, _wgslsmith_f_op_f32(-var_1.x) != _wgslsmith_f_op_f32(floor(global0.c.x)))), vec3<f32>(_wgslsmith_f_op_f32(-556f - global0.d), -441f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_1.x))))), 585f);
    var var_3 = func_4(vec2<i32>(-global1[_wgslsmith_index_u32(~global0.a, 24u)], -(~_wgslsmith_clamp_i32(10136i, var_2.b.b, 10038i)))).x;
    let var_4 = true;
    global0 = Struct_2(~global0.b.a, Struct_1(1u, _wgslsmith_sub_i32(u_input.b.x, -1i)), _wgslsmith_f_op_vec3_f32(-global0.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1121f) + _wgslsmith_f_op_f32(-var_1.x))))));
    var var_5 = Struct_1(_wgslsmith_mult_u32(86684u, ~var_2.b.a), u_input.b.x);
    global0 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(firstTrailingBit(global0.b.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, var_5.a, 31935u, var_5.a), vec4<u32>(var_5.a, 58589u, var_5.a, 8197u))), _wgslsmith_div_u32(~var_5.a, reverseBits(47026u))), 47579u), Struct_1(global0.a, global0.b.b), _wgslsmith_f_op_vec3_f32(max(global0.c, vec3<f32>(_wgslsmith_f_op_f32(-var_2.d), global0.d, -268f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_2.c.x, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec3_i32(~vec3<i32>(-36251i, -1i, -2147483647i), ~(vec3<i32>(global0.b.b, 1i, var_5.b) ^ vec3<i32>(2147483647i, 0i, var_2.b.b))), vec3<i32>(_wgslsmith_mult_i32(u_input.a, -u_input.a), -var_5.b, _wgslsmith_clamp_i32(var_2.b.b ^ 0i, u_input.a, _wgslsmith_div_i32(var_2.b.b, 0i))), !(!select(vec3<bool>(true, var_4, false), vec3<bool>(var_0.x, false, false), var_0))), vec2<i32>(var_5.b, _wgslsmith_add_i32(~(i32(-1i) * -15685i), -var_2.b.b)), countOneBits(var_2.b.a), vec4<u32>(4256u, global0.b.a, 3310u & global0.b.a, _wgslsmith_add_u32(32889u, firstLeadingBit(var_2.a))));
}

