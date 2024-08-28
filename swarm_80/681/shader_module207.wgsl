struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<i32> = vec3<i32>(-23316i, 7879i, 1i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4) -> vec2<u32> {
    let var_0 = Struct_4(select(vec3<bool>(false, true, !arg_0.a.x), !(!vec3<bool>(true, arg_0.a.x, true)), arg_0.a), arg_0.b);
    var var_1 = Struct_3(vec2<u32>(85849u, countOneBits(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(21670u, u_input.a.x), u_input.a), ~u_input.a.x))), all(vec3<bool>(var_0.a.x, true, all(vec2<bool>(true, true)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1313f * _wgslsmith_div_f32(528f, -2236f)))));
    global1 = vec3<i32>(_wgslsmith_sub_i32(~_wgslsmith_add_i32(u_input.b, var_0.b.x), ~global1.x >> (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u)) | 0i, ~_wgslsmith_div_i32(var_0.b.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(-25810i, 1085i), u_input.b & var_0.b.x)), _wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_0.b.yx, _wgslsmith_mod_vec2_i32(vec2<i32>(-21636i, 0i), arg_0.b.zx)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2497i), firstTrailingBit(arg_0.b.xy)))));
    let var_3 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(var_0.b.x, global1.x, -18822i, 10447i)), firstLeadingBit(vec4<i32>(3199i, arg_0.b.x, var_0.b.x, arg_0.b.x)) >> (vec4<u32>(firstTrailingBit(0u), 4294967295u, ~0u, var_1.a.x & u_input.a.x) % vec4<u32>(32u)));
    return vec2<u32>(select(u_input.a.x, ~(~_wgslsmith_sub_u32(var_1.a.x, u_input.a.x)), false), 8392u);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: f32) -> bool {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(max(~60114u, _wgslsmith_add_u32(~40130u, u_input.a.x)), u_input.a.x), 0u);
    var var_1 = ~(~func_3(Struct_4(vec3<bool>(true, arg_0, true), vec3<i32>(global1.x, -930i, -1i))));
    global0 = _wgslsmith_mult_i32(firstLeadingBit(u_input.b) >> (~var_1.x % 32u), countOneBits(0i & global1.x) | -2789i);
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(~countOneBits(1u), var_1.x, ~(~4294967295u), u_input.a.x), vec4<u32>(var_1.x, ~0u, firstLeadingBit(firstTrailingBit(reverseBits(u_input.a.x))), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_0, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec3_u32(~vec3<u32>(69620u, 58548u, u_input.a.x), ~vec3<u32>(var_1.x, 51453u, 19487u)))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.x * arg_1.x), arg_2.x, arg_2.x, _wgslsmith_div_f32(arg_3, -563f))), reverseBits(vec4<u32>(_wgslsmith_mult_u32(var_0, var_1.x), var_0, 70622u, u_input.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_2.x)), -1241f, _wgslsmith_f_op_f32(arg_3 + -786f), _wgslsmith_f_op_f32(-arg_3)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3, arg_1.x, -1015f, arg_3), arg_2))), var_2), vec4<bool>(true, arg_0, all(!(!vec2<bool>(false, arg_0))), !arg_0), _wgslsmith_f_op_f32(-arg_3));
    return true || all(!select(var_3.c.wxw, select(vec3<bool>(var_3.c.x, var_3.c.x, true), vec3<bool>(false, true, false), false), vec3<bool>(false, arg_0, false)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_2) -> i32 {
    let var_0 = ~((max(75346u, 4294967295u) ^ (func_3(Struct_4(vec3<bool>(true, false, arg_3.c.x), vec3<i32>(arg_0.x, u_input.b, global1.x))).x | _wgslsmith_mult_u32(arg_3.a.b.x, 4294967295u))) | (0u & ~(4294967295u | u_input.a.x)));
    global1 = vec3<i32>(select(select(39214i, global1.x ^ u_input.b, select(true, true, arg_2.x)) << (0u % 32u), arg_0.x, all(arg_2)), -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(10933i, u_input.b, 1i, 43734i), vec4<i32>(arg_0.x, 17710i, u_input.b, 2147483647i)), _wgslsmith_mult_i32(2147483647i, arg_0.x), _wgslsmith_clamp_i32(1i, u_input.b, global1.x)), reverseBits(~vec3<i32>(277i, arg_0.x, u_input.b))), arg_0.x & (_wgslsmith_mult_i32(~u_input.b, -1i) ^ (global1.x << (var_0 % 32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(f32(-1f) * -626f), _wgslsmith_f_op_f32(select(-748f, _wgslsmith_f_op_f32(arg_1.x - arg_1.x), true | arg_2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-266f, arg_3.a.a.x, arg_3.d), arg_1.xwz)))))));
    let var_2 = arg_3.b.b.zzw;
    let var_3 = arg_1.yx;
    return abs(-_wgslsmith_dot_vec4_i32(arg_0, -arg_0 | (arg_0 >> (vec4<u32>(0u, 0u, var_0, arg_3.b.b.x) % vec4<u32>(32u)))));
}

fn func_1(arg_0: vec3<u32>) -> vec3<i32> {
    global1 = vec3<i32>(func_4(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.b, 56784i), vec4<i32>(u_input.b, u_input.b, 1i, u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(429f, -374f, -884f, 210f) * vec4<f32>(-1000f, 2236f, -496f, 726f))))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), func_2(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(-857f, 594f, 877f) + vec3<f32>(1000f, -1434f, 451f)), vec4<f32>(-1000f, -686f, 1000f, -1690f), _wgslsmith_f_op_f32(-902f * -656f))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(843f, -1000f, 192f, -454f))), vec4<u32>(u_input.a.x, arg_0.x, u_input.a.x, arg_0.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2333f, -811f, -175f, -724f)), ~vec4<u32>(u_input.a.x, 44512u, u_input.a.x, 2627u)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true), -35424i >= global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1311f - -2486f) - _wgslsmith_f_op_f32(ceil(-1175f))))), -_wgslsmith_mod_i32((i32(-1i) * -2147483647i) | _wgslsmith_dot_vec2_i32(vec2<i32>(-53853i, 21067i), vec2<i32>(24291i, u_input.b)), u_input.b), -(i32(-1i) * -max(-29459i, -2147483647i)));
    global1 = select(_wgslsmith_div_vec3_i32(countOneBits(~(~vec3<i32>(13424i, 2147483647i, u_input.b))), vec3<i32>(~u_input.b, firstLeadingBit(-20818i), global1.x)), countOneBits(~(abs(vec3<i32>(u_input.b, global1.x, u_input.b)) & abs(vec3<i32>(u_input.b, u_input.b, global1.x)))), any(!vec3<bool>(1u > arg_0.x, all(vec3<bool>(true, true, false)), any(vec4<bool>(true, true, true, true)))));
    let var_0 = arg_0.x;
    let var_1 = vec4<bool>(func_2(false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1355f, _wgslsmith_f_op_f32(trunc(783f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-340f, -1772f, -190f, -2233f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1547f, -237f, -997f, 1481f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(310f, 1052f, -457f, -1000f))))), _wgslsmith_f_op_f32(trunc(-955f))), func_2(27494i < global1.x, vec3<f32>(1408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2205f)) * _wgslsmith_f_op_f32(866f - 1779f)), _wgslsmith_f_op_f32(step(-641f, -676f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(123f, -1000f, 790f, 744f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1427f, -220f, -514f, -233f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1103f, _wgslsmith_f_op_f32(abs(1129f))))))), any(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true)), true);
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -898f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1425f, -396f)))), 247f, var_1.x))));
    return vec3<i32>(33054i, -1i, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(-1i) * -(func_1(reverseBits(vec3<u32>(1u, 1u, u_input.a.x))) ^ _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, global1.x), -vec3<i32>(global1.x, -2147483647i, global1.x)));
    var var_0 = 1i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -475f, _wgslsmith_f_op_f32(select(1982f, 169f, true)), 1f))), ~vec4<u32>(u_input.a.x, 70399u, ~1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(53848u, 4294967295u, 1u, u_input.a.x), vec4<u32>(0u, 1u, 4294967295u, 21369u))));
    global0 = ~_wgslsmith_mod_i32(u_input.b, _wgslsmith_sub_i32(reverseBits(23725i), i32(-1i) * -u_input.b));
    var var_2 = all(select(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(false, any(vec2<bool>(false, false)), (var_1.a.x == var_1.a.x) & any(vec4<bool>(true, false, true, true)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, any(vec2<bool>(false, true)), func_2(true, vec3<f32>(720f, -806f, var_1.a.x), var_1.a, 617f), true), !any(vec3<bool>(true, true, true)))));
    var_0 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~var_1.b.x), -firstLeadingBit(~vec4<i32>(u_input.b, global1.x, 8992i, 1i)), ~(-(~vec4<i32>(1i, u_input.b, global1.x, global1.x)) & -(vec4<i32>(-33680i, -45988i, u_input.b, global1.x) | vec4<i32>(global1.x, u_input.b, u_input.b, -1i))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2123f), var_1.a.x, 676f, var_1.a.x));
}

