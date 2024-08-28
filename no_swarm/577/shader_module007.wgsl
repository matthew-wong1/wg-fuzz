struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 409f;

var<private> global1: array<vec4<u32>, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(ceil(552f));
    global0 = _wgslsmith_div_f32(-963f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(1000f))));
    var var_0 = !all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var_0 = true;
    var var_1 = (vec3<u32>(u_input.a.x, reverseBits(u_input.a.x), ~(~u_input.a.x)) << (~vec3<u32>(firstTrailingBit(7502u), u_input.a.x, u_input.a.x) % vec3<u32>(32u))) & u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1951f, 1764f, -978f)))))));
}

