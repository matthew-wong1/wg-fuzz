struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> u32 {
    return 4294967295u;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> vec4<f32> {
    let var_0 = arg_0;
    global0 = array<vec2<bool>, 6>();
    let var_1 = ~(-_wgslsmith_add_i32(select(-2147483647i, -u_input.b.x, !arg_2), 1i >> (max(u_input.a, 4294967295u) % 32u)));
    let var_2 = Struct_1(var_0.a, arg_0.b, vec3<bool>(1u >= u_input.a, true, _wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(arg_0.a.x * -1518f))) >= var_0.a.x));
    let var_3 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.x), 1f)));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1825f, var_3.x) - var_3.x))), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -838f) - var_2.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.x), -1058f));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = countOneBits(vec4<u32>(firstTrailingBit(~u_input.a), 59520u, firstTrailingBit(0u), ~_wgslsmith_div_u32(46841u, arg_0))) & vec4<u32>(~1u & ~arg_0, firstLeadingBit(u_input.a), arg_0, ~1u);
    global0 = array<vec2<bool>, 6>();
    var var_1 = _wgslsmith_f_op_f32(min(721f, 3151f));
    var var_2 = select(any(vec3<bool>(all(vec3<bool>(true, true, true)), any(vec4<bool>(false, true, true, true)), false)), true == !any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), true)), (u_input.b.x ^ ~(i32(-1i) * -24289i)) < _wgslsmith_sub_i32(_wgslsmith_add_i32(max(-13372i, 12860i), min(-92262i, -5509i)), ~u_input.b.x));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(-794f, 139f, 701f, 1241f), -29565i, vec3<bool>(false, true, false)), -107f, true)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(214f, -1029f, 2451f, 1101f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-142f, 1660f, -123f, 1811f)))))), ~(-2147483647i), vec3<bool>(~0u != ~_wgslsmith_add_u32(1u, var_0.x), true, true));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 6>();
    global0 = array<vec2<bool>, 6>();
    var var_0 = u_input.b.x << (~(_wgslsmith_mod_u32(~0u, 2793u) >> (~func_1(u_input.b.x, vec2<f32>(-390f, 2045f)) % 32u)) % 32u);
    var var_1 = vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(~26196u, u_input.a), min(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 1u))) << (~_wgslsmith_mod_u32(u_input.a, 35609u) % 32u));
    let var_2 = !vec2<bool>(false, true != func_2(var_1.x << (36712u % 32u)));
    var var_3 = Struct_1(vec4<f32>(913f, 406f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1055f - 145f)))), _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(1000f, 1673f, -509f, 1934f), u_input.b.x, vec3<bool>(false, false, var_2.x)), 1787f, var_2.x)).x, _wgslsmith_f_op_f32(-277f - _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(547f, 124f, -155f, 1000f), 0i, vec3<bool>(var_2.x, var_2.x, var_2.x)), -1000f, true)).x))), select(u_input.b.x, min(abs(u_input.b.x), 1i), !select(true, var_2.x, true)), vec3<bool>(!(!func_2(u_input.a)), var_2.x, var_2.x));
    var_1 = _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(4294967295u, 5108u)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_1.x), vec2<u32>(_wgslsmith_sub_u32(1u, u_input.a), ~firstTrailingBit(16927u))));
    global0 = array<vec2<bool>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mod_vec4_u32(~vec4<u32>(60619u, u_input.a, u_input.a, var_1.x) >> (vec4<u32>(11838u, var_1.x, 4294967295u, var_1.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 1u, 1u, 62567u), vec4<u32>(4294967295u, var_1.x, 10554u, 26469u) >> (vec4<u32>(u_input.a, var_1.x, 684u, u_input.a) % vec4<u32>(32u)))), vec4<u32>(u_input.a >> (_wgslsmith_mult_u32(var_1.x, 31928u) % 32u), min(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 0u, var_1.x), vec4<u32>(50146u, 4294967295u, 4294967295u, 0u))), ~_wgslsmith_sub_u32(0u, var_1.x), 28930u), any(vec4<bool>(var_3.c.x, !var_2.x, var_2.x, false))), var_3.b);
}

