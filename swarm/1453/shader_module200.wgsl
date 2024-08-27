struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(false, false, false);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: f32) -> f32 {
    global0 = array<bool, 3>();
    let var_0 = arg_1.x;
    var var_1 = ~_wgslsmith_add_u32(104740u, u_input.b.x);
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    return _wgslsmith_f_op_f32(f32(-1f) * -525f);
}

fn func_2(arg_0: f32) -> vec2<u32> {
    var var_0 = ~(~select(min(~u_input.a.x, select(21057i, u_input.c, false)), firstLeadingBit(_wgslsmith_sub_i32(0i, u_input.a.x)), (-1000f >= arg_0) | !global0[_wgslsmith_index_u32(u_input.b.x, 3u)]));
    global0 = array<bool, 3>();
    var var_1 = select(vec4<bool>(!(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(4294967295u, 3u)], vec4<f32>(arg_0, 530f, -312f, arg_0), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), arg_0)) <= _wgslsmith_f_op_f32(-arg_0)), !(!(!global0[_wgslsmith_index_u32(u_input.b.x, 3u)])), global0[_wgslsmith_index_u32(4294967295u, 3u)], !global0[_wgslsmith_index_u32(~(~u_input.b.x), 3u)]), select(select(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 3u)], true, global0[_wgslsmith_index_u32(u_input.d, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(21768u, 3u)], true, global0[_wgslsmith_index_u32(u_input.d, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 3u)], false, false)), vec4<bool>(global0[_wgslsmith_index_u32(~u_input.d, 3u)], true, true, global0[_wgslsmith_index_u32(48977u, 3u)] || global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), true), vec4<bool>(all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 3u)], global0[_wgslsmith_index_u32(u_input.d, 3u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 3u)]))), true, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 7888u), vec2<u32>(u_input.b.x, 23123u)), abs(0u), ~u_input.d), 3u)], !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, 44487u, u_input.d), 3u)]), any(select(vec4<bool>(true, false, true, false), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], true, global0[_wgslsmith_index_u32(u_input.d, 3u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(9595u, 3u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(u_input.b.x, 3u)], false)), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(5432u, 3u)], true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b.x, 3u)], true), false)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~max(vec3<u32>(4294967295u, 37748u, u_input.d), vec3<u32>(u_input.b.x, u_input.b.x, 15369u)), vec3<u32>(abs(u_input.b.x), 0u, u_input.d)), 3u)] || !all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], true, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)])));
    let var_2 = Struct_3(~(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.b.x, 15088u, u_input.d, u_input.d)), u_input.b) | u_input.b), ~(-1i));
    let var_3 = Struct_2(var_2.a, vec3<bool>(!((-1000f > arg_0) || (var_1.x && global0[_wgslsmith_index_u32(var_2.a.x, 3u)])), var_1.x, all(vec4<bool>(true, true, true, true))), Struct_1(var_1.xy, (_wgslsmith_sub_i32(32913i, u_input.c) << (var_2.a.x % 32u)) | var_2.b, select(~firstLeadingBit(u_input.a), vec2<i32>(var_2.b, -2147483647i) ^ u_input.a, !(!var_1.zw))), Struct_1(vec2<bool>(!(global0[_wgslsmith_index_u32(var_2.a.x, 3u)] || false), false), 2147483647i, _wgslsmith_add_vec2_i32(~vec2<i32>(var_2.b, var_2.b) | reverseBits(u_input.a), u_input.a)));
    return _wgslsmith_mult_vec2_u32(~u_input.b.xy, abs(var_2.a.yz));
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(243f, -140f, -173f) - vec3<f32>(858f, 2042f, 868f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1955f, 150f, 1524f))))));
    let var_1 = Struct_3(vec4<u32>(5058u, arg_0.x, _wgslsmith_mod_u32(arg_0.x, ~0u) >> (arg_0.x % 32u), _wgslsmith_sub_u32(arg_0.x, ~select(5907u, arg_0.x, global0[_wgslsmith_index_u32(26002u, 3u)]))), firstTrailingBit(u_input.a.x));
    var var_2 = -vec4<i32>(-1i, -2147483647i, ~1i, _wgslsmith_sub_i32(abs(0i), -2147483647i));
    global0 = array<bool, 3>();
    let var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~var_1.a.zy), vec2<u32>(~17049u, ~12125u), vec2<u32>(~abs(u_input.b.x), 0u)), vec2<u32>(u_input.d, 31246u));
    return Struct_1(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 3u)], all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 3u)]))), firstTrailingBit(_wgslsmith_add_i32(var_2.x, ~var_2.x)), vec2<i32>(-1i, -_wgslsmith_dot_vec2_i32(var_2.yx, _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, 41090i), vec2<i32>(var_1.b, var_2.x)))));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4(~min(abs(func_2(-856f)), vec2<u32>(0u, 4294967295u)));
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    var var_1 = select(u_input.a, _wgslsmith_sub_vec2_i32(~max(-vec2<i32>(1i, u_input.a.x), reverseBits(var_0.c)), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, u_input.c), u_input.c), 1i)), all(vec4<bool>(!all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 3u)], var_0.a.x, false, var_0.a.x)), false, true, global0[_wgslsmith_index_u32(~u_input.b.x, 3u)] & any(vec2<bool>(true, true)))));
    return StorageBuffer(_wgslsmith_add_u32(1u, u_input.b.x), _wgslsmith_mult_u32(abs(28850u) >> (~u_input.d % 32u), _wgslsmith_clamp_u32(abs(~u_input.d), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), ~23386u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1491f, 262f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(783f, -110f), vec2<f32>(2293f, -556f), true))))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 3>();
    let x = u_input.a;
    s_output = func_1();
}

