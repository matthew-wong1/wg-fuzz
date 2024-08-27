struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(-1605f, 1498f, -648f), vec3<f32>(284f, 144f, 369f), vec3<f32>(-1217f, -297f, 397f), vec3<f32>(590f, 694f, 2181f), vec3<f32>(410f, 118f, -141f), vec3<f32>(-2765f, 1344f, -1602f), vec3<f32>(1724f, 458f, 768f), vec3<f32>(-288f, 1168f, 1183f), vec3<f32>(1000f, 510f, 1000f), vec3<f32>(122f, -771f, 1881f), vec3<f32>(177f, 439f, -290f), vec3<f32>(-1226f, -613f, 985f), vec3<f32>(1625f, -664f, 1116f), vec3<f32>(417f, -606f, -592f), vec3<f32>(1007f, 883f, 903f), vec3<f32>(-1751f, 1598f, -567f), vec3<f32>(2565f, -1067f, 1000f), vec3<f32>(145f, 171f, -787f));

var<private> global1: array<bool, 11> = array<bool, 11>(true, true, false, true, true, false, true, false, true, true, true);

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<f32>(-1413f, -816f, -541f)), Struct_1(vec3<f32>(436f, 1183f, -380f)), Struct_1(vec3<f32>(-1896f, -1000f, 2423f)), Struct_1(vec3<f32>(1111f, 578f, -1226f)), Struct_1(vec3<f32>(230f, -141f, -1232f)), Struct_1(vec3<f32>(-1668f, 126f, -1279f)), Struct_1(vec3<f32>(-1155f, -1586f, 602f)), Struct_1(vec3<f32>(-906f, -739f, 144f)), Struct_1(vec3<f32>(941f, -1287f, 1323f)), Struct_1(vec3<f32>(1429f, 346f, 543f)), Struct_1(vec3<f32>(-3172f, -627f, 255f)), Struct_1(vec3<f32>(799f, -346f, -590f)), Struct_1(vec3<f32>(923f, 934f, 518f)), Struct_1(vec3<f32>(718f, -1000f, -499f)), Struct_1(vec3<f32>(1003f, 434f, 888f)), Struct_1(vec3<f32>(-1504f, 457f, -1061f)), Struct_1(vec3<f32>(126f, 731f, -2714f)), Struct_1(vec3<f32>(684f, -247f, -675f)), Struct_1(vec3<f32>(-2130f, -314f, 261f)), Struct_1(vec3<f32>(-1352f, 252f, -929f)), Struct_1(vec3<f32>(-575f, 1393f, -1443f)), Struct_1(vec3<f32>(-195f, -223f, 541f)), Struct_1(vec3<f32>(1129f, 785f, -916f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    global0 = array<vec3<f32>, 18>();
    global2 = array<Struct_1, 23>();
    return u_input.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32) -> bool {
    var var_0 = ~_wgslsmith_dot_vec3_u32(reverseBits(~arg_0), countOneBits(arg_0));
    global1 = array<bool, 11>();
    global1 = array<bool, 11>();
    global1 = array<bool, 11>();
    let var_1 = global2[_wgslsmith_index_u32(arg_0.x, 23u)];
    return all(!(!select(!vec2<bool>(false, global1[_wgslsmith_index_u32(72421u, 11u)]), !vec2<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 11u)]), any(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 11u)], true)))));
}

fn func_2(arg_0: vec2<u32>) -> bool {
    let var_0 = vec4<bool>(func_4(vec3<u32>(_wgslsmith_dot_vec2_u32(min(vec2<u32>(arg_0.x, u_input.a), vec2<u32>(1u, 107177u)), _wgslsmith_mod_vec2_u32(arg_0, vec2<u32>(arg_0.x, arg_0.x))), 1u, func_3(vec2<i32>(-10171i, 1i), global2[_wgslsmith_index_u32(75757u, 23u)]) & max(4294967295u, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(491f, -412f), _wgslsmith_f_op_f32(310f * -639f))))), all(vec2<bool>(global1[_wgslsmith_index_u32(~37188u, 11u)], false)), false, arg_0.x < (27015u & ~(~u_input.a)));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-216f, 584f)))), global1[_wgslsmith_index_u32(~u_input.a, 11u)])), -478f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -110f), _wgslsmith_f_op_f32(max(-1126f, 2028f)))) - _wgslsmith_f_op_f32(floor(-547f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1406f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-var_1.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), var_1.a.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1.a.x)), _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1680f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x))), var_1.a, var_0.yzy)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~u_input.a & (83459u >> (arg_0.x % 32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(4750u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a), arg_0))), 11u)]));
    global2 = array<Struct_1, 23>();
    global1 = array<bool, 11>();
    return global1[_wgslsmith_index_u32(arg_0.x, 11u)] && select(all(select(vec2<bool>(true, global1[_wgslsmith_index_u32(arg_0.x, 11u)]), select(var_0.xw, vec2<bool>(global1[_wgslsmith_index_u32(24792u, 11u)], global1[_wgslsmith_index_u32(31884u, 11u)]), vec2<bool>(false, false)), select(false, var_0.x, true))), false, 0u >= arg_0.x);
}

fn func_1() -> u32 {
    global0 = array<vec3<f32>, 18>();
    var var_0 = vec3<bool>(!(!global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, 47964u)), 11u)]), true, global1[_wgslsmith_index_u32(17429u, 11u)]);
    global2 = array<Struct_1, 23>();
    let var_1 = (true & func_2(~select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 85655u), var_0.x))) | true;
    global1 = array<bool, 11>();
    return func_3(_wgslsmith_mod_vec2_i32(~vec2<i32>(-63325i, -2147483647i), select(vec2<i32>(13020i, -28341i), vec2<i32>(-10202i, -1i), vec2<bool>(var_0.x, false)) >> (~vec2<u32>(1u, u_input.a) % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a, ~u_input.a), ~(~vec2<u32>(u_input.a, 49305u))) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 23>();
    global1 = array<bool, 11>();
    global0 = array<vec3<f32>, 18>();
    let var_0 = global2[_wgslsmith_index_u32(~u_input.a, 23u)];
    let var_1 = global1[_wgslsmith_index_u32(11522u, 11u)];
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-525f)), var_0.a.x))));
    let var_3 = global2[_wgslsmith_index_u32(~func_1(), 23u)];
    var var_4 = vec3<bool>(global1[_wgslsmith_index_u32(min(u_input.a, u_input.a), 11u)], 2258f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + var_3.a.x)), false);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-29089i), ~(vec4<u32>(~u_input.a, 0u, ~37515u, 32101u) << (vec4<u32>(74089u, 1u, u_input.a, _wgslsmith_sub_u32(u_input.a, 4294967295u)) % vec4<u32>(32u))), abs(-vec3<i32>(-2147483647i, 1i, -2147483647i)));
}

