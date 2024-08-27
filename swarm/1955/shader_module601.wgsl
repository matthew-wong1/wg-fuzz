struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>) -> bool {
    let var_0 = abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(981u, 33739u), firstTrailingBit(vec2<u32>(1u, 45648u)))) & vec2<u32>(~1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(22276u, 12634u, 4294967295u, 0u), ~vec4<u32>(36229u, 4294967295u, 79668u, 0u)));
    let var_1 = -max(firstLeadingBit(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, -12741i), vec3<i32>(u_input.a, u_input.a, -5356i), vec3<i32>(-2147483647i, 0i, -65025i))), vec3<i32>(min(u_input.a, firstTrailingBit(-2147483647i)), -_wgslsmith_add_i32(0i, u_input.a), 0i));
    var var_2 = Struct_1(vec3<bool>(false, false | any(vec2<bool>(arg_0.x, arg_0.x)), select(false, arg_0.x & !arg_0.x, true)), select(arg_0, select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0, true), !arg_0), any(vec3<bool>(false, false, !arg_0.x)), -vec4<i32>(var_1.x, -20656i, _wgslsmith_mult_i32(60018i, abs(-1i)), -(1i ^ var_1.x)));
    let var_3 = true;
    var_2 = Struct_1(vec3<bool>(any(!vec4<bool>(var_3, arg_0.x, true, var_2.a.x)), true, all(select(vec3<bool>(true, var_3, false), select(var_2.b, vec3<bool>(false, true, false), false), vec3<bool>(var_2.a.x, false, var_2.b.x)))), var_2.a, !any(vec3<bool>(false, false, !var_3)), ~((vec4<i32>(-1i) * -vec4<i32>(var_2.d.x, 2701i, u_input.a, var_1.x)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(13211u, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, 1u, var_0.x)) % vec4<u32>(32u))));
    return !((_wgslsmith_div_i32(firstTrailingBit(-2147483647i), var_1.x >> (var_0.x % 32u)) ^ -2147483647i) >= u_input.a);
}

fn func_2(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = global0[_wgslsmith_index_u32(0u, 6u)];
    let var_1 = Struct_1(vec3<bool>(any(vec3<bool>(false, false, true)) || true, true, true), vec3<bool>(true, func_3(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, false, true))), true), !(!all(vec3<bool>(true, true, true))), -(~vec4<i32>(24761i, reverseBits(u_input.a), 2147483647i, var_0.x)));
    var var_2 = Struct_1(var_1.a, !select(!(!vec3<bool>(var_1.a.x, false, true)), vec3<bool>(!var_1.c, false, false), select(select(var_1.b, vec3<bool>(true, false, var_1.c), vec3<bool>(false, var_1.a.x, var_1.c)), select(vec3<bool>(false, false, true), vec3<bool>(false, var_1.a.x, var_1.c), var_1.a.x), true)), select(func_3(select(var_1.a, var_1.b, var_1.a)), true, var_1.b.x) | ((var_0.x <= max(var_0.x, -2147483647i)) && false), vec4<i32>(2564i ^ reverseBits(var_0.x), var_0.x, 1i, 6223i));
    var_0 = ~(-vec2<i32>(var_1.d.x >> (1u % 32u), var_1.d.x));
    let var_3 = var_2.b;
    return !(!select(vec3<bool>(false, all(vec4<bool>(var_2.b.x, false, true, var_2.c)), func_3(var_2.a)), !select(vec3<bool>(var_3.x, var_3.x, var_1.a.x), var_2.b, false), true));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(953f, arg_0, arg_0)))), vec3<bool>(0u != _wgslsmith_mod_u32(firstTrailingBit(25200u), ~25225u), any(vec2<bool>(true, true)), (abs(u_input.a) ^ select(-2147483647i, u_input.a, true)) > 3109i), !func_3(vec3<bool>(false, true, true)) || true, vec4<i32>(u_input.a, ~(-1i), 2147483647i, u_input.a));
    global0 = array<vec2<i32>, 6>();
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 * 1000f), _wgslsmith_f_op_f32(sign(-1246f)), 156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1078f * arg_0))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-742f, -766f, arg_0, -1209f) - vec4<f32>(arg_0, -933f, -240f, arg_0)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 723f, arg_0, arg_0), vec4<f32>(1000f, arg_0, arg_0, arg_0), vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.c)))), vec4<f32>(-264f, _wgslsmith_f_op_f32(step(1186f, arg_0)), arg_0, arg_0)))));
    var_1 = vec4<f32>(177f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(168f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_0))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(179f, -684f)))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1270f, 136f)))))), _wgslsmith_f_op_f32(-var_1.x));
    global0 = array<vec2<i32>, 6>();
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32((vec3<i32>(var_0.d.x, u_input.a, 43468i) | var_0.d.wzw) & (vec3<i32>(var_0.d.x, 9465i, -2147483647i) & vec3<i32>(-2147483647i, 2147483647i, var_0.d.x)), var_0.d.zxy), _wgslsmith_dot_vec2_i32(var_0.d.yx, -vec2<i32>(u_input.a, -26293i))) > var_0.d.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<f32>, arg_3: f32) -> StorageBuffer {
    let var_0 = -634f;
    global0 = array<vec2<i32>, 6>();
    global0 = array<vec2<i32>, 6>();
    global0 = array<vec2<i32>, 6>();
    global0 = array<vec2<i32>, 6>();
    return StorageBuffer(max(vec4<u32>(1u, 1u, 1u, 1u) >> (_wgslsmith_clamp_vec4_u32(max(vec4<u32>(28505u, 45228u, 0u, 36210u), vec4<u32>(74021u, 0u, 4294967295u, 125726u)), ~vec4<u32>(1u, 0u, 14057u, 66765u), ~vec4<u32>(11756u, 20104u, 0u, 47798u)) % vec4<u32>(32u)), max(vec4<u32>(~0u, abs(24382u), _wgslsmith_add_u32(0u, 9843u), ~1u), select(vec4<u32>(44647u, 25268u, 1u, 0u), vec4<u32>(8342u, 0u, 1u, 1u), arg_0.x) & ~vec4<u32>(1u, 41717u, 1725u, 4294967295u))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32((vec3<i32>(-1i, arg_1, arg_1) & vec3<i32>(u_input.a, arg_1, u_input.a)) << (select(vec3<u32>(20067u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 0u), true) % vec3<u32>(32u)), vec3<i32>(2147483647i, -2147483647i, u_input.a & arg_1), -(~vec3<i32>(-3978i, u_input.a, -17642i))), ~vec3<i32>(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(1u, 6u)], vec2<i32>(-46286i, arg_1)), min(u_input.a, 1i), firstLeadingBit(u_input.a))), ~(~vec4<i32>(firstLeadingBit(0i), arg_1 | arg_1, 53931i, -2147483647i)), _wgslsmith_sub_u32(4294967295u, abs(reverseBits(firstLeadingBit(0u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(231f, arg_2.x, var_0, -980f) * vec4<f32>(var_0, 221f, var_0, arg_3)), vec4<f32>(var_0, 688f, arg_3, 1361f))) * vec4<f32>(_wgslsmith_f_op_f32(-var_0), 526f, arg_3, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(314f, 401f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(select(vec2<bool>(func_1(_wgslsmith_div_f32(-891f, 258f)), true), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), !(!all(vec4<bool>(true, true, true, false)))), _wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(-33025i, u_input.a, -37460i, 15189i), vec4<i32>(-2147483647i, u_input.a, -48621i, 54978i))), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(38754i, 32324i, u_input.a) | vec3<i32>(u_input.a, -1i, u_input.a)), vec3<i32>(-41793i, 2147483647i, u_input.a) ^ ~vec3<i32>(-2147483647i, 43931i, u_input.a))), vec2<f32>(-2797f, -796f), 179f);
}

