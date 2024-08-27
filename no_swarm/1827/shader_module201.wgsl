struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 897f;

var<private> global1: array<i32, 15>;

var<private> global2: array<vec4<i32>, 27>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    global0 = arg_0.a.x;
    global1 = array<i32, 15>();
    global2 = array<vec4<i32>, 27>();
    global2 = array<vec4<i32>, 27>();
    var var_0 = ~vec2<i32>(4834i, 15633i);
    return vec3<u32>(42404u, _wgslsmith_mult_u32(u_input.a.x, firstTrailingBit(reverseBits(~u_input.a.x))), ~(~((12618u | u_input.a.x) << (4294967295u % 32u))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> i32 {
    global1 = array<i32, 15>();
    global1 = array<i32, 15>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(trunc(-883f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 * 803f))) - _wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(-arg_2))))));
    var var_1 = _wgslsmith_clamp_vec4_i32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_3, arg_3)), 58309u), ~_wgslsmith_sub_u32(arg_3, 41493u), ~4294967295u), 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)], abs(_wgslsmith_div_vec4_i32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, arg_3), 27u)], vec4<i32>(-51252i, 0i, u_input.b, u_input.b) | global2[_wgslsmith_index_u32(1u, 27u)]))) >> (_wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(678u, arg_3, arg_3, arg_3), vec4<u32>(10890u, u_input.a.x, 14863u, 47134u))), vec4<u32>(0u, max(~0u, arg_3), 26905u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(1781u, u_input.a.x), vec2<u32>(u_input.a.x, arg_3)), _wgslsmith_mult_u32(4294967295u, u_input.a.x)))) % vec4<u32>(32u));
    var_1 = min(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_2(arg_1).x, _wgslsmith_add_u32(~arg_3, select(68621u, _wgslsmith_add_u32(u_input.a.x, 4358u), true))), 27u)], -min(vec4<i32>(-u_input.b, 9146i, ~2147483647i, -u_input.b), global2[_wgslsmith_index_u32(~(~13870u), 27u)]));
    return -20905i;
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, arg_0.x, arg_0.x, 109f), vec4<f32>(arg_1, 142f, 545f, arg_0.x)))) - vec4<f32>(_wgslsmith_f_op_f32(max(-665f, arg_1)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(abs(-496f)), -247f)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1159f, arg_1, 483f, arg_0.x) + vec4<f32>(arg_1, -972f, 1000f, 100f))))))));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.a.x))))))), _wgslsmith_f_op_f32(-arg_1), all(vec3<bool>(!(arg_0.x == -1000f), true, true))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -154f);
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(844f, 459f), -1044f, all(vec3<bool>(true, true, true))));
    var var_1 = min(~vec4<i32>(countOneBits(~(-1i)), 0i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], u_input.b), global1[_wgslsmith_index_u32(13921u, 15u)]), ~_wgslsmith_div_i32(global1[_wgslsmith_index_u32(4294967295u, 15u)], u_input.b)), vec4<i32>(-_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 15u)], -8970i), arg_2, u_input.b, abs(firstLeadingBit(arg_2) ^ _wgslsmith_mod_i32(u_input.b, 1i))));
    return u_input.a.x;
}

fn func_1() -> vec4<u32> {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, ~firstTrailingBit(~0u)), _wgslsmith_mod_vec3_u32(select(func_2(Struct_1(vec4<f32>(1548f, 278f, -430f, 359f))), ~vec3<u32>(u_input.a.x, 69074u, u_input.a.x), all(vec4<bool>(false, true, false, false))), ~firstLeadingBit(~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))));
    var var_1 = ~func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(231f, 1000f, 1891f))) + vec3<f32>(_wgslsmith_f_op_f32(-622f - 1229f), _wgslsmith_f_op_f32(abs(-330f)), _wgslsmith_f_op_f32(313f * 165f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(134f + 2004f) * _wgslsmith_div_f32(490f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(537f - 168f) - 175f), true)), _wgslsmith_mult_i32(u_input.b, reverseBits(global1[_wgslsmith_index_u32(u_input.a.x, 15u)])) | func_3(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), Struct_1(vec4<f32>(1000f, 1204f, -1000f, -1291f)), _wgslsmith_f_op_f32(step(1254f, -594f)), 1u));
    let var_2 = true;
    global2 = array<vec4<i32>, 27>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-494f, -1039f)))))));
    return ~(_wgslsmith_sub_vec4_u32(vec4<u32>(~1u, u_input.a.x, countOneBits(1u), firstTrailingBit(0u)), max(~vec4<u32>(1u, u_input.a.x, 66729u, 1u), abs(vec4<u32>(var_0, u_input.a.x, 100750u, 0u)))) >> (((vec4<u32>(u_input.a.x, 15056u, u_input.a.x, 0u) << (reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 15666u, 1u)) % vec4<u32>(32u))) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, var_0, 1u), vec4<u32>(69177u, var_0, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec4<i32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a)))));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> Struct_1 {
    global1 = array<i32, 15>();
    global0 = _wgslsmith_div_f32(-765f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -596f)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(957f, _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x))))));
    global1 = array<i32, 15>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(arg_0.a, arg_0.a)));
    global0 = 117f;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 27>();
    var var_0 = ~(~(~_wgslsmith_mult_i32(0i, select(u_input.b, 4086i, false))));
    let var_1 = func_6(func_5(Struct_1(vec4<f32>(792f, _wgslsmith_div_f32(-599f, 1486f), -2322f, -565f)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 441f, -1020f, 303f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(395f, -678f, 316f, -1260f)))), _wgslsmith_sub_vec4_u32(min(countOneBits(vec4<u32>(1u, u_input.a.x, 13753u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 47157u, 1u, u_input.a.x), vec4<u32>(26257u, u_input.a.x, 62805u, 4294967295u))), func_1()), vec4<i32>(u_input.b, u_input.b, min(_wgslsmith_mod_i32(u_input.b, u_input.b), -u_input.b), 0i)), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(firstTrailingBit(firstTrailingBit(vec2<i32>(16337i, global1[_wgslsmith_index_u32(92956u, 15u)]))), select(select(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 0i), vec2<i32>(u_input.b, 2287i), true), max(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec2<i32>(-2147483647i, u_input.b)), true)), vec2<i32>(-u_input.b, ~(global1[_wgslsmith_index_u32(0u, 15u)] | global1[_wgslsmith_index_u32(u_input.a.x, 15u)]))), true);
    let var_2 = -vec2<i32>(reverseBits(_wgslsmith_clamp_i32(firstTrailingBit(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1722i, u_input.b, u_input.b), global2[_wgslsmith_index_u32(u_input.a.x, 27u)]), _wgslsmith_clamp_i32(u_input.b, -27591i, global1[_wgslsmith_index_u32(u_input.a.x, 15u)]))), 2147483647i);
    global2 = array<vec4<i32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(var_1.a.wzx)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-866f)))))), 14408u, -298f, vec2<u32>(_wgslsmith_dot_vec4_u32((vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x) & vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 51615u, u_input.a.x, 19529u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1980u)), vec4<u32>(36803u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 5150u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 1u, 32343u, 73552u)), firstLeadingBit(42952u), firstLeadingBit(u_input.a.x))), 0u));
}

