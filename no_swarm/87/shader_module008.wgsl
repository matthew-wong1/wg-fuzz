struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<i32>, arg_3: vec2<i32>) -> u32 {
    global0 = array<Struct_2, 31>();
    global1 = true;
    let var_0 = Struct_3(~_wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(2147483647i, arg_1) & firstLeadingBit(vec2<i32>(arg_3.x, u_input.c))), 1159f, vec3<i32>(~_wgslsmith_mod_i32(39527i, arg_1 ^ arg_1), i32(-1i) * -_wgslsmith_mult_i32(u_input.c, -14697i), arg_3.x));
    let var_1 = Struct_2(false);
    let var_2 = var_0.c.x <= _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -58633i, ~(~(-19466i))), u_input.a.zxw);
    return ~7665u;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> f32 {
    let var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_f32(sign(693f));
    global0 = array<Struct_2, 31>();
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1236f + 356f)))));
    global0 = array<Struct_2, 31>();
    return _wgslsmith_f_op_f32(735f - -1806f);
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(vec3<u32>(~reverseBits(u_input.d.x), 1u, 30066u), global0[_wgslsmith_index_u32(func_2(vec3<u32>(~9335u, ~_wgslsmith_div_u32(38743u, 4294967295u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, u_input.b.x, 77287u), u_input.d)), min(4261i, _wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -1i, -1i, u_input.c), u_input.a))), -(vec2<i32>(u_input.c, -11873i) >> ((u_input.d.yw | vec2<u32>(59460u, 18634u)) % vec2<u32>(32u))), vec2<i32>(-25228i, arg_0)), 31u)]));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(178f - var_0), -1091f)) >= var_0);
    global1 = all(!select(!select(vec3<bool>(true, true, var_1.a), vec3<bool>(var_1.a, true, false), vec3<bool>(true, var_1.a, false)), select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, true, var_1.a), !vec3<bool>(true, false, var_1.a)), true));
    global0 = array<Struct_2, 31>();
    global1 = true;
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(abs(vec4<u32>(func_1(4591i), 0u, ~u_input.d.x, ~(~39272u))));
    let var_1 = var_0;
    let var_2 = Struct_1(select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, all(vec2<bool>(true, false))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), select(false, false, true)), !(var_1.x != 71542u)), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), vec4<bool>(true, true, false, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true), any(vec4<bool>(true, false, false, false))))));
    var var_3 = vec3<bool>(!var_2.b.x, false, true);
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec3_u32(countOneBits(~vec3<u32>(55150u, 3044u, 16667u)), var_1.zwx), global0[_wgslsmith_index_u32(1u, 31u)]))));
    let var_5 = ~(~(~u_input.c));
    let var_6 = var_2;
    let var_7 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

