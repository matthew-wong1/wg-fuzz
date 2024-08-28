struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(4356u, 8767u, 4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 16721u, 38783u), vec4<u32>(1u, 64921u, 10599u, 18834u), vec4<u32>(16573u, 56187u, 1u, 18703u), vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(1u, 4294967295u, 31865u, 1u), vec4<u32>(2798u, 4294967295u, 61870u, 4294967295u), vec4<u32>(1u, 20114u, 63567u, 0u), vec4<u32>(1u, 0u, 0u, 1u));

var<private> global2: vec3<i32> = vec3<i32>(33182i, 2147483647i, 0i);

var<private> global3: vec2<bool>;

var<private> global4: array<f32, 29>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    global1 = array<vec4<u32>, 9>();
    var var_0 = Struct_4(abs(arg_0.a), _wgslsmith_dot_vec4_u32(firstLeadingBit(~(~vec4<u32>(1u, arg_1, arg_2.a, u_input.c))), ~abs(~vec4<u32>(arg_1, 1u, 44444u, 0u))), countOneBits(vec2<i32>(-global2.x, global2.x | 0i) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(arg_3.e.b.x, 1i), ~arg_3.b.b.xx)), u_input.b.x);
    let var_1 = vec4<i32>(-18070i, firstTrailingBit(_wgslsmith_sub_i32(firstLeadingBit(select(-1i, u_input.d.x, true)), _wgslsmith_mod_i32(arg_3.b.b.x, _wgslsmith_clamp_i32(-157i, -2147483647i, arg_2.c)))), -1i, arg_0.c >> ((1u >> (arg_1 % 32u)) % 32u));
    let var_2 = Struct_1(4294967295u, _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(39222i, arg_3.b.b.x, 1980i, -1i)), arg_2.b, vec4<i32>(var_0.d, -u_input.d.x, arg_2.c, 1i)), var_1.x, _wgslsmith_f_op_f32(-arg_0.d));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1041f, -852f, -142f, global0[_wgslsmith_index_u32(arg_2.a, 32u)]) * vec4<f32>(-493f, arg_2.d, global4[_wgslsmith_index_u32(51958u, 29u)], 651f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1489f, 999f, global0[_wgslsmith_index_u32(arg_0.a, 32u)], 1174f)))) - vec4<f32>(1826f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 32u)]), _wgslsmith_f_op_f32(-613f - -1675f), -1458f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3.b.d, 745f, arg_3.d.x, -333f))))), any(vec2<bool>(global3.x, true)))) + vec4<f32>(_wgslsmith_f_op_f32(min(arg_2.d, -1954f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(769f, arg_3.e.d), -565f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 29u)]), 1185f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_2.d)), _wgslsmith_f_op_f32(round(-377f)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1090f)))));
    return ~(~_wgslsmith_mod_u32(~firstTrailingBit(49216u), _wgslsmith_div_u32(arg_3.a, var_0.a)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>) -> i32 {
    return _wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(min(-u_input.a, ~(-2147483647i)), firstLeadingBit(global2.x)) << (_wgslsmith_div_u32(26997u, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c, u_input.c), u_input.c)) % 32u), 44386i);
}

fn func_2() -> vec4<bool> {
    global1 = array<vec4<u32>, 9>();
    var var_0 = Struct_4(u_input.c, u_input.c ^ ~17213u, vec2<i32>(max(-2147483647i, -u_input.b.x) | 1i, global2.x), func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(55318u, 32u)], global4[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(60667u, 32u)])), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4[_wgslsmith_index_u32(1859u, 29u)], global4[_wgslsmith_index_u32(83914u, 29u)], global0[_wgslsmith_index_u32(u_input.c, 32u)]), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global4[_wgslsmith_index_u32(60597u, 29u)], 796f, global0[_wgslsmith_index_u32(u_input.c, 32u)]))), global3.x)))), vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~34730u, 32u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(2946u, 29u)])), 177f, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, func_3(Struct_1(66296u, u_input.b, u_input.d.x, global0[_wgslsmith_index_u32(4294967295u, 32u)]), u_input.c, Struct_1(u_input.c, vec4<i32>(45593i, -1i, -18452i, 2147483647i), u_input.b.x, -476f), Struct_2(u_input.c, Struct_1(u_input.c, vec4<i32>(global2.x, -1i, -13953i, global2.x), 6343i, -1000f), u_input.c, vec3<f32>(global4[_wgslsmith_index_u32(54338u, 29u)], global4[_wgslsmith_index_u32(u_input.c, 29u)], 1022f), Struct_1(u_input.c, vec4<i32>(-1i, -2147483647i, global2.x, global2.x), u_input.b.x, 405f)))), 32u)])));
    let var_1 = 52288u;
    var var_2 = Struct_2(abs((0u & var_0.b) & firstLeadingBit(~1u)), Struct_1(_wgslsmith_mod_u32(min(_wgslsmith_sub_u32(var_0.a, var_0.a), u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u) >> (vec2<u32>(u_input.c, 72906u) % vec2<u32>(32u)), vec2<u32>(var_0.a, var_1))), vec4<i32>(u_input.a, global2.x, 25930i, 2147483647i), u_input.d.x, global4[_wgslsmith_index_u32(var_0.a, 29u)]), ~(~112495u), vec3<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~var_1, 29u)]), -1874f, -798f), Struct_1(~4294967295u, -abs(~u_input.b), var_0.d, global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(var_1, 71028u) ^ reverseBits(u_input.c)), 32u)]));
    var_2 = Struct_2(~countOneBits(~37521u) ^ u_input.c, var_2.b, var_0.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.d.x, -171f, var_2.e.d))) * var_2.d), var_2.d, select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(global3.x, global3.x, true), true))))), Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.e.a, var_2.b.a, var_1) & vec3<u32>(var_1, var_1, 693u), select(vec3<u32>(0u, var_2.b.a, 50648u), vec3<u32>(var_2.c, var_2.e.a, 1u), vec3<bool>(false, global3.x, global3.x))), (vec3<u32>(var_1, 108285u, var_0.b) << (vec3<u32>(4294967295u, var_2.e.a, var_0.a) % vec3<u32>(32u))) >> (vec3<u32>(4294967295u, var_0.b, var_1) % vec3<u32>(32u))), var_2.b.b, var_2.e.c ^ global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(847f - _wgslsmith_f_op_f32(step(363f, global4[_wgslsmith_index_u32(30054u, 29u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-156f, var_2.d.x)))));
    return vec4<bool>(true, false, global3.x, all(select(select(select(vec3<bool>(false, global3.x, true), vec3<bool>(global3.x, false, global3.x), vec3<bool>(global3.x, global3.x, global3.x)), select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(global3.x, false, global3.x), vec3<bool>(true, global3.x, false)), all(vec4<bool>(true, global3.x, global3.x, true))), !select(vec3<bool>(true, true, true), vec3<bool>(global3.x, global3.x, true), vec3<bool>(true, true, global3.x)), select(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, true, global3.x), true), select(vec3<bool>(false, global3.x, false), vec3<bool>(false, global3.x, true), vec3<bool>(global3.x, false, true)), false))));
}

fn func_5(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_2(~u_input.c, Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(100516u, 13922u, u_input.c, 14339u) << (abs(vec4<u32>(u_input.c, 37684u, u_input.c, 0u)) % vec4<u32>(32u)), reverseBits(global1[_wgslsmith_index_u32(u_input.c, 9u)]) ^ ~vec4<u32>(4294967295u, 19391u, 0u, u_input.c)), vec4<i32>(-2147483647i, global2.x, _wgslsmith_mod_i32(u_input.b.x, 57453i), global2.x), global2.x, _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(min(~u_input.c, 43659u), 29u)]))), 3320u, vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-188f, -1121f)), -1643f), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]))), Struct_1(u_input.c, -vec4<i32>(~1i, -1513i, ~u_input.a, _wgslsmith_add_i32(global2.x, -23319i)), -50650i, global4[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(u_input.c | u_input.c, u_input.c, ~12512u)), 29u)]));
    var var_1 = Struct_2(select(var_0.c, _wgslsmith_mult_u32(firstLeadingBit(abs(var_0.e.a)), u_input.c), ~1u <= _wgslsmith_clamp_u32(_wgslsmith_mult_u32(57238u, u_input.c), _wgslsmith_div_u32(9538u, 2668u), firstTrailingBit(48781u))), Struct_1(1u, vec4<i32>(2147483647i, _wgslsmith_add_i32(-u_input.b.x, 1i), u_input.d.x, _wgslsmith_clamp_i32(~(-19729i), 1i, 27036i)), u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -785f)), ~var_0.e.a & 4294967295u, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1263f, var_0.d.x, 1003f), var_0.d)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4[_wgslsmith_index_u32(u_input.c, 29u)], 1171f, global4[_wgslsmith_index_u32(u_input.c, 29u)]), vec3<f32>(1000f, -317f, -894f))))))), var_0.e);
    global1 = array<vec4<u32>, 9>();
    var var_2 = Struct_3(_wgslsmith_f_op_f32(sign(-1417f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d.x, var_0.e.d, 365f, 2340f), vec4<f32>(global4[_wgslsmith_index_u32(7865u, 29u)], 1239f, global4[_wgslsmith_index_u32(var_1.a, 29u)], var_1.b.d))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1567f, -439f, -639f, var_1.e.d)))))))));
    return var_0.e;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> f32 {
    var var_0 = Struct_4(_wgslsmith_add_u32(~u_input.c, ~abs(~1u)), ~98739u, vec2<i32>(_wgslsmith_mult_i32(2147483647i, -1i), (_wgslsmith_dot_vec3_i32(vec3<i32>(23579i, u_input.a, 5199i), vec3<i32>(u_input.a, 2147483647i, global2.x)) | u_input.a) >> ((u_input.c >> (~0u % 32u)) % 32u)), -(-1i >> (u_input.c % 32u)));
    global2 = u_input.d;
    var var_1 = Struct_2(var_0.a, func_5(select(vec4<bool>(all(vec4<bool>(false, arg_1.x, global3.x, global3.x)), all(vec4<bool>(false, false, true, global3.x)), true, any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), func_2(), func_2())), firstLeadingBit(var_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), func_5(select(func_2(), vec4<bool>(true, global3.x | global3.x, func_2().x, true), select(!vec4<bool>(global3.x, global3.x, true, arg_1.x), select(vec4<bool>(false, false, false, false), vec4<bool>(arg_1.x, true, false, false), global3.x), any(vec3<bool>(global3.x, arg_1.x, global3.x))))));
    global3 = arg_1.yz;
    let var_2 = var_1.b;
    return _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~(~_wgslsmith_clamp_u32(15456u, var_2.a, var_1.a))), 32u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(37541i, global2.x, ~global2.x);
    global2 = u_input.d;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 741f)), _wgslsmith_f_op_f32(trunc(-522f))) + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~u_input.c, 32u)], global0[_wgslsmith_index_u32(26330u, 32u)])), _wgslsmith_f_op_f32(-1234f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1329f)) - -678f))));
    var_1 = 2061f;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 32u)] - global4[_wgslsmith_index_u32(4294967295u, 29u)]), _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(4294967295u, 29u)])), -162f, _wgslsmith_f_op_f32(func_1(1498f, vec3<bool>(true, global3.x, true))))))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -774f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, 380f)), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(func_5(vec4<bool>(false, global3.x, global3.x, global3.x)).a, 29u)], _wgslsmith_f_op_f32(1000f + global4[_wgslsmith_index_u32(0u, 29u)])))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.x)) + _wgslsmith_div_f32(func_5(vec4<bool>(global3.x, global3.x, global3.x, false)).d, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 32u)]))))), -1000f);
}

