struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(0u, 0u, 20686u, 29388u, 4294967295u, 11792u, 4294967295u, 4294967295u, 4294967295u, 0u, 49475u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec3<i32>) -> f32 {
    return _wgslsmith_f_op_f32(-1120f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x) + arg_1.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-767f * -1940f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-107f, 198f, 1041f, 1390f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-935f, -1000f, -1554f, -625f), vec4<f32>(461f, -399f, -194f, 1615f), vec4<bool>(false, false, false, true)))))) + vec4<f32>(_wgslsmith_f_op_f32(163f + 720f), _wgslsmith_f_op_f32(func_1(select(false, true, false), Struct_2(vec4<f32>(1000f, 1000f, 1120f, -663f), vec4<u32>(1u, 16982u, 4294967295u, 0u), u_input.a), ~vec3<i32>(u_input.b, u_input.b, -32247i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(526f)) + _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-551f, 1373f, true))))), ~(~(~vec4<u32>(u_input.c, u_input.c, 4294967295u, 1u))) >> (~vec4<u32>(0u, max(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)]), ~0u, ~global0[_wgslsmith_index_u32(61126u, 12u)]) % vec4<u32>(32u)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, 1883f, -449f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(var_0.a + var_0.a)))));
}

