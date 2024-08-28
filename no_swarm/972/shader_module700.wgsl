struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 70665u;

var<private> global1: array<Struct_2, 14>;

var<private> global2: Struct_1;

var<private> global3: array<vec4<f32>, 26>;

var<private> global4: Struct_1 = Struct_1(vec4<i32>(17972i, -1i, -37572i, -1i), 0i, vec2<u32>(1u, 0u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~1u, 14u)];
    let var_1 = !var_0.b;
    let var_2 = 18326i;
    let x = u_input.a;
    s_output = StorageBuffer(-global4.a.wwz, _wgslsmith_mult_i32(1i, 60429i));
}

