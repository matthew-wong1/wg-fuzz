struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<i32, 18> = array<i32, 18>(2147483647i, -68053i, 38083i, i32(-2147483648), 4942i, i32(-2147483648), -1i, 13288i, -24628i, i32(-2147483648), i32(-2147483648), i32(-2147483648), i32(-2147483648), -9148i, -32170i, i32(-2147483648), i32(-2147483648), 1120i);

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

var<private> global3: bool;

var<private> global4: array<bool, 32> = array<bool, 32>(true, true, false, false, true, false, false, true, true, false, true, false, true, false, true, true, false, true, false, false, false, false, false, false, false, true, true, true, false, false, true, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(select(global2.x, ~_wgslsmith_add_u32(6937u, u_input.d), global2.x <= firstTrailingBit(u_input.d)), _wgslsmith_div_u32(abs(102391u), abs(_wgslsmith_mult_u32(global2.x, 7098u)))), 18u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -228f))))))));
}

