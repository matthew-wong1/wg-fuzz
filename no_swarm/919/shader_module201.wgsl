struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1753f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>, arg_3: vec2<f32>) -> vec4<u32> {
    let var_0 = Struct_3(!arg_0.d, true, true, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(724f, -283f, arg_2.x, 1627f))))));
    let var_1 = var_0;
    global0 = _wgslsmith_f_op_f32(ceil(arg_3.x));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_3.x)), var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)));
    global0 = var_1.d.x;
    return vec4<u32>(0u | _wgslsmith_sub_u32(min(_wgslsmith_dot_vec2_u32(arg_0.b.a.zy, vec2<u32>(4451u, u_input.a.x)), 98668u), u_input.a.x), arg_0.c.a.x, _wgslsmith_clamp_u32(abs(arg_0.b.a.x), countOneBits(_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.a.x, arg_0.b.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 13322u, 35951u, 1u)))), ~u_input.a.x ^ (1u << ((arg_0.c.a.x | arg_0.c.a.x) % 32u))), reverseBits(~0u));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: i32) -> vec4<bool> {
    let var_0 = firstLeadingBit(arg_2) | -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, -1i, -7675i, u_input.b)), vec4<i32>(1i, 2147483647i, 58568i, 32879i)), vec4<i32>(1i, _wgslsmith_sub_i32(arg_2, -24264i), u_input.b, 1i | u_input.b));
    global0 = -1313f;
    global0 = -232f;
    let var_1 = Struct_1(_wgslsmith_div_vec4_u32(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 32524u, 47596u), vec4<u32>(u_input.a.x, 81556u, u_input.a.x, 4294967295u)), max(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 46158u), vec4<u32>(u_input.a.x, 11024u, u_input.a.x, 95881u)), arg_1.a), ~(~vec4<u32>(1u, 1u, 4294967295u, 29111u)) & ~func_3(Struct_2(arg_2, Struct_1(vec4<u32>(u_input.a.x, 0u, 48958u, u_input.a.x), arg_2), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 11447u, u_input.a.x), 14983i), true), arg_2, vec2<f32>(569f, -100f), vec2<f32>(arg_0.x, 167f))), var_0);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.d.x))) - arg_0.x)) + arg_1.d.x);
    return select(!(!vec4<bool>(any(vec3<bool>(arg_1.b, arg_1.a, arg_1.a)), true, arg_1.b, true)), vec4<bool>(arg_1.b, true, arg_1.b, arg_1.a), all(select(select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.b), !vec4<bool>(false, false, arg_1.a, false), true), !(!vec4<bool>(arg_1.a, false, arg_1.a, arg_1.b)), _wgslsmith_div_f32(arg_0.x, arg_0.x) >= _wgslsmith_f_op_f32(-373f - arg_1.d.x))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_4 {
    var var_0 = Struct_2(-_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(0i, 2502i), arg_1.a.b.b | u_input.b), ~firstTrailingBit(-2147483647i)), arg_2.c, Struct_1(min(max(vec4<u32>(arg_1.a.b.a.x, arg_2.b.a.x, 28300u, u_input.a.x), vec4<u32>(62172u, u_input.a.x, 0u, 4294967295u)) & (vec4<u32>(u_input.a.x, arg_2.c.a.x, arg_2.b.a.x, arg_1.b.x) ^ arg_1.a.c.a), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a.b.a.x, u_input.a.x, arg_2.b.a.x, 0u), vec4<u32>(arg_2.c.a.x, arg_2.c.a.x, arg_1.a.c.a.x, arg_1.a.c.a.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(~arg_2.c.b, -18411i, 0i ^ u_input.b), vec3<i32>(arg_2.b.b, _wgslsmith_div_i32(arg_2.b.b, 1i), 57826i))), true);
    var_0 = arg_2;
    var_0 = Struct_2(arg_2.a, var_0.b, arg_2.c, all(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1304f, 443f, 782f), vec3<f32>(-1207f, -400f, 603f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(467f, -1146f, 505f), vec3<f32>(-179f, 531f, 1193f)))), Struct_3(!arg_0.x, arg_2.c.b < u_input.b, arg_0.x, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-683f, -307f, -660f, -1308f)))), -34330i).zxx));
    let var_1 = vec2<u32>(~(~u_input.a.x), arg_1.a.c.a.x);
    var_0 = arg_2;
    return Struct_4(arg_1.a, arg_1.a.b.a.ww, vec2<bool>(true, true));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(~arg_0.a.b.a, _wgslsmith_sub_i32(23662i, _wgslsmith_mod_i32(20633i, -(16172i & u_input.b))));
    let var_1 = func_4(!select(!func_2(arg_2.d.wyz, Struct_3(false, arg_1.x, arg_0.c.x, arg_2.d), var_0.b), vec4<bool>(true, true, true, true), !func_2(vec3<f32>(281f, arg_2.d.x, 1303f), arg_2, 6533i)), arg_0, Struct_2(-25059i, Struct_1(var_0.a, firstTrailingBit(select(24778i, var_0.b, false))), Struct_1(arg_3.a, _wgslsmith_div_i32(u_input.b, 0i)), all(!vec3<bool>(false, arg_0.c.x, true))), !select(arg_1, arg_0.c, !arg_1.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.d.x)))))) + arg_2.d.x);
    let var_3 = arg_2.a;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2))) + -644f) - -1000f));
    return (_wgslsmith_f_op_f32(round(-903f)) > 462f) | true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<u32>(~25952u, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(select(u_input.a.x, u_input.a.x, u_input.a.x > 21002u), ~(~u_input.a.x), ~u_input.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 27276u, u_input.a.x), vec4<u32>(u_input.a.x, 19753u, u_input.a.x, 0u)), u_input.a.x ^ u_input.a.x)), vec4<u32>(65u, u_input.a.x, 50772u, ((u_input.a.x & u_input.a.x) & u_input.a.x) & select(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), all(vec3<bool>(true, false, false)))), !all(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true))));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-773f + 1138f);
    var var_3 = true;
    var_3 = false;
    var var_4 = Struct_4(Struct_2(u_input.b, Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 32032u, 79090u), vec4<u32>(u_input.a.x, var_0.x, var_0.x, var_0.x)), u_input.b), Struct_1(vec4<u32>(var_0.x, 15574u, var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 16616u, 4294967295u), u_input.a)), ~u_input.b), !(!any(vec3<bool>(true, true, true)))), ~_wgslsmith_div_vec2_u32(abs(vec2<u32>(1u, u_input.a.x)) >> (~var_0.zx % vec2<u32>(32u)), vec2<u32>(var_0.x, 4294967295u) | _wgslsmith_clamp_vec2_u32(u_input.a.yx, vec2<u32>(var_0.x, 4294967295u), vec2<u32>(u_input.a.x, 0u))), !vec2<bool>(true, select(func_1(Struct_4(Struct_2(u_input.b, Struct_1(vec4<u32>(4294967295u, 5464u, u_input.a.x, 1u), -1i), Struct_1(vec4<u32>(65076u, u_input.a.x, 60929u, 0u), u_input.b), false), vec2<u32>(var_0.x, var_0.x), vec2<bool>(false, false)), vec2<bool>(true, false), Struct_3(false, true, true, vec4<f32>(1000f, -1067f, var_2, 1018f)), Struct_1(vec4<u32>(var_0.x, 0u, 16942u, 0u), u_input.b)), func_1(Struct_4(Struct_2(-15748i, Struct_1(vec4<u32>(50153u, u_input.a.x, 0u, u_input.a.x), u_input.b), Struct_1(vec4<u32>(var_0.x, 4294967295u, u_input.a.x, u_input.a.x), u_input.b), false), var_0.yz, vec2<bool>(false, true)), vec2<bool>(false, true), Struct_3(true, false, false, vec4<f32>(var_2, var_2, var_2, var_2)), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), -44721i)), true)));
    var var_5 = Struct_3(4294967295u < var_0.x, !var_4.a.d, func_1(func_4(!(!vec4<bool>(false, false, var_4.c.x, var_4.a.d)), func_4(vec4<bool>(var_4.c.x, false, false, false), Struct_4(Struct_2(var_4.a.a, var_4.a.b, Struct_1(var_4.a.c.a, u_input.b), false), vec2<u32>(var_4.a.b.a.x, var_4.a.b.a.x), vec2<bool>(var_4.c.x, var_4.a.d)), Struct_2(-30449i, var_4.a.c, Struct_1(vec4<u32>(u_input.a.x, var_0.x, 4294967295u, 4294967295u), 0i), var_4.a.d), var_4.c), func_4(func_2(vec3<f32>(var_2, var_2, var_2), Struct_3(var_4.a.d, true, var_4.c.x, vec4<f32>(var_2, var_2, 989f, var_2)), 2147483647i), Struct_4(var_4.a, var_4.b, vec2<bool>(true, false)), var_4.a, select(vec2<bool>(false, true), vec2<bool>(var_4.a.d, var_4.c.x), var_4.c)).a, vec2<bool>(true, true)), !(!select(vec2<bool>(false, false), vec2<bool>(false, var_4.a.d), vec2<bool>(var_4.c.x, var_4.a.d))), Struct_3(var_4.c.x, !var_4.a.d, var_4.c.x, _wgslsmith_div_vec4_f32(vec4<f32>(198f, -881f, -1247f, var_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, var_2, -659f)))), var_4.a.b), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(953f, 1f, _wgslsmith_f_op_f32(step(605f, -956f)), _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -725f, var_2, var_2) - vec4<f32>(-284f, 1150f, -108f, var_2))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + 1182f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2330f * 665f) + _wgslsmith_f_op_f32(round(307f))), _wgslsmith_div_f32(var_2, var_2), var_2)));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - var_2);
    let x = u_input.a;
    s_output = StorageBuffer(func_3(Struct_2(1i, var_4.a.b, var_4.a.b, true), (_wgslsmith_sub_i32(var_4.a.b.b, u_input.b) | 0i) & -38571i, var_5.d.zw, var_5.d.yz).x, u_input.a.x, var_5.d.x, vec2<i32>(var_4.a.a, 1i), var_0.x);
}

