struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(2782f, -523f, -655f, -1000f), vec4<i32>(1i, 34019i, -24665i, -25442i));

var<private> global1: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    global0 = arg_1;
    global1 = !(all(vec3<bool>(true, true, true)) | (any(vec2<bool>(false, true)) | true)) | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x)))) != _wgslsmith_f_op_f32(-313f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + arg_0.a.x))));
    let var_0 = arg_0;
    let var_1 = _wgslsmith_div_vec4_f32(arg_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, 309f, arg_1.a.x, 1322f)) - arg_1.a)) - _wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(arg_0.a, vec4<f32>(1000f, arg_1.a.x, -1000f, 625f))), _wgslsmith_f_op_vec4_f32(-global0.a))))));
    let var_2 = var_0;
    return -abs(_wgslsmith_mod_vec4_i32(vec4<i32>(~(-12499i), u_input.a, -1i, arg_1.b.x & -37629i), ~vec4<i32>(-4844i, 15918i, arg_0.b.x, 25497i)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<f32> {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), global0.a.x), 1755f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))), firstLeadingBit(vec4<i32>(arg_1.b.x, 51719i, 1i, _wgslsmith_clamp_i32(-52264i, global0.b.x, 12126i))));
    let var_0 = arg_1;
    var var_1 = 4294967295u;
    var var_2 = any(vec4<bool>(2147483647i <= u_input.a, !any(vec3<bool>(true, true, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(32789u, u_input.d), vec2<u32>(1030u, 3722u)) != u_input.d, false));
    var var_3 = arg_0.zxw;
    return var_0.a;
}

fn func_2(arg_0: vec3<i32>) -> bool {
    global1 = true;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec4<f32>(146f, global0.a.x, -1492f, _wgslsmith_f_op_f32(trunc(global0.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), func_3(Struct_1(global0.a, vec4<i32>(-1i, -2147483647i, u_input.a, u_input.a)), Struct_1(global0.a, global0.b)))))), _wgslsmith_mod_vec4_i32(global0.b ^ global0.b, abs(firstLeadingBit(vec4<i32>(global0.b.x, 1580i, global0.b.x, arg_0.x)))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1675f, -1000f, -175f, global0.a.x) * vec4<f32>(-581f, -1361f, global0.a.x, global0.a.x))))), vec4<i32>(-2147483647i, global0.b.x, global0.b.x, ~min(1i, arg_0.x)) & -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, 6529i, u_input.e, 8877i), _wgslsmith_sub_vec4_i32(global0.b, vec4<i32>(20730i, u_input.e, 2147483647i, -1i))));
    var var_1 = reverseBits(vec3<u32>(1u, ~(countOneBits(u_input.d) << (2088u % 32u)), _wgslsmith_mult_u32(u_input.d & u_input.b.x, u_input.c) << (reverseBits(u_input.b.x) % 32u)));
    var var_2 = vec3<bool>(!(~4294967295u == _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.b.x, var_1.x, u_input.c), ~vec4<u32>(var_1.x, u_input.c, 63129u, 1u))), any(vec4<bool>(true, true, true, true)) | true, true);
    return (any(!select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(true, false, var_2.x), vec3<bool>(false, var_2.x, true))) != any(select(vec3<bool>(var_2.x, false, true), vec3<bool>(var_2.x, false, false), true))) != any(vec3<bool>(var_2.x, true, max(4294967295u, var_1.x) <= ~48321u));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>) -> Struct_1 {
    global1 = !func_2(vec3<i32>(-(~2147483647i), -15199i, -5145i));
    let var_0 = arg_0.wy;
    var var_1 = arg_0;
    let var_2 = 0u;
    let var_3 = vec3<bool>(true, !(arg_1.x == any(vec2<bool>(true, true))), true);
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-871f * global0.a.x), _wgslsmith_f_op_f32(select(217f, global0.a.x, true)), _wgslsmith_f_op_f32(sign(global0.a.x)), global0.a.x)))), global0.b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    global1 = !(-363f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(775f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1428f + 1946f))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.a), vec4<i32>(global0.b.x, _wgslsmith_clamp_i32(-2147483647i, arg_1.b.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, u_input.e, global0.b.x), ~arg_0.b.x)), firstLeadingBit(select(u_input.e, 9420i, false)) & ~_wgslsmith_add_i32(global0.b.x, -1i), global0.b.x));
    let var_0 = _wgslsmith_add_i32(-1i, 54105i);
    global0 = func_1(~(firstLeadingBit(-arg_1.b) << ((_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4294967295u, 0u), vec4<u32>(4294967295u, 83066u, 0u, 1u)) | min(vec4<u32>(u_input.d, u_input.c, 1u, 1u), vec4<u32>(1u, u_input.b.x, u_input.d, 37308u))) % vec4<u32>(32u))), !select(vec3<bool>(all(vec2<bool>(true, true)), true, select(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    global1 = all(vec2<bool>((select(false, true, false) && true) || true, true));
    return _wgslsmith_div_vec4_i32(min(arg_1.b, select(-_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.x, u_input.e, var_0, 0i), arg_1.b), vec4<i32>(_wgslsmith_sub_i32(arg_0.b.x, -78497i), arg_1.b.x, _wgslsmith_mult_i32(1i, global0.b.x), -31883i), vec4<bool>(true, true, true, true))), arg_1.b ^ global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a.x, global0.a.x, _wgslsmith_f_op_f32(ceil(global0.a.x)), global0.a.x), global0.a)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 216f, 1472f, global0.a.x))))))), func_5(func_1(vec4<i32>(_wgslsmith_dot_vec3_i32(global0.b.zzx, vec3<i32>(u_input.e, -2147483647i, u_input.a)), min(u_input.a, -1i), firstLeadingBit(-15845i), u_input.a), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1505f, 1301f, global0.a.x, global0.a.x) - global0.a)), global0.b)));
    var var_1 = Struct_2(-abs(_wgslsmith_sub_i32(u_input.e, 0i)) & -1i, u_input.b.x, func_3(Struct_1(vec4<f32>(-117f, _wgslsmith_f_op_f32(var_0.a.x - -2392f), global0.a.x, global0.a.x), (global0.b >> (vec4<u32>(u_input.c, 4294967295u, 60151u, u_input.d) % vec4<u32>(32u))) | ~global0.b), Struct_1(_wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -140f, var_0.a.x, 195f)), false)), global0.b)), var_0.b.yw, var_0.b.x);
    global0 = var_0;
    var var_2 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, u_input.b.x, 0u), vec4<u32>(var_1.b, 1u, 48490u, u_input.d)), ~max(vec4<u32>(u_input.b.x, 1u, u_input.c, var_1.b), vec4<u32>(29067u, u_input.b.x, 14735u, var_1.b)), ~(vec4<u32>(1126u, 26331u, var_1.b, var_1.b) ^ vec4<u32>(var_1.b, 63927u, u_input.b.x, 24633u))), vec4<u32>(_wgslsmith_mult_u32(u_input.d, 1u), ~5081u, 311u, u_input.d), ~firstTrailingBit(vec4<u32>(var_1.b, u_input.c, u_input.d, u_input.d)) ^ vec4<u32>(var_1.b, ~u_input.d, 4294967295u << (u_input.c % 32u), abs(1u)));
    var var_3 = vec2<u32>(36978u, 0u) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(~var_2.x, var_2.x) << (_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(var_2.x, 32535u)), vec2<u32>(var_1.b, 76213u), vec2<u32>(65101u, 1u)) % vec2<u32>(32u)), abs(~(~var_2.zx)));
    let var_4 = var_0;
    var var_5 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(func_1(-vec4<i32>(2147483647i, 1i, 0i, -11508i), vec3<bool>(true, true, true)).b, _wgslsmith_sub_vec4_i32(vec4<i32>(-var_4.b.x, i32(-1i) * -2343i, var_0.b.x, 1i), vec4<i32>(global0.b.x, 1i, -1i, 0i) ^ vec4<i32>(global0.b.x, 32588i, u_input.a, var_4.b.x))), ~vec4<u32>(~(~var_1.b), _wgslsmith_dot_vec3_u32(select(var_2.yyy, var_2.xyx, false), var_2.yyz), var_3.x, ~(~var_1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.a.xyw))) + vec3<f32>(_wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(max(global0.a.x, 117f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), -791f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-460f, _wgslsmith_f_op_f32(-2137f + -1055f), _wgslsmith_f_op_f32(min(var_4.a.x, var_0.a.x)), var_4.a.x) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 382f, 412f, var_0.a.x)), var_0.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1928f + 1000f)), 1f) - var_0.a.x));
}

