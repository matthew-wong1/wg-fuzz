struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(1465f <= _wgslsmith_f_op_f32(sign(global0.b.x)), global0.b);
    let var_0 = 1u;
    let var_1 = -(-u_input.b >> ((firstLeadingBit(vec4<u32>(var_0, u_input.c, 4294967295u, u_input.c)) << (~(~vec4<u32>(27367u, var_0, 25485u, 30565u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(12801i, u_input.a, -1i, var_1.x), vec4<i32>(var_1.x, u_input.b.x, u_input.a, 0i)), 4836i)) << (~vec2<u32>(~u_input.c, countOneBits(4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.b.x)), _wgslsmith_f_op_f32(-916f * 234f), _wgslsmith_f_op_f32(2683f * global0.b.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global0.b + vec3<f32>(831f, 2270f, 995f))))) + global0.b));
}

