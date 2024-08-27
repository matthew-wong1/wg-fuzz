struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(vec4<bool>(false, false, true, false), 151f), vec2<bool>(true, false), -17328i, -1998f), Struct_2(Struct_1(vec4<bool>(true, false, false, true), 1726f), vec2<bool>(true, false), 1i, 159f), Struct_2(Struct_1(vec4<bool>(true, false, true, false), -609f), vec2<bool>(true, true), 21758i, -703f), Struct_2(Struct_1(vec4<bool>(true, false, false, true), 730f), vec2<bool>(false, true), 65605i, -208f), Struct_2(Struct_1(vec4<bool>(false, true, false, true), 1834f), vec2<bool>(true, false), -1i, 501f), Struct_2(Struct_1(vec4<bool>(false, false, true, false), 788f), vec2<bool>(true, false), -1i, -591f), Struct_2(Struct_1(vec4<bool>(false, false, false, false), 479f), vec2<bool>(false, false), 0i, -1311f), Struct_2(Struct_1(vec4<bool>(true, true, true, true), 1000f), vec2<bool>(false, true), -1i, 723f), Struct_2(Struct_1(vec4<bool>(false, true, false, false), 115f), vec2<bool>(true, false), -1i, 397f), Struct_2(Struct_1(vec4<bool>(true, true, true, true), -127f), vec2<bool>(false, false), -67485i, 117f), Struct_2(Struct_1(vec4<bool>(false, false, true, true), 483f), vec2<bool>(true, false), -47254i, -294f), Struct_2(Struct_1(vec4<bool>(true, true, false, true), -458f), vec2<bool>(true, false), -194i, 1000f), Struct_2(Struct_1(vec4<bool>(true, false, true, false), -643f), vec2<bool>(false, true), -25331i, -199f), Struct_2(Struct_1(vec4<bool>(false, false, true, true), -642f), vec2<bool>(true, true), -13935i, -488f), Struct_2(Struct_1(vec4<bool>(false, true, true, true), 214f), vec2<bool>(false, false), -1i, -353f), Struct_2(Struct_1(vec4<bool>(true, false, true, false), 1171f), vec2<bool>(true, true), -32562i, 242f), Struct_2(Struct_1(vec4<bool>(false, true, false, false), -1000f), vec2<bool>(true, true), -1i, -1337f), Struct_2(Struct_1(vec4<bool>(true, true, false, false), 379f), vec2<bool>(false, false), -15085i, 127f));

var<private> global2: bool;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>) -> vec3<f32> {
    global1 = array<Struct_2, 18>();
    let var_0 = 0u;
    var var_1 = arg_0;
    var var_2 = Struct_3(52361u);
    var var_3 = abs(_wgslsmith_dot_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(90125u, 4294967295u, var_1.a), vec3<u32>(var_1.a, var_2.a, 39044u))), vec3<u32>(1u, _wgslsmith_mult_u32(~var_0, var_0), ~(~0u))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1825f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(206f, 637f)) + _wgslsmith_f_op_f32(f32(-1f) * -987f)), _wgslsmith_f_op_f32(min(-476f, _wgslsmith_f_op_f32(1182f - -566f)))))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = _wgslsmith_div_f32(643f, _wgslsmith_f_op_f32(f32(-1f) * -751f));
    let var_1 = u_input.c.x & firstTrailingBit(u_input.b);
    global0 = select(select(select(vec4<bool>(global0.x, any(vec2<bool>(true, false)), global0.x, global0.x), select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, global0.x, global0.x | global0.x, any(vec2<bool>(false, global0.x)))), vec4<bool>(_wgslsmith_f_op_f32(step(-689f, 868f)) == _wgslsmith_f_op_f32(var_0 * 608f), true, true, true), global0.x), !vec4<bool>(true, u_input.c.x >= (i32(-1i) * -5149i), all(!vec2<bool>(global0.x, global0.x)), global0.x), true);
    global0 = vec4<bool>(all(!select(!global0.wzz, global0.wyz, select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, true), true))), true, !(!(!(false & global0.x))), (arg_1.x < arg_0.x) && global0.x);
    let var_2 = u_input.c << (vec4<u32>(~4294967295u, 1u << (max(_wgslsmith_dot_vec4_u32(vec4<u32>(24361u, 1u, 4294967295u, 7002u), vec4<u32>(6789u, 4294967295u, 4294967295u, 76713u)), 1u) % 32u), 44021u, _wgslsmith_dot_vec3_u32(vec3<u32>(13897u, 1u, 1u), vec3<u32>(1u, 1u, 1u))) % vec4<u32>(32u));
    return Struct_4(_wgslsmith_add_vec2_i32(vec2<i32>(var_2.x, var_2.x), u_input.c.yz | vec2<i32>(u_input.a.x, var_1)), Struct_2(Struct_1(vec4<bool>(global0.x, all(vec3<bool>(global0.x, global0.x, true)), all(vec2<bool>(false, false)), any(vec2<bool>(global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(func_2(Struct_3(67730u), !vec4<bool>(global0.x, true, true, false))).x), select(!(!vec2<bool>(global0.x, true)), !(!global0.wz), global0.xx), max(_wgslsmith_clamp_i32(-187i, 2147483647i, _wgslsmith_add_i32(1i, -2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, var_1, var_1), vec3<i32>(var_1, -37535i, -1i) & u_input.c.yxw)), -218f));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = func_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1484f, -267f, -1240f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1267f, 301f, -430f) + vec3<f32>(-1306f, 356f, 986f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-442f, 136f, 521f), vec3<f32>(387f, 454f, -633f)))), arg_0 || !arg_0)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1170f, -197f, -572f) - vec3<f32>(-255f, 1193f, 705f)) + _wgslsmith_f_op_vec3_f32(func_2(Struct_3(1u), vec4<bool>(arg_0, false, false, global0.x)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(275f, -1306f, -1056f, -2222f))))));
    var var_1 = select(select(vec3<bool>(false, false, true), var_0.b.a.a.zxx, global0.x), vec3<bool>(!arg_0, var_0.b.b.x, false), !(!func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(703f, var_0.b.a.b, 1008f) * vec3<f32>(var_0.b.a.b, var_0.b.a.b, var_0.b.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-534f, -574f, 927f, 552f))).b.a.a.zzz));
    var_1 = vec3<bool>(global0.x, true, var_1.x);
    var var_2 = var_0.b.a.a;
    let var_3 = var_0.b;
    return Struct_1(func_3(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(62828u, 38261u, 4294967295u), vec3<u32>(0u, 4294967295u, 1u))), vec4<bool>(global0.x, global0.x, true, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(119f, 1352f, -1163f, var_3.d) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(644f, var_0.b.a.b, var_3.a.b, 453f)))), vec4<f32>(var_0.b.a.b, 1457f, -708f, var_3.d))).b.a.a, 825f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = func_1(false);
    global0 = !vec4<bool>(!all(select(global0.yyy, global0.yxy, true)), !(!global0.x), false, var_1.a.x);
    var var_2 = func_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.b, var_1.b, var_1.b), vec3<f32>(-1085f, var_1.b, 465f)))))))), vec4<f32>(_wgslsmith_div_f32(var_1.b, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 334f, 164f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(213f, var_1.b, -504f, var_1.b))).b.a.b), var_1.b, var_1.b, _wgslsmith_f_op_f32(-func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1111f, var_1.b, var_1.b)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 934f, 802f, var_1.b), vec4<f32>(730f, var_1.b, var_1.b, 689f)))).b.a.b))).b.a;
    var_0 = u_input.a.x;
    var_0 = 73342i;
    var var_3 = var_1.b;
    var_1 = Struct_1(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-629f)))))));
    var var_4 = Struct_3(45161u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, max(105009u, var_4.a));
}

