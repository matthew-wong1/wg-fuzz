struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global2: array<vec4<bool>, 23>;

var<private> global3: array<f32, 12>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global0 = vec4<bool>(!(all(global2[_wgslsmith_index_u32(abs(1u), 23u)]) & global0.x), all(!global2[_wgslsmith_index_u32(~(~1475u), 23u)]), any(!vec3<bool>(!arg_0.a, global1.x, global0.x)), !(!global0.x));
    global1 = !select(global2[_wgslsmith_index_u32(~arg_0.b, 23u)], !global2[_wgslsmith_index_u32(9768u, 23u)], !((u_input.a.x <= arg_0.b) & true));
    let var_0 = arg_0;
    var var_1 = _wgslsmith_clamp_vec3_u32(abs(_wgslsmith_add_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, arg_0.b), vec3<u32>(1u, 1u, var_0.b)), ~vec3<u32>(u_input.a.x, 4294967295u, arg_0.b), vec3<bool>(true, var_0.a, false)), max(~vec3<u32>(1u, var_0.b, arg_0.b), ~vec3<u32>(u_input.a.x, 98862u, var_0.b)))), min(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b, min(16246u, 0u), _wgslsmith_div_u32(0u, 115173u)), ~(~vec3<u32>(84559u, 0u, u_input.a.x))), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b, 22373u, arg_0.b), vec3<u32>(11180u, 2218u, arg_0.b))), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_clamp_u32(u_input.a.x, var_0.b, 1u), arg_0.b), abs(vec3<u32>(var_0.b, 12426u, 73179u))) | abs(~countOneBits(vec3<u32>(0u, arg_0.b, 1447u))));
    let var_2 = min(~_wgslsmith_dot_vec2_u32(~u_input.a | _wgslsmith_add_vec2_u32(vec2<u32>(32269u, 4294967295u), vec2<u32>(var_1.x, 50393u)), select(u_input.a, ~vec2<u32>(arg_0.b, u_input.a.x), select(global1.zw, global1.wx, false))), var_0.b);
    return ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, 1u >> (0u % 32u), var_2), _wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0.b, 4294967295u, var_1.x), ~vec3<u32>(arg_0.b, 75323u, var_2))) | max(vec3<u32>(~(u_input.a.x >> (arg_0.b % 32u)), 49872u, var_2), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(58499u, 1u, var_2), ~vec3<u32>(178u, var_0.b, var_1.x))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec3<u32> {
    global1 = global2[_wgslsmith_index_u32(~(~(~(arg_0.b ^ abs(492u)))), 23u)];
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 12u)])) * _wgslsmith_f_op_f32(min(2220f, _wgslsmith_f_op_f32(step(1309f, -968f))))))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(4294967295u, 12u)], -201f) - global3[_wgslsmith_index_u32(min(u_input.a.x, 4294967295u), 12u)])))));
    var var_1 = 35658i;
    global2 = array<vec4<bool>, 23>();
    var var_2 = ~_wgslsmith_add_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, ~(-1i), 11808i), firstLeadingBit(~vec3<i32>(2147483647i, -1i, 0i))));
    return _wgslsmith_add_vec3_u32(reverseBits(select(func_3(arg_0), vec3<u32>(countOneBits(arg_0.b), 80582u, u_input.a.x), true)), vec3<u32>(4294967295u, 1u, arg_0.b ^ u_input.a.x) ^ reverseBits(vec3<u32>(arg_0.b, 1u | arg_0.b, arg_0.b & arg_0.b)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = max(max(vec3<u32>(min(49273u, firstTrailingBit(4294967295u)), 4294967295u, ~4294967295u), countOneBits(~vec3<u32>(u_input.a.x, arg_0.b, u_input.a.x) >> (func_2(arg_0, true) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 1u, u_input.a.x) ^ ~(~vec3<u32>(50341u, 3118u, arg_0.b)), select(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 1u), vec3<u32>(arg_0.b, u_input.a.x, arg_0.b), vec3<u32>(u_input.a.x, arg_0.b, 8232u)), vec3<u32>(arg_0.b, ~arg_0.b, 4294967295u), true)));
    var_0 = vec3<u32>(4294967295u, ~(~var_0.x), ~firstLeadingBit(u_input.a.x));
    global0 = select(vec4<bool>(global0.x, !(!(!global0.x)), firstTrailingBit(~1i) >= min(-1i, firstLeadingBit(-12394i)), global1.x), !vec4<bool>(true, select(any(global2[_wgslsmith_index_u32(arg_0.b, 23u)]), false && arg_0.a, any(vec2<bool>(arg_0.a, true))), true, false), global1.x);
    let var_1 = Struct_1((u_input.a.x > ~min(44451u, 1u)) || all(select(global2[_wgslsmith_index_u32(var_0.x, 23u)], !global2[_wgslsmith_index_u32(var_0.x, 23u)], !global2[_wgslsmith_index_u32(arg_0.b, 23u)])), ~var_0.x);
    return 5660u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(2488i, _wgslsmith_dot_vec2_i32(max(vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 4335i)), vec2<i32>(1i, 1i))), select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-61716i, -349i, 20140i, -30846i), vec4<i32>(-25329i, 25177i, 2147483647i, -1i)), _wgslsmith_add_i32(0i, -16571i)), vec2<i32>(_wgslsmith_add_i32(17645i, 17734i), -40008i), global1.yx)), -8232i, ~(firstTrailingBit(select(20961i, 10665i, false)) << (func_1(Struct_1(true, u_input.a.x)) % 32u)));
    var var_1 = max(39528i, _wgslsmith_div_i32(0i, abs(var_0.x)));
    let var_2 = Struct_1(global3[_wgslsmith_index_u32(~firstLeadingBit(u_input.a.x), 12u)] != 1126f, u_input.a.x);
    let var_3 = var_2;
    global0 = vec4<bool>(!(926f < _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(func_1(Struct_1(false, 4294967295u)), 12u)]))), true, var_3.a, true);
    var var_4 = ~(~54480u);
    global2 = array<vec4<bool>, 23>();
    global2 = array<vec4<bool>, 23>();
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-635f)), global3[_wgslsmith_index_u32(u_input.a.x, 12u)], ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_5.b, 4294967295u, var_3.b)) | vec3<u32>(1u, var_5.b, 70688u), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.b, u_input.a.x, var_5.b), vec3<u32>(4294967295u, var_5.b, 68758u)))));
}

