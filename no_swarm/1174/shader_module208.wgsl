struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 2147483647i);

var<private> global1: array<u32, 24>;

var<private> global2: array<bool, 4>;

var<private> global3: array<i32, 16>;

var<private> global4: array<Struct_1, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32) -> bool {
    global4 = array<Struct_1, 8>();
    var var_0 = firstLeadingBit(-1i);
    var_0 = _wgslsmith_mult_i32(firstTrailingBit(countOneBits(reverseBits(~475i))), -23342i);
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_add_i32(~(i32(-1i) * -9179i), ~min(u_input.a.x, 2147483647i) ^ max(global3[_wgslsmith_index_u32(21099u, 16u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(54171u, global1[_wgslsmith_index_u32(1u, 24u)], 0u), 24u)], 16u)])), global3[_wgslsmith_index_u32(29087u, 16u)]);
    global3 = array<i32, 16>();
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> vec2<bool> {
    var var_0 = Struct_3(select(!(!select(vec2<bool>(global2[_wgslsmith_index_u32(20293u, 4u)], global2[_wgslsmith_index_u32(0u, 4u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)], 4u)]), vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1, 24u)], 4u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1, 24u)], 24u)], 24u)], 4u)]))), vec2<bool>(true, global2[_wgslsmith_index_u32(arg_1, 4u)]), vec2<bool>(func_3(43443i), global2[_wgslsmith_index_u32(max(3754u, global1[_wgslsmith_index_u32(arg_1, 24u)]) | (arg_1 | arg_1), 4u)])), !(!(!(!vec4<bool>(false, global2[_wgslsmith_index_u32(17357u, 4u)], true, global2[_wgslsmith_index_u32(arg_1, 4u)])))), ~_wgslsmith_mod_vec4_i32(-(~u_input.a), select(u_input.a, vec4<i32>(-2147483647i, 2147483647i, global0.x, 2147483647i), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(78193u, 24u)], 24u)], 4u)]) ^ -u_input.a), ~(arg_1 & (global1[_wgslsmith_index_u32(4294967295u, 24u)] ^ global1[_wgslsmith_index_u32(4294967295u, 24u)])) << (countOneBits(~4294967295u ^ arg_1) % 32u));
    global3 = array<i32, 16>();
    let var_1 = Struct_3(vec2<bool>(false, false), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_1, 4u)], global2[_wgslsmith_index_u32(21268u, 4u)] | func_3(-var_0.c.x), any(!var_0.b)), u_input.a, 75821u);
    global0 = -_wgslsmith_add_vec2_i32(-min(~var_0.c.xy, var_1.c.ww), _wgslsmith_mod_vec2_i32(countOneBits(countOneBits(var_1.c.ww)), u_input.a.wx & u_input.a.yw));
    var var_2 = !var_1.b.wxy;
    return !var_0.b.yw;
}

fn func_1(arg_0: vec3<i32>) -> vec2<bool> {
    var var_0 = Struct_3(select(select(vec2<bool>(global2[_wgslsmith_index_u32(26618u, 4u)], 3743u <= global1[_wgslsmith_index_u32(7434u, 24u)]), func_2(vec4<f32>(-1000f, -1589f, -110f, 1676f), global1[_wgslsmith_index_u32(0u, 24u)]), true), !select(!vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 4u)]), vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)], 4u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57587u, 24u)], 4u)]), false), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(22905u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(75249u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)]), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(2379u, 24u)], 1u))), 4u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 4u)], !any(vec2<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42660u, 24u)], 24u)], 4u)])), true, all(select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(23691u, 4u)]), vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22699u, 24u)], 4u)], global2[_wgslsmith_index_u32(37759u, 4u)], global2[_wgslsmith_index_u32(62433u, 4u)]), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 4u)]))), !select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 4u)], true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)], 4u)]), select(vec4<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55525u, 24u)], 4u)], true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1116u, 24u)], 24u)], 4u)]), vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 4u)], false, global2[_wgslsmith_index_u32(34012u, 4u)], global2[_wgslsmith_index_u32(1u, 4u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(51261u, 4u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)], 4u)], true, true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56900u, 24u)], 4u)]), vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11067u, 24u)], 4u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(1648u, 4u)], false))), global2[_wgslsmith_index_u32(4294967295u, 4u)]), -u_input.a, _wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)]));
    let var_1 = !var_0.b;
    let var_2 = Struct_3(!select(!var_0.a, var_0.b.zw, false), select(vec4<bool>(true, select(!var_1.x, -2147483647i >= var_0.c.x, global2[_wgslsmith_index_u32(~0u, 4u)]), true, all(!var_0.b)), vec4<bool>(func_3(43676i), true | var_1.x, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1751f, 991f, -121f, -1000f)), 1u).x, var_1.x), var_0.b), firstTrailingBit(var_0.c), _wgslsmith_sub_u32(_wgslsmith_sub_u32(select(var_0.d, 4294967295u, global2[_wgslsmith_index_u32(0u, 4u)]) >> (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33521u, 24u)], 24u)], 24u)] % 32u), 0u), _wgslsmith_dot_vec4_u32(reverseBits(abs(vec4<u32>(var_0.d, 4294967295u, var_0.d, global1[_wgslsmith_index_u32(var_0.d, 24u)]))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 4294967295u, var_0.d, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)]), vec4<u32>(var_0.d, 68001u, global1[_wgslsmith_index_u32(var_0.d, 24u)], 92612u)), firstTrailingBit(vec4<u32>(var_0.d, global1[_wgslsmith_index_u32(78607u, 24u)], 4294967295u, global1[_wgslsmith_index_u32(var_0.d, 24u)]))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(185f * -228f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -636f)), _wgslsmith_f_op_f32(817f * 913f)) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(230f, -1000f), 958f, var_0.a.x)), _wgslsmith_f_op_f32(-825f + _wgslsmith_f_op_f32(round(1075f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(802f))))), vec3<f32>(_wgslsmith_div_f32(-2490f, 1683f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f) + _wgslsmith_f_op_f32(round(1000f))), -1625f)), _wgslsmith_f_op_f32(ceil(-671f)))));
    var_0 = Struct_3(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-801f, -618f, 407f, var_3.x) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.x, var_3.x, -1829f, -180f))))), select(var_2.d, global1[_wgslsmith_index_u32(~var_0.d, 24u)], false)), vec4<bool>(var_0.b.x, true, all(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1859f, 466f, var_3.x, var_3.x)), _wgslsmith_mod_u32(var_2.d, var_2.d))), true), vec4<i32>(-var_0.c.x, _wgslsmith_sub_i32(-1i, arg_0.x), _wgslsmith_sub_i32(-2147483647i, 48329i << (var_0.d % 32u)), -1i), var_0.d);
    return vec2<bool>(func_3(~_wgslsmith_add_i32(-global0.x, -global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 16u)])), true);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-860f)), _wgslsmith_f_op_f32(-407f + -2434f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1300f * -967f)), _wgslsmith_f_op_f32(f32(-1f) * -717f)))));
    var var_1 = Struct_2(Struct_1(!arg_1.x, _wgslsmith_f_op_f32(var_0.x * -734f)), _wgslsmith_dot_vec4_i32(~u_input.a, -arg_0.c));
    let var_2 = global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(arg_0.d, arg_0.d)), 24u)] ^ _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 22847u, 20460u, 26955u)), vec4<u32>(18353u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69026u, 24u)], 24u)], arg_0.d, arg_0.d))), 24u)], 24u)], 24u)]), 24u)], 24u)], 8u)];
    let var_3 = arg_0;
    let var_4 = abs(_wgslsmith_mod_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 29013i, 41599i), var_3.c.xxz)) & _wgslsmith_mod_i32(var_1.b, -global0.x), _wgslsmith_add_i32(~(-46853i), -_wgslsmith_clamp_i32(global0.x, -6820i, global0.x))));
    return Struct_3(var_3.a, !(!var_3.b), select(_wgslsmith_div_vec4_i32(-vec4<i32>(-8249i, global0.x, 0i, 0i), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(31844i, var_3.c.x, -1611i, -2147483647i), vec4<i32>(35036i, 2147483647i, var_4, arg_0.c.x), vec4<i32>(var_4, u_input.a.x, 0i, var_4)))), vec4<i32>(min(-1i, var_3.c.x) ^ global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(1u, 24u)], 31396u), 16u)], -3447i, 39036i, _wgslsmith_add_i32(~2196i, _wgslsmith_div_i32(11455i, -37130i))), select(!select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 4u)], true, var_3.b.x, var_1.a.a), vec4<bool>(global2[_wgslsmith_index_u32(24823u, 4u)], var_2.a, false, true), vec4<bool>(true, true, false, false)), !select(vec4<bool>(var_3.b.x, true, var_2.a, false), vec4<bool>(var_3.a.x, var_1.a.a, false, arg_1.x), var_3.b), var_1.a.a || (var_0.x > var_1.a.b))), global1[_wgslsmith_index_u32(~arg_0.d, 24u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(all(vec2<bool>(!(global0.x < u_input.a.x), true)), _wgslsmith_f_op_f32(round(1307f)));
    var var_1 = func_4(Struct_3(!func_1(u_input.a.zzy), !vec4<bool>(true, var_0.a, var_0.a, true), ~u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], 1u, 62172u, 4294967295u)), max(vec4<u32>(global1[_wgslsmith_index_u32(76910u, 24u)], 65433u, 1u, 4294967295u), vec4<u32>(1u, 14367u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5648u, 24u)], 24u)], 70777u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], global1[_wgslsmith_index_u32(0u, 24u)]), vec4<u32>(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(13148u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)], 17564u)))), !select(select(vec3<bool>(false, false, var_0.a), vec3<bool>(true, true, true), true), select(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 4u)], true, var_0.a), vec3<bool>(var_0.a, false, var_0.a), select(vec3<bool>(false, var_0.a, false), vec3<bool>(var_0.a, global2[_wgslsmith_index_u32(95677u, 4u)], var_0.a), vec3<bool>(var_0.a, true, global2[_wgslsmith_index_u32(0u, 4u)]))), !(-180i > global3[_wgslsmith_index_u32(1u, 16u)])));
    var var_2 = select(select(~vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(11952u, 0u, global1[_wgslsmith_index_u32(0u, 24u)]), vec3<u32>(global1[_wgslsmith_index_u32(11508u, 24u)], global1[_wgslsmith_index_u32(var_1.d, 24u)], 13017u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(12261u, 24u)], 1u, 0u), vec4<u32>(4294967295u, var_1.d, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], var_1.d)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], var_1.d, var_1.d), vec3<u32>(14538u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)])), 24u)]), ~vec4<u32>(14225u, ~global1[_wgslsmith_index_u32(38800u, 24u)], firstTrailingBit(var_1.d), select(global1[_wgslsmith_index_u32(4294967295u, 24u)], var_1.d, false)), vec4<bool>(true, !(var_0.b >= -1039f), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, var_1.d), 4u)], true)), ~_wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 28695u, global1[_wgslsmith_index_u32(var_1.d, 24u)], 1u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 24u)], 0u, 22852u, 80242u)), vec4<u32>(_wgslsmith_mult_u32(55770u, var_1.d), _wgslsmith_add_u32(var_1.d, global1[_wgslsmith_index_u32(124772u, 24u)]), global1[_wgslsmith_index_u32(var_1.d, 24u)], ~global1[_wgslsmith_index_u32(1u, 24u)])), var_0.a);
    var var_3 = var_0.b;
    let var_4 = var_1.b.yzz;
    var var_5 = func_4(func_4(func_4(func_4(Struct_3(vec2<bool>(false, true), vec4<bool>(true, var_0.a, var_1.a.x, true), u_input.a, 4294967295u), !var_1.b.zyw), select(select(var_1.b.yzx, vec3<bool>(var_4.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.x, 24u)], 4u)], var_1.a.x), true), !var_1.b.zyx, any(vec3<bool>(true, false, true)))), select(func_4(func_4(Struct_3(var_1.a, var_1.b, var_1.c, 87389u), vec3<bool>(var_1.b.x, false, false)), select(vec3<bool>(true, var_0.a, true), vec3<bool>(true, var_4.x, var_0.a), true)).b.zzz, vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(38655u, var_2.x, 1u, var_2.x), ~vec4<u32>(17471u, 35450u, var_1.d, global1[_wgslsmith_index_u32(var_2.x, 24u)])), 4u)])), var_1.b.yyz);
    var var_6 = Struct_1(var_5.b.x, _wgslsmith_f_op_f32(f32(-1f) * -830f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(round(-759f)), var_5.a.x)));
}

