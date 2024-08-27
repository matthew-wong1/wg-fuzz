struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

var<private> global0: array<vec3<f32>, 22>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = Struct_1(abs(_wgslsmith_div_u32(_wgslsmith_sub_u32(35983u, 33424u), 13481u)) ^ ~u_input.a);
    var var_1 = Struct_1(42126u);
    var_1 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, ~1u), _wgslsmith_mult_u32(abs(var_1.a), var_1.a)), _wgslsmith_clamp_u32(u_input.a, 92836u, reverseBits(21669u))));
    var_1 = Struct_1(_wgslsmith_mult_u32(var_1.a, var_1.a));
    global0 = array<vec3<f32>, 22>();
    return vec2<bool>(firstLeadingBit(abs(-1i << (u_input.a % 32u))) != -1i, true);
}

fn func_2() -> bool {
    var var_0 = Struct_1(8539u);
    var var_1 = true;
    var_1 = !all(!vec2<bool>(all(vec2<bool>(true, false)), all(vec2<bool>(true, false))));
    let var_2 = Struct_1(~(~firstLeadingBit(6447u)));
    var var_3 = _wgslsmith_div_vec4_u32(~vec4<u32>(~(~0u), var_2.a, 4294967295u, var_2.a), (~(vec4<u32>(u_input.b.x, 10240u, 11279u, 0u) & vec4<u32>(var_2.a, u_input.b.x, 59035u, var_0.a)) << (vec4<u32>(1u, var_2.a & 4294967295u, _wgslsmith_add_u32(47219u, 1u), ~var_2.a) % vec4<u32>(32u))) & vec4<u32>(0u, _wgslsmith_add_u32(16620u, max(31116u, 0u)), (var_0.a | var_2.a) & 23640u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a, 1u, 0u), vec3<u32>(53521u, 13164u, 31572u))));
    return any(vec4<bool>(!any(func_3(-1i)), true, var_0.a == 4294967295u, any(vec4<bool>(true, true, true, true))));
}

fn func_1() -> bool {
    global0 = array<vec3<f32>, 22>();
    global0 = array<vec3<f32>, 22>();
    global0 = array<vec3<f32>, 22>();
    global0 = array<vec3<f32>, 22>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(134f)))));
    return any(vec3<bool>(any(vec4<bool>(true, true, true, true)), func_2(), !func_2()));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: i32) -> bool {
    var var_0 = Struct_1(~69536u);
    var var_1 = Struct_1(4294967295u);
    let var_2 = true;
    var var_3 = vec3<bool>(true, -1000f != _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-245f)), _wgslsmith_f_op_f32(f32(-1f) * -1287f)), _wgslsmith_f_op_f32(f32(-1f) * -203f))), select(true, arg_0.x || var_2, !all(!vec3<bool>(arg_0.x, var_2, false))));
    var_1 = Struct_1(firstLeadingBit(var_0.a));
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>, arg_3: bool) -> StorageBuffer {
    var var_0 = ~(~arg_2.x);
    var var_1 = arg_2;
    var var_2 = u_input.b;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-133f, -202f, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 22>();
    var var_0 = 487f;
    let var_1 = !vec2<bool>(all(vec3<bool>(true, true, true)), u_input.b.x < 4294967295u);
    global0 = array<vec3<f32>, 22>();
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -542f)))) * _wgslsmith_f_op_f32(step(295f, -3549f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(755f - _wgslsmith_f_op_f32(f32(-1f) * -949f)) - _wgslsmith_f_op_f32(-461f - _wgslsmith_f_op_f32(-1683f + 1424f)))));
    let x = u_input.a;
    s_output = func_5(Struct_1(u_input.a), -45754i, vec3<i32>(countOneBits(1i) << (u_input.b.x % 32u), 14899i, _wgslsmith_sub_i32(~1i, min(-1i, ~(-9689i)))), func_4(vec3<bool>(true, !func_1(), true), vec2<u32>(0u, u_input.a), -2147483647i));
}

