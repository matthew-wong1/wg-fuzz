struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(Struct_1(vec2<bool>(true, true), vec2<f32>(789f, 576f), vec3<u32>(0u, 62966u, 38009u)), Struct_2(Struct_1(vec2<bool>(false, false), vec2<f32>(-913f, 1000f), vec3<u32>(13858u, 59509u, 4294967295u)), true, 1071f, vec4<u32>(74544u, 0u, 0u, 0u)), vec4<bool>(false, false, false, true), vec4<u32>(17397u, 4294967295u, 32654u, 1u)));

var<private> global1: array<i32, 17> = array<i32, 17>(i32(-2147483648), 26401i, 13309i, 12393i, 51252i, -11600i, 1i, i32(-2147483648), 12249i, 2147483647i, -21193i, 1i, -29281i, 2147483647i, i32(-2147483648), 8669i, 10861i);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    let var_0 = ~_wgslsmith_clamp_u32(~max(~57430u, ~0u), 0u, _wgslsmith_dot_vec2_u32(u_input.a.ww, _wgslsmith_add_vec2_u32(u_input.a.zz, abs(vec2<u32>(u_input.a.x, u_input.a.x)))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(0u), u_input.a.x), 17u)];
    global0 = array<Struct_3, 1>();
    global1 = array<i32, 17>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, -743f), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(exp2(arg_0))))), arg_0, arg_0, _wgslsmith_f_op_f32(arg_0 - arg_0));
    return arg_0;
}

fn func_2() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1326f, 857f)), _wgslsmith_f_op_f32(func_3(742f, false))) * -624f), _wgslsmith_f_op_f32(f32(-1f) * -1169f), _wgslsmith_f_op_f32(f32(-1f) * -601f))));
    var var_1 = vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 17u)] > -2147483647i, true, all(vec4<bool>(true, false, true, true)), any(vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, true)));
    var var_2 = Struct_1(vec2<bool>(!((var_0.x <= 2177f) && var_1.x), global1[_wgslsmith_index_u32(0u, 17u)] > global1[_wgslsmith_index_u32(20650u | u_input.a.x, 17u)]), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(var_0.zz, vec2<f32>(-1231f, -1575f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-323f, -505f))), _wgslsmith_f_op_vec2_f32(var_0.zx + var_0.xy)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 490f))), var_1.x)), vec3<u32>(reverseBits(4294967295u), _wgslsmith_mult_u32(~4294967295u, ~countOneBits(u_input.a.x)), u_input.a.x));
    var var_3 = _wgslsmith_mod_i32(countOneBits(i32(-1i) * -31427i), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(global1[_wgslsmith_index_u32(var_2.c.x, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)], -2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(var_2.c.x, 17u)], 57171i, -57442i) << (vec3<u32>(6512u, var_2.c.x, u_input.a.x) % vec3<u32>(32u))), ~_wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(83679u, 17u)], 0i), vec3<i32>(global1[_wgslsmith_index_u32(var_2.c.x, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 165i))), ~(vec3<i32>(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(91952u, 17u)], -2147483647i) ^ -vec3<i32>(global1[_wgslsmith_index_u32(var_2.c.x, 17u)], -1i, global1[_wgslsmith_index_u32(20613u, 17u)]))));
    var var_4 = 24797u;
    return ~vec3<u32>(var_2.c.x, 1u, _wgslsmith_mult_u32(var_2.c.x, _wgslsmith_dot_vec3_u32(~var_2.c, vec3<u32>(5522u, var_2.c.x, 13709u))));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, -621f) + -302f), (arg_2.b.x != -956f) != false)), -1491f, false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-329f)), arg_2.b.x))));
    var var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.c.yz, vec2<u32>(max(arg_2.c.x, u_input.a.x), arg_1.x)), vec2<u32>(_wgslsmith_add_u32(0u, _wgslsmith_sub_u32(4294967295u, 36757u)), ~_wgslsmith_mod_u32(0u, 4758u))), ~(arg_1.yx << (vec2<u32>(arg_2.c.x, 21230u) % vec2<u32>(32u))));
    let var_2 = vec4<f32>(-206f, arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-349f, _wgslsmith_f_op_f32(553f + arg_2.b.x)), arg_2.b.x)), 246f);
    global0 = array<Struct_3, 1>();
    let var_3 = Struct_4(firstLeadingBit(select(vec3<i32>(-1i, -2147483647i, -1i ^ global1[_wgslsmith_index_u32(var_1.x, 17u)]), reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(38250u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)])) << (_wgslsmith_clamp_vec3_u32(arg_2.c, vec3<u32>(16212u, 10613u, u_input.a.x), arg_1) % vec3<u32>(32u)), !arg_0)), 1i <= ~global1[_wgslsmith_index_u32(41867u << (arg_2.c.x % 32u), 17u)], ~2987u);
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(~u_input.a.x, firstLeadingBit(~(~arg_1.x))), 3442u, arg_2.c.x << (1u % 32u)), 1u)];
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -993f), -556f), true)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(712f, -1125f), vec2<f32>(-222f, -611f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1561f, 140f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1230f, -311f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 218f)))))), u_input.a.wzz);
    var var_1 = func_4(var_0.a.x, u_input.a.ywy, Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.b, vec2<f32>(-2131f, var_0.b.x), any(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))))), ~func_2()));
    return Struct_4(abs(~abs(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], -5341i, 0i))), any(var_1.c), ~49135u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1833f));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -553f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(252f, _wgslsmith_f_op_f32(step(-544f, 585f))))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(825f + 1218f) + -604f)))));
    var var_2 = func_1();
    global0 = array<Struct_3, 1>();
    let var_3 = func_4(func_4(~40912u <= var_2.c, u_input.a.yzz, func_4(!var_2.b, vec3<u32>(4294967295u, var_2.c, 4294967295u), Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, false), false), _wgslsmith_f_op_vec2_f32(vec2<f32>(1410f, -978f) - vec2<f32>(1699f, -1239f)), vec3<u32>(74054u, 69843u, 3769u))).a).c.x, u_input.a.wzz, Struct_1(select(!func_4(var_2.b, u_input.a.yxz, Struct_1(vec2<bool>(var_2.b, var_2.b), vec2<f32>(574f, 2077f), u_input.a.xyz)).a.a, select(select(vec2<bool>(var_2.b, var_2.b), vec2<bool>(false, false), var_2.b), vec2<bool>(false, true), false), !(!vec2<bool>(var_2.b, var_2.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-239f, 430f))) - func_4(true, vec3<u32>(var_2.c, var_2.c, var_2.c), Struct_1(vec2<bool>(true, var_2.b), vec2<f32>(-1798f, -292f), u_input.a.xyw)).b.a.b)), _wgslsmith_sub_vec3_u32(abs(firstTrailingBit(u_input.a.xzz)), vec3<u32>(~u_input.a.x, ~0u, 28933u)))).a;
    let var_4 = 4294967295u;
    let var_5 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_3.b.x)), var_3.b.x, _wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x - 657f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(450f, var_3.b.x, var_3.b.x, 969f), vec4<f32>(-148f, var_3.b.x, var_3.b.x, 1323f))) * vec4<f32>(-1367f, var_3.b.x, var_3.b.x, -1304f)))));
    var var_6 = Struct_1(select(func_4(true || select(var_3.a.x, true, false), select(var_3.c, vec3<u32>(40766u, var_3.c.x, var_4), var_2.b) << (firstTrailingBit(vec3<u32>(21355u, var_3.c.x, var_3.c.x)) % vec3<u32>(32u)), var_3).b.a.a, func_4(func_1().b & var_3.a.x, var_3.c, var_3).c.xx, select(!var_3.a, vec2<bool>(all(var_3.a), var_5.x >= var_5.x), !(var_3.b.x >= -1608f))), vec2<f32>(var_5.x, var_5.x), vec3<u32>(countOneBits(~(~var_2.c)), u_input.a.x, ~reverseBits(u_input.a.x)));
    let var_7 = ((firstLeadingBit(var_6.c.x ^ 6552u) == ~firstLeadingBit(43352u)) | !all(func_4(var_2.b, var_3.c, var_3).c.xxx)) != var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(~1u, 1u)), ~(~(~func_4(var_2.b, vec3<u32>(var_6.c.x, var_6.c.x, var_4), Struct_1(var_6.a, vec2<f32>(var_5.x, 1420f), u_input.a.wxw)).a.c.x)));
}

