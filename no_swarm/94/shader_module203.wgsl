struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: u32;

var<private> global2: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(-10791i, 15321i, -1i), vec3<i32>(-36008i, -15690i, 1i), vec3<i32>(37472i, i32(-2147483648), i32(-2147483648)), vec3<i32>(5737i, 2147483647i, 3074i), vec3<i32>(-12700i, 1i, -48195i), vec3<i32>(0i, 9708i, 1i), vec3<i32>(-1598i, 1i, -9256i), vec3<i32>(0i, 64161i, 44633i), vec3<i32>(0i, 26317i, 51361i), vec3<i32>(22987i, 30520i, 2147483647i), vec3<i32>(35905i, -18642i, 2147483647i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(-1i, 1i, 87591i));

var<private> global3: vec3<f32> = vec3<f32>(1000f, -1772f, -1317f);

var<private> global4: Struct_3 = Struct_3(355f, vec2<u32>(36642u, 7081u), vec3<i32>(1i, 22844i, 2147483647i));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> i32 {
    global2 = array<vec3<i32>, 13>();
    global1 = 63483u;
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -2893f), _wgslsmith_f_op_f32(select(arg_1.a.x, _wgslsmith_f_op_f32(select(823f, 680f, arg_1.e)), true)), global4.a), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) + arg_1.a)))), arg_1.b, select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global4.b.x, arg_0.b.x), arg_0.b), u_input.c.x, any(vec3<bool>(true, false, arg_0.c.c))) < global4.b.x, -select(_wgslsmith_add_i32(global4.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -1i, arg_1.d, global4.c.x), u_input.d)), 25281i, true), true);
    var var_1 = arg_1.d;
    return -33121i;
}

fn func_2(arg_0: f32) -> i32 {
    global0 = array<Struct_1, 10>();
    var var_0 = abs(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(min(4381u, u_input.a.x), 47991u, ~4294967295u), ~vec3<u32>(global4.b.x, 0u, 4294967295u), true), vec3<u32>(0u, firstTrailingBit(u_input.a.x >> (29637u % 32u)), u_input.a.x), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 29346u, global4.b.x), vec3<u32>(u_input.c.x, 4294967295u, 1u)))));
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(152f - 597f)))) >= arg_0, -1i != func_3(Struct_2(Struct_1(vec4<f32>(global4.a, global3.x, arg_0, global4.a), global4.c.x, false, u_input.b.x, false), vec3<u32>(0u, global4.b.x, var_0.x) << (vec3<u32>(var_0.x, global4.b.x, 1u) % vec3<u32>(32u)), Struct_1(vec4<f32>(arg_0, global3.x, arg_0, global3.x), -75701i, false, 12009i, true)), Struct_1(vec4<f32>(global4.a, global3.x, 1109f, -675f), global4.c.x, true, abs(-1i), 0u > global4.b.x), vec2<f32>(_wgslsmith_f_op_f32(-global4.a), 344f), 1i), false);
    global3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -432f)))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(-1375f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global3.x, -1301f, true)), _wgslsmith_f_op_f32(round(-1059f)), _wgslsmith_f_op_f32(floor(472f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(258f, 806f, global4.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(arg_0, global3.x), _wgslsmith_f_op_f32(1314f + global3.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(672f, 833f, global3.x))))))));
    var var_2 = -u_input.d.x;
    return _wgslsmith_sub_i32(-countOneBits(i32(-1i) * -40081i), u_input.d.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_3) -> i32 {
    return _wgslsmith_add_i32(18490i, func_2(139f));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    var var_0 = true;
    let var_1 = 64694i;
    let var_2 = true;
    let var_3 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(1u, 60239u), select(arg_1.b.x, 43773u, arg_1.c.e), 0u, ~0u), ~(~(~_wgslsmith_mod_vec4_u32(arg_2, vec4<u32>(4294967295u, 45355u, arg_1.b.x, u_input.a.x)))), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(8682u, arg_1.b.x), arg_2.wy), arg_2.x, max(_wgslsmith_div_u32(1u, u_input.a.x), firstLeadingBit(u_input.a.x)) << (_wgslsmith_clamp_u32(~global4.b.x, 63532u, ~16894u) % 32u), firstTrailingBit(countOneBits(_wgslsmith_clamp_u32(47009u, u_input.a.x, u_input.c.x)))));
    let var_4 = abs(min(global4.c.x, _wgslsmith_mod_i32(-31979i, max(1i, -1i))));
    return 1u << (arg_1.b.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global3.yy)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global4.a, 100f)))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global4.a, global4.a, 1000f)), global4.c.x, false, -38470i, any(vec4<bool>(false, true, true, false))), vec3<u32>(~u_input.c.x, min(u_input.a.x, 44518u), select(1u, u_input.a.x, false)), global0[_wgslsmith_index_u32(~min(u_input.a.x, 1u), 10u)]), ~vec4<u32>(~u_input.a.x, 1u, 8710u, ~4294967295u), func_1(global0[_wgslsmith_index_u32(37715u, 10u)], ~(~vec4<i32>(41691i, -21773i, u_input.d.x, global4.c.x)), Struct_3(_wgslsmith_f_op_f32(global4.a - -138f), vec2<u32>(u_input.c.x, u_input.c.x), vec3<i32>(11299i, global4.c.x, u_input.b.x) >> (vec3<u32>(global4.b.x, 4294967295u, global4.b.x) % vec3<u32>(32u))))), abs(~min(16594u, 1490u)) & (u_input.a.x & global4.b.x), all(select(vec4<bool>(true, global3.x < 476f, global4.a >= global3.x, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)))));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(var_0, 10u)], _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, global4.b.x, min(29933u, u_input.c.x)), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1246u, u_input.c.x, u_input.c.x), vec3<u32>(20233u, 4294967295u, 0u), vec3<u32>(global4.b.x, global4.b.x, var_0)))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_4(_wgslsmith_f_op_vec2_f32(-global3.zy), Struct_2(global0[_wgslsmith_index_u32(~global4.b.x, 10u)], ~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), global0[_wgslsmith_index_u32(0u, 10u)]), ~(~vec4<u32>(u_input.c.x, global4.b.x, 17351u, 0u)), ~global4.c.x & (-1i >> (u_input.c.x % 32u))), 4294967295u << (_wgslsmith_mod_u32(23263u, 1u) % 32u)), 10u)]);
    global2 = array<vec3<i32>, 13>();
    let var_2 = Struct_3(var_1.a.a.x, u_input.c, _wgslsmith_mod_vec3_i32(global2[_wgslsmith_index_u32(reverseBits(var_1.b.x), 13u)], _wgslsmith_mult_vec3_i32(global2[_wgslsmith_index_u32(min(min(u_input.a.x, global4.b.x), 0u), 13u)], ~global2[_wgslsmith_index_u32(~74683u, 13u)])));
    let var_3 = Struct_2(Struct_1(var_1.c.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 0i, -22568i), vec4<i32>(-17565i, -1i, var_1.c.b, 22744i)) & _wgslsmith_div_i32(global4.c.x, var_1.c.d), var_1.c.b), true, var_1.c.d, var_1.a.c), vec3<u32>(_wgslsmith_add_u32(0u, min(_wgslsmith_add_u32(var_0, var_0), max(var_1.b.x, var_1.b.x))), u_input.c.x, _wgslsmith_add_u32(1u, countOneBits(var_1.b.x))), Struct_1(var_1.c.a, global4.c.x, all(vec4<bool>(var_1.c.e, true & var_1.a.c, true, true)), global4.c.x, (global4.c.x >> (1u % 32u)) < firstLeadingBit(var_1.c.d)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_1.b.xz));
}

