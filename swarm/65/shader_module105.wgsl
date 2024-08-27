struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-4225i, -60243i, 1i, 5379i), vec2<f32>(1506f, 596f), -524f, 4294967295u, 50952u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> vec2<i32> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))), -961f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-269f * global0.c), 1229f))), _wgslsmith_f_op_f32(1306f + 1806f), -350f));
    global0 = Struct_1(~vec4<i32>(u_input.b, -9154i, arg_0.c.d.x, global0.a.x), vec2<f32>(638f, 2854f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0.d.x, select(~arg_0.d.x, (38314u & global0.e) >> (1u % 32u), !arg_0.a));
    global0 = Struct_1(global0.a ^ max(select(~global0.a, _wgslsmith_sub_vec4_i32(global0.a, global0.a), false), countOneBits(vec4<i32>(17233i, -41044i, u_input.b, u_input.a.x))), _wgslsmith_f_op_vec2_f32(-var_0.yx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2055f - 1003f) - _wgslsmith_f_op_f32(f32(-1f) * -801f)), _wgslsmith_div_u32(abs(_wgslsmith_clamp_u32(1u << (global0.e % 32u), ~arg_0.b, global0.d)), 4294967295u), 1u);
    global0 = Struct_1(global0.a, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c))), 0u, ~(~global0.d));
    var var_1 = 0u;
    return abs(arg_0.c.b.zz << (select(~arg_0.d.zz, select(vec2<u32>(4294967295u, 577u), arg_0.d.xx, arg_0.c.a.xz), vec2<bool>(all(arg_0.c.a), select(arg_0.a, true, arg_0.c.a.x))) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_3) -> bool {
    var var_0 = global0.a.yzw;
    var_0 = vec3<i32>(~(-var_0.x), max(-var_0.x, arg_0.c.c), -2147483647i);
    var var_1 = arg_0;
    var_0 = abs(arg_0.c.b);
    var var_2 = arg_0;
    return var_1.c.a.x;
}

fn func_2(arg_0: bool) -> vec4<i32> {
    let var_0 = func_4(Struct_3(0u != ~abs(global0.e), reverseBits(global0.d), Struct_2(vec4<bool>(true, !arg_0, arg_0, true), vec3<i32>(max(u_input.b, global0.a.x), _wgslsmith_mult_i32(0i, global0.a.x), -1i >> (1u % 32u)), 1407i, reverseBits(func_3(Struct_3(arg_0, u_input.c, Struct_2(vec4<bool>(false, arg_0, arg_0, false), u_input.a, global0.a.x, vec2<i32>(0i, 1i), -1381f), vec3<u32>(58300u, 1u, u_input.c)), -242f)), -1000f), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 31634u) << (vec3<u32>(global0.d, 20549u, 1u) % vec3<u32>(32u)), select(vec3<u32>(global0.e, 4294967295u, u_input.c), vec3<u32>(u_input.c, u_input.c, 8817u), vec3<bool>(true, true, arg_0))) ^ ~select(vec3<u32>(32640u, global0.d, 31595u), vec3<u32>(36834u, 25177u, global0.e), vec3<bool>(arg_0, true, true))));
    global0 = Struct_1(global0.a, _wgslsmith_div_vec2_f32(global0.b, vec2<f32>(-1830f, _wgslsmith_f_op_f32(-global0.c))), -1111f, _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u ^ global0.d, 13252u, ~0u), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(global0.e, global0.d, u_input.c), vec3<u32>(15271u, 4294967295u, u_input.c))))), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.e & u_input.c, reverseBits(9797u), global0.d), min(vec3<u32>(80046u, global0.e, 4294967295u), vec3<u32>(116726u, 1u, u_input.c)) >> (vec3<u32>(~global0.e, ~u_input.c, global0.e << (global0.e % 32u)) % vec3<u32>(32u))));
    global0 = Struct_1(firstLeadingBit(_wgslsmith_sub_vec4_i32(global0.a, _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(global0.a.x, 9186i, u_input.b, 2147483647i)), vec4<i32>(u_input.a.x, 0i, 5917i, -2147483647i) ^ vec4<i32>(51676i, global0.a.x, u_input.a.x, -26025i)))), global0.b, global0.b.x, ~(~(global0.e >> (25870u % 32u)) << (1u % 32u)), 122125u);
    var var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(4665u, 29070u) >> (vec2<u32>(1u, global0.e) % vec2<u32>(32u))), vec2<u32>(~(~1u), global0.e)), u_input.c);
    var var_2 = 0u;
    return vec4<i32>(-1i) * -(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.a.x, 2147483647i), global0.a) ^ -global0.a);
}

fn func_1(arg_0: Struct_5, arg_1: u32, arg_2: Struct_2) -> u32 {
    global0 = Struct_1(-func_2(arg_0.c), vec2<f32>(arg_2.e, -1000f), 227f, ~u_input.c, ~u_input.c);
    global0 = Struct_1(~vec4<i32>(_wgslsmith_div_i32(-1i, firstTrailingBit(16519i)), 1i & -arg_2.c, _wgslsmith_sub_i32(-27176i, u_input.b), _wgslsmith_clamp_i32(arg_2.c, -2147483647i, -1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(539f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -177f))) - arg_0.a.xx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(205f + -491f)))) * -114f), select(10844u, min(_wgslsmith_mod_u32(firstLeadingBit(u_input.c), ~116909u), ~(~4294967295u)), !any(select(vec3<bool>(arg_0.c, arg_2.a.x, true), arg_2.a.yyy, vec3<bool>(true, true, true)))), _wgslsmith_dot_vec2_u32(max(reverseBits(~vec2<u32>(10332u, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, 749u) & vec2<u32>(0u, arg_1), vec2<u32>(12235u, 6942u))), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(11452u, 4294967295u), vec2<u32>(arg_1, 35992u) | vec2<u32>(4294967295u, arg_1))));
    global0 = Struct_1(global0.a, arg_0.a.yx, -150f, firstLeadingBit(~u_input.c), ~_wgslsmith_sub_u32(arg_1, ~27445u >> (0u % 32u)));
    global0 = Struct_1(_wgslsmith_sub_vec4_i32(func_2(!arg_0.c), vec4<i32>(func_3(Struct_3(arg_0.c, u_input.c, arg_2, vec3<u32>(1u, 4294967295u, 16287u)), arg_2.e).x, 1i, -37317i, countOneBits(arg_0.b.x))) << (vec4<u32>(0u, global0.d, global0.e, u_input.c) % vec4<u32>(32u)), global0.b, arg_2.e, ~_wgslsmith_mod_u32(~global0.d, arg_1), 1u);
    let var_0 = Struct_3(false, 0u ^ _wgslsmith_div_u32(arg_1, 1u), Struct_2(arg_2.a, arg_2.b, max(-17600i, -2147483647i) >> (_wgslsmith_mod_u32(firstTrailingBit(43321u), ~0u) % 32u), vec2<i32>(func_2(arg_2.a.x).x, global0.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.e + _wgslsmith_f_op_f32(floor(global0.b.x)))))), abs(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 6958u, 34208u), vec3<u32>(global0.d, u_input.c, 0u)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(arg_1, 0u, 17662u)), vec3<u32>(1u & global0.d, global0.e, 1u))));
    return firstLeadingBit(_wgslsmith_clamp_u32(global0.d, var_0.d.x, abs(~(~var_0.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))) & true, ~(~_wgslsmith_div_u32(u_input.c, func_1(Struct_5(vec3<f32>(global0.c, 878f, 126f), vec3<i32>(global0.a.x, global0.a.x, u_input.b), false), 12810u, Struct_2(vec4<bool>(false, true, true, false), u_input.a, u_input.b, global0.a.xw, 1000f)))), Struct_2(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false)), select(global0.a.xzy, -vec3<i32>(-24946i, global0.a.x, global0.a.x), vec3<bool>(all(vec3<bool>(false, false, true)), global0.c >= -642f, true)), ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, 0i, 2949i), global0.a.xwx), u_input.a.x | u_input.b), u_input.a.xy, global0.b.x), min(firstTrailingBit(~vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, global0.e, u_input.c)), max(vec3<u32>(49589u, 1u, 1u), vec3<u32>(global0.d, u_input.c, 28533u)), countOneBits(vec3<u32>(global0.e, 1u, global0.d))) ^ _wgslsmith_mult_vec3_u32(~vec3<u32>(global0.e, u_input.c, 5610u), ~vec3<u32>(global0.e, u_input.c, 1u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1445f, global0.c, global0.c, -558f)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.c, var_0.c.e, global0.c, var_0.c.e), vec4<f32>(global0.b.x, global0.b.x, 731f, global0.c)), select(vec4<bool>(var_0.a, false, var_0.a, true), var_0.c.a, var_0.c.a))) + vec4<f32>(-918f, -1000f, -210f, global0.c))));
    let var_2 = Struct_3(true, func_1(Struct_5(var_1.xyx, u_input.a, _wgslsmith_f_op_f32(global0.b.x + var_0.c.e) < -1003f), global0.e, Struct_2(!select(vec4<bool>(true, var_0.a, var_0.c.a.x, false), vec4<bool>(var_0.a, var_0.a, true, var_0.c.a.x), var_0.c.a), vec3<i32>(_wgslsmith_add_i32(var_0.c.c, u_input.b), countOneBits(global0.a.x), max(0i, u_input.b)), 6086i, select(select(vec2<i32>(global0.a.x, 57876i), vec2<i32>(var_0.c.c, 2147483647i), true), var_0.c.b.xy, select(false, var_0.a, var_0.c.a.x)), _wgslsmith_f_op_f32(trunc(var_1.x)))), var_0.c, var_0.d);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -345f);
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b - vec2<f32>(-193f, _wgslsmith_f_op_f32(-936f - var_0.c.e)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.xx)))));
    var var_5 = Struct_4(vec4<bool>(any(var_2.c.a), false, all(!(!var_2.c.a)), any(select(!vec4<bool>(true, false, var_0.c.a.x, var_0.c.a.x), select(vec4<bool>(true, false, true, var_2.a), var_2.c.a, var_0.c.a.x), var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-1026f, vec2<u32>(firstTrailingBit(~30726u), var_2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.e - 1586f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.e))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1449f)) * _wgslsmith_f_op_f32(var_1.x + 700f)))), vec3<u32>(~(~_wgslsmith_div_u32(14309u, 4294967295u)), 13581u, _wgslsmith_mod_u32(45222u, u_input.c)));
}

