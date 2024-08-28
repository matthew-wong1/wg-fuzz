struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, true, false, false)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> i32 {
    global1 = array<Struct_1, 12>();
    var var_0 = abs(704i);
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1514f, _wgslsmith_f_op_f32(-arg_0), arg_0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(319f, -413f, arg_0))))));
    let var_2 = _wgslsmith_f_op_f32(-arg_0);
    let var_3 = max(-2147483647i, -2147483647i);
    return -1i;
}

fn func_3(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = firstTrailingBit(0u);
    global1 = array<Struct_1, 12>();
    global0 = array<Struct_1, 23>();
    global1 = array<Struct_1, 12>();
    global1 = array<Struct_1, 12>();
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -2044f), select(arg_0, vec3<bool>(arg_0.x, firstTrailingBit(43871u) <= _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 1u), vec2<u32>(34413u, 0u)), true), vec3<bool>(arg_0.x, all(vec2<bool>(arg_0.x, false)), !arg_0.x && arg_0.x)), arg_0.x);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = func_3(select(select(vec3<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), true), vec3<bool>(false, false, true), (~u_input.a < func_2(arg_0, vec2<i32>(0i, -1i))) & all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))));
    global0 = array<Struct_1, 23>();
    let var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, abs(~_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a))), -(~vec2<i32>(-4406i, u_input.a) << (~select(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 73497u), var_0.b.zy) % vec2<u32>(32u))), -_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, u_input.a), vec2<i32>(23652i, u_input.a)) ^ ((~vec2<i32>(7734i, u_input.a) ^ -vec2<i32>(-1i, u_input.a)) ^ vec2<i32>(u_input.a << (13496u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-33266i, u_input.a)))));
    var var_2 = var_0;
    global1 = array<Struct_1, 12>();
    return Struct_2(-731f, var_2.b, var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 12>();
    global0 = array<Struct_1, 23>();
    var var_0 = -1i;
    var var_1 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -410f));
    global0 = array<Struct_1, 23>();
    var var_2 = func_1(487f).b;
    global1 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(346f);
}

