struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17>;

var<private> global1: array<vec4<i32>, 29>;

var<private> global2: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    var var_0 = true;
    var_0 = all(vec2<bool>(true, all(vec4<bool>(true, true, true, true))));
    let var_1 = reverseBits(vec4<u32>(abs(u_input.b.x), u_input.c, _wgslsmith_div_u32(~u_input.c, u_input.b.x), ~(0u | u_input.c)) | ~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(36564u, u_input.b.x, 19057u, u_input.c), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), ~vec4<u32>(u_input.b.x, 0u, 0u, u_input.c)));
    let var_2 = u_input.d | 43305i;
    global0 = array<Struct_3, 17>();
    return _wgslsmith_dot_vec4_u32(vec4<u32>(abs(_wgslsmith_dot_vec3_u32(~var_1.zzy, _wgslsmith_div_vec3_u32(var_1.zxz, vec3<u32>(var_1.x, 0u, 4294967295u)))), 4294967295u, 41759u, _wgslsmith_sub_u32(u_input.b.x << (1u % 32u), 4294967295u)), vec4<u32>(reverseBits(579u), firstLeadingBit(4294967295u), u_input.c, ~_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(var_1.ywx, var_1.wwx))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(trunc(arg_1.b.x));
    global2 = true;
    var var_1 = Struct_1(vec4<u32>(~u_input.c, _wgslsmith_mod_u32(~9050u, _wgslsmith_add_u32(u_input.c, func_3())), reverseBits(~u_input.c), (~arg_0 & u_input.b.x) << (u_input.c % 32u)));
    global2 = !all(vec3<bool>(false, true, arg_2 | false));
    let var_2 = Struct_4(arg_1.b, Struct_1(~(~arg_1.a.a)), 1u, arg_1.a.a.zz | var_1.a.wx, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1022f, _wgslsmith_f_op_f32(select(arg_1.b.x, var_0, arg_2)))))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_2.a.x)), vec3<f32>(-847f, _wgslsmith_f_op_f32(-var_0), -2703f), vec3<bool>(arg_2, arg_2, all(vec3<bool>(true, arg_2, true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(1000f, arg_1.b.x)), arg_1.b.x, var_2.e.x)))), Struct_1(var_1.a), 1u, vec2<u32>(func_3(), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.b.x, 10597u), ~_wgslsmith_dot_vec4_u32(arg_1.a.a, arg_1.a.a))), _wgslsmith_f_op_vec2_f32(-arg_1.b.xz));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> bool {
    global2 = !(min(_wgslsmith_mod_i32(firstTrailingBit(3277i), -33748i & u_input.a), _wgslsmith_sub_i32(u_input.d, 1i) ^ firstTrailingBit(40130i)) > (-10751i ^ _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_1.c.x, -2734i, -6211i), u_input.d, ~u_input.a)));
    global2 = all(vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 518f <= arg_0.a.x)), false));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-625f * -1088f))))));
    global0 = array<Struct_3, 17>();
    let var_1 = !vec4<bool>(all(vec3<bool>(true, false, true)), !all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    return true;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_mult_u32(1u, select(countOneBits(arg_0), ~arg_0, func_4(func_2(15276u, Struct_2(Struct_1(vec4<u32>(arg_0, arg_0, 4294967295u, arg_0)), vec3<f32>(-541f, -1000f, 145f)), false, u_input.d), Struct_3(-527f, vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(-39606i, u_input.d, u_input.a))) && (arg_1.x == !arg_1.x)));
    global0 = array<Struct_3, 17>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-798f + -277f)) - _wgslsmith_f_op_f32(abs(func_2(arg_0, Struct_2(Struct_1(vec4<u32>(15503u, u_input.c, arg_0, 0u)), vec3<f32>(-687f, 1675f, 2044f)), false, 13998i).a.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -459f)), 1f)));
    var var_2 = Struct_2(func_2(12420u, Struct_2(Struct_1(min(vec4<u32>(42326u, 0u, 35327u, 0u), vec4<u32>(arg_0, 57783u, arg_0, 73631u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-134f, 1000f, 116f) - vec3<f32>(125f, 1097f, -1082f)))), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.d, u_input.d), vec3<i32>(-26868i, -34505i, u_input.a) ^ vec3<i32>(2147483647i, u_input.d, 2147483647i)) > _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d, u_input.d), vec2<i32>(2147483647i, 0i)), 2147483647i).b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(138f, 1857f, 920f) - vec3<f32>(1000f, -1120f, 862f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1969f, -3066f, 846f) - vec3<f32>(-813f, 394f, -1587f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1220f, -279f, -862f))))));
    let var_3 = var_2.a;
    return vec4<f32>(-1815f, _wgslsmith_f_op_f32(max(917f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(164f, var_2.b.x) - var_2.b.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.x + -1045f), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -477f))))), _wgslsmith_f_op_f32(var_2.b.x + var_2.b.x));
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(func_2(~u_input.c, Struct_2(func_2(4294967295u, Struct_2(arg_3, vec3<f32>(971f, 193f, 672f)), all(vec3<bool>(true, false, arg_0)), -15767i).b, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.x, -163f, 744f)))), ~u_input.d >= -14549i, -9922i).b, arg_1.yyw);
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.x, arg_1.x, 1658f)))))));
    var_0 = Struct_2(arg_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.zzy)));
    var var_1 = arg_1.x;
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(34478u, var_0.a.a.x), 29u)];
    return Struct_2(func_2(_wgslsmith_dot_vec4_u32(var_0.a.a, vec4<u32>(57789u, _wgslsmith_dot_vec3_u32(var_0.a.a.yxy, arg_3.a.xzz), _wgslsmith_add_u32(41712u, 1u), ~arg_2)), Struct_2(Struct_1(var_0.a.a), _wgslsmith_f_op_vec4_f32(func_1(~4294967295u, select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, false, true)))).yyy), !arg_0, _wgslsmith_add_i32(u_input.a, reverseBits(var_2.x))).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1502f, 2606f, 1127f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!(!(all(vec2<bool>(false, false)) && select(false, false, false))), _wgslsmith_f_op_vec4_f32(func_1(9927u, vec4<bool>(true, true, true, true))), func_2(u_input.c, Struct_2(Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.c, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 0u, u_input.c, 9626u), vec4<u32>(53349u, u_input.b.x, u_input.b.x, u_input.b.x))), vec3<f32>(_wgslsmith_f_op_f32(174f + -840f), -506f, _wgslsmith_f_op_f32(abs(2016f)))), true, _wgslsmith_clamp_i32(919i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.d, u_input.a, u_input.d, u_input.a), global1[_wgslsmith_index_u32(47373u, 29u)], false), vec4<i32>(u_input.d, u_input.d, u_input.d, -30821i)), _wgslsmith_clamp_i32(-45677i & u_input.d, reverseBits(-39275i), _wgslsmith_div_i32(2147483647i, 2147483647i)))).c, func_2(25645u, Struct_2(func_2(u_input.b.x ^ u_input.c, Struct_2(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, u_input.c)), vec3<f32>(-170f, 130f, 928f)), true, u_input.a).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(855f, 1385f, -168f) * vec3<f32>(-1309f, 569f, -699f)))), true, min(u_input.a, abs(abs(-2147483647i)))).b);
    let var_1 = _wgslsmith_f_op_vec3_f32(-var_0.b);
    var var_2 = func_2(~0u, Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_0.b.x, -174f) - vec3<f32>(-1000f, var_1.x, var_0.b.x))))), all(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), _wgslsmith_clamp_i32(0i, u_input.a, ~1i)).b;
    global1 = array<vec4<i32>, 29>();
    var_2 = Struct_1(countOneBits(var_0.a.a));
    global2 = all(select(vec2<bool>(true, any(vec4<bool>(true, true, true, true))), vec2<bool>(true, false), false));
    global2 = !(abs(1u) == min(countOneBits(116542u >> (u_input.b.x % 32u)), u_input.c));
    global2 = true;
    var_2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.a.x);
}

