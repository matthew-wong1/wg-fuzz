struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: bool, arg_3: i32) -> i32 {
    global0 = array<Struct_3, 24>();
    var var_0 = _wgslsmith_div_f32(arg_1.x, arg_1.x);
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(362f + 663f))))))));
    global0 = array<Struct_3, 24>();
    var var_1 = vec3<u32>(u_input.c, 4294967295u, abs(_wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(54195u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 21813u, 0u))))) & ~(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.c, 89190u), vec3<u32>(4294967295u, u_input.c, 4294967295u) >> (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))) | vec3<u32>(~u_input.c, 1u, 4294967295u));
    return -67772i;
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_3 {
    global0 = array<Struct_3, 24>();
    let var_0 = u_input.b.x;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.c), 24u)];
    let var_2 = ~u_input.c;
    var var_3 = global0[_wgslsmith_index_u32(5814u, 24u)];
    return Struct_3(-14956i, select(!var_1.b, vec2<bool>(true, !(false | arg_1)), all(var_1.b)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(698f + -596f), 793f))));
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    var var_0 = !select(!(!arg_0.b), !arg_0.b, !select(arg_0.b, select(arg_0.b, arg_0.b, arg_0.b), true));
    global0 = array<Struct_3, 24>();
    return ~(~(~(~vec2<u32>(u_input.c, 1u)) | (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 5171u), vec2<u32>(1u, 95323u)) << (~vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    let var_0 = vec2<bool>(all(vec3<bool>(false, true, true)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -4428i), vec2<i32>(u_input.a, -1i)), func_1(var_0.x, vec4<f32>(2660f, -101f, 579f, 604f), var_0.x && true, 1i), u_input.a), vec3<i32>(func_1(var_0.x || var_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-160f, 729f, -166f, 602f)), var_0.x, u_input.b.x), -(~u_input.a), ~(~u_input.a))), max(countOneBits(u_input.b.yzz), vec3<i32>(-10132i, ~15190i, -(~0i))), _wgslsmith_add_u32(1u, _wgslsmith_add_u32(~u_input.c, 1u)), _wgslsmith_div_vec2_u32(abs(func_3(func_2(21785i, false))), vec2<u32>(u_input.c, firstLeadingBit(u_input.c)) | (func_3(global0[_wgslsmith_index_u32(103344u, 24u)]) & vec2<u32>(1u, 1u))), u_input.a);
}

