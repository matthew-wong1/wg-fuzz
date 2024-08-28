struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 13>;

var<private> global1: array<vec3<bool>, 19>;

var<private> global2: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(i32(-2147483648), 50770i), vec2<i32>(i32(-2147483648), -606i), vec2<i32>(45261i, 2147483647i), vec2<i32>(-1i, 24163i), vec2<i32>(0i, 20155i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(9445i, 0i), vec2<i32>(-1i, 585i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(9120i, -69207i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(u_input.c, 13u)], Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), reverseBits(~vec2<u32>(u_input.c, u_input.c))), 13u)], 31628u), ~arg_2 << (firstLeadingBit(u_input.c) % 32u));
    global2 = array<vec2<i32>, 11>();
    var var_1 = Struct_1(-1i);
    global1 = array<vec3<bool>, 19>();
    let var_2 = arg_1;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1231f)) * _wgslsmith_f_op_f32(arg_3.b.x + _wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_f32(exp2(arg_3.a)));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> vec2<u32> {
    global2 = array<vec2<i32>, 11>();
    let var_0 = global0[_wgslsmith_index_u32(max(u_input.c, 16602u), 13u)];
    global0 = array<vec2<bool>, 13>();
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1151f, _wgslsmith_div_f32(-131f, arg_1))) * arg_0.x), _wgslsmith_f_op_f32(trunc(arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, _wgslsmith_f_op_f32(-arg_0.x)))) + vec2<f32>(2357f, _wgslsmith_f_op_f32(f32(-1f) * -299f))));
    let var_2 = select(vec3<bool>(!all(!vec4<bool>(var_0.x, false, var_0.x, true)), var_0.x, all(select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x)), select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x)), global1[_wgslsmith_index_u32(~u_input.c, 19u)]))), global1[_wgslsmith_index_u32(u_input.c, 19u)], var_0.x);
    return reverseBits(~vec2<u32>(u_input.c, u_input.c));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec4<bool>) -> Struct_4 {
    var var_0 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1856f, -546f)), _wgslsmith_f_op_f32(func_2(arg_0.c, Struct_2(964f, vec2<f32>(410f, 606f)), arg_1.x, Struct_2(1000f, vec2<f32>(-684f, 136f))))), vec2<u32>(1u, 1u)), ~(~(vec2<u32>(1u, arg_0.b.b) & vec2<u32>(99546u, 1u))));
    var var_1 = arg_0;
    global0 = array<vec2<bool>, 13>();
    var_0 = min(firstTrailingBit(vec2<u32>(57028u, 1u)), ~vec2<u32>(_wgslsmith_sub_u32(~1359u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(arg_0.b.b, var_0.x))), ~arg_0.b.b >> (18726u % 32u)));
    var var_2 = var_1.c;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1f;
    var var_1 = ~_wgslsmith_div_u32(~(~_wgslsmith_add_u32(0u, 0u)), u_input.c);
    var var_2 = false;
    global0 = array<vec2<bool>, 13>();
    var var_3 = func_1(Struct_4(select(!select(global0[_wgslsmith_index_u32(u_input.c, 13u)], vec2<bool>(false, false), vec2<bool>(false, true)), select(global0[_wgslsmith_index_u32(4294967295u, 13u)], !global0[_wgslsmith_index_u32(u_input.c, 13u)], !global0[_wgslsmith_index_u32(u_input.c, 13u)]), true), Struct_3(select(select(global0[_wgslsmith_index_u32(26378u, 13u)], vec2<bool>(true, false), vec2<bool>(false, true)), !global0[_wgslsmith_index_u32(u_input.c, 13u)], true), u_input.c), -1i), u_input.a.xwx, vec4<bool>(true, true, true, true));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1924f, -1326f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1576f, 1278f), vec2<f32>(-574f, -276f), global0[_wgslsmith_index_u32(var_3.b.b, 13u)])) - vec2<f32>(451f, -1946f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(509f, -765f)), vec2<f32>(-215f, 1611f))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2314f * -427f)), -447f)));
    var var_5 = (~3006u & (_wgslsmith_dot_vec2_u32(vec2<u32>(15560u, u_input.c), vec2<u32>(4294967295u, 0u)) ^ reverseBits(func_3(var_4.b, var_4.b.x).x))) ^ 5758u;
    var var_6 = reverseBits(vec4<u32>(~var_3.b.b, u_input.c, 0u, u_input.c) >> (vec4<u32>(var_3.b.b, _wgslsmith_sub_u32(var_3.b.b ^ 59384u, var_3.b.b), select(0u, var_3.b.b, u_input.e <= -78932i), ~u_input.c) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(66800u, _wgslsmith_clamp_i32(reverseBits(u_input.b.x) ^ 6704i, u_input.b.x, u_input.d), u_input.c);
}

