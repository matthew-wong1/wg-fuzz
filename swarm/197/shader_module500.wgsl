struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5>;

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-864f, 171f, -738f), vec3<f32>(-581f, 275f, 1976f), vec3<f32>(-448f, 951f, -551f), vec3<f32>(-242f, 593f, -571f), vec3<f32>(839f, -740f, -1040f), vec3<f32>(602f, 703f, 258f), vec3<f32>(464f, 852f, 1606f), vec3<f32>(-2066f, 829f, -628f));

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(36451u), Struct_1(24126u), Struct_1(50103u), Struct_1(4294967295u), Struct_1(554u), Struct_1(4294967295u), Struct_1(19660u), Struct_1(90414u), Struct_1(1u), Struct_1(57596u), Struct_1(1u), Struct_1(42527u), Struct_1(19254u), Struct_1(0u), Struct_1(39794u), Struct_1(1u), Struct_1(38715u), Struct_1(50981u), Struct_1(0u), Struct_1(1u), Struct_1(0u), Struct_1(4294967295u), Struct_1(1u), Struct_1(9980u), Struct_1(61111u));

var<private> global4: array<Struct_1, 26>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    var var_1 = global3[_wgslsmith_index_u32(var_0, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~vec3<u32>(6724u, 0u, 4294967295u), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 11727u, var_0), vec3<u32>(1231u, u_input.d, var_0) >> (vec3<u32>(u_input.c.x, u_input.c.x, var_1.a) % vec3<u32>(32u)))) ^ vec3<u32>(979u, var_0, ~var_0), vec4<u32>(1u, _wgslsmith_div_u32(~0u, var_1.a), var_1.a, u_input.d));
}

