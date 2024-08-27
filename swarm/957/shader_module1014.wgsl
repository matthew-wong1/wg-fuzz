struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec3<bool>(false, true, true), 39919u, false, vec4<f32>(-208f, -743f, 1000f, 1041f));

var<private> global1: array<Struct_1, 16>;

var<private> global2: Struct_1;

var<private> global3: vec3<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = u_input.a;
    return global1[_wgslsmith_index_u32(u_input.c, 16u)];
}

fn func_1(arg_0: vec4<u32>) -> bool {
    global2 = func_2(~countOneBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, global0.c, 4294967295u, global2.c), arg_0 << (vec4<u32>(19699u, u_input.c, arg_0.x, global2.c) % vec4<u32>(32u)), vec4<u32>(1u, 87257u, 0u, global2.c))));
    global1 = array<Struct_1, 16>();
    global0 = Struct_1(true, global0.b, ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(max(arg_0.yzx, arg_0.yxx), abs(vec3<u32>(1u, u_input.c, 4294967295u)), arg_0.zxz), arg_0.xwx), true, vec4<f32>(-1266f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(global2.e.x + -253f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(909f - global0.e.x), _wgslsmith_f_op_f32(-global0.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e.x)), -1000f));
    global2 = global1[_wgslsmith_index_u32(global0.c, 16u)];
    var var_0 = ~arg_0;
    return !all(!(!(!vec4<bool>(true, global3.x, global2.b.x, false))));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> f32 {
    let var_0 = func_2(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(global0.c, ~u_input.b.x, countOneBits(0u), 1u)), vec4<u32>(~u_input.c, ~0u ^ ~u_input.c, global0.c, global0.c)));
    global0 = var_0;
    var var_1 = arg_1.x;
    var var_2 = vec2<f32>(var_0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -412f));
    let var_3 = ~(-(~u_input.a));
    return 220f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1085f;
    let var_1 = ~u_input.b;
    var var_2 = !global3.x;
    let var_3 = global2.e.x;
    var var_4 = ~(~(~4294967295u));
    let var_5 = !func_1(countOneBits(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 10u, 1u, 78839u), vec4<u32>(18488u, global0.c, u_input.c, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0.e.wzw), _wgslsmith_f_op_vec3_f32(-global2.e.yww))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(634f, _wgslsmith_f_op_f32(func_3(2147483647i, global2.b)), -649f) + _wgslsmith_f_op_vec3_f32(global2.e.zxy - _wgslsmith_f_op_vec3_f32(min(global2.e.zxz, global2.e.yww))))));
}

