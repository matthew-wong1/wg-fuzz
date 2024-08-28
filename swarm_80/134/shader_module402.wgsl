struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(1266f, Struct_1(0i), Struct_1(0i), vec2<i32>(56643i, 30085i), false);

var<private> global1: u32;

var<private> global2: vec3<i32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> u32 {
    var var_0 = !(!(!select(vec2<bool>(true, true), vec2<bool>(global0.e, false), vec2<bool>(global0.e, global0.e))));
    var var_1 = Struct_1(24867i);
    let var_2 = vec4<f32>(288f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_div_f32(global0.a, global0.a), global0.a);
    let var_3 = Struct_1(_wgslsmith_add_i32(firstLeadingBit(-(19902i >> (0u % 32u))), global0.c.a));
    global1 = 4294967295u;
    return u_input.a;
}

fn func_2() -> Struct_2 {
    global1 = func_3(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 42842u), vec2<u32>(u_input.a, u_input.a))), Struct_1(-(-2147483647i ^ global2.x))) >> ((~(reverseBits(5960u) & _wgslsmith_sub_u32(u_input.a, 30668u)) << (~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, u_input.a)), ~vec2<u32>(u_input.a, 5197u)) % 32u)) % 32u);
    let var_0 = Struct_1(~((-global0.c.a << (u_input.a % 32u)) | 1i));
    global1 = u_input.a;
    global1 = 1u;
    global1 = ~u_input.a;
    return Struct_2(0i);
}

fn func_1(arg_0: u32, arg_1: bool) -> i32 {
    let var_0 = func_2();
    global1 = reverseBits(u_input.a >> (_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(38572u, arg_0, 4294967295u, u_input.a)), vec4<u32>(~24327u, arg_0, select(4294967295u, 0u, arg_1), ~arg_0)) % 32u));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1669f), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global0.a)))) != _wgslsmith_f_op_f32(abs(684f)))), Struct_1(u_input.c.x), global0.b, ~abs(countOneBits(~vec2<i32>(0i, global0.d.x))), true);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(270f, -740f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, 114f) * vec2<f32>(149f, var_1.a)), true)), select(!vec2<bool>(true, arg_1), select(vec2<bool>(false, global0.e), vec2<bool>(true, global0.e), vec2<bool>(true, global0.e)), all(vec4<bool>(true, false, true, arg_1)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-456f, _wgslsmith_f_op_f32(floor(1274f))), -1000f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a, -226f), vec2<f32>(var_1.a, 482f), false))))));
    var_1 = Struct_5(var_1.a, Struct_1(_wgslsmith_clamp_i32(u_input.b, ~(global0.c.a & global2.x), ~(-u_input.b))), Struct_1(0i), select(min(~u_input.c.yz, _wgslsmith_div_vec2_i32(vec2<i32>(global2.x, 14256i), global2.yx)), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_1.d.x, -2147483647i), var_1.c.a), ~vec2<i32>(global2.x, 7980i)), vec2<bool>(var_1.e, any(vec2<bool>(true, true)))), !all(vec2<bool>(var_1.e, global0.e & true)));
    return ~var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 30780u;
    global1 = ~u_input.a;
    global2 = _wgslsmith_div_vec3_i32(u_input.c >> (vec3<u32>(u_input.a, 59726u, _wgslsmith_mod_u32(abs(0u), abs(u_input.a))) % vec3<u32>(32u)), countOneBits(-vec3<i32>(global2.x, _wgslsmith_dot_vec2_i32(global2.zy, vec2<i32>(-42449i, -56986i)), func_1(u_input.a, global0.e))));
    let var_0 = Struct_3(u_input.c, _wgslsmith_f_op_f32(step(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(floor(global0.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a - global0.a), global0.a, all(vec3<bool>(false, global0.e, false))))))));
    var var_1 = global0.e || any(!(!vec4<bool>(global0.e, global0.e, false, false)));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0.b, var_0.b, global0.e)), _wgslsmith_f_op_f32(max(global0.a, var_0.b))))), global0.e)), Struct_1(global0.d.x), global0.c, reverseBits(-min(-vec2<i32>(u_input.b, -84637i), countOneBits(global2.zz))), any(vec3<bool>(!global0.e, global0.e, true)));
    let var_3 = ~max(~vec3<u32>(select(5114u, u_input.a, global0.e), countOneBits(11084u), 7782u), vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 8754u, 1u), ~vec3<u32>(1u, 68943u, u_input.a)), min(u_input.a, ~u_input.a)));
    var_1 = any(!select(select(!vec4<bool>(global0.e, true, global0.e, true), select(vec4<bool>(true, true, false, global0.e), vec4<bool>(var_2.e, var_2.e, var_2.e, global0.e), global0.e), false), !select(vec4<bool>(global0.e, global0.e, var_2.e, false), vec4<bool>(true, global0.e, true, var_2.e), vec4<bool>(true, global0.e, false, var_2.e)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_2.a)))), vec2<i32>(-global2.x, ~(-436i)), u_input.a);
}

