struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(0i, -7639i, 25607i, -12483i), vec4<i32>(-4981i, -26650i, 0i, 14714i), vec4<i32>(-8877i, 1i, 11254i, 38845i), vec4<i32>(0i, 1i, 1i, 2147483647i), vec4<i32>(-1i, 26813i, 2147483647i, 0i), vec4<i32>(1i, 2147483647i, 1i, 10987i), vec4<i32>(i32(-2147483648), 39356i, -1i, 1i));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: i32;

var<private> global3: array<Struct_4, 10>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>) -> bool {
    global0 = array<vec4<i32>, 7>();
    global1 = !(!arg_0);
    global0 = array<vec4<i32>, 7>();
    global3 = array<Struct_4, 10>();
    let var_0 = u_input.d.x;
    return false;
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_5, arg_3: vec3<i32>) -> vec4<bool> {
    global2 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(arg_2.c, ~_wgslsmith_div_vec4_i32(arg_2.c, global0[_wgslsmith_index_u32(u_input.a, 7u)])) ^ abs(abs(vec4<i32>(2147483647i, u_input.c.x, -2147483647i, 18540i)) | global0[_wgslsmith_index_u32(firstLeadingBit(arg_0), 7u)]), global0[_wgslsmith_index_u32(52877u, 7u)]);
    var var_0 = Struct_2(all(select(vec3<bool>(select(global1.x, arg_1, false), arg_1, global1.x), select(!vec3<bool>(global1.x, true, false), !vec3<bool>(global1.x, global1.x, global1.x), false), select(select(vec3<bool>(global1.x, true, arg_1), vec3<bool>(global1.x, true, true), true), vec3<bool>(false, global1.x, arg_1), select(vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, false, false), arg_1)))));
    var var_1 = _wgslsmith_div_f32(-831f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.e.x) - _wgslsmith_f_op_f32(round(arg_2.e.x))));
    var_0 = Struct_2(true);
    global0 = array<vec4<i32>, 7>();
    return !(!vec4<bool>(!global1.x, true, !arg_1, false));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_4) -> Struct_3 {
    global0 = array<vec4<i32>, 7>();
    global1 = vec2<bool>(all(!vec3<bool>(func_2(vec2<bool>(false, global1.x), u_input.c), u_input.c.x != 29104i, true)), !global1.x);
    let var_0 = select(vec4<u32>(arg_0.x & (u_input.d.x ^ (arg_0.x >> (u_input.a % 32u))), _wgslsmith_add_u32(_wgslsmith_div_u32(countOneBits(arg_0.x), 1u), arg_0.x), 28973u, ~(1u << (u_input.a % 32u)) ^ u_input.a), ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 56542u, arg_0.x, 0u), ~u_input.d)), select(vec4<bool>(all(vec3<bool>(true, false, true)), false, global1.x, global1.x), vec4<bool>(true, true, !global1.x, all(!vec2<bool>(true, global1.x))), select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(false, !global1.x, false, global1.x), func_3(0u, global1.x, Struct_5(vec4<i32>(-11810i, u_input.b, -10905i, arg_1.a), vec3<f32>(1490f, 1014f, 199f), vec4<i32>(arg_1.a, arg_1.a, u_input.c.x, u_input.b), vec3<i32>(arg_1.a, 29068i, u_input.c.x), vec2<f32>(-1811f, 1585f)), vec3<i32>(arg_1.a, -42292i, -1i)))));
    var var_1 = Struct_1(select(select(vec4<bool>(true, true || global1.x, global1.x != global1.x, global1.x), select(vec4<bool>(true, global1.x, global1.x, false), select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), false), global1.x), _wgslsmith_f_op_f32(-436f * -154f) <= _wgslsmith_f_op_f32(sign(-423f))), select(!func_3(var_0.x, true, Struct_5(global0[_wgslsmith_index_u32(0u, 7u)], vec3<f32>(-1249f, -701f, -381f), global0[_wgslsmith_index_u32(29975u, 7u)], vec3<i32>(arg_1.a, -2147483647i, u_input.c.x), vec2<f32>(1405f, 598f)), vec3<i32>(45062i, u_input.e, u_input.c.x)), !select(vec4<bool>(global1.x, true, false, true), vec4<bool>(true, global1.x, true, global1.x), true), func_3(countOneBits(arg_0.x), true, Struct_5(vec4<i32>(u_input.b, u_input.c.x, u_input.b, u_input.c.x), vec3<f32>(-618f, -1000f, -2429f), global0[_wgslsmith_index_u32(44923u, 7u)], vec3<i32>(-31140i, u_input.c.x, u_input.b), vec2<f32>(-584f, 1439f)), u_input.c)), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(107f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1063f, -778f)) * _wgslsmith_div_f32(-1522f, -366f)))), vec4<bool>(true, global1.x, global1.x, global1.x), 165f, _wgslsmith_f_op_f32(floor(2575f)));
    let var_2 = Struct_2(!global1.x);
    return Struct_3(~u_input.c.zx, vec3<bool>(global1.x, true, true), Struct_1(func_3(0u, false, Struct_5(global0[_wgslsmith_index_u32(~0u, 7u)], _wgslsmith_f_op_vec3_f32(select(vec3<f32>(872f, 1329f, 1318f), vec3<f32>(165f, -1691f, var_1.e), global1.x)), global0[_wgslsmith_index_u32(23565u, 7u)], -u_input.c, _wgslsmith_f_op_vec2_f32(var_1.b + var_1.b)), _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(arg_1.a, u_input.b, -14987i))), var_1.b, vec4<bool>(!var_1.c.x, func_3(select(1u, 0u, var_2.a), all(vec4<bool>(global1.x, true, var_2.a, true)), Struct_5(global0[_wgslsmith_index_u32(var_0.x, 7u)], vec3<f32>(1000f, -298f, var_1.d), vec4<i32>(u_input.e, 10921i, u_input.e, u_input.b), vec3<i32>(arg_1.a, 2147483647i, 1i), vec2<f32>(var_1.b.x, var_1.e)), vec3<i32>(u_input.b, u_input.e, u_input.c.x) ^ vec3<i32>(arg_1.a, 31024i, u_input.b)).x, true, true), var_1.b.x, _wgslsmith_f_op_f32(round(var_1.b.x))), Struct_2(false), ~_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.x, arg_0.x, 26429u), u_input.d.yyw));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 42759i;
    global4 = 0i;
    var var_0 = func_1(u_input.d, global3[_wgslsmith_index_u32(u_input.d.x, 10u)]);
    let var_1 = Struct_5(~vec4<i32>(-var_0.a.x << (u_input.d.x % 32u), -2147483647i, _wgslsmith_clamp_i32(u_input.e, firstLeadingBit(u_input.b), _wgslsmith_sub_i32(u_input.b, -2147483647i)), ~_wgslsmith_sub_i32(0i, -39374i)), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(633f * -670f) - _wgslsmith_f_op_f32(f32(-1f) * -650f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1039f, _wgslsmith_f_op_f32(ceil(var_0.c.e))))), vec4<i32>(func_1(u_input.d, Struct_4(-45025i)).a.x | (0i | min(var_0.a.x, 1i)), 10593i, _wgslsmith_sub_i32(30321i | var_0.a.x, u_input.e), min(_wgslsmith_div_i32(i32(-1i) * -14837i, u_input.c.x), var_0.a.x)), u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.c.b), var_0.c.b))));
    var var_2 = vec2<i32>(-1i) * -vec2<i32>(1i, -2147483647i);
    var var_3 = !var_0.c.c.xy;
    var var_4 = Struct_1(var_0.c.c, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(874f, var_1.e.x))), var_0.c.c, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b.x - 676f)));
    var var_5 = func_1(u_input.d, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(min(~1u, (89663u ^ u_input.a) ^ min(u_input.d.x, var_0.e.x)), ~38839u << (max(~u_input.d.x, 1u | u_input.d.x) % 32u)), 10u)]).d;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.x, _wgslsmith_dot_vec3_i32(-(~(~var_1.d)), u_input.c), vec4<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, var_0.e.x), vec3<u32>(var_0.e.x, 4294967295u, 25242u))), (~var_0.e.x ^ u_input.a) << (abs(54926u) % 32u), ~0u, _wgslsmith_mult_u32(select(_wgslsmith_add_u32(1u, 20721u), _wgslsmith_div_u32(u_input.d.x, var_0.e.x), var_4.a.x), ~4294967295u & var_0.e.x)), -148f, u_input.d.zxz);
}

