struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25>;

var<private> global1: vec2<u32> = vec2<u32>(28623u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global0 = array<Struct_4, 25>();
    var var_0 = Struct_3(vec4<bool>(!any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), true, any(vec3<bool>(true, true, true)), arg_0.x < _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1025f, arg_0.x)))));
    var_0 = Struct_3(select(!vec4<bool>(var_0.a.x, false, var_0.a.x, true), var_0.a, var_0.a.x));
    var var_1 = var_0.a.wxy;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 218f))), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(f32(-1f) * -1880f)))), arg_0.x, 154f);
    return var_0.a.x;
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_5(4294967295u, !vec4<bool>(!any(vec3<bool>(true, false, true)), arg_0.x, all(arg_0), true), vec3<bool>(true && !func_3(vec3<f32>(-1019f, 662f, -1694f)), false, arg_0.x), _wgslsmith_add_vec2_u32(min(_wgslsmith_add_vec2_u32(select(vec2<u32>(global1.x, 16277u), vec2<u32>(25566u, 14214u), vec2<bool>(arg_0.x, arg_0.x)), ~vec2<u32>(1u, u_input.a)), ~vec2<u32>(13338u, global1.x)), countOneBits(~reverseBits(vec2<u32>(global1.x, 29436u)))), true);
    var var_1 = ~(~(~1u) | reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(50475u, var_0.a), var_0.d))) ^ global1.x;
    global0 = array<Struct_4, 25>();
    return Struct_3(select(!vec4<bool>(true, arg_0.x && true, true, any(var_0.b.zww)), var_0.b, false));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> vec4<bool> {
    var var_0 = Struct_3(vec4<bool>(true, true, true, _wgslsmith_div_i32(countOneBits(-2147483647i), -39409i) > u_input.d.x));
    global1 = vec2<u32>(firstLeadingBit(global1.x & _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, 1u), ~u_input.a)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global1.x, global1.x, u_input.c), vec4<u32>(0u, 4294967295u, 66358u, u_input.b)), vec4<u32>(0u, global1.x, 20077u, u_input.a)), _wgslsmith_sub_vec4_u32(~vec4<u32>(77781u, u_input.c, global1.x, 59844u), ~vec4<u32>(50305u, global1.x, 5902u, 1u))));
    var_0 = func_2(!var_0.a.xw);
    let var_1 = Struct_2(Struct_1(reverseBits(global1.x | global1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_1)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x + arg_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(755f, arg_1, arg_1, 297f)) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-418f * arg_1), arg_1, arg_0.x)), vec3<bool>(any(var_0.a) | false, true, all(vec2<bool>(true, true))), vec4<bool>(!any(vec2<bool>(var_0.a.x, var_0.a.x)), true, var_0.a.x, global1.x != _wgslsmith_dot_vec2_u32(vec2<u32>(121474u, u_input.a), vec2<u32>(u_input.a, 114697u)))), !var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-341f)))), _wgslsmith_mult_i32(-1i, -select(u_input.d.x, abs(53006i), true)), ~global1.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.c.x, arg_0.x))) - var_1.c) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    return !(!vec4<bool>(var_0.a.x, true, var_0.a.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1262f, -305f, 677f, 425f) + vec4<f32>(-3011f, 553f, -1000f, -1000f)), _wgslsmith_div_f32(-1266f, _wgslsmith_div_f32(-559f, 278f))), vec4<bool>(true, true, true, true)));
    global1 = reverseBits(vec2<u32>(max(~_wgslsmith_mod_u32(global1.x, global1.x), global1.x), u_input.c));
    var var_1 = Struct_1(4294967295u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-463f + _wgslsmith_f_op_f32(ceil(1f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1099f - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1781f + -1000f), _wgslsmith_f_op_f32(-247f + -1377f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -307f), _wgslsmith_f_op_f32(step(1372f, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -940f))) - -1483f)), vec3<bool>(false & !var_0.a.x, any(vec4<bool>(func_2(var_0.a.wx).a.x, true, true, true)), select(any(var_0.a) && any(var_0.a.yz), true && any(var_0.a.yz), true)), var_0.a);
    var var_2 = var_0.a.x;
    var var_3 = 1608f;
    var var_4 = Struct_1(u_input.a, _wgslsmith_f_op_f32(305f * _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1229f, 1264f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-523f, _wgslsmith_div_f32(-992f, var_1.b), -346f, _wgslsmith_f_op_f32(-var_1.c.x)) - _wgslsmith_f_op_vec4_f32(var_1.c * _wgslsmith_f_op_vec4_f32(-var_1.c)))), vec3<bool>(true, var_1.e.x, var_0.a.x), func_1(vec4<f32>(var_1.c.x, _wgslsmith_div_f32(-292f, _wgslsmith_f_op_f32(477f * var_1.c.x)), var_1.c.x, 1834f), -680f));
    var var_5 = _wgslsmith_f_op_f32(select(-519f, -591f, false));
    let var_6 = _wgslsmith_clamp_vec2_u32(vec2<u32>(25551u, global1.x), vec2<u32>(67528u, ~(~(~u_input.b))), firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(34551u, 4294967295u >> (1u % 32u)), ~u_input.b)));
    var var_7 = Struct_2(Struct_1(_wgslsmith_clamp_u32(var_4.a, 4294967295u, 0u), -346f, vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.c.x - 106f) + _wgslsmith_f_op_f32(-var_4.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.b), var_1.b)), var_4.c.x), !(!vec3<bool>(var_4.e.x, var_4.d.x, var_4.d.x)), vec4<bool>(select(var_4.a, global1.x, true) > var_4.a, var_1.d.x, false, false)), !var_0.a.x, _wgslsmith_f_op_f32(sign(var_1.b)), u_input.d.x, abs(1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.c.zwy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -500f)), vec2<u32>(~reverseBits(~0u), 0u | ~abs(u_input.b)), _wgslsmith_f_op_f32(-1877f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-190f - var_1.b) * -1000f), _wgslsmith_f_op_f32(select(-338f, -244f, true)))), ~vec4<u32>(1u, ~_wgslsmith_add_u32(48012u, global1.x), 1u, 22246u));
}

