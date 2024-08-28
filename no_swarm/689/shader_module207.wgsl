struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<u32, 23> = array<u32, 23>(0u, 4294967295u, 4294967295u, 27036u, 18081u, 21872u, 1u, 0u, 4294967295u, 69334u, 16964u, 4294967295u, 1u, 49642u, 13150u, 0u, 0u, 4294967295u, 0u, 0u, 18164u, 33659u, 0u);

var<private> global2: array<bool, 29> = array<bool, 29>(false, false, false, true, false, true, true, false, false, false, true, false, true, true, true, true, true, false, true, true, false, true, false, false, false, false, true, false, true);

var<private> global3: Struct_1 = Struct_1(false, vec3<f32>(-1049f, 1499f, -1474f), vec2<bool>(false, false), vec3<u32>(1u, 0u, 4294967295u), 534f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~abs(9515u))) << (u_input.b % 32u);
    var var_1 = global3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-508f, _wgslsmith_f_op_f32(-global3.e), u_input.a, _wgslsmith_sub_vec2_u32(vec2<u32>(~1u, 16664u), global3.d.zz));
}

