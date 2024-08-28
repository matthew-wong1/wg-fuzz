struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<f32>, 27>;

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = arg_0.e.x;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * global0.b.c.x)))));
    let var_2 = ~firstTrailingBit(-(~global0.b.d.x));
    global1 = array<vec2<f32>, 27>();
    let var_3 = !select(!vec2<bool>(global0.a, true), vec2<bool>(global0.b.e.x, !arg_0.e.x), !select(select(vec2<bool>(false, false), vec2<bool>(false, global0.c.a.x), false), vec2<bool>(arg_0.e.x, false), global0.c.e.yw));
    return (all(select(!vec3<bool>(false, arg_0.e.x, var_3.x), !vec3<bool>(var_3.x, false, true), vec3<bool>(arg_0.e.x, true, global0.b.e.x))) || !(!global0.b.a.x)) & true;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    var var_0 = select(!vec3<bool>(true, true, (global0.c.a.x | false) & true), !select(vec3<bool>(!global0.c.e.x, true, true), vec3<bool>(u_input.b < u_input.b, func_3(global0.b), global0.a), true), !(!vec3<bool>(u_input.b == 3140u, global0.a, global0.c.e.x & false)));
    let var_1 = arg_0.x;
    global1 = array<vec2<f32>, 27>();
    var var_2 = global0.c.b >> ((vec2<u32>(_wgslsmith_add_u32(global0.b.b.x & 595u, 10349u), u_input.b) & select(vec2<u32>(global0.c.b.x, 4294967295u) >> (vec2<u32>(global0.b.b.x, 0u) % vec2<u32>(32u)), global0.b.b, var_0.x)) % vec2<u32>(32u));
    var var_3 = Struct_1(vec2<bool>(true, global0.a), ~min(vec2<u32>(13436u, countOneBits(u_input.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, global0.c.b.x) >> (global0.c.b % vec2<u32>(32u)), global0.b.b)), _wgslsmith_f_op_vec3_f32(global0.b.c + global0.c.c), ~(~firstTrailingBit(-vec4<i32>(u_input.a.x, var_1, u_input.a.x, arg_0.x))), !vec4<bool>(true, true, var_0.x, !(!var_0.x)));
    return reverseBits(global0.c.b.x);
}

fn func_1() -> vec3<u32> {
    return vec3<u32>(global0.b.b.x ^ ~(select(u_input.b, 4294967295u, global0.a) ^ 0u), _wgslsmith_mod_u32(1u >> (1u % 32u), ~global0.c.b.x | (u_input.b & u_input.b)) & (_wgslsmith_clamp_u32(~1u, ~u_input.b, 0u << (global0.c.b.x % 32u)) << (_wgslsmith_mod_u32(func_2(vec4<i32>(7999i, u_input.a.x, global0.b.d.x, 2147483647i), 1401f), func_2(global0.c.d, global0.c.c.x)) % 32u)), global0.b.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, abs(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), global0.c.b.x, _wgslsmith_div_f32(-660f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(523f, _wgslsmith_f_op_f32(f32(-1f) * -539f), global0.b.e.x)))));
}

