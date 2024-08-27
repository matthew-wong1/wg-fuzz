struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<i32, 26> = array<i32, 26>(-54362i, -1i, 1i, 0i, 2147483647i, 1i, 0i, -1i, -28643i, 7300i, -16i, -1i, -37131i, i32(-2147483648), -19936i, -1i, i32(-2147483648), 0i, 0i, 49015i, -11973i, -1i, 0i, -28640i, 1i, -1i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = true | (true || any(vec3<bool>(select(false, true, false), true, true)));
    var var_1 = _wgslsmith_div_vec2_u32(u_input.b.xy, vec2<u32>(u_input.a, u_input.a));
    global1 = array<Struct_1, 18>();
    let var_2 = global1[_wgslsmith_index_u32(~u_input.a, 18u)];
    return _wgslsmith_f_op_f32(f32(-1f) * -1088f);
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(func_3(1i)), _wgslsmith_f_op_f32(step(896f, _wgslsmith_f_op_f32(f32(-1f) * -105f))), -111f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(171f)), _wgslsmith_f_op_f32(1000f - 145f), 347f, -1520f), _wgslsmith_f_op_vec4_f32(vec4<f32>(699f, -804f, -1787f, 464f) - vec4<f32>(-508f, 1024f, 1568f, 490f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-285f, -815f, 499f, -538f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1343f, -770f, -1228f, 430f) - vec4<f32>(1f, 1f, 1f, 1f))))));
    let var_1 = !vec3<bool>(true, any(vec3<bool>(false, true, false)), true);
    return vec4<bool>(false, false, var_1.x, any(!vec3<bool>(var_1.x, true, var_1.x)) & true);
}

fn func_1(arg_0: i32) -> vec4<f32> {
    let var_0 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.a & u_input.a), u_input.b), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 4294967295u, u_input.a)), vec3<u32>(u_input.b.x, ~u_input.a, u_input.b.x | u_input.a)), ~(~u_input.b.x), u_input.b.x);
    global2 = array<i32, 26>();
    var var_1 = u_input.b;
    var var_2 = Struct_1(u_input.b, !select(func_2(), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), !func_2().x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-818f, 703f, -852f, -1109f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-890f, -1000f, -1000f, 679f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1601f, -855f, -1000f, -136f) * vec4<f32>(608f, 1563f, 1000f, -969f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-149f, 257f, 1000f, 170f))), func_2())))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-679f)) * -336f))));
    var var_3 = vec2<bool>(var_2.b.x, all(var_2.b.xyw));
    return vec4<f32>(_wgslsmith_div_f32(316f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(510f, _wgslsmith_div_f32(var_2.c.x, 559f))) - 988f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.c.x)) * 2172f), -1318f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.c.x))), var_2.c.x)) + -981f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 18u)];
    var var_1 = _wgslsmith_f_op_f32(floor(902f));
    global2 = array<i32, 26>();
    var var_2 = var_0.c.xyx;
    var var_3 = abs(-1373i);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.c)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)))), _wgslsmith_f_op_vec4_f32(func_1(2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~4294967295u ^ u_input.b.x), ~1u, 61623u | ~_wgslsmith_clamp_u32(var_0.a.x, 20500u, 46157u), u_input.a & 37377u));
}

