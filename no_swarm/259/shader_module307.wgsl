struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(i32(-2147483648), -579f), Struct_5(-46155i, 615f), Struct_5(54933i, -1000f), Struct_5(1i, -2275f), Struct_5(-9225i, 353f), Struct_5(1i, -1430f), Struct_5(878i, -1826f), Struct_5(18360i, 735f), Struct_5(2147483647i, -1156f), Struct_5(-1i, -1736f), Struct_5(-30900i, 1708f), Struct_5(80267i, 1144f), Struct_5(-1i, -731f), Struct_5(1i, -994f), Struct_5(-5510i, 306f), Struct_5(7219i, 354f), Struct_5(-1i, -598f), Struct_5(45652i, -677f), Struct_5(-11187i, 367f));

var<private> global1: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-1000f, -1443f, 509f), vec3<f32>(877f, 607f, -812f), vec3<f32>(-1000f, -470f, -934f), vec3<f32>(-323f, -579f, -1345f), vec3<f32>(132f, 854f, -338f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<f32> {
    global1 = array<vec3<f32>, 5>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1472f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -370f)))), Struct_2(Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), true)), Struct_1(vec3<bool>(true, true, true))), Struct_1(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(floor(-1571f)));
    var var_1 = abs(u_input.b.zy);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-var_0.a), var_0.b, var_0.c, var_0.a);
    let var_3 = ~(~(~(~(u_input.a | 15068u))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + var_0.d) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2363f + var_2.a))))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = vec3<u32>(~(0u | (~u_input.a | max(56628u, 35496u))), _wgslsmith_mult_u32(~(~u_input.a), ~(~select(u_input.a, u_input.a, true))), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), select(abs(u_input.a), _wgslsmith_add_u32(4294967295u, u_input.a), all(vec2<bool>(true, true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1392f, -368f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(448f, 905f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(343f, 364f)), 675f) + _wgslsmith_f_op_vec2_f32(func_3())));
    return Struct_1(select(vec3<bool>(_wgslsmith_f_op_f32(trunc(-964f)) == _wgslsmith_f_op_f32(f32(-1f) * -1728f), all(vec4<bool>(true, false, true, true)), !select(false, true, true)), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, true))), all(vec2<bool>(true, true))));
}

fn func_1() -> bool {
    let var_0 = func_2(~_wgslsmith_mod_i32(~(-1i) | _wgslsmith_mult_i32(u_input.c, u_input.c), u_input.b.x));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_add_u32(min(_wgslsmith_mult_u32(0u, 1u), max(1u, u_input.a)), u_input.a), u_input.a << (u_input.a % 32u)) | (~reverseBits(vec2<u32>(0u, u_input.a)) ^ vec2<u32>(u_input.a, 4294967295u >> (1u % 32u)));
    let var_1 = Struct_1(vec3<bool>(func_1(), false, all(!func_2(14019i).a)));
    global0 = array<Struct_5, 19>();
    var var_2 = Struct_2(Struct_1(var_1.a), Struct_1(!func_2(_wgslsmith_sub_i32(u_input.c, 68035i)).a));
    let var_3 = var_0;
    var var_4 = _wgslsmith_clamp_vec4_u32(select(~abs(vec4<u32>(u_input.a, 46008u, 0u, var_3.x)), vec4<u32>(40085u, ~var_3.x, 4294967295u, 0u) | ~min(vec4<u32>(6717u, 47939u, var_0.x, var_0.x), vec4<u32>(4294967295u, 126981u, 1u, var_0.x)), func_1() & false), abs(~(~min(vec4<u32>(u_input.a, 18775u, 4540u, u_input.a), vec4<u32>(53646u, 0u, u_input.a, 38585u)))), ((~vec4<u32>(8955u, 1u, 10610u, 1u) >> ((vec4<u32>(u_input.a, var_0.x, var_3.x, 17029u) ^ vec4<u32>(var_3.x, 4294967295u, 88754u, 4294967295u)) % vec4<u32>(32u))) >> ((~vec4<u32>(u_input.a, 47238u, u_input.a, var_3.x) << (select(vec4<u32>(40317u, var_3.x, u_input.a, var_3.x), vec4<u32>(4294967295u, var_0.x, 1u, 1u), vec4<bool>(true, var_2.a.a.x, false, var_2.a.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u))) & ~min(vec4<u32>(var_0.x, 23134u, 12662u, 39109u), vec4<u32>(27127u, var_0.x, u_input.a, var_3.x) & vec4<u32>(10956u, 4294967295u, 48311u, u_input.a)));
    global1 = array<vec3<f32>, 5>();
    var var_5 = select(1u, ~var_4.x, any(vec2<bool>(false, var_1.a.x)));
    var var_6 = Struct_2(Struct_1(vec3<bool>(any(var_1.a), var_2.b.a.x, func_1())), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(33376u << (var_3.x % 32u), 5u)])), _wgslsmith_mult_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.c), u_input.b.yx) >> (vec2<u32>(min(7201u, var_0.x), 19030u) % vec2<u32>(32u)), u_input.b.zy), 1i, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-137f, 387f), 450f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1740f)), _wgslsmith_div_f32(-701f, -1104f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-113f - -114f), _wgslsmith_f_op_f32(sign(-354f)), true)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1292f)), -1759f, var_2.a.a.x))), 1f));
}

