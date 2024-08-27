struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_2,
    d: u32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: Struct_2,
    d: vec4<u32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: vec3<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true));

var<private> global1: array<f32, 4>;

var<private> global2: vec2<f32>;

var<private> global3: array<vec4<i32>, 1>;

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_4) -> vec3<i32> {
    let var_0 = arg_1.zx;
    global0 = array<vec4<bool>, 22>();
    var var_1 = 55345u;
    global0 = array<vec4<bool>, 22>();
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(~(~u_input.b.x), ~arg_2.b.c.d), arg_2.b.e.x);
    return vec3<i32>(u_input.e.x, -8396i, _wgslsmith_mod_i32(~_wgslsmith_mult_i32(-u_input.a.x, arg_2.b.c.e), arg_2.b.c.e));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 4294967295u, ~(~69622u), u_input.d), vec4<u32>(_wgslsmith_add_u32(~u_input.b.x, 0u), u_input.b.x >> (1u % 32u), 33564u, 20349u));
    var var_1 = func_3(-788f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c, 1000f, 1069f, 748f)), vec4<f32>(-959f, _wgslsmith_f_op_f32(global4.c * global4.c), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(9916u, 4u)]), 375f), !(!global4.a.x)))), Struct_4(u_input.a.yx, Struct_3(select(countOneBits(vec2<i32>(u_input.e.x, u_input.a.x)), u_input.e, false), u_input.b.yyx, Struct_2(Struct_1(vec4<bool>(global4.b, false, false, global4.b), true, -1000f), Struct_1(global4.a, false, global2.x), vec3<bool>(false, global4.a.x, false), 4294967295u, u_input.e.x >> (var_0 % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, var_0), vec2<u32>(u_input.c.x, 18069u)), min(u_input.b, ~vec4<u32>(1u, var_0, u_input.b.x, 4294967295u))), Struct_2(Struct_1(vec4<bool>(true, global4.b, global4.b, global4.a.x), global4.a.x, -1027f), Struct_1(vec4<bool>(global4.b, true, global4.a.x, false), false, _wgslsmith_f_op_f32(-global4.c)), vec3<bool>(true, global4.b, global1[_wgslsmith_index_u32(u_input.c.x, 4u)] > global1[_wgslsmith_index_u32(var_0, 4u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(40765u, 4294967295u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 14992u, var_0), u_input.c)), u_input.e.x), vec4<u32>(_wgslsmith_mult_u32(34230u, _wgslsmith_sub_u32(1u, u_input.b.x)), _wgslsmith_mod_u32(~1u, u_input.d), 29913u, 0u ^ ~u_input.d), all(global4.a)));
    global1 = array<f32, 4>();
    let var_2 = _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(select(select(~vec3<i32>(var_1.x, var_1.x, -19634i), u_input.a.wzw, select(global4.a.xzw, global4.a.xwx, false)), ~vec3<i32>(4218i, u_input.e.x, 1161i), global4.a.wyw), -vec3<i32>(-2147483647i << (u_input.d % 32u), abs(1i), ~var_1.x)), countOneBits(vec3<i32>(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec4<f32>(661f, -984f, 803f, global4.c), Struct_4(u_input.e, Struct_3(var_1.xx, u_input.b.xyy, Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 22u)], global4.b, global2.x), Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], global4.a.x, -925f), global4.a.zwx, u_input.d, -19009i), var_0, u_input.b), Struct_2(Struct_1(vec4<bool>(true, global4.a.x, global4.b, true), global4.b, 930f), Struct_1(global0[_wgslsmith_index_u32(1u, 22u)], global4.a.x, global1[_wgslsmith_index_u32(4294967295u, 4u)]), vec3<bool>(false, false, global4.a.x), 1347u, 11031i), u_input.b, global4.b)).x, 0i, 0i)));
    var var_3 = Struct_3(-_wgslsmith_div_vec2_i32(select(vec2<i32>(-38200i, var_1.x) | u_input.e, _wgslsmith_add_vec2_i32(u_input.e, u_input.e), true), select(vec2<i32>(-37489i, u_input.e.x), var_2.xy, global4.b) >> (vec2<u32>(u_input.d, 43756u) % vec2<u32>(32u))), u_input.c, Struct_2(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_0, var_0), u_input.b.x), 22u)], true, _wgslsmith_f_op_f32(ceil(-717f))), Struct_1(!select(vec4<bool>(global4.a.x, true, false, global4.a.x), global0[_wgslsmith_index_u32(41634u, 22u)], global4.a), all(global0[_wgslsmith_index_u32(28131u, 22u)]), _wgslsmith_f_op_f32(max(-1828f, _wgslsmith_div_f32(1381f, 611f)))), vec3<bool>(global4.b, select(false, false, false), any(!vec4<bool>(global4.b, false, global4.b, true))), 11860u, 1i), 62456u, u_input.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2307f + _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(~var_3.d, 4u)]))) * -1000f);
}

fn func_4(arg_0: f32, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = global4.a.xyx;
    let var_1 = any(global4.a.zw);
    var var_2 = 0u;
    var var_3 = Struct_4(abs(_wgslsmith_div_vec2_i32(~(-vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(u_input.e.x, arg_1.x))), Struct_3(abs(u_input.e), abs(u_input.c), Struct_2(Struct_1(select(vec4<bool>(var_0.x, var_0.x, false, var_1), global4.a, vec4<bool>(var_1, var_1, false, false)), !global4.a.x, _wgslsmith_f_op_f32(f32(-1f) * -852f)), Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], false, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 4u)])), vec3<bool>(!var_1, global4.a.x, any(global4.a)), 52584u, 3591i ^ _wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(u_input.d, 1u)], vec4<i32>(u_input.a.x, 39676i, arg_1.x, arg_1.x))), firstTrailingBit(1u & u_input.d), (max(u_input.b, u_input.b) << (u_input.b % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u))), Struct_2(Struct_1(!vec4<bool>(false, var_1, global4.b, true), any(global4.a.yzz), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1097f)), _wgslsmith_f_op_f32(107f - global2.x)))), Struct_1(vec4<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(true, global4.b)), true, true), !all(vec4<bool>(var_0.x, var_0.x, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -988f))), select(vec3<bool>(var_1, true, -71618i < arg_1.x), vec3<bool>(true, true, 0u < u_input.c.x), var_1), u_input.c.x, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2390f, arg_0, 1000f, -474f)), Struct_4(vec2<i32>(-50779i, 1i), Struct_3(u_input.a.xx, vec3<u32>(0u, u_input.d, 62024u), Struct_2(Struct_1(global0[_wgslsmith_index_u32(50775u, 22u)], global4.b, global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), Struct_1(vec4<bool>(var_1, true, var_0.x, global4.b), global4.b, -715f), vec3<bool>(true, false, false), 0u, u_input.e.x), u_input.b.x, vec4<u32>(u_input.c.x, 1u, 83435u, 2429u)), Struct_2(Struct_1(global4.a, var_1, -386f), Struct_1(global0[_wgslsmith_index_u32(u_input.d, 22u)], var_1, 418f), vec3<bool>(true, false, true), 4294967295u, 0i), u_input.b, true)).x), _wgslsmith_div_vec4_u32(u_input.b, u_input.b), !select(any(global4.a.zxy) && global4.a.x, var_1, false));
    let var_4 = Struct_5(Struct_2(var_3.b.c.a, Struct_1(select(vec4<bool>(var_1, var_3.c.b.a.x, var_3.b.c.a.b, var_1), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b.e.x, var_3.c.d, 40466u), var_3.b.b), 22u)]), -2147483647i >= -var_3.b.c.e, global1[_wgslsmith_index_u32(30845u, 4u)]), global4.a.yyx, _wgslsmith_add_u32(u_input.b.x << (~var_3.d.x % 32u), ~(~u_input.d)), _wgslsmith_div_i32(u_input.a.x, ~func_3(var_3.b.c.a.c, vec4<f32>(591f, -335f, 760f, 1715f), Struct_4(vec2<i32>(var_3.b.c.e, -2147483647i), Struct_3(vec2<i32>(arg_1.x, -30171i), vec3<u32>(4294967295u, 24522u, u_input.b.x), Struct_2(Struct_1(var_3.c.a.a, true, 289f), Struct_1(vec4<bool>(true, true, true, var_1), global4.b, arg_0), vec3<bool>(false, false, global4.b), var_3.b.b.x, u_input.a.x), u_input.c.x, u_input.b), var_3.b.c, u_input.b, var_0.x)).x)), Struct_4(arg_1, var_3.b, Struct_2(var_3.b.c.b, Struct_1(select(vec4<bool>(var_0.x, var_0.x, false, true), global0[_wgslsmith_index_u32(u_input.c.x, 22u)], true), true || global4.b, 704f), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 4u)] >= 421f, all(vec2<bool>(true, global4.a.x)), all(vec2<bool>(true, global4.a.x))), 4294967295u, arg_1.x), firstTrailingBit(~(~vec4<u32>(75465u, 0u, u_input.d, u_input.b.x))), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(540f, global4.c, global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), vec3<f32>(global2.x, global1[_wgslsmith_index_u32(0u, 4u)], arg_0), vec3<bool>(var_0.x, false, global4.a.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-284f, global4.c, arg_0), vec3<f32>(1000f, 2186f, global1[_wgslsmith_index_u32(4294967295u, 4u)]))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(454f, global1[_wgslsmith_index_u32(4294967295u, 4u)], 887f), vec3<f32>(618f, global2.x, arg_0))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-585f, global4.c, global4.c))))), Struct_3(var_3.a, ~(var_3.d.xzx ^ vec3<u32>(25021u, 12402u, 57475u)), Struct_2(var_3.c.b, var_3.c.a, global4.a.wxw, abs(_wgslsmith_div_u32(u_input.b.x, 0u)), 1i), 59430u, var_3.d));
    return var_4.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<f32>) -> vec4<f32> {
    let var_0 = Struct_5(func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2()))), arg_0.zx), Struct_4(reverseBits(vec2<i32>(_wgslsmith_sub_i32(2147483647i, arg_0.x), u_input.e.x)), Struct_3(countOneBits(arg_0.xy), u_input.b.zyx, Struct_2(func_4(global1[_wgslsmith_index_u32(0u, 4u)], arg_0.yy).b, func_4(2161f, vec2<i32>(0i, -18742i)).a, vec3<bool>(false, arg_1.a.a.x, true), arg_1.d, _wgslsmith_sub_i32(-43872i, arg_1.e)), 37842u, ~vec4<u32>(u_input.b.x, arg_1.d, 10004u, arg_1.d)), func_4(1581f, u_input.a.yz), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.b.ww), 1u | select(u_input.b.x, 53775u, false), 86753u, ~(u_input.d | 103323u)), all(vec3<bool>(arg_1.b.c < arg_2.x, true, !arg_1.a.a.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1706f - arg_2.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a.c - arg_2.x)))), -626f), Struct_3(countOneBits(abs(u_input.e)), max(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, func_4(arg_1.a.c, u_input.a.xw).d)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(arg_1.d, 22u)], true, global4.c), arg_1.b, arg_1.b.a.wzw, arg_1.d, 15431i), 1u, ~_wgslsmith_div_vec4_u32(vec4<u32>(10018u, arg_1.d, u_input.c.x, 11807u), vec4<u32>(arg_1.d, arg_1.d, u_input.b.x, arg_1.d))));
    global0 = array<vec4<bool>, 22>();
    global3 = array<vec4<i32>, 1>();
    var var_1 = Struct_2(Struct_1(select(select(!vec4<bool>(true, arg_1.c.x, var_0.a.a.a.x, arg_1.a.b), vec4<bool>(true, true, arg_1.c.x, false), global0[_wgslsmith_index_u32(~0u, 22u)]), global0[_wgslsmith_index_u32(u_input.c.x, 22u)], !(false & var_0.a.c.x)), false, -390f), var_0.d.c.a, vec3<bool>(true, var_0.b.c.a.c < global4.c, !(var_0.a.a.a.x && false)), ~max(_wgslsmith_add_u32(min(var_0.b.b.c.d, 4294967295u), ~57701u), min(~0u, 26736u)), ~_wgslsmith_div_i32(-10960i, var_0.a.e) ^ arg_0.x);
    var var_2 = u_input.c.xx;
    return _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global4.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.d, 4u)]) * _wgslsmith_f_op_f32(round(global4.c))), _wgslsmith_f_op_f32(-416f + 540f)), vec4<f32>(_wgslsmith_f_op_f32(var_0.d.c.a.c * _wgslsmith_f_op_f32(f32(-1f) * -655f)), arg_1.b.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(470f)))), global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.c - _wgslsmith_f_op_f32(-1000f - var_0.b.c.a.c)), _wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - var_0.b.b.c.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<i32>) -> Struct_4 {
    var var_0 = Struct_3(abs(vec2<i32>(-2147483647i, u_input.e.x)), u_input.b.yxy, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(min(vec3<i32>(u_input.a.x, -2147483647i, arg_1.x), u_input.a.zyy), Struct_2(Struct_1(global4.a, true, global1[_wgslsmith_index_u32(4294967295u, 4u)]), Struct_1(vec4<bool>(global4.a.x, true, global4.a.x, true), global4.b, global2.x), global4.a.wxz, u_input.c.x, 1i), _wgslsmith_f_op_vec2_f32(-arg_0.wx))).x), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], -140f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(1435f, global2.x, -330f, global4.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(406f, global1[_wgslsmith_index_u32(u_input.d, 4u)], global4.c, 157f) - vec4<f32>(-1696f, global4.c, 209f, 1199f)), false)), Struct_4(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.x, 442i), vec2<i32>(u_input.e.x, u_input.a.x)), Struct_3(vec2<i32>(306i, -28902i), vec3<u32>(1u, 4294967295u, u_input.d), Struct_2(Struct_1(global4.a, global4.b, global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), Struct_1(vec4<bool>(false, global4.a.x, global4.a.x, global4.a.x), global4.b, arg_0.x), global4.a.yxz, 18401u, 919i), 1u, u_input.b), Struct_2(Struct_1(vec4<bool>(true, true, false, true), global4.a.x, global4.c), Struct_1(global4.a, false, global1[_wgslsmith_index_u32(u_input.d, 4u)]), vec3<bool>(global4.a.x, false, false), 1u, arg_1.x), _wgslsmith_mod_vec4_u32(vec4<u32>(39991u, 65752u, 4294967295u, u_input.b.x), u_input.b), true)).zz), u_input.b.x, u_input.b);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yy)), _wgslsmith_f_op_vec4_f32(func_1(vec3<i32>(func_4(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.d, 4u)]), arg_1.yx).e, ~0i, _wgslsmith_div_i32(~(-2147483647i), u_input.a.x)), Struct_2(var_0.c.a, func_4(836f, u_input.a.wz).a, !func_4(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], vec2<i32>(var_0.a.x, var_0.a.x)).c, 91163u, 2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(11559u, 4u)], 375f), _wgslsmith_f_op_vec2_f32(-arg_0.yz))))).xz);
    global1 = array<f32, 4>();
    global4 = var_0.c.a;
    var_1 = _wgslsmith_f_op_vec2_f32(arg_0.yx - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1163f + global4.c), _wgslsmith_div_f32(1368f, var_0.c.a.c)), _wgslsmith_f_op_vec2_f32(trunc(arg_0.wz))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-375f, -1105f)))));
    return Struct_4(vec2<i32>(var_0.c.e, _wgslsmith_mult_i32(-max(var_0.a.x, 8014i), arg_1.x)), Struct_3(~var_0.a, select(vec3<u32>(u_input.d, var_0.d, 58618u) ^ select(u_input.c, var_0.e.yww, var_0.c.b.a.x), ~(~vec3<u32>(u_input.b.x, u_input.c.x, var_0.d)), true), func_4(var_0.c.a.c, _wgslsmith_add_vec2_i32(arg_1.zz, max(vec2<i32>(0i, -1i), vec2<i32>(0i, var_0.a.x)))), ~func_4(_wgslsmith_f_op_f32(min(global4.c, 1420f)), u_input.e).d, vec4<u32>(~func_4(global2.x, var_0.a).d, 1u, u_input.c.x, ~(~1u))), func_4(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, var_0.c.d, 0u), ~vec4<u32>(u_input.c.x, 68906u, 82804u, 1845u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b.x, 1u), 1u)), 4u)], _wgslsmith_mult_vec2_i32(var_0.a, arg_1.yx & arg_1.xz)), vec4<u32>((firstLeadingBit(4294967295u) ^ (u_input.b.x << (u_input.c.x % 32u))) << ((~u_input.c.x ^ ~u_input.c.x) % 32u), _wgslsmith_dot_vec3_u32(~u_input.c ^ var_0.b, select(~vec3<u32>(0u, var_0.c.d, var_0.b.x), u_input.c, vec3<bool>(var_0.c.a.b, var_0.c.b.b, var_0.c.a.b))), max(_wgslsmith_div_u32(u_input.b.x, 54682u) ^ ~var_0.d, u_input.d | ~48161u), ~59282u), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 4>();
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 4u)] - global2.x), _wgslsmith_f_op_f32(trunc(-611f)), _wgslsmith_f_op_f32(1000f * -952f), 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(u_input.a.wxw, Struct_2(Struct_1(vec4<bool>(true, false, false, true), global4.a.x, global2.x), Struct_1(global4.a, false, -1448f), global4.a.xyy, u_input.b.x, -22682i), vec2<f32>(global2.x, global4.c))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global2.x, 485f, -450f), vec4<f32>(-823f, global4.c, global1[_wgslsmith_index_u32(u_input.d, 4u)], global4.c))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1[_wgslsmith_index_u32(1u, 4u)], global2.x, global2.x, global2.x))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.c, global2.x, -461f, -1115f), vec4<f32>(global2.x, global1[_wgslsmith_index_u32(u_input.b.x, 4u)], -825f, 2231f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -536f, global4.c, -1098f)), select(select(global4.a, global4.a, global4.a.x), !vec4<bool>(global4.b, true, true, false), global4.b))), false)), -vec3<i32>(_wgslsmith_add_i32(select(u_input.a.x, -2147483647i, global4.a.x), _wgslsmith_sub_i32(-1i, u_input.e.x)), u_input.a.x, -1i));
    global0 = array<vec4<bool>, 22>();
    var var_1 = Struct_5(var_0.c, func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1075f, -212f, -1418f, var_0.b.c.b.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c, var_0.c.b.c, global2.x, -2872f)))), u_input.a.wzw), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global4.c)) - _wgslsmith_f_op_f32(-1000f + 1084f))), 1852f, var_0.b.c.b.c), Struct_3(var_0.b.a, ~firstTrailingBit(vec3<u32>(45086u, 1u, var_0.b.c.d) >> (vec3<u32>(1u, u_input.b.x, u_input.c.x) % vec3<u32>(32u))), func_5(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-global4.c), 1576f, 1430f), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.x, u_input.a.x, 9046i), vec3<i32>(-2147483647i, -59901i, u_input.a.x))).b.c, u_input.b.x, ~vec4<u32>(_wgslsmith_add_u32(0u, 86072u), ~var_0.b.e.x, _wgslsmith_add_u32(1u, 50490u), 17838u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2325f) + _wgslsmith_f_op_f32(abs(var_1.b.c.b.c))), global2.x))), vec4<u32>(~(35396u ^ u_input.c.x), ~(var_0.c.d | 65932u), 20322u, _wgslsmith_add_u32(var_1.d.b.x, var_0.b.d)) << ((reverseBits(vec4<u32>(var_0.d.x, u_input.d, var_1.b.c.d, 12988u)) << (func_5(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(902f, -422f, global1[_wgslsmith_index_u32(1u, 4u)], -673f))), reverseBits(vec3<i32>(-32979i, 0i, 2147483647i))).b.e % vec4<u32>(32u))) % vec4<u32>(32u)));
}

