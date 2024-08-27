struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 20>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> u32 {
    var var_0 = Struct_1(91993u, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, 0i, arg_1.x, -36758i), vec4<i32>(-7338i, global0.b.b, 2147483647i, 29494i)), select(vec2<bool>(all(!vec4<bool>(global0.c, global0.d, arg_0, false)), !any(global0.b.c)), select(select(vec2<bool>(arg_0, arg_0), global0.b.c, arg_0), vec2<bool>(all(global0.b.c), arg_0), vec2<bool>(any(vec4<bool>(arg_0, false, arg_0, false)), true)), select(!vec2<bool>(false, global0.c), vec2<bool>(global0.d, true), any(!vec3<bool>(true, arg_0, true)))));
    var_0 = Struct_1(global0.b.a, -global0.b.b >> (78199u % 32u), !global0.b.c);
    let var_1 = global1[_wgslsmith_index_u32(1u | _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(~global0.b.a, _wgslsmith_div_u32(1u, var_0.a)), _wgslsmith_div_u32(var_0.a, global0.b.a)), 0u), 20u)];
    let var_2 = Struct_1(~((~var_1.b.a | 4294967295u) << ((~15414u >> (var_1.b.a % 32u)) % 32u)), -32223i, select(var_1.b.c, var_0.c, any(vec4<bool>(all(vec3<bool>(false, var_0.c.x, arg_0)), arg_0, var_0.b > var_1.b.b, true))));
    global1 = array<Struct_2, 20>();
    return _wgslsmith_mult_u32(0u, abs(max(select(_wgslsmith_mod_u32(47791u, 1u), u_input.a.x, global0.c), ~_wgslsmith_clamp_u32(var_1.b.a, 4294967295u, global0.b.a))));
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(global0.b.a, ~u_input.c), 20u)];
    let var_1 = Struct_1(1u, global0.b.b ^ -_wgslsmith_clamp_i32(abs(0i), -var_0.b.b, -var_0.b.b), var_0.b.c);
    global0 = global1[_wgslsmith_index_u32(min(u_input.a.x, ~global0.b.a), 20u)];
    let var_2 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, 0u, _wgslsmith_clamp_u32(1u, global0.b.a, 7744u), 29145u), vec4<u32>(func_3(arg_0.x, vec4<i32>(u_input.b.x, 1i, -2147483647i, -34053i)), ~38669u, ~4294967295u, 4294967295u)), var_1.a), ~var_0.b.b, var_1.c);
    let var_3 = ~select(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.a, var_1.a, var_2.a, 15234u), vec4<u32>(var_2.a, var_2.a, 4294967295u, 1u)) & (vec4<u32>(var_1.a, var_0.b.a, var_2.a, 1u) ^ vec4<u32>(u_input.c, 23555u, var_2.a, global0.b.a)), vec4<u32>(30193u, 4294967295u, var_1.a, global0.b.a ^ global0.b.a)), vec4<u32>(~var_2.a, 33216u, global0.b.a ^ ~global0.b.a, 1u), select(select(!vec4<bool>(var_1.c.x, true, var_0.d, false), vec4<bool>(false, arg_0.x, true, true), all(vec2<bool>(false, var_0.c))), select(vec4<bool>(var_1.c.x, var_0.b.c.x, false, var_2.c.x), vec4<bool>(var_0.c, true, false, global0.b.c.x), var_1.c.x), !(!vec4<bool>(arg_0.x, var_2.c.x, true, true))));
    return ~2447u;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -841f), Struct_1(firstTrailingBit(~(~0u)), u_input.b.x, global0.b.c), select(all(!vec4<bool>(global0.d, true, false, true)), all(!(!global0.b.c)), 1i == ~_wgslsmith_mult_i32(2147483647i, u_input.b.x)), global0.c);
    let var_0 = global1[_wgslsmith_index_u32(~(~u_input.a.x), 20u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1028f * 567f), _wgslsmith_div_f32(979f, 1893f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-126f + arg_1), arg_1)))));
    let var_2 = _wgslsmith_clamp_u32(var_0.b.a, u_input.c, 9349u) & 67040u;
    global1 = array<Struct_2, 20>();
    return global1[_wgslsmith_index_u32(var_2, 20u)];
}

fn func_1() -> Struct_2 {
    global0 = func_4(~vec4<u32>(func_2(vec3<bool>(global0.c, true, true)) ^ 10493u, 4294967295u, firstLeadingBit(0u), abs(u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(314f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global0.a))), global0.a));
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(1353f, _wgslsmith_f_op_f32(719f + _wgslsmith_f_op_f32(-113f * global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1485f, -144f)) + _wgslsmith_f_op_f32(floor(219f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), -1871f))), func_4(~vec4<u32>(global0.b.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0.b.a), vec2<u32>(u_input.c, 51589u)), _wgslsmith_dot_vec2_u32(vec2<u32>(47173u, 20477u), vec2<u32>(u_input.c, global0.b.a)), abs(19892u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, 1280f)))).b, true, any(select(vec3<bool>(!global0.d, global0.b.a > 60869u, true), vec3<bool>(any(vec3<bool>(global0.b.c.x, global0.d, true)), all(vec2<bool>(true, global0.b.c.x)), !global0.c), !select(vec3<bool>(true, global0.d, global0.c), vec3<bool>(global0.b.c.x, true, false), vec3<bool>(global0.c, global0.b.c.x, global0.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = Struct_1(global0.b.a, -2147483647i, global0.b.c);
    var var_1 = _wgslsmith_sub_i32(-func_1().b.b, 31476i);
    var_1 = u_input.b.x;
    global1 = array<Struct_2, 20>();
    var var_2 = vec4<i32>(i32(-1i) * -16508i, ~(var_0.b >> (_wgslsmith_clamp_u32(~1u, ~var_0.a, min(4294967295u, global0.b.a)) % 32u)), -((_wgslsmith_add_i32(global0.b.b, 0i) >> (global0.b.a % 32u)) & global0.b.b), var_0.b);
    var var_3 = global0.c;
    var var_4 = var_0;
    var_2 = -vec4<i32>(30614i, u_input.b.x, -2147483647i, _wgslsmith_mult_i32(var_4.b, _wgslsmith_sub_i32(min(4774i, -1i), -var_4.b)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec4<u32>(~global0.b.a, var_0.a, 4294967295u, min(25494u, 4294967295u))), ~var_0.a);
}

