struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-395f, -1715f, -1740f, -1325f, 637f, -361f, -368f, -447f, -464f, -498f, -1166f, 509f, 589f, -829f, 1092f, 414f, -1202f, 1397f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(554f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1126f, 709f)) + -282f)), vec2<i32>(~_wgslsmith_div_i32(-u_input.a, _wgslsmith_sub_i32(u_input.a, 24228i)), u_input.a), global0[_wgslsmith_index_u32(27164u, 18u)]);
}

