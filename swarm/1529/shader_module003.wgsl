struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_3, 15>;

var<private> global2: array<u32, 20>;

var<private> global3: vec4<f32>;

var<private> global4: array<Struct_3, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> u32 {
    return 66420u;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = -arg_0.a.b;
    let var_1 = -1i;
    var var_2 = arg_0.a;
    let var_3 = arg_0.a;
    global1 = array<Struct_3, 15>();
    return vec2<bool>(true, all(arg_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(func_1(~(min(vec2<u32>(global2[_wgslsmith_index_u32(55863u, 20u)], u_input.c) ^ vec2<u32>(50622u, 0u), abs(vec2<u32>(global0.x, 4294967295u))) & _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, 37510u), ~vec2<u32>(57494u, 4294967295u))), all(vec3<bool>(all(vec3<bool>(true, true, true)), 1365f == _wgslsmith_f_op_f32(-1000f * global3.x), select(true, true, true)))), 5u)];
    var var_1 = global4[_wgslsmith_index_u32(~max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(27086u, global0.x, u_input.c, 1u) | vec4<u32>(0u, 0u, 60359u, 111681u), ~(vec4<u32>(global0.x, u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 20u)], 20u)], global0.x) << (vec4<u32>(1u, 4294967295u, 12689u, 0u) % vec4<u32>(32u))))), 5u)];
    let var_2 = Struct_1(false == any(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), func_2(Struct_3(var_0.a), Struct_1(true, vec2<bool>(false, true))));
    let var_3 = -var_1.a.c;
    global2 = array<u32, 20>();
    let var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(global3.ww);
}

