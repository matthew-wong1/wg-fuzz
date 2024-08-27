struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: array<Struct_3, 21>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<u32> {
    global0 = array<vec2<bool>, 17>();
    let var_0 = u_input.c;
    var var_1 = 0u;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + -785f))), _wgslsmith_f_op_f32(f32(-1f) * -1858f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -375f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 183f) - vec2<f32>(162f, 294f))))))), false));
    var var_3 = -_wgslsmith_div_i32(-_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.yz)), 37000i);
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~(1u & u_input.e), u_input.d), select(1u, var_0, global1.x), 1u), ~_wgslsmith_div_vec3_u32(~vec3<u32>(var_0, 1u, 95839u), vec3<u32>(~var_0, var_0, var_0 | 37761u)), abs(vec3<u32>(var_0, 46723u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(39499u, 1u, var_0), ~var_0))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> vec4<u32> {
    let var_0 = Struct_4(arg_0.a.e << (min(~(~arg_0.a.b.x), arg_0.a.b.x ^ 73110u) % 32u), ~func_3(), (countOneBits(arg_3.a.b.x) & ~func_3().x) >> ((arg_1.b.x & ~4294967295u) % 32u), !vec3<bool>(true, global1.x & false, false));
    let var_1 = reverseBits(-vec2<i32>(_wgslsmith_div_i32(0i, ~arg_0.a.e), _wgslsmith_mod_i32(arg_2, -2147483647i)));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(arg_1.a, vec2<f32>(arg_1.a.x, arg_1.a.x), vec2<bool>(false, arg_1.c.x))), _wgslsmith_f_op_vec2_f32(sign(arg_0.a.a)), true)), vec2<f32>(_wgslsmith_f_op_f32(step(-1549f, arg_1.a.x)), 1000f))), arg_0.a.b, !select(vec4<bool>(arg_1.c.x, true, arg_1.c.x, true), vec4<bool>(true, var_0.d.x, true, arg_1.c.x), !global1.x), select(arg_3.a.d, select(!vec4<bool>(global1.x, false, false, arg_3.a.d.x), arg_1.d, select(vec4<bool>(true, true, global1.x, arg_3.a.d.x), arg_0.a.c, arg_0.a.c)), select(true, arg_1.b.x >= 8849u, true)), -_wgslsmith_dot_vec2_i32(u_input.a.yy, min(u_input.b, var_1))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), 1424f));
    var var_3 = 312f;
    let var_4 = 1355f;
    return vec4<u32>(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.b.x, var_2.a.b.x, arg_1.b.x), vec3<u32>(var_2.a.b.x, 28754u, var_0.c) ^ arg_1.b.wxz), select(vec3<u32>(10861u, u_input.d, arg_1.b.x) ^ arg_1.b.wxy, _wgslsmith_div_vec3_u32(arg_0.a.b.yzw, var_2.a.b.yxy), any(var_2.a.d)))), 32992u, 16686u, var_2.a.b.x);
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(198f * 459f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0)), -1358f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -1571f))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, 759f)))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d, 1u, 14331u, u_input.c), func_2(Struct_3(Struct_1(vec2<f32>(1142f, -933f), vec4<u32>(1u, 1u, 0u, 0u), vec4<bool>(global1.x, false, true, false), vec4<bool>(global1.x, global1.x, false, global1.x), u_input.a.x), vec2<f32>(arg_0, -566f)), Struct_1(vec2<f32>(arg_0, arg_0), vec4<u32>(u_input.e, 50363u, u_input.e, u_input.d), vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, global1.x), -2147483647i), u_input.a.x, global2[_wgslsmith_index_u32(u_input.d, 21u)])), vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(global1.x, global1.x, true), false)), !select(global1.x, global1.x, false), true, 1u != (u_input.c ^ u_input.e)), vec4<bool>(global1.x, !(8623i != u_input.a.x), true, global1.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-35238i, u_input.a.x, u_input.a.x, 6561i) | vec4<i32>(-2147483647i, -81660i, u_input.a.x, u_input.a.x), -vec4<i32>(u_input.b.x, 19917i, -2147483647i, u_input.a.x)), -abs(-2147483647i), countOneBits(~u_input.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(314f, 1524f), vec2<f32>(arg_0, -221f)))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(sign(arg_0))))) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-874f, 751f) * vec2<f32>(-1659f, -1425f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1392f, arg_0) * vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(786f, 1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.b.x, var_1.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -320f) * _wgslsmith_f_op_f32(f32(-1f) * -1511f)) * var_1.a.a.x)) + vec4<f32>(-1803f, arg_0, arg_0, arg_0));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_1.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(abs(549f)))))), !(_wgslsmith_f_op_f32(-var_2.x) < _wgslsmith_f_op_f32(exp2(arg_0)))));
    var var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-var_2.xz), var_1.a.b, !(!var_1.a.c), var_1.a.d, _wgslsmith_div_i32(reverseBits(71899i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b.x, -1170i, var_1.a.e, 1i)), -vec4<i32>(var_1.a.e, -2147483647i, 1i, u_input.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_1.b))))));
    return 1f;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: Struct_4) -> Struct_4 {
    global0 = array<vec2<bool>, 17>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.a.x, arg_0.c.a.x))))), max(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a, 7684u, 4294967295u, arg_3.c), vec4<u32>(37517u, arg_0.e.b.x, u_input.d, 55913u))), vec4<u32>(15793u, _wgslsmith_mod_u32(7461u, arg_0.a), _wgslsmith_sub_u32(u_input.d, arg_0.d.b.x), _wgslsmith_mod_u32(u_input.c, 4294967295u))), arg_0.d.c, vec4<bool>(any(vec2<bool>(global1.x, false)), any(!arg_0.d.d), true, arg_0.c.d.x && true), reverseBits(-_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(arg_3.a, arg_3.a, arg_1)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1425f + arg_2))), 380f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_0.d.a + vec2<f32>(arg_2, 705f)), vec2<f32>(arg_0.c.a.x, -1042f))))));
    let var_1 = ~(~4294967295u) << ((_wgslsmith_mod_u32(var_0.a.b.x, ~u_input.d) & u_input.d) % 32u);
    let var_2 = Struct_3(var_0.a, arg_0.d.a);
    var var_3 = vec3<bool>(true, false, any(vec2<bool>(any(select(var_0.a.c.xz, vec2<bool>(arg_0.e.d.x, arg_3.d.x), vec2<bool>(false, arg_0.c.c.x))), global1.x)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(any(global0[_wgslsmith_index_u32(~(~(~5396u)), 17u)]), global1.x, !(!all(!vec4<bool>(false, true, false, global1.x))));
    global1 = vec3<bool>(-83807i > u_input.a.x, global1.x, true);
    let var_0 = func_4(Struct_2(abs(u_input.c), ~u_input.c, Struct_1(vec2<f32>(1000f, _wgslsmith_f_op_f32(func_1(1899f))), vec4<u32>(u_input.d, ~u_input.d, u_input.e, ~0u), !(!vec4<bool>(false, global1.x, true, false)), vec4<bool>(true, false, u_input.b.x <= u_input.b.x, u_input.e >= u_input.c), u_input.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2296f, 2641f))) - vec2<f32>(1321f, 156f)), select(~vec4<u32>(u_input.e, 1u, u_input.c, u_input.d), ~vec4<u32>(4294967295u, 1u, u_input.d, u_input.c), true), select(!vec4<bool>(global1.x, true, global1.x, false), !vec4<bool>(true, global1.x, true, false), select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(true, false, false, true), vec4<bool>(global1.x, false, global1.x, global1.x))), !select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(global1.x, true, global1.x, global1.x)), _wgslsmith_div_i32(u_input.b.x, 26189i)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-132f, 988f) + vec2<f32>(-268f, 1679f)) + vec2<f32>(-855f, 1657f)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, 4294967295u, 4294967295u, 54515u), func_2(global2[_wgslsmith_index_u32(u_input.c, 21u)], Struct_1(vec2<f32>(1260f, 813f), vec4<u32>(63047u, u_input.d, 18432u, u_input.e), vec4<bool>(false, false, global1.x, true), vec4<bool>(global1.x, global1.x, true, global1.x), u_input.a.x), 845i, global2[_wgslsmith_index_u32(u_input.e, 21u)])), select(vec4<bool>(true, true, global1.x, false), select(vec4<bool>(false, global1.x, false, true), vec4<bool>(true, false, global1.x, false), true), true), select(vec4<bool>(global1.x, global1.x, false, true), !vec4<bool>(false, global1.x, global1.x, true), !global1.x), ~u_input.b.x)), -u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), Struct_4(-1i, vec3<u32>(u_input.c, u_input.e << ((u_input.c | u_input.c) % 32u), reverseBits(1u)), _wgslsmith_dot_vec4_u32(min(max(vec4<u32>(1u, u_input.d, 0u, 1u), vec4<u32>(u_input.e, 41161u, 4294967295u, 50997u)), ~vec4<u32>(u_input.e, u_input.c, u_input.c, u_input.d)), vec4<u32>(u_input.e, u_input.d, 55607u, ~1u)), select(select(!vec3<bool>(global1.x, global1.x, global1.x), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, global1.x), global1.x), !global1.x), vec3<bool>(!global1.x, select(global1.x, global1.x, global1.x), true), select(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, false, false), vec3<bool>(false, global1.x, global1.x)), !vec3<bool>(global1.x, global1.x, false), !vec3<bool>(true, false, global1.x)))));
    global2 = array<Struct_3, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(max(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_0.a, u_input.b.x), vec4<i32>(var_0.a, var_0.a, -23037i, var_0.a)) | vec4<i32>(2147483647i, u_input.b.x, -56087i, var_0.a)), ~vec4<i32>(-24188i, 0i, ~(-41129i), _wgslsmith_sub_i32(0i, 16937i))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-563f))), _wgslsmith_f_op_f32(abs(1251f)), global1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -901f))), -1437f)), -859f), ~vec4<u32>(countOneBits(~u_input.d), 1u, countOneBits(1u), u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f)))), var_0.b.x);
}

