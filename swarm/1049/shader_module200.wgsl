struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<bool, 13> = array<bool, 13>(false, true, true, true, false, false, false, true, true, true, true, false, true);

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec4<f32>(1187f, 1296f, 1121f, 785f), 4294967295u, vec3<i32>(1i, 1i, 17395i), vec2<u32>(41083u, 0u), vec4<u32>(85832u, 39825u, 1u, 47748u)), Struct_1(vec4<f32>(664f, 960f, 476f, 451f), 10128u, vec3<i32>(-47063i, 0i, 1i), vec2<u32>(1u, 3026u), vec4<u32>(28503u, 36591u, 1u, 1u)), Struct_1(vec4<f32>(1000f, 1980f, -159f, 241f), 37064u, vec3<i32>(0i, -61181i, -1i), vec2<u32>(1u, 1u), vec4<u32>(4294967295u, 0u, 21439u, 26391u)), Struct_1(vec4<f32>(-412f, -1871f, 719f, 929f), 1u, vec3<i32>(-1i, -26901i, i32(-2147483648)), vec2<u32>(23466u, 1u), vec4<u32>(0u, 2827u, 1u, 65530u)), Struct_1(vec4<f32>(-555f, -902f, -1210f, -948f), 0u, vec3<i32>(42434i, 2147483647i, 16340i), vec2<u32>(1u, 13348u), vec4<u32>(11198u, 27335u, 53303u, 0u)), Struct_1(vec4<f32>(1484f, 674f, 632f, 307f), 1u, vec3<i32>(0i, -9136i, 0i), vec2<u32>(1u, 19494u), vec4<u32>(0u, 67870u, 0u, 15071u)), Struct_1(vec4<f32>(949f, 1212f, -787f, -1499f), 4294967295u, vec3<i32>(23454i, -45136i, 5903i), vec2<u32>(4294967295u, 4294967295u), vec4<u32>(4294967295u, 49365u, 64128u, 27202u)), Struct_1(vec4<f32>(-236f, 1484f, 1103f, 1000f), 18911u, vec3<i32>(1i, -32517i, 2147483647i), vec2<u32>(20354u, 22098u), vec4<u32>(85317u, 1u, 4294967295u, 0u)), Struct_1(vec4<f32>(535f, -1126f, -1015f, -969f), 1u, vec3<i32>(2147483647i, 1615i, 0i), vec2<u32>(4294967295u, 66103u), vec4<u32>(0u, 90467u, 0u, 4294967295u)), Struct_1(vec4<f32>(-393f, 1734f, -1128f, -979f), 1u, vec3<i32>(1i, 0i, 1i), vec2<u32>(39375u, 0u), vec4<u32>(4294967295u, 78025u, 74814u, 1u)), Struct_1(vec4<f32>(1353f, -367f, -1000f, -399f), 4166u, vec3<i32>(17273i, 0i, 1i), vec2<u32>(55327u, 1u), vec4<u32>(1u, 34769u, 0u, 7320u)), Struct_1(vec4<f32>(155f, -479f, -1092f, -1000f), 17200u, vec3<i32>(-1i, -37219i, 638i), vec2<u32>(20462u, 34586u), vec4<u32>(69725u, 0u, 24119u, 40225u)), Struct_1(vec4<f32>(1822f, -720f, 484f, 1000f), 19273u, vec3<i32>(-58180i, -26016i, -22035i), vec2<u32>(28964u, 35174u), vec4<u32>(53132u, 1u, 1u, 0u)), Struct_1(vec4<f32>(337f, -1000f, 414f, 810f), 4294967295u, vec3<i32>(1i, -46778i, 2147483647i), vec2<u32>(697u, 0u), vec4<u32>(0u, 8266u, 25344u, 4294967295u)), Struct_1(vec4<f32>(1134f, -1516f, -715f, 451f), 71094u, vec3<i32>(i32(-2147483648), -1i, 1i), vec2<u32>(1u, 1u), vec4<u32>(118817u, 4294967295u, 5840u, 32280u)), Struct_1(vec4<f32>(-823f, 1328f, 665f, 1265f), 4294967295u, vec3<i32>(1i, i32(-2147483648), -1i), vec2<u32>(4294967295u, 57800u), vec4<u32>(4294967295u, 1u, 9950u, 0u)), Struct_1(vec4<f32>(-1318f, 115f, -194f, -1065f), 1u, vec3<i32>(56801i, -695i, 13866i), vec2<u32>(40971u, 0u), vec4<u32>(0u, 49578u, 11328u, 33669u)));

var<private> global3: u32;

var<private> global4: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    global1 = array<bool, 13>();
    let var_0 = global0.xzx;
    global4 = _wgslsmith_div_i32(u_input.a.x, u_input.d);
    let var_1 = vec3<i32>(-1i) * -abs(vec3<i32>(u_input.a.x & 1i, _wgslsmith_sub_i32(u_input.a.x, 1i), u_input.a.x));
    global1 = array<bool, 13>();
    return u_input.d;
}

fn func_2(arg_0: i32, arg_1: u32) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.c, 17u)];
    global3 = ~var_0.b >> (~((abs(37510u) >> (abs(var_0.b) % 32u)) | var_0.b) % 32u);
    global0 = !select(vec4<bool>(!all(vec3<bool>(false, global0.x, global1[_wgslsmith_index_u32(1u, 13u)])), global1[_wgslsmith_index_u32(abs(~1u), 13u)], any(global0.zyy), true), !(!(!vec4<bool>(false, true, false, global0.x))), true & global1[_wgslsmith_index_u32(_wgslsmith_div_u32(max(u_input.c, 61618u), ~u_input.c), 13u)]);
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(func_3(), 1671i));
    global4 = 1i;
    return -909f;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = ~(~select(vec2<u32>(u_input.b.x, arg_2.e.x) >> (vec2<u32>(16209u, u_input.b.x) % vec2<u32>(32u)), ~vec2<u32>(arg_2.d.x, arg_2.d.x) | arg_2.d, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.d.x | arg_1.b, 1u), 13u)]));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) - arg_1.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(-1821f, arg_1.a.x), 527f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(734f - -1180f))), _wgslsmith_f_op_f32(func_2(18823i, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b, arg_2.e, arg_2.e), max(arg_2.e, u_input.b))))), 55897u, _wgslsmith_clamp_vec3_i32(firstLeadingBit(~u_input.a | vec3<i32>(arg_1.c.x, -1i, arg_1.c.x)), max(u_input.a, ~u_input.a), vec3<i32>(-firstLeadingBit(arg_2.c.x), 1i, -2147483647i)), select(_wgslsmith_div_vec2_u32(~arg_1.d, _wgslsmith_clamp_vec2_u32(vec2<u32>(24651u, 4294967295u), arg_2.e.xx, vec2<u32>(5905u, 0u))), arg_2.d, !any(global0.xz)) >> (vec2<u32>(max(~18841u, ~arg_1.b), arg_2.d.x | _wgslsmith_sub_u32(u_input.b.x, arg_2.b)) % vec2<u32>(32u)), ~arg_1.e);
    let var_2 = arg_1;
    var var_3 = vec3<i32>(u_input.a.x >> (4294967295u % 32u), var_2.c.x, 1i);
    var var_4 = select(vec4<bool>(all(global0.zz), !any(!global0.yx), all(global0.wx), global1[_wgslsmith_index_u32(var_1.b, 13u)]), vec4<bool>(all(vec4<bool>(global0.x, select(global0.x, true, false), any(vec3<bool>(global0.x, true, false)), any(vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 13u)], global1[_wgslsmith_index_u32(arg_2.b, 13u)], global1[_wgslsmith_index_u32(56295u, 13u)])))), (firstTrailingBit(arg_2.d.x) & 24777u) > 4501u, _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(f32(-1f) * -232f)) <= _wgslsmith_f_op_f32(min(arg_2.a.x, _wgslsmith_f_op_f32(-arg_0))), any(global0.yyx)), true && global0.x);
    return !vec4<bool>(false, !(!var_4.x), true, any(select(!global0.yy, global0.xz, vec2<bool>(false, false))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(arg_2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -825f), arg_3.a.x, _wgslsmith_f_op_f32(-arg_3.a.x))) * _wgslsmith_f_op_vec4_f32(-arg_2.a)), !(!(!select(vec4<bool>(global0.x, true, true, true), vec4<bool>(global0.x, false, true, true), vec4<bool>(arg_0, arg_1, arg_0, false))))));
    var var_1 = _wgslsmith_mult_u32(abs(~u_input.b.x), 4294967295u);
    var var_2 = vec3<i32>(reverseBits(_wgslsmith_mult_i32(41369i, _wgslsmith_mult_i32(-u_input.a.x, u_input.a.x))), u_input.d ^ (u_input.a.x >> (~(~20925u) % 32u)), u_input.a.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(round(arg_3.a)), _wgslsmith_clamp_u32(4294967295u, u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.c, 1u)), ~arg_3.e.yw), 1u)), vec3<i32>(arg_2.c.x, 7046i, -func_3()), ~reverseBits(firstLeadingBit(vec2<u32>(27650u, 4294967295u))), arg_3.e);
    var var_4 = Struct_1(var_0, 1u, arg_2.c, arg_3.e.xw, arg_3.e);
    return StorageBuffer(var_0.wwx, var_3.a, ~vec3<u32>(firstTrailingBit(countOneBits(arg_3.b)), ~4294967295u | arg_3.b, u_input.c >> (_wgslsmith_sub_u32(var_3.b, var_3.b) % 32u)), arg_2.c.x, vec4<i32>(var_4.c.x, ~58043i, _wgslsmith_div_i32(~27878i >> (var_3.d.x % 32u), var_3.c.x), 77679i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 13u)] || (any(select(!vec4<bool>(false, global0.x, global0.x, global1[_wgslsmith_index_u32(0u, 13u)]), !vec4<bool>(false, true, global0.x, false), true)) | true);
    let var_1 = ~(~_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(1i, u_input.a.x, u_input.d, u_input.a.x)) << (~vec4<u32>(u_input.b.x, 4294967295u, u_input.c, 87414u) % vec4<u32>(32u)), ~vec4<i32>(0i, u_input.d, 21891i, 1i)));
    global4 = ((var_1.x & u_input.d) ^ 8908i) | ((var_1.x ^ _wgslsmith_dot_vec3_i32(var_1.zwx, -vec3<i32>(u_input.d, u_input.d, var_1.x))) >> (abs(u_input.c) % 32u));
    let var_2 = global2[_wgslsmith_index_u32(u_input.c, 17u)];
    global0 = !(!select(select(!vec4<bool>(global0.x, false, global1[_wgslsmith_index_u32(21717u, 13u)], global0.x), !vec4<bool>(true, global0.x, true, global1[_wgslsmith_index_u32(u_input.c, 13u)]), vec4<bool>(true, true, true, true)), !vec4<bool>(false, true, global0.x, true), !vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(var_2.e.x, 13u)], false)));
    let x = u_input.a;
    s_output = func_4(any(select(select(func_1(707f, global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)]), func_1(419f, global2[_wgslsmith_index_u32(var_2.b, 17u)], Struct_1(var_2.a, 4294967295u, vec3<i32>(u_input.d, 0i, 2147483647i), var_2.d, vec4<u32>(14661u, var_2.e.x, var_2.b, 37819u))), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 13u)], false, global1[_wgslsmith_index_u32(var_2.d.x, 13u)], false)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -878f), global2[_wgslsmith_index_u32(1236u, 17u)], Struct_1(vec4<f32>(-799f, var_2.a.x, var_2.a.x, 585f), var_2.e.x, vec3<i32>(-24482i, var_2.c.x, var_1.x), vec2<u32>(4294967295u, 23148u), vec4<u32>(u_input.b.x, var_2.d.x, var_2.b, 15386u))), func_1(_wgslsmith_f_op_f32(trunc(var_2.a.x)), Struct_1(vec4<f32>(var_2.a.x, var_2.a.x, -447f, 1773f), 21424u, u_input.a, var_2.d, u_input.b), Struct_1(var_2.a, 44059u, vec3<i32>(var_2.c.x, u_input.d, var_1.x), u_input.b.xz, vec4<u32>(var_2.d.x, var_2.e.x, 665u, u_input.c))))), !(!global1[_wgslsmith_index_u32(u_input.c & 1u, 13u)]) | false, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1096f), _wgslsmith_f_op_f32(-1038f - _wgslsmith_div_f32(var_2.a.x, -1483f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), 1701f), 0u, vec3<i32>(-(i32(-1i) * -1i), -2147483647i, var_2.c.x), select(firstTrailingBit(var_2.e.xw), ~u_input.b.zw | var_2.e.xw, global0.wy), var_2.e), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 1443f, var_2.a.x, -1206f))), u_input.c, vec3<i32>(-abs(var_2.c.x), var_2.c.x, _wgslsmith_clamp_i32(-27350i, ~5902i, _wgslsmith_dot_vec2_i32(vec2<i32>(-7643i, var_1.x), vec2<i32>(u_input.a.x, -35546i)))), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(14115u, 84076u), u_input.b.yw, vec2<u32>(var_2.b, 4294967295u)) << (vec2<u32>(u_input.c, u_input.b.x) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(53978u, u_input.b.x)) | (u_input.b.xz | vec2<u32>(var_2.d.x, var_2.e.x))), u_input.b));
}

