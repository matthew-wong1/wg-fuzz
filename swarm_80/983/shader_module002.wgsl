struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-1000f, false, -1639f, true), Struct_1(976f, false, -1678f, false), Struct_1(909f, false, 389f, true), Struct_1(-812f, true, 679f, true));

var<private> global2: array<f32, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 18>();
    var var_0 = ~global0.b.x;
    global1 = array<Struct_1, 4>();
    let var_1 = global0.a.x;
    let var_2 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(-20603i, -(~_wgslsmith_mult_i32(u_input.a.x, -10705i) | 1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)])), 144f)), 2285f), -(var_2 | _wgslsmith_mult_i32(var_2, ~(-2147483647i))));
}

