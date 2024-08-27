struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: Struct_4 = Struct_4(vec3<i32>(-52932i, i32(-2147483648), 2147483647i), Struct_1(0u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(17557u, global1.b.a, 4294967295u, 1u), vec4<u32>(global1.b.a, u_input.a.x, global1.b.a, global1.b.a))) ^ ~(~abs(u_input.c)), u_input.d.wyz);
    let var_1 = Struct_3(~reverseBits(~reverseBits(30250u)));
    global0 = array<Struct_1, 23>();
    let var_2 = _wgslsmith_f_op_f32(-231f + 1316f);
    let var_3 = _wgslsmith_mult_vec4_u32(u_input.d, firstTrailingBit(~vec4<u32>(~20747u, ~0u, u_input.c.x, 22625u)));
    return Struct_2(0i, global1.a.x);
}

fn func_1(arg_0: f32) -> f32 {
    global1 = Struct_4(vec3<i32>(-1i) * -abs(_wgslsmith_mod_vec3_i32(vec3<i32>(12772i, global1.a.x, -2147483647i), vec3<i32>(global1.a.x, global1.a.x, global1.a.x))), Struct_1(firstLeadingBit(~_wgslsmith_sub_u32(9228u, u_input.a.x))));
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    let var_0 = func_2();
    global0 = array<Struct_1, 23>();
    return _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.wyz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(abs(-1328f)))), _wgslsmith_f_op_f32(310f + _wgslsmith_f_op_f32(abs(222f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1098f, 619f, 1832f, 1000f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-709f, -385f, 1172f, -1389f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(531f, 2048f, 2195f, -1182f))))), global1.b.a);
}

