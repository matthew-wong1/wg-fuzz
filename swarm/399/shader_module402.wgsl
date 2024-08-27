struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(-1i), Struct_2(-4862i), Struct_2(2147483647i), Struct_2(1i), Struct_2(-5942i), Struct_2(18357i), Struct_2(i32(-2147483648)), Struct_2(12897i), Struct_2(-41362i));

var<private> global1: array<f32, 18>;

var<private> global2: array<Struct_4, 30>;

var<private> global3: array<bool, 9>;

var<private> global4: array<vec3<u32>, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(var_0.c.x), u_input.a.xy, ~abs(~(~36341i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.c.x, 18u)]) + _wgslsmith_f_op_f32(1131f - global1[_wgslsmith_index_u32(var_0.c.x, 18u)])) + _wgslsmith_f_op_f32(1964f - global1[_wgslsmith_index_u32(~var_0.c.x, 18u)])))));
}

