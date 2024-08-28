struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7>;

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec4<f32>(1318f, 602f, -561f, -1023f), 196f, vec2<f32>(-620f, 1155f), false)), Struct_2(Struct_1(vec4<f32>(-141f, -406f, -1000f, -2162f), 1495f, vec2<f32>(1000f, 529f), true)), Struct_2(Struct_1(vec4<f32>(259f, 525f, 513f, -222f), -1745f, vec2<f32>(-1035f, 908f), true)), Struct_2(Struct_1(vec4<f32>(926f, -958f, 1212f, 275f), -1520f, vec2<f32>(1000f, 563f), true)), Struct_2(Struct_1(vec4<f32>(-810f, -442f, 963f, -1735f), -309f, vec2<f32>(-168f, -254f), true)), Struct_2(Struct_1(vec4<f32>(-450f, -1322f, -451f, 851f), -507f, vec2<f32>(-374f, 868f), false)), Struct_2(Struct_1(vec4<f32>(-349f, 594f, 1673f, 752f), -1143f, vec2<f32>(1086f, -1000f), false)), Struct_2(Struct_1(vec4<f32>(-827f, -1000f, 377f, -1027f), -782f, vec2<f32>(-1475f, 132f), true)), Struct_2(Struct_1(vec4<f32>(-354f, -1000f, 2039f, 396f), 229f, vec2<f32>(-972f, -1000f), true)), Struct_2(Struct_1(vec4<f32>(922f, 1643f, 1402f, -850f), 371f, vec2<f32>(2156f, 1258f), false)), Struct_2(Struct_1(vec4<f32>(667f, -1036f, 1000f, -793f), 503f, vec2<f32>(368f, -814f), false)), Struct_2(Struct_1(vec4<f32>(-662f, -435f, -461f, -299f), -1494f, vec2<f32>(238f, -529f), false)), Struct_2(Struct_1(vec4<f32>(284f, 429f, 958f, -566f), -1000f, vec2<f32>(1582f, -1000f), true)));

var<private> global2: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(431f, -954f, -519f, -172f), vec4<f32>(-149f, 1335f, -982f, 1488f), vec4<f32>(538f, -140f, -238f, -793f), vec4<f32>(503f, -1111f, -2557f, 892f), vec4<f32>(536f, 1000f, 683f, -495f), vec4<f32>(410f, 1035f, 2144f, 511f), vec4<f32>(-1177f, -197f, -1300f, 1058f), vec4<f32>(1000f, -184f, 374f, 715f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>) -> vec2<f32> {
    let var_0 = Struct_3(u_input.a, ~arg_0.x, global1[_wgslsmith_index_u32(1u, 13u)], vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-248f + 1138f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-112f)), _wgslsmith_f_op_f32(round(847f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -360f))), _wgslsmith_f_op_f32(f32(-1f) * -1147f), 866f));
    let var_1 = !select(!(!(!vec2<bool>(false, var_0.c.a.d))), vec2<bool>(!var_0.c.a.d, all(vec4<bool>(true, var_0.c.a.d, var_0.c.a.d, false))), vec2<bool>(false, all(select(vec3<bool>(var_0.c.a.d, var_0.c.a.d, var_0.c.a.d), vec3<bool>(true, true, var_0.c.a.d), vec3<bool>(false, var_0.c.a.d, var_0.c.a.d)))));
    let var_2 = Struct_2(var_0.c.a);
    global1 = array<Struct_2, 13>();
    let var_3 = var_0.d.yx;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(var_0.d.zy, _wgslsmith_f_op_vec2_f32(sign(var_2.a.a.wy)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-622f, -777f)) * vec2<f32>(-1609f, 1822f)))), vec2<f32>(_wgslsmith_f_op_f32(-2234f + var_0.d.x), -2012f)))));
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(853f, arg_0));
    let var_1 = Struct_1(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], 1f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1089f * _wgslsmith_div_f32(arg_0, -209f)), _wgslsmith_f_op_f32(trunc(1296f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1000f)) * vec2<f32>(933f, 931f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(u_input.a, -23802i, u_input.a)))))), true);
    var var_2 = ~vec3<i32>(abs(1i), -u_input.c << (4294967295u % 32u), -1i);
    var_0 = arg_0;
    var_2 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(-vec3<i32>(u_input.c, var_2.x, -1i)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, -2147483647i), 1i), -2147483647i, -14104i), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, u_input.c, 26536i), vec3<i32>(var_2.x, u_input.c, 0i)) | (vec3<i32>(-15257i, 49741i, var_2.x) << (vec3<u32>(u_input.b.x, 21258u, u_input.b.x) % vec3<u32>(32u))))) << (~(~vec3<u32>(min(40621u, u_input.b.x), 4505u, ~986u)) % vec3<u32>(32u));
    return Struct_3(-16726i, -8224i & var_2.x, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global2[_wgslsmith_index_u32(~(1u ^ abs(u_input.b.x)), 8u)]);
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<bool>) -> Struct_4 {
    let var_0 = func_2(978f);
    var var_1 = !(select(arg_1.x, 1u, var_0.c.a.d) < u_input.b.x) && any(select(!vec3<bool>(false, var_0.c.a.d, true), vec3<bool>(arg_2.x, arg_2.x, true), arg_0));
    let var_2 = u_input.b.x;
    let var_3 = -579f;
    var var_4 = global1[_wgslsmith_index_u32(arg_1.x, 13u)];
    return Struct_4(true, u_input.b.xy, _wgslsmith_f_op_f32(-888f + _wgslsmith_f_op_f32(-func_2(288f).c.a.b)));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: u32, arg_3: vec2<u32>) -> Struct_2 {
    global0 = array<Struct_4, 7>();
    let var_0 = Struct_3(~_wgslsmith_mult_i32(u_input.c, min(u_input.a, abs(-1i))), u_input.c << (~(~arg_1.b.x | firstTrailingBit(arg_3.x)) % 32u), func_2(_wgslsmith_f_op_f32(arg_1.c * arg_1.c)).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(54982u, 8u)] + vec4<f32>(arg_1.c, arg_1.c, -493f, -806f))))));
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(4294967295u, 8u)], _wgslsmith_f_op_f32(-var_0.d.x), vec2<f32>(1343f, _wgslsmith_f_op_f32(trunc(var_0.d.x))), !all(!select(vec2<bool>(arg_1.a, var_0.c.a.d), vec2<bool>(false, false), true)));
    let var_2 = !vec4<bool>(any(!vec4<bool>(true, arg_1.a, var_0.c.a.d, arg_1.a)), arg_1.a, 1u == arg_3.x, all(select(!vec4<bool>(true, var_1.d, true, true), vec4<bool>(var_1.d, false, true, true), select(vec4<bool>(var_0.c.a.d, true, false, false), vec4<bool>(arg_1.a, true, true, arg_1.a), vec4<bool>(false, var_0.c.a.d, arg_1.a, var_1.d)))));
    var var_3 = ~_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0, _wgslsmith_clamp_u32(arg_3.x, 4294967295u, 0u), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 1u), vec4<u32>(abs(_wgslsmith_sub_u32(4294967295u, 1u)), abs(arg_0), _wgslsmith_sub_u32(arg_2, _wgslsmith_div_u32(18507u, u_input.b.x)), 1u));
    return Struct_2(var_0.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~(~(~u_input.b.x)), 3999u, _wgslsmith_dot_vec3_u32(u_input.b.yzz, u_input.b.wxw));
    global0 = array<Struct_4, 7>();
    global1 = array<Struct_2, 13>();
    var var_1 = Struct_3(u_input.c, -20192i, func_4(~u_input.b.x, func_1(true && all(vec3<bool>(true, true, true)), firstLeadingBit(reverseBits(u_input.b.zzy)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), 0u, ~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b.xzz, u_input.b.wxy), firstTrailingBit(u_input.b.x))), func_2(_wgslsmith_f_op_f32(func_1(true, firstLeadingBit(u_input.b.zxw), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))).c - _wgslsmith_f_op_f32(1075f * _wgslsmith_f_op_f32(abs(-292f))))).d);
    var var_2 = func_4(reverseBits(57436u), Struct_4(var_1.c.a.d, _wgslsmith_add_vec2_u32(~max(u_input.b.wy, var_0.xy), vec2<u32>(12822u, u_input.b.x >> (u_input.b.x % 32u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_2(var_1.d.x).d.x), -963f))), u_input.b.x, ~firstLeadingBit(select(~u_input.b.ww, vec2<u32>(var_0.x, u_input.b.x), false)));
    let var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a.b, var_2.a.c.x, true))))));
    var var_4 = var_2.a.d;
    var var_5 = var_3;
    global1 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.b, _wgslsmith_f_op_f32(ceil(var_3.c.a.c.x)), var_1.d.x, var_3.d.x)) * _wgslsmith_f_op_vec4_f32(var_3.c.a.a * _wgslsmith_f_op_vec4_f32(func_4(3500u, Struct_4(false, u_input.b.yx, var_5.d.x), var_0.x, vec2<u32>(u_input.b.x, 58052u)).a.a + func_4(1198u, Struct_4(var_3.c.a.d, vec2<u32>(u_input.b.x, 0u), -2088f), 60901u, var_0.yy).a.a))), ~abs(vec4<i32>(var_1.b, var_5.b, -u_input.c, 1i)));
}

