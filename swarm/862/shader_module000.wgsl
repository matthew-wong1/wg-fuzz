struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 61093i;

var<private> global1: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1537f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(570f - 714f) - 1283f), true)) - _wgslsmith_f_op_f32(floor(-245f))));
    let var_1 = vec3<u32>(4561u, max(~(~(~u_input.b.x)), _wgslsmith_mult_u32(u_input.b.x, 30051u)), u_input.b.x);
    let var_2 = vec2<i32>(_wgslsmith_add_i32(-87807i, 43543i), 0i >> (1u % 32u));
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))) * _wgslsmith_f_op_f32(602f + -772f))));
    var var_3 = abs(var_1.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.a, -1233f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2306f - 1448f)));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-909f - 1815f) * _wgslsmith_f_op_f32(-368f - 362f))), _wgslsmith_f_op_f32(floor(-1622f))));
    var var_1 = abs(u_input.b.ywx);
    let var_2 = Struct_1(true, -vec2<i32>(-1i, -72474i), firstLeadingBit(u_input.b));
    let var_3 = !var_2.a;
    let var_4 = vec4<bool>(var_2.a == false, !(!var_2.a), true, any(vec2<bool>(true, firstLeadingBit(57988u) >= var_1.x)));
    return u_input.b.x;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec2<bool>(!(max(0u, u_input.b.x >> (u_input.b.x % 32u)) != ~_wgslsmith_sub_u32(82672u, 26578u)), ((u_input.b.x == func_2()) == any(vec4<bool>(true, true, true, true))) || all(vec4<bool>(false, true, true, all(vec3<bool>(true, true, false)))));
    global1 = -1051f;
    global0 = abs(31015i);
    var var_1 = arg_0;
    var_1 = arg_0;
    return Struct_1(false, firstLeadingBit(vec2<i32>(-1i, u_input.a.x)) & vec2<i32>(u_input.a.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -38942i), u_input.a)), _wgslsmith_mult_vec4_u32(max(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 1u), vec4<u32>(97588u, 51179u, 0u, 4294967295u)), u_input.b), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b.xyx, vec3<u32>(51685u, u_input.b.x, 85157u)) << (u_input.b.x % 32u), 0u, 1u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~vec4<i32>(_wgslsmith_div_i32(-16826i, u_input.a.x), -68452i, 0i, 1i));
    var var_1 = func_1(Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1924f), 1f))));
    let var_2 = 0u;
    global0 = 1i;
    var var_3 = -22633i;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-467f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-764f, 2774f)) + -1043f) * -1163f));
    let x = u_input.a;
    s_output = StorageBuffer(var_4);
}

