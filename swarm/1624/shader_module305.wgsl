struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.c.x), -1027f));
    let var_2 = Struct_1(vec3<u32>(0u, abs(u_input.c), 4294967295u), -483f, var_0.c, min(var_0.e, vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 82066u, 31686u), vec3<u32>(28555u, 24625u, u_input.c)), max(var_0.e.x, 4294967295u), abs(_wgslsmith_mod_u32(17337u, 37023u)))), abs(max(~countOneBits(vec3<u32>(var_0.e.x, 4294967295u, arg_1.e.x)), ~var_0.d)));
    return ~vec3<u32>(48374u, var_2.e.x, countOneBits(var_2.e.x));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_1.e, select(max(arg_1.a, arg_1.e), _wgslsmith_add_vec3_u32(vec3<u32>(arg_2, 4294967295u, 6006u), arg_1.a), all(vec2<bool>(true, false)))), arg_1.a) > (1u << (_wgslsmith_div_u32(70918u, u_input.c) % 32u));
    let var_1 = arg_1.c.yy;
    var_0 = true;
    var_0 = true;
    var var_2 = all(vec2<bool>(!(arg_2 >= 1u), false & all(vec4<bool>(false, false, false, true))));
    return ~vec3<u32>(~(4294967295u & ~arg_2), abs(arg_1.e.x & 30522u) | ~1u, _wgslsmith_dot_vec4_u32((vec4<u32>(21610u, arg_1.e.x, 22026u, 4294967295u) ^ vec4<u32>(1u, 1u, 69139u, arg_2)) << (abs(vec4<u32>(0u, u_input.c, u_input.c, 6107u)) % vec4<u32>(32u)), ~select(vec4<u32>(arg_1.d.x, 0u, arg_2, 1u), vec4<u32>(42189u, 0u, arg_1.a.x, 66583u), false)));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(func_4(~((i32(-1i) * -2147483647i) | firstTrailingBit(u_input.b.x)), Struct_1(func_3(u_input.b.ww, Struct_1(vec3<u32>(u_input.c, u_input.c, 3906u), -1810f, vec3<f32>(402f, 177f, -758f), vec3<u32>(u_input.c, 4294967295u, 66537u), vec3<u32>(u_input.c, u_input.c, 4294967295u))) ^ vec3<u32>(0u, 54761u, 9293u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(330f * -237f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(600f, 951f, -692f) + vec3<f32>(811f, 427f, -785f))), _wgslsmith_mult_vec3_u32(~vec3<u32>(62392u, u_input.c, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 5189u, u_input.c), vec3<u32>(u_input.c, 1u, u_input.c))), vec3<u32>(4294967295u, 0u & u_input.c, u_input.c)), 1u, 500f), _wgslsmith_f_op_f32(max(1f, -3049f)), vec3<f32>(-652f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2158f)), _wgslsmith_f_op_f32(-2798f * -651f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -253f))), reverseBits(_wgslsmith_clamp_vec3_u32(countOneBits(~vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(13791u, abs(19303u), 1u), select(~vec3<u32>(u_input.c, 10376u, u_input.c), vec3<u32>(21714u, 0u, 0u), vec3<bool>(true, true, true)))), vec3<u32>(u_input.c, u_input.c, min(~u_input.c, 1u) >> (u_input.c % 32u)));
    var_0 = Struct_1(select(_wgslsmith_add_vec3_u32(vec3<u32>(22807u, 19681u, 37404u) & func_3(u_input.b.zw, Struct_1(vec3<u32>(0u, var_0.d.x, u_input.c), var_0.b, vec3<f32>(var_0.b, 474f, var_0.b), var_0.e, vec3<u32>(u_input.c, 4294967295u, u_input.c))), vec3<u32>(1u, max(40947u, var_0.d.x), ~18934u)), _wgslsmith_add_vec3_u32(firstTrailingBit(var_0.d), var_0.e ^ vec3<u32>(u_input.c, 0u, 4294967295u)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), 442f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-764f, -1184f, var_0.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.b, var_0.c.x) - var_0.c))), var_0.c)), _wgslsmith_div_vec3_u32(~(var_0.d & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, var_0.e.x, 0u), var_0.a, vec3<u32>(u_input.c, u_input.c, 11276u))), _wgslsmith_mod_vec3_u32((vec3<u32>(38022u, 1u, u_input.c) ^ var_0.a) >> (abs(vec3<u32>(31651u, u_input.c, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(76619u, var_0.d.x, u_input.c) >> (var_0.d % vec3<u32>(32u)), var_0.d))), _wgslsmith_div_vec3_u32(var_0.e, ~(~(~var_0.a))));
    var_0 = Struct_1(~(~_wgslsmith_mod_vec3_u32(var_0.e, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, var_0.e.x, var_0.d.x), var_0.e))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1121f, 2228f, true)) * _wgslsmith_f_op_f32(abs(682f))) - _wgslsmith_f_op_f32(-2140f + _wgslsmith_f_op_f32(f32(-1f) * -460f))))), var_0.c, ~(var_0.d & vec3<u32>(4294967295u, u_input.c & 32322u, ~0u)), vec3<u32>(10906u, _wgslsmith_add_u32(var_0.d.x, 1u), _wgslsmith_sub_u32(~(~13479u), _wgslsmith_dot_vec2_u32(vec2<u32>(1083u, var_0.e.x), abs(var_0.d.yz)))));
    var var_1 = u_input.b;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(abs(~var_0.d.x), u_input.c, _wgslsmith_sub_u32(25632u, _wgslsmith_mult_u32(u_input.c, 1u)), 28495u) | vec4<u32>(~u_input.c, var_0.e.x, ~max(0u, 4294967295u), ~var_0.a.x & var_0.a.x), ~firstTrailingBit(vec4<u32>(var_0.a.x << (var_0.e.x % 32u), _wgslsmith_mod_u32(var_0.a.x, 53043u), 1u, firstTrailingBit(4294967295u))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = -82072i;
    let var_1 = _wgslsmith_f_op_f32(-arg_2.c.x);
    var var_2 = ~func_2() | (_wgslsmith_div_u32(~arg_2.d.x, firstTrailingBit(min(u_input.c, u_input.c))) << (reverseBits(4294967295u) % 32u));
    var var_3 = Struct_2(any(!(!vec4<bool>(arg_1, arg_1, true, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(arg_2.c, arg_2.c))))))), 271f, Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(arg_2.e, vec3<u32>(arg_2.a.x, 8234u, u_input.c)), ~u_input.c | ~arg_2.a.x, 57161u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, -181f))), var_1, true)), arg_2.c, ~_wgslsmith_sub_vec3_u32(arg_2.d, max(vec3<u32>(arg_2.e.x, 35931u, 4294967295u), arg_2.e)), ~arg_2.d));
    var var_4 = vec2<u32>(firstTrailingBit(~1u), 4294967295u);
    return vec3<u32>(~func_2(), ~3796u, ~(~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = Struct_1(~func_1(~(-10750i), true, Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.c), vec3<u32>(1u, 55715u, 21973u)), _wgslsmith_div_f32(-1000f, -101f), _wgslsmith_div_vec3_f32(vec3<f32>(981f, -319f, 916f), vec3<f32>(1484f, 208f, -1876f)), ~vec3<u32>(66667u, 4294967295u, 61394u), select(vec3<u32>(0u, 3206u, u_input.c), vec3<u32>(8511u, u_input.c, 4294967295u), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-739f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(610f - -591f)))), _wgslsmith_div_f32(1066f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -126f)))), 817f), ~(~vec3<u32>(14905u, 45565u, ~0u)), vec3<u32>(48500u, _wgslsmith_mult_u32(firstTrailingBit(~46642u), func_2()), ~_wgslsmith_mult_u32(func_1(u_input.a, true, Struct_1(vec3<u32>(u_input.c, u_input.c, u_input.c), -1525f, vec3<f32>(-1101f, -874f, 747f), vec3<u32>(1u, u_input.c, 5372u), vec3<u32>(u_input.c, 0u, u_input.c))).x, u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1831f, 1503f, -814f, -422f), vec4<f32>(1730f, var_1.c.x, var_1.b, var_1.b)))))))), var_1.b);
}

