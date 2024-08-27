struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true));

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> vec4<u32> {
    let var_0 = reverseBits(vec2<u32>(20026u, ~u_input.b));
    return ~(~(~vec4<u32>(10907u, u_input.c, 16607u, u_input.b) << (vec4<u32>(u_input.c, _wgslsmith_div_u32(u_input.c, 44796u), 52511u, countOneBits(var_0.x)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 7>();
    var var_0 = u_input.b;
    global0 = array<vec3<bool>, 7>();
    var var_1 = -785f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1060f + -330f)))) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), 33234u);
}

