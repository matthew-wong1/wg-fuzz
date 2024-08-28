struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(false, true, false, true, false);

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(2147483647i, 43155u), Struct_1(-19623i, 4294967295u), Struct_1(0i, 19423u), Struct_1(-1i, 4643u), Struct_1(-22537i, 1u), Struct_1(-36152i, 21185u), Struct_1(24106i, 81939u), Struct_1(-16880i, 0u), Struct_1(-1i, 12150u), Struct_1(2147483647i, 121824u), Struct_1(-1i, 21206u), Struct_1(-25530i, 1u), Struct_1(-1i, 0u), Struct_1(-6356i, 14749u), Struct_1(0i, 1u), Struct_1(2147483647i, 28102u), Struct_1(i32(-2147483648), 1u), Struct_1(-16487i, 107628u), Struct_1(-1i, 1u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: vec2<i32>) -> u32 {
    global1 = array<Struct_1, 19>();
    global1 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_sub_i32(0i, -(~min(-52129i | u_input.a, arg_3.x)));
    return _wgslsmith_clamp_u32(u_input.d, u_input.b, 36388u);
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1269f, -323f, -139f, 433f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-245f, 359f, 495f, -920f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1051f, -879f, 1000f, 1569f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2336f, 100f, -415f, 639f))))))));
    let var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 19u)];
    let var_2 = global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(func_3(-438f, !vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.b, 5u)], true, false), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], false, false), vec2<i32>(-2147483647i, var_1.a)), 7885u)), 19u)];
    let var_3 = Struct_1(73273i, 106573u);
    var var_4 = select(-min(abs(vec2<i32>(-43978i, var_2.a)) & ~vec2<i32>(35579i, 2147483647i), vec2<i32>(0i, reverseBits(0i))), ~vec2<i32>(firstTrailingBit(-20822i), var_3.a), !vec2<bool>(any(select(vec3<bool>(global0[_wgslsmith_index_u32(var_2.b, 5u)], global0[_wgslsmith_index_u32(80319u, 5u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(9197u, 5u)], false), vec3<bool>(global0[_wgslsmith_index_u32(var_2.b, 5u)], false, false))), false));
    return !select(vec3<bool>(-u_input.a < var_4.x, global0[_wgslsmith_index_u32(max(0u, var_2.b), 5u)], false), !select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], false), vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(1u, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(8356u, 5u)], true, true), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], false, false)), _wgslsmith_mult_u32(~20264u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.b, 0u), u_input.c.wzy)) < 4294967295u);
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.d, 5u)];
    var var_1 = Struct_1((u_input.a ^ 12074i) << (~43122u % 32u), _wgslsmith_clamp_u32(~4294967295u, u_input.c.x, firstLeadingBit(1u | firstTrailingBit(0u))));
    var var_2 = Struct_1(2228i, u_input.d);
    return global1[_wgslsmith_index_u32(var_2.b, 19u)];
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    global1 = array<Struct_1, 19>();
    let var_0 = global1[_wgslsmith_index_u32(arg_0, 19u)];
    var var_1 = abs(i32(-1i) * -arg_1);
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    return func_4(select(!func_2(), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0, 5u)] || true, all(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(var_0.b, 5u)], false))), false));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = false;
    global0 = array<bool, 5>();
    global1 = array<Struct_1, 19>();
    let var_1 = vec2<i32>(u_input.a, reverseBits(1i));
    var var_2 = arg_2.a >= _wgslsmith_clamp_i32(-min(var_1.x, var_1.x) | 2678i, firstLeadingBit(_wgslsmith_mod_i32(i32(-1i) * -1i, var_1.x)), var_1.x);
    return ~_wgslsmith_mult_u32(u_input.d, _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 55194u), arg_2.b)) ^ ~(~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 5>();
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 19u)];
    var var_1 = global1[_wgslsmith_index_u32(~func_5(vec2<bool>(!all(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(29086u, 5u)], false)), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)])), func_1(abs(4294967295u), abs(_wgslsmith_sub_i32(-2147483647i, -47889i)))), 19u)];
    var var_2 = global1[_wgslsmith_index_u32((func_1(var_1.b >> (~var_1.b % 32u), ~var_1.a).b ^ func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-737f)) - _wgslsmith_f_op_f32(sign(1287f))), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(var_1.b, 5u)]), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], true, global0[_wgslsmith_index_u32(var_1.b, 5u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.b, 5u)], global0[_wgslsmith_index_u32(var_0.b, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(33214u, 5u)], global0[_wgslsmith_index_u32(u_input.d, 5u)], false)), func_2(), true & global0[_wgslsmith_index_u32(var_1.b, 5u)]), vec2<i32>(u_input.a, var_0.a))) << (~u_input.c.x % 32u), 19u)];
    var var_3 = vec3<i32>(min(11252i, var_2.a), var_2.a, var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yy, select(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.a, u_input.a), var_3.zx), var_2.a, true), ~u_input.c.wyx);
}

