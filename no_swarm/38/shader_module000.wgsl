struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(-456f);

var<private> global1: Struct_1;

var<private> global2: vec3<i32> = vec3<i32>(-1i, i32(-2147483648), 4246i);

var<private> global3: f32 = -679f;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 1u)])) + -445f)));
    let var_0 = true | (((~4294967295u & global1.d.x) << (_wgslsmith_mod_u32(global1.d.x, ~u_input.b.x) % 32u)) <= 13086u);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.b.x, 1u)])), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(28629u, 4294967295u, global1.b), 1u)])) + 431f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global1.b, 1u)]))))));
    var var_2 = _wgslsmith_f_op_f32(select(-320f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -282f) + _wgslsmith_f_op_f32(-1000f + global0[_wgslsmith_index_u32(global1.d.x, 1u)])))))), !(~1533u != global1.d.x)));
    let var_3 = _wgslsmith_mod_i32(-countOneBits(firstTrailingBit(-28458i)), -2147483647i);
    return select(select(select(vec4<bool>(true, !global1.a, var_0, false), select(!vec4<bool>(global1.e.x, false, true, false), !vec4<bool>(false, true, var_0, global1.e.x), global1.c.x == 0i), 363f == _wgslsmith_f_op_f32(var_1.x + var_1.x)), vec4<bool>(true, global1.e.x, false, false), vec4<bool>(any(!vec3<bool>(true, var_0, true)), global1.a, all(vec2<bool>(global1.a, true)), global1.a)), !(!(!select(vec4<bool>(var_0, true, false, true), vec4<bool>(false, true, var_0, true), vec4<bool>(global1.a, global1.a, var_0, global1.e.x)))), (any(select(vec2<bool>(var_0, true), global1.e.yy, true)) | any(!vec4<bool>(false, true, global1.a, true))) | (u_input.b.x >= global1.b));
}

fn func_2() -> vec4<u32> {
    global1 = Struct_1(!any(func_3()), 4294967295u, global1.c, u_input.b, !(!(!func_3().zxx)));
    global0 = array<f32, 1>();
    var var_0 = _wgslsmith_mod_vec3_u32(u_input.b, ~vec3<u32>(~min(43343u, global1.b), ~0u >> (global1.b % 32u), global1.b));
    var var_1 = select(vec3<bool>(true, global0[_wgslsmith_index_u32(abs(global1.b), 1u)] != -649f, true), select(!(!global1.e), !select(vec3<bool>(global1.e.x, global1.e.x, global1.e.x), vec3<bool>(false, global1.a, global1.a), vec3<bool>(global1.a, true, true)), vec3<bool>(_wgslsmith_clamp_u32(4294967295u, u_input.b.x, 1860u) != abs(1u), !(!global1.a), true)), global1.e);
    let var_2 = ~select(0u, var_0.x, func_3().x);
    return abs(max(vec4<u32>(1u, 1u, firstLeadingBit(var_2), ~(~global1.d.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 1u, global1.d.x), vec4<u32>(var_2, var_2, global1.b, 1u)) | vec4<u32>(~60632u, ~1u, ~var_0.x, abs(4294967295u))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = vec4<u32>(global1.b, _wgslsmith_dot_vec4_u32(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b, 1u, global1.d.x, 25898u), vec4<u32>(30249u, u_input.b.x, global1.d.x, 15659u), vec4<u32>(global1.d.x, u_input.b.x, 1u, u_input.b.x)) & ~vec4<u32>(global1.d.x, arg_0.b, arg_0.d.x, global1.d.x)), abs(func_2())), global1.b, arg_0.b);
    return ~_wgslsmith_mult_u32(~(~4294967295u) & (select(global1.d.x, 0u, arg_0.a) ^ abs(1u)), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 1>();
    global2 = ~(~abs(vec3<i32>(u_input.a, ~(-2147483647i), 41542i >> (u_input.b.x % 32u))));
    let var_0 = global1.c.x;
    global3 = _wgslsmith_f_op_f32(781f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 1u)] + global0[_wgslsmith_index_u32(4294967295u, 1u)]))) * -529f), -496f));
    var var_1 = 12688u;
    global2 = ~(vec3<i32>(_wgslsmith_add_i32(global2.x, global1.c.x), _wgslsmith_div_i32(-2147483647i, ~0i), -1i) << (u_input.b % vec3<u32>(32u)));
    let var_2 = Struct_1((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(36796u, 1u)] + -1489f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -686f) * global0[_wgslsmith_index_u32(global1.d.x, 1u)])) != !global1.e.x, global1.b, vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -global1.c.x, global2.x), _wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(-2147483647i, -9237i, -25096i, global2.x)), vec4<i32>(~global2.x, firstLeadingBit(17822i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global2.x, 1i, -34723i), vec4<i32>(global1.c.x, global1.c.x, -38714i, 0i)), -global1.c.x))), ~(~vec3<u32>(u_input.b.x, 1u, ~u_input.b.x)), vec3<bool>(false, global1.e.x, true));
    global0 = array<f32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~var_2.b, 1u)], vec4<u32>(global1.d.x, var_2.b, ~func_1(Struct_1(false, 12721u, global1.c, global1.d, global1.e)), 4294967295u), _wgslsmith_add_u32(global1.d.x, ~23334u));
}

