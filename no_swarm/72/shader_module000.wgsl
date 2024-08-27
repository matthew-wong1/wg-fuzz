struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> vec4<i32> {
    global0 = array<vec4<bool>, 6>();
    global0 = array<vec4<bool>, 6>();
    let var_0 = Struct_3(abs(vec2<i32>(~_wgslsmith_mult_i32(0i, u_input.b), ~firstTrailingBit(u_input.b))), vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), select(true, any(vec3<bool>(true, false, true)) || true, all(!global0[_wgslsmith_index_u32(u_input.a, 6u)])), true & (all(vec2<bool>(false, true)) == true), true));
    var var_1 = Struct_1(~vec4<u32>(select(~21994u, _wgslsmith_clamp_u32(u_input.a, u_input.a, 2447u), false), ~(~26746u), ~firstTrailingBit(29287u), reverseBits(0u)), 237f);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0, arg_0)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(679f, -1714f))))));
    return reverseBits(max(~_wgslsmith_mult_vec4_i32(vec4<i32>(-34154i, 13036i, var_0.a.x, 1i), vec4<i32>(-18053i, 0i, 0i, 1436i)), countOneBits(vec4<i32>(-2147483647i, 0i, 67119i, 0i) << (var_1.a % vec4<u32>(32u))))) ^ select(vec4<i32>(var_0.a.x, ~13949i, _wgslsmith_sub_i32(reverseBits(var_0.a.x), var_0.a.x), _wgslsmith_mult_i32(var_0.a.x << (u_input.a % 32u), -1i)), vec4<i32>(var_0.a.x, 0i << (var_1.a.x % 32u), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_0.a.x, var_0.a.x, -15264i), vec4<i32>(var_0.a.x, 57998i, var_0.a.x, 4711i)), -2147483647i), vec4<bool>(!any(vec3<bool>(false, var_0.b.x, var_0.b.x)), true, any(select(var_0.b.yz, vec2<bool>(false, var_0.b.x), var_0.b.yy)), var_0.b.x));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: bool, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = select(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-1i, u_input.b), u_input.b, ~41502i, -u_input.b), vec4<i32>(-1i, ~(-18846i), 22425i, -2147483647i)), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-542f, -1031f) - vec2<f32>(-650f, 1000f))) << (vec4<u32>(_wgslsmith_mod_u32(60542u, 6748u), 1u, arg_3.x & 0u, abs(arg_1.x)) % vec4<u32>(32u)), !(!vec4<bool>(true, arg_2, false, arg_2))) << (vec4<u32>(countOneBits(~(~0u)), 0u, ~4294967295u, ~(~(u_input.a ^ 30212u))) % vec4<u32>(32u));
    global0 = array<vec4<bool>, 6>();
    let var_1 = !arg_2;
    var var_2 = Struct_3(~(-(select(vec2<i32>(u_input.b, 36223i), var_0.xx, vec2<bool>(false, true)) << (min(vec2<u32>(arg_3.x, u_input.a), arg_3) % vec2<u32>(32u)))), !(!select(global0[_wgslsmith_index_u32(arg_1.x, 6u)], !global0[_wgslsmith_index_u32(u_input.a, 6u)], select(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(arg_1.x, 6u)], false))));
    var var_3 = Struct_3(var_2.a, select(var_2.b, !vec4<bool>(arg_0, true && arg_0, true, !arg_0), var_1));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-279f))))), Struct_1(vec4<u32>(~(arg_3.x & 1u), u_input.a, 0u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 105147u, arg_3.x, u_input.a), vec4<u32>(34957u, 1u, 0u, 59120u)))), 937f), Struct_1(abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(33899u, 20981u, 4294967295u, 20490u), vec4<u32>(arg_1.x, 4294967295u, u_input.a, u_input.a) << (vec4<u32>(40855u, arg_1.x, 4294967295u, arg_3.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(min(366f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1769f, -1038f))))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = func_2(!(!(17766i >= u_input.b)) | ((_wgslsmith_mod_u32(u_input.a, u_input.a) ^ ~u_input.a) > ~_wgslsmith_mult_u32(22520u, 1u)), _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_mult_u32(1u, 4294967295u), u_input.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u))), abs(vec2<u32>(1u, u_input.a)))), true, ~abs(vec2<u32>(u_input.a, _wgslsmith_div_u32(65966u, u_input.a))));
    let var_1 = _wgslsmith_mod_i32(u_input.b, 0i << (_wgslsmith_mult_u32(~min(u_input.a, 61525u), var_0.c.a.x) % 32u));
    var var_2 = func_2(false, ~(~select(~vec2<u32>(0u, 0u), var_0.c.a.yy, vec2<bool>(true, true))), false, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(56963u, var_0.c.a.x), var_0.c.a.x << (0u % 32u)) ^ firstLeadingBit(_wgslsmith_add_u32(4288u, 0u)), 0u));
    global0 = array<vec4<bool>, 6>();
    let var_3 = var_2.b.a.x;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), var_0.a) - _wgslsmith_f_op_f32(-918f - _wgslsmith_f_op_f32(max(arg_0.x, 969f))))), Struct_1(select(var_0.b.a, var_2.c.a, select(!global0[_wgslsmith_index_u32(var_0.b.a.x, 6u)], vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.b, -1000f)) - _wgslsmith_f_op_f32(-675f - _wgslsmith_f_op_f32(-165f * arg_0.x)))), Struct_1(_wgslsmith_clamp_vec4_u32(var_0.c.a, _wgslsmith_mod_vec4_u32(~var_2.b.a, ~vec4<u32>(var_0.b.a.x, 0u, u_input.a, var_0.c.a.x)), ~var_0.b.a ^ countOneBits(var_2.c.a)), _wgslsmith_f_op_f32(arg_0.x - var_0.c.b)));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(1i, _wgslsmith_add_i32(0i, u_input.b)), firstLeadingBit(_wgslsmith_div_vec2_i32(~vec2<i32>(38592i, u_input.b), min(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b))))) & (select(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.b, u_input.b), -vec2<i32>(u_input.b, -1i)), vec2<i32>(u_input.b, _wgslsmith_mod_i32(u_input.b, -44038i)), select(select(vec2<bool>(arg_1, true), vec2<bool>(true, false), vec2<bool>(false, arg_1)), vec2<bool>(arg_1, true), vec2<bool>(false, true))) >> (~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 1u), arg_3.b.a.yz)) % vec2<u32>(32u)));
    global0 = array<vec4<bool>, 6>();
    var var_1 = vec2<bool>(false, false);
    var var_2 = _wgslsmith_f_op_f32(ceil(func_2(var_1.x, vec2<u32>(_wgslsmith_dot_vec2_u32(arg_3.b.a.xw, arg_3.c.a.zw), _wgslsmith_sub_u32(~1u, ~arg_0)), true, ~arg_3.c.a.wy).a));
    var var_3 = -vec2<i32>(u_input.b, countOneBits(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_3.c.b))).x));
    return arg_3.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_4(~(~u_input.a), all(select(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)])), u_input.a >> ((5332u << (u_input.a % 32u)) % 32u), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1456f, 234f) * vec2<f32>(1299f, 1000f)))) ^ ~(~firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 1139u))), 235f);
    let var_1 = func_2((u_input.a | var_0.a.x) >= ~(~106565u), var_0.a.xz, !(!all(vec4<bool>(true, true, false, true))), firstLeadingBit(~min(var_0.a.xy, abs(var_0.a.wx))));
    let var_2 = Struct_3(~reverseBits(~(vec2<i32>(23637i, 2147483647i) << (var_0.a.xz % vec2<u32>(32u)))), global0[_wgslsmith_index_u32(abs(~(1u << ((117856u >> (var_0.a.x % 32u)) % 32u))), 6u)]);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))));
    let var_4 = func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3, var_1.c.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, var_1.b.b) * vec2<f32>(833f, var_1.c.b)))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(floor(-821f))))), _wgslsmith_f_op_f32(-562f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) <= _wgslsmith_f_op_f32(func_1(vec2<f32>(218f, var_1.a)).a - -1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, -var_2.a.x, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.b)) - 590f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1279f) + _wgslsmith_f_op_f32(abs(var_4.b.b))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-102f, 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(347f)), _wgslsmith_f_op_f32(trunc(-431f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_4.c.b * 290f), _wgslsmith_f_op_f32(var_3 * 1680f)))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_3)))).c.b), ~10672i << ((countOneBits(firstLeadingBit(var_4.b.a.x)) ^ func_4(var_1.b.a.x, all(var_2.b.yzz), min(var_1.c.a.x, 78517u), var_1).x) % 32u), firstTrailingBit(-(reverseBits(var_2.a) & -var_2.a)));
}

