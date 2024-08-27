struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    return arg_0;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    global0 = array<vec4<u32>, 11>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f) + -1364f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(404f + -963f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(309f)) * _wgslsmith_f_op_f32(trunc(1951f))))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -139f))), 1155f));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = -_wgslsmith_div_vec4_i32((select(vec4<i32>(u_input.a, -2147483647i, arg_1.a.a, u_input.b), vec4<i32>(arg_1.a.a, u_input.c, arg_1.a.a, arg_1.a.a), vec4<bool>(arg_1.a.b, arg_1.a.b, false, true)) & ~vec4<i32>(arg_1.a.a, arg_1.a.a, 19932i, arg_1.a.a)) ^ reverseBits(vec4<i32>(u_input.a, -46766i, u_input.a, u_input.a)), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.a, -1i, arg_1.a.a, u_input.c), vec4<i32>(-1i, arg_1.a.a, arg_1.a.a, arg_1.a.a))) ^ vec4<i32>(-u_input.a, 14073i, abs(-2147483647i), u_input.a));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-750f)) * _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(u_input.d.x, 11u)])))))));
    return arg_1;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>) -> vec2<u32> {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-584f, -452f, -945f, -1300f) + vec4<f32>(551f, 1020f, 641f, 729f)))))), arg_0);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_3(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-102f - _wgslsmith_f_op_f32(f32(-1f) * -2369f))), 1766f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-662f - _wgslsmith_f_op_f32(-449f + 421f))), _wgslsmith_f_op_f32(select(133f, 707f, false == (true | var_0.a.b))), _wgslsmith_f_op_f32(f32(-1f) * -583f)), select(!vec3<bool>(!var_0.a.b, true, true), vec3<bool>(false, select(true, var_0.a.b && arg_0.a.b, arg_0.a.b), any(!vec3<bool>(true, arg_0.a.b, var_0.a.b))), select(!(!vec3<bool>(true, false, arg_0.a.b)), select(select(vec3<bool>(arg_0.a.b, arg_0.a.b, var_0.a.b), vec3<bool>(false, true, false), false), select(vec3<bool>(false, arg_0.a.b, true), vec3<bool>(arg_0.a.b, var_0.a.b, var_0.a.b), var_0.a.b), !vec3<bool>(arg_0.a.b, var_0.a.b, var_0.a.b)), !vec3<bool>(true, arg_0.a.b, arg_0.a.b)))));
    global0 = array<vec4<u32>, 11>();
    global0 = array<vec4<u32>, 11>();
    var_0 = arg_0;
    return firstLeadingBit(vec2<u32>(u_input.d.x, countOneBits(u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 11>();
    global0 = array<vec4<u32>, 11>();
    global0 = array<vec4<u32>, 11>();
    global0 = array<vec4<u32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(-1098f, func_4(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1110f, -773f, 100f, -447f))), Struct_3(Struct_1(-2147483647i, false))), vec3<i32>(-u_input.c & countOneBits(3613i), ~firstTrailingBit(u_input.c), u_input.c)));
}

