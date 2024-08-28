struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1u, false, Struct_1(true), 1u);

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec2<bool>, 29>;

var<private> global3: array<i32, 16>;

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-496f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-169f))))), 501f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global1 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global0.d, global0.d, 21258u << (0u % 32u), global0.d)), ~reverseBits(firstTrailingBit(vec4<u32>(1u, global0.d, 4294967295u, 4294967295u))));
    global1 = 28436u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), var_0.x)), var_0.x, !(!arg_0)))) - _wgslsmith_f_op_f32(635f * _wgslsmith_f_op_f32(step(-816f, var_0.x))));
    global3 = array<i32, 16>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1347f + -212f))) * _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(abs(-118f)))) - var_0.x)));
}

fn func_2() -> u32 {
    let var_0 = Struct_2(~4294967295u, false, global0.c, global0.d);
    global3 = array<i32, 16>();
    let var_1 = _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(52715u, 16u)] >= u_input.a));
    return 0u;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = abs(func_2());
    global3 = array<i32, 16>();
    var var_1 = ~75300u;
    var var_2 = Struct_2(4294967295u, all(!vec3<bool>(any(vec4<bool>(global0.b, global0.c.a, false, true)), any(global2[_wgslsmith_index_u32(6788u, 29u)]), any(global2[_wgslsmith_index_u32(arg_3.d, 29u)]))), Struct_1(!(_wgslsmith_add_u32(global0.d, 54569u) >= global0.d)), arg_3.d);
    var var_3 = max((_wgslsmith_mult_u32(4294967295u >> (var_0 % 32u), 50923u) ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a, global0.d, 1u, 53812u), vec4<u32>(arg_3.a, arg_3.a, 45164u, 6516u)) >> (arg_3.d % 32u))) ^ 1u, var_2.d);
    return ~(~(~abs(vec3<u32>(75513u, var_2.d, 1u)))) & max(select(abs(reverseBits(vec3<u32>(var_2.d, 0u, 45592u))), select(vec3<u32>(18804u, global0.d, 4294967295u), abs(vec3<u32>(arg_3.a, 1u, var_2.d)), !vec3<bool>(var_2.c.a, global0.c.a, false)), vec3<bool>(true, var_2.c.a, arg_3.b | false)), vec3<u32>(var_0, 1u, ~var_0 ^ var_2.d));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = countOneBits(~_wgslsmith_dot_vec3_u32(~vec3<u32>(41144u, 73746u, global0.a), func_1(_wgslsmith_div_f32(-1639f, -1077f), u_input.a, vec4<i32>(global3[_wgslsmith_index_u32(global0.a, 16u)], u_input.a, 1779i, -75631i), Struct_2(global0.d, true, global0.c, 49007u))));
    global4 = -10814i;
    let var_0 = Struct_2(global0.d, !global0.b, Struct_1(true || (global0.a > func_2())), countOneBits(1u));
    global0 = Struct_2(3774u, (!var_0.b && var_0.c.a) && true, Struct_1(var_0.b), global0.a);
    global1 = global0.a;
    var var_1 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_0.d, func_2()), 0u, -(reverseBits(select(vec4<i32>(global3[_wgslsmith_index_u32(67658u, 16u)], -33223i, -360i, u_input.a), vec4<i32>(global3[_wgslsmith_index_u32(24067u, 16u)], 0i, global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(2622u, 16u)]), vec4<bool>(var_1.a, false, true, var_0.c.a))) << (~countOneBits(vec4<u32>(103379u, 107800u, global0.a, 56516u)) % vec4<u32>(32u))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d, 14549u, global0.d), min(~vec3<u32>(global0.a, global0.d, var_0.a), vec3<u32>(var_0.d, global0.a, 4294967295u))), ~(~global0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -250f), -330f, _wgslsmith_f_op_f32(select(-1000f, 1195f, true)), _wgslsmith_f_op_f32(-1212f + -1637f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(296f, 1614f, -246f, -1000f)))));
}

