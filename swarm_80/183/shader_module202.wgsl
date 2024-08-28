struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<bool, 12> = array<bool, 12>(false, false, true, false, false, true, false, false, true, false, true, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3) -> f32 {
    global1 = array<bool, 12>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-480f, -251f))));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    var var_0 = -(-_wgslsmith_mod_i32(_wgslsmith_clamp_i32(2595i, global0[_wgslsmith_index_u32(u_input.a, 27u)], 2147483647i), firstLeadingBit(1i)) & _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -14959i, u_input.b.x, -u_input.b.x, ~global0[_wgslsmith_index_u32(u_input.c.x, 27u)]), ~abs(vec4<i32>(global0[_wgslsmith_index_u32(15136u, 27u)], global0[_wgslsmith_index_u32(6390u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)]))));
    var var_1 = true;
    var var_2 = Struct_2(select(!select(!vec4<bool>(global1[_wgslsmith_index_u32(44488u, 12u)], false, global1[_wgslsmith_index_u32(u_input.a, 12u)], false), vec4<bool>(global1[_wgslsmith_index_u32(20476u, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)], true, true), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)], true), vec4<bool>(global1[_wgslsmith_index_u32(101245u, 12u)], true, true, true), false)), vec4<bool>(false, u_input.c.x == _wgslsmith_sub_u32(28062u, u_input.a), !all(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)])), any(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 12u)]))), false));
    let var_3 = 0u;
    var_0 = -2147483647i;
    return u_input.b.x;
}

fn func_1() -> vec4<bool> {
    var var_0 = true;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(779f)), _wgslsmith_div_f32(-445f, 613f), _wgslsmith_f_op_f32(ceil(-554f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(518f, -561f, global1[_wgslsmith_index_u32(8815u, 12u)])), -511f, _wgslsmith_f_op_f32(-1153f * -1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + _wgslsmith_f_op_f32(func_2(Struct_3(global1[_wgslsmith_index_u32(u_input.a, 12u)], Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], false, false, false)), Struct_1(u_input.d, -2147483647i, u_input.a), true, vec4<bool>(global1[_wgslsmith_index_u32(35795u, 12u)], true, global1[_wgslsmith_index_u32(25909u, 12u)], true))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -187f), 407f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(154f, -685f))))));
    var var_2 = Struct_1(_wgslsmith_mult_i32(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 27u)], i32(-1i) * -2147483647i, true), -func_3(vec3<f32>(var_1.x, var_1.x, var_1.x))) | -2147483647i, -1i, u_input.c.x);
    var_2 = Struct_1(_wgslsmith_clamp_i32(u_input.e, u_input.d, -(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(0u, 27u)], 1i) ^ 1i)), abs(select(u_input.d, func_3(vec3<f32>(var_1.x, var_1.x, 631f)) >> (u_input.c.x % 32u), true)), abs(_wgslsmith_mod_u32(~11039u, _wgslsmith_sub_u32(var_2.c, ~0u))));
    let var_3 = 4294967295u;
    return !select(select(vec4<bool>(!global1[_wgslsmith_index_u32(62497u, 12u)], all(vec4<bool>(global1[_wgslsmith_index_u32(var_3, 12u)], false, false, global1[_wgslsmith_index_u32(var_3, 12u)])), true, global1[_wgslsmith_index_u32(2156u, 12u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(var_2.c, 12u)], false, global1[_wgslsmith_index_u32(16380u, 12u)]), true), vec4<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(var_3, 58734u)), 12u)], any(vec4<bool>(global1[_wgslsmith_index_u32(var_3, 12u)], global1[_wgslsmith_index_u32(var_2.c, 12u)], true, global1[_wgslsmith_index_u32(u_input.a, 12u)])), select(global1[_wgslsmith_index_u32(u_input.c.x, 12u)] | false, 36804u <= var_3, true), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_3, u_input.a), 12u)]), global1[_wgslsmith_index_u32(u_input.c.x & (_wgslsmith_add_u32(var_2.c, 4294967295u) | 1u), 12u)]);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: f32, arg_3: u32) -> Struct_2 {
    let var_0 = func_1().xx;
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    global1 = array<bool, 12>();
    global0 = array<i32, 27>();
    return Struct_2(vec4<bool>(~firstTrailingBit(u_input.b.x) < firstLeadingBit(-6349i), func_1().x, any(arg_0.zyy), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!func_1(), countOneBits(~vec4<u32>(_wgslsmith_clamp_u32(1u, 1u, u_input.a), ~u_input.c.x, ~u_input.c.x, 72325u << (u_input.c.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-784f, _wgslsmith_f_op_f32(-795f + -731f)))), 1u);
    var var_1 = Struct_1(i32(-1i) * -1i, ~firstTrailingBit(0i), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(707f, 123f) - vec2<f32>(706f, 132f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1857f, 1681f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(903f, 1674f) * vec2<f32>(1439f, -598f))))), vec3<u32>(_wgslsmith_mult_u32(~(33976u >> (u_input.c.x % 32u)), 98864u), u_input.c.x, 55579u));
}

