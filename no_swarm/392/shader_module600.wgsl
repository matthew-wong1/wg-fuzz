struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: vec4<f32> = vec4<f32>(254f, -522f, -1025f, 581f);

var<private> global2: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(26732i, -1i, 4246i, -53868i), vec4<i32>(-28043i, 2410i, 1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 0i, -1i, i32(-2147483648)), vec4<i32>(-1i, 0i, -35922i, 2147483647i), vec4<i32>(12192i, -33080i, -1i, -43042i), vec4<i32>(0i, -1i, i32(-2147483648), -1i), vec4<i32>(-11624i, i32(-2147483648), 6565i, -23715i), vec4<i32>(-35572i, 2147483647i, 10924i, -1i), vec4<i32>(23873i, 44027i, -30012i, -7009i), vec4<i32>(10084i, 2147483647i, i32(-2147483648), -1i), vec4<i32>(-40188i, 0i, 1i, 2147483647i), vec4<i32>(21224i, 36481i, -31913i, -7607i), vec4<i32>(0i, -1380i, -1i, -1i), vec4<i32>(22977i, 9689i, 0i, 22336i), vec4<i32>(-77349i, 8580i, 19343i, -31890i), vec4<i32>(-1i, -30640i, -1i, -391i), vec4<i32>(i32(-2147483648), 2280i, i32(-2147483648), 18473i), vec4<i32>(46258i, -13008i, -43539i, 2147483647i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: f32) -> vec4<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1489f) - _wgslsmith_f_op_f32(trunc(-2930f))), abs(select(vec2<u32>(4294967295u, reverseBits(19801u)), u_input.b.yz, all(vec4<bool>(false, arg_0, arg_0, false)))), _wgslsmith_f_op_f32(round(global1.x)), !all(!select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, arg_0, true))), abs(_wgslsmith_div_u32(0u, 4294967295u)));
    return u_input.a;
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4, arg_3: Struct_1) -> Struct_5 {
    global2 = array<vec4<i32>, 18>();
    let var_0 = vec4<f32>(-526f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x)), global1.x);
    var var_1 = Struct_4(_wgslsmith_mod_vec4_u32(arg_0.a, _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(arg_2.a, ~vec4<u32>(6705u, arg_3.d, arg_3.a.x, 109521u)), func_3(true, _wgslsmith_div_f32(global1.x, var_0.x)))));
    global2 = array<vec4<i32>, 18>();
    var var_2 = 0i;
    return Struct_5(arg_3);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_5) -> bool {
    global0 = array<i32, 2>();
    var var_0 = arg_1;
    global0 = array<i32, 2>();
    global1 = _wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(_wgslsmith_div_f32(global1.x, -143f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 834f)), -914f, _wgslsmith_f_op_f32(arg_0.x * 193f)));
    var var_1 = select(((-arg_1.a.e.xw ^ var_0.a.b.zx) ^ _wgslsmith_mod_vec2_i32(arg_1.a.e.yy | vec2<i32>(u_input.e, 20418i), -vec2<i32>(var_0.a.b.x, -2147483647i))) | -abs(~vec2<i32>(u_input.d.x, u_input.e)), min(-arg_1.a.e.wy, u_input.d.yx), select(func_2(Struct_4(max(vec4<u32>(var_0.a.d, 0u, 1u, u_input.b.x), vec4<u32>(var_0.a.d, 0u, 1u, 4294967295u))), _wgslsmith_mult_u32(5891u, arg_1.a.a.x), Struct_4(select(vec4<u32>(u_input.a.x, var_0.a.a.x, u_input.b.x, 69609u), u_input.a, var_0.a.c.x)), Struct_1(_wgslsmith_mod_vec2_u32(u_input.b.yx, vec2<u32>(41026u, 4911u)), _wgslsmith_clamp_vec3_i32(var_0.a.b, vec3<i32>(var_0.a.b.x, 2147483647i, u_input.e), arg_1.a.e.zzw), vec4<bool>(var_0.a.c.x, true, var_0.a.c.x, arg_1.a.c.x), 22129u, _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 42742i, u_input.d.x, -2147483647i), global2[_wgslsmith_index_u32(63352u, 18u)]))).a.c.yw, !(!select(vec2<bool>(false, true), var_0.a.c.yw, var_0.a.c.xy)), var_0.a.c.wy));
    return -max(u_input.d.x ^ -global0[_wgslsmith_index_u32(u_input.b.x, 2u)], abs(_wgslsmith_mult_i32(2147483647i, 1i))) >= u_input.e;
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<i32>) -> Struct_2 {
    global2 = array<vec4<i32>, 18>();
    var var_0 = Struct_4(~abs(min(vec4<u32>(337u, 0u, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.b.x)))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1410f, arg_0, global1.x) - vec4<f32>(arg_0, -1335f, global1.x, global1.x))))))));
    global2 = array<vec4<i32>, 18>();
    let var_1 = Struct_1(select(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.a.zx, u_input.b.zz), vec2<u32>(0u, 0u)), var_0.a.xw), vec2<u32>(u_input.c, ~(0u | var_0.a.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(63889u, u_input.c, 8330u), var_0.a.yyy) | 4294967295u, 2u)] < reverseBits(~(-32862i))), ~((u_input.d & u_input.d) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.x, u_input.c, 1u), vec3<u32>(var_0.a.x, var_0.a.x, 3245u)) % vec3<u32>(32u))), select(vec4<bool>(!(arg_2 & false), func_4(vec4<f32>(global1.x, -2424f, global1.x, -1190f), func_2(Struct_4(var_0.a), var_0.a.x, Struct_4(vec4<u32>(var_0.a.x, 35044u, u_input.c, 34443u)), Struct_1(var_0.a.zz, u_input.d, vec4<bool>(arg_2, false, true, false), var_0.a.x, vec4<i32>(global0[_wgslsmith_index_u32(63029u, 2u)], u_input.e, -1i, arg_3.x)))), arg_1.x, true), !(!(!vec4<bool>(true, true, arg_2, arg_1.x))), true), ~u_input.b.x, global2[_wgslsmith_index_u32(72402u, 18u)]);
    return Struct_2(global1.x, ~_wgslsmith_mod_vec2_u32(~u_input.a.zz, ~(u_input.a.wz << (var_1.a % vec2<u32>(32u)))), global1.x, true, 35782u);
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_4(vec4<u32>(arg_1.e, min(u_input.b.x, max(23708u, u_input.c << (u_input.c % 32u))), 4294967295u, _wgslsmith_sub_u32(firstTrailingBit(u_input.c), ~1450u) | 0u));
    var var_1 = _wgslsmith_dot_vec3_i32(countOneBits(select(max(u_input.d, vec3<i32>(global0[_wgslsmith_index_u32(var_0.a.x, 2u)], 2961i, global0[_wgslsmith_index_u32(var_0.a.x, 2u)])), _wgslsmith_add_vec3_i32(~u_input.d, vec3<i32>(global0[_wgslsmith_index_u32(27708u, 2u)], 45396i, 39905i)), vec3<bool>(true, arg_1.d | false, false))), vec3<i32>(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, var_0.a.x), 2u)], (i32(-1i) * -1i) | (~u_input.d.x | ~u_input.d.x), -(~abs(33741i))));
    var var_2 = arg_1.c;
    var_2 = _wgslsmith_div_f32(arg_0, arg_0);
    var_0 = Struct_4(~(~max(u_input.a, func_3(false, 1292f))));
    return Struct_1(vec2<u32>(min(~u_input.b.x, u_input.c) ^ 4294967295u, 26674u), u_input.d, !(!(!vec4<bool>(true, arg_1.d, true, false))), 72927u, _wgslsmith_mult_vec4_i32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.b.x, _wgslsmith_div_u32(reverseBits(150463u), var_0.a.x)), 18u)], firstTrailingBit(abs(global2[_wgslsmith_index_u32(arg_1.b.x, 18u)] << (vec4<u32>(u_input.a.x, 1u, 13849u, 0u) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(839f, func_1(174f, vec2<bool>(true, true), true, vec2<i32>(u_input.d.x, -6074i)));
    var var_1 = var_0.b.x;
    global0 = array<i32, 2>();
    var var_2 = any(!select(!(!vec3<bool>(false, var_0.c.x, var_0.c.x)), !select(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), vec3<bool>(false, true, var_0.c.x), var_0.c.x), var_0.c.zxw));
    let var_3 = func_5(global1.x, func_1(-893f, vec2<bool>(-global0[_wgslsmith_index_u32(var_0.d, 2u)] >= 1i, all(vec4<bool>(false, false, true, var_0.c.x))), true, reverseBits(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], var_0.e.x) << ((u_input.a.ww & var_0.a) % vec2<u32>(32u)))));
    let var_4 = _wgslsmith_f_op_f32(ceil(global1.x));
    var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a.x, select(_wgslsmith_dot_vec2_u32(func_1(var_4, vec2<bool>(var_3.c.x, true), var_0.c.x, vec2<i32>(11937i, u_input.d.x)).b, func_2(Struct_4(vec4<u32>(140579u, 25512u, 24706u, 27511u)), var_0.d, Struct_4(u_input.a), Struct_1(u_input.b.yy, var_3.e.yxy, var_3.c, 38361u, vec4<i32>(-30548i, 0i, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], 14834i))).a.a), var_3.a.x, true)), 2u)];
    let var_5 = _wgslsmith_sub_i32(var_0.e.x, var_3.e.x) & 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, -1000f, _wgslsmith_f_op_f32(var_4 + var_4), _wgslsmith_f_op_f32(global1.x + 473f))))), vec3<i32>(_wgslsmith_dot_vec2_i32(func_5(146f, Struct_2(global1.x, vec2<u32>(var_0.d, var_3.d), -432f, var_0.c.x, var_3.a.x)).b.zx, var_0.b.yz & u_input.d.yz) << (u_input.b.x % 32u), var_5, -1i));
}

