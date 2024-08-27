struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: u32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(803f, _wgslsmith_f_op_f32(-1415f * arg_0.x)) * _wgslsmith_f_op_f32(arg_2.x + 571f))));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = var_0;
    let var_2 = Struct_1(arg_1.x >= ~(~(~0u)), firstTrailingBit(min(arg_1.zz, vec2<u32>(~arg_0, u_input.a))));
    let var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1414f, 229f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(984f, 2488f) + vec2<f32>(-132f, -1089f)))), true | !var_2.a)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1538f, 867f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(112f))))))), Struct_1(true, vec2<u32>((var_2.b.x >> (1u % 32u)) | var_3, abs(arg_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-184f)), _wgslsmith_f_op_f32(f32(-1f) * -1075f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(select(-195f, 885f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-953f, -650f))), -548f)), ~(~_wgslsmith_mod_u32(arg_1.x, arg_1.x))));
    return Struct_1(true, _wgslsmith_mod_vec2_u32(arg_1.wz, vec2<u32>(1u, 1u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> StorageBuffer {
    let var_0 = Struct_1(false, ~reverseBits(countOneBits(vec2<u32>(u_input.a, u_input.a))) ^ ~countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(531u, u_input.c), vec2<u32>(u_input.c, 33651u))));
    let var_1 = Struct_2(all(!select(vec2<bool>(true, true), vec2<bool>(false, false), !vec2<bool>(var_0.a, var_0.a))), func_2(var_0.b.x, ~vec4<u32>(_wgslsmith_sub_u32(var_0.b.x, u_input.c), _wgslsmith_mod_u32(4294967295u, var_0.b.x), _wgslsmith_sub_u32(1u, var_0.b.x), _wgslsmith_mod_u32(30715u, 28968u))), u_input.b.x & -15911i, var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), 478f)), 1060f, 1062f, -1064f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-982f, arg_2.x, 994f, arg_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -3304f)))));
    var var_2 = _wgslsmith_f_op_f32(min(arg_2.x, -2063f));
    var_2 = var_1.e.x;
    let var_3 = var_1;
    return StorageBuffer(vec4<i32>(arg_3.x, -48276i, 1i, i32(-1i) * -44010i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.e)), var_0.a && all(vec4<bool>(true, var_0.a, true, true)))), _wgslsmith_f_op_vec4_f32(var_1.e * var_3.e))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(min(~u_input.b, ~firstLeadingBit(min(u_input.b, vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)))), max(u_input.b.yx & abs(u_input.b.yz), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.b.x), u_input.b.yx))) & vec2<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 21408i, u_input.b.x, 33372i), vec4<i32>(25634i, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.x), 1i), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(ceil(604f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f, select(true, false, true))), _wgslsmith_f_op_f32(-594f + -786f)))), ~(~min(~vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))));
}

