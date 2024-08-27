struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, false, false, true, false, true, true, false, false, false, true, true, true, false, true, false, false, false, true, true, true, false, true, false, false, true);

var<private> global1: vec4<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    global0 = array<bool, 26>();
    return max(u_input.d.x, 166250u);
}

fn func_3() -> f32 {
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    var var_0 = _wgslsmith_add_u32(global1.x, max(reverseBits(global1.x), firstTrailingBit(_wgslsmith_add_u32(4294967295u, u_input.d.x)) ^ 1713u));
    let var_1 = Struct_1(vec4<f32>(915f, _wgslsmith_f_op_f32(floor(402f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1239f + -262f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(458f)), _wgslsmith_f_op_f32(f32(-1f) * -675f)), 1f))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1265f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x)), var_1.a.x)))));
}

fn func_2(arg_0: i32, arg_1: f32) -> vec4<u32> {
    global0 = array<bool, 26>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(914f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1, 2283f, global0[_wgslsmith_index_u32(u_input.d.x, 26u)])), 1841f)), _wgslsmith_f_op_f32(sign(-375f)), _wgslsmith_f_op_f32(arg_1 + 954f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), -223f))), false, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 350f, arg_1, -121f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -320f, 602f, -850f) - vec4<f32>(-1379f, arg_1, -813f, -196f))))));
    global0 = array<bool, 26>();
    var var_1 = _wgslsmith_mod_vec3_i32(max(~_wgslsmith_add_vec3_i32(vec3<i32>(19754i, u_input.b, 1292i), vec3<i32>(20157i, arg_0, arg_0)), ~(-vec3<i32>(arg_0, arg_0, u_input.c))), ~(abs(vec3<i32>(u_input.c, u_input.c, arg_0)) >> (~vec3<u32>(0u, 0u, 4294967295u) % vec3<u32>(32u)))) | abs(countOneBits(vec3<i32>(u_input.c, u_input.c, firstTrailingBit(1i))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-156f + arg_1)), -620f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -1374f))) * vec4<f32>(_wgslsmith_div_f32(arg_1, -291f), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_1)), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(arg_1, -225f, 2886f, 651f))))), firstTrailingBit(min(abs(firstLeadingBit(vec4<i32>(var_1.x, u_input.a.x, u_input.c, var_1.x))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.c, -13083i, var_1.x), vec4<i32>(var_1.x, 61064i, arg_0, arg_0)))), var_0.d.a);
    return abs(vec4<u32>(~(global1.x >> (_wgslsmith_clamp_u32(1u, global1.x, 1u) % 32u)), 0u, u_input.e, _wgslsmith_mult_u32(0u, abs(global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 26>();
    let var_0 = 217f;
    let var_1 = ~(-firstTrailingBit(~_wgslsmith_clamp_vec3_i32(vec3<i32>(38114i, -7041i, 1i), vec3<i32>(-2147483647i, 0i, 6951i), vec3<i32>(u_input.b, -1i, u_input.c))));
    global1 = select(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global1.x, min(u_input.e, 4294967295u)), _wgslsmith_mult_u32(70073u, func_1())), (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.d.x, global1.x, u_input.e), vec4<u32>(u_input.e, 3997u, u_input.d.x, 4294967295u)) >> (~u_input.e % 32u)) ^ _wgslsmith_add_u32(1u << (global1.x % 32u), 16855u), u_input.e, abs(~1u)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32((vec4<u32>(38996u, 4294967295u, 53739u, 1u) >> (vec4<u32>(global1.x, global1.x, 39868u, global1.x) % vec4<u32>(32u))) >> (min(vec4<u32>(76566u, 1u, global1.x, 0u), vec4<u32>(0u, 0u, 1u, 1u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, 43381u, 87947u, 1u) & vec4<u32>(u_input.e, u_input.e, 1u, u_input.d.x), firstLeadingBit(vec4<u32>(global1.x, 12166u, 26272u, 48894u)))), func_2(~1i, var_0)), !(!(!select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(global1.x, 26u)], true), vec4<bool>(global0[_wgslsmith_index_u32(28307u, 26u)], global0[_wgslsmith_index_u32(u_input.e, 26u)], global0[_wgslsmith_index_u32(46215u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)]), true))));
    let var_2 = Struct_2(vec4<f32>(var_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), var_0, any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 26u)], global0[_wgslsmith_index_u32(4969u, 26u)])))), var_0, _wgslsmith_f_op_f32(-var_0)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(262f, var_0, var_0, 232f)))))), select(-select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, u_input.a.x, 7729i, u_input.b), vec4<i32>(8605i, -1i, var_1.x, var_1.x)), -vec4<i32>(u_input.b, 1i, var_1.x, 1i), select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 26u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(55799u, 26u)], global0[_wgslsmith_index_u32(global1.x, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)]), global0[_wgslsmith_index_u32(global1.x, 26u)])), -(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -1i, var_1.x), vec4<i32>(u_input.b, 1i, var_1.x, var_1.x)) & ~vec4<i32>(u_input.a.x, 2147483647i, var_1.x, 2807i)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(6196u, 26u)], global0[_wgslsmith_index_u32(global1.x, 26u)]), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(global1.x, 26u)]), any(vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 26u)], global0[_wgslsmith_index_u32(u_input.d.x, 26u)], global0[_wgslsmith_index_u32(u_input.e, 26u)]))), !select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 26u)], true, global0[_wgslsmith_index_u32(27354u, 26u)], false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 26u)], false, global0[_wgslsmith_index_u32(global1.x, 26u)], false), global0[_wgslsmith_index_u32(global1.x, 26u)]), !all(vec2<bool>(false, global0[_wgslsmith_index_u32(global1.x, 26u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, -145f) * vec4<f32>(966f, var_0, var_0, 1127f)))));
    global1 = vec4<u32>(u_input.e, func_2(var_2.c.x, _wgslsmith_f_op_f32(-var_0)).x ^ global1.x, ~_wgslsmith_div_u32(6710u, 1u), 5747u);
    let var_3 = _wgslsmith_f_op_f32(-var_0);
    var var_4 = var_2.c.ywz;
    let var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3)) - _wgslsmith_f_op_f32(step(574f, -977f))), var_5.a.x))));
}

