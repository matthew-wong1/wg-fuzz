struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> i32 {
    let var_0 = select(min(vec4<u32>(min(0u, u_input.a), firstLeadingBit(u_input.a), _wgslsmith_div_u32(abs(1u), ~0u), _wgslsmith_mult_u32(~u_input.a, min(4294967295u, u_input.a))), vec4<u32>(~u_input.a, u_input.a, u_input.a >> (1u % 32u), ~u_input.a)), ~(~(~(vec4<u32>(66253u, u_input.a, 0u, u_input.a) >> (vec4<u32>(1u, 14991u, u_input.a, u_input.a) % vec4<u32>(32u))))), select(vec4<bool>(arg_1, !arg_1, true & select(arg_1, true, arg_1), arg_1), vec4<bool>(!(u_input.a > u_input.a), all(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(false, true))), arg_1, arg_1), any(select(vec4<bool>(false, false, false, arg_1), select(vec4<bool>(arg_1, false, false, false), vec4<bool>(false, false, arg_1, false), vec4<bool>(false, arg_1, arg_1, arg_1)), true))));
    global0 = ~u_input.a;
    global0 = ~u_input.a;
    global0 = ~_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), var_0.yy), var_0.x) ^ _wgslsmith_mod_u32(~(~0u), firstTrailingBit(_wgslsmith_div_u32(var_0.x, 2705u) & _wgslsmith_sub_u32(u_input.a, 63459u)));
    let var_1 = vec4<bool>(u_input.a > 0u, false, arg_0.x > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) + _wgslsmith_f_op_f32(arg_0.x * arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1302f - 545f))), select(arg_1, true, true));
    return i32(-1i) * -_wgslsmith_div_i32(max(-1i, ~(-31388i)), 51082i);
}

fn func_2() -> Struct_2 {
    let var_0 = select(vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), false, !all(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), vec3<bool>(!(all(vec2<bool>(true, true)) && false), true & select(true, true, select(false, false, false)), true), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), !vec3<bool>(any(vec4<bool>(false, true, false, true)), all(vec2<bool>(false, true)), false)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(778f, 722f), vec2<f32>(-406f, -600f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-165f, 1453f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-548f, 138f) - vec2<f32>(1161f, -333f))), true))), vec4<i32>(countOneBits(func_3(vec4<f32>(-1000f, -1431f, -958f, -1000f), true)), ~1i, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-626f, -146f, -1119f, -397f)), !var_0.x), 0i), var_0.yy);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    let var_0 = u_input.a;
    global0 = ~24691u;
    let var_1 = vec3<bool>(arg_1.c.x, true, all(!(!vec3<bool>(true, true, arg_1.c.x))) == any(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, true)));
    let var_2 = vec3<bool>((4294967295u == countOneBits(~var_0)) && select(var_1.x, arg_1.c.x, true), !(!(_wgslsmith_f_op_f32(-arg_1.a.x) <= _wgslsmith_f_op_f32(1672f * 857f))), !(((arg_0 & 34212u) | ~23902u) >= firstTrailingBit(~64658u)));
    global0 = _wgslsmith_div_u32(min(arg_0, var_0), ~max(~u_input.a, 4294967295u >> (min(var_0, 4294967295u) % 32u)));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(231f - 1228f) + 1000f), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))), true, select(select(all(vec2<bool>(false, var_1.x)), !var_2.x, any(vec2<bool>(true, var_1.x))), !any(vec3<bool>(false, arg_1.c.x, true)), var_2.x), _wgslsmith_add_u32(107077u, _wgslsmith_div_u32(arg_0, u_input.a)) << ((arg_0 & (u_input.a | 13931u)) % 32u), -4243i), !select(!(!vec4<bool>(var_1.x, false, arg_1.c.x, true)), !vec4<bool>(var_2.x, true, true, arg_1.c.x), var_1.x), func_2());
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>) -> u32 {
    let var_0 = false;
    global0 = ~firstTrailingBit(u_input.a);
    let var_1 = arg_0.x;
    var var_2 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + arg_1.x)))));
    let var_3 = func_4(u_input.a >> (~firstLeadingBit(_wgslsmith_div_u32(u_input.a, u_input.a)) % 32u), func_2(), 1i >> (u_input.a % 32u));
    return ~var_3.b.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -966f;
    global0 = func_1(vec2<f32>(-1334f, _wgslsmith_f_op_f32(step(-2012f, var_0))), vec3<f32>(var_0, -1395f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1548f, var_0)) - _wgslsmith_div_f32(1000f, -974f)))));
    let var_1 = _wgslsmith_f_op_f32(-var_0);
    var var_2 = vec3<i32>(-(~(-func_4(1u, Struct_2(vec2<f32>(var_1, var_0), vec4<i32>(-56662i, 62503i, -6701i, -1i), vec2<bool>(false, false)), 21156i).d.b.x)), abs(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(238f, -1500f, var_0, -1795f)), true)), 0i);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(floor(-800f)), func_4(1u, func_4(min(u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a)), func_2(), _wgslsmith_div_i32(var_2.x, 1i) | ~var_2.x).d, var_2.x).b, select(select(func_4(0u, Struct_2(vec2<f32>(var_1, var_0), vec4<i32>(var_2.x, -2147483647i, -69340i, var_2.x), vec2<bool>(true, true)), ~(-7973i)).c, select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, true))), vec4<bool>(true, false, true, true)), vec4<bool>(!(var_2.x >= var_2.x), select(u_input.a < u_input.a, var_2.x >= var_2.x, true), true, true), vec4<bool>(func_4(1u, func_4(u_input.a, Struct_2(vec2<f32>(var_1, 808f), vec4<i32>(-2147483647i, var_2.x, var_2.x, var_2.x), vec2<bool>(false, false)), -2147483647i).d, var_2.x >> (u_input.a % 32u)).c.x, true, var_1 < _wgslsmith_f_op_f32(f32(-1f) * -1000f), (-42640i << (u_input.a % 32u)) <= -82310i)), func_4(u_input.a, Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(835f, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))), func_2().b, func_4(~u_input.a, func_4(u_input.a, Struct_2(vec2<f32>(679f, -907f), vec4<i32>(var_2.x, 2147483647i, var_2.x, -2831i), vec2<bool>(false, true)), 22045i).d, var_2.x).d.c), var_2.x).d);
    var var_4 = func_4(63353u, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)) * vec2<f32>(_wgslsmith_f_op_f32(-var_3.b.a), var_0)), var_3.d.b, vec2<bool>(var_3.b.c, true)), 1i);
    var_4 = func_4(u_input.a, func_4(_wgslsmith_div_u32(118962u, ~var_3.b.d), var_4.d, var_3.d.b.x).d, var_3.b.e);
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(8756u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_4.b.d, 1u), min(41724u, 1u), u_input.a), _wgslsmith_sub_u32(var_3.b.d, 1u)), firstTrailingBit(~u_input.a), 64979u), var_3.d.b.zy, _wgslsmith_f_op_vec2_f32(-var_4.d.a), ~(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(63836u, var_4.b.d), vec2<u32>(4294967295u, var_4.b.d))) & ~(~vec2<u32>(var_4.b.d, var_3.b.d))));
}

