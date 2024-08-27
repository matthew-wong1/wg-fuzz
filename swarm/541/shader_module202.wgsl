struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(11576i, Struct_1(35115i), vec3<bool>(false, false, false), Struct_1(i32(-2147483648)));

var<private> global1: Struct_1 = Struct_1(2147483647i);

var<private> global2: array<f32, 12>;

var<private> global3: u32;

var<private> global4: array<bool, 21> = array<bool, 21>(true, false, false, false, true, true, false, true, true, true, false, true, false, true, true, true, true, false, true, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<bool>) -> StorageBuffer {
    return StorageBuffer(abs(~(~min(21183u, u_input.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], _wgslsmith_f_op_f32(round(-1000f)))))), u_input.c.zy, abs(33156i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(select(select(vec2<bool>(global4[_wgslsmith_index_u32(max(u_input.b.x, 99190u), 21u)], global0.c.x | global0.c.x), !select(vec2<bool>(global0.c.x, global0.c.x), global0.c.yx, true), !global0.c.zz), !global0.c.zz, !any(vec2<bool>(true, false))));
}

