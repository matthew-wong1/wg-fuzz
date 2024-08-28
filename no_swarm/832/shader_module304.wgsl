struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(759f, 369f), vec2<i32>(2147483647i, 1i), false);

var<private> global1: array<u32, 29>;

var<private> global2: array<f32, 17> = array<f32, 17>(-1395f, -180f, 572f, 135f, 1035f, -1000f, -366f, -157f, -553f, -393f, 1315f, 1508f, -2009f, -825f, -1761f, -370f, 827f);

var<private> global3: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<u32> {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, global2[_wgslsmith_index_u32(1u, 17u)]) * global0.a), _wgslsmith_add_vec2_i32(select(_wgslsmith_add_vec2_i32(-global0.b, vec2<i32>(-46030i, u_input.a)), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(global0.b.x, global0.b.x), vec2<bool>(true, global0.c)) ^ (global0.b | global0.b), global0.c), select(-vec2<i32>(u_input.a, global0.b.x), select(vec2<i32>(global0.b.x, u_input.a) | vec2<i32>(26247i, -33833i), global0.b, !vec2<bool>(global0.c, false)), !select(vec2<bool>(global0.c, global0.c), vec2<bool>(false, false), global0.c))), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)]), 29u)], 17u)], global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(84688u, 29u)], 29u)], 29u)], 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], global1[_wgslsmith_index_u32(1u, 29u)], 6861u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 29u)], 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 45196u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25652u, 29u)], 29u)]))), 17u)]) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.x)) + _wgslsmith_f_op_f32(abs(948f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-380f - -294f) - _wgslsmith_f_op_f32(max(global0.a.x, -381f))))));
    var var_0 = -1000f;
    let var_1 = _wgslsmith_sub_vec3_u32(firstLeadingBit(countOneBits(~min(vec3<u32>(1u, 0u, global1[_wgslsmith_index_u32(80941u, 29u)]), vec3<u32>(68082u, global1[_wgslsmith_index_u32(0u, 29u)], 47252u)))), max(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], 26949u, 0u), vec3<u32>(_wgslsmith_sub_u32(4294967295u, 0u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)], global1[_wgslsmith_index_u32(0u, 29u)])) ^ ~(~(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52094u, 29u)], 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)]) | vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28831u, 29u)], 29u)], 1u))));
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i) << (~(~var_1.yx) % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -1i), -vec2<i32>(1i, 7243i)))) << (~var_1.xy % vec2<u32>(32u));
    let var_3 = any(select(!(!(!vec4<bool>(false, global0.c, false, global0.c))), vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, global0.c), true)), global0.c, false, global0.c), !(!select(vec4<bool>(false, global0.c, global0.c, true), vec4<bool>(global0.c, global0.c, true, false), false))));
    return vec3<u32>(1u, 88728u, var_1.x) & max(var_1, vec3<u32>(~4294967295u, _wgslsmith_mod_u32(23010u, var_1.x & global1[_wgslsmith_index_u32(1u, 29u)]), min(_wgslsmith_mod_u32(var_1.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)]), 0u)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> f32 {
    global0 = Struct_1(global0.a, vec2<i32>(-1i) * -vec2<i32>(4195i, u_input.a), arg_1);
    var var_0 = ~func_3();
    let var_1 = countOneBits(var_0.x);
    global1 = array<u32, 29>();
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(-1054f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.zz >> (var_0.zz % vec2<u32>(32u)), var_0.yx), 17u)])), -176f), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.b.x, arg_2.b.x), global0.b), 0i), firstTrailingBit(arg_2.b & global0.b), global0.b), all(select(!select(vec2<bool>(false, false), vec2<bool>(arg_2.c, arg_1), false), vec2<bool>(arg_2.c, arg_2.c), select(any(vec3<bool>(global0.c, false, false)), true, true))));
    return var_2.a.x;
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50393u, 29u)], 29u)] >> (43880u % 32u), true, Struct_1(global0.a, global0.b, false)))) - 1224f) * global0.a.x);
    var var_1 = vec4<bool>(!all(vec2<bool>(true, true & global0.c)), !any(vec4<bool>(global0.c, all(vec2<bool>(global0.c, false)), true, true)), false, global0.c);
    global2 = array<f32, 17>();
    var var_2 = Struct_1(global0.a, ~global0.b, var_1.x);
    global1 = array<u32, 29>();
    return var_1.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(vec2<bool>(true, true)), global0.c);
    global3 = global0.b.x ^ ~2147483647i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(131266u, 17u)])))) + -1393f));
    var_0 = select(select(!func_1(), !(!vec2<bool>(false, global0.c)), vec2<bool>(any(select(vec4<bool>(true, true, global0.c, global0.c), vec4<bool>(var_0.x, var_0.x, var_0.x, global0.c), vec4<bool>(var_0.x, var_0.x, true, global0.c))), !any(vec4<bool>(var_0.x, global0.c, false, var_0.x)))), vec2<bool>(!(!global0.c), !(13778u <= _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)], 34481u))), global0.c);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), -808f);
    var var_3 = vec3<u32>(~_wgslsmith_mod_u32(firstLeadingBit(global1[_wgslsmith_index_u32(7813u, 29u)]), _wgslsmith_mult_u32(1u, 4294967295u)) | global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37313u, 29u)], 29u)], 29u)], 29u)], 0u)), ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34447u, 29u)], 29u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)])), 29u)], 29u)]), 29u)], _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, min(0u, abs(0u)), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)]), 29u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 29u)], global1[_wgslsmith_index_u32(6680u, 29u)]), ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18245u, 29u)], 29u)])), ~_wgslsmith_add_vec4_u32(vec4<u32>(42039u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10597u, 29u)], 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 29u)], 29u)], global1[_wgslsmith_index_u32(22479u, 29u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63473u, 29u)], 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)], 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15814u, 29u)], 29u)], 29u)], 29u)], 29u)], global1[_wgslsmith_index_u32(38580u, 29u)])) & select(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20213u, 29u)], 29u)], global1[_wgslsmith_index_u32(46348u, 29u)]), vec4<u32>(32432u, global1[_wgslsmith_index_u32(21562u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], 0u), select(vec4<bool>(true, global0.c, global0.c, false), vec4<bool>(true, var_0.x, global0.c, true), vec4<bool>(global0.c, global0.c, true, global0.c)))), 10028u);
    global2 = array<f32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(~min(_wgslsmith_div_u32(~var_3.x, firstTrailingBit(global1[_wgslsmith_index_u32(var_3.x, 29u)])), _wgslsmith_div_u32(~var_3.x, 1u)), var_3.x);
}

