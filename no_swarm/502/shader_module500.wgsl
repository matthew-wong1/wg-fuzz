struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<vec2<bool>, 16>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    return select(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 39399u), vec4<u32>(0u, 25300u, 0u, 22325u))), abs(4294967295u)), 10467u, false && all(vec4<bool>(true, !arg_2.a.x, true, !arg_2.a.x)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = countOneBits(abs(u_input.b.zw) & u_input.b.wy);
    var var_1 = ~1u >> (func_3(u_input.b.x, -vec2<i32>(-var_0.x, 1i), Struct_1(vec3<bool>(true, any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(46243u, 3u)])), all(vec3<bool>(global0[_wgslsmith_index_u32(24609u, 3u)], global0[_wgslsmith_index_u32(6651u, 3u)], global0[_wgslsmith_index_u32(43866u, 3u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)))) % 32u);
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0)), -1234f), arg_0)))));
    global1 = array<Struct_1, 15>();
    global0 = array<bool, 3>();
    return global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_add_u32(39821u, 19274u), 0u, 1u), min(~vec4<u32>(39997u, 4294967295u, 61091u, 19038u), reverseBits(vec4<u32>(0u, 37050u, 4294967295u, 33410u))))), 15u)];
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_1, 15>();
    var var_0 = _wgslsmith_mult_i32(-2147483647i, u_input.a | _wgslsmith_add_i32(u_input.b.x, u_input.b.x)) ^ (-u_input.a >> (_wgslsmith_div_u32(firstLeadingBit(1u), _wgslsmith_add_u32(countOneBits(0u), 16736u)) % 32u));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-866f, 1269f), vec2<f32>(2079f, -196f), global0[_wgslsmith_index_u32(0u, 3u)])))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f) - _wgslsmith_f_op_f32(-414f + 880f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-116f * -2637f) - _wgslsmith_f_op_f32(-617f - 120f)))), vec2<f32>(748f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-2146f, 1137f))))));
    var_0 = u_input.b.x;
    let var_2 = func_2(var_1.x);
    return Struct_2(func_2(_wgslsmith_f_op_f32(step(889f, _wgslsmith_f_op_f32(f32(-1f) * -531f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = global1[_wgslsmith_index_u32(~(~1u), 15u)];
    var var_2 = -897f;
    var_2 = -1585f;
    var var_3 = firstLeadingBit(~vec2<u32>(~(~82726u), ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(~0u, vec4<u32>(_wgslsmith_mod_u32(~var_3.x, min(_wgslsmith_dot_vec4_u32(vec4<u32>(24761u, 0u, 90986u, var_3.x), vec4<u32>(var_3.x, var_3.x, var_3.x, var_3.x)), var_3.x)), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.x, 0u, 30705u), vec4<u32>(var_3.x, 4294967295u, 0u, 178u)) | _wgslsmith_add_u32(4294967295u, var_3.x)), firstTrailingBit(abs(_wgslsmith_add_u32(58468u, 55921u))), max(~(var_3.x << (55743u % 32u)), ~var_3.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 0i, -61488i, ~0i), -select(firstTrailingBit(u_input.b), u_input.b, !vec4<bool>(true, false, true, var_0.a.a.x))), ~vec3<u32>(reverseBits(~30948u), var_3.x >> (var_3.x % 32u), ~(~4294967295u)), var_3.x);
}

