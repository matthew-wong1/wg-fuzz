struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(-28353i, 7124i), vec2<i32>(i32(-2147483648), 34381i), vec2<i32>(7596i, 0i), vec2<i32>(10419i, 0i), vec2<i32>(1i, 10537i), vec2<i32>(-8080i, 2147483647i), vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, 7425i), vec2<i32>(1i, 1i), vec2<i32>(1i, 1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(1i, -1334i), vec2<i32>(-1i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(14326i, -24868i), vec2<i32>(-6081i, 2147483647i), vec2<i32>(0i, 2147483647i), vec2<i32>(-39391i, 2147483647i), vec2<i32>(8231i, 2147483647i), vec2<i32>(-4283i, 38481i), vec2<i32>(i32(-2147483648), 27250i));

var<private> global2: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(807f, 111f, 215f), vec3<f32>(-1000f, 954f, -1433f), vec3<f32>(956f, -1391f, 138f), vec3<f32>(1000f, 385f, 1933f), vec3<f32>(-165f, -546f, -1301f), vec3<f32>(-961f, 411f, -1712f), vec3<f32>(-373f, -1284f, -1643f), vec3<f32>(1000f, -799f, -1249f), vec3<f32>(1000f, -628f, -1015f), vec3<f32>(-787f, -847f, 509f), vec3<f32>(738f, -823f, 307f), vec3<f32>(129f, -962f, 1542f), vec3<f32>(-393f, -1506f, 216f), vec3<f32>(3204f, -815f, 1117f), vec3<f32>(975f, 364f, 930f), vec3<f32>(-1733f, -231f, 1935f), vec3<f32>(-157f, 440f, 874f), vec3<f32>(-489f, -2108f, 1385f), vec3<f32>(-298f, -900f, 128f), vec3<f32>(-1000f, 1707f, -586f), vec3<f32>(951f, 206f, -339f), vec3<f32>(-563f, 1408f, 1928f), vec3<f32>(536f, 261f, 1644f), vec3<f32>(-1252f, -280f, -390f), vec3<f32>(185f, -1094f, -391f), vec3<f32>(302f, 508f, 352f), vec3<f32>(1565f, -922f, 707f), vec3<f32>(-506f, -1226f, 180f), vec3<f32>(1616f, -1459f, 100f), vec3<f32>(-505f, -526f, -1000f), vec3<f32>(1254f, -334f, 714f), vec3<f32>(205f, -201f, -539f));

var<private> global3: u32 = 1u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global3 = arg_0.c.x;
    var var_0 = countOneBits(~vec3<i32>(-11990i, arg_0.e, select(32614i, global0.e, global0.a.x)) << (abs(vec3<u32>(_wgslsmith_mod_u32(28740u, arg_0.c.x), global0.c.x, 0u)) % vec3<u32>(32u)));
    global0 = Struct_1(select(select(vec3<bool>(true, true, all(global0.a.zz)), arg_0.a, arg_0.a), select(vec3<bool>(true, false, any(vec3<bool>(true, true, global0.a.x))), select(!vec3<bool>(arg_0.a.x, false, false), select(vec3<bool>(global0.a.x, true, arg_0.a.x), vec3<bool>(false, true, arg_0.a.x), global0.a.x), true), select(vec3<bool>(arg_0.a.x, global0.a.x, true), arg_0.a, true)), global0.a), 698u, firstTrailingBit(global0.c), _wgslsmith_f_op_f32(-1f), reverseBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.b, abs(u_input.b)), global0.e)));
    global0 = Struct_1(!select(!vec3<bool>(arg_0.a.x, global0.a.x, false), vec3<bool>(true, all(arg_0.a), false), all(vec2<bool>(global0.a.x, false))), 8911u, vec2<u32>(abs(firstLeadingBit(~global0.c.x)), 1u), 1327f, 1i);
    let var_1 = any(!(!vec3<bool>(arg_0.a.x, true, false)));
    return min(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global0.b, _wgslsmith_mod_u32(1u, 1u), 27010u, global0.c.x << (arg_0.b % 32u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.c.x, 18007u, 24240u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(global0.c.x, 0u, arg_0.b, 9999u), vec4<u32>(arg_0.c.x, 9759u, 1u, 1u)))), _wgslsmith_sub_u32(firstTrailingBit(~(~arg_0.b)), global0.c.x));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>) -> bool {
    let var_0 = vec3<bool>(all(global0.a.xz), global0.d <= global0.d, all(!(!(!arg_1.xy))));
    let var_1 = false;
    global3 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, global0.c.x, global0.c.x, _wgslsmith_mod_u32(func_3(Struct_1(var_0, 0u, vec2<u32>(global0.c.x, 4294967295u), 682f, -2528i)), 70288u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.c.x, ~0u, abs(global0.c.x), arg_0.x), ~firstLeadingBit(arg_0)));
    global2 = array<vec3<f32>, 32>();
    var var_2 = min(min(-_wgslsmith_dot_vec2_i32(-vec2<i32>(global0.e, global0.e), vec2<i32>(1i, global0.e)), global0.e), -(-1i << (countOneBits(~arg_0.x) % 32u)));
    return true;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = -(~(abs(firstTrailingBit(vec4<i32>(u_input.b.x, 300i, -32160i, global0.e))) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.x, global0.c.x, arg_0.x, arg_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(38216u, arg_0.x, 0u, global0.c.x), vec4<u32>(arg_0.x, 44760u, 1u, global0.c.x))) % vec4<u32>(32u))));
    let var_1 = !select(func_2(~(~vec4<u32>(global0.c.x, 1u, 7444u, 11055u)), !vec3<bool>(global0.a.x, global0.a.x, global0.a.x)), !global0.a.x, true);
    let var_2 = vec3<bool>(~10694u == global0.b, countOneBits(-abs(-2147483647i)) > -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, global0.e, 2147483647i, global0.e), vec4<i32>(arg_1.x, u_input.b.x, arg_1.x, 28733i)), select(arg_1, arg_1, vec4<bool>(true, global0.a.x, var_1, false))), global0.a.x);
    global2 = array<vec3<f32>, 32>();
    return Struct_3(min(abs(firstTrailingBit(~vec3<u32>(global0.c.x, 141776u, global0.b))), firstLeadingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, 1u, global0.b), vec3<u32>(0u, arg_0.x, global0.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_div_i32(global0.e, ~(firstLeadingBit(-2147483647i) >> (~global0.c.x % 32u))), firstLeadingBit(~(-_wgslsmith_add_i32(-1i, 6263i))));
    var var_1 = func_1(~global0.c, ~(vec4<i32>(0i, 0i, -global0.e, 10694i) << ((_wgslsmith_div_vec4_u32(vec4<u32>(14311u, global0.b, 0u, global0.c.x), vec4<u32>(global0.c.x, 22437u, 36128u, global0.b)) | ~vec4<u32>(0u, 0u, global0.b, 24654u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) + _wgslsmith_div_f32(-397f, -636f)), 1162f, 1258f))));
    let var_2 = -668f;
    global2 = array<vec3<f32>, 32>();
    let var_3 = Struct_1(global0.a, global0.b, var_1.a.yz, 365f, 42897i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(global0.e, -var_0), var_2);
}

