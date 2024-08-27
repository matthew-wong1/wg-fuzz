struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1000f), 4294967295u, true, true);

var<private> global1: array<u32, 8> = array<u32, 8>(4294967295u, 25837u, 24800u, 0u, 9736u, 38986u, 4294967295u, 16900u);

var<private> global2: array<i32, 32>;

var<private> global3: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> u32 {
    let var_0 = vec4<u32>(abs(u_input.b), global0.b, max(select(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 8u)], 0u, u_input.b, u_input.b), vec4<u32>(24398u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 8u)], 8u)], 40006u, u_input.a)), global0.d), ~4294967295u >> ((u_input.b ^ 61622u) % 32u)) >> (~countOneBits(global1[_wgslsmith_index_u32(0u, 8u)] | 17006u) % 32u), abs(global0.b));
    var var_1 = global0.a;
    return _wgslsmith_mod_u32(var_0.x, ~(~var_0.x));
}

fn func_4(arg_0: f32, arg_1: u32) -> bool {
    let var_0 = Struct_1(arg_0);
    var var_1 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(arg_1, global0.b), vec2<u32>(1u, global1[_wgslsmith_index_u32(arg_1, 8u)]), global3.x), vec2<u32>(2256u, _wgslsmith_mod_u32(u_input.a, arg_1))), _wgslsmith_div_u32(~_wgslsmith_add_u32(u_input.a, 1460u), firstTrailingBit(global0.b | global0.b)));
    var var_2 = var_0;
    var var_3 = abs(vec4<i32>(firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(11936u, 8u)], var_1.x), 32u)]), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 32u)], u_input.c.x, global2[_wgslsmith_index_u32(2116u, 32u)], 0i), _wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 32u)], -2188i, 0i, global2[_wgslsmith_index_u32(63356u, 32u)]), vec4<i32>(-20461i, global2[_wgslsmith_index_u32(global0.b, 32u)], u_input.c.x, -60653i))), -22337i) & vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 32u)], _wgslsmith_mult_i32(0i, 1i), _wgslsmith_sub_i32(-59462i, -21814i), -1i));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-var_2.a)), -1971f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-446f - 1074f))), global0.a.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1228f, 1138f, -222f, var_2.a), vec4<f32>(-430f, -634f, 416f, -134f), vec4<bool>(true, true, true, true))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-220f, 492f, -321f, global0.a.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, 665f, var_0.a, 500f))), true)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(866f, -1000f, 726f, -712f)) + vec4<f32>(var_2.a, arg_0, 666f, arg_0))))));
    return global3.x;
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(657f);
    var var_1 = -u_input.c.x;
    global0 = Struct_2(arg_0, global0.b, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a)))), ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(21036u, u_input.b, 3507u, u_input.a), vec4<u32>(global0.b, global1[_wgslsmith_index_u32(4294967295u, 8u)], u_input.b, 4294967295u)), func_3())), global0.d);
    global0 = Struct_2(Struct_1(global0.a.a), ~global0.b, global3.x, global0.d);
    let var_2 = ~min(_wgslsmith_clamp_vec2_u32(firstLeadingBit(~vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.b, 8u)])), vec2<u32>(~global1[_wgslsmith_index_u32(1u, 8u)], 0u << (global0.b % 32u)), vec2<u32>(global0.b, abs(u_input.b))), vec2<u32>(reverseBits(1u), global0.b ^ max(global1[_wgslsmith_index_u32(29081u, 8u)], u_input.a)));
    return arg_0.a;
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    return _wgslsmith_div_f32(-1840f, _wgslsmith_f_op_f32(1085f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global0.a)) * _wgslsmith_f_op_f32(-global0.a.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a, abs(0u), global0.c, global3.x);
    global1 = array<u32, 8>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(-(vec4<i32>(6581i, global2[_wgslsmith_index_u32(global0.b, 32u)], 86460i, 2147483647i) ^ vec4<i32>(u_input.c.x, 1931i, -1i, 20454i)))), _wgslsmith_f_op_f32(global0.a.a * _wgslsmith_f_op_f32(sign(global0.a.a))), -301f, -2020f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(237f)) * -865f)) - var_0.x));
    global1 = array<u32, 8>();
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(~4294967295u) >> (firstLeadingBit(u_input.b) % 32u), ~(~global1[_wgslsmith_index_u32(global0.b, 8u)] & 65457u)), vec2<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 50096u, u_input.a)), ~vec3<u32>(21871u, 4294967295u, global1[_wgslsmith_index_u32(46344u, 8u)])), min(~(~global0.b), ~4294967295u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 7816u, 4294967295u), vec3<u32>(global0.b, 62374u, global1[_wgslsmith_index_u32(66208u, 8u)])))));
    let var_3 = u_input.c.xx;
    global3 = !vec2<bool>(global3.x, !(!(global2[_wgslsmith_index_u32(4294967295u, 32u)] > 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, -1501f), _wgslsmith_f_op_f32(-212f * -107f))))));
}

