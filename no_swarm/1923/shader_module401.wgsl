struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = Struct_1(abs(vec2<u32>(1u, 1u)));
    var var_1 = -vec2<i32>(-1i, 6215i);
    var_1 = ~(~(~(-vec2<i32>(u_input.a, 4319i)))) ^ (vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(243i, u_input.a, var_1.x), vec3<i32>(0i, u_input.a, -25882i), vec3<i32>(var_1.x, -56901i, 0i)), vec3<i32>(var_1.x, 2587i, -8144i) >> (vec3<u32>(58876u, var_0.a.x, var_0.a.x) % vec3<u32>(32u))), ~min(var_1.x, var_1.x)) << (~(~min(vec2<u32>(0u, 0u), var_0.a)) % vec2<u32>(32u)));
    var_0 = Struct_1(var_0.a);
    var_1 = -_wgslsmith_add_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, -1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(38i, -5554i), vec2<i32>(-51868i, var_1.x), vec2<i32>(-8370i, var_1.x)))), vec2<i32>(-1i, ~(~var_1.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -3318f)))));
}

fn func_3(arg_0: i32, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(firstLeadingBit(select(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 35838u), vec2<u32>(31678u, 4294967295u)), ~vec2<u32>(13559u, 1u), vec2<bool>(false, true))));
    global0 = array<vec3<bool>, 10>();
    let var_1 = abs(_wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(5245u), ~35334u, abs(var_0.a.x)) & (vec3<u32>(var_0.a.x, 70528u, 29929u) << ((vec3<u32>(0u, var_0.a.x, var_0.a.x) >> (vec3<u32>(1u, 4294967295u, 33610u) % vec3<u32>(32u))) % vec3<u32>(32u))), reverseBits(~firstLeadingBit(vec3<u32>(9928u, var_0.a.x, 1u)))));
    let var_2 = Struct_3(vec4<i32>(firstLeadingBit(arg_0), i32(-1i) * -7991i, u_input.a, u_input.a), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1872f, -2022f) + vec2<f32>(-924f, arg_1)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(465f, arg_1))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, 2591f))))), var_1.x, Struct_1(abs(~var_0.a)), 465f));
    global0 = array<vec3<bool>, 10>();
    return var_0;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> vec3<i32> {
    let var_0 = Struct_2(vec2<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 69222u, func_3(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1360f)) * _wgslsmith_f_op_f32(func_2(all(vec2<bool>(true, false)))))), _wgslsmith_f_op_f32(ceil(arg_0)));
    var var_1 = all(!select(vec4<bool>(true, u_input.a > u_input.a, true, -15860i < u_input.a), vec4<bool>(true, true, true, true), select(all(vec2<bool>(false, true)), true, true)));
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(var_0.c.a.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(81180u, var_0.c.a.x, 1u, 618u), vec4<u32>(var_0.b, var_0.b, 4294967295u, var_0.c.a.x))), ~4294967295u, _wgslsmith_clamp_u32(~var_0.c.a.x >> (var_0.c.a.x % 32u), _wgslsmith_mult_u32(1u, ~var_0.b >> (abs(var_0.c.a.x) % 32u)), reverseBits(countOneBits(_wgslsmith_mod_u32(4294967295u, 46465u)))), var_0.c.a.x);
    let var_3 = Struct_3(vec4<i32>(7319i, _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, 1i), arg_1.zw)), -(-52887i & u_input.a)), max(-abs(arg_1.x), _wgslsmith_mult_i32(firstLeadingBit(35585i), -20863i)), _wgslsmith_add_i32(32441i, -1i)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + _wgslsmith_f_op_vec2_f32(var_0.a + var_0.a)) - vec2<f32>(_wgslsmith_f_op_f32(-1322f * 1841f), _wgslsmith_f_op_f32(ceil(arg_0)))), 1u, var_0.c, _wgslsmith_div_f32(1382f, var_0.d)));
    let var_4 = firstTrailingBit(1u);
    return _wgslsmith_mod_vec3_i32(vec3<i32>(22643i, 19322i, ~min(var_3.a.x, u_input.a) << (var_0.b % 32u)), -(-(~vec3<i32>(var_3.a.x, -11426i, 2147483647i)) << (~firstLeadingBit(vec3<u32>(var_0.b, 0u, var_2.x)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstTrailingBit(func_1(2505f, -vec4<i32>(-16895i, u_input.a, 1i, -2147483647i))) ^ ~vec3<i32>(abs(u_input.a), 1i, u_input.a);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(316f, 656f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-504f, -1000f), vec2<f32>(1112f, -1048f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-212f, -384f))))))), 0u, Struct_1(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, 4953u, 61096u), _wgslsmith_clamp_u32(1u, 0u, 23841u)), firstLeadingBit(~1u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -746f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_2 = Struct_4(vec2<bool>(!((u_input.a >= 2147483647i) | all(vec4<bool>(false, false, false, false))), false));
    var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(select(firstTrailingBit(vec3<i32>(-1i, 2147483647i, 2147483647i)), _wgslsmith_div_vec3_i32(func_1(1000f, vec4<i32>(u_input.a, var_0.x, u_input.a, u_input.a)), firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a))), var_2.a.x), select(~_wgslsmith_sub_vec3_i32(vec3<i32>(-8687i, 2147483647i, u_input.a), vec3<i32>(var_0.x, u_input.a, var_0.x)), ~vec3<i32>(1i, 1i, 14248i), false)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 10711i, u_input.a) ^ abs(~vec3<i32>(var_0.x, u_input.a, 51905i)), vec3<i32>(select(var_0.x, 83330i, !var_2.a.x), var_0.x, ~u_input.a << (4294967295u % 32u)), (abs(vec3<i32>(63771i, u_input.a, u_input.a)) | _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, u_input.a, u_input.a), vec3<i32>(35855i, var_0.x, 36686i))) | select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -73767i, 0i), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-1i, 0i, var_0.x)), vec3<i32>(13098i, 19698i, -10778i), true)), min(~(~(~vec3<i32>(0i, u_input.a, var_0.x))), _wgslsmith_mult_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, 2147483647i, var_0.x), vec3<i32>(1i, var_0.x, u_input.a)), vec3<i32>(-var_0.x, 0i >> (var_1.c.a.x % 32u), -u_input.a))));
    var_2 = Struct_4(select(var_2.a, vec2<bool>(true, true), vec2<bool>(var_2.a.x, true & any(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~(-(~(vec3<i32>(u_input.a, 16446i, 15239i) | vec3<i32>(49083i, u_input.a, var_0.x)))), var_0.x, 1u);
}

