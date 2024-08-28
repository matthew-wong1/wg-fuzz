struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2;

var<private> global2: array<i32, 13> = array<i32, 13>(9176i, 0i, 2147483647i, 1i, 1i, 1i, 1i, i32(-2147483648), 1i, 2147483647i, -1i, i32(-2147483648), 24839i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = -_wgslsmith_clamp_i32(countOneBits(_wgslsmith_clamp_i32(2147483647i, 2147483647i, -4469i)), 0i, -2147483647i) <= -(~global2[_wgslsmith_index_u32(~firstTrailingBit(44701u), 13u)]);
    global1 = Struct_2(global1.c, ~vec4<u32>(_wgslsmith_div_u32(43321u, u_input.c.x << (global1.a.d % 32u)), 0u, _wgslsmith_clamp_u32(global1.a.b, _wgslsmith_dot_vec3_u32(vec3<u32>(25395u, u_input.c.x, 49431u), vec3<u32>(1861u, global1.a.d, u_input.c.x)), ~u_input.c.x), u_input.c.x), global1.c);
    global1 = Struct_2(Struct_1(!global1.c.a, ~max(global1.a.d, global1.a.d) ^ (select(0u, u_input.c.x, var_0) & ~41127u), true, 33648u, global1.c.e), ~(~firstLeadingBit(vec4<u32>(0u, 0u, 0u, u_input.c.x))), Struct_1(select(global1.a.a, !(!vec2<bool>(false, var_0)), global1.c.a), u_input.c.x, _wgslsmith_f_op_f32(ceil(-179f)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -418f), 68701u, global1.a.e));
    let var_1 = Struct_1(vec2<bool>(any(select(vec2<bool>(true, global1.a.a.x), global1.a.a, !global1.c.a)), all(!select(vec3<bool>(global1.a.c, global1.c.a.x, var_0), vec3<bool>(true, var_0, global1.c.a.x), true))), max(_wgslsmith_mod_u32(global1.a.d, countOneBits(0u)) << (u_input.c.x % 32u), 66014u ^ global1.b.x), !((global1.b.x >= reverseBits(u_input.c.x)) != (!global1.c.a.x && true)), _wgslsmith_div_u32(global1.a.b, ~0u), vec4<f32>(898f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.e.x)) - global1.c.e.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.e.x)), global1.c.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(148f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2106f + -865f) + -689f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.a.e.ww, vec2<f32>(1000f, -697f), vec2<bool>(false, false))) + _wgslsmith_f_op_vec2_f32(global1.c.e.xz + global1.c.e.xy)), vec2<f32>(global1.a.e.x, -1421f)))))));
    return _wgslsmith_dot_vec3_u32(~(~_wgslsmith_mod_vec3_u32(global1.b.wyx, global1.b.zwx)) | vec3<u32>(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(43480u, 1u), ~3083u, var_1.d), firstLeadingBit(~var_1.d)), select(vec3<u32>((u_input.c.x | 26135u) & 31410u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(global1.b.x, 1u, var_1.b)), reverseBits(global1.b.xww)), reverseBits(global1.a.d)), vec3<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c.x, 17429u)), u_input.c), u_input.c.x, countOneBits(31685u)), select(select(vec3<bool>(global1.a.c, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, global1.c.c)), vec3<bool>(!var_0, true, all(vec2<bool>(false, true))), vec3<bool>(any(vec2<bool>(var_1.a.x, global1.a.c)), !var_0, select(false, global1.c.c, var_0)))));
}

fn func_2() -> vec2<f32> {
    let var_0 = vec4<i32>(global2[_wgslsmith_index_u32(57815u, 13u)], global2[_wgslsmith_index_u32(func_3(), 13u)], -(i32(-1i) * -abs(10068i)), _wgslsmith_add_i32(reverseBits((global2[_wgslsmith_index_u32(u_input.c.x, 13u)] ^ -10i) >> (u_input.c.x % 32u)), _wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.d, global2[_wgslsmith_index_u32(0u, 13u)]) | vec2<i32>(global2[_wgslsmith_index_u32(global1.a.b, 13u)], global2[_wgslsmith_index_u32(10509u, 13u)])), abs(~vec2<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 13u)], -1i)))));
    let var_1 = Struct_2(global1.c, global1.b, Struct_1(vec2<bool>(true, true), 7327u, true, func_3(), global1.c.e));
    var var_2 = _wgslsmith_mod_u32(var_1.c.d, u_input.c.x);
    global1 = var_1;
    let var_3 = false;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.e.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(244f - -350f), _wgslsmith_f_op_f32(-683f * global1.a.e.x), 57185u <= var_1.a.d))))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) + _wgslsmith_f_op_vec2_f32(select(global1.a.e.xy, vec2<f32>(_wgslsmith_f_op_f32(-global1.c.e.x), _wgslsmith_f_op_vec2_f32(func_2()).x), !(!global1.a.a)))) + global1.c.e.yy);
    let var_1 = Struct_4(global1.c);
    var var_2 = global1.b;
    global0 = global1.a.c;
    var var_3 = var_1;
    return select(func_3(), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global1.b.yz, _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(24832u, 50704u)), ~var_2.ww, ~global1.b.zy)), ~var_3.a.b), true & var_1.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 13>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-global1.c.e);
    let var_1 = global1.a.c;
    let var_2 = global1.b;
    var var_3 = global1.a.e.x;
    let var_4 = vec2<u32>(u_input.c.x, ~_wgslsmith_clamp_u32(~var_2.x, _wgslsmith_mult_u32(u_input.c.x >> (global1.a.d % 32u), 4294967295u & var_2.x), _wgslsmith_div_u32(func_1(), func_1())));
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(round(global1.a.e.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, var_0.x)))))));
    let var_5 = Struct_2(Struct_1(global1.a.a, var_4.x, global1.c.a.x & any(select(vec3<bool>(global1.a.a.x, global1.a.c, global1.a.c), vec3<bool>(global1.a.c, global1.c.c, true), vec3<bool>(global1.a.c, true, false))), _wgslsmith_div_u32(12526u, _wgslsmith_dot_vec4_u32(global1.b, vec4<u32>(1u, var_4.x, 51089u, 29047u))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global1.a.e.x)))), _wgslsmith_f_op_f32(sign(-853f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.c.e.x - 1912f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))), abs(_wgslsmith_clamp_vec4_u32((vec4<u32>(global1.c.b, 107954u, var_4.x, 3707u) ^ global1.b) << (~global1.b % vec4<u32>(32u)), reverseBits(abs(vec4<u32>(u_input.c.x, var_4.x, 33068u, 0u))), _wgslsmith_sub_vec4_u32(global1.b, global1.b))), global1.c);
    global0 = var_5.c.c || any(vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -43643i, _wgslsmith_f_op_f32(-952f * _wgslsmith_f_op_f32(f32(-1f) * -907f)), ~_wgslsmith_sub_u32(1u, var_2.x), ~vec2<u32>(u_input.c.x >> (4294967295u % 32u), global1.a.d), _wgslsmith_sub_i32(2147483647i, global2[_wgslsmith_index_u32(var_5.c.d, 13u)]));
}

