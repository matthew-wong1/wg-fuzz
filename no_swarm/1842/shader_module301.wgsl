struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_add_u32(1u, 26227u);
    var var_1 = Struct_3(arg_2.c.yx, 0u, vec3<bool>(!(1388f > _wgslsmith_div_f32(arg_0.b.x, 523f)), any(arg_2.c.yy) || select(any(vec3<bool>(arg_0.a, arg_0.a, false)), arg_2.c.x, !arg_3.a), select(!(true && arg_2.c.x), all(arg_2.c) || false, !arg_2.a.x)));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(704f - arg_3.b.x))))))));
    var var_3 = Struct_2(_wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, vec2<u32>(55698u, firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, var_0)))), -340f, Struct_1(arg_2.c.x || (false || any(vec4<bool>(var_1.a.x, arg_0.a, arg_0.a, true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_3.b.x))))), _wgslsmith_mult_i32(-(12415i & arg_0.c), -u_input.a.x >> ((4294967295u << (u_input.b.x % 32u)) % 32u))), Struct_1(true, arg_0.b, ~max(61174i, arg_0.c) | _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 0i, -17902i), -vec4<i32>(-1i, 37859i, arg_1, arg_1))));
    let var_4 = vec4<u32>(_wgslsmith_clamp_u32(arg_2.b, ~_wgslsmith_add_u32(0u, u_input.b.x), _wgslsmith_sub_u32(firstTrailingBit(var_1.b), select(1u | var_0, _wgslsmith_add_u32(4294967295u, var_1.b), true))), u_input.b.x, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_add_u32(min(var_0, var_0), ~u_input.b.x), var_3.a.x ^ u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 58477u)), vec4<u32>(arg_2.b, firstLeadingBit(u_input.b.x) >> (~var_1.b % 32u), var_0, var_1.b)));
    return !(!select(arg_2.c, var_1.c, vec3<bool>(true, true, true)));
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = arg_0.b.wzz;
    let var_1 = vec2<bool>(any(!(!select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(false, true, false), vec3<bool>(arg_0.a, arg_0.a, false)))), any(select(select(func_3(Struct_1(true, vec4<f32>(910f, -481f, 1000f, -243f), 10689i), arg_0.c, Struct_3(vec2<bool>(true, arg_0.a), 41441u, vec3<bool>(true, arg_0.a, false)), Struct_1(arg_0.a, vec4<f32>(1052f, 977f, -475f, var_0.x), arg_0.c)), func_3(Struct_1(false, arg_0.b, u_input.a.x), arg_0.c, Struct_3(vec2<bool>(true, false), 23484u, vec3<bool>(arg_0.a, false, arg_0.a)), arg_0), func_3(arg_0, 24915i, Struct_3(vec2<bool>(arg_0.a, true), 0u, vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), Struct_1(true, arg_0.b, u_input.a.x)).x), select(select(vec3<bool>(arg_0.a, true, false), vec3<bool>(arg_0.a, true, true), true), vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(true, true, true)), _wgslsmith_mult_i32(u_input.a.x, arg_0.c) >= (29574i << (u_input.b.x % 32u)))));
    var var_2 = _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x) * -1227f) * 1017f), all(var_1))));
    var_2 = _wgslsmith_f_op_f32(floor(-119f));
    var var_3 = Struct_2(u_input.b, _wgslsmith_f_op_f32(abs(1080f)), arg_0, Struct_1(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(arg_0.b, arg_0.b))))), 0i));
    return !all(!(!select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(var_1.x, arg_0.a, var_1.x, true), true)));
}

fn func_1() -> f32 {
    var var_0 = u_input.a.x;
    var_0 = ~(~(i32(-1i) * -2147483647i));
    var var_1 = select(vec4<bool>(all(vec3<bool>(u_input.a.x < u_input.a.x, false, true)), _wgslsmith_clamp_i32(min(u_input.a.x, u_input.a.x), -6391i, u_input.a.x << (79704u % 32u)) >= -62634i, countOneBits(~u_input.b.x) < 0u, true), !vec4<bool>(select(func_2(Struct_1(true, vec4<f32>(282f, -909f, 890f, 1122f), u_input.a.x)), true, true), all(vec3<bool>(true, true, true)), true, false), !select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), func_2(Struct_1(true, vec4<f32>(-291f, -295f, -707f, 1000f), u_input.a.x))), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))) * 2447f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(510f * _wgslsmith_f_op_f32(f32(-1f) * -581f)))));
    var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(35661i, -8319i, u_input.a.x, _wgslsmith_mult_i32(u_input.a.x ^ 0i, i32(-1i) * -18993i)), ~vec4<i32>(0i, 22859i, -1i, u_input.a.x) << ((select(vec4<u32>(0u, u_input.b.x, 19656u, 47487u), vec4<u32>(1u, 35387u, u_input.b.x, 0u), vec4<bool>(true, var_1.x, var_1.x, var_1.x)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(23581u, 0u, u_input.b.x, 8164u), vec4<u32>(40745u, u_input.b.x, u_input.b.x, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u))), ~reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 37845i, u_input.a.x, -1i), vec4<i32>(-30472i, -76386i, u_input.a.x, -1i), vec4<i32>(-67328i, u_input.a.x, -20644i, 2147483647i))) ^ vec4<i32>(u_input.a.x, -max(23895i, -1i), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.a.x));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-569f, -863f, -154f, 650f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -117f, 1577f, -1209f))), vec4<f32>(443f, _wgslsmith_f_op_f32(func_1()), 240f, -1000f)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-306f, -1167f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * 448f), _wgslsmith_f_op_f32(f32(-1f) * -1667f), _wgslsmith_f_op_f32(f32(-1f) * -1431f))));
    let x = u_input.a;
    s_output = StorageBuffer(-(reverseBits(vec4<i32>(0i, 2147483647i, u_input.a.x, -16039i)) & ~vec4<i32>(u_input.a.x, 23711i, u_input.a.x, 34299i)) | ~vec4<i32>(countOneBits(1i), -16545i, ~2147483647i, abs(-1i)), countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)), abs(abs(vec2<u32>(u_input.b.x, u_input.b.x))))), select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1u) >> (firstLeadingBit(vec3<u32>(1u, 110428u, u_input.b.x)) % vec3<u32>(32u)), ~(vec3<u32>(u_input.b.x, 1u, u_input.b.x) ^ vec3<u32>(u_input.b.x, u_input.b.x, 38928u))), ~(~(~vec3<u32>(0u, 2586u, 1u))), vec3<bool>(true, (u_input.a.x | -24874i) > reverseBits(35379i), true)), _wgslsmith_mod_i32(max(~(u_input.a.x & 1i), ~u_input.a.x), ~(-2147483647i)));
}

