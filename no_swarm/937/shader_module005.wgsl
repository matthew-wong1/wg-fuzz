struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-19217i, 1000f), Struct_1(-12121i, 1395f), Struct_1(1i, -1000f), Struct_1(-9201i, -1000f), Struct_1(-11440i, -1014f), Struct_1(-1i, -749f), Struct_1(2147483647i, -1087f), Struct_1(-27881i, 1000f), Struct_1(2147483647i, 551f), Struct_1(i32(-2147483648), 1734f), Struct_1(-1i, -775f), Struct_1(-14479i, -1074f), Struct_1(-8032i, 377f), Struct_1(-1i, 494f), Struct_1(0i, -440f), Struct_1(2147483647i, -998f), Struct_1(-1i, -1003f), Struct_1(0i, 835f), Struct_1(i32(-2147483648), -589f), Struct_1(-8030i, 324f), Struct_1(18619i, 1911f), Struct_1(2147483647i, -1462f), Struct_1(-28551i, -684f), Struct_1(i32(-2147483648), 2436f), Struct_1(i32(-2147483648), 780f), Struct_1(1i, -1911f), Struct_1(1i, -297f));

var<private> global2: array<vec3<i32>, 32>;

var<private> global3: array<f32, 17>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = vec2<u32>(abs(19400u), 9943u);
    var_1 = ~vec2<u32>(u_input.c.x, _wgslsmith_add_u32(_wgslsmith_add_u32(~u_input.c.x, ~57662u), ~var_1.x));
    global3 = array<f32, 17>();
    let var_2 = ~(~vec3<u32>(firstTrailingBit(1u), var_1.x, var_1.x));
    global3 = array<f32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.ww, -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + global3[_wgslsmith_index_u32(49693u, 17u)])));
}

