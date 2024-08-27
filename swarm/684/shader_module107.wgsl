struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 17> = array<Struct_5, 17>(Struct_5(90621u, 0u), Struct_5(48868u, 16601u), Struct_5(20855u, 6890u), Struct_5(0u, 33118u), Struct_5(31630u, 35816u), Struct_5(4980u, 4294967295u), Struct_5(0u, 0u), Struct_5(48927u, 12762u), Struct_5(0u, 4294967295u), Struct_5(1u, 14287u), Struct_5(31777u, 0u), Struct_5(4294967295u, 17316u), Struct_5(1u, 37688u), Struct_5(4294967295u, 4294967295u), Struct_5(4294967295u, 16428u), Struct_5(4294967295u, 0u), Struct_5(25167u, 4294967295u));

var<private> global1: vec3<f32>;

var<private> global2: u32 = 4294967295u;

var<private> global3: vec4<u32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: u32, arg_3: Struct_2) -> vec4<u32> {
    global0 = array<Struct_5, 17>();
    var var_0 = arg_1;
    global3 = reverseBits(vec4<u32>(0u, arg_1.b, 56973u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.b, u_input.e), ~arg_0)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x - 2329f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-arg_3.d.b.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(324f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.b.b.x), global1.x, arg_3.b.a))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.d.b.x, global1.x, global1.x, -1695f))), vec4<f32>(_wgslsmith_f_op_f32(abs(-1436f)), global1.x, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1181f)) * -689f)))));
    let var_2 = min(_wgslsmith_mult_i32(u_input.c, -14262i) ^ 1i, -2147483647i);
    return ~(~(~vec4<u32>(arg_2, 45446u, global3.x, 4294967295u) | _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b, 43738u, arg_2, arg_3.a.x), vec4<u32>(84229u, arg_0, global3.x, arg_1.a)))) | (vec4<u32>(firstLeadingBit(22382u), 78124u, arg_0, ~_wgslsmith_div_u32(arg_2, 4294967295u)) ^ vec4<u32>(5825u, 43272u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 86889u, u_input.b) ^ vec3<u32>(32178u, 1u, global3.x), global3.xzz), firstLeadingBit(global3.x) ^ 1u));
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_5(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(global3.x, global3.x, 18965u, 47195u) & select(vec4<u32>(u_input.b, u_input.e, 22564u, u_input.b), vec4<u32>(10450u, 1u, u_input.b, global3.x), vec4<bool>(false, true, true, true))), _wgslsmith_div_vec4_u32(vec4<u32>(15880u, 4294967295u, 1u, 27501u), _wgslsmith_sub_vec4_u32(vec4<u32>(56910u, u_input.e, u_input.b, global3.x), vec4<u32>(47788u, u_input.e, 1261u, u_input.e))) << ((abs(vec4<u32>(1u, 56396u, global3.x, 19497u)) >> (func_3(u_input.e, global0[_wgslsmith_index_u32(4294967295u, 17u)], u_input.b, Struct_2(vec3<u32>(1u, 4294967295u, 33584u), Struct_1(false, vec2<f32>(global1.x, 625f)), false, Struct_1(false, vec2<f32>(global1.x, 1742f)), Struct_1(true, global1.zy))) % vec4<u32>(32u))) % vec4<u32>(32u))), 4294967295u);
    var var_1 = Struct_3(-1028f, Struct_2(vec3<u32>(~var_0.b, u_input.e, select(var_0.a, 145437u, global1.x >= global1.x)), Struct_1(!any(vec3<bool>(false, true, true)), vec2<f32>(_wgslsmith_f_op_f32(min(global1.x, 1000f)), _wgslsmith_f_op_f32(740f * global1.x))), -1000f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(min(-1236f, global1.x))), Struct_1(true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, global1.x)))))), Struct_1(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)), global1.xy)), u_input.d);
    var var_2 = Struct_5(reverseBits(min(10760u, 70132u)), var_1.b.a.x);
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(787f, -790f, global1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.e.b.x, global1.x, var_1.b.d.b.x)))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), 176f)), -1723f)), _wgslsmith_f_op_f32(-var_1.b.d.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + -319f)))));
    var var_3 = (~u_input.a | _wgslsmith_mult_i32(var_1.c, -_wgslsmith_clamp_i32(u_input.c, u_input.a, 23067i))) & u_input.c;
    return var_0;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: f32) -> u32 {
    let var_0 = arg_1;
    global0 = array<Struct_5, 17>();
    return 4294967295u;
}

fn func_1() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u >> (func_4(func_2(), Struct_3(global1.x, Struct_2(vec3<u32>(global3.x, 61557u, 1u), Struct_1(true, global1.xz), false, Struct_1(false, vec2<f32>(-240f, global1.x)), Struct_1(false, global1.zy)), ~2394i), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global1.x))) % 32u), 0u), 17u)];
    global2 = func_3(select(72116u, _wgslsmith_mult_u32(~var_0.b, ~global3.x), u_input.a != firstLeadingBit(-57205i)) & abs(1u), func_2(), _wgslsmith_div_u32(94322u, reverseBits(var_0.a)), Struct_2(vec3<u32>(firstLeadingBit(18858u), _wgslsmith_mod_u32(func_4(Struct_5(global3.x, var_0.a), Struct_3(global1.x, Struct_2(vec3<u32>(4294967295u, 27517u, global3.x), Struct_1(true, vec2<f32>(global1.x, global1.x)), true, Struct_1(false, global1.xy), Struct_1(true, vec2<f32>(global1.x, global1.x))), 39790i), 264f), 24823u), _wgslsmith_mod_u32(var_0.b, global3.x) & reverseBits(u_input.e)), Struct_1(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, global1.x), global1.zy, vec2<bool>(true, false))))), !(!all(vec2<bool>(false, false))), Struct_1(any(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -504f)))), Struct_1(true, vec2<f32>(global1.x, _wgslsmith_f_op_f32(exp2(global1.x)))))).x;
    global3 = countOneBits(firstLeadingBit((vec4<u32>(1u, u_input.b, global3.x, u_input.b) << (vec4<u32>(4294967295u, 1u, u_input.b, 22498u) % vec4<u32>(32u))) | vec4<u32>(global3.x, u_input.e, u_input.b, 0u))) | ~vec4<u32>(29748u, ~4294967295u, ~(4294967295u >> (var_0.b % 32u)), 1u);
    let var_1 = true;
    var_0 = func_2();
    return Struct_1(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(global1.x, 505f)), _wgslsmith_f_op_f32(max(-1649f, -1304f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(228f, _wgslsmith_f_op_f32(-573f * global1.x)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, -1516f))), select(!vec2<bool>(var_1, true), vec2<bool>(true, true), vec2<bool>(var_1, var_1))))));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> i32 {
    global0 = array<Struct_5, 17>();
    var var_0 = func_1();
    global2 = arg_0.a.x;
    var var_1 = all(select(!select(vec2<bool>(true, false), vec2<bool>(false, arg_0.e.a), vec2<bool>(arg_1, false)), vec2<bool>(!arg_1, false), vec2<bool>(true, true))) | all(select(select(select(vec2<bool>(arg_1, false), vec2<bool>(arg_0.e.a, false), vec2<bool>(arg_0.e.a, var_0.a)), select(vec2<bool>(arg_0.b.a, true), vec2<bool>(var_0.a, arg_1), arg_1), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(1i > u_input.c, 15811u > arg_0.a.x)));
    global0 = array<Struct_5, 17>();
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 17>();
    let var_0 = func_5(Struct_2(~vec3<u32>(global3.x, 0u, u_input.e), func_1(), global3.x < 4294967295u, func_1(), func_1()), true) ^ _wgslsmith_dot_vec3_i32(~select(vec3<i32>(-2147483647i, -1i, -28624i), vec3<i32>(28638i, u_input.d, u_input.a), vec3<bool>(true, true, true)), -firstTrailingBit(vec3<i32>(u_input.a, -1i, -16008i) | vec3<i32>(u_input.a, 0i, 1i)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(385f - global1.x) * _wgslsmith_f_op_f32(step(global1.x, -290f))) * 1415f)), global1.x);
    var var_2 = func_2();
    global2 = ~global3.x;
    global3 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(func_3(global3.x, global0[_wgslsmith_index_u32(0u, 17u)], 82395u, Struct_2(vec3<u32>(u_input.e, u_input.b, 9450u), Struct_1(false, vec2<f32>(global1.x, var_1.x)), true, Struct_1(true, global1.zz), Struct_1(true, global1.xz))).x, 62252u, u_input.e, ~var_2.b)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(global3.x, 0u, 4294967295u, var_2.a), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a, 3691u, 1u, 1u), func_3(103506u, Struct_5(0u, 4294967295u), 1881u, Struct_2(vec3<u32>(var_2.b, 67002u, 26159u), Struct_1(true, global1.yy), true, Struct_1(false, global1.yx), Struct_1(true, vec2<f32>(1126f, var_1.x)))))), ~vec4<u32>(4294967295u, 1u, u_input.e, global3.x) & (_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.b, var_2.b, 115664u, var_2.a), vec4<u32>(1u, var_2.a, 4294967295u, 2356u)) ^ firstLeadingBit(vec4<u32>(0u, u_input.e, var_2.b, 18148u))), select(vec4<u32>(47273u, func_2().a, _wgslsmith_mult_u32(var_2.a, 48579u), ~global3.x), select(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global3.x, global3.x, global3.x), vec4<u32>(40690u, global3.x, u_input.b, 42845u)), vec4<u32>(u_input.e, global3.x, 4294967295u, global3.x) << (vec4<u32>(global3.x, 39877u, global3.x, global3.x) % vec4<u32>(32u)), all(vec3<bool>(true, true, true))), vec4<bool>(select(true, false, true), false, 18878i <= var_0, all(vec4<bool>(false, false, true, false))))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -102f), Struct_2(vec3<u32>(~abs(global3.x), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, u_input.b), vec2<u32>(global3.x, 0u))), abs(_wgslsmith_add_u32(1u, 23861u))), func_1(), false, func_1(), func_1()), -u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec3<u32>(4294967295u, 0u, 4294967295u)) >> (~var_3.b.a % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -506f, global1.x))))))), _wgslsmith_div_u32(u_input.b, var_3.b.a.x) | 46247u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(766f, 644f, 433f) + vec3<f32>(global1.x, 247f, -875f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1303f, var_3.b.b.b.x, global1.x) * vec3<f32>(var_1.x, -1357f, -300f)))))), -(~(countOneBits(vec2<i32>(var_3.c, var_0)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, var_0), vec2<i32>(2147483647i, -32376i)))));
}

