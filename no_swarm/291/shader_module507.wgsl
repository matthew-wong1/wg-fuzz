struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: array<i32, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-527f, arg_1.x)))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(f32(-1f) * -750f)))), 1432f));
    global0 = array<bool, 19>();
    return Struct_1(u_input.b, vec3<i32>(_wgslsmith_sub_i32(-2147483647i, ~_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(1u, 22u)], 0i)), ~0i, -u_input.b), ~arg_0, arg_1.ww, -_wgslsmith_clamp_vec4_i32((vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 22u)], arg_0, u_input.b, -847i) & vec4<i32>(arg_0, -1i, arg_0, 0i)) >> (~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), ~abs(vec4<i32>(global1[_wgslsmith_index_u32(5732u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], 1i, -1i)), ~vec4<i32>(-2147483647i, -2147483647i, 2147483647i, 14276i)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = func_2(_wgslsmith_mod_i32(-71508i, ~0i & ((u_input.b & -1i) << (~4294967295u % 32u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-498f, 754f, arg_1.c.d.x, arg_1.c.d.x))))))))));
    global1 = array<i32, 22>();
    let var_1 = vec4<u32>(4294967295u, 1u, u_input.a, 4294967295u);
    global1 = array<i32, 22>();
    global1 = array<i32, 22>();
    return _wgslsmith_f_op_vec2_f32(round(arg_1.c.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-(-30228i & _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, global1[_wgslsmith_index_u32(u_input.a, 22u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 22u)], u_input.b)), u_input.b)), vec3<i32>(-(-2147483647i >> ((1u >> (u_input.a % 32u)) % 32u)), ~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u, u_input.a, u_input.a), 22u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a << (firstTrailingBit(27854u) % 32u), ~(~1u)), 22u)]), 0i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1976f, -972f), -1070f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 19u)], false)), Struct_2(vec3<f32>(-1044f, -1158f, -909f), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 22u)], vec3<i32>(44900i, -2147483647i, global1[_wgslsmith_index_u32(u_input.a, 22u)]), 16561i, vec2<f32>(1181f, 694f), vec4<i32>(-2147483647i, -11164i, 66202i, global1[_wgslsmith_index_u32(u_input.a, 22u)])), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 22u)], vec3<i32>(1i, 2147483647i, u_input.b), 2147483647i, vec2<f32>(-451f, -722f), vec4<i32>(global1[_wgslsmith_index_u32(5672u, 22u)], u_input.b, 0i, u_input.b))))))), -_wgslsmith_mod_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(15624u, 22u)], u_input.b, 2147483647i), vec4<i32>(u_input.b, u_input.b, -32798i, u_input.b)), vec4<i32>(-14003i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 15557u, 2199u), vec4<u32>(u_input.a, 0u, u_input.a, 15318u)), 22u)], min(-2147483647i, 1i), 0i)));
    global1 = array<i32, 22>();
    let var_1 = !(!vec3<bool>(!(1i == u_input.b), false, global0[_wgslsmith_index_u32(4294967295u, 19u)]));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1522f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1925f) - var_0.d.x)), 2565f), 861f, -1323f);
    global1 = array<i32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(vec3<u32>(~u_input.a, ~16877u, _wgslsmith_mod_u32(29093u, u_input.a)))));
}

