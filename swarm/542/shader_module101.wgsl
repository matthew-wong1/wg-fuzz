struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(-391f, 258f, -517f, -2003f), vec4<f32>(299f, 308f, 534f, -1000f), vec4<f32>(-1202f, 198f, -365f, 2155f), vec4<f32>(-570f, 334f, -265f, 720f), vec4<f32>(-851f, 493f, -790f, -1473f), vec4<f32>(530f, 931f, -1312f, 1000f), vec4<f32>(777f, 1764f, 2287f, 566f), vec4<f32>(1768f, -1400f, -544f, -987f), vec4<f32>(-1348f, -561f, 570f, -135f), vec4<f32>(-1000f, -436f, -431f, 602f), vec4<f32>(-918f, 997f, 425f, -247f), vec4<f32>(1000f, 1475f, 354f, -1000f), vec4<f32>(-465f, 996f, 1000f, -895f), vec4<f32>(-413f, 930f, 1098f, 1516f), vec4<f32>(1041f, -499f, 2158f, 432f), vec4<f32>(358f, 334f, -1753f, -502f), vec4<f32>(109f, 699f, 1494f, -769f), vec4<f32>(-340f, 2484f, -799f, -161f), vec4<f32>(-126f, -563f, 549f, 380f), vec4<f32>(1185f, -193f, 367f, -887f), vec4<f32>(-710f, -100f, 283f, 360f), vec4<f32>(-147f, 855f, 825f, -333f), vec4<f32>(-2181f, -180f, 1000f, -343f), vec4<f32>(404f, 306f, 1163f, 1659f), vec4<f32>(-1000f, 557f, 303f, -1706f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = arg_0.d;
    global0 = array<vec4<f32>, 25>();
    var var_1 = max(min(vec2<i32>(firstLeadingBit(var_0.b.x), arg_1.b.x), abs(firstTrailingBit(abs(vec2<i32>(0i, var_0.d))))), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 31069i), vec2<i32>(arg_0.d.d, -2147483647i)), var_0.b.zy), _wgslsmith_div_vec2_i32(vec2<i32>(-15902i, arg_1.c) | ~vec2<i32>(var_0.c, arg_1.c), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.b.ww, vec2<i32>(1i, var_0.b.x)), ~arg_1.b.wx))));
    var_1 = vec2<i32>(-1i, 0i);
    var_1 = arg_1.b.zz;
    return select(firstTrailingBit(max(u_input.a.x, u_input.c.x << (4294967295u % 32u))), _wgslsmith_mult_u32(0u, reverseBits(0u & _wgslsmith_div_u32(u_input.b.x, 70167u))), true);
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(arg_2.a, arg_2.b, _wgslsmith_mod_i32(-29744i, arg_2.d), ~(1i >> (~(~arg_1) % 32u)), !(!vec2<bool>(arg_2.e.x, arg_1 > u_input.b.x)));
    return _wgslsmith_add_i32(-(var_0.d >> (_wgslsmith_sub_u32(u_input.e.x | arg_1, func_3(Struct_2(vec2<i32>(var_0.d, -2147483647i), arg_2.a.x, arg_0.yz, Struct_1(arg_2.a, vec4<i32>(10184i, 8543i, -47038i, arg_2.d), -2147483647i, 14214i, arg_2.e)), arg_2, -156f)) % 32u)), var_0.b.x);
}

fn func_4(arg_0: i32) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 25u)];
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(~select(vec4<i32>(-29891i, 1i, arg_0, 30458i), vec4<i32>(arg_0, 0i, arg_0, arg_0), vec4<bool>(true, true, true, false)), -vec4<i32>(-1i, arg_0, arg_0, arg_0) & (vec4<i32>(arg_0, arg_0, 5466i, -32636i) << (vec4<u32>(u_input.d.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), arg_0, ~arg_0), vec3<i32>(func_2(var_0.xzw, u_input.d.x, Struct_1(vec3<bool>(false, true, false), vec4<i32>(arg_0, -30725i, arg_0, arg_0), arg_0, -2147483647i, vec2<bool>(true, true))), 2147483647i, -6425i) & -vec3<i32>(countOneBits(arg_0), -2147483647i, -2147483647i << (u_input.c.x % 32u)));
    let var_2 = select(vec3<bool>(true, (_wgslsmith_mod_u32(u_input.b.x, u_input.d.x) | 1u) >= ~(u_input.b.x | u_input.e.x), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, all(vec3<bool>(true, false, false))), vec3<bool>(true, true, true)), vec3<bool>(true, true, true));
    global0 = array<vec4<f32>, 25>();
    global0 = array<vec4<f32>, 25>();
    return !all(vec3<bool>(any(vec2<bool>(false, var_2.x)), !(!var_2.x), var_2.x));
}

fn func_1() -> i32 {
    let var_0 = Struct_2(vec2<i32>(reverseBits(max(abs(2147483647i), 1i)), _wgslsmith_add_i32(1i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(2147483647i, 1i, 25368i), vec3<i32>(-13601i, -4966i, 45544i)), abs(vec3<i32>(2147483647i, 0i, 2147483647i))))), true, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(425f, -590f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(221f, -1000f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-361f, -488f))))), Struct_1(vec3<bool>(true, true, true), _wgslsmith_div_vec4_i32(min(vec4<i32>(94677i, -1i, -2147483647i, -2147483647i), vec4<i32>(-16226i, 10322i, 4765i, -48790i)), vec4<i32>(-1i) * -vec4<i32>(11526i, -4409i, 4931i, 2162i)), -(~1i), 1i, vec2<bool>(all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)))));
    var var_1 = func_4(func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(953f, -651f, var_0.c.x))), ~(~(~4294967295u)), Struct_1(var_0.d.a, _wgslsmith_add_vec4_i32(var_0.d.b, vec4<i32>(12434i, var_0.d.d, var_0.a.x, 0i)) & var_0.d.b, -1i, 52834i, !(!vec2<bool>(true, var_0.d.a.x)))));
    global0 = array<vec4<f32>, 25>();
    global0 = array<vec4<f32>, 25>();
    var_1 = true;
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = firstTrailingBit(vec2<i32>(i32(-1i) * -2147483647i, ~var_0 << (u_input.a.x % 32u))) ^ vec2<i32>(var_0, -33385i);
    global0 = array<vec4<f32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e.x, 231f, 1856f, -(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(19538i, -48674i, 31143i, -1i), vec4<i32>(var_0, var_0, var_0, 27305i)))), _wgslsmith_f_op_f32(-233f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-323f)) - _wgslsmith_f_op_f32(432f - -719f)))));
}

