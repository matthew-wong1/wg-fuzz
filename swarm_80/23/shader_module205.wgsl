struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 31> = array<i32, 31>(2147483647i, 1i, -3535i, 33071i, 0i, i32(-2147483648), -59248i, 14421i, 2147483647i, -1i, -1i, -1i, 2147483647i, 95428i, 2147483647i, -44000i, 13861i, -8999i, -1i, -23508i, -9759i, 12349i, -1i, -7897i, -39960i, 22253i, -37893i, 1i, -7306i, 23260i, -14294i);

var<private> global2: array<Struct_1, 6>;

var<private> global3: bool = false;

var<private> global4: f32 = 280f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(u_input.c, 31u)], -1000f, _wgslsmith_f_op_f32(select(-1058f, -1566f, false)), func_1(vec2<u32>(59531u, 9638u)));
}

