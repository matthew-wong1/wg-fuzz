struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: f32 = -538f;

var<private> global2: vec2<i32>;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<u32>(52624u, 24640u), 0u, true, 1000f, true), Struct_1(vec2<u32>(4328u, 1u), 89874u, true, 505f, false), Struct_1(vec2<u32>(4458u, 1u), 1u, false, -1038f, false), Struct_1(vec2<u32>(1u, 0u), 1u, true, -2137f, true), Struct_1(vec2<u32>(8636u, 4294967295u), 11153u, false, -949f, false), Struct_1(vec2<u32>(25806u, 4294967295u), 18098u, true, 775f, false), Struct_1(vec2<u32>(45345u, 7476u), 3858u, false, 299f, true), Struct_1(vec2<u32>(4294967295u, 23680u), 62901u, true, -1204f, true), Struct_1(vec2<u32>(4294967295u, 4294967295u), 0u, true, -950f, false), Struct_1(vec2<u32>(58556u, 0u), 4231u, true, 341f, false), Struct_1(vec2<u32>(21169u, 4294967295u), 66646u, false, -2634f, false), Struct_1(vec2<u32>(6856u, 1u), 1u, false, -481f, true), Struct_1(vec2<u32>(1u, 1500u), 50467u, false, -1239f, true), Struct_1(vec2<u32>(1u, 25400u), 46282u, false, -1236f, false), Struct_1(vec2<u32>(1u, 4294967295u), 1u, true, 345f, true), Struct_1(vec2<u32>(41307u, 0u), 0u, false, 390f, true));

var<private> global4: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> bool {
    return global4.c;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global2 = u_input.d.xy;
    let var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global4.a.x, 1u), 16u)];
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(step(-1164f, -312f))), -967f, -1857f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.d, -323f, arg_1.d))))));
    let var_3 = any(vec3<bool>(arg_1.c, global4.e, true));
    return _wgslsmith_f_op_f32(exp2(global4.d));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec4<f32>) -> u32 {
    global4 = global0[_wgslsmith_index_u32(global4.b, 32u)];
    var var_0 = countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -(u_input.d.xy & u_input.d.xy), vec2<i32>(arg_1, _wgslsmith_dot_vec4_i32(-u_input.d, vec4<i32>(arg_0, -1i, 0i, global2.x) << (u_input.b % vec4<u32>(32u))))));
    let var_1 = Struct_1(vec2<u32>(4970u, countOneBits(1u)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, _wgslsmith_add_u32(47686u, 0u), _wgslsmith_dot_vec3_u32(u_input.b.wyx, u_input.b.wzx), 0u), vec4<u32>(4294967295u, 45361u, ~u_input.c.x, global4.a.x), vec4<bool>(global4.e, global4.e, false & global4.c, func_2(global3[_wgslsmith_index_u32(24129u, 16u)], -560i))), ~(~vec4<u32>(1u, 4294967295u, u_input.c.x, 2808u))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * -681f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1182f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(10330u, 32u)], global0[_wgslsmith_index_u32(76829u, 32u)])) + 826f))), true);
    let var_2 = var_1;
    global0 = array<Struct_1, 32>();
    return global4.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32, arg_3: bool) -> Struct_1 {
    let var_0 = vec3<bool>(select(!select(any(vec3<bool>(false, true, arg_0.e)), global4.e, arg_0.d > arg_0.d), true, arg_3), func_2(global3[_wgslsmith_index_u32(abs(firstTrailingBit(select(arg_2, 1u, true))), 16u)], _wgslsmith_mult_i32(~_wgslsmith_div_i32(global2.x, 30529i), -u_input.e & _wgslsmith_mod_i32(u_input.d.x, 0i))), !all(vec3<bool>(true, true, any(vec3<bool>(arg_0.e, arg_0.c, arg_1.x)))));
    global3 = array<Struct_1, 16>();
    global3 = array<Struct_1, 16>();
    var var_1 = u_input.b;
    var var_2 = ~u_input.c.x;
    return global0[_wgslsmith_index_u32(var_1.x, 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(vec2<u32>(reverseBits(func_1(0i, u_input.e, vec4<f32>(-371f, 683f, global4.d, 286f))), u_input.b.x), ~_wgslsmith_div_u32(firstTrailingBit(0u), global4.b | 1493u), global4.c, -1316f, !(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, global2.x, u_input.d.x), vec3<i32>(0i, global2.x, -1i)) > min(-16436i, global2.x))), !(!select(select(vec2<bool>(global4.e, false), vec2<bool>(false, true), global4.c), !vec2<bool>(global4.e, global4.e), any(vec4<bool>(false, global4.c, false, false)))), countOneBits(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global4.a.x, global4.b), global4.a), ~35970u)), true);
    let var_1 = 8378u;
    global3 = array<Struct_1, 16>();
    let var_2 = global4.a.x;
    global2 = ~(-u_input.d.xw);
    let var_3 = Struct_1(vec2<u32>(6707u, 4294967295u), abs(var_0.b), global4.e, 657f, all(vec4<bool>(var_0.c, true, any(vec2<bool>(var_0.c, global4.e)), true & (false && global4.e))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 11698u), ~2899u)), vec2<f32>(-299f, global4.d), var_3.a.x);
}

