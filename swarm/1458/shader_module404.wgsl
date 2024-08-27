struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(false, false, false, false);

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(8398u, 17742u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(58361u, 67824u), vec2<u32>(0u, 4294967295u), vec2<u32>(42376u, 48941u), vec2<u32>(1u, 34768u), vec2<u32>(12269u, 0u), vec2<u32>(0u, 57276u), vec2<u32>(0u, 26614u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 47599u), vec2<u32>(34925u, 1u), vec2<u32>(13180u, 4294967295u), vec2<u32>(93908u, 3549u), vec2<u32>(36465u, 38315u), vec2<u32>(41025u, 50237u), vec2<u32>(1u, 1u), vec2<u32>(47254u, 0u), vec2<u32>(40946u, 4914u), vec2<u32>(0u, 0u), vec2<u32>(1u, 38987u), vec2<u32>(50597u, 30881u), vec2<u32>(1u, 52803u), vec2<u32>(1u, 25052u), vec2<u32>(0u, 0u), vec2<u32>(56004u, 887u), vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(5819u, 59352u), vec2<u32>(117934u, 1u));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-729f))))));
    global2 = array<vec2<u32>, 31>();
    var var_1 = vec4<i32>(u_input.a, firstLeadingBit(~(-44659i)), u_input.a, u_input.a);
    var var_2 = var_0;
    global0 = array<bool, 4>();
    let var_3 = Struct_1(~abs(global2[_wgslsmith_index_u32(u_input.b, 31u)]) & _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d.zz, vec2<u32>(18982u, 4559u)), global2[_wgslsmith_index_u32(74923u << (min(u_input.b, u_input.d.x) % 32u), 31u)]), 514f);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec3_u32(~max(u_input.d, vec3<u32>(var_3.a.x, var_3.a.x, u_input.b)), vec3<u32>(~u_input.d.x, _wgslsmith_div_u32(u_input.c, 0u), 1u))), -var_1.x);
}

