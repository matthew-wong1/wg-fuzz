struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<Struct_2, 25>;

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec3<bool>(false, false, true), 111208u), Struct_2(vec3<bool>(false, true, true), 6900u), Struct_2(vec3<bool>(false, false, true), 0u), Struct_2(vec3<bool>(false, false, false), 73530u), Struct_2(vec3<bool>(false, true, true), 51299u), Struct_2(vec3<bool>(false, false, true), 53643u), Struct_2(vec3<bool>(true, true, false), 4294967295u), Struct_2(vec3<bool>(true, true, false), 79731u), Struct_2(vec3<bool>(true, false, false), 61262u), Struct_2(vec3<bool>(false, true, false), 12404u), Struct_2(vec3<bool>(true, false, true), 53076u), Struct_2(vec3<bool>(true, false, true), 4294967295u), Struct_2(vec3<bool>(false, true, false), 4294967295u), Struct_2(vec3<bool>(true, false, true), 0u), Struct_2(vec3<bool>(false, true, true), 1u), Struct_2(vec3<bool>(true, false, false), 4294967295u), Struct_2(vec3<bool>(false, true, true), 37639u), Struct_2(vec3<bool>(false, false, true), 5008u), Struct_2(vec3<bool>(false, true, true), 4294967295u), Struct_2(vec3<bool>(false, false, true), 93167u));

var<private> global4: array<u32, 3>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.b)) * arg_3.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.b - global2.x))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-522f - -705f) - _wgslsmith_f_op_f32(trunc(global2.x)))))));
    var var_1 = _wgslsmith_add_i32(-max(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -21968i), vec2<i32>(u_input.d.x, u_input.c.x)), u_input.c.x), 0i), 41084i);
    global2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(min(-1224f, -1000f)), _wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1427f, -146f) - -934f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.b))), arg_3.b, _wgslsmith_f_op_f32(ceil(-928f)), _wgslsmith_f_op_f32(step(-281f, _wgslsmith_f_op_f32(-global2.x))))), !(!arg_0)));
    var var_2 = global3[_wgslsmith_index_u32(min(25062u, ~(~countOneBits(arg_2))), 20u)];
    var var_3 = ~countOneBits(firstTrailingBit(vec3<u32>(40572u, u_input.b, u_input.b))) ^ (min((vec3<u32>(u_input.b, global4[_wgslsmith_index_u32(arg_2, 3u)], 1u) | vec3<u32>(var_2.b, global4[_wgslsmith_index_u32(arg_3.c.x, 3u)], 0u)) | ~vec3<u32>(0u, arg_3.c.x, 55197u), ~abs(vec3<u32>(1u, arg_2, u_input.b))) ^ max(firstTrailingBit(vec3<u32>(26925u, global4[_wgslsmith_index_u32(4294967295u, 3u)], 1u) & vec3<u32>(9298u, arg_3.a, 4294967295u)), vec3<u32>(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(17913u, 3u)], 6848u), ~57295u, var_2.b)));
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-835f)), -1064f, var_0) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.ywy) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(437f, global2.x, -1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b, -161f, 2072f) - vec3<f32>(490f, -244f, var_0)))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec2<f32>) -> u32 {
    global1 = array<Struct_2, 25>();
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.ywz + vec3<f32>(arg_3.x, global2.x, 684f))))));
    global1 = array<Struct_2, 25>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * -322f) + -215f), _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(f32(-1f) * -854f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(false, arg_2.x > 0i, _wgslsmith_mod_u32(0u, u_input.b), Struct_1(global4[_wgslsmith_index_u32(u_input.b, 3u)], -1000f, vec2<u32>(0u, 73170u)))), _wgslsmith_f_op_vec3_f32(select(global2.yzw, vec3<f32>(global2.x, var_0.x, arg_3.x), vec3<bool>(true, global0.x, true))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-117f * 1108f), -410f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(446f + global2.x))), 290f), !(!vec3<bool>(true, global0.x, global0.x)))));
    var var_2 = Struct_2(arg_1.a, ~45813u);
    return 20723u;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = Struct_2(vec3<bool>(all(!select(vec4<bool>(arg_1.a.x, true, arg_1.a.x, global0.x), vec4<bool>(false, global0.x, global0.x, false), false)), true, global0.x), func_2(vec3<u32>(u_input.b, ~197u, 0u), Struct_2(arg_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 85397u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(global4[_wgslsmith_index_u32(arg_0, 3u)], 4294967295u)))), vec3<i32>(8868i, abs(u_input.c.x), 2147483647i) >> ((~vec3<u32>(arg_1.b, 0u, u_input.b) >> (vec3<u32>(16797u, arg_0, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_f_op_f32(step(global2.x, global2.x))))));
    var_0 = Struct_2(select(arg_1.a, arg_1.a, arg_1.a.x), countOneBits(max(~1u, u_input.b)));
    let var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(-reverseBits(vec4<i32>(u_input.d.x, u_input.c.x, 2147483647i, u_input.d.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.a, firstLeadingBit(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-22833i, -44874i), vec2<i32>(1i, 15680i)), -2147483647i), countOneBits(vec4<i32>(-3266i, u_input.d.x, u_input.d.x, -1i)))), vec4<i32>(-27096i, -8858i, _wgslsmith_add_i32(u_input.a, _wgslsmith_sub_i32(u_input.d.x, abs(-2147483647i))), _wgslsmith_sub_i32(select(~0i, ~2147483647i, !var_0.a.x), min(-u_input.a, _wgslsmith_div_i32(u_input.d.x, u_input.c.x)))));
    var var_2 = select(abs(firstLeadingBit(~(~vec4<i32>(35343i, u_input.c.x, -40172i, var_1.x)))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(var_1, vec4<i32>(u_input.c.x, u_input.d.x, u_input.c.x, -2596i)) & var_1, ~(var_1 & abs(vec4<i32>(u_input.c.x, var_1.x, 32010i, 1i)))), !vec4<bool>(_wgslsmith_sub_u32(var_0.b, 4294967295u) >= 0u, global0.x, var_0.a.x, global0.x));
    let var_3 = global0.x;
    return vec4<u32>(~1u, ~1u ^ abs(arg_1.b ^ (global4[_wgslsmith_index_u32(var_0.b, 3u)] & arg_0)), _wgslsmith_sub_u32(var_0.b, ~(~abs(u_input.b))), firstTrailingBit(29373u));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = -(-min(u_input.c.xz, vec2<i32>(u_input.d.x, u_input.d.x)) & vec2<i32>(1i, _wgslsmith_mult_i32(0i, u_input.c.x)));
    var var_1 = Struct_1(min(arg_1.b & 1u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 7551u, 0u, 32527u), vec4<u32>(u_input.b, arg_1.b, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(85532u, 3u)], 3u)], 0u)))), -1637f, ~vec2<u32>(27883u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, 4294967295u, u_input.b), ~vec3<u32>(4294967295u, arg_0.x, arg_0.x))));
    global4 = array<u32, 3>();
    var var_2 = reverseBits(vec4<u32>(abs(46808u), max(arg_0.x, _wgslsmith_clamp_u32(arg_0.x, arg_1.b, 0u)), _wgslsmith_sub_u32(13685u, ~global4[_wgslsmith_index_u32(arg_1.b, 3u)]), 9034u)) | vec4<u32>(u_input.b, ~1u, 0u, 39057u);
    var var_3 = ~func_4(min(~var_2.x, func_2(var_2.xxw, global3[_wgslsmith_index_u32(arg_0.x, 20u)], vec3<i32>(u_input.c.x, u_input.a, var_0.x), _wgslsmith_f_op_vec2_f32(global2.yz + global2.xz))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 112958u), ~vec2<u32>(4294967295u, 4294967295u)), 20u)]);
    return !arg_1.a;
}

fn func_5(arg_0: vec3<bool>) -> vec3<bool> {
    let var_0 = min(abs(select(u_input.c.x, ~u_input.d.x >> (0u % 32u), true)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-26709i, countOneBits(26090i), firstTrailingBit(i32(-1i) * -2147483647i)), abs(-u_input.a)));
    let var_1 = var_0;
    var var_2 = abs(abs(min(vec3<i32>(var_0, -38565i, 2147483647i), vec3<i32>(-25011i, 32015i, -24414i))) >> (firstTrailingBit(select(vec3<u32>(13799u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, u_input.b, global4[_wgslsmith_index_u32(u_input.b, 3u)]), vec3<bool>(arg_0.x, false, global0.x))) % vec3<u32>(32u)));
    var var_3 = !any(func_1(vec2<u32>(43930u, 18672u), global1[_wgslsmith_index_u32(1u, 25u)]).yy);
    return !func_1(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, global4[_wgslsmith_index_u32(12344u, 3u)]) | vec2<u32>(25359u, u_input.b), ~vec2<u32>(u_input.b, 22081u)) << (vec2<u32>(max(4294967295u, global4[_wgslsmith_index_u32(u_input.b, 3u)]), u_input.b) % vec2<u32>(32u)), global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(~global4[_wgslsmith_index_u32(78986u, 3u)] >> (1u % 32u)), 3u)], 25u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 20>();
    global3 = array<Struct_2, 20>();
    var var_0 = -155f;
    let var_1 = func_5(select(func_1(vec2<u32>(~u_input.b, u_input.b), global3[_wgslsmith_index_u32((u_input.b >> (u_input.b % 32u)) & global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 4294967295u), 3u)], 20u)]), !vec3<bool>(global0.x & false, false, true), global0.x));
    global4 = array<u32, 3>();
    var var_2 = vec2<u32>(~(~4294967295u), ~0u);
    var var_3 = ~2147483647i;
    let var_4 = vec4<i32>(u_input.c.x, 1i, ~(2147483647i >> (max(~20584u, func_4(1u, Struct_2(vec3<bool>(var_1.x, var_1.x, true), 43055u)).x) % 32u)), ~abs(u_input.d.x) >> (24140u % 32u));
    let var_5 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(49900u, 53767u, u_input.b), vec3<u32>(119061u, 55298u, var_2.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.b, 48730u), vec3<u32>(var_2.x, 24038u, 1u))), vec3<u32>(var_2.x, u_input.b, firstTrailingBit(var_2.x)))), abs(abs((vec3<u32>(39560u, 1u, var_2.x) ^ vec3<u32>(var_2.x, 0u, var_2.x)) | ~vec3<u32>(global4[_wgslsmith_index_u32(1u, 3u)], u_input.b, 1u)))), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_4, -reverseBits(var_4.xw), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(~global4[_wgslsmith_index_u32(var_2.x, 3u)], abs(var_5.b), u_input.c.x >= u_input.a), 2828u), 3u)], max(var_5.b, var_5.b)), 3u)], _wgslsmith_f_op_f32(f32(-1f) * -615f));
}

