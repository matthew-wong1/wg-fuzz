struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: f32,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-321f, -877f, 675f);

var<private> global1: array<bool, 21>;

var<private> global2: vec3<i32>;

var<private> global3: array<i32, 6>;

var<private> global4: array<Struct_2, 7>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<bool> {
    global0 = vec3<f32>(_wgslsmith_div_f32(-937f, -274f), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1543f * global0.x)) - _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-705f + global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(sign(775f)))))));
    var var_0 = vec3<bool>(false, true, global1[_wgslsmith_index_u32(max(u_input.a.x, select(abs(~20326u), max(firstTrailingBit(u_input.c.x), u_input.a.x), true)), 21u)]);
    let var_1 = Struct_4(u_input.b, Struct_3(Struct_1(1360f, vec3<bool>(all(vec4<bool>(false, global1[_wgslsmith_index_u32(35562u, 21u)], var_0.x, false)), global1[_wgslsmith_index_u32(47610u, 21u)] || global1[_wgslsmith_index_u32(68896u, 21u)], global1[_wgslsmith_index_u32(~u_input.a.x, 21u)]), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-558f, global0.x, global0.x, 126f)))), max(_wgslsmith_mult_vec2_i32(global2.yy, global2.zx), ~global2.zx), all(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 21u)], true, true))), global4[_wgslsmith_index_u32(u_input.a.x, 7u)]), _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 7u)], _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.yz, ~vec2<u32>(54565u, u_input.a.x)), vec2<u32>(~u_input.a.x, u_input.a.x)));
    let var_2 = firstLeadingBit(~abs(-2147483647i));
    var var_3 = var_1.e.x;
    return var_0.zx;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    var var_0 = all(select(vec4<bool>(arg_1.d.x < ~16479i, any(arg_1.b) | true, arg_1.e, true), select(select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(2720u, 21u)], arg_1.e, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], global1[_wgslsmith_index_u32(u_input.c.x, 21u)], true, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, global1[_wgslsmith_index_u32(53592u, 21u)], global1[_wgslsmith_index_u32(u_input.c.x, 21u)]), global1[_wgslsmith_index_u32(0u, 21u)]), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)])), !(!vec4<bool>(arg_1.e, false, true, global1[_wgslsmith_index_u32(106988u, 21u)])), !vec4<bool>(false, arg_1.e, arg_1.b.x, arg_1.e)), false));
    let var_1 = select(!func_3(), select(arg_1.b.yx, arg_1.b.xz, !arg_1.b.zx), true);
    let var_2 = select(arg_1.b, !vec3<bool>(arg_1.b.x, func_3().x, arg_1.e), !(!select(select(arg_1.b, vec3<bool>(arg_1.b.x, global1[_wgslsmith_index_u32(u_input.c.x, 21u)], var_1.x), var_1.x), !arg_1.b, true)));
    var var_3 = ~_wgslsmith_mult_u32(u_input.c.x, arg_2.x);
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1686f, 1170f, _wgslsmith_f_op_f32(f32(-1f) * -1049f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_1.c.zyz)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.c.wzy - vec3<f32>(arg_1.c.x, 1951f, global0.x))))));
    return ~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, 0i, 0i), select(firstLeadingBit(vec3<i32>(arg_1.d.x, -2147483647i, arg_1.d.x) >> (vec3<u32>(arg_2.x, 87499u, 18851u) % vec3<u32>(32u))), firstTrailingBit(vec3<i32>(9669i, 0i, 29016i)), vec3<bool>(any(arg_1.b), global3[_wgslsmith_index_u32(u_input.a.x, 6u)] >= -2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.a.x), 21u)])));
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    global2 = vec3<i32>(global2.x, global2.x, global2.x);
    global1 = array<bool, 21>();
    var var_0 = 1i;
    global2 = ~_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(u_input.c.x, 6u)], 1i), max(61440i, -25018i), -20912i), vec3<i32>(_wgslsmith_mult_i32(2147483647i, -1i), _wgslsmith_div_i32(u_input.b, global2.x), ~(-2147483647i))), vec3<i32>(1i, min(-u_input.b, ~global2.x), ~global3[_wgslsmith_index_u32(0u, 6u)]));
    global2 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, _wgslsmith_div_i32(func_2(-1i, Struct_1(-656f, vec3<bool>(true, true, false), vec4<f32>(arg_0.x, arg_0.x, global0.x, global0.x), vec2<i32>(u_input.b, 0i), false), u_input.c.xxy), _wgslsmith_add_i32(43026i, 46595i)) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(4294967295u, 74396u, 2167u, u_input.c.x)), max(u_input.c.x, 0u)) % 32u), abs(0i)), ~(~(~vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], global2.x, global2.x) >> (~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u)))));
    return max(u_input.a.x, reverseBits(_wgslsmith_mod_u32(u_input.c.x, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 7>();
    let var_0 = vec4<u32>(_wgslsmith_add_u32(u_input.c.x, select(u_input.a.x, 105944u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, ~0u), 21u)])), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1686f, global0.x), global0.xy), vec2<f32>(global0.x, 1128f), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), vec2<f32>(231f, 2269f), all(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 21u)])))))), ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u | u_input.a.x, u_input.a.x & 76003u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c.x, 57396u, 33772u)), u_input.a)), ~func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.xy)))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), select(vec3<bool>(global1[_wgslsmith_index_u32(reverseBits(59216u), 21u)], global1[_wgslsmith_index_u32(39423u, 21u)], true), vec3<bool>(all(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(var_0.x, 21u)])), global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(max(u_input.a.x, 0u), 21u)]), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1881f, global0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 171f, global0.x, 1000f) - vec4<f32>(global0.x, global0.x, global0.x, 1093f)))), vec2<i32>(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, u_input.b), vec3<i32>(global2.x, u_input.b, global3[_wgslsmith_index_u32(var_0.x, 6u)]))), 2147483647i), global1[_wgslsmith_index_u32(select(0u, var_0.x, false) ^ (var_0.x ^ firstTrailingBit(4294967295u)), 21u)]), Struct_2(Struct_1(-3340f, vec3<bool>(1053f <= global0.x, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1459f, global0.x, global0.x))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(global2.yz, vec2<i32>(global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(24223u, 6u)])), global2.xy), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(var_0.yzy, u_input.c.zyy), 21u)]), true, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -979f), !vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 21u)], false, global1[_wgslsmith_index_u32(var_0.x, 21u)]), vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(ceil(739f)), _wgslsmith_f_op_f32(min(global0.x, global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1220f)), global2.zx, any(select(vec3<bool>(global1[_wgslsmith_index_u32(55345u, 21u)], false, global1[_wgslsmith_index_u32(8762u, 21u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 21u)], true, true), true)))));
    global1 = array<bool, 21>();
    var var_2 = select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 21u)], all(vec2<bool>(true, true)), any(var_1.a.b) == true), vec3<bool>(firstTrailingBit(~var_0.x) == select(u_input.c.x >> (u_input.c.x % 32u), u_input.a.x, true), true, all(vec3<bool>(true, false, func_3().x))), any(!vec3<bool>(any(var_1.a.b.yx), var_1.b.b, false)));
    var var_3 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a.d.x << (6129u % 32u), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(0i, 0i))) >> (vec3<u32>(u_input.c.x, max(u_input.a.x, var_0.x), abs(91770u)) % vec3<u32>(32u)), -(~vec3<i32>(-9469i, global2.x, 2147483647i))), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b | var_1.b.c.d.x, func_2(var_1.b.a.d.x, var_1.b.a, u_input.c.zxy), global2.x), _wgslsmith_clamp_vec3_i32(~vec3<i32>(global2.x, 1481i, 2147483647i), ~vec3<i32>(-587i, 1i, -20563i), _wgslsmith_div_vec3_i32(vec3<i32>(global2.x, -1i, 0i), vec3<i32>(-237i, global2.x, var_1.b.c.d.x)))), vec3<i32>(_wgslsmith_div_i32(-13255i | global3[_wgslsmith_index_u32(var_0.x, 6u)], _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.b), vec3<i32>(-15831i, 2147483647i, u_input.b))), -44431i, _wgslsmith_sub_i32(-global2.x, reverseBits(-25294i)))));
    var var_4 = var_1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(~var_0.x, ~(~u_input.a.x))), abs(abs(func_1(vec2<f32>(global0.x, var_1.a.a)))), _wgslsmith_clamp_vec4_u32(u_input.c, var_0, ~(~u_input.c)) | vec4<u32>(~var_0.x, var_0.x, (6799u ^ var_0.x) ^ 1u, min(reverseBits(47899u), var_0.x)), u_input.c, countOneBits(0i));
}

