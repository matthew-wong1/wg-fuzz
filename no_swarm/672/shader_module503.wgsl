struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-865f, vec3<u32>(0u, 56044u, 0u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d));
    var var_1 = (-(max(arg_2.b.x, 0i) << (~global0.b.x % 32u)) >> (u_input.b.x % 32u)) ^ 2147483647i;
    let var_2 = vec4<bool>(arg_2.c, arg_2.c, true, true);
    var var_3 = all(vec4<bool>(!select(true, false, true) && all(!arg_2.a.wx), all(arg_2.a.yzw), !(arg_2.b.x <= firstLeadingBit(0i)), var_2.x));
    var_3 = var_2.x;
    return 48575u;
}

fn func_2() -> bool {
    global0 = Struct_4(-1681f, vec3<u32>(~u_input.a | abs(global0.b.x), ~func_3(vec2<f32>(global0.a, -1546f), vec3<f32>(global0.a, global0.a, 1000f), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(11302i, -9377i, -5705i, -1i), false, 1809f)), u_input.a) & vec3<u32>(60066u, global0.b.x, _wgslsmith_mult_u32(8219u, u_input.c)));
    let var_0 = reverseBits(u_input.a);
    var var_1 = !select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true)), !vec2<bool>(false, any(vec3<bool>(false, false, true))), !all(vec3<bool>(false, true, false)) || true);
    global0 = Struct_4(_wgslsmith_f_op_f32(-global0.a), u_input.b);
    global0 = Struct_4(-595f, _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(global0.b, vec3<u32>(0u, u_input.c, 0u)) & global0.b, _wgslsmith_mult_vec3_u32(select(vec3<u32>(global0.b.x, var_0, 68301u), vec3<u32>(1u, var_0, global0.b.x), true), global0.b >> (vec3<u32>(global0.b.x, 1u, 4294967295u) % vec3<u32>(32u)))), reverseBits(global0.b) & ~(~vec3<u32>(u_input.c, u_input.c, 51638u))));
    return var_1.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: bool) -> vec3<f32> {
    var var_0 = select(select(select(vec2<bool>(false, true), arg_1.yw, select(arg_3, arg_1.x, true) & true), vec2<bool>(func_2(), arg_3), arg_2.x == ~_wgslsmith_sub_u32(u_input.a, global0.b.x)), select(vec2<bool>(true, all(vec2<bool>(false, arg_3)) || !arg_3), select(vec2<bool>(arg_1.x, arg_1.x), select(!arg_1.zz, arg_1.xy, true), select(!vec2<bool>(arg_3, arg_1.x), arg_1.zw, true)), vec2<bool>(global0.b.x > select(u_input.a, 1u, arg_1.x), arg_3)), vec2<bool>(true, arg_3));
    let var_1 = 2122f;
    let var_2 = Struct_4(global0.a, _wgslsmith_sub_vec3_u32(abs(~(global0.b ^ arg_2)), vec3<u32>(~firstTrailingBit(arg_2.x), arg_2.x, max(global0.b.x, ~0u))));
    let var_3 = arg_0.xw;
    var var_4 = Struct_5(Struct_2(Struct_1(select(select(arg_1, arg_1, false), !vec4<bool>(arg_1.x, false, false, arg_3), var_2.a >= 2472f), arg_0 | _wgslsmith_div_vec4_i32(vec4<i32>(-77750i, arg_0.x, arg_0.x, -2147483647i), vec4<i32>(var_3.x, var_3.x, -71905i, 45705i)), true, _wgslsmith_f_op_f32(172f + global0.a)), 624f, !vec3<bool>(true, !var_0.x, false || arg_1.x)), !vec2<bool>(arg_3, _wgslsmith_f_op_f32(trunc(var_1)) <= _wgslsmith_f_op_f32(-1000f * var_1)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.b, -129f, var_1) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.a, var_2.a, var_4.a.b)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, var_1, global0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_1) * vec3<f32>(212f, var_2.a, -881f))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: f32) -> Struct_2 {
    global0 = Struct_4(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1082f) - arg_3))), ~select(max(abs(vec3<u32>(4294967295u, 1u, global0.b.x)), ~vec3<u32>(64068u, u_input.b.x, 40906u)), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(6117u, global0.b.x, 1u)), global0.b), true));
    global0 = Struct_4(arg_1.x, ~reverseBits(reverseBits(~vec3<u32>(u_input.c, 6794u, 44684u))));
    global0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_1(-vec4<i32>(1i, 0i, -52822i, 30719i), vec4<bool>(true, true, true, true), u_input.b ^ vec3<u32>(22401u, global0.b.x, 59u), true)).x, _wgslsmith_f_op_f32(1f + arg_2.x), select(false, !arg_0.x, all(vec3<bool>(arg_0.x, false, true))))), _wgslsmith_f_op_f32(select(global0.a, arg_2.x, func_2()))), firstTrailingBit(_wgslsmith_add_vec3_u32(u_input.b << (select(vec3<u32>(19476u, 0u, global0.b.x), vec3<u32>(1u, global0.b.x, u_input.c), vec3<bool>(false, false, true)) % vec3<u32>(32u)), vec3<u32>(u_input.b.x & 0u, 1u, ~u_input.b.x))));
    global0 = Struct_4(1000f, abs(countOneBits(vec3<u32>(_wgslsmith_add_u32(u_input.c, 4294967295u), ~1u, firstTrailingBit(u_input.c)))));
    let var_0 = min(-(_wgslsmith_dot_vec4_i32(vec4<i32>(-15672i, -62321i, -5657i, 22240i) << (vec4<u32>(global0.b.x, 0u, 77810u, global0.b.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-25411i, 18005i, 0i, -16928i), vec4<i32>(-2147483647i, 2147483647i, -1255i, -2147483647i), vec4<i32>(-1i, -31209i, 4200i, -40541i))) | -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-21588i), 29141i, -51607i), abs(-vec3<i32>(-16447i, 1i, -1i))));
    return Struct_2(Struct_1(!(!(!vec4<bool>(false, true, arg_0.x, arg_0.x))), vec4<i32>(-1i, ~var_0, -var_0, _wgslsmith_div_i32(var_0, _wgslsmith_mod_i32(var_0, var_0))), arg_0.x, _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(f32(-1f) * -382f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-183f, _wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-360f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))))), select(select(select(vec3<bool>(arg_0.x, true, true), !vec3<bool>(arg_0.x, false, arg_0.x), !arg_0.x), vec3<bool>(arg_0.x, true, !arg_0.x), func_2()), vec3<bool>(all(select(vec4<bool>(true, false, arg_0.x, false), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, true, true))), !arg_0.x, true), arg_0.x));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_4 {
    var var_0 = Struct_5(arg_1, vec2<bool>(!(!(-1000f <= global0.a)), arg_1.a.d != _wgslsmith_div_f32(1258f, _wgslsmith_f_op_f32(-709f + -602f))));
    var var_1 = ~(~global0.b.x);
    var var_2 = min(firstTrailingBit(firstTrailingBit(arg_1.a.b.zx) << (max(global0.b.zy, global0.b.zz) % vec2<u32>(32u))), var_0.a.a.b.xx) << (vec2<u32>(global0.b.x, ~abs(arg_0)) % vec2<u32>(32u));
    var var_3 = Struct_5(func_4(!vec2<bool>(true, var_0.a.a.a.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-505f, global0.a, global0.a, global0.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(135f, 847f, 538f, -1387f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-439f, var_0.a.b, arg_1.b, 1000f), vec4<f32>(arg_1.a.d, global0.a, global0.a, -809f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, arg_1.a.d, global0.a))))), arg_1.b), vec2<bool>(true, false));
    var var_4 = _wgslsmith_add_i32(~_wgslsmith_sub_i32(var_3.a.a.b.x & 0i, _wgslsmith_mod_i32(var_3.a.a.b.x, arg_1.a.b.x)) & (-12179i >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(48853u, global0.b.x, arg_0, 20517u), vec4<u32>(54720u, u_input.a, global0.b.x, 56508u)) % 32u)), _wgslsmith_mult_i32(var_3.a.a.b.x, abs(var_2.x) ^ -48695i));
    return Struct_4(func_4(!var_3.b, vec4<f32>(756f, -2170f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.a.d, 151f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(679f, arg_1.a.d)) * _wgslsmith_f_op_f32(var_0.a.a.d + var_3.a.a.d))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1572f, -393f, global0.a))))), -1359f).a.d, global0.b & reverseBits(u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(global0.b.x, func_4(select(select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec4<bool>(true, false, false, false))), !select(vec2<bool>(false, false), vec2<bool>(false, true), false), false), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(273f, 365f, global0.a, -538f), vec4<f32>(global0.a, global0.a, -1084f, global0.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec4<i32>(-24849i, -16861i, -13730i, -28338i), vec4<bool>(true, true, true, false), vec3<u32>(4294967295u, u_input.c, global0.b.x), false))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-581f, global0.a, global0.a) + vec3<f32>(664f, 729f, 1379f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(1000f, -866f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1036f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1115f * -143f), _wgslsmith_f_op_f32(abs(-568f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(315f, global0.a, -157f, _wgslsmith_f_op_f32(f32(-1f) * -1436f)), vec4<f32>(_wgslsmith_div_f32(-682f, 710f), -1141f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1765f)))), abs(~firstLeadingBit(abs(vec4<u32>(global0.b.x, u_input.c, 69464u, u_input.c)))), func_4(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1785f))), global0.a, _wgslsmith_f_op_f32(-global0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(floor(146f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(global0.a - global0.a), _wgslsmith_f_op_f32(-global0.a)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-570f, global0.a, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, -197f, global0.a) + vec3<f32>(224f, 2321f, 127f)))), global0.a).a.b.wzy);
}

