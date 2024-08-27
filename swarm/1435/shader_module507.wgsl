struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(-374f, 366f, 1000f, 438f), vec3<u32>(64200u, 4294967295u, 17082u), vec4<u32>(24845u, 0u, 91412u, 15893u), 0u, vec2<i32>(-5786i, -1i));

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(70430u), Struct_1(4294967295u), Struct_1(21581u), Struct_1(52871u), Struct_1(1u), Struct_1(42998u), Struct_1(4294967295u), Struct_1(22759u), Struct_1(37886u), Struct_1(14918u), Struct_1(0u), Struct_1(1u), Struct_1(0u), Struct_1(40242u), Struct_1(29798u), Struct_1(0u), Struct_1(5421u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(19472u));

var<private> global2: u32;

var<private> global3: array<u32, 20> = array<u32, 20>(0u, 4294967295u, 1u, 0u, 12571u, 1u, 5411u, 15742u, 8429u, 1u, 0u, 35016u, 4294967295u, 82400u, 4294967295u, 1u, 4294967295u, 10065u, 1u, 4294967295u);

var<private> global4: array<Struct_1, 25>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> u32 {
    global1 = array<Struct_1, 20>();
    var var_0 = global4[_wgslsmith_index_u32(~1u, 25u)];
    var_0 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32((u_input.a.zz ^ u_input.a.zy) >> ((vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(36453u, 20u)]) & global0.c.xw) % vec2<u32>(32u)), global0.c.xx), ~vec2<u32>(global0.b.x, min(23384u, 0u))));
    var var_1 = Struct_1(global0.d);
    var var_2 = global0.b.zz;
    return var_0.a;
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> u32 {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(-global0.a))) * global0.a), ~abs(u_input.a), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], 53447u, max(_wgslsmith_div_u32(52036u >> (1u % 32u), 4294967295u), ~(~1u)), 56613u), ~(~func_2()), vec2<i32>(119i, 2147483647i));
    global4 = array<Struct_1, 25>();
    global0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2675f, global0.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -818f)) * _wgslsmith_f_op_f32(-112f * _wgslsmith_f_op_f32(ceil(-1931f)))), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-global0.a.x)), ~firstLeadingBit(global0.b), vec4<u32>(abs(func_2()), arg_0, ~(~4294967295u), 1u), firstTrailingBit(min(u_input.b, 46412u)), ~vec2<i32>(arg_1.x, arg_1.x));
    let var_0 = vec2<u32>(min(59538u, u_input.a.x), ~_wgslsmith_dot_vec3_u32(global0.c.zwz, select(u_input.a, global0.b, true))) | vec2<u32>(abs(reverseBits(reverseBits(u_input.b))), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0, global0.b.x, 1u), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], 76328u, 1u, global0.b.x))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(173f, global0.a.x)), 823f);
    return ~(~select(u_input.b, 72963u, true) | global3[_wgslsmith_index_u32(min(firstTrailingBit(88823u), 0u), 20u)]);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: i32, arg_3: vec4<i32>) -> vec3<u32> {
    let var_0 = vec2<i32>(i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(arg_3, vec4<i32>(1i, 24055i, arg_3.x, 7810i)), _wgslsmith_mult_i32(1i, 59131i)), _wgslsmith_mod_i32(3195i, 23124i));
    var var_1 = arg_2;
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, global0.a.x)), 2212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1044f * -384f) + -1381f)), _wgslsmith_f_op_f32(round(-1000f))), global0.b, abs(~abs(vec4<u32>(1u, arg_1.x, u_input.b, arg_1.x))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.a.zz, arg_1.yz >> (arg_1.zz % vec2<u32>(32u))), u_input.a.yz), ~(~_wgslsmith_dot_vec3_u32(arg_1.yzw, vec3<u32>(4147u, 24301u, 0u)))), vec2<i32>(~arg_2, _wgslsmith_mod_i32(_wgslsmith_add_i32(global0.e.x, ~1i), ~_wgslsmith_mod_i32(0i, -1i))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.a.x)), 2685f, 113f);
    global0 = Struct_2(vec4<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(237f - 1488f) + _wgslsmith_f_op_f32(566f - -1091f)), global0.a.x), _wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.x)) * -417f)), _wgslsmith_f_op_f32(select(-957f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.x + var_2.a.x), 369f)), var_2.a.x != _wgslsmith_f_op_f32(-global0.a.x)))), global0.c.wxw, _wgslsmith_mult_vec4_u32(arg_1 ^ reverseBits(~vec4<u32>(u_input.a.x, 0u, u_input.b, 4294967295u)), ~abs(vec4<u32>(global0.c.x, global0.b.x, 14368u, 0u))), _wgslsmith_mod_u32(~global0.c.x, global0.b.x), vec2<i32>(_wgslsmith_div_i32(~(~var_0.x), firstLeadingBit(countOneBits(arg_2))), var_2.e.x));
    return ~firstTrailingBit(vec3<u32>(var_2.d, 38255u, abs(~u_input.a.x)));
}

fn func_1(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = ~(firstLeadingBit(_wgslsmith_clamp_i32(1i, ~global0.e.x, global0.e.x << (u_input.a.x % 32u))) >> (~43565u % 32u));
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), arg_0.x, arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(854f + -279f)))), func_4(3425u & ~func_2(), _wgslsmith_div_vec4_u32(global0.c, vec4<u32>(func_3(global3[_wgslsmith_index_u32(16396u, 20u)], vec3<i32>(-1i, global0.e.x, 28880i)), ~global3[_wgslsmith_index_u32(17148u, 20u)], ~1u, firstLeadingBit(4294967295u))), -1i, ~(-vec4<i32>(-5643i, 1i, global0.e.x, global0.e.x)) ^ vec4<i32>(global0.e.x << (u_input.a.x % 32u), global0.e.x, global0.e.x >> (4961u % 32u), global0.e.x)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(global0.c), ~global0.c), u_input.b, 1u, ~global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global0.d, 20u)], 20u)]), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(56591u, ~u_input.a.x), 20u)], 20u)], min(vec2<i32>(_wgslsmith_clamp_i32(~global0.e.x, ~1i, -1i), 1i), -abs(global0.e)));
    let var_2 = global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, func_2()), 25u)];
    var var_3 = var_2.a;
    var var_4 = abs(countOneBits(4294967295u));
    return !select(vec3<bool>(var_1.e.x < (global0.e.x ^ 2147483647i), true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), true, true), any(vec2<bool>(true, true)) && (28748i < global0.e.x)), true);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: i32, arg_3: vec3<bool>) -> i32 {
    let var_0 = Struct_1(~4294967295u);
    var var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, arg_2, arg_2, -36808i >> (0u % 32u)), firstTrailingBit(vec4<i32>(-19371i, arg_2, 0i, 2147483647i)) & vec4<i32>(global0.e.x, arg_2, -2147483647i, global0.e.x), vec4<i32>(-arg_2, -2147483647i, -1i, global0.e.x)), vec4<i32>(-(arg_2 | 14943i), -67458i, countOneBits(~arg_2), _wgslsmith_div_i32(arg_2, arg_2) ^ firstTrailingBit(-1i))) & abs(select(_wgslsmith_add_vec4_i32(-vec4<i32>(-35448i, arg_2, arg_2, global0.e.x), ~vec4<i32>(global0.e.x, -1i, global0.e.x, arg_2)), select(vec4<i32>(arg_2, 15340i, global0.e.x, arg_2) & vec4<i32>(arg_2, global0.e.x, 34096i, -34379i), vec4<i32>(3108i, 1i, global0.e.x, arg_2) & vec4<i32>(11300i, 0i, -18603i, 42921i), !vec4<bool>(true, arg_3.x, true, arg_3.x)), !select(arg_3.x, true, arg_0.x)));
    var var_2 = Struct_1(9331u);
    global1 = array<Struct_1, 20>();
    global1 = array<Struct_1, 20>();
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 20>();
    global3 = array<u32, 20>();
    global4 = array<Struct_1, 25>();
    global1 = array<Struct_1, 20>();
    global4 = array<Struct_1, 25>();
    var var_0 = vec4<i32>(-2147483647i, global0.e.x << (reverseBits(firstTrailingBit(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)])) % 32u), _wgslsmith_div_i32(~abs(-2147483647i), func_5(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), vec4<u32>(global0.c.x, 53063u, 0u, u_input.b) & (global0.c ^ global0.c), ~1i, func_1(global0.a.zyy))), ~(i32(-1i) * -2147483647i) ^ -_wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.e.x, -2147483647i), 15226i));
    let var_1 = Struct_1(0u);
    let var_2 = firstTrailingBit(global0.c.xy);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_add_i32(-123i, 0i), countOneBits(~var_0.wxw));
}

