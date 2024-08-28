struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: vec2<bool>;

var<private> global2: f32 = 495f;

var<private> global3: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true));

var<private> global4: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(0i, Struct_1(false), vec3<u32>(0u, 0u, 4294967295u), Struct_1(true), vec2<bool>(false, false)), Struct_2(13535i, Struct_1(true), vec3<u32>(31069u, 30814u, 18226u), Struct_1(true), vec2<bool>(true, true)), Struct_2(-3374i, Struct_1(true), vec3<u32>(0u, 28820u, 23923u), Struct_1(true), vec2<bool>(false, false)), Struct_2(-1i, Struct_1(false), vec3<u32>(70767u, 0u, 16307u), Struct_1(false), vec2<bool>(true, true)), Struct_2(11672i, Struct_1(true), vec3<u32>(1u, 51029u, 4294967295u), Struct_1(true), vec2<bool>(true, false)), Struct_2(1i, Struct_1(true), vec3<u32>(27814u, 4294967295u, 4294967295u), Struct_1(true), vec2<bool>(false, true)), Struct_2(-1i, Struct_1(true), vec3<u32>(43959u, 4294967295u, 46273u), Struct_1(false), vec2<bool>(true, true)), Struct_2(1i, Struct_1(true), vec3<u32>(0u, 0u, 1u), Struct_1(false), vec2<bool>(false, false)), Struct_2(1i, Struct_1(false), vec3<u32>(37029u, 63927u, 4294967295u), Struct_1(false), vec2<bool>(false, true)), Struct_2(-47801i, Struct_1(false), vec3<u32>(0u, 1u, 60378u), Struct_1(true), vec2<bool>(false, false)), Struct_2(2147483647i, Struct_1(true), vec3<u32>(37562u, 39731u, 0u), Struct_1(false), vec2<bool>(false, true)), Struct_2(-18374i, Struct_1(false), vec3<u32>(66717u, 52542u, 0u), Struct_1(true), vec2<bool>(true, false)), Struct_2(-1i, Struct_1(true), vec3<u32>(24548u, 37242u, 69969u), Struct_1(false), vec2<bool>(true, false)), Struct_2(i32(-2147483648), Struct_1(false), vec3<u32>(85326u, 4294967295u, 4294967295u), Struct_1(false), vec2<bool>(true, true)), Struct_2(-42746i, Struct_1(false), vec3<u32>(1u, 1u, 95705u), Struct_1(true), vec2<bool>(false, false)), Struct_2(-8010i, Struct_1(false), vec3<u32>(55175u, 1u, 44502u), Struct_1(true), vec2<bool>(false, false)), Struct_2(-25789i, Struct_1(false), vec3<u32>(0u, 0u, 4294967295u), Struct_1(true), vec2<bool>(true, true)), Struct_2(i32(-2147483648), Struct_1(true), vec3<u32>(1u, 1u, 3104u), Struct_1(false), vec2<bool>(true, true)), Struct_2(2147483647i, Struct_1(true), vec3<u32>(35937u, 4294967295u, 4294967295u), Struct_1(true), vec2<bool>(true, true)), Struct_2(-2177i, Struct_1(false), vec3<u32>(45977u, 0u, 31025u), Struct_1(true), vec2<bool>(true, true)), Struct_2(1i, Struct_1(false), vec3<u32>(70954u, 0u, 20329u), Struct_1(false), vec2<bool>(true, true)), Struct_2(0i, Struct_1(false), vec3<u32>(0u, 4294967295u, 0u), Struct_1(false), vec2<bool>(true, false)), Struct_2(10047i, Struct_1(true), vec3<u32>(3868u, 28808u, 24816u), Struct_1(false), vec2<bool>(true, false)), Struct_2(32250i, Struct_1(true), vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(true), vec2<bool>(false, true)));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> i32 {
    global0 = array<Struct_2, 9>();
    global1 = select(vec2<bool>(global1.x, global1.x), select(select(!select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), true), !(!vec2<bool>(global1.x, global1.x)), global1.x), select(!(!vec2<bool>(true, global1.x)), vec2<bool>(global1.x, true), !global1.x), vec2<bool>(true, true)), !all(!vec2<bool>(false, global1.x)));
    global1 = !vec2<bool>(true, all(vec2<bool>(global1.x, all(vec3<bool>(global1.x, false, true)))));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(264f, 728f) + vec2<f32>(-1534f, 1001f))))))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-246f, -342f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-757f, 114f)))))));
    global1 = vec2<bool>(true, true);
    return u_input.a;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: vec4<f32>) -> bool {
    global0 = array<Struct_2, 9>();
    var var_0 = _wgslsmith_clamp_u32(arg_1.c.x, ~_wgslsmith_mod_u32(~firstTrailingBit(u_input.e), ~41624u), u_input.e);
    let var_1 = Struct_1(any(select(vec4<bool>(true, true, true, true), !(!vec4<bool>(arg_1.b.a, arg_0, arg_1.d.a, true)), global1.x)));
    global4 = array<Struct_2, 24>();
    let var_2 = Struct_2(func_3(abs(u_input.e & _wgslsmith_clamp_u32(0u, arg_1.c.x, arg_1.c.x)), select(u_input.c.wyx, u_input.c.xwx, !(global1.x && arg_1.e.x))), global3[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(~4294967295u, u_input.e) & ~u_input.e, u_input.e, true), 17u)], vec3<u32>(_wgslsmith_dot_vec2_u32(~(arg_1.c.zy | vec2<u32>(u_input.e, u_input.e)), ~firstLeadingBit(vec2<u32>(0u, u_input.e))), 43328u, 31883u), Struct_1(!arg_0), arg_1.e);
    return true != arg_1.d.a;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    return !select(vec2<bool>(global1.x, (global1.x && true) || (global1.x | arg_1.a)), select(select(select(vec2<bool>(arg_1.a, true), vec2<bool>(global1.x, true), false), vec2<bool>(arg_1.a, false), true), vec2<bool>(global1.x, any(vec4<bool>(false, false, arg_1.a, false))), vec2<bool>(true, func_2(false, global4[_wgslsmith_index_u32(arg_0, 24u)], 1000f, vec4<f32>(1387f, 243f, 267f, -879f)))), select(vec2<bool>(arg_1.a != true, true), select(vec2<bool>(true, true), !vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, true)), true & !arg_1.a));
}

fn func_4(arg_0: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_mult_i32(u_input.a, u_input.a);
    global0 = array<Struct_2, 9>();
    let var_1 = firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b, countOneBits(u_input.c.ww)), u_input.b.x, ~_wgslsmith_dot_vec3_i32(u_input.c.yxw, u_input.c.xxy), select(_wgslsmith_add_i32(10167i, -8317i), u_input.b.x, true)), abs(u_input.c)));
    global2 = 1626f;
    var var_2 = vec3<i32>(u_input.a, firstLeadingBit(11923i), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 1i), ~u_input.c.yzw)));
    return vec2<u32>(5661u, ~_wgslsmith_dot_vec2_u32(max(~vec2<u32>(u_input.e, 1u), vec2<u32>(u_input.e, 8421u)), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(28923u, u_input.e), vec2<u32>(8951u, u_input.e)), firstTrailingBit(vec2<u32>(0u, u_input.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(func_4(any(!func_1(u_input.e, Struct_1(global1.x)))));
    let var_1 = vec4<u32>(1u, ~34294u, u_input.e, func_4(global1.x).x);
    global3 = array<Struct_1, 17>();
    global0 = array<Struct_2, 9>();
    var var_2 = Struct_2(1i, Struct_1(global1.x), vec3<u32>(abs(29660u), 1u & ~_wgslsmith_dot_vec2_u32(vec2<u32>(2820u, var_0.x), var_0), _wgslsmith_mod_u32(u_input.e, func_4(u_input.e >= 16630u).x)), Struct_1(true), !vec2<bool>(global1.x, all(vec3<bool>(false, global1.x, false)) && false));
    global2 = _wgslsmith_f_op_f32(1f + 2531f);
    global3 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, var_0.x), vec2<u32>(1384u, var_1.x))), _wgslsmith_dot_vec2_i32(u_input.d, u_input.d), -min(-vec3<i32>(u_input.d.x, -13739i, var_2.a), u_input.c.ywz), vec4<u32>((_wgslsmith_dot_vec4_u32(var_1, vec4<u32>(u_input.e, var_1.x, 0u, 0u)) >> (~1u % 32u)) ^ (1u | var_0.x), 4294967295u, ~1u, 68630u), countOneBits(_wgslsmith_mod_vec3_i32(u_input.c.wyw, _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.yzz, u_input.c.yzy), abs(vec3<i32>(var_2.a, -15054i, var_2.a))))));
}

