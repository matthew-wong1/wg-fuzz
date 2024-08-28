struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<f32>, 1>;

var<private> global2: array<i32, 25> = array<i32, 25>(2147483647i, 71655i, 2514i, 90705i, 2147483647i, -43619i, 971i, -22106i, -28279i, 2147483647i, 2147483647i, 2147483647i, -12408i, -1i, 36517i, 2147483647i, i32(-2147483648), 1i, 1i, i32(-2147483648), -1i, 2147483647i, -12650i, i32(-2147483648), i32(-2147483648));

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<bool>(false, true), 709f, true, false), Struct_1(vec2<bool>(false, true), 103f, false, true), Struct_1(vec2<bool>(false, false), 828f, false, false), Struct_1(vec2<bool>(false, false), 1052f, false, true), Struct_1(vec2<bool>(true, true), 678f, true, false), Struct_1(vec2<bool>(true, false), 1483f, true, true), Struct_1(vec2<bool>(false, true), -646f, true, false), Struct_1(vec2<bool>(true, true), 521f, true, true), Struct_1(vec2<bool>(false, true), -105f, false, true), Struct_1(vec2<bool>(true, false), 635f, true, false), Struct_1(vec2<bool>(true, true), 1114f, false, false), Struct_1(vec2<bool>(false, false), 964f, false, true), Struct_1(vec2<bool>(true, true), 1527f, false, false), Struct_1(vec2<bool>(false, false), 413f, false, false), Struct_1(vec2<bool>(true, false), 757f, false, true), Struct_1(vec2<bool>(false, false), 1000f, true, true), Struct_1(vec2<bool>(false, true), 1507f, false, true), Struct_1(vec2<bool>(false, false), 773f, false, false), Struct_1(vec2<bool>(true, false), -645f, true, true), Struct_1(vec2<bool>(false, true), 163f, false, false), Struct_1(vec2<bool>(true, false), -802f, false, false), Struct_1(vec2<bool>(true, true), 1012f, true, true), Struct_1(vec2<bool>(false, false), 109f, true, true), Struct_1(vec2<bool>(true, true), -1105f, true, true), Struct_1(vec2<bool>(false, true), -462f, false, false), Struct_1(vec2<bool>(true, true), -1000f, false, true), Struct_1(vec2<bool>(false, true), 1427f, true, false), Struct_1(vec2<bool>(false, true), -951f, false, true), Struct_1(vec2<bool>(true, true), -1000f, true, false), Struct_1(vec2<bool>(true, false), -429f, false, true), Struct_1(vec2<bool>(false, false), -801f, true, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    var var_0 = 789f;
    return Struct_1(vec2<bool>(true, true), 1f, true, false);
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> vec2<f32> {
    global1 = array<vec2<f32>, 1>();
    global0 = u_input.a;
    var var_0 = select(abs(arg_0), countOneBits(-arg_0), vec4<bool>(!(!any(vec3<bool>(arg_2.x, arg_3.d, arg_3.c))), any(!vec4<bool>(false, false, arg_2.x, arg_2.x)), false, all(select(!vec3<bool>(false, arg_3.a.x, arg_3.c), vec3<bool>(arg_2.x, arg_3.a.x, arg_2.x), false))));
    var var_1 = func_2();
    global1 = array<vec2<f32>, 1>();
    return global1[_wgslsmith_index_u32(u_input.a, 1u)];
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_clamp_vec4_i32(countOneBits(-abs(vec4<i32>(1i, u_input.c.x, u_input.b, -1i) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(4294967295u, 25u)], ~(-u_input.b)), -(global2[_wgslsmith_index_u32(u_input.a, 25u)] >> (0u % 32u)), firstTrailingBit(_wgslsmith_mult_i32(abs(0i), abs(16099i))), _wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.c, abs(u_input.c)))), -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 1i, 13252i, -14005i), ~vec4<i32>(-17479i, -42404i, global2[_wgslsmith_index_u32(u_input.a, 25u)], global2[_wgslsmith_index_u32(18295u, 25u)]), vec4<i32>(u_input.b, 12416i, global2[_wgslsmith_index_u32(u_input.a, 25u)], global2[_wgslsmith_index_u32(26659u, 25u)]))));
    global1 = array<vec2<f32>, 1>();
    var var_1 = vec2<bool>(true, false);
    global0 = 93640u;
    var var_2 = -var_0.x;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(var_0, _wgslsmith_sub_i32(var_0.x, _wgslsmith_mult_i32(u_input.c.x, -2147483647i)) << (_wgslsmith_sub_u32(58371u, _wgslsmith_mult_u32(u_input.a, 1344u)) % 32u), !(!vec2<bool>(false, var_1.x)), func_2())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(0u, 1u)])), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(500f - -1071f) - _wgslsmith_f_op_f32(f32(-1f) * -510f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1330f, -1210f)))));
    var var_1 = vec4<u32>(6396u, _wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(u_input.a, 0u), min(103333u, ~7340u));
    var var_2 = vec2<bool>(true, true);
    var var_3 = global3[_wgslsmith_index_u32(~0u, 31u)];
    let var_4 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~1u, select(var_1.x, 58334u, true), ~0u, 4294967295u), ~(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 25446u, u_input.a, var_1.x), vec4<u32>(4294967295u, 1u, u_input.a, u_input.a)) << (~vec4<u32>(79945u, u_input.a, 3124u, u_input.a) % vec4<u32>(32u)))), 43015u), 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x >> (_wgslsmith_add_u32(4607u & _wgslsmith_mult_u32(u_input.a, 6155u), 46418u) % 32u), countOneBits(-firstLeadingBit(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], 1i, 1i)) << (~var_1.wxy % vec3<u32>(32u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.b, -1133f) - _wgslsmith_f_op_f32(-var_3.b)))))));
}

