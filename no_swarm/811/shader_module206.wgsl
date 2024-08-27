struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: i32, arg_3: Struct_1) -> vec2<i32> {
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    var var_0 = max(35613u, ~1u);
    var var_1 = arg_1.a.c;
    return vec2<i32>(~(-1545i), -1i);
}

fn func_2() -> i32 {
    let var_0 = Struct_2(Struct_1(~12839u, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], 710f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(69044u, 14u)], 1761f, global0[_wgslsmith_index_u32(14397u, 14u)]), vec3<f32>(-1618f, 919f, -1288f), true))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(59791u, 14u)] + -626f), _wgslsmith_f_op_f32(-1352f - global0[_wgslsmith_index_u32(1u, 14u)]), global0[_wgslsmith_index_u32(~13154u, 14u)]))), all(vec2<bool>(true, true)), Struct_1(_wgslsmith_div_u32(1u | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 61624u), vec3<u32>(11023u, 0u, 1u)), _wgslsmith_mod_u32(9217u, 4294967295u) >> (select(10337u, 4294967295u, true) % 32u)), false), 4294967295u);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(-var_0.b), true));
    var var_2 = vec4<i32>(1i, -3217i, _wgslsmith_add_i32(-(~_wgslsmith_mod_i32(7442i, 4527i)), _wgslsmith_dot_vec2_i32(select(~vec2<i32>(-1i, u_input.a), -vec2<i32>(-2147483647i, u_input.a), all(vec3<bool>(true, var_0.d.b, false))), func_3(~var_0.d.a, Struct_4(Struct_3(var_0.a, -1i, var_0.a)), ~15249i, Struct_1(var_0.e, false)))), u_input.a);
    let var_3 = vec3<i32>(-2147483647i, abs(-6921i) ^ max(abs(-var_2.x), min(~var_2.x, ~var_2.x)), -reverseBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), var_2.zy)));
    let var_4 = var_0.a.b;
    return u_input.a;
}

fn func_1(arg_0: f32, arg_1: i32) -> bool {
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    var var_0 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(-22652i, -1i, abs(arg_1)), max(~(~arg_1), u_input.a));
    var_0 = -func_2();
    return any(vec4<bool>(!(arg_0 != -334f), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true))), true, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(~_wgslsmith_div_i32(abs(u_input.a), u_input.a), u_input.a);
    var var_1 = true;
    global0 = array<f32, 14>();
    let var_2 = func_1(612f, ~(-2147483647i));
    let var_3 = Struct_2(Struct_1(min(1u, abs(63228u)) >> (_wgslsmith_clamp_u32(~64416u, _wgslsmith_mod_u32(4294967295u, 1u), 1u) % 32u), any(vec3<bool>(var_2, var_2 & var_2, true))), vec3<f32>(global0[_wgslsmith_index_u32(~62606u, 14u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstLeadingBit(5520u), 14u)] - _wgslsmith_f_op_f32(499f + global0[_wgslsmith_index_u32(0u, 14u)])) - _wgslsmith_div_f32(1770f, global0[_wgslsmith_index_u32(21787u, 14u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(countOneBits(4294967295u), 14u)] + 536f)))), _wgslsmith_mod_u32(4943u, _wgslsmith_add_u32(~78674u, firstTrailingBit(36923u))) >= _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 40712u, 37566u), ~vec3<u32>(1u, 49306u, 20160u)), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(69494u, 5552u, 10722u), vec3<u32>(23388u, 4294967295u, 1u)))), Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(9516u, 40181u), vec2<u32>(1u, 1u)), var_2), max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_div_u32(4294967295u, 1u), 1u, ~21501u), reverseBits(vec4<u32>(1562u, 4294967295u, 1u, 3538u)))));
    var var_4 = Struct_2(var_3.d, vec3<f32>(global0[_wgslsmith_index_u32(var_3.d.a, 14u)], _wgslsmith_f_op_f32(-var_3.b.x), -680f), all(vec4<bool>(!(var_3.a.a > 102570u), true, true, true)), Struct_1(1u, false), ~10160u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_4.b - vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], 377f, var_3.b.x)), vec3<f32>(var_3.b.x, global0[_wgslsmith_index_u32(var_4.a.a, 14u)], 336f), any(vec3<bool>(false, false, true))))))));
}

