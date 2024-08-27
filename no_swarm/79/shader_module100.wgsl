struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
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

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<vec2<bool>, 28>;

var<private> global2: bool;

var<private> global3: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> bool {
    let var_0 = ~((vec4<i32>(u_input.b, 45070i, -2147483647i, u_input.b) ^ ~vec4<i32>(u_input.c, u_input.c, u_input.b, u_input.c)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) >> (vec4<u32>(~1u, ~60427u, ~(~_wgslsmith_sub_u32(1u, 1u)), ~min(abs(1u), ~1u)) % vec4<u32>(32u));
    global2 = any(select(!vec3<bool>(all(vec4<bool>(false, false, false, true)), true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)))));
    var var_1 = Struct_3(_wgslsmith_clamp_vec2_u32(~(~countOneBits(vec2<u32>(86314u, 1u))), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, _wgslsmith_mod_u32(0u, 31182u)), ~vec2<u32>(1u, 8269u)), vec2<u32>(23109u, 1u)), !any(global3[_wgslsmith_index_u32(reverseBits(reverseBits(4294967295u)), 6u)]), vec3<f32>(-2148f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-820f - 263f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(658f * 571f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(504f)), -1673f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - _wgslsmith_f_op_f32(-693f - -402f)))));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x | (_wgslsmith_dot_vec2_u32(var_1.a, var_1.a) & ~23789u), _wgslsmith_mod_u32(~0u & _wgslsmith_add_u32(4294967295u, var_1.a.x), var_1.a.x), firstLeadingBit(~26033u) | ~_wgslsmith_dot_vec2_u32(var_1.a, vec2<u32>(var_1.a.x, 6787u)), var_1.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, ~(~var_1.a.x), ~var_1.a.x, abs(1u)), ~select(vec4<u32>(76625u, 4294967295u, var_1.a.x, var_1.a.x), ~vec4<u32>(55829u, var_1.a.x, 13235u, var_1.a.x), vec4<bool>(var_1.b, false, true, var_1.b))));
    let var_3 = 1u;
    return true;
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = true && (select(func_3(), true, true) || all(vec4<bool>(!arg_0.b, arg_0.b && arg_0.b, true, arg_0.b != true)));
    var var_1 = _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.c.x)) * -568f), _wgslsmith_f_op_f32(max(-300f, _wgslsmith_f_op_f32(sign(765f)))), ~39274u == select(0u, arg_0.a.x, true))) - arg_0.c.x));
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~abs(_wgslsmith_div_u32(arg_0.a.x, arg_0.a.x)), abs(1u)), 25u)], global0[_wgslsmith_index_u32(1u, 25u)]);
    let var_3 = (_wgslsmith_sub_vec2_u32(vec2<u32>(~11673u, countOneBits(12993u)), vec2<u32>(21630u, arg_0.a.x) | (vec2<u32>(arg_0.a.x, var_2.b.c.x) & var_2.b.c)) << (vec2<u32>(~(var_2.a.c.x | var_2.a.c.x), ~45181u) % vec2<u32>(32u))) << (arg_0.a % vec2<u32>(32u));
    return ~(_wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(var_3.x, var_2.a.c.x, var_3.x)), countOneBits(~vec3<u32>(39925u, var_3.x, arg_0.a.x))) << (_wgslsmith_dot_vec2_u32(max(abs(vec2<u32>(11360u, 4294967295u)), vec2<u32>(var_3.x, 44531u)), _wgslsmith_mult_vec2_u32(var_2.b.c, ~vec2<u32>(arg_0.a.x, var_2.b.c.x))) % 32u));
}

fn func_1() -> Struct_1 {
    var var_0 = 2147483647i << (abs(~func_2(Struct_3(vec2<u32>(0u, 1u), true, vec3<f32>(742f, 188f, -946f)))) % 32u);
    var var_1 = vec2<i32>(0i, (i32(-1i) * -2147483647i) & u_input.c);
    global1 = array<vec2<bool>, 28>();
    let var_2 = firstTrailingBit(vec3<u32>(1u, 1u, 1u) << (vec3<u32>(~0u, min(~1u, ~907u), min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 47252u, 11214u), vec3<u32>(67276u, 4294967295u, 1u)), ~1u)) % vec3<u32>(32u)));
    var var_3 = max(var_1.x, 30087i);
    return global0[_wgslsmith_index_u32(var_2.x, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_2(func_1(), global0[_wgslsmith_index_u32(0u, 25u)]);
    var var_2 = func_1();
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(301f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.b.x, 301f))) - _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(abs(-1523f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f - var_1.a.b.x))))));
    let var_4 = _wgslsmith_f_op_f32(-var_3);
    let x = u_input.a;
    s_output = StorageBuffer(min(0u, ~var_1.b.c.x ^ (_wgslsmith_dot_vec2_u32(var_1.b.c, var_0.c) >> (max(4294967295u, var_1.a.c.x) % 32u))), 1u);
}

