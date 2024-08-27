struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> bool {
    global0 = array<Struct_1, 11>();
    let var_0 = select(!vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, true, true, true)), select(true, true, true & any(vec3<bool>(false, false, false))), !select(true, true, false)));
    global0 = array<Struct_1, 11>();
    let var_1 = any(!var_0);
    global0 = array<Struct_1, 11>();
    return var_0.x;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: f32) -> f32 {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = func_2();
    return _wgslsmith_f_op_f32(-arg_3);
}

fn func_3(arg_0: vec2<f32>) -> StorageBuffer {
    var var_0 = _wgslsmith_sub_i32(2989i, 1i);
    var var_1 = ~0u & (u_input.b | max(~(0u | u_input.a), u_input.b));
    var_1 = ~(countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(38780u, u_input.a, 23806u, 56069u), vec4<u32>(1u, 39839u, u_input.a, 24175u))) | 0u);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(round(-621f)), -10372i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), 1000f, arg_0.x))), u_input.b);
    var_1 = 1u;
    return StorageBuffer(5601u, vec3<f32>(var_2.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -804f))), _wgslsmith_f_op_f32(1298f - arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_3(vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(475f, vec2<u32>(60239u, 11737u), Struct_2(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], 2056f, vec3<bool>(false, false, false), -893f), -862f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1750f)))));
}

