struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(570f, -218f, 1000f, -997f));

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_2, 22>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.a | _wgslsmith_mod_u32(_wgslsmith_div_u32(abs(~u_input.a), ~1u), u_input.a);
    global0 = global2[_wgslsmith_index_u32(abs(var_0), 22u)];
    global1 = global0.a.yzw;
    var var_1 = 64103i;
    return Struct_2(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 81333u;
    var var_1 = 1580f;
    var var_2 = any(vec4<bool>(all(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), true, any(vec3<bool>(true, true, true)), !all(vec4<bool>(true, true, true, true))));
    global0 = func_1();
    var var_3 = Struct_1(global0.a.zxx);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~0u, u_input.b.x, var_0, ~_wgslsmith_add_u32(var_0, u_input.b.x)));
}

