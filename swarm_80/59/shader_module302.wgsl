struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec2<u32> = vec2<u32>(34179u, 24929u);

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<Struct_1, 30>;

var<private> global4: array<Struct_1, 15>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> vec2<f32> {
    global3 = array<Struct_1, 30>();
    let var_0 = Struct_2(-u_input.b.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(410f + 1271f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 1018f)), 0u, _wgslsmith_f_op_f32(f32(-1f) * -2668f));
    global3 = array<Struct_1, 30>();
    global0 = true;
    global2 = array<Struct_1, 29>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, var_0.b));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_3, arg_3: vec4<bool>) -> u32 {
    let var_0 = Struct_1(vec4<bool>(~firstTrailingBit(-6400i) != (u_input.b.x >> (~arg_2.a.x % 32u)), _wgslsmith_f_op_f32(565f * _wgslsmith_f_op_vec2_f32(func_1()).x) >= -929f, arg_2.a.x != abs(7440u), !arg_2.b.a.x));
    var var_1 = Struct_2(vec2<i32>(-28902i, -(u_input.b.x | u_input.b.x) >> (firstLeadingBit(~1u) % 32u)), 1938f, arg_1, arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-742f, _wgslsmith_f_op_f32(arg_1 - 556f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1)))) + _wgslsmith_f_op_f32(ceil(arg_1))));
    global1 = ~_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(9838u | global1.x, _wgslsmith_sub_u32(var_1.d, var_1.d)), arg_2.a.zw), _wgslsmith_mod_vec2_u32(~arg_0.yz, u_input.a.wy));
    global0 = all(vec4<bool>(!(!arg_3.x), _wgslsmith_f_op_f32(1406f * _wgslsmith_f_op_f32(-var_1.b)) < arg_1, true, true));
    var var_2 = u_input.b.yzw;
    return 7724u << ((1u ^ var_1.d) % 32u);
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> vec2<f32> {
    let var_0 = ~(firstTrailingBit(~func_3(vec4<u32>(4294967295u, global1.x, 4294967295u, arg_0), 180f, Struct_3(u_input.d, global3[_wgslsmith_index_u32(1u, 30u)]), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true))) | _wgslsmith_dot_vec3_u32(u_input.d.xyz, min(vec3<u32>(arg_0, arg_0, global1.x) ^ u_input.d.xzz, vec3<u32>(21650u, 3432u, 46911u))));
    global2 = array<Struct_1, 29>();
    let var_1 = Struct_1(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x));
    global0 = false & arg_1.x;
    let var_2 = arg_0;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-221f - -1228f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -197f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(303f, 132f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.www;
    var var_1 = -u_input.b;
    let var_2 = max(vec4<u32>(min(abs(reverseBits(u_input.a.x)), 4294967295u), _wgslsmith_div_u32(global1.x, ~global1.x), 0u, global1.x), reverseBits(firstTrailingBit(max(~u_input.d, u_input.a ^ u_input.d))));
    let var_3 = vec2<bool>(true, true);
    global1 = u_input.a.zz;
    let var_4 = Struct_2(vec2<i32>(max(u_input.b.x, ~var_0.x), var_1.x), 272f, 570f, 4294967295u, _wgslsmith_f_op_f32(-695f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-450f, -569f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(949f + -395f), _wgslsmith_f_op_f32(min(1351f, 763f))))));
    let var_5 = _wgslsmith_div_vec2_f32(vec2<f32>(-292f, var_4.e), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(func_2(global1.x << (_wgslsmith_mod_u32(var_2.x, u_input.d.x) % 32u), !select(vec3<bool>(false, var_3.x, var_3.x), vec3<bool>(false, true, true), vec3<bool>(true, var_3.x, var_3.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d, u_input.b.zxz, abs(var_0.x) >> (~0u % 32u));
}

