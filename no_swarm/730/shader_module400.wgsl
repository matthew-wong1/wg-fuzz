struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(20016i, -15564i, i32(-2147483648));

var<private> global1: i32 = -32255i;

var<private> global2: Struct_2 = Struct_2(0i, vec2<bool>(true, true), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, false, false)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global0 = reverseBits(u_input.a.yyx);
    let var_0 = all(global2.b);
    var var_1 = global2.c;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-385f - 329f))))));
    let var_3 = (i32(-1i) * -2147483647i) == ~(_wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.a), _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(u_input.c, global0.x, global0.x, global2.a))) & abs(-26050i));
    return var_3;
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_1 = Struct_2(global0.x, global2.b, global2.c);
    global2 = Struct_2((_wgslsmith_mod_i32(var_1.a, 2147483647i) << (~_wgslsmith_mod_u32(u_input.d, u_input.d) % 32u)) << (0u % 32u), var_1.c.a.xx, global2.c);
    let var_2 = Struct_1(global2.c.a, select(vec3<bool>(all(!vec4<bool>(false, global2.b.x, true, true)), false, !any(var_1.c.a)), global2.c.a.yzx, false));
    var var_3 = select(!vec4<bool>(!(u_input.d > u_input.d), all(vec3<bool>(var_1.c.b.x, true, var_1.c.a.x)) & global2.b.x, all(!global2.c.a.zwz), -1426f > _wgslsmith_f_op_f32(-232f - var_0)), select(!var_1.c.a, vec4<bool>(global2.b.x, !(!global2.b.x), global2.c.b.x | !global2.c.a.x, select(global2.c.a.x, var_1.c.a.x, false)), func_3()), vec4<bool>(!(true | !var_1.c.b.x), true, !var_1.b.x, var_1.b.x));
    return vec4<bool>(!(!all(select(vec2<bool>(var_3.x, var_2.b.x), var_3.ww, vec2<bool>(false, false)))), !select(var_2.a.x | all(vec4<bool>(var_2.a.x, true, true, true)), !global2.c.a.x, true), !all(global2.c.b.yy), ~11951u != reverseBits(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.d, 1u), firstLeadingBit(22458u))));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    global0 = vec3<i32>(global2.a, global2.a, -1i);
    var var_0 = _wgslsmith_f_op_f32(-arg_1);
    var var_1 = Struct_1(!(!func_2()), !vec3<bool>(any(global2.b), global2.b.x, true && func_3()));
    let var_2 = ~vec4<u32>(_wgslsmith_mult_u32(firstLeadingBit(61501u), _wgslsmith_sub_u32(u_input.d, ~26828u)), _wgslsmith_div_u32(u_input.d, max(~u_input.d, u_input.d)), min(47002u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 39325u, 47551u, 0u) >> (vec4<u32>(u_input.d, u_input.d, 27203u, u_input.d) % vec4<u32>(32u)), vec4<u32>(u_input.d, 4294967295u, u_input.d, 16337u))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.d, u_input.d ^ 98499u, u_input.d), 4294967295u));
    global1 = _wgslsmith_clamp_i32(46452i, 13365i << (1u % 32u), select(-59041i, min(abs(-1i) & (global0.x | global0.x), -35632i), global2.b.x));
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(~24808i, ~firstTrailingBit(global0.x)), _wgslsmith_sub_vec2_i32(~firstTrailingBit(global0.xx), vec2<i32>(max(u_input.c, global2.a), _wgslsmith_mult_i32(0i, -1i)))));
    var var_1 = global2.c;
    var var_2 = Struct_2(~(-1i), var_1.a.yw, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -590f), 401f));
    let var_3 = global2.c.a;
    global2 = Struct_2(14982i, vec2<bool>(select(var_3.x, true, select(true, !var_2.b.x, true)), select(u_input.d == ~u_input.d, !(!global2.c.b.x), !func_2().x)), global2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.d, u_input.d), 0u));
}

