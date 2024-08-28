struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18>;

var<private> global1: vec3<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    let var_0 = -6016i;
    global0 = array<vec3<f32>, 18>();
    let var_1 = -5599i;
    var var_2 = Struct_1(_wgslsmith_mod_i32(var_1, 15563i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1058f, global1.x, global1.x, 108f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 803f, global1.x, 1369f), vec4<f32>(195f, -1045f, -1913f, -139f)))))), vec4<u32>(29255u, max(max(1u, u_input.a & 0u), ~u_input.a & firstLeadingBit(u_input.b)), ~(~(~4294967295u)), 4294967295u), !(!(_wgslsmith_div_f32(-1214f, 1000f) >= _wgslsmith_f_op_f32(-global1.x))), (any(vec3<bool>(false, false, false)) || (_wgslsmith_f_op_f32(-global1.x) >= _wgslsmith_f_op_f32(-305f + global1.x))) | false);
    var var_3 = _wgslsmith_add_vec2_u32(abs(var_2.c.wy), ~(vec2<u32>(u_input.a, u_input.a) | ~vec2<u32>(u_input.a, 0u)) & (vec2<u32>(reverseBits(4294967295u), countOneBits(0u)) | ~min(vec2<u32>(4294967295u, 8012u), var_2.c.wz)));
    return 2147483647i;
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    let var_0 = max(u_input.b, _wgslsmith_mod_u32(1u, 1u));
    let var_1 = any(vec3<bool>(true, true, true));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(ceil(-105f)), 1132f) + _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(firstTrailingBit(var_0) | u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.b, 18u)])) * _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~min(var_0, 118776u), countOneBits(1u) ^ ~var_0), 18u)]));
    let var_2 = select(firstLeadingBit(u_input.b), reverseBits(~firstTrailingBit(var_0 | 143993u)), false);
    var var_3 = Struct_5(Struct_3(global1.xy, vec4<u32>(21005u, firstTrailingBit(~var_0), 4459u, 4294967295u), _wgslsmith_f_op_f32(-global1.x)), func_3(), min(-2147483647i, -2147483647i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1375f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-638f, global1.x)))), false)), global1.yz, select(vec2<bool>(true, true), select(vec2<bool>(var_1, var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), false), select(var_1, false, true)), all(select(vec4<bool>(true, var_1, var_1, false), vec4<bool>(true, var_1, true, var_1), vec4<bool>(var_1, false, true, var_1)))))));
    return -1i;
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global1.x, -1263f) * _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.b, 18u)])))));
    let var_1 = !(!(!(!select(true, true, true))));
    global0 = array<vec3<f32>, 18>();
    var var_2 = max(abs(firstLeadingBit(select(-vec4<i32>(1i, 2147483647i, -9367i, 16742i), vec4<i32>(2147483647i, 40995i, 21191i, -19513i), vec4<bool>(false, var_1, true, false)))), vec4<i32>(-func_2(firstLeadingBit(vec2<i32>(28179i, -28137i))), 2147483647i, -1i, 1i << (~(~u_input.a) % 32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-798f, 741f, var_0.x, _wgslsmith_f_op_f32(-global1.x)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1141f, -986f)), -1293f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global1.x) - _wgslsmith_f_op_f32(sign(global1.x))))), _wgslsmith_f_op_f32(-global1.x)));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 18>();
    let var_0 = ((func_1() & _wgslsmith_dot_vec2_i32(vec2<i32>(-11852i, -2147483647i), vec2<i32>(1i, 2147483647i))) >> (abs(reverseBits(7071u)) % 32u)) ^ 0i;
    var var_1 = !select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec2<bool>(true, false))), any(vec4<bool>(false, false, false, false)) != true);
    var var_2 = min(select(func_1(), var_0, true | select(any(vec3<bool>(var_1.x, var_1.x, var_1.x)), var_0 == 1i, all(vec4<bool>(false, var_1.x, var_1.x, true)))), ~(~11782i));
    var var_3 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - global1.x), _wgslsmith_f_op_f32(-global1.x), true)))), 433f, global0[_wgslsmith_index_u32(~19172u, 18u)]);
}

