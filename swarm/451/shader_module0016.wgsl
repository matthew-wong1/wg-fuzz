struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1054f;

var<private> global1: array<i32, 14>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32) -> vec4<f32> {
    let var_0 = arg_1;
    global1 = array<i32, 14>();
    global1 = array<i32, 14>();
    global1 = array<i32, 14>();
    global1 = array<i32, 14>();
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(734f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), arg_2, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2)))), vec4<f32>(-1855f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1443f)), arg_2));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<f32>) -> vec2<i32> {
    return -(~select(vec2<i32>(reverseBits(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 31439i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], global1[_wgslsmith_index_u32(0u, 14u)]))), _wgslsmith_mult_vec2_i32(select(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], global1[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec2<i32>(49966i, -2147483647i), false), _wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], 15518i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], -33034i))), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))));
}

fn func_3() -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(440f)) - -1696f)))), -986f);
    let var_1 = any(select(!vec3<bool>(true, u_input.a.x <= u_input.a.x, all(vec3<bool>(false, false, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true));
    global0 = var_0.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -667f, -803f), vec3<f32>(-540f, 1315f, 1298f))) + vec3<f32>(_wgslsmith_div_f32(-673f, var_0.x), 1000f, -858f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -394f, var_0.x) * vec3<f32>(var_0.x, -605f, var_0.x)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(1644f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1173f)))))));
    global1 = array<i32, 14>();
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 7835u;
    let var_1 = Struct_1(vec3<bool>(true, true, true));
    global0 = _wgslsmith_f_op_f32(2053f * -817f);
    let x = u_input.a;
    s_output = StorageBuffer(4621u, _wgslsmith_f_op_f32(f32(-1f) * -438f), firstTrailingBit(0u), _wgslsmith_div_vec2_i32(func_2(_wgslsmith_f_op_vec4_f32(func_1(global1[_wgslsmith_index_u32(53066u, 14u)], false && var_1.a.x, -392f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(317f, 1000f)) - -837f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(209f, -1411f, 1026f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-757f, -1000f, -522f) + vec3<f32>(-474f, -480f, -246f)))), _wgslsmith_add_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(59539u, 14u)], global1[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec2<i32>(global1[_wgslsmith_index_u32(1u, 14u)] >> (u_input.a.x % 32u), global1[_wgslsmith_index_u32(u_input.a.x & 13803u, 14u)]))), vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -3402f), -439f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1822f + 961f), _wgslsmith_f_op_f32(-794f - 540f))), 1105f))));
}

