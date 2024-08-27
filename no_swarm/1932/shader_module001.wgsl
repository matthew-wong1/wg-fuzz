struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: array<Struct_5, 16>;

var<private> global2: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(1196f, -756f, -721f), vec3<f32>(1293f, -104f, -246f), vec3<f32>(316f, 2109f, 1080f), vec3<f32>(646f, 670f, 1126f), vec3<f32>(-228f, 914f, -440f), vec3<f32>(-580f, 820f, -1817f), vec3<f32>(509f, 834f, -291f), vec3<f32>(-421f, 1388f, 666f), vec3<f32>(-121f, -2441f, -433f), vec3<f32>(-976f, -2649f, 1257f), vec3<f32>(-434f, -516f, -823f), vec3<f32>(356f, -2232f, 2033f), vec3<f32>(-226f, 1000f, 526f), vec3<f32>(636f, -555f, -2750f), vec3<f32>(-421f, 1790f, -456f));

var<private> global3: i32 = -1i;

var<private> global4: array<f32, 11> = array<f32, 11>(-154f, 538f, -424f, 714f, 588f, -751f, -116f, -2174f, -992f, 1264f, 2163f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    var var_0 = vec3<bool>(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, select(false, true, false), true), false)), true, any(!select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), false)));
    let var_1 = -1i;
    let var_2 = !select(select(vec2<bool>(true, var_0.x), !(!var_0.yx), vec2<bool>(true, var_0.x)), !(!(!var_0.zx)), !var_0.yx);
    global3 = -8043i;
    let var_3 = firstTrailingBit(arg_0);
    return !select(var_0.xx, var_2, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, var_0.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x)), true)));
}

fn func_2() -> Struct_1 {
    var var_0 = func_3(~global0[_wgslsmith_index_u32(8069u, 11u)]);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(1f)), ~global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, ~0u) & firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 23166u, 62939u, 29196u), vec4<u32>(70360u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26537u, 11u)], 11u)], 0u, u_input.a))), 11u)]), vec2<i32>(0i, ~min(u_input.c, u_input.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(78834u, 11u)], 11u)], 11u)], -737f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 11u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7198u, 11u)], 11u)]) + vec2<f32>(103f, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], 11u)]))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(10566u, 11u)], global4[_wgslsmith_index_u32(u_input.b.x, 11u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(501f, global4[_wgslsmith_index_u32(72431u, 11u)]))))), -2147483647i, _wgslsmith_mod_u32(reverseBits(u_input.a), _wgslsmith_clamp_u32(u_input.b.x >> (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 12311u), 11u)] % 32u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, global0[_wgslsmith_index_u32(1u, 11u)]), vec3<u32>(u_input.b.x, u_input.a, 0u)), 11u)], ~(~u_input.b.x))));
    global0 = array<u32, 11>();
    var var_2 = false;
    let var_3 = 1000f;
    return Struct_1(-1000f, ~34564u, 4294967295u);
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(sign(-801f));
    var var_1 = func_2();
    var var_2 = false || select(false, false, max(u_input.d.x, -1i ^ u_input.d.x) > 2147483647i);
    var var_3 = func_2();
    global2 = array<vec3<f32>, 15>();
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_3.a + -1754f), _wgslsmith_f_op_f32(var_3.a * var_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1818f, 719f)))), ~0u, global0[_wgslsmith_index_u32(abs(u_input.b.x) & ~countOneBits(u_input.a), 11u)]), -(~u_input.d.yy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())), firstTrailingBit(1i), ~_wgslsmith_sub_u32(_wgslsmith_add_u32(~24349u, global0[_wgslsmith_index_u32(4294967295u, 11u)]), ~0u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1121f + -874f), _wgslsmith_f_op_f32(var_0.c.x * func_2().a), select(true, any(vec4<bool>(false, true, false, false)), true))) + global4[_wgslsmith_index_u32(4294967295u, 11u)]), global0[_wgslsmith_index_u32(10995u, 11u)] | _wgslsmith_dot_vec4_u32(vec4<u32>(12784u, ~25710u, u_input.a & var_0.e, 4294967295u), ~(~vec4<u32>(4294967295u, 10124u, 13756u, 1u))), abs(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 11u)], u_input.b.x), vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(10364u, 11u)], 14771u)))));
    let var_2 = select(!select(vec3<bool>(true, select(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(f32(-1f) * -282f) != _wgslsmith_f_op_f32(var_1.a * var_0.a.a)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), -31463i <= select(1i, var_0.d, true)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, all(vec3<bool>(true, false, false)))), !(!any(vec4<bool>(false, true, false, true)))));
    var var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(45257u, 11u)], _wgslsmith_f_op_f32(f32(-1f) * -124f), 853f, global4[_wgslsmith_index_u32(0u, 11u)]) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-578f, -2152f, _wgslsmith_f_op_f32(-var_1.a), var_3.c.x), vec4<f32>(_wgslsmith_f_op_f32(-985f - var_3.c.x), _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(33705u, 11u)])), _wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_f_op_f32(round(-872f))))));
    var_1 = var_0.a;
    var var_5 = Struct_3(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], 11u)]), _wgslsmith_add_u32(4294967295u, var_3.a.b), _wgslsmith_mod_u32(var_3.a.c, u_input.a)), ~abs(vec3<u32>(4294967295u, var_3.e, var_1.b))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, var_3.a.c, 4294967295u), vec4<u32>(var_0.e, var_1.c, u_input.a, var_1.c)) & reverseBits(u_input.a), _wgslsmith_mult_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], 11u)]) ^ ~global0[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_dot_vec4_u32(vec4<u32>(40853u, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(15376u, 11u)], var_1.b), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 16709u, 30736u, 27531u), vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 11u)], 1u, u_input.a))))), u_input.b, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1003f), var_0.c.x)), firstLeadingBit(_wgslsmith_mult_u32(12537u, ~u_input.a)), 49039u), Struct_2(var_3.a, _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(var_0.d, var_0.b.x)), vec2<i32>(-1i) * -u_input.d.zx), _wgslsmith_f_op_vec2_f32(var_0.c * vec2<f32>(_wgslsmith_div_f32(-910f, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]), _wgslsmith_f_op_f32(-var_1.a))), ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(var_0.b.x, var_3.d, -1708i)), u_input.c), var_0.e));
    let var_6 = ~_wgslsmith_mod_i32(var_0.b.x, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_4.x)) + -378f) + _wgslsmith_f_op_f32(var_3.a.a - var_0.c.x)), var_5.d.c.x, any(!vec4<bool>(var_2.x, false, var_2.x, var_2.x)))));
}

