struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<u32>(0u, 12817u, 24696u), false, 0u, vec3<bool>(false, true, true), vec3<f32>(-468f, 618f, -1833f)), Struct_1(vec3<u32>(4294967295u, 35056u, 27582u), false, 41439u, vec3<bool>(true, false, false), vec3<f32>(-267f, -1405f, 134f)), Struct_1(vec3<u32>(4294967295u, 80097u, 7192u), true, 43505u, vec3<bool>(false, false, true), vec3<f32>(167f, -2003f, 1417f)), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), false, 38650u, vec3<bool>(false, true, true), vec3<f32>(807f, 290f, -1327f)), Struct_1(vec3<u32>(4294967295u, 1u, 7183u), true, 22452u, vec3<bool>(false, false, true), vec3<f32>(-872f, -188f, 981f)), Struct_1(vec3<u32>(4294967295u, 116338u, 0u), true, 4294967295u, vec3<bool>(true, true, false), vec3<f32>(213f, 1292f, -558f)), Struct_1(vec3<u32>(0u, 81927u, 0u), true, 1u, vec3<bool>(true, true, true), vec3<f32>(-388f, -697f, 147f)), Struct_1(vec3<u32>(4294967295u, 1u, 12927u), true, 0u, vec3<bool>(true, true, false), vec3<f32>(1091f, 149f, -434f)), Struct_1(vec3<u32>(6132u, 34434u, 1u), true, 1u, vec3<bool>(true, true, true), vec3<f32>(-1000f, -1229f, 648f)));

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<u32>(1u, 20409u, 0u), true, 25333u, vec3<bool>(false, true, false), vec3<f32>(1000f, 979f, 213f)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(~min(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(1u, 28558u, 39192u) | u_input.a), reverseBits(~vec3<u32>(u_input.a.x, 50889u, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(578f + -413f), -103f))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1100f))))), ~(_wgslsmith_add_u32(19124u, 7495u) | _wgslsmith_add_u32(u_input.a.x, firstLeadingBit(u_input.a.x))), vec3<bool>(true, all(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(120f, 202f, 425f)), vec3<f32>(-107f, 349f, 872f))) - vec3<f32>(_wgslsmith_f_op_f32(681f - 1000f), -754f, 2146f))));
    var var_1 = ~(~_wgslsmith_mod_u32(0u, var_0.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.b), vec4<u32>(u_input.b, 4294967295u, u_input.a.x, u_input.b)) % 32u)));
    let var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(countOneBits(u_input.a.x)), 9u)];
    var var_3 = !(!vec4<bool>(true, select(!var_2.b, var_0.d.x, var_0.d.x), !var_2.d.x, false));
    let var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e.x, var_0.e.x, var_2.e.x, var_2.e.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(606f, -146f, 320f, -2021f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1260f, var_0.e.x, var_0.e.x, -325f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e.x, var_2.e.x, 869f, 2323f) + vec4<f32>(var_0.e.x, 1259f, -181f, var_2.e.x)), true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_0.e.x, var_0.e.x, var_2.e.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-489f, 249f, var_0.e.x, var_2.e.x), vec4<f32>(-1786f, var_2.e.x, var_0.e.x, var_0.e.x)))), select(select(vec4<bool>(true, false, true, var_2.d.x), vec4<bool>(var_3.x, true, false, false), var_3.x), vec4<bool>(var_2.b, var_3.x, false, false), var_3.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.e.x, var_2.e.x, -1469f, 845f))))))));
    return vec3<u32>(~(~0u), 0u, var_0.c);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<f32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~(4294967295u ^ u_input.a.x), 9u)];
    var var_1 = Struct_1(func_3(), ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, 3462u, var_0.c), 34917u) < 4294967295u, func_3().x, vec3<bool>(_wgslsmith_f_op_f32(floor(var_0.e.x)) != _wgslsmith_f_op_f32(floor(arg_2.x)), !var_0.d.x, ~2147483647i < _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0, 6729i, 20024i), -vec3<i32>(arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_2 * arg_2))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_2, vec3<f32>(arg_2.x, arg_2.x, -611f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_2.x, -1000f) * vec3<f32>(var_0.e.x, -702f, arg_2.x)))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1240f), _wgslsmith_f_op_f32(min(var_0.e.x, 394f)), _wgslsmith_f_op_f32(-856f - -325f))))));
    var_0 = Struct_1(_wgslsmith_mod_vec3_u32(select(~(~vec3<u32>(13640u, u_input.a.x, var_0.a.x)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 41190u, 8244u), vec3<u32>(var_0.c, var_0.a.x, u_input.b)), u_input.a), var_0.d), ~vec3<u32>(var_0.c, _wgslsmith_div_u32(u_input.b, u_input.b), ~4294967295u)), true, 0u, select(var_0.d, !select(vec3<bool>(true, false, true), select(var_0.d, vec3<bool>(var_1.b, true, true), var_1.d), var_1.d.x & var_1.b), !var_1.d), vec3<f32>(_wgslsmith_div_f32(var_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1146f)) * _wgslsmith_f_op_f32(f32(-1f) * -463f))), var_0.e.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.e.x)))))));
    let var_2 = firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(~_wgslsmith_add_i32(arg_0, 37842i), ~2147483647i, 10835i, abs(abs(arg_0))), _wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, arg_0, arg_0, arg_0), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, arg_0, 0i, -34415i), vec4<i32>(arg_0, 2147483647i, -1i, arg_0), vec4<i32>(-6849i, arg_0, -2147483647i, arg_0))) & (vec4<i32>(-1i) * -vec4<i32>(28078i, arg_0, arg_0, -63336i))));
    var var_3 = Struct_1(vec3<u32>(~(~var_0.a.x), ~_wgslsmith_add_u32(firstTrailingBit(0u), 78711u), (firstLeadingBit(arg_1.x) >> (max(24225u, arg_1.x) % 32u)) ^ arg_1.x), true, 28725u | var_1.a.x, vec3<bool>(var_1.b, all(vec3<bool>(any(vec3<bool>(var_1.b, var_1.b, var_0.d.x)), var_1.b, var_0.d.x)), true), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x))), _wgslsmith_f_op_f32(sign(1451f))), vec3<f32>(628f, -2339f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) - 307f))));
    return 84001u;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>) -> vec3<u32> {
    global0 = array<Struct_1, 9>();
    let var_0 = Struct_1(reverseBits(~u_input.a), arg_1.x, countOneBits(func_2(32184i, countOneBits(vec2<u32>(0u, 10926u) ^ u_input.a.xx), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1912f, -689f), vec3<f32>(1769f, 398f, 590f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1926f, 1094f, 1000f)))))), !vec3<bool>(true, true, any(select(vec2<bool>(true, arg_1.x), arg_1, arg_1.x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-699f, -331f, 129f))) + vec3<f32>(-925f, -452f, -841f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1318f, -1663f, 1035f), vec3<f32>(-1000f, -591f, -1019f)))))))));
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global1 = array<Struct_1, 1>();
    return _wgslsmith_clamp_vec3_u32(~u_input.a, vec3<u32>(0u, firstLeadingBit(var_0.a.x), reverseBits(1u)), vec3<u32>(arg_0.x, ~arg_0.x ^ 27699u, ~_wgslsmith_mod_u32(var_0.a.x | 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 80201u, 16494u, var_0.c), vec4<u32>(1599u, 1u, u_input.b, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.b, 1u)];
    var var_1 = Struct_1(select(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.b, 39472u, u_input.b, var_0.c), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, var_0.a.x)), abs(vec4<u32>(1u, u_input.a.x, u_input.b, 44846u))), _wgslsmith_mod_u32(~u_input.b, u_input.a.x)), _wgslsmith_clamp_vec3_u32(firstTrailingBit(countOneBits(vec3<u32>(u_input.b, u_input.b, 0u))), func_1(var_0.a.zx, vec2<bool>(var_0.b, var_0.d.x)), ~vec3<u32>(81533u, var_0.c, 0u)), (_wgslsmith_dot_vec3_i32(vec3<i32>(60908i, 2147483647i, 36159i), vec3<i32>(-17874i, 21822i, 23268i)) > select(-2147483647i, -46667i, var_0.b)) && false), var_0.d.x, _wgslsmith_div_u32(77u << (~4294967295u % 32u), ~abs(u_input.a.x) >> (firstLeadingBit(_wgslsmith_mult_u32(25636u, 0u)) % 32u)), select(vec3<bool>(true, !var_0.b, var_0.d.x), vec3<bool>(select(true, var_0.d.x, false), true, any(var_0.d) | true), !select(var_0.d, var_0.d, var_0.d)), var_0.e);
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(86310u, var_0.c, var_0.a.x, var_0.a.x), vec4<u32>(4294967295u, var_0.c, var_1.c, 4294967295u)) >> ((vec4<u32>(var_0.a.x, 26642u, 35187u, var_1.c) & vec4<u32>(var_0.c, var_0.c, var_0.c, u_input.a.x)) % vec4<u32>(32u)), ~reverseBits(vec4<u32>(27925u, var_0.c, var_0.a.x, var_0.c))) ^ reverseBits(vec4<u32>(var_1.c, ~17107u, 1u, var_1.a.x)), firstLeadingBit(~vec4<u32>(var_1.a.x, abs(u_input.a.x), var_1.c << (u_input.b % 32u), ~var_0.a.x)));
    let var_3 = false;
    global1 = array<Struct_1, 1>();
    global0 = array<Struct_1, 9>();
    var_1 = Struct_1(firstTrailingBit((var_1.a & vec3<u32>(var_0.c, 1u, u_input.a.x)) & vec3<u32>(var_1.c, 0u, 0u)) & min(~(vec3<u32>(1u, u_input.b, var_2) | u_input.a), ~u_input.a), false, 4294967295u, !select(var_0.d, select(vec3<bool>(false, false, var_1.d.x), !var_1.d, true), (var_0.d.x | true) || false), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.e * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e))))));
    var_1 = global0[_wgslsmith_index_u32(~1u, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(i32(-1i) * -9192i, -27685i, 51483i), ~(~25031u));
}

