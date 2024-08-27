struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
    d: vec4<f32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: Struct_3 = Struct_3(965f, 0u, 0u, Struct_2(vec4<f32>(-460f, -1921f, -1060f, -186f), true, vec4<f32>(-804f, -546f, -498f, -585f), Struct_1(vec4<bool>(false, true, false, true), true, 1i)));

var<private> global1: u32 = 74307u;

var<private> global2: bool = false;

var<private> global3: u32 = 26632u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

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
    let var_0 = global0.d.d;
    var var_1 = global0.d.a;
    global3 = ~_wgslsmith_mod_u32(18151u, ~u_input.a.x);
    var var_2 = 1i;
    global1 = reverseBits(global0.c & firstTrailingBit(max(firstLeadingBit(4294967295u), _wgslsmith_dot_vec3_u32(u_input.a.zxw, vec3<u32>(u_input.a.x, global0.c, 20947u)))));
    global3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-662f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(var_1.x, -1873f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.c.x) - _wgslsmith_f_op_f32(round(-185f))))));
}

