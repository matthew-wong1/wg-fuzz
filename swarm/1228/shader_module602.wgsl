struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(1275f, -339f, 314f, 578f), vec4<f32>(1839f, 1000f, -777f, -915f), vec4<f32>(1000f, 108f, -609f, -1000f), vec4<f32>(876f, 218f, 2262f, -1302f), vec4<f32>(-266f, 1077f, -636f, 1124f), vec4<f32>(-347f, -1000f, 340f, 425f), vec4<f32>(-401f, -969f, -496f, 1643f), vec4<f32>(-311f, 310f, 761f, 1941f), vec4<f32>(1618f, -322f, -213f, -463f), vec4<f32>(-1081f, -501f, 1466f, 357f));

var<private> global1: array<Struct_2, 14>;

var<private> global2: array<i32, 32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 51880u, u_input.d.x), vec3<u32>(u_input.d.x, u_input.c.x, u_input.d.x)), abs(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x))), 10u)]))));
    var var_1 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, ~global2[_wgslsmith_index_u32(4294967295u, 32u)]) >> (~(~u_input.c) % vec2<u32>(32u)), reverseBits(~(-vec2<i32>(0i, global2[_wgslsmith_index_u32(u_input.d.x, 32u)]))));
    global2 = array<i32, 32>();
    var var_2 = u_input.c.x;
    global1 = array<Struct_2, 14>();
    return select(!(true | all(vec4<bool>(true, true, true, false))) & all(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), true, all(!vec3<bool>(true, any(vec4<bool>(true, false, true, false)), true)));
}

fn func_2(arg_0: vec3<u32>) -> vec4<f32> {
    let var_0 = any(vec2<bool>(false, false));
    let var_1 = Struct_2(vec2<bool>(var_0, func_3()), ~(~(~(~arg_0.x))), Struct_1(vec2<u32>(~arg_0.x, u_input.c.x), !var_0, -670f, _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0, vec3<u32>(4294967295u, u_input.c.x, 4294967295u)), vec3<u32>(arg_0.x, arg_0.x, arg_0.x), _wgslsmith_div_vec3_u32(arg_0, arg_0)), ~arg_0), true));
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~var_1.c.d.x & max(var_1.b, var_1.c.a.x), ~var_1.c.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(~73000u, arg_0.x, 0u, firstTrailingBit(32203u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.d.x, 4294967295u, 50020u), vec4<u32>(u_input.c.x, 4294967295u, var_1.c.a.x, var_1.c.a.x)) | ~vec4<u32>(50084u, u_input.c.x, 18178u, var_1.b)), ~u_input.c.x, abs(~(~u_input.d.x))), vec4<u32>((~1u >> (~arg_0.x % 32u)) << ((~var_1.b | ~var_1.c.d.x) % 32u), 4294967295u, ~5998u, _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(25634u, 10099u, arg_0.x), var_1.c.d)), _wgslsmith_dot_vec2_u32(var_1.c.a, _wgslsmith_div_vec2_u32(vec2<u32>(0u, 27229u), vec2<u32>(var_1.b, var_1.c.a.x))))));
    global0 = array<vec4<f32>, 10>();
    let var_3 = ~vec2<u32>(4294967295u, 18890u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~var_2.x, 10u)] + _wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_3.x, var_2.x), 10u)], global0[_wgslsmith_index_u32(arg_0.x | var_3.x, 10u)], true))), global0[_wgslsmith_index_u32(arg_0.x, 10u)]));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<u32> {
    global1 = array<Struct_2, 14>();
    let var_0 = !(!select(vec3<bool>(arg_2.c == arg_1.x, false, false), select(vec3<bool>(false, false, arg_2.b), select(vec3<bool>(true, arg_2.e, arg_2.b), vec3<bool>(true, arg_2.b, true), vec3<bool>(arg_2.e, arg_2.e, arg_2.b)), !vec3<bool>(false, true, arg_2.e)), vec3<bool>(any(vec3<bool>(arg_2.e, false, false)), arg_2.b, true)));
    let var_1 = Struct_1(u_input.d ^ ~u_input.d, !(arg_2.b | arg_2.e), _wgslsmith_f_op_f32(-arg_1.x), vec3<u32>(~firstLeadingBit(1u), u_input.d.x, ~arg_2.a.x), arg_2.e);
    var var_2 = any(select(select(vec4<bool>(false, var_1.e, var_1.b, arg_2.b), vec4<bool>(arg_2.e, u_input.c.x < var_1.d.x, !arg_2.e, true), !select(vec4<bool>(var_0.x, var_0.x, arg_2.e, var_1.b), vec4<bool>(var_1.b, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, var_1.b))), select(!select(vec4<bool>(false, true, var_1.e, false), vec4<bool>(var_1.b, false, false, true), vec4<bool>(true, var_1.e, var_1.b, false)), select(!vec4<bool>(false, var_0.x, false, var_0.x), select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(true, false, true, false), true), false), var_0.x), !any(vec3<bool>(false, arg_2.b, false))));
    let var_3 = var_1.d.x >= (arg_2.a.x ^ 4294967295u);
    return _wgslsmith_mult_vec3_u32(vec3<u32>(1u, ~(0u & (var_1.d.x ^ arg_2.a.x)), 1u), countOneBits(arg_0.zxy));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec3<u32>) -> Struct_3 {
    var var_0 = 958f;
    global2 = array<i32, 32>();
    global1 = array<Struct_2, 14>();
    global0 = array<vec4<f32>, 10>();
    var var_1 = Struct_1(arg_2.zz, arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -486f), func_4(vec4<u32>(max(arg_2.x, 15195u), ~u_input.c.x, 1u, u_input.c.x), _wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(arg_0.x, u_input.d.x, 0u) | vec3<u32>(u_input.d.x, u_input.d.x, arg_2.x))), Struct_1(arg_0 | vec2<u32>(arg_2.x, 993u), u_input.d.x > arg_0.x, 2873f, _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(u_input.d.x, 17090u, arg_2.x)), arg_1.x)) | ~max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), arg_2), ~arg_2), !arg_1.x);
    return Struct_3(global0[_wgslsmith_index_u32(arg_2.x, 10u)], !(!vec4<bool>(true, any(vec4<bool>(var_1.e, arg_1.x, arg_1.x, arg_1.x)), arg_1.x, var_1.b)), firstTrailingBit(var_1.d << (_wgslsmith_mult_vec3_u32(func_4(vec4<u32>(u_input.c.x, u_input.d.x, 1u, arg_0.x), global0[_wgslsmith_index_u32(arg_0.x, 10u)], Struct_1(var_1.a, var_1.e, -245f, vec3<u32>(4294967295u, arg_0.x, 4294967295u), var_1.e)), var_1.d) % vec3<u32>(32u))));
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: u32) -> u32 {
    let var_0 = -(~arg_0);
    var var_1 = Struct_1(vec2<u32>(0u, _wgslsmith_mod_u32(arg_3 | 14586u, func_1(vec2<u32>(0u, 38295u), arg_1.xzz, vec3<u32>(arg_2.c.x, 3044u, 4294967295u) ^ vec3<u32>(u_input.d.x, 38495u, 4294967295u)).c.x)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1098f, _wgslsmith_f_op_f32(1562f * arg_2.a.x))) + _wgslsmith_f_op_f32(max(arg_2.a.x, arg_2.a.x))), func_1(abs(vec2<u32>(u_input.c.x, arg_2.c.x)), select(select(vec3<bool>(false, arg_1.x, false), vec3<bool>(true, arg_2.b.x, arg_1.x), !arg_2.b.yxw), select(vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x), arg_1.zww, select(true, false, arg_2.b.x)), arg_2.b.yyx), vec3<u32>(countOneBits(50467u << (arg_3 % 32u)), arg_3, arg_3)).c, func_3());
    var var_2 = global1[_wgslsmith_index_u32(abs(~4294967295u), 14u)];
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.c) - var_2.c.c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_1(var_1.d.yx, arg_2.b.zzx, var_2.c.d).a.x)))) + arg_2.a.x);
    let var_4 = var_2.c;
    return _wgslsmith_mult_u32(func_1(firstTrailingBit(vec2<u32>(~0u, ~0u)), vec3<bool>(var_4.e, !(1u <= arg_2.c.x), false), var_4.d).c.x, ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 10>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(134f, 2519f, -186f, -1116f) - _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(1u, 10u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(320f, -210f, 2503f, 1000f)))))), !select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false))), vec4<bool>(false, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(12120u, 1u, u_input.c.x, 32109u), countOneBits(vec4<u32>(4294967295u, 1u, u_input.d.x, 0u))), abs(~0u)), u_input.d.x, _wgslsmith_div_u32(u_input.c.x, _wgslsmith_mod_u32(38358u, 4294967295u))));
    let var_1 = vec4<bool>(var_0.b.x, !any(var_0.b), !(true & var_0.b.x), !(!var_0.b.x));
    global2 = array<i32, 32>();
    let var_2 = global0[_wgslsmith_index_u32((reverseBits(u_input.d.x >> (4294967295u % 32u)) ^ func_5(u_input.a.x, vec4<bool>(var_0.b.x, false, !var_0.b.x, any(vec2<bool>(true, false))), func_1(vec2<u32>(var_0.c.x, u_input.c.x), var_1.wyx, vec3<u32>(var_0.c.x, 37526u, u_input.d.x)), var_0.c.x)) >> (var_0.c.x % 32u), 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), 400f), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2167f), _wgslsmith_f_op_f32(f32(-1f) * -395f)), _wgslsmith_f_op_f32(f32(-1f) * -1642f), var_0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, 312f), 610f)))));
}

