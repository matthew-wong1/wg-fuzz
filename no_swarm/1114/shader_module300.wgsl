struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(4294967295u, 2752u, 4294967295u, 1u, 0u, 49726u, 1u, 10630u, 38570u, 36751u, 15141u, 4294967295u, 4294967295u, 1u, 0u, 8564u, 23959u, 0u, 1u, 4294967295u, 10471u, 0u, 0u, 4294967295u, 1u, 33876u, 9609u, 1u, 4294967295u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global0 = array<u32, 29>();
    var var_0 = true;
    let var_1 = vec3<bool>(arg_0.a, false, arg_0.a);
    let var_2 = Struct_1(_wgslsmith_div_u32(1u, ~48574u) >= ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(~34732u, 29u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.a), vec4<u32>(10855u, 0u, u_input.c, u_input.c))));
    var var_3 = Struct_1(any(!vec2<bool>(var_1.x, !var_1.x)));
    return var_2;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    global0 = array<u32, 29>();
    let var_0 = 865f;
    return func_2(Struct_1(true), var_0);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<u32, 29>();
    return vec4<bool>(false, arg_0.a, arg_1.a, arg_1.a && arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 29>();
    var var_0 = func_1(~(~u_input.c), u_input.d.x | _wgslsmith_sub_i32(9670i, _wgslsmith_dot_vec3_i32(u_input.b.ywx, _wgslsmith_clamp_vec3_i32(u_input.b.wyx, vec3<i32>(-22295i, -8069i, -2147483647i), u_input.b.xzz))));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1878f, -121f, var_0.a))))), 463f, 598f, _wgslsmith_f_op_f32(trunc(-916f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1119f, 317f, -1104f, -1581f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-142f, 1000f, -565f, -418f))))));
    let var_2 = var_1.x;
    var var_3 = u_input.d;
    var var_4 = Struct_1(false);
    var_3 = abs(select(vec2<i32>(_wgslsmith_add_i32(-2147483647i, u_input.b.x) ^ -u_input.d.x, (-1i ^ u_input.d.x) | u_input.d.x), u_input.b.zz, !vec2<bool>(func_1(43017u, u_input.d.x).a, var_4.a)));
    let var_5 = _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(firstTrailingBit(_wgslsmith_clamp_i32(0i, var_3.x, -564i)), var_3.x)), vec2<i32>(u_input.d.x & 28785i, -(i32(-1i) * -30017i)));
    var var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + -2059f), 367f, _wgslsmith_f_op_f32(f32(-1f) * -618f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -243f, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 400f, -1881f, 349f) * vec4<f32>(var_1.x, var_1.x, 217f, var_1.x)), func_3(Struct_1(false), Struct_1(var_0.a)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(528f, 313f, var_1.x, 1688f) - vec4<f32>(-1397f, 434f, var_1.x, 928f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1454f, var_1.x, var_1.x, -519f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(157f, var_1.x, var_1.x, 824f))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(var_3.x, ~(-1i), firstTrailingBit(u_input.d.x)), ~u_input.b.zyy)));
}

