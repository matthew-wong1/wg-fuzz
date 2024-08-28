struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, 0i, vec3<bool>(false, true, true), 102558u);

var<private> global1: array<bool, 11> = array<bool, 11>(true, false, true, true, true, false, true, true, false, true, false);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: i32) -> i32 {
    global0 = Struct_2(any(!arg_1.a.zw), min(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_3), u_input.a) >> (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-43966i, 0i, -5063i, arg_3), ~vec4<i32>(-6501i, arg_3, -9307i, -16919i))), _wgslsmith_sub_i32(~global0.b, firstTrailingBit(24785i))), vec3<bool>(true, arg_2.x, true), global0.d);
    let var_0 = arg_2;
    var var_1 = 8008u;
    var var_2 = ~5235i;
    let var_3 = u_input.b.yz;
    return -26748i;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_2(true, func_2(~1u, Struct_1(vec4<bool>(false, true, arg_2.x, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1)))), arg_2.wx, _wgslsmith_div_i32(-31401i, u_input.b.x)), vec3<bool>((-12283i != min(26164i, global0.b)) || all(!arg_2.wwx), all(select(select(global0.c, vec3<bool>(global1[_wgslsmith_index_u32(u_input.e, 11u)], true, global0.a), vec3<bool>(global0.a, arg_2.x, arg_0)), select(vec3<bool>(false, false, global0.a), arg_2.xyw, vec3<bool>(true, false, false)), vec3<bool>(false, global1[_wgslsmith_index_u32(25541u, 11u)], global1[_wgslsmith_index_u32(1u, 11u)]))), true), firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.e, u_input.e), 1u)));
    let var_1 = var_0;
    let var_2 = arg_1;
    global1 = array<bool, 11>();
    global1 = array<bool, 11>();
    return Struct_1(arg_2, arg_1);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = Struct_1(select(arg_0.a, vec4<bool>(false, true, !(!arg_1.a.x), any(global0.c)), arg_1.a.x), arg_1.b);
    global0 = Struct_2(arg_0.a.x, reverseBits(global0.b), var_0.a.xzw, ~u_input.e);
    var var_1 = u_input.c.x;
    var var_2 = Struct_2(0i >= ~(-global0.b), _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a.x, global0.b, 1i), vec3<i32>(global0.b, u_input.c.x, 9284i)) & countOneBits(vec3<i32>(-1i, 25851i, 2147483647i)), u_input.c.wyy), vec3<bool>(global0.c.x, arg_1.a.x, _wgslsmith_f_op_f32(func_1(true, arg_1.b, vec4<bool>(arg_1.a.x, arg_0.a.x, arg_0.a.x, true)).b - _wgslsmith_f_op_f32(-arg_0.b)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + func_1(arg_1.a.x, -1925f, arg_0.a).b)), 0u);
    var var_3 = vec4<i32>(reverseBits(-_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, -1i, 1i, u_input.b.x), -vec4<i32>(u_input.a.x, global0.b, -21372i, 0i))), ~(-1715i & ~_wgslsmith_add_i32(2147483647i, u_input.c.x)), ~select(-69889i, ~u_input.b.x, all(arg_1.a.zxz)), firstTrailingBit(-1i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_u32(reverseBits(~(~vec4<u32>(4294967295u, u_input.e, 1u, 108433u) & select(vec4<u32>(3642u, global0.d, 23829u, 1u), vec4<u32>(global0.d, global0.d, global0.d, global0.d), global0.c.x))), _wgslsmith_sub_vec4_u32(select((vec4<u32>(u_input.d, 5115u, u_input.d, 0u) & vec4<u32>(u_input.e, 0u, u_input.e, u_input.e)) >> (vec4<u32>(global0.d, 4294967295u, 4294967295u, 0u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(5367u, u_input.e), u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.d, global0.d, global0.d), vec4<u32>(global0.d, 38581u, 1u, u_input.e)), 1u), select(!vec4<bool>(false, global0.c.x, global0.a, false), !vec4<bool>(false, true, global1[_wgslsmith_index_u32(53169u, 11u)], false), select(vec4<bool>(global1[_wgslsmith_index_u32(73255u, 11u)], global0.c.x, false, true), vec4<bool>(false, true, global0.c.x, false), false))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(global0.d, global0.d, 1u, global0.d)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d, 0u, global0.d), vec3<u32>(0u, u_input.d, u_input.e)), u_input.d, abs(1u), ~4294967295u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1000f))))) + 132f));
    global1 = array<bool, 11>();
    var var_2 = !(!(!global0.c.zx));
    global0 = Struct_2(false, _wgslsmith_sub_i32(~6973i, 1i), vec3<bool>(true, global1[_wgslsmith_index_u32(global0.d, 11u)], select(false, false, false) & (20149i > u_input.a.x)), _wgslsmith_div_u32(6272u, global0.d));
    let var_3 = _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(func_3(func_1(!all(global0.c.xz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2359f))), vec4<bool>(true | global0.a, false, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(48069u, 8408u), 11u)], global1[_wgslsmith_index_u32(~4294967295u, 11u)])), Struct_1(vec4<bool>(true, true, true, !global1[_wgslsmith_index_u32(1u, 11u)]), 1702f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(837f + var_1))))));
    global0 = Struct_2(any(!global0.c.zz), -countOneBits(global0.b), global0.c, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(844u, 4294967295u) ^ vec2<u32>(0u, global0.d)), vec2<u32>(u_input.e, 4294967295u) | vec2<u32>(global0.d, 0u)), 1u));
    let var_4 = abs(1i);
    var_2 = !(!select(!global0.c.zy, vec2<bool>(true, true), !select(global0.c.yz, global0.c.zy, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, 1i, 10243i, ~13480i), max(-(2147483647i ^ ~global0.b), -36871i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(select(vec4<bool>(true, false, var_2.x, var_2.x), vec4<bool>(true, global0.a, false, global1[_wgslsmith_index_u32(var_0, 11u)]), global1[_wgslsmith_index_u32(1u, 11u)]), var_3), func_1(global1[_wgslsmith_index_u32(~global0.d, 11u)], _wgslsmith_f_op_f32(sign(var_3)), vec4<bool>(var_2.x, true, false, global0.a)), -870f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - var_3), 804f))), global0.b, _wgslsmith_div_vec2_u32(~firstLeadingBit(vec2<u32>(4294967295u, u_input.d)), ~vec2<u32>(4294967295u, u_input.e)));
}

