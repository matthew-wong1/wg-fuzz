struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 3>;

var<private> global2: Struct_4 = Struct_4(Struct_3(Struct_1(vec2<bool>(true, false), true, 655f, true)), 977f, vec2<f32>(581f, -1000f));

var<private> global3: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(Struct_3(Struct_1(vec2<bool>(false, false), false, -1000f, false)), -1000f, vec2<f32>(-685f, 1071f)), Struct_4(Struct_3(Struct_1(vec2<bool>(false, true), true, -722f, false)), -696f, vec2<f32>(1596f, -581f)), Struct_4(Struct_3(Struct_1(vec2<bool>(true, true), true, -224f, true)), -689f, vec2<f32>(509f, -573f)), Struct_4(Struct_3(Struct_1(vec2<bool>(false, false), false, -1350f, true)), -147f, vec2<f32>(301f, -1758f)), Struct_4(Struct_3(Struct_1(vec2<bool>(true, true), false, 159f, false)), -279f, vec2<f32>(1000f, -449f)), Struct_4(Struct_3(Struct_1(vec2<bool>(false, true), false, -292f, true)), 1000f, vec2<f32>(-1000f, 242f)), Struct_4(Struct_3(Struct_1(vec2<bool>(false, false), false, -2046f, true)), -1053f, vec2<f32>(-276f, -1204f)), Struct_4(Struct_3(Struct_1(vec2<bool>(false, true), true, 675f, false)), 579f, vec2<f32>(309f, -359f)), Struct_4(Struct_3(Struct_1(vec2<bool>(true, false), true, 366f, true)), 842f, vec2<f32>(1982f, -642f)), Struct_4(Struct_3(Struct_1(vec2<bool>(false, true), false, -938f, false)), 978f, vec2<f32>(326f, 196f)), Struct_4(Struct_3(Struct_1(vec2<bool>(false, false), true, 1000f, true)), -268f, vec2<f32>(356f, 848f)), Struct_4(Struct_3(Struct_1(vec2<bool>(false, true), true, 202f, false)), -206f, vec2<f32>(-274f, -227f)), Struct_4(Struct_3(Struct_1(vec2<bool>(true, true), false, 579f, false)), -161f, vec2<f32>(1017f, 1000f)), Struct_4(Struct_3(Struct_1(vec2<bool>(false, true), true, -795f, true)), 294f, vec2<f32>(-2182f, 1791f)), Struct_4(Struct_3(Struct_1(vec2<bool>(false, false), true, -1844f, true)), 1694f, vec2<f32>(-111f, 879f)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> i32 {
    global3 = array<Struct_4, 15>();
    var var_0 = vec4<bool>(true, global0.a.x, !(_wgslsmith_f_op_f32(floor(-403f)) < _wgslsmith_f_op_f32(-300f - 1476f)), false);
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(~((u_input.a.x ^ u_input.a.x) ^ u_input.a.x), -1i), -abs(select(u_input.b.yz, vec2<i32>(u_input.a.x, u_input.a.x), true & var_0.x)));
    let var_2 = Struct_4(global2.a, 594f, global2.c);
    global3 = array<Struct_4, 15>();
    return u_input.a.x;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_4 {
    let var_0 = -arg_0;
    let var_1 = _wgslsmith_clamp_i32(40373i, u_input.b.x, ~(-1i));
    global3 = array<Struct_4, 15>();
    var var_2 = vec4<i32>(-reverseBits(-1i), -var_0, firstTrailingBit(u_input.a.x), func_2()) << (~vec4<u32>(~(~18592u), u_input.d.x, (1u ^ u_input.d.x) | 4294967295u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 14748u), vec3<u32>(1u, 3928u, 14326u)), ~20744u)) % vec4<u32>(32u));
    var var_3 = arg_2.a;
    return Struct_4(global2.a, _wgslsmith_f_op_f32(-762f * _wgslsmith_f_op_f32(exp2(arg_2.b.x))), vec2<f32>(var_3.c, global0.c));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    global3 = array<Struct_4, 15>();
    global1 = array<vec4<f32>, 3>();
    let var_0 = (u_input.c.x >> (1u % 32u)) | 4837u;
    global1 = array<vec4<f32>, 3>();
    global0 = func_1(-43322i, select(vec3<bool>(true, false, any(arg_0.a.a.a)), !select(vec3<bool>(global0.d, true, arg_0.a.a.d), select(vec3<bool>(true, arg_2, global2.a.a.b), vec3<bool>(global2.a.a.b, false, arg_0.a.a.b), true), arg_0.a.a.d), arg_0.a.a.b), Struct_2(Struct_1(arg_0.a.a.a, all(vec3<bool>(true, true, true)), arg_0.a.a.c, true), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_0.c.x, global0.c)))), global2.c.x, 1550f), 12600i, arg_0.c, Struct_1(func_1(countOneBits(1i), select(vec3<bool>(global2.a.a.d, global2.a.a.b, false), vec3<bool>(arg_2, false, false), vec3<bool>(global2.a.a.d, global2.a.a.a.x, arg_0.a.a.a.x)), Struct_2(arg_0.a.a, vec3<f32>(555f, -1000f, global2.b), -4343i, global2.c, global2.a.a)).a.a.a, !select(global0.a.x, global0.a.x, arg_2), 521f, all(vec3<bool>(arg_2, true, global2.a.a.d)) != global2.a.a.b))).a.a;
    return arg_0.a.a.c;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2) -> Struct_1 {
    let var_0 = ~firstLeadingBit(firstTrailingBit(u_input.b));
    global3 = array<Struct_4, 15>();
    var var_1 = ~(~firstLeadingBit(u_input.d));
    let var_2 = func_1(_wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647i, var_0.x), var_0.x), vec3<bool>(true, (countOneBits(u_input.c.x) | abs(u_input.d.x)) < 4294967295u, any(select(vec4<bool>(false, true, false, false), vec4<bool>(global2.a.a.a.x, arg_2.a.d, arg_2.a.b, false), arg_0.a.a.x)) & global2.a.a.b), arg_2);
    var var_3 = func_1(-2147483647i, select(vec3<bool>(var_2.a.a.b, true, var_2.a.a.d), !(!select(vec3<bool>(arg_2.e.b, global0.d, true), vec3<bool>(false, arg_1.a.a.d, var_2.a.a.a.x), arg_0.a.b)), !any(vec4<bool>(arg_1.a.a.b, false, var_2.a.a.b, false)) & any(select(vec3<bool>(false, arg_2.e.a.x, arg_2.e.b), vec3<bool>(true, false, false), var_2.a.a.b))), Struct_2(arg_0.a, _wgslsmith_f_op_vec3_f32(arg_2.b + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.x, 917f, 1545f)), vec3<f32>(global2.c.x, 1399f, 215f), vec3<bool>(global2.a.a.b, false, arg_2.a.a.x)))), countOneBits(var_0.x), vec2<f32>(_wgslsmith_div_f32(arg_0.a.c, arg_2.a.c), _wgslsmith_f_op_f32(max(766f, _wgslsmith_f_op_f32(arg_0.a.c * -400f)))), arg_1.a.a)).a;
    return Struct_1(!arg_1.a.a.a, ~(~(~u_input.c.x)) > 0u, _wgslsmith_f_op_f32(-830f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c))))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global2.a, Struct_4(Struct_3(global2.a.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(func_1(u_input.a.x, vec3<bool>(true, global0.a.x, global2.a.a.b), Struct_2(Struct_1(global2.a.a.a, global2.a.a.b, -1632f, global0.b), vec3<f32>(global0.c, -720f, global2.a.a.c), 1i, global2.c, global2.a.a)), u_input.c | u_input.c, any(vec2<bool>(global2.a.a.a.x, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c))))), _wgslsmith_f_op_vec2_f32(global2.c - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(global2.a.a.c, global2.a.a.c), vec2<f32>(global0.c, 376f)))))), Struct_2(func_1(u_input.a.x, select(!vec3<bool>(global2.a.a.a.x, true, global2.a.a.a.x), !vec3<bool>(false, true, global2.a.a.b), vec3<bool>(true, true, global0.d)), Struct_2(func_1(-2147483647i, vec3<bool>(global0.a.x, false, global0.b), Struct_2(global2.a.a, vec3<f32>(1122f, global2.a.a.c, 1161f), u_input.b.x, vec2<f32>(global0.c, global2.c.x), global2.a.a)).a.a, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-3018f, global2.a.a.c, global0.c), vec3<f32>(global2.a.a.c, global2.c.x, -377f))), -24629i, vec2<f32>(1f, 1f), func_1(2147483647i, vec3<bool>(global2.a.a.a.x, global0.b, global2.a.a.d), Struct_2(Struct_1(global2.a.a.a, global2.a.a.d, global2.a.a.c, false), vec3<f32>(global0.c, global2.b, -602f), u_input.a.x, global2.c, Struct_1(vec2<bool>(false, true), global2.a.a.a.x, global0.c, false))).a.a)).a.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, -1227f, global0.c) * vec3<f32>(global2.c.x, -1024f, 953f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, global2.b, 192f))))), 48290i, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global0.c, global2.b)))), func_1(_wgslsmith_div_i32(u_input.a.x, u_input.b.x), !vec3<bool>(false, global2.a.a.b, true), Struct_2(Struct_1(global2.a.a.a, global0.a.x, global2.c.x, true), vec3<f32>(global0.c, global2.a.a.c, 576f), u_input.b.x, global2.c, global2.a.a)).c.x), func_1(~(~(-1i)), vec3<bool>(global0.d, false, true), Struct_2(func_1(2147483647i, vec3<bool>(global2.a.a.d, global2.a.a.a.x, global0.d), Struct_2(global2.a.a, vec3<f32>(global0.c, -406f, global0.c), 119i, global2.c, global2.a.a)).a.a, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.c, 278f, -690f), vec3<f32>(362f, global2.a.a.c, global2.c.x))), i32(-1i) * -20050i, _wgslsmith_f_op_vec2_f32(select(global2.c, global2.c, global2.a.a.a)), global2.a.a)).a.a));
    let var_1 = _wgslsmith_f_op_f32(-693f + -1339f);
    global2 = Struct_4(func_1(~0i, select(!vec3<bool>(true, false, global0.b), !vec3<bool>(global0.b, global0.d, true), vec3<bool>(global0.b, u_input.a.x == u_input.b.x, true)), Struct_2(Struct_1(select(global2.a.a.a, global2.a.a.a, false), 1u != u_input.d.x, _wgslsmith_f_op_f32(-var_1), var_0.d | global2.a.a.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, -194f, 393f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c, 1122f, var_0.c), vec3<f32>(-1387f, global0.c, global2.c.x), vec3<bool>(global0.b, true, var_0.a.x)))), _wgslsmith_add_i32(11172i, u_input.a.x) << (13083u % 32u), vec2<f32>(global0.c, _wgslsmith_f_op_f32(-2024f + var_1)), Struct_1(global0.a, var_0.a.x, var_0.c, global0.a.x))).a, _wgslsmith_f_op_f32(-func_4(func_1(u_input.b.x << (17958u % 32u), !vec3<bool>(var_0.d, true, false), Struct_2(Struct_1(var_0.a, true, 1000f, var_0.a.x), vec3<f32>(640f, var_1, -180f), -16685i, vec2<f32>(global0.c, var_1), global2.a.a)).a, func_1(_wgslsmith_mod_i32(1i, u_input.b.x), vec3<bool>(false, false, false), Struct_2(Struct_1(global0.a, global0.a.x, global0.c, false), vec3<f32>(var_0.c, 141f, -680f), u_input.a.x, global2.c, Struct_1(vec2<bool>(true, false), false, -540f, false))), Struct_2(global2.a.a, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1479f, var_0.c, 226f))), -39219i, _wgslsmith_div_vec2_f32(vec2<f32>(-197f, global0.c), vec2<f32>(-1023f, global0.c)), Struct_1(global0.a, true, 343f, global2.a.a.d))).c), global2.c);
    var var_2 = _wgslsmith_mod_vec3_u32(u_input.c.zzx, vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, u_input.d.x), select(45940u, reverseBits(u_input.d.x), true & global0.d), 1u), max(~(~66129u), u_input.c.x), 0u));
    var var_3 = 1836u;
    var var_4 = global2.a;
    var_4 = global2.a;
    global1 = array<vec4<f32>, 3>();
    var var_5 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(min((u_input.d.x ^ var_2.x) << (_wgslsmith_div_u32(1u, 4294967295u) % 32u), var_2.x), ~var_2.x, ~var_2.x), _wgslsmith_add_vec3_u32(u_input.c.yzy, u_input.c.wwz));
}

