struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 28>();
    var var_0 = vec2<bool>(true, true);
    var var_1 = any(!vec4<bool>(!var_0.x, all(!vec3<bool>(var_0.x, true, true)), var_0.x, var_0.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-380f, _wgslsmith_f_op_f32(f32(-1f) * -1732f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1371f, -280f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1362f, 403f)))))));
    let var_3 = vec3<u32>(~7237u, u_input.b | _wgslsmith_mod_u32(u_input.b, 32628u), ~u_input.a.x);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(741f - 402f))))), var_2.x));
}

fn func_2() -> Struct_3 {
    let var_0 = countOneBits(~u_input.c.x);
    global0 = array<Struct_1, 28>();
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1978f, -622f)) - 484f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(525f, -161f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -1030f))), _wgslsmith_div_f32(-1400f, -290f)), true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~u_input.a.wy), vec2<u32>(~1u, ~89179u)) | u_input.a.x, 28u)]);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: f32) -> Struct_1 {
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    let var_0 = func_2();
    let var_1 = var_0.a.yz;
    global0 = array<Struct_1, 28>();
    return Struct_1(vec3<i32>(-53742i, var_0.c.a.x, abs(-51553i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~abs(vec4<u32>(1u, u_input.a.x, 11097u, u_input.a.x)) ^ ~reverseBits(u_input.a)));
    let var_1 = func_1(var_0, Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1049f, -1000f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1214f, 1113f), vec2<f32>(-1343f, 1993f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-474f, 642f), vec2<f32>(-1000f, 397f)))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-796f, 259f, 244f), vec3<f32>(-1255f, 409f, -830f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(291f, -755f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1080f)))), global0[_wgslsmith_index_u32(~(~2046u), 28u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1722f + 1040f)) + -2086f));
    global0 = array<Struct_1, 28>();
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(countOneBits(4294967295u ^ var_0.x), ~max(~18986u, 1u)), 1u, firstTrailingBit(_wgslsmith_mult_u32(countOneBits(var_0.x), var_0.x)), 1u);
    let var_3 = func_2();
    var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_add_u32(var_0.x, var_2.x), ~u_input.a.x), 54850u, firstTrailingBit(max(4294967295u, 77689u)) & (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_0.x), u_input.a.xxx) ^ 25870u), _wgslsmith_mult_u32(reverseBits(~var_0.x), var_0.x)), vec4<u32>(u_input.a.x, var_0.x | ~select(4294967295u, 4294967295u, true), ~select(20208u, 25596u, true), u_input.a.x));
    global0 = array<Struct_1, 28>();
    let var_4 = Struct_3(_wgslsmith_div_vec3_f32(var_3.a, var_3.a), 4294967295u == _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_sub_u32(u_input.a.x, var_0.x)), Struct_1(~u_input.c ^ -select(var_1.a, vec3<i32>(var_1.a.x, var_3.c.a.x, 40662i), vec3<bool>(var_3.b, var_3.b, var_3.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.a.x, 1000f, 1084f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(var_3.a, vec3<f32>(var_4.a.x, var_3.a.x, var_4.a.x)))))))), 1i);
}

