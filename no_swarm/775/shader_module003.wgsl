struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec2<bool>) -> f32 {
    let var_0 = arg_1;
    return -750f;
}

fn func_3() -> u32 {
    return ~(~(~2410u));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = Struct_1(firstTrailingBit(~(u_input.a | ~vec2<u32>(arg_2.d, u_input.a.x))), 26388i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_2.c, vec4<f32>(1000f, arg_2.c.x, 188f, _wgslsmith_f_op_f32(exp2(arg_0))))) + _wgslsmith_f_op_vec4_f32(-arg_2.c)), ~func_3());
    let var_1 = func_3();
    let var_2 = var_0.c.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(403f, _wgslsmith_f_op_f32(-758f - arg_2.c.x), _wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_f_op_f32(-arg_0))))));
    var var_4 = Struct_2(-firstTrailingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(-16588i, arg_2.b))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.zxx - vec3<f32>(491f, 1469f, var_2)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.zxz))))) - var_3.yzy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~2147483647i);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-903f, -186f), _wgslsmith_div_f32(-553f, -784f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1031f)), _wgslsmith_f_op_f32(464f + 812f), false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1483f - 1143f) - -864f), -160f, all(vec3<bool>(true, true, true)) | true)))), 251f));
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.c.xz, 40504i, vec4<f32>(var_1, var_1, 935f, -282f), u_input.a.x), vec3<i32>(0i, u_input.b, -1i), Struct_3(u_input.a, false, false), vec2<bool>(false, false))))), -498f, 1000f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1644f, var_1, -1340f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1, 284f, -945f), vec3<f32>(-676f, -211f, var_1))), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2(-386f, vec2<bool>(true, true), Struct_1(u_input.a, var_0.a, vec4<f32>(var_1, 779f, 248f, -1017f), u_input.a.x)))))))));
    let var_3 = ~var_0.a;
    var var_4 = Struct_3(vec2<u32>(u_input.a.x, ~abs(u_input.a.x) >> ((_wgslsmith_clamp_u32(u_input.c.x, u_input.a.x, 0u) | _wgslsmith_mult_u32(0u, u_input.c.x)) % 32u)), any(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))), true);
    var var_5 = Struct_3(reverseBits(min(u_input.a & var_4.a, ~vec2<u32>(u_input.c.x, 1129u))), var_4.c, !any(select(select(vec3<bool>(var_4.c, var_4.b, var_4.c), vec3<bool>(var_4.b, true, var_4.c), vec3<bool>(var_4.b, true, var_4.b)), vec3<bool>(true, false, true), all(vec3<bool>(var_4.b, var_4.c, false)))));
    var var_6 = Struct_3(var_4.a, all(vec3<bool>(var_2.x != -841f, ~var_5.a.x == reverseBits(var_4.a.x), _wgslsmith_f_op_f32(-var_1) < _wgslsmith_f_op_f32(floor(var_2.x)))), true);
    var_4 = Struct_3(_wgslsmith_div_vec2_u32(firstLeadingBit(var_6.a), vec2<u32>(abs(var_4.a.x), min(~72216u, 1u))), var_4.b, var_6.b);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(~vec3<u32>(var_4.a.x, 14289u, u_input.a.x) ^ _wgslsmith_mult_vec3_u32(u_input.c, u_input.c)), 52141u, var_4.a.x, u_input.c.yz, _wgslsmith_div_f32(-644f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -704f))))));
}

