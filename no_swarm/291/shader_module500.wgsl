struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1565f, 720f);

var<private> global1: i32 = 11975i;

var<private> global2: vec2<u32>;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(1u, 4294967295u, 46551u)), Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(35506u, 4294967295u, 1u)), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 69249u, 1u)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = ~(-u_input.c.zy);
    return 37209u;
}

fn func_1() -> vec3<u32> {
    var var_0 = global3[_wgslsmith_index_u32(min(73710u, ~1u), 5u)];
    global3 = array<Struct_1, 5>();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(1761f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(floor(global0.x)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -148f) + 1000f), -153f)));
    let var_1 = ~vec2<u32>(_wgslsmith_mult_u32(1u, global2.x), 0u);
    var var_2 = Struct_1(var_0.a, vec3<u32>(_wgslsmith_dot_vec3_u32(~(~var_0.b), vec3<u32>(reverseBits(0u), min(var_1.x, 67964u), func_2(global3[_wgslsmith_index_u32(1u, 5u)], Struct_2(Struct_1(var_0.a, var_0.b), u_input.b)))), 9394u, ~global2.x & global2.x));
    return vec3<u32>(reverseBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.b.x, 4294967295u, var_1.x, global2.x), vec4<u32>(0u, global2.x, 72719u, var_0.b.x), var_2.a.x), vec4<u32>(47748u, 1u, 49028u, 36729u))), ~var_0.b.x, ~_wgslsmith_mod_u32(var_1.x, 0u) & 0u) ^ vec3<u32>(392u, 1u, ~(~(~var_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) - 1417f), global0.x);
}

