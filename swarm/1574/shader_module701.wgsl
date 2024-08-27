struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 4>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<f32> {
    global0 = ~1u;
    let var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1460f))), firstTrailingBit(u_input.a), true, _wgslsmith_div_u32(14928u, ~u_input.b) >> (22043u % 32u));
    var var_1 = select(select(select(select(vec4<bool>(false, var_0.c, true, var_0.c), vec4<bool>(false, true, false, true), !var_0.c), !select(vec4<bool>(var_0.c, var_0.c, false, false), vec4<bool>(true, var_0.c, var_0.c, false), vec4<bool>(false, var_0.c, false, true)), var_0.c), !vec4<bool>(var_0.c, true, var_0.c, select(true, var_0.c, var_0.c)), !(!vec4<bool>(false, true, var_0.c, false))), !(!(!(!vec4<bool>(false, true, var_0.c, var_0.c)))), !vec4<bool>(all(!vec3<bool>(false, var_0.c, var_0.c)), !(0u != var_0.d), true, false));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(356f))) - var_0.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(664f, var_0.a)) + -280f)));
    let var_3 = Struct_3(var_0, Struct_1(var_0.a, var_0.d, var_0.b), abs(i32(-1i) * -(var_0.b & 11488i)), var_1.x & !var_0.c, var_0.c);
    return vec2<f32>(-303f, _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(min(626f, var_3.a.a))), _wgslsmith_f_op_f32(-var_3.a.a))));
}

fn func_2() -> Struct_2 {
    global0 = _wgslsmith_add_u32(u_input.d.x & u_input.c.x, u_input.b);
    let var_0 = Struct_5(global1[_wgslsmith_index_u32(~u_input.d.x, 4u)], !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_3());
    let var_2 = vec4<u32>(u_input.c.x, 1u | (0u ^ ~min(var_0.a.b, var_0.a.b)), 15591u, 12321u);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(687f)) + _wgslsmith_f_op_f32(-var_0.a.a)) * _wgslsmith_f_op_f32(trunc(-1847f))) - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -382f));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.a))), i32(-1i) * -19019i, !var_0.b.x, _wgslsmith_mult_u32(var_0.a.b, ~u_input.c.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    var var_0 = abs(u_input.b);
    global1 = array<Struct_1, 4>();
    let var_1 = countOneBits(arg_1.xz);
    let var_2 = ~(~(~50867u));
    global1 = array<Struct_1, 4>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a - arg_0.a), arg_0.a, true)) - _wgslsmith_f_op_f32(step(-656f, _wgslsmith_f_op_f32(floor(1035f))))), -747f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + -479f) * _wgslsmith_f_op_f32(-434f - -650f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_5 {
    global1 = array<Struct_1, 4>();
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(func_4(func_2(), vec4<i32>(1i, 0i, -2147483647i, 1i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.a, 465f)), _wgslsmith_f_op_f32(abs(1365f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -207f, arg_0.a) - vec3<f32>(arg_0.a, 2377f, -1543f))))))))));
    let var_1 = ~(firstTrailingBit(vec4<u32>(4294967295u, u_input.c.x, 1u, 0u)) | ~(~vec4<u32>(arg_0.b, u_input.d.x, 10452u, 7991u))) >> ((~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, arg_0.b, 1u, u_input.c.x), vec4<u32>(0u, arg_0.b, 4294967295u, arg_0.b)), arg_0.b, 44170u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 73567u), vec2<u32>(33061u, arg_0.b))) & vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, arg_0.b), u_input.c.x, _wgslsmith_mod_u32(19733u, 1u) >> (countOneBits(0u) % 32u), ~0u)) % vec4<u32>(32u));
    let var_2 = global1[_wgslsmith_index_u32(arg_0.b, 4u)];
    let var_3 = ~(43033u << ((_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.b, 4294967295u), select(arg_0.b, u_input.b, false)) & 10525u) % 32u));
    return Struct_5(arg_0, vec4<bool>(arg_1, true, !(u_input.a < ~(-36417i)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = func_1(global1[_wgslsmith_index_u32(u_input.b, 4u)], !select(false, !all(vec4<bool>(true, false, true, true)), !any(vec4<bool>(false, true, false, false))));
    var var_2 = _wgslsmith_f_op_f32(var_1.a.a + var_1.a.a);
    let var_3 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(41296u, u_input.c.x | 4294967295u, _wgslsmith_add_u32(60141u, _wgslsmith_clamp_u32(0u, 1u, 0u))), ~(~select(vec3<u32>(46038u, u_input.b, var_1.a.b), vec3<u32>(59226u, u_input.b, 53091u), true))), countOneBits(var_1.a.b) << (0u % 32u), 1u);
    var var_4 = Struct_4(func_1(global1[_wgslsmith_index_u32(~(~(~u_input.d.x)), 4u)], true).a);
    let var_5 = Struct_2(var_1.a.a, -35674i >> (_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(16795u, 54141u, 29484u, var_4.a.b)), vec4<u32>(var_1.a.b, 4294967295u, var_4.a.b, var_4.a.b) >> (abs(vec4<u32>(u_input.c.x, 10412u, var_3.x, 1u)) % vec4<u32>(32u))) % 32u), -326f >= _wgslsmith_f_op_f32(func_2().a - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-633f))))), min(abs(u_input.c.x), 20566u));
    global0 = _wgslsmith_sub_u32(125714u, var_4.a.b);
    var_4 = Struct_4(var_4.a);
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -964f) * _wgslsmith_f_op_f32(var_4.a.a * var_5.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.a, _wgslsmith_f_op_f32(step(var_4.a.a, 1186f)), _wgslsmith_f_op_f32(677f - 735f))), var_3, _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(~var_4.a.b, 1u)), u_input.d), 32459u, u_input.e);
}

