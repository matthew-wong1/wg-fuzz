struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -562f;

var<private> global1: Struct_4 = Struct_4(-999f, 2147483647i, vec2<i32>(70158i, i32(-2147483648)), Struct_3(Struct_1(vec2<u32>(1u, 1u))), 0i);

var<private> global2: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(-1729f, -1i, vec2<i32>(4772i, 2147483647i), Struct_3(Struct_1(vec2<u32>(0u, 55085u))), 2513i), Struct_4(-169f, 120148i, vec2<i32>(-22808i, 1i), Struct_3(Struct_1(vec2<u32>(4294967295u, 0u))), -61347i), Struct_4(1000f, -18118i, vec2<i32>(41362i, 25382i), Struct_3(Struct_1(vec2<u32>(0u, 0u))), -1i), Struct_4(-959f, i32(-2147483648), vec2<i32>(-56948i, 59151i), Struct_3(Struct_1(vec2<u32>(86620u, 11448u))), -1i), Struct_4(1122f, 15769i, vec2<i32>(2147483647i, 57824i), Struct_3(Struct_1(vec2<u32>(4294967295u, 0u))), i32(-2147483648)), Struct_4(-1020f, -1i, vec2<i32>(i32(-2147483648), 12425i), Struct_3(Struct_1(vec2<u32>(54265u, 0u))), 0i), Struct_4(131f, 2147483647i, vec2<i32>(36441i, 13883i), Struct_3(Struct_1(vec2<u32>(128186u, 39337u))), 0i), Struct_4(360f, 2147483647i, vec2<i32>(17529i, 2147483647i), Struct_3(Struct_1(vec2<u32>(51067u, 4294967295u))), -56560i), Struct_4(-315f, 0i, vec2<i32>(0i, 2147483647i), Struct_3(Struct_1(vec2<u32>(4294967295u, 27370u))), -58816i), Struct_4(1256f, 2147483647i, vec2<i32>(-7965i, 7612i), Struct_3(Struct_1(vec2<u32>(1u, 11808u))), 2147483647i), Struct_4(1066f, -1i, vec2<i32>(-40035i, -1i), Struct_3(Struct_1(vec2<u32>(4294967295u, 59399u))), 2147483647i), Struct_4(-2126f, -1i, vec2<i32>(1i, -38727i), Struct_3(Struct_1(vec2<u32>(4294967295u, 17794u))), i32(-2147483648)), Struct_4(-428f, 0i, vec2<i32>(74150i, 1i), Struct_3(Struct_1(vec2<u32>(44043u, 0u))), -1405i), Struct_4(682f, 1i, vec2<i32>(-10740i, -1i), Struct_3(Struct_1(vec2<u32>(559u, 4294967295u))), 2147483647i), Struct_4(-956f, 52878i, vec2<i32>(3529i, 1i), Struct_3(Struct_1(vec2<u32>(4294967295u, 1u))), -1i), Struct_4(-667f, -32050i, vec2<i32>(11899i, 3562i), Struct_3(Struct_1(vec2<u32>(48011u, 35616u))), -24539i), Struct_4(1000f, 2147483647i, vec2<i32>(-4990i, 2147483647i), Struct_3(Struct_1(vec2<u32>(27344u, 0u))), -1i), Struct_4(-486f, 0i, vec2<i32>(1i, 2147483647i), Struct_3(Struct_1(vec2<u32>(1u, 2891u))), 0i), Struct_4(-1245f, 21065i, vec2<i32>(-68970i, 0i), Struct_3(Struct_1(vec2<u32>(3423u, 71130u))), 11789i), Struct_4(-272f, 17564i, vec2<i32>(14367i, -1i), Struct_3(Struct_1(vec2<u32>(11132u, 3952u))), -37461i), Struct_4(-561f, -9808i, vec2<i32>(10369i, 2147483647i), Struct_3(Struct_1(vec2<u32>(4294967295u, 1u))), -53155i), Struct_4(620f, -1i, vec2<i32>(2147483647i, 2147483647i), Struct_3(Struct_1(vec2<u32>(63788u, 103668u))), i32(-2147483648)), Struct_4(239f, -12361i, vec2<i32>(1i, 2147483647i), Struct_3(Struct_1(vec2<u32>(0u, 29675u))), i32(-2147483648)), Struct_4(-567f, 0i, vec2<i32>(-14051i, 0i), Struct_3(Struct_1(vec2<u32>(25018u, 0u))), 2147483647i), Struct_4(-685f, 1i, vec2<i32>(-54503i, i32(-2147483648)), Struct_3(Struct_1(vec2<u32>(0u, 17934u))), 30701i), Struct_4(1440f, -1i, vec2<i32>(-43491i, 7629i), Struct_3(Struct_1(vec2<u32>(1u, 0u))), 19158i), Struct_4(1459f, 19719i, vec2<i32>(-18995i, -1i), Struct_3(Struct_1(vec2<u32>(28493u, 8983u))), 3050i), Struct_4(359f, -1i, vec2<i32>(2147483647i, 2147483647i), Struct_3(Struct_1(vec2<u32>(0u, 4294967295u))), -35688i), Struct_4(-1000f, i32(-2147483648), vec2<i32>(i32(-2147483648), 1i), Struct_3(Struct_1(vec2<u32>(39172u, 0u))), 1i), Struct_4(-821f, 38076i, vec2<i32>(-27577i, -17908i), Struct_3(Struct_1(vec2<u32>(4294967295u, 4294967295u))), 1i));

var<private> global3: vec2<u32>;

var<private> global4: array<u32, 16> = array<u32, 16>(65660u, 45069u, 1u, 1u, 16369u, 56347u, 4294967295u, 6852u, 0u, 0u, 41801u, 4294967295u, 12496u, 0u, 0u, 65467u);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a))), _wgslsmith_f_op_f32(-global1.a), true));
    global4 = array<u32, 16>();
    var var_1 = !select(vec4<bool>(false, !select(true, true, true), 0i == firstTrailingBit(0i), any(vec2<bool>(true, true))), !vec4<bool>(-1i <= u_input.a, all(vec2<bool>(true, true)), true, true), true);
    var var_2 = abs(select(arg_0.c.x, _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.e, -2147483647i, -50719i), vec3<i32>(arg_0.e, -1i, arg_0.e), vec3<i32>(global1.c.x, -14704i, arg_0.e)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_0.e, arg_0.b) & vec3<i32>(global1.c.x, global1.c.x, u_input.d), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.e, 32105i, 2147483647i), vec3<i32>(u_input.d, 2147483647i, 0i)))), false));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(432f, 674f, arg_0.a, -2320f), vec4<f32>(var_0, -1136f, 1903f, arg_0.a), vec4<bool>(var_1.x, true, false, var_1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-352f, global1.a, global1.a, arg_0.a) - vec4<f32>(829f, 1698f, 448f, 179f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.a, var_0, var_0, -1174f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0, -298f), -2155f, -431f, _wgslsmith_f_op_f32(-global1.a)))) - vec4<f32>(537f, global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), arg_0.a));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1091f, arg_0.a, arg_0.a, 949f), vec4<f32>(-405f, -1338f, var_0, var_0))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, 1000f, arg_0.a, var_3.x))))))));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, global1.a)), global1.a, global1.a, _wgslsmith_f_op_f32(1978f + -156f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -497f, -1238f, -178f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a, global1.a, global1.a, global1.a), vec4<f32>(-1261f, -1388f, global1.a, -480f), true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(754f, global1.a, 1983f, 1295f) * vec4<f32>(225f, -1000f, 330f, global1.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(519f, 648f, global1.a, global1.a)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(223f, global1.a, global1.a, global1.a), _wgslsmith_f_op_vec4_f32(func_3(global2[_wgslsmith_index_u32(69323u, 30u)], global1.d.a))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.a + var_0.x)))) + var_0.xx);
    var_1 = _wgslsmith_f_op_vec2_f32(-var_0.zw);
    global4 = array<u32, 16>();
    var var_2 = -37536i;
    return select(all(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), true)) | true, true, false);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_2(global1.d.a, Struct_1(select(~global1.d.a.a, vec2<u32>(34737u, _wgslsmith_mult_u32(arg_1, u_input.b)), vec2<bool>(func_2(), any(vec3<bool>(true, false, false))))), Struct_1(global1.d.a.a));
    var var_1 = vec4<bool>(false, any(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))), all(vec3<bool>(all(vec3<bool>(false, false, false)), true, false)) || !(!any(vec2<bool>(true, false))), !(!(!(30485u == global3.x))));
    var var_2 = arg_2.xy;
    var var_3 = global1.d;
    let var_4 = Struct_4(-961f, reverseBits(u_input.d), ~abs(vec2<i32>(firstLeadingBit(1i), u_input.a)), global1.d, -_wgslsmith_div_i32(-6458i, ~arg_0) ^ abs(-1i >> (countOneBits(global3.x) % 32u)));
    return Struct_2(global1.d.a, global1.d.a, var_3.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    var var_0 = !(!(!select(select(vec4<bool>(true, false, false, arg_1), vec4<bool>(arg_1, false, true, true), arg_1), select(vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(arg_1, false, false, false), arg_1), true)));
    global4 = array<u32, 16>();
    global4 = array<u32, 16>();
    let var_1 = global1.d;
    let var_2 = 1u;
    return firstTrailingBit(var_1.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(31107i, reverseBits(global1.e) << (_wgslsmith_add_u32(59276u, func_4(-vec4<i32>(-2147483647i, global1.b, 22462i, 1i), true, func_1(global1.c.x, 4294967295u, vec4<f32>(902f, 1000f, 619f, -1271f)), func_1(14587i, global1.d.a.a.x, vec4<f32>(global1.a, global1.a, -815f, global1.a)).b)) % 32u));
    let var_1 = false;
    var var_2 = -1382f;
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(global1.c), vec3<f32>(global1.a, _wgslsmith_div_f32(global1.a, -1175f), global1.a), u_input.c, vec4<f32>(_wgslsmith_f_op_f32(floor(global1.a)), _wgslsmith_f_op_vec4_f32(func_3(Struct_4(_wgslsmith_f_op_f32(-global1.a), var_0.x << (global3.x % 32u), global1.c, global1.d, ~global1.c.x), func_1(-2147483647i, _wgslsmith_add_u32(3975u, 23397u), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global1.a, global1.a, global1.a) + vec4<f32>(global1.a, global1.a, 176f, -665f))).c)).x, -240f, _wgslsmith_f_op_f32(floor(global1.a))), ~min(1u, ~(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.d.a.a.x, 16u)], 16u)] & global3.x)));
}

