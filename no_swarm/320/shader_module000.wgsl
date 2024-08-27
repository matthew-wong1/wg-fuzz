struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, -8280i, i32(-2147483648));

var<private> global1: array<Struct_3, 16>;

var<private> global2: Struct_4 = Struct_4(true);

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec3<u32>(0u, 9100u, 1u), vec4<bool>(true, true, true, false), Struct_1(vec3<f32>(104f, -175f, -785f), 14991u, 2147483647i, false), false), Struct_2(vec3<u32>(10798u, 16668u, 29118u), vec4<bool>(false, false, false, false), Struct_1(vec3<f32>(-933f, 180f, -1438f), 0u, 28149i, true), true), Struct_2(vec3<u32>(42319u, 1u, 38612u), vec4<bool>(false, true, false, true), Struct_1(vec3<f32>(1378f, 751f, 1000f), 5898u, i32(-2147483648), true), false), Struct_2(vec3<u32>(1203u, 72921u, 42649u), vec4<bool>(true, true, true, false), Struct_1(vec3<f32>(1169f, 1298f, 864f), 52421u, 21363i, true), true), Struct_2(vec3<u32>(22079u, 1u, 1u), vec4<bool>(false, true, true, true), Struct_1(vec3<f32>(-598f, -1442f, -567f), 13022u, 1835i, true), false), Struct_2(vec3<u32>(16661u, 7252u, 7572u), vec4<bool>(false, false, false, true), Struct_1(vec3<f32>(1043f, 722f, -898f), 4294967295u, -49451i, false), true), Struct_2(vec3<u32>(0u, 18059u, 1u), vec4<bool>(false, true, false, false), Struct_1(vec3<f32>(-2163f, 188f, -922f), 19513u, i32(-2147483648), true), true), Struct_2(vec3<u32>(60737u, 1u, 1u), vec4<bool>(true, false, false, false), Struct_1(vec3<f32>(-779f, -734f, -241f), 4294967295u, -4907i, true), true), Struct_2(vec3<u32>(2206u, 0u, 7313u), vec4<bool>(false, true, false, true), Struct_1(vec3<f32>(2641f, -280f, 867f), 0u, 26261i, true), false), Struct_2(vec3<u32>(0u, 23121u, 4294967295u), vec4<bool>(false, false, true, true), Struct_1(vec3<f32>(-1049f, 1219f, -403f), 32431u, -44583i, true), true), Struct_2(vec3<u32>(12358u, 37646u, 4294967295u), vec4<bool>(false, true, true, false), Struct_1(vec3<f32>(396f, -207f, 1077f), 14560u, i32(-2147483648), false), true), Struct_2(vec3<u32>(12534u, 21839u, 0u), vec4<bool>(false, true, false, false), Struct_1(vec3<f32>(-1000f, -1659f, -596f), 42569u, -1i, true), true));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_2(~vec3<u32>(~min(0u, 18991u), u_input.b.x, 1u), vec4<bool>(global2.a, false, true, select(!global2.a, true, global2.a)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-931f + -103f), _wgslsmith_f_op_f32(step(-1330f, 1000f)))), ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b.x, 1u), u_input.d.x, 0u), countOneBits(global0.x), true | select(any(vec3<bool>(global2.a, true, global2.a)), global2.a, false)), true);
    let var_1 = global1[_wgslsmith_index_u32(8569u, 16u)];
    var var_2 = u_input.b;
    let var_3 = global1[_wgslsmith_index_u32(var_2.x, 16u)];
    global3 = array<Struct_2, 12>();
    return u_input.b.zw;
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = ~global0.zx;
    var var_1 = Struct_3(global3[_wgslsmith_index_u32(abs(select(min(94581u, arg_1), 21770u, all(arg_2.b.zx))), 12u)]);
    var_1 = Struct_3(Struct_2(vec3<u32>(~1u, _wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec2_u32(u_input.d.xx, u_input.b.xw)), ~_wgslsmith_sub_u32(80876u, var_1.a.a.x)), select(var_1.a.b, !vec4<bool>(false, true, arg_2.c.d, true), vec4<bool>(arg_2.b.x, all(arg_2.b), false, any(vec3<bool>(arg_2.d, true, true)))), Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.c.a + vec3<f32>(1066f, arg_2.c.a.x, 1123f)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_1.a.c.b, arg_1), countOneBits(vec3<u32>(arg_2.c.b, 0u, 1u))), -16944i, global2.a), true));
    var_1 = Struct_3(var_1.a);
    global1 = array<Struct_3, 16>();
    return arg_0.yyz;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: i32) -> Struct_5 {
    var var_0 = ~vec2<u32>(0u, 1u);
    global1 = array<Struct_3, 16>();
    let var_1 = func_2() ^ _wgslsmith_clamp_vec2_u32(~u_input.e | reverseBits(vec2<u32>(u_input.b.x, 62831u) | vec2<u32>(u_input.d.x, 37903u)), _wgslsmith_sub_vec2_u32(u_input.d.yx << (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a.a.x, 18974u), arg_1.a.a.zz) % vec2<u32>(32u)), vec2<u32>(arg_1.a.c.b, arg_0.x) << (func_2() % vec2<u32>(32u))), arg_1.a.a.xx);
    global0 = _wgslsmith_sub_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, arg_1.a.c.c, 44991i) << (_wgslsmith_sub_vec3_u32(arg_0, arg_1.a.a) % vec3<u32>(32u)), -_wgslsmith_add_vec3_i32(vec3<i32>(0i, 38655i, -2147483647i), vec3<i32>(0i, arg_1.a.c.c, -1i)))), select(_wgslsmith_mult_vec3_i32(min(func_3(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, 2147483647i), 1u, arg_1.a), vec3<i32>(u_input.c.x, -17165i, u_input.c.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_3, arg_2.c.c, arg_3), vec3<i32>(-2147483647i, arg_2.c.c, 0i))), _wgslsmith_mod_vec3_i32(-(~vec3<i32>(32460i, -2147483647i, global0.x)), vec3<i32>(515i, abs(arg_1.a.c.c), -1i)), select(arg_2.b.xxz, !(!arg_2.b.yxz), !select(true, arg_2.d, false))));
    global2 = Struct_4(arg_2.b.x);
    return Struct_5(arg_1, -715f);
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = arg_0.a.a.a.x;
    global3 = array<Struct_2, 12>();
    global3 = array<Struct_2, 12>();
    let var_1 = ~u_input.d.yy;
    global1 = array<Struct_3, 16>();
    return -706f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 16>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1086f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-729f + 3432f) + 369f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 125f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(837f))))));
    let var_1 = global1[_wgslsmith_index_u32(u_input.b.x, 16u)];
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(811f - var_1.a.c.a.x)))));
    var var_2 = Struct_4(false);
    let var_3 = -1i;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(func_1(vec3<u32>(1u, 36678u, 92215u), global1[_wgslsmith_index_u32(u_input.d.x, 16u)], Struct_2(vec3<u32>(u_input.b.x, var_1.a.c.b, u_input.e.x), vec4<bool>(global2.a, true, true, true), Struct_1(vec3<f32>(var_1.a.c.a.x, var_1.a.c.a.x, var_1.a.c.a.x), var_1.a.a.x, 2147483647i, true), global2.a), -2147483647i), _wgslsmith_div_f32(138f, var_1.a.c.a.x), var_1.a.b.wyy, Struct_1(vec3<f32>(var_1.a.c.a.x, var_1.a.c.a.x, var_1.a.c.a.x), 4294967295u, 0i, var_2.a)))))), var_1.a.c.a.x, _wgslsmith_f_op_f32(-1620f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_1.a.c.a.x))))));
    let var_5 = reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(59087u, var_1.a.c.b, _wgslsmith_mod_u32(~u_input.e.x, u_input.e.x)), u_input.d));
    let var_6 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-abs(0i), var_3, _wgslsmith_dot_vec4_i32(firstTrailingBit(select(vec4<i32>(-51946i, var_3, global0.x, var_1.a.c.c), vec4<i32>(var_1.a.c.c, global0.x, global0.x, global0.x), var_2.a)), select(~vec4<i32>(-1i, 40235i, 13423i, var_3), vec4<i32>(u_input.c.x, 0i, var_1.a.c.c, 2147483647i) ^ vec4<i32>(var_3, 11284i, var_3, 38162i), var_2.a))), ~(1u ^ ~var_1.a.a.x), var_1.a.c.a);
}

