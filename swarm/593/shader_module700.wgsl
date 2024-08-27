struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<f32>(-1103f, 327f), vec3<f32>(2148f, 455f, -518f), vec4<bool>(true, true, false, false), vec3<f32>(1000f, 570f, 991f), vec2<u32>(10123u, 84737u)), Struct_1(vec2<f32>(-386f, 1526f), vec3<f32>(-802f, 1285f, 554f), vec4<bool>(false, false, true, true), vec3<f32>(1151f, 282f, -605f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<f32>(156f, 919f), vec3<f32>(572f, -1241f, -1006f), vec4<bool>(true, true, false, true), vec3<f32>(1000f, 209f, 1022f), vec2<u32>(0u, 4294967295u)), Struct_1(vec2<f32>(1369f, 1803f), vec3<f32>(-1000f, 255f, 925f), vec4<bool>(true, true, false, false), vec3<f32>(-225f, -674f, 1427f), vec2<u32>(35858u, 0u)), Struct_1(vec2<f32>(1233f, -1169f), vec3<f32>(-417f, 370f, -1556f), vec4<bool>(false, true, false, false), vec3<f32>(1000f, -501f, -1185f), vec2<u32>(6818u, 4294967295u)), Struct_1(vec2<f32>(-1119f, 1000f), vec3<f32>(-1992f, 1618f, -348f), vec4<bool>(true, true, true, true), vec3<f32>(756f, -1000f, -1223f), vec2<u32>(31544u, 4294967295u)), Struct_1(vec2<f32>(-2360f, 748f), vec3<f32>(572f, 1000f, 332f), vec4<bool>(false, false, true, true), vec3<f32>(-232f, 848f, -109f), vec2<u32>(0u, 86096u)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(arg_2);
    global0 = array<Struct_1, 7>();
    let var_1 = u_input.b << (1u % 32u);
    global0 = array<Struct_1, 7>();
    var var_2 = var_0.a.d.zy;
    return -_wgslsmith_sub_i32((1i << ((arg_0.e.x << (0u % 32u)) % 32u)) | select(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, var_1), vec3<i32>(-17123i, 1i, -29411i)), abs(2147483647i), any(arg_0.c.xx)), 25602i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<bool>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.a.a.x * arg_1.b.x)));
    var var_1 = 1i;
    var var_2 = -(~max(-u_input.a, abs(2147483647i)) ^ abs(_wgslsmith_div_i32(-20822i, countOneBits(u_input.a))));
    let var_3 = Struct_2(Struct_1(arg_1.d.zx, _wgslsmith_f_op_vec3_f32(ceil(arg_2.a.d)), arg_0.c, arg_2.a.b, ~(~vec2<u32>(4294967295u, 12607u))));
    let var_4 = _wgslsmith_f_op_f32(-arg_0.d.x);
    return vec4<i32>(_wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(12741i, u_input.b), vec2<i32>(21375i, u_input.a)), ~(vec2<i32>(u_input.a, u_input.b) ^ vec2<i32>(-7452i, u_input.a)))), -1i, countOneBits(_wgslsmith_sub_i32(func_3(Struct_1(vec2<f32>(-163f, arg_2.a.b.x), var_3.a.d, vec4<bool>(arg_3.x, arg_3.x, arg_0.c.x, arg_2.a.c.x), vec3<f32>(303f, -735f, -326f), vec2<u32>(4294967295u, arg_1.e.x)), select(vec4<bool>(arg_2.a.c.x, arg_3.x, true, arg_1.c.x), var_3.a.c, false), Struct_1(var_3.a.d.zz, arg_2.a.b, vec4<bool>(true, arg_2.a.c.x, false, false), var_3.a.b, arg_2.a.e)), _wgslsmith_add_i32(u_input.a ^ u_input.b, 1i))), _wgslsmith_mod_i32(u_input.a, -7356i));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: f32) -> bool {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let var_0 = firstLeadingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b, -2147483647i, arg_1, -47978i), min(vec4<i32>(u_input.a, arg_1, -26587i, u_input.a), vec4<i32>(u_input.a, 0i, 29226i, -92618i))) & abs(func_2(Struct_1(vec2<f32>(arg_2, arg_2), vec3<f32>(arg_2, arg_2, -1364f), arg_0, vec3<f32>(arg_2, 301f, arg_2), vec2<u32>(74651u, 1u)), Struct_1(vec2<f32>(arg_2, arg_2), vec3<f32>(arg_2, -357f, arg_2), arg_0, vec3<f32>(arg_2, 324f, arg_2), vec2<u32>(28206u, 4294967295u)), Struct_2(global0[_wgslsmith_index_u32(1u, 7u)]), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x))), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b, -43943i, u_input.a, -6345i) << (max(vec4<u32>(1u, 29034u, 1u, 4653u), vec4<u32>(44629u, 0u, 1u, 28688u)) % vec4<u32>(32u)), vec4<i32>(u_input.a, -1i, u_input.a << (54132u % 32u), arg_1))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(f32(-1f) * -266f)) - vec2<f32>(_wgslsmith_f_op_f32(arg_2 * arg_2), -2478f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2428f, -408f), vec2<f32>(arg_2, 767f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-129f, arg_2, 881f)))) + vec3<f32>(_wgslsmith_div_f32(arg_2, 356f), _wgslsmith_f_op_f32(-307f - -2275f), arg_2)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-516f, arg_2, arg_2) * vec3<f32>(1069f, 2281f, -1272f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_2, arg_2) + vec3<f32>(1535f, -1000f, 315f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2067f, arg_2, -103f))))), arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-326f, 1339f, arg_2) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(3192f, arg_2, arg_2))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 160f))) * vec3<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(-arg_2))), ~vec2<u32>(max(reverseBits(54741u), ~0u), 1u));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(820f, -1188f, var_1.b.x, -441f), vec4<f32>(_wgslsmith_f_op_f32(arg_2 - -436f), _wgslsmith_f_op_f32(select(arg_2, -292f, !any(arg_0.xxz))), _wgslsmith_f_op_f32(631f * arg_2), -216f));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let var_0 = func_1(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true), true), vec4<bool>(any(vec3<bool>(true, true, true)), !all(vec3<bool>(false, false, false)), false, true), any(vec4<bool>(false, any(vec3<bool>(true, false, true)), true, select(true, true, false)))), _wgslsmith_div_i32(u_input.b, ~min(u_input.a | -46399i, u_input.a & u_input.a)), _wgslsmith_f_op_f32(-2724f * -1073f));
    var var_1 = max(vec3<u32>(~4294967295u << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(44584u, 36073u)) % 32u), ~_wgslsmith_mult_u32(54732u, 1u), min(_wgslsmith_sub_u32(1u, 1u), 1u)), ~(select(vec3<u32>(4294967295u, 29748u, 1u), vec3<u32>(4294967295u, 1u, 8691u), vec3<bool>(var_0, var_0, false)) ^ vec3<u32>(1u, 28640u, 0u))) ^ ~(~select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(true, var_0, false), vec3<bool>(var_0, false, var_0), vec3<bool>(true, var_0, false))));
    global0 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_1.x, 16801u, 4294967295u, 1u)), vec4<u32>(var_1.x, 1u, 56344u, var_1.x) ^ vec4<u32>(var_1.x, 4294967295u, var_1.x, 12220u)) ^ ~1u, (var_1.x & ~var_1.x) ^ _wgslsmith_dot_vec2_u32(var_1.zy ^ var_1.yx, vec2<u32>(var_1.x, 4294967295u))), select(~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 42644u, var_1.x, 1u), vec4<u32>(var_1.x, var_1.x, var_1.x, 6914u)), abs(vec4<u32>(var_1.x, 0u, 4294967295u, 37573u))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.xx, vec2<u32>(var_1.x, var_1.x)), var_1.x, _wgslsmith_mult_u32(var_1.x, var_1.x), ~43506u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_1.x, 49782u, var_1.x), vec4<u32>(var_1.x, var_1.x, 19904u, var_1.x)) << ((vec4<u32>(4294967295u, 9828u, 0u, var_1.x) & vec4<u32>(var_1.x, var_1.x, 0u, 48424u)) % vec4<u32>(32u))), select(var_0, true, false) != true));
}

