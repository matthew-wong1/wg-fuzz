struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), vec4<i32>(-1i, 0i, i32(-2147483648), 2147483647i), vec2<bool>(false, false));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<u32> {
    global0 = array<f32, 15>();
    global1 = Struct_1(global1.a, _wgslsmith_sub_vec4_i32(select(global1.b | vec4<i32>(global1.b.x, u_input.c.x, global1.b.x, global1.b.x), -vec4<i32>(global1.b.x, u_input.c.x, u_input.c.x, -1961i), true), vec4<i32>(u_input.a.x, _wgslsmith_add_i32(-28349i, global1.b.x), u_input.c.x | u_input.c.x, u_input.c.x)) | ~(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -2147483647i, -20331i, -2147483647i)), global1.c);
    global0 = array<f32, 15>();
    let var_0 = ~1u;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 15u)]), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, 0u | global1.a.x), 15u)])), 255f);
    return global1.a;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_div_f32(global0[_wgslsmith_index_u32(41077u, 15u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 15u)])) - _wgslsmith_f_op_f32(f32(-1f) * -286f)))));
    global1 = arg_1;
    let var_1 = arg_1;
    let var_2 = Struct_1(~(~vec3<u32>(28159u, firstTrailingBit(arg_1.a.x), ~arg_1.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(~_wgslsmith_mult_i32(global1.b.x, -1i), 58168i, _wgslsmith_div_i32(global1.b.x & 1i, var_1.b.x >> (var_1.a.x % 32u)), u_input.a.x), max(vec4<i32>(~u_input.a.x, 1i, 1i, _wgslsmith_sub_i32(global1.b.x, 35765i)), select(vec4<i32>(0i, arg_1.b.x, arg_2, var_1.b.x), arg_1.b & vec4<i32>(12554i, 2147483647i, 4232i, arg_0), any(vec2<bool>(false, var_1.c.x))))), select(var_1.c, select(!(!arg_1.c), !(!var_1.c), !global1.c), var_1.c));
    var var_3 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.x, 39901u, arg_1.a.x, 0u), vec4<u32>(var_1.a.x, arg_1.a.x, 59170u, var_1.a.x))), ~firstTrailingBit(vec4<u32>(global1.a.x, 0u, 0u, arg_1.a.x))), global1.a.x, 0u), var_2.b, !vec2<bool>(_wgslsmith_f_op_f32(trunc(var_0)) < var_0, all(select(vec3<bool>(var_2.c.x, true, arg_1.c.x), vec3<bool>(var_2.c.x, arg_1.c.x, global1.c.x), var_1.c.x))));
    return ~abs(~(~_wgslsmith_div_u32(1u, var_2.a.x)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec4<u32>) -> vec2<u32> {
    global1 = Struct_1(arg_2.wwx, vec4<i32>(-global1.b.x, -12998i, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-66493i, global1.b.x) & vec2<i32>(global1.b.x, -23591i), firstLeadingBit(vec2<i32>(global1.b.x, -7275i)))), _wgslsmith_sub_i32(abs(-global1.b.x), abs(0i))), vec2<bool>(!arg_1, true));
    let var_0 = u_input.c;
    global0 = array<f32, 15>();
    var var_1 = _wgslsmith_clamp_u32(func_4(global1.b.x, Struct_1(_wgslsmith_div_vec3_u32(func_3(), abs(arg_2.zxx)), vec4<i32>(u_input.c.x, i32(-1i) * -17638i, countOneBits(var_0.x), global1.b.x), !select(vec2<bool>(true, false), vec2<bool>(true, arg_1), false)), 0i, any(!vec3<bool>(arg_1, global1.c.x, global1.c.x))), ~u_input.b, ~min(global1.a.x, 1u));
    global0 = array<f32, 15>();
    return vec2<u32>(~37111u, 14013u);
}

fn func_5(arg_0: bool, arg_1: vec2<u32>) -> u32 {
    global1 = Struct_1(vec3<u32>(countOneBits(_wgslsmith_dot_vec2_u32(arg_1, global1.a.yy)), ~min(arg_1.x, global1.a.x), firstLeadingBit(~arg_1.x)) | min(min(global1.a & vec3<u32>(global1.a.x, 19171u, u_input.b), func_3()), vec3<u32>(1u, 1u, global1.a.x) & vec3<u32>(4294967295u, arg_1.x, 20208u)), vec4<i32>(global1.b.x, 40079i >> (_wgslsmith_add_u32(~arg_1.x, ~1u) % 32u), _wgslsmith_div_i32(~(-17438i), _wgslsmith_mod_i32(u_input.c.x, min(global1.b.x, u_input.c.x))), 32295i), select(vec2<bool>((global1.b.x > -3568i) && true, true), global1.c, vec2<bool>(any(select(vec2<bool>(arg_0, false), vec2<bool>(global1.c.x, true), false)), global1.c.x)));
    let var_0 = -vec4<i32>(-14569i, global1.b.x, select(-55449i, reverseBits(2147483647i), global1.c.x), ~u_input.c.x);
    var var_1 = _wgslsmith_add_vec2_i32(~_wgslsmith_add_vec2_i32(min(abs(global1.b.xx), vec2<i32>(-1i, global1.b.x)), countOneBits(reverseBits(vec2<i32>(var_0.x, 22650i)))), _wgslsmith_mod_vec2_i32(-(max(var_0.yx, vec2<i32>(var_0.x, 10807i)) | (var_0.zw << (vec2<u32>(26516u, arg_1.x) % vec2<u32>(32u)))), ~max(global1.b.xw, vec2<i32>(var_0.x, global1.b.x))));
    var var_2 = vec3<f32>(global0[_wgslsmith_index_u32(arg_1.x, 15u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 15u)]) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 15u)]))))), _wgslsmith_f_op_f32(-1f));
    var_1 = ~(~max(vec2<i32>(-1i, global1.b.x), u_input.a.yz) << (_wgslsmith_mod_vec2_u32(global1.a.zy, _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1, vec2<u32>(arg_1.x, arg_1.x)), arg_1)) % vec2<u32>(32u)));
    return 0u;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    var var_0 = func_5(true, _wgslsmith_mod_vec2_u32(countOneBits(func_2(1f, true, vec4<u32>(52429u, 16615u, 60816u, global1.a.x) >> (vec4<u32>(49163u, 1u, 0u, global1.a.x) % vec4<u32>(32u)))), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(8349u, global1.a.x)), abs(global1.a.xz), ~(~global1.a.yx))));
    var var_1 = 3629u;
    var var_2 = Struct_1(vec3<u32>(u_input.b, u_input.b, (~global1.a.x | u_input.b) ^ (1u << (_wgslsmith_mod_u32(1u, 46892u) % 32u))), countOneBits(-(~(vec4<i32>(u_input.a.x, 0i, u_input.a.x, 1i) | vec4<i32>(u_input.c.x, global1.b.x, -2147483647i, global1.b.x)))), !vec2<bool>(true, global1.c.x));
    return Struct_1(countOneBits(vec3<u32>(u_input.b, global1.a.x, firstTrailingBit(~var_2.a.x))), ~firstTrailingBit(reverseBits(abs(vec4<i32>(-6855i, -1i, -2147483647i, var_2.b.x)))), !select(global1.c, vec2<bool>(var_2.c.x | global1.c.x, 74112u > u_input.b), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(21747u, 15u)] - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(34912u, 15u)] - -1718f), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(105288u, 15u)], 1012f))))), 1752f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(20671u, 15u)] - global0[_wgslsmith_index_u32(34522u, 15u)]), _wgslsmith_f_op_f32(604f - -341f)) - global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.a.x, u_input.b), 15u)]), global0[_wgslsmith_index_u32(30184u, 15u)]));
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    var var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 15u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(803f + global0[_wgslsmith_index_u32(~1u, 15u)])) + global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, _wgslsmith_mod_u32(_wgslsmith_div_u32(12623u, 21353u), _wgslsmith_clamp_u32(u_input.b, global1.a.x, 1u))), 15u)]));
    var_1 = global0[_wgslsmith_index_u32(~var_0.a.x, 15u)];
    let var_2 = Struct_1(vec3<u32>(0u, countOneBits(u_input.b), 6182u), abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(global1.b, ~var_0.b), global1.b, abs(global1.b))), func_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(169f * 1000f) - 168f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(var_0.a.x, 15u)]))), -801f, global0[_wgslsmith_index_u32(u_input.b, 15u)])).c);
    var var_3 = global0[_wgslsmith_index_u32(~(~u_input.b), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-206f, global0[_wgslsmith_index_u32(global1.a.x, 15u)], global0[_wgslsmith_index_u32(global1.a.x, 15u)]) * vec3<f32>(494f, 1172f, global0[_wgslsmith_index_u32(u_input.b, 15u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-335f, -398f, 123f) * vec3<f32>(1014f, 1897f, global0[_wgslsmith_index_u32(4294967295u, 15u)])), any(vec4<bool>(true, true, global1.c.x, global1.c.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_2.a.x, 15u)], global0[_wgslsmith_index_u32(22876u, 15u)], global0[_wgslsmith_index_u32(45026u, 15u)]), vec3<f32>(237f, -995f, global0[_wgslsmith_index_u32(var_2.a.x, 15u)]))))), _wgslsmith_add_u32(~_wgslsmith_sub_u32(~u_input.b, min(var_2.a.x, var_2.a.x)), var_0.a.x), vec4<u32>(~_wgslsmith_dot_vec3_u32(var_0.a, abs(var_0.a)), 0u, u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(32524u, u_input.b), vec2<u32>(45557u, 12757u)), vec2<u32>(global1.a.x, 23435u)) >> ((~var_0.a.x | 4294967295u) % 32u)), -_wgslsmith_div_i32(_wgslsmith_sub_i32(~7323i, 8049i), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(952f, global0[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(var_2.a.x, 15u)], -955f))).b.x), -655f);
}

