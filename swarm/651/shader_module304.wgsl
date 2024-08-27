struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: u32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = 2236f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: i32) -> f32 {
    var var_0 = 1000f;
    var var_1 = vec4<u32>(min(firstTrailingBit(0u), max(21420u, ~(~1u))), _wgslsmith_add_u32(~u_input.a, 4294967295u), u_input.c, _wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(~u_input.c, 45924u), _wgslsmith_div_u32(~u_input.a, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(57883u, max(79078u, u_input.a)), (vec2<u32>(u_input.c, 4294967295u) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))) ^ vec2<u32>(u_input.c, 4294967295u))));
    var var_2 = _wgslsmith_sub_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(51660i, 0i, arg_2, -2147483647i)) | (abs(_wgslsmith_div_vec4_i32(arg_0, arg_0)) ^ arg_0), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, arg_2, abs(arg_2)), vec3<i32>(-1i, _wgslsmith_div_i32(arg_0.x, u_input.b), _wgslsmith_clamp_i32(-42019i, arg_2, arg_0.x))), firstTrailingBit(u_input.b), arg_2, -44255i));
    var var_3 = _wgslsmith_mult_i32(var_2.x, -_wgslsmith_dot_vec4_i32(-arg_0, reverseBits(max(arg_0, arg_0))));
    var_0 = _wgslsmith_f_op_f32(-1632f * -2052f);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-972f + _wgslsmith_f_op_f32(f32(-1f) * -1099f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-438f)), 549f)), false));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = vec2<f32>(arg_2.d, _wgslsmith_f_op_f32(-1723f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(-199f + _wgslsmith_f_op_f32(-272f + var_0.d)), true))));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.d)), _wgslsmith_f_op_f32(-1274f - var_1.x)) + vec2<f32>(1283f, arg_0))));
    let var_3 = Struct_1(var_0.b, vec3<bool>(u_input.a > var_0.c, false, true), abs(7595u), var_0.d, true);
    var_0 = Struct_1(var_3.a, select(select(vec3<bool>(arg_2.a.x, false || var_0.b.x, !arg_2.a.x), vec3<bool>(var_3.e, var_3.b.x, arg_2.a.x), var_0.e), select(!arg_2.a, var_3.b, false), !vec3<bool>(var_0.b.x, !var_0.a.x, true)), 5549u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1424f + _wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i), vec4<bool>(false, arg_2.b.x, var_3.b.x, var_3.a.x), u_input.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * -1352f))), _wgslsmith_f_op_f32(var_3.d - _wgslsmith_f_op_f32(func_3(vec4<i32>(64788i, u_input.b, -38567i, 1i) | vec4<i32>(2147483647i, 0i, u_input.b, -2147483647i), vec4<bool>(arg_2.a.x, false, true, var_0.a.x), u_input.b))), true)), true);
    return Struct_1(vec3<bool>(true, arg_2.e, any(!arg_2.a.xx)), !(!vec3<bool>(var_3.e && false, var_0.b.x && var_3.e, select(var_0.b.x, var_3.b.x, false))), countOneBits(select(~1u, ~35551u, var_1.x != 310f) >> (countOneBits(var_0.c >> (4294967295u % 32u)) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 22963i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 178i, 0i)), !vec4<bool>(arg_2.a.x, arg_2.b.x, var_3.e, var_0.b.x), ~(-1i))), _wgslsmith_f_op_f32(round(-111f)))) * _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_mult_vec3_i32(~min(~(vec3<i32>(arg_3, u_input.b, 2147483647i) >> (vec3<u32>(arg_1.c, 44028u, arg_1.c) % vec3<u32>(32u))), min(vec3<i32>(arg_3, -35568i, -16287i) << (vec3<u32>(arg_0.c, arg_0.c, arg_2.c) % vec3<u32>(32u)), -vec3<i32>(16332i, arg_3, arg_3))), -(~firstLeadingBit(vec3<i32>(arg_3, arg_3, -32933i) & vec3<i32>(arg_3, -18272i, -1i))));
    var var_1 = arg_2;
    let var_2 = arg_0.c;
    global1 = var_1.d;
    var_1 = Struct_1(!vec3<bool>(arg_0.a.x, false, ~var_2 > _wgslsmith_mult_u32(u_input.a, 1u)), !arg_1.b, arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(243f))) - arg_0.d), !(-1587f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) + _wgslsmith_f_op_f32(max(-1070f, var_1.d)))));
    return _wgslsmith_clamp_i32(u_input.b, -(~((-2147483647i | var_0.x) & _wgslsmith_mult_i32(arg_3, 22868i))), 2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(func_4(func_2(-885f, vec4<f32>(-355f, -846f, arg_3.d, -1667f), arg_2), Struct_1(arg_0.b, arg_1.b, 34402u, 435f, true), func_2(385f, vec4<f32>(2204f, 730f, arg_1.d, -846f), arg_2), u_input.b), u_input.b), func_4(func_2(arg_0.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, arg_3.d, arg_1.d, 263f) + vec4<f32>(arg_3.d, 604f, arg_2.d, arg_3.d)), arg_3), func_2(arg_1.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, 523f, 1431f, -171f)), Struct_1(arg_0.b, arg_2.a, arg_2.c, 1300f, true)), func_2(1078f, vec4<f32>(arg_2.d, -479f, -290f, arg_3.d), arg_0), ~abs(u_input.b))), 25797i);
    global0 = u_input.b | 0i;
    let var_0 = arg_3;
    global0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1240f, -984f, -352f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-165f - _wgslsmith_f_op_f32(select(540f, 1354f, arg_2.e))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.d - _wgslsmith_f_op_f32(arg_1.d + -263f)), func_2(_wgslsmith_f_op_f32(exp2(arg_0.d)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(116f, 399f, 1241f, 1375f))), Struct_1(vec3<bool>(false, var_0.b.x, arg_3.a.x), arg_0.a, 0u, arg_0.d, true)).d, _wgslsmith_f_op_f32(-633f - -129f), _wgslsmith_f_op_f32(step(-124f, _wgslsmith_f_op_f32(-arg_1.d)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.d, arg_3.d, arg_2.d, arg_3.d)))))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(select(vec3<bool>(true, any(vec4<bool>(true, true, false, false)), false), vec3<bool>(true, false, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(func_1(Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, true, false), u_input.c, 2498f, false), Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, true, true), 11651u, 949f, false), Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, false, true), 56485u, -1829f, true), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, false), u_input.a, 1192f, false)), true, true), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false))), !vec3<bool>(false, u_input.c > 159765u, true)), !vec3<bool>(all(vec4<bool>(true, true, true, true)), true, func_1(Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, true, true), 2426u, -1736f, false), Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, true, false), u_input.a, -415f, true), Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, false, true), 29899u, 1000f, true), Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, true, true), 4810u, -655f, true)) != true), _wgslsmith_add_u32(u_input.a, ~20327u), -145f, all(!vec2<bool>(select(true, true, true), any(vec2<bool>(false, false)))));
    global0 = min(countOneBits(u_input.b & -25293i) | u_input.b, _wgslsmith_div_i32(firstLeadingBit(i32(-1i) * -1i), select(-34284i, max(u_input.b, u_input.b), false))) | -firstTrailingBit(-4914i);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.d, var_0.d, _wgslsmith_f_op_f32(var_0.d - -1074f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1199f, -1000f, var_0.d)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-340f, var_0.d, -361f), vec3<f32>(var_0.d, -811f, var_0.d), vec3<bool>(var_0.a.x, true, true)))))), 1u, _wgslsmith_sub_i32(1i << (~u_input.a % 32u), u_input.b));
}

