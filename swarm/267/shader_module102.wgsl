struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec4<bool> {
    global0 = array<vec3<f32>, 14>();
    var var_0 = u_input.a.x;
    let var_1 = Struct_1(-1i, -219f, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(select(-516f, _wgslsmith_f_op_f32(select(-711f, 1258f, true)), all(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2527f - 950f), _wgslsmith_f_op_f32(ceil(637f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-952f + -849f) * _wgslsmith_f_op_f32(select(675f, 708f, true)))))), 234f, vec4<i32>(max(firstLeadingBit(u_input.a.x), abs(-14788i)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-6323i, u_input.a.x, 76083i, -42455i), vec4<i32>(u_input.a.x, 15900i, 2147483647i, u_input.a.x)) << (vec4<u32>(arg_1.a, arg_0, 13739u, 1u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, -1i, u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 1i)))), u_input.a.x, reverseBits((u_input.a.x | -22822i) & _wgslsmith_mult_i32(-1i, -19310i))));
    let var_2 = all(!(!vec3<bool>(true, select(arg_1.b, true, false), false)));
    var_0 = abs(36577i);
    return select(select(vec4<bool>(!select(var_2, arg_1.b, arg_1.b), false, arg_1.b, arg_1.b), select(vec4<bool>(any(vec2<bool>(true, var_2)), true, -2147483647i < var_1.a, arg_1.a <= arg_1.a), select(select(vec4<bool>(var_2, var_2, arg_1.b, var_2), vec4<bool>(var_2, true, true, false), true), select(vec4<bool>(var_2, var_2, var_2, true), vec4<bool>(false, arg_1.b, arg_1.b, true), vec4<bool>(false, true, arg_1.b, true)), select(vec4<bool>(true, var_2, arg_1.b, var_2), vec4<bool>(true, arg_1.b, arg_1.b, false), vec4<bool>(var_2, false, true, false))), false), var_2), vec4<bool>(var_2, var_2, 92230u < arg_1.a, select(var_2, var_2, var_2)), vec4<bool>(true, firstLeadingBit(arg_0) == arg_0, !var_2, (~arg_0 <= (95832u | arg_0)) && var_2));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> f32 {
    let var_0 = all(!(!func_3(23734u, arg_1)));
    let var_1 = Struct_2(true, Struct_1(countOneBits(firstTrailingBit(-2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-498f - 1928f)), _wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(1u, 14u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-991f)))), reverseBits(-vec4<i32>(-12050i, 1i, 2147483647i, u_input.a.x))), abs(~firstTrailingBit(10965u)), vec3<u32>(arg_0.x, 60777u, countOneBits(max(~arg_1.a, _wgslsmith_div_u32(4294967295u, 44549u)))));
    var var_2 = Struct_2(u_input.a.x > var_1.b.a, var_1.b, _wgslsmith_dot_vec2_u32(arg_0.xy >> (~var_1.d.yy % vec2<u32>(32u)), abs(max(var_1.d.xz, vec2<u32>(var_1.c, arg_1.a)))) & (~(27422u ^ arg_1.a) & arg_0.x), vec3<u32>(~var_1.d.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(firstLeadingBit(1u), 4294967295u), (14383u >> (var_1.c % 32u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, 78433u), vec2<u32>(4294967295u, 0u))), min(~(1u & arg_0.x), _wgslsmith_add_u32(50860u, ~arg_0.x))));
    var_2 = Struct_2(var_0, var_2.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(20844u, 83171u), arg_1.a, 10345u, 1u), ~(vec4<u32>(var_1.d.x, arg_1.a, arg_1.a, 0u) | vec4<u32>(arg_1.a, arg_0.x, 22583u, arg_0.x))), ~countOneBits(_wgslsmith_mult_vec3_u32(select(vec3<u32>(4294967295u, 45678u, var_1.d.x), vec3<u32>(12338u, var_1.c, 0u), vec3<bool>(var_1.a, true, var_2.a)), ~var_1.d)));
    let var_3 = var_2.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) - _wgslsmith_f_op_f32(ceil(var_2.b.b)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    global0 = array<vec3<f32>, 14>();
    let var_0 = Struct_1(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(arg_1.d, Struct_3(arg_1.c, false))))) * arg_1.b.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<u32>(arg_1.d.x, arg_1.c, 5342u), Struct_3(arg_1.c, false)))))), arg_1.b.c, arg_1.b.b, firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(abs(2147483647i), _wgslsmith_sub_i32(arg_0.x, -2147483647i), arg_1.b.a | -3552i, -1i | arg_1.b.a), vec4<i32>(arg_0.x, -36050i, 2147483647i, -2147483647i), -vec4<i32>(2147483647i, -7559i, -1i, -68250i))));
    global0 = array<vec3<f32>, 14>();
    let var_1 = 47716u;
    global0 = array<vec3<f32>, 14>();
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: bool) -> vec2<bool> {
    var var_0 = arg_0.a;
    var var_1 = vec4<u32>(arg_2.c, _wgslsmith_mult_u32(arg_2.d.x, ~(~arg_2.c)), _wgslsmith_clamp_u32(arg_2.d.x, arg_2.d.x, firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_2.c, arg_2.d.x, 0u), arg_2.c, arg_2.c))), ~(~(~45372u) >> (1u % 32u)));
    var var_2 = _wgslsmith_f_op_f32(trunc(1086f));
    var var_3 = Struct_3(75647u, false);
    let var_4 = func_1(arg_2.b.e.wyw, Struct_2(arg_2.a, Struct_1(u_input.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-937f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(arg_0.c)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.b.b, arg_2.b.c.x, arg_0.c.x))))), arg_0.d, vec4<i32>(-34968i, arg_0.e.x, -6578i, -1i) & ~vec4<i32>(u_input.a.x, arg_2.b.a, 2147483647i, 2147483647i)), max(var_1.x, ~70525u), ~var_1.yzy));
    return vec2<bool>(true, ~_wgslsmith_mod_u32(arg_2.d.x, 4294967295u) <= _wgslsmith_mod_u32(0u, ~var_1.x));
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1) -> i32 {
    let var_0 = func_3(_wgslsmith_div_u32(1u, abs(arg_0)) ^ ~arg_0, Struct_3(~0u, (countOneBits(1u) ^ arg_0) != arg_0)).zz;
    global0 = array<vec3<f32>, 14>();
    let var_1 = abs(func_1(arg_2.e.xzx, Struct_2(true != any(vec2<bool>(false, true)), Struct_1(~1i, _wgslsmith_f_op_f32(arg_2.d * arg_2.c.x), _wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(arg_0, 14u)], arg_2.c, false)), _wgslsmith_f_op_f32(arg_2.b - -484f), arg_2.e), arg_0, firstLeadingBit(vec3<u32>(arg_0, 0u, 0u)))).e.yy);
    let var_2 = ~(~(~_wgslsmith_mult_vec2_u32(abs(vec2<u32>(23065u, arg_0)), vec2<u32>(arg_0, 40406u))));
    let var_3 = arg_2.c;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 14>();
    let var_0 = vec4<i32>(u_input.a.x, func_5(1u ^ _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 1u, 4294967295u), 4294967295u), !func_4(func_1(vec3<i32>(1i, 27599i, u_input.a.x), Struct_2(true, Struct_1(u_input.a.x, 602f, vec3<f32>(-324f, 2057f, 829f), -2586f, vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 0i)), 46282u, vec3<u32>(34774u, 4294967295u, 1u))), vec2<i32>(u_input.a.x, u_input.a.x), Struct_2(false, Struct_1(u_input.a.x, -771f, global0[_wgslsmith_index_u32(67819u, 14u)], 1484f, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), 1u, vec3<u32>(4294967295u, 28422u, 81447u)), true), func_1(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.a.x, -1i), Struct_2(true, Struct_1(u_input.a.x, -946f, vec3<f32>(-1000f, -251f, 896f), -370f, vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, u_input.a.x)), 1u, vec3<u32>(1u, 1u, 1u)))), u_input.a.x, u_input.a.x);
    let var_1 = vec3<bool>(false, true | all(vec2<bool>(true, true)), u_input.a.x > (countOneBits(abs(u_input.a.x)) << (1u % 32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-667f, 675f)))), vec2<f32>(-996f, _wgslsmith_f_op_f32(f32(-1f) * -2094f)), var_1.x)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(996f))) + -121f), -618f), ~var_0.x < _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(5459i, -1i), _wgslsmith_mult_i32(1i, 2147483647i)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a, var_0.wx), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, var_0.x), var_0.xx)))));
    var var_3 = _wgslsmith_sub_i32(var_0.x, countOneBits(u_input.a.x));
    var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1711f, var_2.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_2 + vec2<f32>(1588f, var_2.x)))))), !(!select(var_1.yz, vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_1.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2)) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1185f * var_2.x) + -163f))));
}

