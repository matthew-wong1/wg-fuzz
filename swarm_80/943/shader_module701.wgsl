struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec3<bool>,
    c: Struct_3,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22>;

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), 2147483647i, 19665i, 37928i);

var<private> global2: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(vec2<f32>(1510f, 349f), 0i, vec4<bool>(false, true, true, true)), Struct_3(vec2<f32>(-1000f, 1245f), 1i, vec4<bool>(true, false, false, false)), Struct_3(vec2<f32>(-377f, 996f), -8695i, vec4<bool>(false, true, true, false)), Struct_3(vec2<f32>(-332f, 264f), 41272i, vec4<bool>(true, true, true, false)));

var<private> global3: array<vec4<f32>, 28>;

var<private> global4: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(22791i, vec4<bool>(false, false, true, false), true), vec2<bool>(true, true), 1u, Struct_1(83421i, vec4<bool>(true, false, true, true), false), vec2<bool>(false, false)), Struct_2(Struct_1(3120i, vec4<bool>(true, false, false, false), true), vec2<bool>(false, false), 20246u, Struct_1(0i, vec4<bool>(true, true, true, false), false), vec2<bool>(true, false)), Struct_2(Struct_1(-5208i, vec4<bool>(true, true, false, true), true), vec2<bool>(true, false), 0u, Struct_1(-10834i, vec4<bool>(false, false, true, true), true), vec2<bool>(false, true)), Struct_2(Struct_1(6191i, vec4<bool>(false, false, true, true), false), vec2<bool>(false, true), 1u, Struct_1(i32(-2147483648), vec4<bool>(false, false, false, false), true), vec2<bool>(false, false)), Struct_2(Struct_1(2147483647i, vec4<bool>(true, true, false, true), false), vec2<bool>(false, true), 1u, Struct_1(2147483647i, vec4<bool>(false, false, true, true), true), vec2<bool>(true, true)), Struct_2(Struct_1(-7798i, vec4<bool>(false, false, false, false), true), vec2<bool>(true, false), 54214u, Struct_1(6776i, vec4<bool>(true, true, false, true), true), vec2<bool>(false, true)), Struct_2(Struct_1(59726i, vec4<bool>(true, false, false, true), true), vec2<bool>(true, false), 1u, Struct_1(0i, vec4<bool>(false, false, true, false), true), vec2<bool>(false, false)), Struct_2(Struct_1(-58186i, vec4<bool>(true, true, true, false), false), vec2<bool>(true, false), 28302u, Struct_1(i32(-2147483648), vec4<bool>(false, false, true, true), true), vec2<bool>(false, false)), Struct_2(Struct_1(0i, vec4<bool>(true, false, false, false), true), vec2<bool>(true, false), 4294967295u, Struct_1(48072i, vec4<bool>(true, false, false, false), false), vec2<bool>(false, false)), Struct_2(Struct_1(21137i, vec4<bool>(true, false, false, false), true), vec2<bool>(false, false), 1u, Struct_1(7666i, vec4<bool>(true, true, false, true), true), vec2<bool>(false, false)), Struct_2(Struct_1(-45134i, vec4<bool>(false, false, true, true), true), vec2<bool>(false, true), 1534u, Struct_1(1i, vec4<bool>(false, false, false, true), false), vec2<bool>(true, false)), Struct_2(Struct_1(-1i, vec4<bool>(true, true, true, true), true), vec2<bool>(false, true), 32948u, Struct_1(0i, vec4<bool>(false, false, false, false), false), vec2<bool>(true, false)), Struct_2(Struct_1(i32(-2147483648), vec4<bool>(false, true, false, false), false), vec2<bool>(true, false), 0u, Struct_1(2147483647i, vec4<bool>(false, false, false, true), false), vec2<bool>(true, true)), Struct_2(Struct_1(-55033i, vec4<bool>(false, false, false, false), false), vec2<bool>(true, true), 4294967295u, Struct_1(1387i, vec4<bool>(false, false, true, false), true), vec2<bool>(true, false)), Struct_2(Struct_1(-8913i, vec4<bool>(true, false, true, true), false), vec2<bool>(false, false), 4294967295u, Struct_1(i32(-2147483648), vec4<bool>(false, false, false, false), true), vec2<bool>(false, true)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_4) -> bool {
    global3 = array<vec4<f32>, 28>();
    let var_0 = vec4<u32>(1u, u_input.a.x, arg_0, max(18981u, arg_0));
    var var_1 = arg_2.c.zxy;
    return !(!any(vec3<bool>(all(vec2<bool>(false, false)), arg_1.x, true)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: i32) -> vec3<bool> {
    var var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(19051u, firstTrailingBit(32501u)), 15u)];
    var var_1 = u_input.b.x;
    var_1 = -(-1i >> (reverseBits(var_0.c) % 32u));
    let var_2 = -(var_0.d.a ^ (_wgslsmith_sub_i32(_wgslsmith_div_i32(-55966i, 2147483647i), reverseBits(-36215i)) >> (firstLeadingBit(~var_0.c) % 32u)));
    var var_3 = _wgslsmith_add_i32(2147483647i, var_2);
    return var_0.a.b.xzz;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>) -> bool {
    global1 = u_input.b;
    var var_0 = Struct_5(!(!(_wgslsmith_div_u32(1u, 4294967295u) == (arg_0.x ^ u_input.a.x))), func_4(Struct_4(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), Struct_3(arg_1.yx, firstTrailingBit(u_input.b.x), vec4<bool>(false, false, true, true))), Struct_5(true, vec3<bool>(false, true, false), Struct_3(arg_1.xy, ~u_input.b.x, select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true)), vec4<bool>(u_input.a.x <= 4294967295u, func_3(arg_0.x, vec4<bool>(true, true, true, false), Struct_3(vec2<f32>(-178f, -1833f), global1.x, vec4<bool>(true, false, true, true)), Struct_4(vec3<bool>(true, true, false), vec3<bool>(true, false, false), Struct_3(vec2<f32>(arg_1.x, arg_1.x), global1.x, vec4<bool>(false, false, false, true)))), arg_0.x >= 1u, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(abs(arg_1.x)))), -14085i), Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1.zz))), vec2<f32>(-2274f, _wgslsmith_f_op_f32(-355f * 278f))), global1.x, select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), false), vec4<bool>(true, all(vec4<bool>(false, false, true, false)), -2147483647i >= u_input.b.x, func_3(arg_0.x, vec4<bool>(false, false, false, true), global2[_wgslsmith_index_u32(1u, 4u)], Struct_4(vec3<bool>(true, true, true), vec3<bool>(true, true, false), Struct_3(arg_1.zz, u_input.b.x, vec4<bool>(true, false, false, false))))), any(vec4<bool>(true, false, false, false)))), !vec4<bool>(false, (i32(-1i) * -30473i) > _wgslsmith_mod_i32(u_input.b.x, 0i), all(vec4<bool>(true, true, false, false)) & true, func_3(abs(4294967295u), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), Struct_3(arg_1.xx, 14016i, vec4<bool>(false, true, false, false)), Struct_4(vec3<bool>(true, true, true), vec3<bool>(true, true, false), global2[_wgslsmith_index_u32(5430u, 4u)]))));
    var var_1 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~arg_0 | (_wgslsmith_mod_vec4_u32(vec4<u32>(83451u, 0u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 57u, 59210u, 24865u)) & arg_0), arg_0 | ~arg_0), 15u)];
    var var_2 = _wgslsmith_f_op_f32(var_0.c.a.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1108f - -950f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_0.c.a.x, 603f))))))));
    var var_3 = !var_0.d;
    return false;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_5, arg_3: i32) -> Struct_5 {
    var var_0 = 0i;
    var var_1 = false;
    var var_2 = vec2<bool>(func_2(vec4<u32>(_wgslsmith_div_u32(50077u, 18797u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(24165u, 15608u, u_input.c)), u_input.a.x, 0u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, 1u), vec4<u32>(4294967295u, 0u, 0u, u_input.a.x), vec4<u32>(u_input.c, 0u, 1u, 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.c.a.x, arg_2.c.a.x, 158f), vec3<f32>(arg_2.c.a.x, 206f, arg_2.c.a.x)))))), arg_2.d.x);
    var var_3 = Struct_1(~(firstTrailingBit(i32(-1i) * -1i) ^ _wgslsmith_dot_vec2_i32(-global1.zy, -vec2<i32>(u_input.b.x, arg_3))), !arg_2.c.c, true);
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 4u)];
    return Struct_5(any(vec4<bool>((var_2.x || var_4.c.x) | func_2(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec3<f32>(arg_2.c.a.x, var_4.a.x, 1000f)), select(func_4(Struct_4(vec3<bool>(var_2.x, var_2.x, false), var_4.c.yxx, global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), arg_2, arg_2.c.a, arg_3).x, var_4.c.x, var_3.c), true, false)), vec3<bool>(true, var_2.x, var_2.x), global2[_wgslsmith_index_u32(u_input.c, 4u)], var_4.c);
}

fn func_5(arg_0: bool, arg_1: Struct_5, arg_2: i32, arg_3: u32) -> f32 {
    let var_0 = arg_0;
    let var_1 = arg_1.c;
    var var_2 = _wgslsmith_sub_vec3_i32(~(-u_input.b.yxy << (firstLeadingBit(firstLeadingBit(vec3<u32>(u_input.a.x, u_input.c, u_input.c))) % vec3<u32>(32u))), u_input.b.wyz);
    global0 = array<vec4<f32>, 22>();
    var var_3 = Struct_4(select(vec3<bool>(_wgslsmith_f_op_f32(ceil(3100f)) == _wgslsmith_f_op_f32(arg_1.c.a.x + var_1.a.x), true, !arg_0), vec3<bool>(true, ~u_input.c != _wgslsmith_mod_u32(4294967295u, u_input.c), arg_0), vec3<bool>(var_1.c.x, _wgslsmith_mod_i32(19393i, -1i) < _wgslsmith_sub_i32(global1.x, 8899i), any(vec2<bool>(true, var_0)))), var_1.c.yzy, func_1(-25842i, arg_1.a, func_1(2147483647i, arg_1.b.x, arg_1, _wgslsmith_sub_i32(-var_1.b, ~(-2147483647i))), _wgslsmith_dot_vec4_i32(max(countOneBits(vec4<i32>(var_1.b, 0i, u_input.b.x, -14014i)), u_input.b), vec4<i32>(-global1.x, _wgslsmith_dot_vec2_i32(var_2.yx, u_input.b.zx), global1.x, reverseBits(global1.x)))).c);
    return _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1554f - -181f)), var_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<f32>(-679f, -1000f), -2004i, vec4<bool>(false, u_input.c > u_input.c, u_input.c == abs(u_input.a.x), !(all(vec3<bool>(false, true, false)) || true)));
    var var_1 = u_input.a;
    let var_2 = var_1.x;
    var var_3 = _wgslsmith_div_f32(1772f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.x, -2078f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(any(vec4<bool>(var_0.c.x, false, false, var_0.c.x)), func_1(global1.x, var_0.c.x, Struct_5(var_0.c.x, vec3<bool>(true, var_0.c.x, true), Struct_3(vec2<f32>(-1410f, var_0.a.x), -57765i, vec4<bool>(var_0.c.x, true, var_0.c.x, true)), var_0.c), global1.x), _wgslsmith_dot_vec3_i32(u_input.b.xwz, vec3<i32>(var_0.b, 0i, 2147483647i)), var_1.x)))));
    global0 = array<vec4<f32>, 22>();
    global0 = array<vec4<f32>, 22>();
    let var_4 = Struct_4(var_0.c.xzw, var_0.c.xzz, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, ~19882u) | countOneBits(var_1.x), 4u)]);
    global3 = array<vec4<f32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(var_1.x, 28u)], global1.xxw, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-198f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))))))));
}

