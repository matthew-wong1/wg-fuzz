struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(-1i, -20931i, 2147483647i), vec3<i32>(1196i, 56367i, 1i), vec3<i32>(0i, 2147483647i, 42879i), vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<i32>(-1i, 0i, -20312i), vec3<i32>(1i, 1i, 1i), vec3<i32>(0i, 0i, 0i), vec3<i32>(11814i, -17112i, i32(-2147483648)), vec3<i32>(-1i, -1i, -9809i), vec3<i32>(-25504i, 2147483647i, 3423i), vec3<i32>(56461i, 54738i, -31784i));

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<f32>, 4>;

var<private> global3: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(69112u, 0u), vec2<u32>(72512u, 24951u), vec2<u32>(1u, 1u), vec2<u32>(47304u, 1u), vec2<u32>(1u, 0u), vec2<u32>(86258u, 22288u), vec2<u32>(0u, 106694u), vec2<u32>(14245u, 44508u), vec2<u32>(1u, 12664u), vec2<u32>(51145u, 1u), vec2<u32>(12412u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 17257u), vec2<u32>(23215u, 73733u), vec2<u32>(0u, 22403u), vec2<u32>(4294967295u, 56427u), vec2<u32>(4294967295u, 34878u), vec2<u32>(0u, 0u), vec2<u32>(24483u, 0u), vec2<u32>(0u, 301u), vec2<u32>(0u, 83733u), vec2<u32>(12966u, 1u), vec2<u32>(60917u, 4294967295u), vec2<u32>(57578u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 21314u), vec2<u32>(54212u, 53547u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 27>();
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 577f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * 1000f) + global1.x))), 718f, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(~select(u_input.a | u_input.a, ~1u, true), 27u)], 1i);
}

