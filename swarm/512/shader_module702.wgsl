struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 2> = array<f32, 2>(239f, -266f);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), ~(~vec2<u32>(4294967295u, 1u))), abs(1u), u_input.b);
    let var_1 = _wgslsmith_div_vec4_u32(~(vec4<u32>(10079u, var_0.x, 52380u, _wgslsmith_add_u32(u_input.b, u_input.b)) & _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 0u, 13326u, u_input.b), ~vec4<u32>(u_input.b, var_0.x, 1449u, 15687u))), vec4<u32>(~(~var_0.x), 80992u, 0u, ~firstTrailingBit(var_0.x) >> (~var_0.x % 32u)));
    var var_2 = Struct_1(18062i, -43064i, select(vec3<bool>(~2147483647i <= (u_input.a ^ u_input.a), !(286f != global1[_wgslsmith_index_u32(var_0.x, 2u)]), u_input.a == 36075i), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)), select(vec3<bool>(false, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), u_input.a >= -76718i), var_0.x != ~1u)), vec3<u32>(~(~32431u), 93815u, u_input.b) | vec3<u32>(1u, var_1.x, var_1.x));
    let var_3 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(-452f, -933f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_0.x, 2u)], global1[_wgslsmith_index_u32(1u, 2u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_1.x, 2u)], global1[_wgslsmith_index_u32(u_input.b, 2u)])))))), Struct_1(~(~countOneBits(40827i)), min(-85666i, -2147483647i & ~var_2.b), vec3<bool>(true, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(var_0.x, 2u)])) < _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(13021u, 2u)]), false && select(var_2.c.x, var_2.c.x, var_2.c.x)), ~vec3<u32>(~var_0.x, ~14854u, ~var_1.x)));
    var var_4 = select(var_2.b, var_2.a, var_3.c.c.x) < firstLeadingBit(_wgslsmith_dot_vec4_i32(abs(~vec4<i32>(var_3.c.b, var_2.a, u_input.a, var_3.c.b)), vec4<i32>(_wgslsmith_clamp_i32(var_3.c.a, -15739i, var_3.c.b), -50674i, 50828i, u_input.a)));
    return select(select(!select(var_3.c.c, vec3<bool>(var_3.c.c.x, var_2.c.x, true), any(vec4<bool>(true, var_3.c.c.x, var_3.c.c.x, var_3.c.c.x))), !vec3<bool>(any(vec4<bool>(var_2.c.x, var_3.c.c.x, true, var_2.c.x)), var_3.c.d.x == var_3.c.d.x, true), false), select(vec3<bool>(!any(vec4<bool>(var_3.c.c.x, false, false, var_3.c.c.x)), !var_3.c.c.x, true), var_2.c, vec3<bool>(_wgslsmith_sub_u32(4294967295u, 4294967295u) > (1u & u_input.b), true, _wgslsmith_f_op_f32(var_3.a.x - 549f) < -1695f)), var_3.c.c.x);
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_1(-u_input.a, u_input.a, func_3(), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, 4294967295u), vec3<u32>(72396u, u_input.b, 0u)), ~vec3<u32>(4294967295u, 26936u, u_input.b)), vec3<u32>(~1u, firstTrailingBit(u_input.b), _wgslsmith_div_u32(u_input.b, u_input.b))), abs(abs(_wgslsmith_add_vec3_u32(vec3<u32>(56604u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b))))));
    global1 = array<f32, 2>();
    let var_1 = Struct_1(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, var_0.b), abs(countOneBits(_wgslsmith_add_i32(u_input.a, u_input.a))), select(var_0.c, func_3(), countOneBits(select(-2147483647i, 2147483647i, false)) == (_wgslsmith_dot_vec2_i32(vec2<i32>(1104i, -45917i), vec2<i32>(-1i, 3606i)) & 2188i)), _wgslsmith_sub_vec3_u32(var_0.d, vec3<u32>(u_input.b, 0u, _wgslsmith_add_u32(select(9728u, u_input.b, true), u_input.b | 1u))));
    let var_2 = 34812i;
    let var_3 = !(!(!(!(!vec4<bool>(var_0.c.x, var_1.c.x, true, var_1.c.x)))));
    return vec2<bool>(var_0.c.x, true);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = vec4<bool>(!(_wgslsmith_f_op_f32(floor(1541f)) <= _wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_0.d.x, 2u)], global1[_wgslsmith_index_u32(12714u, 2u)])) & (all(!vec4<bool>(true, false, arg_0.c.x, arg_0.c.x)) && false), false, all(func_2()), false);
    global0 = arg_2.c.d.x;
    global0 = 15606u;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-349f + global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 90902u, arg_3.c.d.x), 2u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 2u)])))) - vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1369f * arg_2.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x * 938f)) + -573f)));
    return 38389u | _wgslsmith_mod_u32(abs(~4294967295u), arg_3.c.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.b, 2u)], global1[_wgslsmith_index_u32(u_input.b, 2u)])) * _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 2u)]))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, global1[_wgslsmith_index_u32(1u, 2u)]) + global1[_wgslsmith_index_u32(22477u, 2u)]))), global1[_wgslsmith_index_u32(u_input.b ^ ~(~(~u_input.b)), 2u)], any(select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(Struct_1(8149i, 5484i, vec3<bool>(false, false, false), vec3<u32>(1u, 1u, u_input.b)), vec2<i32>(34465i, -2147483647i), Struct_2(vec2<f32>(-1434f, global1[_wgslsmith_index_u32(u_input.b, 2u)]), vec2<f32>(618f, -341f), Struct_1(1i, 0i, vec3<bool>(false, true, false), vec3<u32>(u_input.b, u_input.b, 0u))), Struct_2(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 2u)], 478f), vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 2u)], -1094f), Struct_1(-489i, u_input.a, vec3<bool>(false, true, true), vec3<u32>(1u, 0u, 39431u)))) <= firstLeadingBit(u_input.b)))));
    let var_1 = Struct_1(~u_input.a, -1i, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false)), func_3().x, true), select(vec3<bool>(true, func_2().x, u_input.b <= 5070u), vec3<bool>(false, true, true), func_3())), ~select(vec3<u32>(u_input.b, firstLeadingBit(u_input.b), u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b) & vec3<u32>(0u, u_input.b, u_input.b), vec3<bool>(true, true, true)));
    global1 = array<f32, 2>();
    global1 = array<f32, 2>();
    let var_2 = !var_1.c.yz;
    let var_3 = Struct_2(vec2<f32>(611f, _wgslsmith_f_op_f32(var_0 * global1[_wgslsmith_index_u32(max(max(u_input.b, var_1.d.x), var_1.d.x), 2u)])), vec2<f32>(_wgslsmith_f_op_f32(abs(718f)), -102f), var_1);
    global1 = array<f32, 2>();
    var var_4 = _wgslsmith_sub_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.a, ~var_1.b, -6102i, _wgslsmith_dot_vec3_i32(vec3<i32>(50695i, u_input.a, u_input.a), vec3<i32>(var_3.c.b, -2147483647i, var_3.c.b)))), abs(vec4<i32>(_wgslsmith_mod_i32(1847i, _wgslsmith_sub_i32(-1i, 1i)), u_input.a >> (var_3.c.d.x % 32u), _wgslsmith_clamp_i32(var_1.b, _wgslsmith_add_i32(var_1.a, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, -2147483647i, -1i), vec3<i32>(var_3.c.a, var_3.c.a, var_3.c.b))), 1i)));
    let var_5 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(var_4.x, -27963i), u_input.a, u_input.a), ~_wgslsmith_mult_vec3_i32(var_4.xyw, vec3<i32>(var_4.x, 1i, 43822i)), _wgslsmith_sub_vec3_i32(-var_4.xyw, ~var_4.wwz)) | reverseBits(-var_4.yyx));
    let x = u_input.a;
    s_output = StorageBuffer(97777u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -485f))), -692f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-860f * var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, global1[_wgslsmith_index_u32(var_1.d.x, 2u)], var_2.x)) + _wgslsmith_f_op_f32(abs(var_0))))), select(vec4<u32>(1u, max(0u, u_input.b), _wgslsmith_dot_vec3_u32(max(vec3<u32>(97139u, 0u, 0u), vec3<u32>(7564u, 39963u, 0u)), max(vec3<u32>(4294967295u, 0u, 16987u), vec3<u32>(4294967295u, var_3.c.d.x, var_3.c.d.x))), 1u), vec4<u32>(max(abs(var_3.c.d.x), var_3.c.d.x), ~u_input.b >> (abs(u_input.b) % 32u), u_input.b, 1u), any(!var_1.c.xz)), ~(~(~countOneBits(var_3.c.d.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-684f, _wgslsmith_f_op_f32(f32(-1f) * -905f), -1436f)));
}

