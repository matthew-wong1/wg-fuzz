struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(276f, 549f, -264f, -991f, 367f, -212f, -504f, -1000f, 613f, 2219f, -589f, 661f, -1283f, 173f, -678f, -481f, 1586f, -539f, 1590f, -686f, -1000f, 430f, -1305f, -3478f, -354f, -1020f, -861f, -1165f, -633f, -464f, -240f, 301f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<u32>, arg_3: vec3<f32>) -> vec4<u32> {
    let var_0 = select(select(!(!vec4<bool>(true, false, arg_0, arg_1)), vec4<bool>(arg_0, false, arg_0, all(vec4<bool>(true, false, true, true)) && !arg_1), select(select(select(vec4<bool>(arg_1, arg_1, arg_0, false), vec4<bool>(arg_1, true, true, arg_1), false), vec4<bool>(arg_0, false, false, arg_0), arg_0), vec4<bool>(!arg_0, true, arg_0, 21395i > u_input.d), !vec4<bool>(arg_1, arg_0, false, true))), !vec4<bool>(-841f == arg_3.x, (global0[_wgslsmith_index_u32(1u, 32u)] == arg_3.x) != !arg_1, false, false), vec4<bool>(true, true || arg_0, true || any(vec2<bool>(false, arg_1)), all(!select(vec2<bool>(arg_0, true), vec2<bool>(true, false), true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(arg_3));
    let var_2 = vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(217f * 849f))))));
    global0 = array<f32, 32>();
    var_1 = vec3<f32>(var_1.x, -851f, var_1.x);
    return _wgslsmith_mult_vec4_u32(firstTrailingBit(~(~vec4<u32>(48934u, arg_2.x, u_input.a.x, arg_2.x))), firstTrailingBit(vec4<u32>(~37303u, ~0u, arg_2.x, _wgslsmith_dot_vec3_u32(arg_2.zzx, vec3<u32>(arg_2.x, arg_2.x, u_input.a.x))))) & _wgslsmith_mod_vec4_u32(arg_2, abs(vec4<u32>(13732u, 52256u, 4294967295u, arg_2.x)));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    global0 = array<f32, 32>();
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(arg_3.b >> (u_input.a.x % 32u), u_input.c, 23504u, _wgslsmith_add_u32(u_input.a.x, arg_3.b))), _wgslsmith_mod_vec4_u32(func_3(any(vec2<bool>(false, arg_2)), any(vec4<bool>(false, arg_3.a.e.x, arg_3.a.e.x, true)), vec4<u32>(arg_3.b, arg_3.b, arg_3.a.c, arg_3.a.d.x) << (vec4<u32>(u_input.a.x, arg_3.b, 4294967295u, 77067u) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(arg_3.a.b - vec3<f32>(-524f, -456f, arg_1.x))), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x) ^ firstLeadingBit(vec4<u32>(1558u, u_input.a.x, 25779u, arg_3.a.d.x))), vec4<u32>(~_wgslsmith_div_u32(0u, 1u), arg_3.a.c, 73746u, max(arg_3.b, 28197u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, select(12448u, 1u, true), ~u_input.c, ~u_input.c), vec4<u32>(_wgslsmith_mod_u32(~u_input.a.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.a.c, u_input.c, 1u), vec3<u32>(arg_3.a.d.x, 1u, arg_3.b)), 45286u, ~u_input.a.x & countOneBits(u_input.a.x))));
    let var_1 = -vec3<i32>(select(_wgslsmith_clamp_i32(-63902i, -2147483647i, -2147483647i), u_input.b, !arg_3.a.e.x), ~select(-45643i, u_input.b, true), ~u_input.b) | countOneBits(max(min(vec3<i32>(u_input.b, u_input.d, arg_3.d) | vec3<i32>(u_input.d, arg_3.c.a.x, 0i), -vec3<i32>(1i, u_input.d, -8692i)), vec3<i32>(-arg_3.a.a, arg_3.d | arg_3.a.a, arg_3.d)));
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    return Struct_1(2147483647i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(1000f, 812f)), -1135f, _wgslsmith_f_op_f32(step(-1031f, 239f)))), _wgslsmith_f_op_vec3_f32(-arg_3.a.b), arg_2)), _wgslsmith_clamp_u32(min(var_0.x, ~select(4294967295u, var_0.x, true)), ~_wgslsmith_div_u32(u_input.a.x, 0u), var_0.x), ~(~arg_3.a.d), !select(vec2<bool>(true, true), !(!vec2<bool>(arg_2, arg_2)), vec2<bool>(arg_3.a.e.x, arg_1.x < 1593f)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: Struct_4) -> f32 {
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(677f))), vec2<f32>(arg_2.x, arg_3.c.a.b.x), true, arg_3.c);
    return _wgslsmith_f_op_f32(sign(-1784f));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<bool>, arg_3: vec4<f32>) -> vec4<bool> {
    var var_0 = vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(func_4(Struct_3(func_2(arg_3.x, _wgslsmith_f_op_vec2_f32(arg_3.yx * arg_3.xx), true, Struct_3(Struct_1(2147483647i, vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], arg_3.x, -555f), u_input.a.x, u_input.a.yx, arg_2), 1u, Struct_2(vec2<i32>(-5392i, 2147483647i)), -44618i)), 1u, Struct_2(vec2<i32>(u_input.d, u_input.d)), u_input.b ^ u_input.b), vec4<bool>(any(vec3<bool>(arg_2.x, arg_2.x, false)) && (1259f <= global0[_wgslsmith_index_u32(6258u, 32u)]), true, !arg_0, all(!vec3<bool>(arg_2.x, arg_0, arg_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_3, vec4<f32>(1453f, -1382f, -1000f, arg_3.x))))), Struct_4(_wgslsmith_f_op_f32(exp2(arg_3.x)) <= _wgslsmith_div_f32(arg_3.x, 1038f), !vec3<bool>(arg_0, arg_0, true), Struct_3(func_2(-211f, arg_3.xx, arg_0, Struct_3(Struct_1(u_input.d, vec3<f32>(-557f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 1106f), u_input.a.x, vec2<u32>(1u, arg_1), arg_2), 4294967295u, Struct_2(vec2<i32>(18316i, u_input.b)), 1i)), arg_1 >> (4294967295u % 32u), Struct_2(vec2<i32>(u_input.b, u_input.b)), min(-5599i, 2147483647i))))));
    var_0 = arg_3.zw;
    let var_1 = arg_3.zww;
    var_0 = arg_3.zy;
    global0 = array<f32, 32>();
    return select(vec4<bool>(false, true && !arg_0, false == (any(vec4<bool>(arg_2.x, arg_2.x, false, arg_0)) | arg_0), true), vec4<bool>(arg_0, func_2(_wgslsmith_f_op_f32(f32(-1f) * -1218f), var_1.zz, 701f < arg_3.x, Struct_3(Struct_1(1i, vec3<f32>(371f, var_1.x, arg_3.x), arg_1, vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(arg_0, arg_2.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(4441u, 87039u, arg_1, arg_1), vec4<u32>(u_input.c, 9233u, 4294967295u, arg_1)), Struct_2(vec2<i32>(7278i, u_input.d)), _wgslsmith_dot_vec3_i32(vec3<i32>(-54623i, u_input.d, u_input.b), vec3<i32>(u_input.d, -2147483647i, -26471i)))).e.x, false | arg_0, !arg_0), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_0, true, u_input.d < u_input.d), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 32u)] <= 413f, true), func_1(all(vec4<bool>(true, true, false, true)), ~u_input.a.x, vec2<bool>(true, true), vec4<f32>(-1000f, global0[_wgslsmith_index_u32(0u, 32u)], 1422f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)])), false), !all(vec2<bool>(true, true))));
    var var_1 = Struct_3(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.c, 32u)] + -883f)), vec2<f32>(_wgslsmith_f_op_f32(-522f + 1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1589f)))), any(func_1(func_1(true, u_input.a.x, vec2<bool>(true, true), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], 618f, global0[_wgslsmith_index_u32(80895u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)])).x, 4294967295u, vec2<bool>(true, true), vec4<f32>(785f, 1098f, -1539f, -379f))), Struct_3(Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1247f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 1000f))), 30222u, reverseBits(vec2<u32>(u_input.a.x, 0u)), vec2<bool>(true, true)), u_input.a.x, Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(19333i, u_input.d), vec2<i32>(u_input.d, u_input.b))), 36627i)), ~(~func_2(_wgslsmith_f_op_f32(f32(-1f) * -377f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 32u)], 774f) - vec2<f32>(1169f, global0[_wgslsmith_index_u32(u_input.c, 32u)])), true, Struct_3(Struct_1(u_input.d, vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], 1625f, global0[_wgslsmith_index_u32(1u, 32u)]), u_input.a.x, vec2<u32>(1u, u_input.a.x), vec2<bool>(false, false)), u_input.a.x, Struct_2(vec2<i32>(-35848i, u_input.d)), -2807i)).c), Struct_2(vec2<i32>(~(-11738i) << (1u % 32u), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, u_input.d), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.d))))), u_input.d);
    let var_2 = ~firstTrailingBit(select(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 23745u, 4294967295u) | vec4<u32>(u_input.c, 102531u, var_1.a.d.x, var_1.a.d.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.b, 64545u, 23732u, 44348u), vec4<u32>(4294967295u, var_1.b, u_input.c, u_input.c))), firstLeadingBit(vec4<u32>(43263u, 1u, var_1.b, var_1.b) << (vec4<u32>(4294967295u, u_input.a.x, var_1.b, var_1.a.c) % vec4<u32>(32u))), !(!var_1.a.e.x)));
    var var_3 = Struct_3(var_1.a, var_1.b & countOneBits(1u ^ (u_input.c | 48058u)), Struct_2(_wgslsmith_div_vec2_i32(select(reverseBits(var_1.c.a), var_1.c.a, func_2(var_1.a.b.x, vec2<f32>(-1000f, -497f), true, Struct_3(Struct_1(0i, var_1.a.b, 15337u, vec2<u32>(1u, var_2.x), vec2<bool>(true, false)), u_input.a.x, var_1.c, var_1.a.a)).e), vec2<i32>(abs(-19788i), 1i))), 25229i);
    let var_4 = firstTrailingBit(~27035u);
    let var_5 = var_1.a.e.x;
    var var_6 = var_1.a.e.x;
    var var_7 = func_2(_wgslsmith_f_op_f32(504f - var_1.a.b.x), var_1.a.b.yy, var_1.a.e.x, Struct_3(Struct_1(0i, vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), 1031f, _wgslsmith_f_op_f32(round(792f))), 25923u, reverseBits(var_1.a.d), select(select(vec2<bool>(var_3.a.e.x, var_3.a.e.x), vec2<bool>(var_3.a.e.x, var_1.a.e.x), var_1.a.e), var_3.a.e, var_3.a.e)), min(var_1.b, 37413u), var_3.c, 2147483647i));
    var var_8 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), -435f) - _wgslsmith_f_op_f32(var_7.b.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1056f * _wgslsmith_f_op_f32(408f - var_1.a.b.x)), _wgslsmith_f_op_f32(-var_7.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1745f, _wgslsmith_f_op_f32(select(744f, var_1.a.b.x, true)), _wgslsmith_f_op_f32(sign(763f))))), abs(~var_7.d.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(450f, global0[_wgslsmith_index_u32(33244u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], 641f), vec4<f32>(global0[_wgslsmith_index_u32(var_4, 32u)], global0[_wgslsmith_index_u32(67124u, 32u)], -919f, global0[_wgslsmith_index_u32(var_7.c, 32u)]))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.b.x, 748f, var_1.a.b.x, var_1.a.b.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_7.b.x, global0[_wgslsmith_index_u32(50585u, 32u)], -425f, -483f))))))))), 330f);
}

