struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

var<private> global1: array<vec3<f32>, 14>;

var<private> global2: array<i32, 2> = array<i32, 2>(1i, -16040i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2) -> u32 {
    global0 = array<i32, 10>();
    var var_0 = !vec2<bool>(true, arg_1.c);
    return 12930u;
}

fn func_1() -> vec3<u32> {
    return ~(~(vec3<u32>(1u, ~u_input.e, 1u) & vec3<u32>(func_2(vec4<u32>(79945u, u_input.c.x, u_input.e, 1u), Struct_2(vec3<u32>(u_input.c.x, 28989u, u_input.a), vec2<f32>(-1026f, -1001f), true, -16807i)), _wgslsmith_div_u32(4294967295u, u_input.a), 0u << (u_input.e % 32u))));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> f32 {
    let var_0 = false;
    var var_1 = vec3<bool>(true, all(vec4<bool>(!arg_1.c, !all(vec4<bool>(arg_1.c, true, true, true)), countOneBits(u_input.d.x) != _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d, u_input.b, global2[_wgslsmith_index_u32(66400u, 2u)], 8197i), vec4<i32>(-1i, -44600i, u_input.b, u_input.d.x)), var_0)), all(!vec2<bool>(arg_1.c, arg_1.c)));
    var var_2 = _wgslsmith_mod_i32(-14785i, global0[_wgslsmith_index_u32(~min(55076u, u_input.c.x), 10u)]);
    global1 = array<vec3<f32>, 14>();
    return -815f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(false, (u_input.a >> (_wgslsmith_div_u32(u_input.c.x, u_input.c.x) % 32u)) <= _wgslsmith_sub_u32(u_input.c.x, ~u_input.c.x), true));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -114f)));
    var var_2 = true;
    var var_3 = _wgslsmith_div_vec3_u32(func_1(), vec3<u32>(~u_input.c.x, _wgslsmith_clamp_u32(1u, ~u_input.c.x, 4294967295u), 1u));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(443f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_1) * 422f)), 746f, Struct_1(true, true, var_1), Struct_3(Struct_1(any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_1) + _wgslsmith_f_op_f32(-var_1))), vec3<u32>(_wgslsmith_sub_u32(50420u, u_input.c.x), ~30538u, _wgslsmith_mult_u32(u_input.a, 3737u)) ^ ~(vec3<u32>(var_3.x, var_3.x, var_3.x) >> (vec3<u32>(var_3.x, u_input.e, u_input.e) % vec3<u32>(32u))), all(select(vec2<bool>(true, false), vec2<bool>(true, true), true))), Struct_1(true, var_3.x >= var_3.x, var_1));
    var var_5 = vec3<u32>(~(var_3.x >> (var_3.x % 32u)), ~var_3.x, 61372u);
    var var_6 = Struct_1(!all(!vec4<bool>(false, var_4.d.a.b, false, var_4.e.a)) & true, false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), var_3.zx)), Struct_2(select(var_4.d.b, var_4.d.b, vec3<bool>(var_4.c.b, var_4.d.a.a, var_4.e.a)), vec2<f32>(-665f, var_4.a), all(vec2<bool>(var_4.d.a.b, true)), countOneBits(global2[_wgslsmith_index_u32(var_3.x, 2u)])))))));
    var var_7 = -vec3<i32>(global2[_wgslsmith_index_u32(~1u, 2u)], firstLeadingBit(-35554i), select(global2[_wgslsmith_index_u32(4294967295u, 2u)] & 35828i, global2[_wgslsmith_index_u32(u_input.e, 2u)], true)) & ~reverseBits(countOneBits(select(vec3<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)], 1i), vec3<i32>(-2147483647i, -31490i, 19282i), vec3<bool>(true, true, var_4.c.a))));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

