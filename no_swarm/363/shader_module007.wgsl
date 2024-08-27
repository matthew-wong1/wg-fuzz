struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 1>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec4<u32>, arg_3: u32) -> f32 {
    var var_0 = -arg_0;
    let var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(abs(_wgslsmith_div_vec2_u32(arg_2.zz, ~vec2<u32>(u_input.d, 34619u))), u_input.b.zz), max(~select(abs(u_input.b.zy), _wgslsmith_sub_vec2_u32(arg_2.yx, vec2<u32>(arg_3, arg_2.x)), vec2<bool>(true, true)), _wgslsmith_clamp_vec2_u32(firstTrailingBit(firstTrailingBit(u_input.b.zz)), ~vec2<u32>(arg_1, arg_2.x), ~vec2<u32>(17709u, arg_2.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2237f, -505f, 1136f, 1367f))), vec4<f32>(910f, -668f, 737f, 346f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(615f, -235f, -469f, -1215f) + vec4<f32>(-812f, -755f, -2589f, 153f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1063f, -861f, 660f, 1426f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-511f, -184f, 384f, -875f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-176f, -612f, -818f, -1486f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(713f, -918f, -1208f, -1015f) - vec4<f32>(-876f, -627f, 1000f, 287f)) * vec4<f32>(-1005f, 1071f, 420f, -1012f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(2631f, 1594f, -1229f, -817f) + vec4<f32>(1000f, -1524f, 772f, -673f)), vec4<f32>(1f, 1f, 1f, 1f)))))));
    var_0 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, -_wgslsmith_add_i32(u_input.c.x, 7814i)), u_input.c.zx, select(vec2<bool>(true, true), vec2<bool>(true, true), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true))))), vec2<i32>(~0i, 1i));
    let var_3 = Struct_2(~firstTrailingBit(-countOneBits(u_input.c.yz)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -2360f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(select(var_2.x, -1354f, false)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_2.yz + vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(sign(var_2.x)), -2351f))), 0u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(sign(var_2.x))) - var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_2.x)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_2.x)), var_2.x))), _wgslsmith_f_op_f32(-var_2.x), 387f));
    return var_2.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_4 {
    global1 = array<vec4<i32>, 1>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_1.b))) + arg_1.b))));
    global1 = array<vec4<i32>, 1>();
    let var_1 = _wgslsmith_f_op_f32(func_3(-37892i, ~1u, vec4<u32>(33119u, ~34332u, countOneBits(~select(46508u, arg_1.d, false)), abs(_wgslsmith_mod_u32(~arg_1.d, _wgslsmith_div_u32(u_input.b.x, 0u)))), u_input.a));
    let var_2 = arg_1.e.zxx;
    return Struct_4(Struct_1(var_2.x, global1[_wgslsmith_index_u32(4294967295u, 1u)], -(u_input.c & (vec3<i32>(2147483647i, arg_1.a.x, 0i) << (vec3<u32>(u_input.d, u_input.d, 1u) % vec3<u32>(32u)))), vec4<i32>(~(-12695i), 2147483647i, ~_wgslsmith_div_i32(2147483647i, -8462i), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, -2147483647i, u_input.c.x, arg_1.a.x), abs(global1[_wgslsmith_index_u32(arg_1.d, 1u)]))), arg_1.e.x), u_input.c, arg_1.d, reverseBits(0i));
}

fn func_1() -> Struct_3 {
    global1 = array<vec4<i32>, 1>();
    global0 = u_input.a | ~abs(select(u_input.d, u_input.b.x ^ u_input.d, true));
    var var_0 = func_2(vec2<i32>(_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x ^ -1i, countOneBits(1i)), i32(-1i) * -u_input.c.x) | u_input.c.yy, Struct_2(_wgslsmith_div_vec2_i32(~vec2<i32>(-1i, 0i), ~u_input.c.xz), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(675f, -448f, -1317f, 1087f), vec4<f32>(258f, 1000f, -1623f, -1233f))), _wgslsmith_div_vec4_f32(vec4<f32>(-900f, -317f, -786f, 1461f), vec4<f32>(783f, -876f, 1064f, 945f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(784f)), _wgslsmith_f_op_f32(step(1020f, 876f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(133f, -375f) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1347f, -752f))))), 0u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(max(1145f, 397f)), _wgslsmith_f_op_f32(f32(-1f) * -818f), _wgslsmith_f_op_f32(169f - 1000f)))));
    let var_1 = vec2<bool>(((-903f > _wgslsmith_f_op_f32(abs(var_0.a.e))) || !any(vec3<bool>(true, false, true))) && all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)));
    global0 = u_input.b.x;
    return Struct_3(var_1.x);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    global1 = array<vec4<i32>, 1>();
    var var_0 = !any(!select(vec3<bool>(true, arg_1, false), vec3<bool>(true, arg_0.a, arg_1), true));
    global1 = array<vec4<i32>, 1>();
    global1 = array<vec4<i32>, 1>();
    var var_1 = !select(!select(!vec4<bool>(arg_2, arg_2, false, false), select(vec4<bool>(false, arg_1, false, arg_0.a), vec4<bool>(arg_2, arg_0.a, true, arg_2), vec4<bool>(arg_0.a, false, true, arg_0.a)), arg_3.x >= arg_3.x), select(select(!vec4<bool>(false, false, arg_1, arg_1), !vec4<bool>(false, arg_0.a, arg_2, true), select(vec4<bool>(true, true, true, arg_0.a), vec4<bool>(arg_2, arg_2, false, arg_2), vec4<bool>(true, false, arg_1, true))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, arg_2, arg_1), vec4<bool>(arg_2, arg_0.a, arg_1, true)), vec4<bool>(arg_2, arg_1, arg_2, arg_2), !vec4<bool>(arg_2, true, true, false)), !(!vec4<bool>(true, false, true, arg_2))), true);
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_u32(~func_4(func_1(), all(vec4<bool>(true, true, false, false)), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(202f, 1000f, -684f, -895f)) * vec4<f32>(-725f, 942f, 755f, -2974f))), firstTrailingBit(_wgslsmith_clamp_u32(~u_input.a, ~u_input.d, u_input.b.x)));
    let var_0 = !select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, false))), false || (u_input.b.x < 64666u)), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)), vec2<bool>(true, true));
    let var_1 = _wgslsmith_sub_u32(u_input.d, ~(~u_input.b.x)) >> (func_2(~((vec2<i32>(u_input.c.x, u_input.c.x) ^ u_input.c.xy) | min(u_input.c.xx, vec2<i32>(0i, 2147483647i))), Struct_2(u_input.c.zz, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2915f, 219f, -489f, 724f), vec4<f32>(716f, 512f, -1170f, 271f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1296f, 1941f)), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-328f, -722f, -665f, 710f), vec4<f32>(1000f, -1000f, -3148f, 978f)))))).c % 32u);
    global1 = array<vec4<i32>, 1>();
    global1 = array<vec4<i32>, 1>();
    var var_2 = true;
    let var_3 = Struct_2(u_input.c.yz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-165f, -337f, 1000f, -948f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(636f, 2507f) * vec2<f32>(-271f, 337f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-919f, -395f) * vec2<f32>(-1000f, -1253f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1259f, 1753f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1059f, -1000f))))), ~4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(286f)), _wgslsmith_f_op_f32(f32(-1f) * -770f), -802f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-835f)))))));
    global0 = ~1u;
    var var_4 = Struct_3(all(vec4<bool>(any(select(var_0, vec2<bool>(true, var_0.x), var_0.x)), var_0.x, !any(vec3<bool>(var_0.x, var_0.x, false)), var_0.x | true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_add_u32(countOneBits(36085u), u_input.b.x)), max(u_input.b & (_wgslsmith_div_vec3_u32(vec3<u32>(var_1, 0u, u_input.d), vec3<u32>(42673u, var_3.d, 2275u)) ^ ~vec3<u32>(u_input.d, 1u, 0u)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(~u_input.b), vec3<u32>(1u, firstTrailingBit(4294967295u), 4294967295u | var_1), ~u_input.b)));
}

