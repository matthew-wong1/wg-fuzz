struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true));

var<private> global2: array<Struct_3, 7>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a, 135f, global0.b.a, global0.b.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(153f, -1593f, global0.b.a, 659f), vec4<f32>(-1193f, global0.b.a, global0.b.a, global0.b.a), vec4<bool>(global0.b.c.x, global0.b.c.x, true, global0.b.c.x)))))));
    global2 = array<Struct_3, 7>();
    let var_1 = Struct_2(~firstTrailingBit(~(~39306u)), global0.b);
    let var_2 = 1u;
    let var_3 = Struct_1(global0.b.a, countOneBits(var_1.b.b | var_1.b.b) ^ 0i, select(!vec2<bool>(true, all(vec4<bool>(false, global0.b.c.x, true, global0.b.c.x))), global0.b.c, vec2<bool>(global0.b.c.x, true)), select(var_1.b.d, vec3<u32>(15359u, var_2 | 0u, var_2), abs(1i) != var_1.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

