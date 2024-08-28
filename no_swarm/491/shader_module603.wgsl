struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

var<private> global2: array<bool, 11> = array<bool, 11>(false, false, true, true, true, true, false, false, true, false, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1730f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-606f, global0.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2097f)) + _wgslsmith_div_f32(893f, -1005f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -757f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-642f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f), -924f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.x)), -747f, global0.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -637f, 138f) - vec3<f32>(625f, global0.x, global0.x)))))));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), !vec2<bool>(all(vec3<bool>(true, true, global2[_wgslsmith_index_u32(0u, 11u)])), !global2[_wgslsmith_index_u32(4294967295u, 11u)]), 54468u, global2[_wgslsmith_index_u32(~1u, 11u)], 4294967295u));
    global0 = vec3<f32>(1328f, global0.x, _wgslsmith_div_f32(992f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(292f, _wgslsmith_f_op_f32(trunc(-505f))))));
    global1 = array<vec3<bool>, 7>();
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1130f)) + 277f), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.a))))));
    return select(~(~vec4<u32>(50101u, var_0.a.e, 2974u, var_0.a.e)) ^ min(~vec4<u32>(var_0.a.e, 0u, var_0.a.c, var_0.a.c), vec4<u32>(4294967295u, var_0.a.e, ~var_0.a.e, 47531u)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.a.c, 21587u, var_0.a.e), vec4<u32>(4294967295u, var_0.a.e, var_0.a.c, var_0.a.c)), vec4<u32>(~var_0.a.c, max(var_0.a.e, var_0.a.e), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.c, 0u), vec2<u32>(118929u, var_0.a.e)), ~var_0.a.c)), vec4<u32>(_wgslsmith_add_u32(var_0.a.e, 1u), ~1u, _wgslsmith_add_u32(min(21141u, var_0.a.c), 15461u), var_0.a.c)), false);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<u32>) -> f32 {
    let var_0 = vec3<i32>(9897i, reverseBits(~1i), ~(-select(-5242i, 1i, true)) >> (select(~4294967295u, ~arg_0.x, !global2[_wgslsmith_index_u32(firstLeadingBit(arg_1.x), 11u)]) % 32u));
    global1 = array<vec3<bool>, 7>();
    var var_1 = firstLeadingBit(~_wgslsmith_sub_i32(~0i, var_0.x));
    let var_2 = select(!select(select(select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(1u, 11u)]), vec2<bool>(global2[_wgslsmith_index_u32(27949u, 11u)], false), global2[_wgslsmith_index_u32(arg_1.x, 11u)]), !vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 11u)]), vec2<bool>(true, true)), select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(arg_1.x, 11u)]), !vec2<bool>(global2[_wgslsmith_index_u32(43920u, 11u)], false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(arg_1.x, 11u)], global2[_wgslsmith_index_u32(arg_1.x, 11u)]))), true), select(vec2<bool>(all(!vec4<bool>(global2[_wgslsmith_index_u32(24266u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], true, false)), global2[_wgslsmith_index_u32(arg_0.x, 11u)]), select(vec2<bool>(1381f <= global0.x, true), select(vec2<bool>(true, true), !vec2<bool>(true, global2[_wgslsmith_index_u32(arg_0.x, 11u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(arg_1.x, 11u)], true), vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 11u)]), true)), true), vec2<bool>(global2[_wgslsmith_index_u32(arg_1.x, 11u)] && any(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(17885u, 11u)])), any(select(vec2<bool>(global2[_wgslsmith_index_u32(arg_1.x, 11u)], global2[_wgslsmith_index_u32(arg_1.x, 11u)]), vec2<bool>(global2[_wgslsmith_index_u32(109525u, 11u)], true), global2[_wgslsmith_index_u32(20341u, 11u)])))), vec2<bool>(true, true));
    var var_3 = vec2<u32>(1u, 0u);
    return _wgslsmith_f_op_f32(f32(-1f) * -917f);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>) -> vec3<f32> {
    global2 = array<bool, 11>();
    global2 = array<bool, 11>();
    global2 = array<bool, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(func_4(func_3(_wgslsmith_clamp_i32(arg_1.x, arg_1.x, -1i)), ~(~vec2<u32>(46438u, 4294967295u)))), _wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(209f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-565f, _wgslsmith_f_op_f32(-arg_0.x)))))));
    var var_1 = _wgslsmith_f_op_f32(468f - 452f) <= var_0.x;
    return vec3<f32>(_wgslsmith_div_f32(arg_0.x, 1983f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -1399f)), 247f);
}

fn func_1() -> u32 {
    global0 = vec3<f32>(1001f, _wgslsmith_f_op_f32(-1875f * global0.x), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-553f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1283f)))))));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(918f - global0.x), -441f)))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(438f, -772f, 566f), vec3<f32>(-697f, -620f, 1000f))), firstTrailingBit(vec3<i32>(u_input.b.x, -11156i, u_input.a.x)))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 205f, -563f)) * vec3<f32>(var_0, global0.x, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1356f, -205f, var_0))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_0, var_0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-286f, global0.x, 1252f) - vec3<f32>(global0.x, global0.x, 878f))))), vec3<i32>(-27669i, ~_wgslsmith_dot_vec3_i32(u_input.a.wyz, vec3<i32>(u_input.b.x, 14339i, u_input.c)), _wgslsmith_div_i32(~u_input.a.x, ~u_input.c)))).yz);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, var_0, -1015f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -471f, var_0) + vec3<f32>(-809f, global0.x, var_0))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(122f, -864f, 1617f)))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, -2665f, 419f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, var_0, global0.x))) - vec3<f32>(var_0, -364f, var_0))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, firstLeadingBit(~43023u)), 7u)])));
    return 1u;
}

fn func_5(arg_0: vec4<u32>) -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(183f, 532f, global0.x)))))));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, -1222f, global0.x))))), ~vec3<i32>(u_input.b.x, u_input.c, u_input.c))).x, vec2<bool>(true, global2[_wgslsmith_index_u32(~arg_0.x, 11u)]), ~arg_0.x >> (firstTrailingBit(~29401u) % 32u), true, arg_0.x));
    var var_1 = var_0.a.a;
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(867f, 577f, 528f)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, var_0.a.a, global0.x)))))))));
    let var_2 = ~vec4<u32>(arg_0.x, ~var_0.a.c, _wgslsmith_mult_u32(reverseBits(arg_0.x), select(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(arg_0.x, arg_0.x, 0u, var_0.a.e)), 120874u, -23606i <= u_input.c)), firstLeadingBit(~firstLeadingBit(0u)));
    return _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, 1322f, var_0.a.a)))), vec3<i32>(~(u_input.c & 1i), _wgslsmith_sub_i32(1i, 7496i) ^ ~u_input.a.x, 1i))), firstTrailingBit(~_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.c, u_input.b.x, 0i), _wgslsmith_add_vec3_i32(u_input.b.xxy, vec3<i32>(-1i, u_input.a.x, u_input.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(~vec4<u32>(~1u, func_1(), ~0u, 25951u))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(1767f - 995f)), vec3<i32>(-u_input.b.x, 0i, u_input.c)))));
    global1 = array<vec3<bool>, 7>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 563f) - vec4<f32>(-1569f, 1330f, -964f, global0.x))), vec4<f32>(-1074f, _wgslsmith_f_op_f32(global0.x - global0.x), 695f, 292f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, 314f, -1400f, global0.x)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -2517f), 708f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(456f)))), -1275f))));
    let var_1 = u_input.a.yzx;
    global2 = array<bool, 11>();
    let var_2 = vec4<bool>(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(abs(~10089u), 1u), 11u)], all(vec3<bool>(false, !global2[_wgslsmith_index_u32(min(0u, 43265u), 11u)], true)), false, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_3(~var_1.x | 40275i).x, 1u, max(~1u, reverseBits(~1u))), 11u)]);
    var var_3 = ~vec3<i32>(25679i, var_1.x, u_input.b.x);
    var var_4 = all(vec2<bool>(u_input.c <= var_3.x, global2[_wgslsmith_index_u32(1u, 11u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, ~(~24312u), _wgslsmith_sub_u32(~111323u, 1u)), firstTrailingBit(firstLeadingBit(~(~vec4<u32>(1u, 1u, 1u, 4294967295u)))), var_0.x, vec3<u32>(1u, 1u, func_3(-var_3.x).x), 0u);
}

