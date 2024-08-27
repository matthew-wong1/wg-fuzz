struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(-735i, 44142i, 6486i, 1i, 10749i, i32(-2147483648), 72581i, 1i, -577i, -1i, -32854i, 33653i, i32(-2147483648), -44525i, i32(-2147483648), 63759i, -11182i, 22666i, -1i, 2147483647i, 2147483647i, i32(-2147483648), -25776i, 75918i, 2147483647i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: bool) -> Struct_4 {
    global0 = array<i32, 25>();
    var var_0 = _wgslsmith_sub_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 25u)] ^ global0[_wgslsmith_index_u32(u_input.a, 25u)], 1i, global0[_wgslsmith_index_u32(~1u, 25u)]), ~(-vec3<i32>(1i, -28159i, global0[_wgslsmith_index_u32(u_input.a, 25u)]))), _wgslsmith_add_vec3_i32((~vec3<i32>(global0[_wgslsmith_index_u32(18934u, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]) & select(vec3<i32>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)]), vec3<i32>(7477i, global0[_wgslsmith_index_u32(u_input.a, 25u)], 10402i), vec3<bool>(arg_0, true, arg_0))) >> (~vec3<u32>(52623u, u_input.a, 36086u) % vec3<u32>(32u)), vec3<i32>(abs(global0[_wgslsmith_index_u32(u_input.a, 25u)]), 1i, global0[_wgslsmith_index_u32(abs(u_input.a >> (u_input.a % 32u)), 25u)])));
    var var_1 = ~1u;
    var_1 = abs(1u);
    let var_2 = ~u_input.a;
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-370f)))), select(!(!vec3<bool>(true, true, arg_0)), vec3<bool>(arg_0, all(vec3<bool>(false, arg_0, arg_0)), true), false), 0u, -max(vec4<i32>(0i, -8925i, -16458i, -1i), vec4<i32>(var_0.x, var_0.x, -2147483647i, -2147483647i)) ^ _wgslsmith_mod_vec4_i32(select(vec4<i32>(global0[_wgslsmith_index_u32(65602u, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(var_2, 25u)], 3003i), vec4<i32>(0i, 2147483647i, global0[_wgslsmith_index_u32(u_input.a, 25u)], var_0.x), false), vec4<i32>(2147483647i, 1544i, -1i, var_0.x))), !vec4<bool>(true, arg_0 & false, false, any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0)))), Struct_1(-374f, select(vec3<bool>(true, var_0.x >= global0[_wgslsmith_index_u32(u_input.a, 25u)], arg_0), vec3<bool>(!arg_0, true, any(vec4<bool>(false, false, false, arg_0))), arg_0), 39573u, (vec4<i32>(-1i) * -vec4<i32>(-25757i, 50396i, 0i, 24453i)) ^ (vec4<i32>(var_0.x, 99i, -18257i, -8603i) << (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 60230u, var_2, 0u), vec4<u32>(43061u, 0u, 5880u, 48454u)) % vec4<u32>(32u)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: i32, arg_3: vec4<i32>) -> vec4<i32> {
    global0 = array<i32, 25>();
    let var_0 = func_2(true);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1392f, -1042f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -357f)))))));
    let var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~(u_input.a >> (var_0.a.c % 32u)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, var_0.c.c, var_0.c.c, 1u), vec4<u32>(u_input.a, var_0.c.c, var_0.a.c, u_input.a), true), vec4<u32>(var_0.a.c, 1u, 51848u, var_0.c.c) >> (vec4<u32>(var_0.a.c, u_input.a, 35307u, 7561u) % vec4<u32>(32u)))), (vec2<u32>(72416u, var_0.a.c) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(0u, 46059u), vec2<u32>(var_0.c.c, u_input.a)) % vec2<u32>(32u))) << (_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(41689u, 93348u)), firstLeadingBit(vec2<u32>(u_input.a, 1325u)), reverseBits(vec2<u32>(var_0.c.c, u_input.a))) % vec2<u32>(32u))), vec2<u32>(33828u, _wgslsmith_div_u32(1u, 1u)));
    let var_3 = 914f;
    return vec4<i32>(arg_2, i32(-1i) * -2147483647i, 7350i, -1i);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = Struct_4(func_2(false).a, !(!vec4<bool>(any(arg_1.b.zy), 20495i != arg_1.d.x, any(vec2<bool>(true, true)), true)), func_2(true).c);
    global0 = array<i32, 25>();
    var var_1 = !select(arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(select(117f, -255f, false))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(960f, 512f))), false);
    let var_2 = Struct_5(func_2(var_0.b.x).c.b.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.a)))));
    var_1 = var_0.a.b.x;
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(764f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1039f, -1110f))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -781f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(-274f - 288f), vec3<bool>(true, true, true), 0u, func_1(Struct_3(vec4<f32>(-1408f, -494f, -831f, 2341f)), vec2<f32>(1161f, 1333f), -5116i, vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(13902u, 25u)], 1567i, global0[_wgslsmith_index_u32(27129u, 25u)]))), func_2(-1i == global0[_wgslsmith_index_u32(u_input.a, 25u)]).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(165f * 513f))))));
    var var_2 = Struct_4(Struct_1(360f, vec3<bool>(!all(vec3<bool>(true, false, false)), !all(vec3<bool>(true, false, false)), true & select(true, false, true)), u_input.a, -firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(1u, 25u)], 0i, 2147483647i, -2147483647i) | vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], 1i, global0[_wgslsmith_index_u32(u_input.a, 25u)]))), func_2(true).b, func_2(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false)) && any(vec2<bool>(true, true))).a);
    global0 = array<i32, 25>();
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1282f, -343f, -1543f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-544f, var_2.c.a, 204f))))))), vec3<f32>(var_2.c.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a)), _wgslsmith_f_op_f32(var_2.c.a + _wgslsmith_div_f32(var_2.c.a, 899f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(253f, var_2.c.a))) + var_2.a.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(460f, var_2.c.a)))) == _wgslsmith_f_op_f32(-var_2.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(var_2.a.c, u_input.a | ~17825u, var_2.a.c), vec3<u32>(~(var_2.a.c | u_input.a), 1u, 45483u), !any(var_2.c.b.yx) && true), ~var_2.a.c);
}

