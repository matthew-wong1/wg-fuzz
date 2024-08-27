struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(2147483647i, -7367i, 2147483647i), vec3<i32>(0i, -44259i, i32(-2147483648)), vec3<i32>(-31699i, 1i, 2114i), vec3<i32>(70647i, 2147483647i, 0i), vec3<i32>(1i, -53373i, i32(-2147483648)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    global0 = array<vec3<i32>, 5>();
    var var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(abs(~(~vec2<u32>(22717u, arg_2.a.b.b))), countOneBits(arg_1)), u_input.a >> (_wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_1.x, 0u, 9624u), vec3<u32>(24109u, 27996u, 6198u)) ^ vec3<u32>(arg_2.a.c.b, 49878u, 49005u), _wgslsmith_add_vec3_u32(vec3<u32>(arg_3.a.c.b, u_input.a, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 61276u, arg_1.x), vec3<u32>(48329u, 1u, arg_3.a.b.b)))) % 32u), 40417u);
    let var_1 = arg_3;
    let var_2 = Struct_2(_wgslsmith_clamp_i32(-1i, _wgslsmith_mod_i32(abs(-22749i), -33597i & _wgslsmith_clamp_i32(arg_2.a.a, -84323i, -1i)), var_1.a.a), arg_2.a.b, var_1.a.c);
    var var_3 = _wgslsmith_dot_vec4_u32(~(~(~select(vec4<u32>(var_0.x, 33390u, u_input.a, 27701u), vec4<u32>(1u, 30683u, var_2.c.b, 4294967295u), vec4<bool>(false, true, false, arg_0.x)))), ~(abs(vec4<u32>(0u, 1u, arg_3.a.b.b, 4294967295u)) >> (select(vec4<u32>(var_2.c.b, u_input.a, arg_2.a.b.b, var_1.a.b.b), vec4<u32>(24624u, 121916u, 9579u, arg_2.a.c.b), vec4<bool>(arg_0.x, true, true, false)) % vec4<u32>(32u))) ^ ~(~(~vec4<u32>(var_0.x, arg_2.a.c.b, var_1.a.c.b, 51788u))));
    return all(!select(vec3<bool>(all(vec3<bool>(true, true, arg_0.x)), arg_0.x, true), select(select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, false, false), false), !vec3<bool>(arg_0.x, false, true), true), vec3<bool>(true, false, arg_0.x)));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_2(-51984i, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-412f)), -555f), firstLeadingBit(62441u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -224f), -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -164f))), ~(~min(80245u, 74343u))));
    var var_1 = firstTrailingBit(vec2<i32>(-_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i, var_0.a)), countOneBits(vec2<i32>(22010i, var_0.a))), var_0.a));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(var_0.c.a, var_0.c.a)), _wgslsmith_mod_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.b, 13007u), vec2<u32>(8530u, var_0.c.b))), abs(~1u)) | u_input.a);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a))), _wgslsmith_div_u32(~4294967295u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(countOneBits(u_input.a), _wgslsmith_div_u32(var_0.b.b, var_0.c.b)), firstLeadingBit(countOneBits(4294967295u)))));
    return vec3<bool>(~_wgslsmith_div_u32(~var_0.c.b, _wgslsmith_div_u32(57943u, 45250u)) <= 4294967295u, !(func_3(vec2<bool>(true, false), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_2.b), vec2<u32>(125060u, 1u)), Struct_3(Struct_2(var_0.a, Struct_1(616f, var_3.b), var_2)), Struct_3(Struct_2(var_1.x, var_2, Struct_1(var_2.a, u_input.a)))) && true), func_3(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), ~(~vec2<u32>(1u, var_0.b.b)), Struct_3(Struct_2(var_0.a, var_0.b, var_0.c)), Struct_3(Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -16211i), vec2<i32>(2147483647i, var_1.x)), var_2, Struct_1(1472f, 4294967295u)))));
}

fn func_1(arg_0: vec2<u32>) -> vec3<u32> {
    global0 = array<vec3<i32>, 5>();
    let var_0 = _wgslsmith_div_f32(335f, _wgslsmith_f_op_f32(f32(-1f) * -964f));
    var var_1 = any(func_2());
    let var_2 = vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 * var_0)))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1000f);
    let var_3 = min(~vec4<i32>(1i, 1i, 1i, 1i), ~abs(vec4<i32>(_wgslsmith_add_i32(1i, 32128i), 0i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(1i, -2147483647i)))));
    return _wgslsmith_mod_vec3_u32(vec3<u32>(~(~u_input.a), arg_0.x, max(3721u, 146259u)), vec3<u32>(22033u, ~abs(u_input.a), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 5>();
    var var_0 = 0i;
    let var_1 = ~(~abs(_wgslsmith_mult_vec3_u32(func_1(vec2<u32>(4294967295u, 70614u)), vec3<u32>(4294967295u, 15029u, u_input.a))));
    var var_2 = Struct_3(Struct_2(-29117i, Struct_1(_wgslsmith_f_op_f32(step(283f, _wgslsmith_f_op_f32(select(-1657f, 964f, true)))), ~(var_1.x << (var_1.x % 32u))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -349f), ~var_1.x)));
    let var_3 = Struct_3(var_2.a);
    var var_4 = ~(~var_1.zz) << (_wgslsmith_clamp_vec2_u32(var_1.yz, _wgslsmith_mult_vec2_u32(~select(vec2<u32>(var_2.a.c.b, 23270u), vec2<u32>(var_2.a.b.b, 28206u), vec2<bool>(true, true)), var_1.zz), ~(~(~var_1.yy))) % vec2<u32>(32u));
    var_0 = ~((i32(-1i) * -var_3.a.a) & 0i);
    var var_5 = var_2.a.b.b == _wgslsmith_mod_u32(u_input.a, ~_wgslsmith_add_u32(~var_2.a.b.b, var_2.a.c.b));
    let var_6 = !select(!vec4<bool>(select(false, false, true), true, any(vec2<bool>(true, true)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2().x), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), true), vec4<bool>(var_2.a.c.a >= var_2.a.c.a, true, true, func_2().x)), false);
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstLeadingBit(_wgslsmith_sub_u32(0u, var_3.a.c.b))), 637f, ~0u);
}

