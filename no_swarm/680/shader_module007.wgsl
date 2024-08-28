struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(vec2<bool>(false, true), Struct_2(-1i)), Struct_3(vec2<bool>(false, true), Struct_2(-357i)), Struct_3(vec2<bool>(false, true), Struct_2(2147483647i)), Struct_3(vec2<bool>(true, false), Struct_2(0i)), Struct_3(vec2<bool>(true, true), Struct_2(-18855i)), Struct_3(vec2<bool>(true, false), Struct_2(2147483647i)), Struct_3(vec2<bool>(true, false), Struct_2(-1i)), Struct_3(vec2<bool>(false, true), Struct_2(-42768i)), Struct_3(vec2<bool>(false, false), Struct_2(1i)), Struct_3(vec2<bool>(false, true), Struct_2(-71113i)), Struct_3(vec2<bool>(false, true), Struct_2(2147483647i)), Struct_3(vec2<bool>(true, true), Struct_2(i32(-2147483648))), Struct_3(vec2<bool>(false, false), Struct_2(i32(-2147483648))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> f32 {
    var var_0 = arg_1.x;
    let var_1 = Struct_2(-(~(i32(-1i) * -2147483647i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 * 702f), arg_0));
    var var_3 = -30872i;
    let var_4 = Struct_3(vec2<bool>(false, true), var_1);
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_0.x | arg_0.x, 1u) & (max(u_input.d.yyw, vec3<u32>(1u, u_input.b, 4294967295u)) << (u_input.d.zwz % vec3<u32>(32u))), ~u_input.d.wxy)), 13u)];
    let var_1 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-556f - _wgslsmith_f_op_f32(-1f)), vec3<i32>(var_0.b.a, 0i, ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.a, 44805i), vec2<i32>(50990i, 0i)), u_input.a.xy))));
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    var var_2 = var_0.a;
    return StorageBuffer(~min(~(~u_input.c.x), ~(~arg_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 - _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(var_1)))))), var_1, 1f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.d.x, 13u)];
    global0 = array<Struct_3, 13>();
    let var_1 = any(vec2<bool>(true, true));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))));
    let var_3 = var_2.a.x;
    var var_4 = u_input.a.wyw;
    let x = u_input.a;
    s_output = func_1(~(~vec2<u32>(4294967295u, countOneBits(0u))), var_0.b);
}

