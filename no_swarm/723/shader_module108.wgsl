struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 24>;

var<private> global1: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_2(66237u, vec4<f32>(_wgslsmith_div_f32(-485f, _wgslsmith_f_op_f32(f32(-1f) * -497f)), _wgslsmith_f_op_f32(f32(-1f) * -1788f), arg_1.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.x)))))));
    global0 = array<vec3<i32>, 24>();
    let var_2 = Struct_1(_wgslsmith_mult_u32(abs(~var_1.a), arg_2.a) ^ firstTrailingBit(max(~4294967295u, 20504u)));
    let var_3 = ~(~(u_input.e >> (countOneBits(4684u & arg_1.a) % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -636f) * -1796f);
}

fn func_2(arg_0: i32) -> u32 {
    global1 = 1f;
    var var_0 = select(vec3<bool>(true, false, !all(vec3<bool>(true, true, false))), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, !all(vec3<bool>(true, true, true)), select(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !vec3<bool>(select(all(vec3<bool>(true, true, true)), all(vec3<bool>(false, true, true)), true), all(vec3<bool>(true, true, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false))));
    let var_1 = true;
    var var_2 = Struct_2(11146u & u_input.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-176f, -1360f, 649f, 287f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(776f, _wgslsmith_f_op_f32(func_3(Struct_2(u_input.e, vec4<f32>(-1394f, 103f, 897f, 976f)), Struct_2(4294967295u, vec4<f32>(-1263f, 606f, 1000f, 412f)), Struct_1(1u))), -1000f, _wgslsmith_f_op_f32(abs(600f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1567f, 679f, 620f, -733f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-291f, -850f, -1000f, 1872f), vec4<f32>(-189f, 1156f, 1000f, -404f))), var_0.x)))));
    var_0 = vec3<bool>(var_1, true, false);
    return select(var_2.a, 24094u, false);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = vec4<u32>(u_input.e, firstLeadingBit(12837u), u_input.e, ~abs(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 46655u), vec3<u32>(arg_1, 23797u, 1u)))));
    global0 = array<vec3<i32>, 24>();
    global1 = _wgslsmith_f_op_f32(sign(arg_2.b.x));
    global0 = array<vec3<i32>, 24>();
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.b.x, 1416f)));
    return ~(-vec4<i32>(-2147483647i, _wgslsmith_mult_i32(u_input.a, u_input.c), u_input.a, u_input.b.x));
}

fn func_5(arg_0: vec4<i32>) -> vec3<bool> {
    global0 = array<vec3<i32>, 24>();
    global0 = array<vec3<i32>, 24>();
    var var_0 = any(!select(vec2<bool>(true, true), vec2<bool>(true, select(true, false, false)), true));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1608f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-543f, -2012f, true)), _wgslsmith_f_op_f32(floor(1045f))))) + -1000f) - _wgslsmith_f_op_f32(127f - 161f));
    let var_1 = firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~(vec4<u32>(32832u, u_input.e, u_input.e, 4294967295u) | vec4<u32>(101252u, u_input.e, 4294967295u, u_input.e)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 4294967295u, 1u, u_input.e), vec4<u32>(u_input.e, u_input.e, u_input.e, 4294967295u)), vec4<u32>(0u, 4294967295u, u_input.e, 18303u) ^ vec4<u32>(1u, 101829u, u_input.e, 4730u))), ~min(~vec4<u32>(u_input.e, 13622u, u_input.e, u_input.e), countOneBits(vec4<u32>(u_input.e, u_input.e, 4294967295u, 73261u)))));
    return !select(select(vec3<bool>(true, var_1.x == var_1.x, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, 1u < var_1.x, -8132i > arg_0.x), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))), true);
}

fn func_1() -> f32 {
    var var_0 = vec2<bool>(!(-(~(-1i)) < u_input.d), true);
    global1 = _wgslsmith_f_op_f32(trunc(-451f));
    var var_1 = func_5(select(firstLeadingBit(func_4(Struct_1(u_input.e), func_2(u_input.d), Struct_2(u_input.e, vec4<f32>(-497f, 1050f, 164f, -716f)))), firstLeadingBit(countOneBits(~vec4<i32>(1i, 7003i, 2147483647i, -1i))), !any(vec2<bool>(true, true))));
    var_1 = func_5(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c, u_input.a), u_input.c), 56536i, 1i), min(vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, 14214i), -82331i, _wgslsmith_div_i32(-1i, u_input.a), ~u_input.d), vec4<i32>(~(-2147483647i), 2147483647i, i32(-1i) * -34948i, -u_input.d))));
    let var_2 = ~(-2147483647i);
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_div_u32(u_input.e, u_input.e | ~u_input.e), vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(486f + -1395f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-403f - 1000f), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(375f, 1000f)))));
    let var_1 = Struct_1(41881u);
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(365f * var_0.b.x) - _wgslsmith_f_op_f32(round(-104f)))))));
    global0 = array<vec3<i32>, 24>();
    var var_2 = Struct_2(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, var_1.a, var_1.a), vec3<u32>(max(u_input.e, 1u), ~1u, 1u)), max(_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_0.a, var_1.a), vec3<u32>(u_input.e, 4294967295u, 0u)), vec3<u32>(0u, 0u, u_input.e) << (vec3<u32>(var_1.a, 0u, 59853u) % vec3<u32>(32u))) ^ ~(~vec3<u32>(var_0.a, 1u, 76214u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -164f), 935f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-151f, var_0.b.x))))) + _wgslsmith_f_op_vec4_f32(-var_0.b)));
    var_0 = Struct_2((~_wgslsmith_dot_vec4_u32(vec4<u32>(27951u, var_2.a, var_1.a, 1u), vec4<u32>(4294967295u, var_0.a, 1u, 4294967295u)) << (1u % 32u)) ^ (4294967295u >> (firstLeadingBit(4294967295u) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b * _wgslsmith_f_op_vec4_f32(var_2.b - _wgslsmith_f_op_vec4_f32(sign(var_2.b))))));
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 28518i, u_input.b.x ^ _wgslsmith_mod_i32(_wgslsmith_mod_i32(-26415i, 25430i), abs(u_input.b.x)), ~abs(~u_input.b.x)), vec4<i32>(~1i, reverseBits(firstLeadingBit(u_input.d)) & _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(24932i, 0i), vec2<i32>(2147483647i, 7509i)), vec2<i32>(u_input.c, -27474i)), ~(~(-7481i)), -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(0i, 1i)), u_input.b)));
    var var_4 = vec2<i32>(u_input.a, select(abs(var_3 ^ firstLeadingBit(var_3)), -u_input.a, !all(vec4<bool>(false, true, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, _wgslsmith_f_op_vec2_f32(var_2.b.xw - var_0.b.wx), u_input.e << (var_2.a % 32u), u_input.b.x);
}

