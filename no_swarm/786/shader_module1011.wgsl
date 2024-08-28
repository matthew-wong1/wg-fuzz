struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_4) -> vec3<bool> {
    let var_0 = arg_2;
    let var_1 = var_0;
    let var_2 = -var_0.a.a.zwx;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.b, arg_2.c.a)) * arg_2.b))))) - -1836f);
    let var_4 = vec2<bool>(select(true, select(var_0.c.e.x, all(select(vec4<bool>(false, arg_2.c.e.x, false, false), vec4<bool>(false, true, false, false), arg_2.c.e.x)), true), true), select(true, true, !all(vec2<bool>(var_0.c.e.x, var_0.c.e.x))));
    return vec3<bool>(var_1.c.e.x, any(vec4<bool>(!(4294967295u <= var_0.d), arg_2.c.e.x, true, var_4.x)), all(select(select(select(vec3<bool>(true, var_0.c.e.x, var_4.x), vec3<bool>(arg_2.c.e.x, var_4.x, arg_2.c.e.x), true), vec3<bool>(var_1.c.e.x, var_4.x, false), true), select(select(vec3<bool>(false, var_0.c.e.x, var_4.x), vec3<bool>(true, var_0.c.e.x, var_1.c.e.x), vec3<bool>(var_0.c.e.x, arg_2.c.e.x, true)), vec3<bool>(false, false, false), arg_2.c.e.x), true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: Struct_4, arg_3: Struct_4) -> vec2<i32> {
    var var_0 = arg_3.a;
    var var_1 = _wgslsmith_div_u32(72528u, ~_wgslsmith_dot_vec2_u32(arg_1.c, ~vec2<u32>(0u, arg_2.d)));
    var_1 = arg_2.d;
    var var_2 = arg_2.a;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(arg_2.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-285f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_3.b)), arg_1.d.c, arg_0.x))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-709f)), _wgslsmith_f_op_f32(min(arg_3.c.b, _wgslsmith_f_op_f32(sign(arg_1.d.c))))))), _wgslsmith_mod_i32(0i, -2147483647i), vec2<i32>(var_0.a.x, countOneBits(var_0.a.x)), select(vec2<bool>(arg_0.x, any(vec4<bool>(arg_2.c.e.x, arg_2.c.e.x, false, arg_3.c.e.x)) && arg_1.d.a.e.x), select(!select(vec2<bool>(true, true), arg_3.c.e, true), select(vec2<bool>(arg_3.c.e.x, arg_2.c.e.x), select(vec2<bool>(arg_2.c.e.x, false), vec2<bool>(false, false), arg_3.c.e.x), func_3(arg_3.a.a.x, var_2.a.x, Struct_4(arg_2.a, arg_2.b, arg_2.c, 0u)).x), true), true));
    return arg_3.a.a.zy << (~countOneBits(max(firstLeadingBit(arg_1.c), firstLeadingBit(vec2<u32>(arg_1.c.x, 4294967295u)))) % vec2<u32>(32u));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<f32>) -> f32 {
    let var_0 = Struct_5(440f, Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_0.c.b + _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-222f))), reverseBits(0i), arg_0.c.d, arg_0.c.e), 34382u, 592f), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(arg_0.d, arg_0.d), max(~arg_0.d, ~arg_0.d)), ~(~vec2<u32>(1u, arg_0.d))), Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1605f)))), 231f, u_input.a, abs(vec2<i32>(arg_0.c.c, 31593i) | vec2<i32>(arg_0.c.d.x, u_input.a)), vec2<bool>(true, true)), 31886u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.x, 913f)))))), -22289i);
    let var_1 = i32(-1i) * -23476i;
    var var_2 = func_4(select(vec3<bool>(!(2147483647i > u_input.a), !select(true, var_0.d.a.e.x, var_0.b.a.e.x), !(arg_0.b <= var_0.d.c)), !vec3<bool>(var_0.b.a.e.x, true, true), select(select(func_3(u_input.a, u_input.a, arg_0), func_3(1i, -16865i, Struct_4(arg_0.a, arg_1.x, Struct_1(var_0.d.a.a, 1615f, 2147483647i, vec2<i32>(-1i, var_0.e), var_0.d.a.e), 1u)), arg_0.c.e.x & arg_0.c.e.x), vec3<bool>(var_0.b.a.e.x, true, var_0.a != arg_1.x), select(vec3<bool>(true, true, true), vec3<bool>(arg_0.c.e.x, arg_0.c.e.x, arg_0.c.e.x), false))), var_0, arg_0, Struct_4(Struct_3(_wgslsmith_mult_vec4_i32(arg_0.a.a, vec4<i32>(arg_0.c.d.x, arg_0.a.a.x, -1014i, -46964i) >> (vec4<u32>(arg_0.d, 0u, arg_0.d, var_0.c.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, arg_1.x, false)) - var_0.b.a.a) - _wgslsmith_f_op_f32(floor(arg_1.x))), Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), var_0.b.a.d.x, var_0.b.a.d, select(var_0.b.a.e, vec2<bool>(false, arg_0.c.e.x), !vec2<bool>(var_0.d.a.e.x, arg_0.c.e.x))), abs(min(~var_0.d.b, var_0.d.b))));
    var_2 = arg_0.c.d;
    let var_3 = true;
    return _wgslsmith_f_op_f32(select(1316f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a)))))), arg_0.d != max(_wgslsmith_mod_u32(reverseBits(var_0.c.x), ~arg_0.d), _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d, 4294967295u, var_0.b.b), vec3<u32>(118014u, 0u, arg_0.d))))));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-507f))) * -1435f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_4(arg_0, 424f, Struct_1(-901f, -1716f, 1i, arg_0.a.xz, vec2<bool>(true, true)), ~0u), vec2<f32>(_wgslsmith_f_op_f32(1936f * 903f), _wgslsmith_f_op_f32(f32(-1f) * -778f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -923f), 384f, false)))), u_input.a, vec2<i32>(_wgslsmith_sub_i32(3082i, _wgslsmith_dot_vec3_i32(arg_0.a.zww | arg_0.a.wxw, ~arg_0.a.zwx)), -37214i), vec2<bool>(~1i < arg_0.a.x, any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(913f, Struct_2(func_1(Struct_3(select(vec4<i32>(u_input.a, 0i, u_input.a, 1880i), vec4<i32>(-27855i, 2147483647i, -19686i, u_input.a), vec4<bool>(false, true, true, false)))), abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(28388u, 45528u, 408u)), _wgslsmith_dot_vec4_u32(vec4<u32>(150589u, 0u, 1u, 53637u), vec4<u32>(45636u, 15612u, 71952u, 4559u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1445f)))), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_mod_u32(1u, 26448u)), ~(~vec2<u32>(4294967295u, 11201u)))), Struct_2(Struct_1(1000f, 496f, -34262i, vec2<i32>(select(u_input.a, u_input.a, true), 1i), func_3(~(-35120i), u_input.a, Struct_4(Struct_3(vec4<i32>(u_input.a, u_input.a, 41569i, 1i)), -1913f, Struct_1(412f, -1493f, u_input.a, vec2<i32>(69514i, -1i), vec2<bool>(true, false)), 0u)).xx), ~1u, _wgslsmith_f_op_f32(round(-1143f))), ~(~u_input.a));
    let var_1 = var_0.d.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.a))) - -1098f);
    var_2 = var_0.d.c;
    let var_3 = -8858i;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a - var_0.a))) - _wgslsmith_f_op_f32(-793f - -519f)) * -2057f) * var_0.b.a.a);
    let var_4 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1038f, -1320f))), _wgslsmith_f_op_f32(min(func_1(Struct_3(vec4<i32>(var_3, var_1.c, u_input.a, var_1.c))).b, _wgslsmith_f_op_f32(var_0.a * 208f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.b)) + _wgslsmith_f_op_f32(f32(-1f) * -749f))), var_1.d.x, var_0.d.a.d, var_1.e), max(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.b, var_0.c.x, var_0.b.b, var_0.c.x) ^ vec4<u32>(var_0.b.b, var_0.d.b, 36225u, var_0.d.b), vec4<u32>(1u, var_0.b.b, 28931u, var_0.b.b) ^ vec4<u32>(14603u, var_0.d.b, 54311u, var_0.d.b)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(70633u, var_0.c.x, var_0.d.b, 4294967295u), ~vec4<u32>(var_0.b.b, 44608u, 87046u, 1u)), var_0.c.x)), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -517f) * 987f)) - _wgslsmith_f_op_f32(var_0.b.a.a - var_1.b)), (firstTrailingBit(abs(vec3<i32>(var_1.c, -38027i, var_4.a.d.x))) << (vec3<u32>(~var_4.b, 0u, ~16570u) % vec3<u32>(32u))) >> (((reverseBits(vec3<u32>(90099u, 0u, var_4.b)) & select(vec3<u32>(14741u, var_4.b, var_0.d.b), vec3<u32>(1u, 63206u, 24063u), vec3<bool>(var_0.b.a.e.x, true, true))) ^ ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.d.b, var_4.b, var_0.d.b), vec3<u32>(33689u, 24120u, var_0.d.b))) % vec3<u32>(32u)));
}

