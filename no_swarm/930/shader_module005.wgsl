struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(-16187i, -14338i, i32(-2147483648), -1i));

var<private> global1: array<bool, 8> = array<bool, 8>(true, false, true, true, true, false, true, true);

var<private> global2: array<f32, 8>;

var<private> global3: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    var var_0 = vec3<u32>(u_input.a, ~((abs(u_input.a) >> (u_input.a % 32u)) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(60532u, 1u), vec2<u32>(u_input.a, u_input.a)) % 32u)), u_input.a);
    let var_1 = max(vec2<i32>(_wgslsmith_sub_i32(0i, -13008i), 0i), countOneBits(vec2<i32>(_wgslsmith_mult_i32(21237i, ~u_input.c.x), -u_input.c.x)));
    global2 = array<f32, 8>();
    global1 = array<bool, 8>();
    let var_2 = Struct_3(!select(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, 30577u), 8u)], any(vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a, 8u)]))), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(22339u, 8u)]), vec2<bool>(true, true)));
    return ~min(~countOneBits(1u), _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a, 12874u, 0u, 79206u) | vec4<u32>(u_input.a, u_input.a, 16369u, var_0.x)), vec4<u32>(~var_0.x, ~5629u, _wgslsmith_clamp_u32(79070u, var_0.x, var_0.x), 0u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: f32) -> u32 {
    global1 = array<bool, 8>();
    let var_0 = Struct_3(vec2<bool>(global1[_wgslsmith_index_u32(33753u, 8u)], ~(~u_input.a) <= func_3(abs(vec3<i32>(2147483647i, arg_0.x, u_input.c.x)))));
    let var_1 = Struct_1(u_input.a, _wgslsmith_div_f32(1434f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(arg_1 + arg_1))))));
    let var_2 = vec2<i32>(u_input.b, ~u_input.d) >> (abs(~(~select(vec2<u32>(29752u, 4294967295u), vec2<u32>(var_1.a, 22446u), var_0.a))) % vec2<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 8u)] * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2253f)) * global2[_wgslsmith_index_u32(u_input.a, 8u)]), 672f, false)))));
    return u_input.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = arg_1.d;
    var var_2 = !all(vec3<bool>(!(u_input.d <= u_input.c.x), false, all(arg_3.a)));
    var_2 = !(global2[_wgslsmith_index_u32(arg_1.d.a, 8u)] > var_1.b);
    var var_3 = Struct_1(abs(var_1.a), _wgslsmith_f_op_f32(floor(var_1.b)));
    return arg_1.d;
}

fn func_1() -> u32 {
    let var_0 = Struct_1(12950u, -307f);
    var var_1 = 1i;
    var var_2 = !all(!(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], false, global1[_wgslsmith_index_u32(57564u, 8u)], global1[_wgslsmith_index_u32(var_0.a, 8u)])));
    let var_3 = vec3<f32>(var_0.b, _wgslsmith_div_f32(2332f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-459f)) + _wgslsmith_f_op_f32(-706f - -1349f)))), var_0.b);
    let var_4 = func_4(u_input.c, Struct_2(~(~func_2(vec3<i32>(u_input.b, u_input.c.x, -1i), 242f, global2[_wgslsmith_index_u32(var_0.a, 8u)])), any(vec4<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)], false)), true, true, global1[_wgslsmith_index_u32(countOneBits(var_0.a), 8u)])), ~(~(vec4<i32>(0i, 36397i, 39974i, u_input.b) | u_input.c)), Struct_1(u_input.a, _wgslsmith_f_op_f32(269f + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 8u)] - var_0.b)))), 15712u, Struct_3(vec2<bool>((u_input.d <= u_input.d) | (var_3.x > -608f), !(global2[_wgslsmith_index_u32(u_input.a, 8u)] == 1000f))));
    return countOneBits(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 8>();
    let var_0 = true;
    let var_1 = Struct_1(~func_1(), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u), 8u)] - 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(firstLeadingBit(0u), 8u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.a), 8u)]))))));
    var var_2 = vec4<u32>(var_1.a, _wgslsmith_mult_u32(u_input.a, _wgslsmith_sub_u32((4294967295u >> (u_input.a % 32u)) | 4294967295u, ~(~u_input.a))), _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.a, 0u, u_input.a), vec4<u32>(106507u, u_input.a, var_1.a, u_input.a)), func_3(u_input.c.zxw) ^ var_1.a) << (~_wgslsmith_div_u32(~var_1.a, 9923u) % 32u), u_input.a);
    global3 = ~firstLeadingBit(-2147483647i);
    var_2 = ~vec4<u32>(u_input.a, firstLeadingBit(4771u), 4294967295u, var_2.x);
    global2 = array<f32, 8>();
    let var_3 = Struct_2(var_1.a, true, global0[_wgslsmith_index_u32(u_input.a, 1u)], Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, u_input.a, u_input.a), ~vec4<u32>(16978u, 6430u, 77211u, 4294967295u)), var_1.b));
    let var_4 = ~8031i;
    let x = u_input.a;
    s_output = StorageBuffer(47946i);
}

