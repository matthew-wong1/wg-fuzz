struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(4294967295u, 1u, vec4<bool>(false, false, false, false), -1i, 1000f), Struct_1(0u, 28797u, vec4<bool>(true, false, true, false), 1i, -1889f), Struct_1(27814u, 19608u, vec4<bool>(false, false, true, true), -1i, -1026f), Struct_1(0u, 0u, vec4<bool>(false, false, true, true), 2147483647i, -1435f), Struct_1(4294967295u, 11755u, vec4<bool>(true, true, true, true), -1i, -298f), Struct_1(361u, 34580u, vec4<bool>(false, true, true, false), 21268i, 146f), Struct_1(40305u, 48739u, vec4<bool>(true, false, false, false), -13366i, 115f), Struct_1(4294967295u, 16219u, vec4<bool>(true, true, false, true), -64775i, -290f), Struct_1(36715u, 1u, vec4<bool>(false, true, false, true), 83892i, 1085f), Struct_1(56090u, 0u, vec4<bool>(false, true, false, false), i32(-2147483648), -339f), Struct_1(29162u, 0u, vec4<bool>(false, false, false, true), 2147483647i, 186f), Struct_1(0u, 50710u, vec4<bool>(false, false, true, false), -1i, -1464f), Struct_1(29082u, 18943u, vec4<bool>(false, true, false, false), -48632i, -1194f), Struct_1(53768u, 98059u, vec4<bool>(true, false, true, false), -28862i, 323f), Struct_1(4294967295u, 38958u, vec4<bool>(true, true, false, true), 1i, 1092f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1218f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -267f) + -1408f)));
}

