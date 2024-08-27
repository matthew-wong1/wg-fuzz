struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(39968i, 10441i, 22699i, 53048i)), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(64164i, -6678i, 32636i, 0i)), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(i32(-2147483648), 1i, 5925i, 42442i)), Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(22016i, -48828i, -17899i, -8832i)), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(-5327i, -28185i, -1i, -20492i)), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(18214i, -26859i, 2147483647i, 0i)), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(1i, 2147483647i, -26346i, 18341i)), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(2147483647i, -36739i, 0i, 1i)));

var<private> global2: array<u32, 9>;

var<private> global3: bool = false;

var<private> global4: i32 = -1i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(u_input.e, true);
    global1 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.x), global2[_wgslsmith_index_u32(u_input.d.x, 9u)] >> (_wgslsmith_add_u32(~u_input.d.x, ~_wgslsmith_mod_u32(u_input.d.x, global2[_wgslsmith_index_u32(u_input.d.x, 9u)])) % 32u));
}

