struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(vec2<f32>(488f, 1000f), vec2<f32>(-2094f, 1491f), 1u), Struct_4(vec2<f32>(679f, 1993f), vec2<f32>(656f, 1362f), 48219u), Struct_4(vec2<f32>(1066f, -1000f), vec2<f32>(-173f, 895f), 35012u), Struct_4(vec2<f32>(-1377f, -443f), vec2<f32>(-1000f, -110f), 1u), Struct_4(vec2<f32>(-1953f, -959f), vec2<f32>(536f, -165f), 50103u), Struct_4(vec2<f32>(1000f, -889f), vec2<f32>(406f, 1815f), 11645u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<u32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-454f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(462f, 169f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(398f)), 1313f, true)))))));
    return abs(_wgslsmith_sub_vec3_u32(firstTrailingBit(firstTrailingBit(vec3<u32>(1u, 9283u, 1u)) ^ ~vec3<u32>(37294u, 0u, 0u)), vec3<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(8419u, 4294967295u, 9630u), vec3<u32>(1u, 57139u, 9908u))), reverseBits(72809u), ~4294967295u)));
}

fn func_2() -> Struct_1 {
    var var_0 = func_3();
    var_0 = reverseBits(~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0.x, 122268u), vec3<u32>(var_0.x, 0u, var_0.x)))));
    global0 = -17123i;
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-209f, 870f, -616f), vec3<f32>(365f, -608f, 806f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-784f, 1581f, 1928f) - vec3<f32>(676f, -2120f, 853f)), vec3<bool>(true, false, false)))))));
    return Struct_1(vec3<u32>(4294967295u | (_wgslsmith_mod_u32(var_0.x, 20895u) << (0u % 32u)), 1u << (1u % 32u), 4294967295u), var_2.x, (func_3() << (min(~vec3<u32>(0u, 68585u, 1097u), vec3<u32>(4294967295u, var_0.x, var_0.x)) % vec3<u32>(32u))) | (vec3<u32>(var_0.x, 26506u, firstTrailingBit(22576u)) << ((abs(vec3<u32>(33215u, var_0.x, 4294967295u)) & (vec3<u32>(var_0.x, 0u, 24826u) | vec3<u32>(0u, 75867u, 0u))) % vec3<u32>(32u))));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>) -> f32 {
    global1 = array<Struct_4, 6>();
    global0 = _wgslsmith_mult_i32(i32(-1i) * -15881i, -_wgslsmith_mod_i32(-22841i, min(u_input.a.x, ~u_input.a.x)));
    let var_0 = any(!arg_1);
    var var_1 = vec3<bool>(!var_0, true, var_0);
    var var_2 = Struct_2(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_mod_i32(-(u_input.a.x ^ -32192i), -(u_input.a.x & -49531i))), func_2(), true);
    return arg_0.a.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = !(!select(select(select(vec3<bool>(false, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, true, arg_1.x)), !vec3<bool>(true, false, arg_1.x), select(vec3<bool>(false, false, false), vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, false, false))), vec3<bool>(!arg_1.x, arg_1.x, true), true));
    global0 = -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.a.x, 2147483647i, -5338i) ^ vec3<i32>(u_input.a.x, u_input.a.x, 52542i)), reverseBits(u_input.a.zww)), vec3<i32>(~(-23257i), 40881i & (u_input.a.x | 2147483647i), u_input.a.x));
    global0 = -u_input.a.x & 2147483647i;
    global1 = array<Struct_4, 6>();
    var var_1 = ~countOneBits(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 2534u), vec2<u32>(34449u, 67933u)), abs(7311u)));
    return Struct_1(vec3<u32>(1u, 1u, 1u), arg_0.x, ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(118999u, 59482u, 0u), reverseBits(vec3<u32>(4294967295u, 0u, 0u))), 39852u, ~(~18003u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(trunc(517f)), _wgslsmith_f_op_f32(func_1(Struct_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(793f, -931f), vec2<f32>(671f, 1206f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2405f, -656f), vec2<f32>(1000f, 938f), true)), ~0u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), -110f, _wgslsmith_f_op_f32(f32(-1f) * -874f)), vec2<bool>(true, true));
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 6u)];
    let var_2 = Struct_3(vec2<u32>(~0u, 1u | var_0.c.x), Struct_2(u_input.a.x, var_0, !all(vec4<bool>(true, true, true, true))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(475f, var_0.b, var_0.b, 1106f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-282f, -835f, var_0.b, 1206f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 1000f, -824f, 1054f))))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(all(vec4<bool>(false, false, false, true)), true), !all(vec3<bool>(true, true, true)))));
    var var_3 = firstLeadingBit(~(~firstLeadingBit(countOneBits(vec4<u32>(var_0.a.x, var_1.c, var_0.c.x, var_0.a.x)))));
    let var_4 = Struct_3(vec2<u32>(4294967295u, ~_wgslsmith_add_u32(0u, var_0.a.x)), var_2.b, Struct_1(~var_2.b.b.c, var_1.a.x, _wgslsmith_div_vec3_u32(~vec3<u32>(var_1.c, 1u, var_1.c), ~vec3<u32>(var_2.c.a.x, var_1.c, 42648u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(abs(1i), var_4.b.a), max(-19786i, 21997i), ~(-var_4.b.a)), _wgslsmith_div_f32(1000f, 1000f), _wgslsmith_f_op_f32(645f + 1000f), ~vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b.a, u_input.a.x, var_2.b.a), vec3<i32>(-1i, var_2.b.a, var_2.b.a)), reverseBits(var_2.b.a)), -select(var_4.b.a, -43757i, var_2.b.c), -19117i), ~firstTrailingBit(6532u));
}

