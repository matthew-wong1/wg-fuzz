struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(-12394i, 16740i, 19393i), vec3<i32>(1i, i32(-2147483648), 27426i), vec3<i32>(1i, -16410i, 31351i), vec3<i32>(5082i, 0i, -1i), vec3<i32>(-5766i, 52925i, 1i), vec3<i32>(-27905i, i32(-2147483648), -39054i), vec3<i32>(1i, 2147483647i, 35335i), vec3<i32>(-35576i, -1i, 1i), vec3<i32>(636i, i32(-2147483648), -1i), vec3<i32>(1137i, -336i, -3112i), vec3<i32>(-3032i, -24030i, 313i), vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(4007i, -8402i, -12595i), vec3<i32>(32899i, -36211i, -10725i), vec3<i32>(-3694i, -1i, -27888i), vec3<i32>(2147483647i, 20460i, 26065i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(i32(-2147483648), 47953i, 6079i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(30313i, -1i, -47709i), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(30193i, 1i, 39138i), vec3<i32>(60220i, -998i, -7643i), vec3<i32>(7379i, 34048i, -38402i), vec3<i32>(-68177i, 1i, 0i), vec3<i32>(-28913i, i32(-2147483648), 13114i), vec3<i32>(1i, -12211i, -1i), vec3<i32>(-69790i, 2147483647i, 0i));

var<private> global1: i32;

var<private> global2: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec2<u32>(4294967295u, 1u), 802f), Struct_4(vec2<u32>(132808u, 77762u), -1158f), Struct_4(vec2<u32>(4294967295u, 84898u), -165f), Struct_4(vec2<u32>(1u, 25621u), 1705f), Struct_4(vec2<u32>(8246u, 4294967295u), 706f), Struct_4(vec2<u32>(1u, 4294967295u), -1554f), Struct_4(vec2<u32>(0u, 0u), -1885f), Struct_4(vec2<u32>(4294967295u, 0u), -1567f));

var<private> global3: array<i32, 22>;

var<private> global4: vec3<f32> = vec3<f32>(325f, 229f, -637f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    global2 = array<Struct_4, 8>();
    global3 = array<i32, 22>();
    var var_0 = ~(~(-abs(global0[_wgslsmith_index_u32(u_input.c.x, 28u)] & global0[_wgslsmith_index_u32(4294967295u, 28u)])));
    var var_1 = Struct_3(Struct_2(u_input.d, Struct_1(arg_0, select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), true), global4.zz), _wgslsmith_f_op_f32(global4.x - 357f), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.d), vec3<u32>(u_input.b, 1u, u_input.c.x)), firstTrailingBit(u_input.b)) | vec2<u32>(u_input.b, _wgslsmith_div_u32(u_input.b, u_input.b))), Struct_1(634f, vec2<bool>(false, true), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.xy - global4.xx) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, global4.x)))))), Struct_1(-201f, select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-415f, global4.x))))), Struct_1(-687f, select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1299f, arg_0), global4.zy)))), global4.zz)));
    let var_2 = Struct_4(~_wgslsmith_add_vec2_u32(vec2<u32>(45448u, _wgslsmith_mult_u32(var_1.a.a, var_1.a.d.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a.a, 0u), u_input.c)), var_1.a.c);
    return global4.x;
}

fn func_2() -> Struct_2 {
    let var_0 = ~2147483647i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - _wgslsmith_f_op_f32(select(global4.x, 1248f, true))), global4.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.yz) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.yz))));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, u_input.d), 8u)];
    global0 = array<vec3<i32>, 28>();
    var var_3 = var_1;
    return Struct_2(select(_wgslsmith_mod_u32(min(var_2.a.x, 1u), ~0u) >> (112715u % 32u), 4294967295u, (var_1.c.x > _wgslsmith_f_op_f32(sign(var_1.c.x))) || var_3.b.x), Struct_1(_wgslsmith_f_op_f32(select(-831f, var_3.a, true)), var_3.b, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-var_3.c.x), 617f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1088f, var_3.a), _wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-var_1.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(ceil(995f)))))), var_2.a);
}

fn func_1() -> Struct_5 {
    var var_0 = func_2();
    let var_1 = abs(firstTrailingBit(u_input.a)) | global3[_wgslsmith_index_u32(u_input.c.x, 22u)];
    let var_2 = Struct_5(_wgslsmith_f_op_f32(func_3(-410f)), select(vec4<i32>(-(~2147483647i), countOneBits(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(45724u, u_input.b), 22u)]), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, -1i), global0[_wgslsmith_index_u32(u_input.b, 28u)]), global3[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(var_0.a)), 22u)]), min(~vec4<i32>(global3[_wgslsmith_index_u32(0u, 22u)], -36633i, u_input.a, var_1), vec4<i32>(u_input.a, var_1, -1i, u_input.a) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 32616i, var_1, var_1), vec4<i32>(26552i, u_input.a, var_1, 35229i), vec4<i32>(-2147483647i, var_1, 25895i, global3[_wgslsmith_index_u32(u_input.c.x, 22u)]))), var_0.b.b.x), Struct_1(226f, !vec2<bool>(u_input.b < 4294967295u, select(var_0.b.b.x, var_0.b.b.x, false)), _wgslsmith_div_vec2_f32(global4.xz, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1032f), -239f))), !(!vec4<bool>(true, var_0.b.b.x, var_1 > var_1, var_0.c != -1330f)));
    let var_3 = 223f;
    var_0 = Struct_2(countOneBits(select(var_0.d.x, ~u_input.d | u_input.b, !all(var_0.b.b))), Struct_1(var_3, select(func_2().b.b, vec2<bool>(true, true), select(select(var_0.b.b, var_2.d.zz, false), select(var_0.b.b, vec2<bool>(false, false), vec2<bool>(false, false)), select(false, true, var_2.d.x))), var_0.b.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_3)), var_3), vec2<u32>(u_input.b, ~u_input.c.x) | vec2<u32>(~(0u & u_input.b), u_input.c.x));
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -947f))))), min(-vec4<i32>(-1i, global3[_wgslsmith_index_u32(885u, 22u)], _wgslsmith_add_i32(2147483647i, u_input.a), 1i), firstTrailingBit(select(~var_2.b, max(var_2.b, vec4<i32>(global3[_wgslsmith_index_u32(var_0.d.x, 22u)], -8513i, u_input.a, -10546i)), !var_2.c.b.x))), Struct_1(var_0.c, vec2<bool>(any(var_2.d.wxy), true), global4.zy), var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 22>();
    let var_0 = func_1();
    global2 = array<Struct_4, 8>();
    global3 = array<i32, 22>();
    let var_1 = _wgslsmith_div_u32(firstLeadingBit(~u_input.d), 1u);
    global0 = array<vec3<i32>, 28>();
    let var_2 = func_2().d;
    let x = u_input.a;
    s_output = StorageBuffer(2386i, var_2.x, _wgslsmith_f_op_f32(select(-800f, -679f, var_0.c.b.x)));
}

