struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> vec3<f32> {
    var var_0 = -_wgslsmith_clamp_i32(-63588i, max(arg_0, _wgslsmith_sub_i32(-23215i, arg_0)), -arg_0) & firstLeadingBit(abs(~arg_0));
    let var_1 = min(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c << (24787u % 32u), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 20u)], 20u)], ~20411u, arg_3), ~arg_2 | arg_2), 1u);
    global0 = array<u32, 20>();
    var_0 = _wgslsmith_mod_i32(countOneBits(arg_0), -62087i) & arg_0;
    var_0 = 20281i;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), arg_1.a, arg_1.b.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-425f, -202f, arg_1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_1.b * vec3<f32>(arg_1.a, arg_1.a, 1815f))))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: f32) -> vec4<bool> {
    return vec4<bool>(arg_1.a, any(vec3<bool>(select(true, false, true) && arg_1.a, ~31460u == firstTrailingBit(11025u), ~55362u < _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(48735u, 20u)], 54096u))), false, true);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    let var_0 = func_4(vec3<i32>(_wgslsmith_div_i32(~arg_2, firstLeadingBit(2147483647i)) | arg_2, ~firstTrailingBit(-1i | arg_2), 77017i), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_3.x)) <= _wgslsmith_f_op_f32(-arg_0), Struct_1(_wgslsmith_f_op_f32(1f * 1355f), vec3<f32>(arg_0, _wgslsmith_f_op_f32(1118f * arg_3.x), _wgslsmith_f_op_f32(-arg_1)), global0[_wgslsmith_index_u32(u_input.a, 20u)]), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f) * arg_3.x), _wgslsmith_f_op_vec3_f32(func_3(-arg_2, Struct_1(arg_1, vec3<f32>(1403f, arg_1, arg_0), 0u), ~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], 4294967295u, global0[_wgslsmith_index_u32(4392u, 20u)]), u_input.a)), ~91376u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + -230f), vec3<f32>(_wgslsmith_f_op_f32(max(arg_0, 1280f)), arg_1, arg_0), reverseBits(u_input.a | 0u)), u_input.a), firstLeadingBit(-vec4<i32>(70107i, _wgslsmith_mult_i32(28424i, arg_2), -arg_2, arg_2)), arg_3.x);
    let var_1 = abs(arg_2);
    global0 = array<u32, 20>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1729f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_3.x)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(min(559f, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, 1304f)), _wgslsmith_f_op_f32(floor(arg_3.x)))) - _wgslsmith_f_op_vec3_f32(-arg_3.yxz)), firstLeadingBit(~(~(~1u))));
    global0 = array<u32, 20>();
    return _wgslsmith_f_op_f32(max(-102f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-699f)) - _wgslsmith_f_op_f32(-var_2.a)))) - -1089f)));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> Struct_3 {
    global0 = array<u32, 20>();
    let var_0 = arg_1;
    var var_1 = Struct_2(false, var_0.b, arg_1.d, Struct_1(-106f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-796f, arg_1.d.a, 3105f) + vec3<f32>(-642f, arg_0.x, 638f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(2147483647i, var_0.b, vec4<u32>(4294967295u, 22320u, arg_1.e, var_0.b.c), global0[_wgslsmith_index_u32(var_0.d.c, 20u)])))), _wgslsmith_add_u32(~arg_2, abs(1u))), 0u);
    var_1 = arg_1;
    var var_2 = vec3<bool>(true, false, true);
    return Struct_3(vec3<i32>(-2147483647i, select(~(~0i), ~(-2147483647i), !any(vec4<bool>(var_1.a, false, false, false))), 1i), var_1.d, vec3<i32>(reverseBits(_wgslsmith_clamp_i32(-30803i >> (var_0.e % 32u), 22687i, 1i)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i >> (0u % 32u), -5470i), ~(i32(-1i) * -12183i), ~1i >> ((u_input.a & u_input.a) % 32u)), -1i));
}

fn func_1() -> Struct_2 {
    var var_0 = all(vec3<bool>(!any(vec4<bool>(true, false, false, false)), true, !any(vec3<bool>(true, false, true)))) || true;
    var var_1 = -21032i;
    var var_2 = firstTrailingBit(~(abs(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], 4294967295u)) ^ ~vec2<u32>(34053u, u_input.a)) | (vec2<u32>(~0u, firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)])) << (vec2<u32>(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1279u, 20u)], 0u, 4294967295u), 47573u) % vec2<u32>(32u))));
    let var_3 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-654f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(675f, -775f, 2147483647i, vec4<f32>(227f, -313f, 430f, -905f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-207f, 1000f))))), Struct_2(true & (_wgslsmith_f_op_f32(round(-187f)) != _wgslsmith_f_op_f32(ceil(568f))), Struct_1(1428f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(128f, -998f, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-403f, -2105f, 693f) + vec3<f32>(1051f, 1000f, -261f))), u_input.a), Struct_1(_wgslsmith_f_op_f32(-353f * 322f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-183f, -1061f, -196f)), ~(~u_input.a)), Struct_1(-2146f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-176f, 1198f, 724f) * vec3<f32>(316f, 393f, -309f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-369f, 160f, -507f), vec3<f32>(-368f, 337f, 1696f)))), abs(~5251u)), u_input.a), ~(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(var_2.x, 20u)], global0[_wgslsmith_index_u32(u_input.a, 20u)], ~42904u) | 1u), _wgslsmith_f_op_f32(sign(-1818f)));
    var var_4 = _wgslsmith_add_vec3_i32(~(~(~abs(vec3<i32>(0i, -1513i, 2147483647i)))), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_3.b.a - -691f), _wgslsmith_f_op_f32(338f * var_3.b.b.x), _wgslsmith_f_op_f32(ceil(788f)))), Struct_2(max(u_input.a, 24843u) > 4294967295u, var_3.b, Struct_1(var_3.b.a, _wgslsmith_div_vec3_f32(vec3<f32>(var_3.b.a, var_3.b.b.x, -222f), vec3<f32>(var_3.b.b.x, -696f, -339f)), ~var_3.b.c), Struct_1(1141f, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-861f, 2116f, 268f))), 1u), ~_wgslsmith_add_u32(15945u, 52074u)), global0[_wgslsmith_index_u32(25152u, 20u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -474f)))).a);
    return Struct_2(true, var_3.b, func_5(vec3<f32>(var_3.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-741f, -587f) - -393f), _wgslsmith_f_op_f32(f32(-1f) * -146f)), Struct_2(all(vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-758f, 704f, var_3.b.a)), ~61849u), Struct_1(_wgslsmith_f_op_f32(-var_3.b.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.a, 1000f, 401f) - var_3.b.b), func_5(vec3<f32>(var_3.b.b.x, var_3.b.a, 1098f), Struct_2(true, var_3.b, var_3.b, Struct_1(var_3.b.b.x, var_3.b.b, var_3.b.c), var_2.x), 4294967295u, 2068f).b.c), Struct_1(_wgslsmith_div_f32(-1178f, var_3.b.a), _wgslsmith_f_op_vec3_f32(select(var_3.b.b, vec3<f32>(-1639f, var_3.b.b.x, 1000f), false)), var_3.b.c ^ 12458u), _wgslsmith_mult_u32(52063u, 11719u) << (_wgslsmith_div_u32(1u, var_3.b.c) % 32u)), var_2.x, var_3.b.b.x).b, var_3.b, var_2.x);
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: Struct_4) -> Struct_3 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.b.a, 246f), _wgslsmith_f_op_f32(f32(-1f) * -966f)))), _wgslsmith_f_op_f32(exp2(arg_0.d.b.x)), arg_0.b.a);
    var var_1 = false;
    var var_2 = ~vec3<u32>(56098u, u_input.a >> (reverseBits(func_1().d.c) % 32u), _wgslsmith_mod_u32(0u, u_input.a));
    var var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(arg_0.d.c, ~u_input.a, _wgslsmith_div_u32(arg_0.e, arg_0.b.c))), vec3<u32>(countOneBits(4294967295u), 46504u, ~57344u)), _wgslsmith_mod_vec3_u32(vec3<u32>(~1u, ~1u, 49975u), _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, u_input.a, u_input.a), _wgslsmith_add_vec3_u32(max(vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(46697u, 10095u, arg_1)), vec3<u32>(arg_2.c, arg_2.c, arg_1)))));
    let var_4 = countOneBits(1i);
    return func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(func_1().d.b, func_1().c.b) - vec3<f32>(390f, _wgslsmith_div_f32(arg_0.b.a, 165f), _wgslsmith_f_op_f32(sign(var_0.x))))), func_1(), 25472u, 748f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 20>();
    var var_0 = func_6(func_1(), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], 20u)]), vec3<u32>(84121u, 29202u, global0[_wgslsmith_index_u32(3128u, 20u)])), abs(~vec3<u32>(u_input.a, 35898u, u_input.a))), global0[_wgslsmith_index_u32(28207u, 20u)]), Struct_4(func_1().a, 1i, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], 20u)]));
    global0 = array<u32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(~firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.c, 0u), vec2<u32>(2282u, 1u))), vec2<u32>(var_0.b.c, var_0.b.c)), vec3<i32>(firstLeadingBit(~(-35068i)), var_0.c.x, -9151i), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.b - vec3<f32>(var_0.b.a, -150f, -1332f))), func_1(), ~_wgslsmith_div_u32(var_0.b.c, 19254u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(trunc(var_0.b.a))))).b.c, 20u)], u_input.a));
}

