struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(true, false, true, false);

var<private> global1: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global2: array<vec3<i32>, 22>;

var<private> global3: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>) -> vec2<u32> {
    global2 = array<vec3<i32>, 22>();
    let var_0 = select(!select(select(global3[_wgslsmith_index_u32(1u, 9u)], vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(global1.x, 4u)]), global0[_wgslsmith_index_u32(4294967295u, 4u)]), !global3[_wgslsmith_index_u32(4294967295u, 9u)], select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 4u)], true), global3[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(88744u, 4u)]), select(global3[_wgslsmith_index_u32(1u, 9u)], vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], false, global0[_wgslsmith_index_u32(1u, 4u)]), global3[_wgslsmith_index_u32(67199u, 9u)]), vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)]))), global3[_wgslsmith_index_u32(4294967295u, 9u)], firstLeadingBit(_wgslsmith_mod_u32(global1.x, 1u)) == global1.x);
    var var_1 = any(select(select(vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(u_input.d.x, 4u)], var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(0u, 4u)], true, true, false), global0[_wgslsmith_index_u32(select(u_input.d.x, 91629u, global0[_wgslsmith_index_u32(1u, 4u)]), 4u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(select(47279u, 0u, false), 4u)], true), !(!global0[_wgslsmith_index_u32(u_input.b.x, 4u)]))) | all(vec4<bool>(var_0.x, true, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], any(var_0.zx)));
    var var_2 = _wgslsmith_f_op_f32(812f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(711f)) + _wgslsmith_f_op_f32(min(328f, _wgslsmith_f_op_f32(sign(128f)))))) <= 768f;
    var var_3 = !vec4<bool>(!any(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(global0[_wgslsmith_index_u32(18371u, 4u)], true, false), true)), var_0.x, var_0.x, !(!var_0.x));
    return vec2<u32>(global1.x, 1u);
}

fn func_2(arg_0: vec4<u32>) -> Struct_4 {
    global1 = abs(~func_3(global2[_wgslsmith_index_u32(global1.x | arg_0.x, 22u)])) >> (~u_input.d.yw % vec2<u32>(32u));
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 4u)];
    var var_1 = Struct_2(min(u_input.c.x, -2147483647i >> (~global1.x % 32u)), u_input.e);
    var var_2 = u_input.a;
    let var_3 = 30830i;
    return Struct_4(Struct_2(~1i, firstLeadingBit(_wgslsmith_mult_i32(~(-2147483647i), u_input.e << (global1.x % 32u)))));
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> Struct_2 {
    let var_0 = -vec4<i32>(countOneBits(28536i | u_input.e), abs(u_input.e) | ~arg_0.a.b, arg_0.a.a << ((30857u >> (u_input.a.x % 32u)) % 32u), countOneBits(-2147483647i)) >> (u_input.a % vec4<u32>(32u));
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    let var_1 = 74292u;
    return Struct_2(var_0.x, _wgslsmith_sub_i32(i32(-1i) * -1i, arg_0.a.a) >> (~_wgslsmith_sub_u32(u_input.a.x | u_input.a.x, var_1) % 32u));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = true;
    let var_1 = firstTrailingBit(1u);
    var_0 = true;
    let var_2 = u_input.e;
    var var_3 = ~(_wgslsmith_mult_u32(u_input.a.x, 4294967295u) >> (u_input.b.x % 32u));
    return func_4(func_2(u_input.a), 179f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 9>();
    global3 = array<vec3<bool>, 9>();
    var var_0 = Struct_3(u_input.c.x, false, func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(abs(4294967295u), ~u_input.d.x), max(_wgslsmith_sub_vec2_u32(vec2<u32>(286u, global1.x), u_input.b), u_input.b))), Struct_2(-2147483647i, -2024i), 322f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(var_0.e, var_0.e), -284f, var_0.e))), reverseBits(select(u_input.d, ~_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(global1.x, u_input.b.x, 11316u, global1.x), u_input.d), global0[_wgslsmith_index_u32(118541u, 4u)] | true)), ~(~_wgslsmith_sub_u32(global1.x << (71034u % 32u), 1u)));
    let var_2 = Struct_3(-58765i, ((var_0.b & true) & var_0.b) || true, Struct_2(~(-(~var_0.d.b)), var_0.a), var_0.d, _wgslsmith_f_op_f32(round(var_0.e)));
    let var_3 = Struct_3(var_2.c.b, all(vec4<bool>(false, !select(true, true, var_0.b), true, true)), Struct_2(-_wgslsmith_clamp_i32(abs(11747i), -1i, min(4478i, -49956i)), i32(-1i) * -2147483647i), func_4(func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.x, 1338u, u_input.a.x, 55874u), vec4<u32>(53932u, u_input.a.x, 17823u, 0u))), _wgslsmith_f_op_f32(select(var_2.e, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.e), 1f)), !(var_2.a > var_2.d.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(272f, _wgslsmith_f_op_f32(abs(var_0.e)))), _wgslsmith_f_op_f32(f32(-1f) * -663f))) - var_2.e));
    var var_4 = _wgslsmith_mod_u32(12108u, ~_wgslsmith_mult_u32(firstLeadingBit(global1.x), _wgslsmith_dot_vec3_u32(~var_1.b.wzy, u_input.a.zyw)));
    global2 = array<vec3<i32>, 22>();
    var var_5 = vec4<bool>(all(!select(!vec4<bool>(true, var_0.b, true, var_2.b), !vec4<bool>(false, false, false, var_3.b), vec4<bool>(var_0.b, false, var_2.b, true))), var_2.b, !any(select(vec3<bool>(false, global0[_wgslsmith_index_u32(global1.x, 4u)], false), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.b.x, u_input.d.x, 1u), 9u)], !vec3<bool>(global0[_wgslsmith_index_u32(var_1.c, 4u)], true, false))), global0[_wgslsmith_index_u32(4294967295u, 4u)]);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~14016u), _wgslsmith_mult_u32(select(_wgslsmith_add_u32(u_input.a.x, 14195u), global1.x, select(true, false, true)) >> (1u % 32u), ~max(global1.x | 9855u, u_input.a.x)));
}

