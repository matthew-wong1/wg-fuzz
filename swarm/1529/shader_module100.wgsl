struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
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

var<private> global0: array<Struct_1, 20>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 20>;

var<private> global3: array<f32, 19>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> vec2<bool> {
    global2 = array<Struct_1, 20>();
    var var_0 = global1.b;
    let var_1 = vec4<u32>(39195u, u_input.e, ~(arg_1.c.x << (countOneBits(1u) % 32u)), 0u);
    let var_2 = global2[_wgslsmith_index_u32(36234u, 20u)];
    global0 = array<Struct_1, 20>();
    return global1.b;
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = Struct_1(30305u >= ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, global1.c.x, 102490u, 4644u), vec4<u32>(54738u, global1.c.x, 4294967295u, global1.c.x))), global1.b, global1.c, false);
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, var_0.c.x, ~_wgslsmith_sub_u32(1u, var_0.c.x))), vec3<u32>(u_input.c.x, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(10950u, u_input.c.x, global1.c.x, 1u), vec4<u32>(0u, var_0.c.x, 4294967295u, u_input.e))), 58249u)), 20u)];
    return _wgslsmith_f_op_f32(f32(-1f) * -1829f);
}

fn func_4(arg_0: vec4<f32>) -> u32 {
    global2 = array<Struct_1, 20>();
    var var_0 = Struct_1(!global1.d, vec2<bool>(false, global1.d != !global1.a), ~(~max(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, 1u, 0u), global1.c), countOneBits(global1.c))), (global1.a | global1.d) || all(!select(vec4<bool>(true, false, global1.d, global1.d), vec4<bool>(global1.a, global1.b.x, true, true), false)));
    let var_1 = min(~var_0.c.x, _wgslsmith_mult_u32(~(~(~11298u)), var_0.c.x));
    let var_2 = global0[_wgslsmith_index_u32(~(~0u & u_input.c.x) << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~global1.c, ~(u_input.c >> (var_0.c % vec3<u32>(32u)))), var_1) % 32u), 20u)];
    var_0 = Struct_1(global1.b.x, !vec2<bool>(-27770i >= firstTrailingBit(1413i), true), var_2.c, any(select(global1.b, var_2.b, !(!vec2<bool>(false, var_0.d)))));
    return firstLeadingBit(~var_1);
}

fn func_1(arg_0: u32, arg_1: bool) -> vec4<u32> {
    global1 = Struct_1(global1.d, global1.b, global1.c, any(global1.b));
    let var_0 = Struct_1(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(global1.c.x, 19u)], 423f)) + _wgslsmith_f_op_f32(f32(-1f) * -356f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(4294967295u, 19u)])) - -307f)), select(global1.b, select(!global1.b, !select(global1.b, vec2<bool>(false, false), vec2<bool>(arg_1, global1.a)), global1.a), !func_2(Struct_1(false, vec2<bool>(true, true), vec3<u32>(4294967295u, u_input.e, 36105u), global1.d), Struct_1(true, vec2<bool>(arg_1, arg_1), global1.c, false), i32(-1i) * -33010i, _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.e, 19u)], 501f, 497f, 906f) + vec4<f32>(-1115f, global3[_wgslsmith_index_u32(4294967295u, 19u)], 1193f, global3[_wgslsmith_index_u32(21663u, 19u)])))), vec3<u32>(1u, 1501u, func_4(vec4<f32>(_wgslsmith_f_op_f32(func_3(-715i)), _wgslsmith_f_op_f32(f32(-1f) * -213f), 1414f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 19u)])))), global1.a);
    global0 = array<Struct_1, 20>();
    global1 = Struct_1(func_2(global2[_wgslsmith_index_u32(global1.c.x, 20u)], Struct_1(global1.d, vec2<bool>(true, func_2(Struct_1(global1.a, global1.b, vec3<u32>(arg_0, 0u, arg_0), arg_1), Struct_1(arg_1, vec2<bool>(var_0.a, false), vec3<u32>(global1.c.x, 53290u, 13068u), arg_1), 2147483647i, vec4<f32>(207f, 949f, global3[_wgslsmith_index_u32(1u, 19u)], global3[_wgslsmith_index_u32(var_0.c.x, 19u)])).x), vec3<u32>(global1.c.x, 1u | arg_0, ~u_input.e), (u_input.b << (27094u % 32u)) <= ~u_input.a), select(-25695i & u_input.b, u_input.d.x, false && var_0.b.x) & u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(145f, global3[_wgslsmith_index_u32(var_0.c.x, 19u)], -1000f, 340f)) + vec4<f32>(global3[_wgslsmith_index_u32(0u, 19u)], -1449f, -287f, global3[_wgslsmith_index_u32(56164u, 19u)])))).x, !select(func_2(Struct_1(arg_1, vec2<bool>(false, var_0.b.x), var_0.c, false), global2[_wgslsmith_index_u32(max(arg_0, u_input.c.x), 20u)], -18712i, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3[_wgslsmith_index_u32(6933u, 19u)], 2005f, 1829f, global3[_wgslsmith_index_u32(48196u, 19u)])))), select(var_0.b, select(vec2<bool>(true, false), var_0.b, var_0.b.x), true), any(vec3<bool>(global1.b.x, global1.d, true))), vec3<u32>(var_0.c.x, max(1u, 12430u) | (0u | (u_input.e ^ 4294967295u)), global1.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_i32(u_input.a, 1i))))) > global3[_wgslsmith_index_u32(0u, 19u)]);
    global2 = array<Struct_1, 20>();
    return vec4<u32>(_wgslsmith_sub_u32(u_input.e, _wgslsmith_mult_u32(global1.c.x, abs(6796u))), ~_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 10352u, 0u, u_input.e), vec4<u32>(50686u, u_input.e, u_input.c.x, 0u))), ~(~vec4<u32>(var_0.c.x, global1.c.x, 28101u, 0u))), arg_0, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(all(select(!global1.b, global1.b, global1.b)), global1.a, true, select(any(global1.b), ~u_input.a > 1i, true));
    var var_1 = u_input.c.x;
    var var_2 = Struct_1(true, vec2<bool>(false, var_0.x || true), vec3<u32>(_wgslsmith_add_u32(52195u, global1.c.x), ~select(global1.c.x, 0u, all(vec3<bool>(var_0.x, true, global1.a))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global1.c.x, global1.c.x, u_input.e) & vec4<u32>(51551u, u_input.e, global1.c.x, 52297u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 56379u, u_input.c.x, 20769u), vec4<u32>(u_input.c.x, u_input.e, u_input.e, 37686u))), ~func_1(global1.c.x, true))), !var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(var_2.c.yy, vec2<u32>(~(var_2.c.x << (26711u % 32u)), u_input.c.x)));
}

