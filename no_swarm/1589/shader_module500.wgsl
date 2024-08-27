struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec4<u32>(0u, 14102u, 25531u, 16805u), vec3<f32>(-1000f, 996f, -187f)), vec3<u32>(4294967295u, 0u, 1u), Struct_2(1406f, -686f));

var<private> global1: u32;

var<private> global2: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0.c.a)))), _wgslsmith_f_op_f32(floor(global2.b)))), 2434f);
    global0 = Struct_3(global0.a, select(vec3<u32>(~_wgslsmith_div_u32(global0.a.a.x, 103792u), ~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), _wgslsmith_add_u32(1u, 0u)), vec3<u32>(firstLeadingBit(5812u), 0u, 1u), !vec3<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, false)), any(vec2<bool>(true, true)))), var_0);
    var var_1 = ~(~global0.a.a);
    return vec2<i32>(~u_input.b, u_input.b);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: i32) -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 46734u), 47034u, 1u, ~4294967295u), _wgslsmith_sub_vec4_u32(global0.a.a, ~global0.a.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1465f, global0.c.a, -856f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.a, global0.a.b.x, -1000f))))), ~countOneBits(global0.a.a.wxw), Struct_2(_wgslsmith_f_op_f32(global0.a.b.x - global2.a), global0.a.b.x));
    let var_1 = reverseBits(-func_3());
    let var_2 = Struct_3(Struct_1(_wgslsmith_mod_vec4_u32(global0.a.a, global0.a.a), global0.a.b), reverseBits(countOneBits(min(var_0.a.a.zyw, _wgslsmith_mod_vec3_u32(var_0.b, vec3<u32>(var_0.b.x, arg_1, arg_1))))), Struct_2(_wgslsmith_div_f32(813f, _wgslsmith_div_f32(159f, var_0.c.a)), _wgslsmith_f_op_f32(step(-198f, _wgslsmith_f_op_f32(-763f - _wgslsmith_div_f32(1415f, var_0.c.a))))));
    global1 = arg_1;
    var var_3 = true;
    return _wgslsmith_f_op_f32(538f * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> Struct_2 {
    global2 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, -1937f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, 100386u, u_input.b)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.b)))));
    let var_0 = 0u;
    global2 = global0.c;
    let var_1 = global0.a;
    var var_2 = global0.c;
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.c;
    var var_0 = Struct_3(Struct_1(~global0.a.a, global0.a.b), _wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(u_input.a.x), global0.a.a.x, global0.a.a.x), _wgslsmith_mult_vec3_u32(~vec3<u32>(global0.a.a.x, 21885u, global0.a.a.x), vec3<u32>(u_input.a.x, 0u, 1u) ^ vec3<u32>(u_input.a.x, 1u, global0.b.x))), func_1(global0.a.b, global0.a, 1000f, 1779f));
    var var_1 = global0.c.b;
    var var_2 = var_0.a;
    var var_3 = -firstLeadingBit(-6877i);
    var var_4 = vec3<u32>(reverseBits(global0.a.a.x), 20591u, 61760u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstLeadingBit(select(vec2<u32>(0u, 1u), vec2<u32>(u_input.a.x, u_input.a.x), false))), vec2<u32>(12699u, var_0.a.a.x));
}

