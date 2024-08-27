struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: f32 = 656f;

var<private> global2: vec2<u32> = vec2<u32>(18995u, 26519u);

var<private> global3: Struct_2 = Struct_2(vec4<f32>(625f, -314f, -1000f, -274f));

var<private> global4: array<f32, 5> = array<f32, 5>(-644f, -309f, -304f, 829f, 1093f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>) -> f32 {
    let var_0 = vec2<bool>(global0.x, global0.x | arg_0.c.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global3.a.xw, vec2<f32>(698f, -1206f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, 1895f)))), _wgslsmith_f_op_vec2_f32(select(arg_1.a.wx, global3.a.zx, var_0.x)), vec2<bool>(true, all(!vec2<bool>(true, global0.x))))), _wgslsmith_f_op_f32(abs(global3.a.x)), !(!select(vec3<bool>(arg_0.c.x, false, arg_0.c.x), !vec3<bool>(global0.x, var_0.x, global0.x), false)), arg_0.d);
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.a.x, _wgslsmith_f_op_f32(step(114f, arg_0.a.x)), all(vec3<bool>(true, true, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(arg_0.a.x - 986f)))), _wgslsmith_f_op_f32(-940f - _wgslsmith_f_op_f32(f32(-1f) * -580f)), vec3<bool>(all(!vec2<bool>(true, global0.x)), true, !((var_1.a.x <= -822f) | global0.x)), ~_wgslsmith_div_vec4_u32(min(vec4<u32>(13313u, 1u, var_1.d.x, 1u), abs(var_1.d)), ~(~vec4<u32>(arg_2.x, 1u, 55594u, 56669u))));
    var var_3 = vec3<u32>(global2.x, global2.x, ~(~4294967295u));
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_1.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1008f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)))))), all(!select(select(vec2<bool>(false, var_2.c.x), vec2<bool>(var_1.c.x, arg_0.c.x), var_0), select(vec2<bool>(true, true), var_1.c.yy, var_2.c.x), select(var_1.c.x, arg_0.c.x, global0.x)))));
    return global3.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec2<u32> {
    let var_0 = vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-45515i, u_input.a, 0i)) << (~(~5677u) % 32u)), ~select(-u_input.a, ~(-1941i), false), firstTrailingBit(~(-1i)));
    global1 = global3.a.x;
    let var_1 = !vec3<bool>(true, arg_0.c.x, true);
    global0 = !arg_1.c;
    return arg_0.d.zw;
}

fn func_2() -> vec2<u32> {
    global1 = -1000f;
    let var_0 = global3.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.a + _wgslsmith_f_op_vec4_f32(-global3.a)));
    global3 = Struct_2(global3.a);
    global2 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, -443f))), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(global3.a.x, global3.a.x), var_1.x, vec3<bool>(global0.x, global0.x, true), vec4<u32>(3834u, 0u, global2.x, 30521u)), Struct_2(global3.a), ~vec2<u32>(128006u, 0u))), !select(vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, false, true), global0.x), vec4<u32>(4294967295u, 4052u, global2.x, 4294967295u) << (abs(vec4<u32>(global2.x, global2.x, 1u, 0u)) % vec4<u32>(32u))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 375f) - vec2<f32>(788f, global4[_wgslsmith_index_u32(0u, 5u)])), _wgslsmith_div_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(1u, 5u)], var_1.x), var_1.yz)), _wgslsmith_f_op_f32(step(var_1.x, var_1.x)), select(!vec3<bool>(global0.x, global0.x, false), !vec3<bool>(false, true, global0.x), !vec3<bool>(global0.x, global0.x, global0.x)), select(_wgslsmith_add_vec4_u32(vec4<u32>(global2.x, 4294967295u, global2.x, 1u), vec4<u32>(global2.x, 86046u, 18935u, 76516u)), vec4<u32>(global2.x, global2.x, global2.x, global2.x), !vec4<bool>(global0.x, global0.x, false, global0.x))), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 28982u), vec2<u32>(1095u, 6393u)))) ^ _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(abs(vec2<u32>(4294967295u, global2.x))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, 0u), vec2<u32>(global2.x, 0u))), vec2<u32>(global2.x, 57462u));
    return _wgslsmith_mod_vec2_u32(~vec2<u32>(~1u, 1u << (~global2.x % 32u)), select(vec2<u32>(~30159u, ~global2.x), vec2<u32>(4294967295u, 71986u >> (global2.x % 32u)), true) & ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global2.x), vec2<u32>(65465u, global2.x))));
}

fn func_1(arg_0: bool) -> vec4<u32> {
    global4 = array<f32, 5>();
    global2 = func_2();
    var var_0 = vec2<bool>(false, select(firstLeadingBit(global2.x), ~_wgslsmith_sub_u32(global2.x, global2.x), false) < ~global2.x);
    var var_1 = global2.x;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global3.a), _wgslsmith_f_op_vec4_f32(step(global3.a, global3.a)), global0.x)) - _wgslsmith_f_op_vec4_f32(exp2(global3.a))), select(vec4<bool>(all(vec3<bool>(arg_0, arg_0, false)), any(vec4<bool>(var_0.x, global0.x, false, var_0.x)), true, !arg_0), select(!vec4<bool>(true, arg_0, global0.x, false), vec4<bool>(arg_0, true, global0.x, true), !vec4<bool>(global0.x, global0.x, false, false)), all(select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(arg_0, true, false, true), vec4<bool>(true, global0.x, arg_0, global0.x)))))));
    return _wgslsmith_div_vec4_u32(vec4<u32>(~global2.x, ~abs(1u), _wgslsmith_clamp_u32(4294967295u, global2.x, global2.x) << (1u % 32u), _wgslsmith_clamp_u32(73609u, global2.x, 21241u) >> (~38110u % 32u)) & ~_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, global2.x, 4294967295u, 19400u), vec4<u32>(global2.x, 5386u, 23799u, 44088u)), vec4<u32>(func_2().x, ~4294967295u, global2.x, _wgslsmith_clamp_u32(global2.x, global2.x << (firstLeadingBit(global2.x) % 32u), 22685u)));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(vec4<f32>(global4[_wgslsmith_index_u32(arg_1.d.x, 5u)], 352f, _wgslsmith_f_op_f32(floor(-721f)), -292f));
    let var_1 = abs((max(-2147483647i, i32(-1i) * -6195i) >> (~(~global2.x) % 32u)) | ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 15308i, 2147483647i), vec4<i32>(2147483647i, -313i, u_input.a, 18066i)));
    global4 = array<f32, 5>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.x, 1488f)) - global3.a.x);
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(global3.a - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-1301f - 152f), _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(11912u, 5u)])), _wgslsmith_f_op_f32(1490f - -887f), 1134f)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1210f, 967f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(323f * 176f))), vec3<bool>(_wgslsmith_dot_vec2_u32(abs(arg_1.d.zx), vec2<u32>(1u, 18449u) ^ vec2<u32>(0u, global2.x)) >= min(~1138u, func_4(arg_1, arg_1, global2.x).x), !any(arg_1.c.xx), true), arg_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec2<i32>(43715i, u_input.a) ^ _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_sub_i32(firstLeadingBit(u_input.a), countOneBits(u_input.a))), reverseBits(-vec2<i32>(-56024i, -35644i)) >> (vec2<u32>(reverseBits(global2.x), global2.x ^ 26636u) % vec2<u32>(32u)));
    global4 = array<f32, 5>();
    let var_1 = 72685u;
    let var_2 = func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.a.x + global3.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_1, 5u)]))), _wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(~reverseBits(var_1), 5u)], _wgslsmith_div_f32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.x, 45139u), 5u)], _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(4294967295u, 5u)]))))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global3.a.yy)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, global4[_wgslsmith_index_u32(global2.x, 5u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2211f + _wgslsmith_div_f32(579f, global3.a.x))), vec3<bool>(false, !(!global0.x), !(!global0.x)), func_1(!global0.x)));
    let var_3 = var_2.c.x;
    global0 = vec3<bool>(false, global0.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, ~var_1, u_input.a);
}

