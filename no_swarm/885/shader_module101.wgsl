struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: Struct_2;

var<private> global1: array<vec2<bool>, 12>;

var<private> global2: array<f32, 22>;

var<private> global3: array<vec4<f32>, 17>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> bool {
    global2 = array<f32, 22>();
    return ~(~reverseBits(~global0.a.a)) == 1128u;
}

fn func_2(arg_0: u32, arg_1: Struct_4) -> Struct_2 {
    global3 = array<vec4<f32>, 17>();
    let var_0 = ~select(~reverseBits(0u), ~(~(~global0.a.a)), arg_1.b);
    let var_1 = vec3<bool>(all(vec4<bool>(!arg_1.b, arg_1.b, !arg_1.b, arg_1.b)) | all(vec3<bool>(true, !arg_1.b, global0.b.b.x < -2089f)), true, false);
    global0 = Struct_2(global0.a, global0.b);
    global2 = array<f32, 22>();
    return Struct_2(global0.a, global0.a);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: f32) -> vec3<bool> {
    var var_0 = min(vec4<u32>(88331u, ~_wgslsmith_mod_u32(arg_0.a.a, 26411u) & ((86958u | u_input.a) & global0.b.a), ~(~_wgslsmith_clamp_u32(19792u, global0.a.a, u_input.a)), ~(~(~67229u))), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(max(reverseBits(vec4<u32>(u_input.a, 21821u, u_input.a, u_input.a)), ~vec4<u32>(4294967295u, global0.a.a, 0u, 0u)), countOneBits(~vec4<u32>(u_input.a, 1u, 1u, 39691u))), abs(~(vec4<u32>(arg_0.a.a, arg_0.b.a, 0u, u_input.a) | vec4<u32>(arg_0.b.a, 74353u, arg_0.b.a, 36987u)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -543f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.a, 22u)], -367f)) - 961f));
    var var_2 = Struct_1(1u, var_1);
    let var_3 = arg_1.x;
    let var_4 = vec4<u32>(select(u_input.a, ~arg_0.b.a & global0.b.a, arg_1.x) >> ((_wgslsmith_mult_u32(~4294967295u, var_2.a ^ 1u) >> (reverseBits(var_0.x >> (var_0.x % 32u)) % 32u)) % 32u), global0.a.a, global0.b.a << (1u % 32u), global0.a.a);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global3 = array<vec4<f32>, 17>();
    var_0 = func_1();
    var var_1 = u_input.a;
    var_0 = all(func_3(func_2(1u, Struct_4(u_input.b, true)), vec3<bool>(_wgslsmith_f_op_f32(floor(534f)) >= _wgslsmith_f_op_f32(-global0.b.b.x), all(vec4<bool>(false, true, true, false)), (u_input.b > u_input.b) & true), -198f));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.a);
}

