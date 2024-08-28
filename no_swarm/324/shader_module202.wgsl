struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = arg_3;
    global0 = 0i | abs(-arg_3.d.x);
    let var_1 = -416f;
    let var_2 = Struct_1(_wgslsmith_sub_u32(abs(arg_2.a) | 63133u, ~abs(~u_input.a.x)), ~1i, select(select(select(select(arg_2.c, vec2<bool>(arg_2.c.x, arg_0.x), vec2<bool>(true, var_0.c.x)), vec2<bool>(false, false), select(vec2<bool>(var_0.c.x, false), var_0.c, vec2<bool>(true, var_0.c.x))), !(!vec2<bool>(true, arg_2.c.x)), !(!vec2<bool>(true, arg_3.c.x))), vec2<bool>(true, true), arg_0.yy), ~vec3<i32>(arg_2.b, arg_3.d.x, _wgslsmith_div_i32(0i << (var_0.a % 32u), abs(var_0.b))));
    global0 = reverseBits(var_2.b);
    return vec4<i32>(1i, -_wgslsmith_mult_i32(arg_2.b, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d.x, var_0.b, 1i, 7177i | arg_3.d.x), vec4<i32>(1i, arg_3.d.x, arg_2.d.x, -1i) | abs(vec4<i32>(63479i, -1i, 0i, -35166i))), reverseBits(arg_2.b)) & min(abs(vec4<i32>(-8959i, 0i, -16156i, var_0.d.x)) | -countOneBits(vec4<i32>(-2147483647i, -1i, arg_2.b, arg_3.d.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(~var_2.b, _wgslsmith_dot_vec3_i32(arg_2.d, arg_3.d), -var_2.b, -var_0.b), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b, -38133i, -2147483647i, var_2.d.x), vec4<i32>(arg_3.b, var_0.d.x, arg_2.b, 1i)), select(vec4<i32>(-1i, var_2.d.x, arg_3.b, 89674i), vec4<i32>(arg_2.d.x, arg_2.d.x, 51807i, 2147483647i), false))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec4<bool>, arg_3: bool) -> u32 {
    global0 = _wgslsmith_mod_i32(i32(-1i) * -1i, i32(-1i) * -1i);
    global0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, -62408i, 38592i, -2147483647i), -func_3(vec4<bool>(arg_2.x, true, arg_3, true), vec3<f32>(arg_0, -1336f, -603f), Struct_1(u_input.a.x, -1i, vec2<bool>(arg_2.x, true), vec3<i32>(6959i, -1544i, -44207i)), Struct_1(arg_1, 1i, vec2<bool>(arg_3, arg_2.x), vec3<i32>(0i, 1891i, -1i)))), vec4<i32>(~(~1i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, -33666i, 2147483647i), vec4<i32>(0i, 19383i, -1i, 9318i)), 1i), -firstLeadingBit(-1076i), -(~30971i)));
    let var_0 = ~func_3(vec4<bool>(true, true, all(arg_2.yzw) && arg_3, select(!arg_2.x, true, arg_3)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, arg_0, arg_0)))) - vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0)), arg_0, arg_0)), Struct_1(firstLeadingBit(_wgslsmith_div_u32(18200u, u_input.a.x)), -2147483647i, select(arg_2.xz, vec2<bool>(false, false), true), vec3<i32>(1i, 1i, 1i)), Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(41779u, u_input.a.x), vec2<u32>(1u, 0u), vec2<u32>(16275u, u_input.a.x))), select(func_3(vec4<bool>(arg_2.x, arg_3, true, true), vec3<f32>(1000f, arg_0, arg_0), Struct_1(65563u, 1i, vec2<bool>(true, false), vec3<i32>(-47716i, 38056i, -2147483647i)), Struct_1(arg_1, -20145i, vec2<bool>(false, arg_3), vec3<i32>(35215i, -31278i, -2147483647i))).x, -51673i, false), !vec2<bool>(false, arg_3), vec3<i32>(-5575i, 1i, countOneBits(47313i)))).xw;
    let var_1 = select(vec2<bool>(any(!select(vec3<bool>(true, true, arg_3), arg_2.xwy, true)), arg_2.x), arg_2.yx, all(arg_2));
    var var_2 = Struct_1(1u ^ ~(_wgslsmith_mod_u32(u_input.a.x, arg_1) & 4294967295u), -2147483647i, !var_1, reverseBits(select(~_wgslsmith_sub_vec3_i32(vec3<i32>(41010i, var_0.x, 0i), vec3<i32>(-39145i, var_0.x, -2147483647i)), _wgslsmith_add_vec3_i32(max(vec3<i32>(var_0.x, var_0.x, 0i), vec3<i32>(-2147483647i, 9824i, var_0.x)), vec3<i32>(var_0.x, -2147483647i, var_0.x) << (vec3<u32>(arg_1, u_input.a.x, arg_1) % vec3<u32>(32u))), !select(arg_2.wxw, vec3<bool>(var_1.x, arg_2.x, true), var_1.x))));
    return ~(~_wgslsmith_div_u32(~60848u, var_2.a) >> ((var_2.a ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, var_2.a), max(vec3<u32>(arg_1, u_input.a.x, var_2.a), vec3<u32>(4294967295u, arg_1, var_2.a)))) % 32u));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: i32) -> f32 {
    global0 = _wgslsmith_div_i32(-2147483647i, ~(-arg_2));
    global0 = -(14474i << ((min(0u, _wgslsmith_div_u32(0u, 29105u)) & (1u | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 6940u, arg_0), vec4<u32>(61982u, 55012u, 5201u, u_input.a.x)))) % 32u));
    global0 = -1i;
    global0 = abs(abs(arg_2));
    global0 = 0i;
    return _wgslsmith_f_op_f32(f32(-1f) * -216f);
}

fn func_5(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    return 4294967295u;
}

fn func_1() -> i32 {
    var var_0 = ~(~max(vec3<i32>(-1534i >> (u_input.a.x % 32u), firstTrailingBit(-1i), -5982i), ~vec3<i32>(-8581i, -47441i, 0i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(255f, -1564f))))));
    let var_2 = var_0.x;
    var var_3 = vec2<u32>(~select(firstLeadingBit(select(u_input.a.x, u_input.a.x, false)), ~(~49548u), true), ~_wgslsmith_sub_u32(~abs(u_input.a.x), _wgslsmith_sub_u32(4294967295u, 0u >> (0u % 32u))));
    var_3 = vec2<u32>(func_5(vec4<bool>(!(var_0.x <= var_0.x), ~62618u != _wgslsmith_div_u32(u_input.a.x, 7832u), false, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_2(-349f, 0u, vec4<bool>(true, true, false, true), true), any(vec3<bool>(true, true, true)), var_0.x >> (2714u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * -645f)))), reverseBits(~(firstLeadingBit(var_3.x) & 91774u)));
    return _wgslsmith_sub_i32(var_0.x, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(i32(-1i) * -42096i, abs(-1i));
    global0 = min(var_0.x, 2147483647i);
    global0 = abs(-70547i) >> (1u % 32u);
    let var_1 = u_input.a.x;
    global0 = var_0.x;
    var var_2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1, 4294967295u), ~vec2<u32>(var_1, u_input.a.x)), ~countOneBits(4294967295u)), 41226u), var_0.x, vec2<bool>(false, true), vec3<i32>(-35602i, firstLeadingBit(-21367i & _wgslsmith_mod_i32(0i, var_0.x)), min(-abs(-1i), var_0.x)));
    var var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(var_1), ~var_1), ~(~u_input.a));
    global0 = select(-var_2.b, func_1(), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1300f, -1538f, 1393f, 213f))) + vec4<f32>(_wgslsmith_f_op_f32(644f - 179f), _wgslsmith_f_op_f32(round(160f)), _wgslsmith_f_op_f32(-1000f + 1727f), -1701f)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(220f, 1522f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1059f) + _wgslsmith_div_f32(-162f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -148f), _wgslsmith_div_f32(-190f, _wgslsmith_f_op_f32(-1698f + 134f)))));
}

