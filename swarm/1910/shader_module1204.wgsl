struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
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

var<private> global0: array<vec3<bool>, 22>;

var<private> global1: array<vec2<bool>, 29>;

var<private> global2: array<vec4<i32>, 22>;

var<private> global3: array<Struct_1, 13>;

var<private> global4: array<Struct_1, 21>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    var var_0 = global4[_wgslsmith_index_u32((u_input.b << (_wgslsmith_div_u32(4294967295u, u_input.b) % 32u)) >> (1503u % 32u), 21u)];
    global2 = array<vec4<i32>, 22>();
    global3 = array<Struct_1, 13>();
    return StorageBuffer(43150i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 13>();
    let var_0 = abs(u_input.a.zz);
    var var_1 = global2[_wgslsmith_index_u32(u_input.b, 22u)];
    var var_2 = -1298f;
    let var_3 = _wgslsmith_add_u32(1u, ~u_input.b);
    var var_4 = 1u;
    let var_5 = select(~abs(var_0), u_input.a.zz, true);
    global4 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = func_1(false);
}

