struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<i32, 22> = array<i32, 22>(2147483647i, 14208i, i32(-2147483648), i32(-2147483648), 24611i, 2147483647i, -39327i, 0i, 1i, 18111i, 30149i, -453i, i32(-2147483648), -23035i, -8944i, 0i, 0i, 0i, 2147483647i, -39070i, -12530i, -103793i);

var<private> global2: array<vec3<f32>, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    var var_0 = 657f;
    let var_1 = Struct_1(~(~(~(~46159u))), max(-vec3<i32>(-19134i, _wgslsmith_div_i32(1i, u_input.b.x), 0i), u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, 1u), arg_0.x), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.xw, vec2<u32>(13214u, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 20144u), arg_0.zw))), firstLeadingBit(~arg_0.yz)), u_input.a);
    global1 = array<i32, 22>();
    let var_2 = var_1;
    let var_3 = !(!(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true), all(vec4<bool>(false, false, false, false)))));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<u32> {
    global1 = array<i32, 22>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(33348u, 0u, u_input.a)), firstLeadingBit(arg_2.zwy)), select(~arg_2.x, 45504u, true), ~arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(23579u, 2985u, 46182u), arg_2.zwx)), arg_2) >> (~_wgslsmith_add_u32(_wgslsmith_mod_u32(~arg_3.d, arg_2.x), u_input.a) % 32u), 9u)];
    let var_1 = arg_3;
    global1 = array<i32, 22>();
    var var_2 = false;
    return _wgslsmith_mod_vec3_u32(abs(_wgslsmith_div_vec3_u32(arg_2.yxy, arg_2.wwz) >> ((firstLeadingBit(vec3<u32>(18658u, u_input.a, 1865u)) & vec3<u32>(4294967295u, u_input.a, var_1.c)) % vec3<u32>(32u))), abs(~vec3<u32>(u_input.a, 20695u, 1u) ^ (arg_2.yzy >> (vec3<u32>(u_input.a, 6630u, arg_3.c) % vec3<u32>(32u)))));
}

fn func_2(arg_0: vec2<bool>) -> vec2<f32> {
    var var_0 = !select(vec3<bool>(u_input.a >= u_input.a, -559f != _wgslsmith_f_op_f32(trunc(690f)), false), vec3<bool>(true, arg_0.x, true), !vec3<bool>(any(vec3<bool>(arg_0.x, true, false)), false, arg_0.x && arg_0.x));
    let var_1 = Struct_1(~(_wgslsmith_mod_u32(27801u & u_input.a, u_input.a) << (0u % 32u)), u_input.b, ~(~14901u << (_wgslsmith_sub_u32(135u, u_input.a) % 32u)), 1u);
    var var_2 = u_input.b << (func_4(select(vec4<bool>(func_3(vec4<u32>(0u, 0u, 1u, 4294967295u)), true, func_3(vec4<u32>(var_1.c, u_input.a, 0u, var_1.a)), !arg_0.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.x, false, false, var_0.x), vec4<bool>(arg_0.x, false, true, var_0.x), false), true), !select(vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(false, arg_0.x, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x))), var_1.c, ~(~(vec4<u32>(var_1.d, 4294967295u, u_input.a, u_input.a) & vec4<u32>(4294967295u, var_1.d, 0u, 57584u))), Struct_1(_wgslsmith_mult_u32(~4303u, ~4294967295u), ~vec3<i32>(u_input.b.x, 4399i, -1i), abs(reverseBits(2442u)), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 0u, var_1.a, u_input.a), vec4<u32>(u_input.a, var_1.a, 55666u, u_input.a))))) % vec3<u32>(32u));
    global0 = array<Struct_1, 9>();
    let var_3 = vec2<bool>(false, false);
    return _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(749f + 172f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1453f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(335f * -394f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(701f))))))));
}

fn func_1() -> f32 {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(603f, -1072f) * vec2<f32>(1240f, 1925f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec2<bool>(true, true))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec2<bool>(false, false))))))));
    let var_2 = false;
    let var_3 = global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(~(~4294967295u), ~func_4(vec4<bool>(false, false, var_2, false), 16860u, vec4<u32>(4294967295u, u_input.a, 60077u, 0u), Struct_1(0u, vec3<i32>(global1[_wgslsmith_index_u32(73844u, 22u)], u_input.b.x, u_input.b.x), 4294967295u, u_input.a)).x)), 9u)];
    let var_4 = true;
    return _wgslsmith_f_op_f32(f32(-1f) * -1075f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 22>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(25198u, 0u, ~u_input.a), vec3<u32>(12805u, u_input.a, u_input.a)), vec3<u32>(2193u, 31984u, ~u_input.a)), 9u)];
    var var_1 = global0[_wgslsmith_index_u32(0u, 9u)];
    let var_2 = firstLeadingBit(-var_0.b.x);
    let var_3 = ~var_0.b.x;
    let var_4 = global0[_wgslsmith_index_u32(~1u, 9u)];
    global2 = array<vec3<f32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1780f), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -547f))))), countOneBits(vec4<i32>(_wgslsmith_clamp_i32(1i, -2147483647i, ~var_3), -(-2147483647i >> (u_input.a % 32u)), -2147483647i, select(abs(2147483647i), var_1.b.x, true))), var_2, u_input.a, var_1.b.x);
}

