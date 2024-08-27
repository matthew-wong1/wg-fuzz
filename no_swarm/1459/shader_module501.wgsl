struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -602f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1045f - 712f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1974f, 1094f) * _wgslsmith_f_op_f32(326f + 367f)))) - _wgslsmith_f_op_f32(step(-963f, -269f))));
    global0 = array<bool, 17>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1432f, var_0, 887f), vec3<f32>(var_0, -184f, -1455f))))), var_0, -select(u_input.b | u_input.b, max(u_input.b, arg_1), all(vec2<bool>(true, true))), ~(~(~1u)), global0[_wgslsmith_index_u32(~(~26945u), 17u)]), arg_1 | reverseBits(~(-1i)));
    var var_2 = 33913u;
    var var_3 = _wgslsmith_add_u32(56479u, u_input.a.x) | (var_1.a.d | _wgslsmith_dot_vec2_u32(~u_input.a.yx, ~arg_2.xy & arg_2.xx));
    return arg_2.x;
}

fn func_3() -> f32 {
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    let var_0 = vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x | _wgslsmith_clamp_u32(~u_input.a.x, ~u_input.a.x, ~u_input.a.x), 17u)] || global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(abs(u_input.a.x), 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x >> (u_input.a.x % 32u), 17u)]);
    let var_1 = ~1u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(401f + _wgslsmith_f_op_f32(min(-102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -951f))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 797f)) + _wgslsmith_f_op_f32(453f - -608f)))))));
}

fn func_2(arg_0: u32, arg_1: f32) -> bool {
    var var_0 = u_input.a;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, arg_1, 415f))) - vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(min(1076f, 840f)), _wgslsmith_f_op_f32(arg_1 + -1000f))), -424f, u_input.b, arg_0, global0[_wgslsmith_index_u32(var_0.x, 17u)]), u_input.b);
    let var_2 = arg_1;
    let var_3 = ~u_input.a.x;
    let var_4 = u_input.a.zww;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a.a.x)) * -1250f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1617f)), 1324f, !var_1.a.e)), var_1.a.b, select(false, true | var_1.a.e, all(vec3<bool>(true, global0[_wgslsmith_index_u32(62890u, 17u)], false))))), global0[_wgslsmith_index_u32(19962u, 17u)])) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_2(~func_1(true, -2147483647i, vec3<u32>(u_input.a.x, u_input.a.x, 56403u) & vec3<u32>(u_input.a.x, u_input.a.x, 7651u)), -234f);
    var var_1 = vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(87736u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, u_input.a.x), u_input.a.xz), ~vec2<u32>(u_input.a.x, 6986u)), _wgslsmith_mult_u32(67942u, func_1(true, u_input.b, vec3<u32>(41958u, u_input.a.x, u_input.a.x))))), 17u)], global0[_wgslsmith_index_u32(12265u, 17u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x ^ 63276u, abs(u_input.a.x)) << (u_input.a.yy % vec2<u32>(32u)), ~u_input.a.xy), 17u)]);
    let var_2 = ~(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(2723u, u_input.a.x), ~countOneBits(83122u)) & max(u_input.a.x, ~_wgslsmith_mod_u32(u_input.a.x, 8136u)));
    var var_3 = ~reverseBits(0i);
    let var_4 = _wgslsmith_dot_vec4_i32(min(_wgslsmith_div_vec4_i32((vec4<i32>(u_input.b, u_input.b, u_input.b, 49380i) ^ vec4<i32>(17520i, 11688i, u_input.b, u_input.b)) >> (~vec4<u32>(1u, 4294967295u, 0u, u_input.a.x) % vec4<u32>(32u)), ~(~vec4<i32>(-1i, -2147483647i, 39589i, -55139i))), min(vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(23007i, u_input.b, u_input.b, -65021i), vec4<i32>(10873i, u_input.b, u_input.b, u_input.b)), 45056i, -2147483647i), select(vec4<i32>(-1i, u_input.b, 14049i, u_input.b), reverseBits(vec4<i32>(-1i, u_input.b, u_input.b, 74279i)), select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(false, false, false, false), true)))), _wgslsmith_sub_vec4_i32(max(-vec4<i32>(12312i, 1i, u_input.b, u_input.b) & countOneBits(vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(-32277i, u_input.b, 0i, -37824i), vec4<i32>(-1i, -1i, -2147483647i, 3396i)) << (u_input.a % vec4<u32>(32u))), vec4<i32>(u_input.b | u_input.b, -1i, countOneBits(_wgslsmith_div_i32(u_input.b, u_input.b)), ~countOneBits(30177i))));
    let var_5 = u_input.b;
    var var_6 = vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(1i, u_input.b), -1926i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-310f, -1055f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1104f, 389f)))))) - vec2<f32>(1783f, -1122f)), var_5);
}

