struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_2,
    d: vec4<f32>,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(928f, 118065u, 2147483647i, vec4<i32>(17474i, 33074i, 89017i, -1i)), Struct_4(105f, 64102u, -1788i, vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -1i)), Struct_4(-1830f, 45371u, 20150i, vec4<i32>(-7295i, -1i, -50469i, 0i)), Struct_4(742f, 0u, -1i, vec4<i32>(1i, -24358i, i32(-2147483648), i32(-2147483648))), Struct_4(-277f, 0u, 17990i, vec4<i32>(-4588i, -7214i, 1i, 40379i)), Struct_4(621f, 1u, 1i, vec4<i32>(-25456i, -1i, 8233i, 29303i)), Struct_4(118f, 61233u, -41236i, vec4<i32>(i32(-2147483648), 2147483647i, 1i, i32(-2147483648))), Struct_4(906f, 1u, 1i, vec4<i32>(44893i, 43539i, 10318i, 63173i)), Struct_4(-1478f, 42933u, -27028i, vec4<i32>(-14831i, 1i, 1i, i32(-2147483648))), Struct_4(204f, 63721u, i32(-2147483648), vec4<i32>(-17608i, 2147483647i, 46341i, 11848i)), Struct_4(2613f, 45130u, 10586i, vec4<i32>(1i, -57708i, 0i, -39605i)), Struct_4(-735f, 0u, -29518i, vec4<i32>(-1i, -1i, 2147483647i, 1i)), Struct_4(121f, 4294967295u, 36210i, vec4<i32>(578i, -1i, -48816i, 0i)), Struct_4(1949f, 0u, i32(-2147483648), vec4<i32>(1i, -30035i, 2147483647i, 40439i)), Struct_4(-1711f, 1u, 2147483647i, vec4<i32>(30114i, 50444i, 10786i, 0i)), Struct_4(-360f, 1u, -31849i, vec4<i32>(2147483647i, 2147483647i, 2147483647i, 2424i)), Struct_4(1523f, 55703u, -45415i, vec4<i32>(17552i, 36051i, 1i, -1i)), Struct_4(1512f, 9446u, -1881i, vec4<i32>(-3389i, 12290i, -13875i, i32(-2147483648))), Struct_4(399f, 1u, 54259i, vec4<i32>(7259i, 2147483647i, 0i, i32(-2147483648))), Struct_4(979f, 49234u, 6321i, vec4<i32>(-13153i, 2147483647i, -1238i, 7139i)), Struct_4(1000f, 4294967295u, -1i, vec4<i32>(0i, 2147483647i, i32(-2147483648), 0i)), Struct_4(347f, 4294967295u, -536i, vec4<i32>(-55338i, 45420i, 18185i, -33150i)), Struct_4(930f, 17202u, 1179i, vec4<i32>(-16626i, i32(-2147483648), -1i, i32(-2147483648))), Struct_4(-1229f, 80488u, 1i, vec4<i32>(19258i, -10074i, 0i, 5149i)), Struct_4(-371f, 1u, 37911i, vec4<i32>(32014i, i32(-2147483648), 10809i, 0i)));

var<private> global3: f32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_2 {
    global3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1171f, 491f)), _wgslsmith_div_f32(-339f, 506f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 623f, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1336f)))), -851f))));
    global3 = 764f;
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.a), -(vec3<i32>(-1i) * -(vec3<i32>(-1i, u_input.c, -8737i) ^ vec3<i32>(-1i, 1i, u_input.a))));
    var var_1 = u_input.a;
    let var_2 = Struct_2(-2147483647i, !(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), true))), ~u_input.c | -12552i, 2079f, select(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), vec3<bool>(true, 57670i <= u_input.d, true), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), any(vec2<bool>(false, false)))));
    return Struct_2(-2136i, !var_2.b, i32(-1i) * -13353i, 1304f, vec3<bool>(true, all(var_2.e.xy), true));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> Struct_4 {
    var var_0 = u_input.b;
    var var_1 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(~(~0u), u_input.b, arg_0.c & _wgslsmith_dot_vec2_u32(vec2<u32>(23203u, u_input.b), vec2<u32>(u_input.b, u_input.b)), ~u_input.b), ~min(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.b), vec4<u32>(arg_0.c, 64308u, 0u, 16228u)), vec4<u32>(0u, 111727u, u_input.b, 1u) | vec4<u32>(u_input.b, 0u, 56838u, arg_0.c)));
    global2 = array<Struct_4, 25>();
    global3 = -110f;
    return global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(31957u, u_input.b)), 25u)];
}

fn func_4(arg_0: Struct_4, arg_1: i32) -> StorageBuffer {
    global2 = array<Struct_4, 25>();
    global2 = array<Struct_4, 25>();
    let var_0 = _wgslsmith_div_u32(u_input.b, arg_0.b);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-143f - -1305f) + 1019f)));
    return StorageBuffer(~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, var_0, 4172u, arg_0.b), vec4<u32>(0u, 4294967295u, arg_0.b, 1u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a, 1423f)) * _wgslsmith_f_op_f32(-arg_0.a))))), vec3<u32>(max(1u, _wgslsmith_div_u32(4294967295u << (u_input.b % 32u), arg_0.b & arg_0.b)), ~4294967295u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u), vec2<bool>(true, true)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(arg_0.b, 790u), true), countOneBits(vec2<u32>(23893u, 15383u))))), -419f);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_5, arg_3: bool) -> StorageBuffer {
    global2 = array<Struct_4, 25>();
    return func_4(func_3(Struct_1(true, vec2<bool>(true, true), ~(~4294967295u), -849f), func_2()), func_2().c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mult_u32(49844u, 1u)) << ((~u_input.b | _wgslsmith_div_u32(u_input.b, 1u)) % 32u);
    let var_1 = 63646u;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(480f, _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(953f, -375f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-842f + 862f)))), 1f));
    global0 = ~firstTrailingBit(u_input.a) != -10358i;
    var var_3 = var_2;
    let var_4 = _wgslsmith_f_op_vec2_f32(var_2.yx + var_2.yy);
    var var_5 = firstLeadingBit(4294967295u);
    let x = u_input.a;
    s_output = func_1(-20175i, ~_wgslsmith_sub_u32(20530u, max(var_1, 26411u)), Struct_5(vec2<bool>(2147483647i < -u_input.d, true)), true);
}

