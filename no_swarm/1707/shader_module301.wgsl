struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(877f, -433f), vec2<f32>(2030f, -1376f), vec2<f32>(1400f, 901f), vec2<f32>(-710f, 783f), vec2<f32>(-1768f, 119f), vec2<f32>(377f, 201f), vec2<f32>(-520f, -883f), vec2<f32>(-340f, 730f), vec2<f32>(-2063f, -2075f), vec2<f32>(-555f, 1419f), vec2<f32>(-543f, -1841f), vec2<f32>(191f, -643f), vec2<f32>(1109f, -999f), vec2<f32>(1509f, -1309f), vec2<f32>(-734f, -222f), vec2<f32>(-982f, -1758f), vec2<f32>(-352f, -408f), vec2<f32>(516f, 1183f), vec2<f32>(-1382f, -1604f), vec2<f32>(-256f, -229f), vec2<f32>(-1000f, -1637f), vec2<f32>(593f, -1009f), vec2<f32>(-1149f, 708f), vec2<f32>(-344f, 712f), vec2<f32>(2150f, -547f));

var<private> global1: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global2: Struct_2;

var<private> global3: array<bool, 28>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = u_input.b;
    global0 = array<vec2<f32>, 25>();
    var var_1 = ~vec2<u32>(_wgslsmith_mod_u32(4294967295u, 85055u), min(1u, 80016u));
    let var_2 = select(global3[_wgslsmith_index_u32(max(firstTrailingBit(var_1.x), firstTrailingBit(~(~0u))), 28u)], !global3[_wgslsmith_index_u32(~firstLeadingBit(u_input.e), 28u)], false);
    let var_3 = Struct_2(Struct_1(true, u_input.d.x), Struct_1(!any(vec4<bool>(global2.b.a, var_2, true, var_2)) && (_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(0i, u_input.a.x, 2147483647i, -13079i)) < ~var_0.x), firstTrailingBit(_wgslsmith_sub_u32(~4294967295u, firstLeadingBit(u_input.e)))), Struct_1(global2.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, _wgslsmith_mult_u32(33154u, 27178u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, global2.a.b), u_input.d.yzx), _wgslsmith_add_u32(5165u, 50492u)), u_input.d)), global2.c);
    return u_input.c;
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.b.zzz;
    var var_1 = -(~func_3());
    var_1 = ~(~_wgslsmith_dot_vec4_i32(countOneBits(firstTrailingBit(u_input.b)), u_input.b >> (firstTrailingBit(u_input.d) % vec4<u32>(32u))));
    let var_2 = ~(-32505i);
    let var_3 = global3[_wgslsmith_index_u32(~abs(u_input.d.x), 28u)];
    return global2.c;
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: u32) -> Struct_2 {
    global0 = array<vec2<f32>, 25>();
    var var_0 = vec3<i32>(-1844i | _wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(14769i, -2147483647i, u_input.c), u_input.b.xyy), max(12907i, -62289i))), arg_0, 15428i);
    var var_1 = func_2();
    let var_2 = Struct_2(Struct_1(any(vec3<bool>(any(vec3<bool>(false, true, false)), all(vec4<bool>(true, false, false, false)), !global2.a.a)), 44268u), func_2(), Struct_1(true, _wgslsmith_mod_u32(u_input.e, 1758u)), global2.d);
    var var_3 = Struct_1(true, 1u);
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool, arg_3: vec3<i32>) -> vec3<i32> {
    var var_0 = vec2<u32>(0u, global2.c.b);
    var var_1 = func_2();
    global1 = array<vec2<bool>, 3>();
    var_0 = vec2<u32>(46151u, ~arg_0.a.b);
    let var_2 = Struct_2(Struct_1(false, _wgslsmith_add_u32(~u_input.e, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, u_input.e), u_input.d.zw))), Struct_1(func_2().a, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(arg_1.x, 25131u)))), func_1(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(9203i, arg_3.x, 50144i) & vec3<i32>(1i, -2147483647i, -1108i), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.x, arg_3.x, u_input.b.x), vec3<i32>(-2147483647i, -27441i, 11472i)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1673f + -238f), _wgslsmith_f_op_f32(floor(1495f)))), min((0u | var_1.b) | 0u, ~arg_1.x)).a, func_1(1i, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.e, 25u)])))), arg_0.a.b).a);
    return abs(abs(vec3<i32>(u_input.b.x, -1i, func_3())) | countOneBits(select(select(u_input.b.zyw, vec3<i32>(arg_3.x, u_input.a.x, u_input.b.x), true), ~vec3<i32>(-28737i, arg_3.x, 9946i), !arg_2)));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: vec4<u32>) -> vec3<bool> {
    var var_0 = func_1(-arg_0.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(global2.d.b, 25u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(global2.a.b, 25u)]), arg_1)), 4294967295u).d;
    return vec3<bool>(!global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_3.xww, vec3<u32>(u_input.d.x, u_input.e, 4294967295u)), vec3<u32>(global2.a.b, arg_3.x, arg_3.x)), firstTrailingBit(arg_3.x) & 1u), 28u)], (true & var_0.a) && true, func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(select(u_input.d.x ^ _wgslsmith_mult_u32(u_input.e | 71333u, select(global2.d.b, 3383u, global3[_wgslsmith_index_u32(4294967295u, 28u)])), ~(~(~u_input.d.x)), all(!select(vec3<bool>(false, global3[_wgslsmith_index_u32(22862u, 28u)], global2.a.a), vec3<bool>(global2.a.a, global3[_wgslsmith_index_u32(81572u, 28u)], false), vec3<bool>(global3[_wgslsmith_index_u32(0u, 28u)], global2.a.a, global3[_wgslsmith_index_u32(4294967295u, 28u)]))))), 3u)];
    let var_1 = func_5(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(max(2147483647i, -2147483647i), 1i), 6712i, _wgslsmith_div_i32(-1i, u_input.c)), _wgslsmith_div_vec3_i32(func_4(func_1(u_input.c, vec2<f32>(-364f, 1370f), 110101u), min(u_input.d, vec4<u32>(3376u, global2.a.b, global2.d.b, global2.c.b)), !var_0.x, vec3<i32>(u_input.b.x, u_input.a.x, 2802i)), vec3<i32>(abs(25943i), select(-24955i, u_input.b.x, true), reverseBits(-34872i))), vec3<i32>(~1075i, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -1i, u_input.a.x, -12081i), u_input.b | vec4<i32>(36959i, u_input.a.x, u_input.b.x, u_input.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(global0[_wgslsmith_index_u32(30863u, 25u)])), global0[_wgslsmith_index_u32(reverseBits(1u), 25u)])))), -_wgslsmith_clamp_vec4_i32(u_input.b, max(vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.c), ~vec4<i32>(34464i, u_input.b.x, 2147483647i, u_input.b.x)), ~vec4<i32>(-1i, u_input.a.x, 0i, u_input.c)), u_input.d);
    global2 = Struct_2(func_2(), global2.b, global2.d, func_2());
    let var_2 = func_5(max(max(select(vec3<i32>(u_input.c, -24782i, 1i), vec3<i32>(-16570i, u_input.b.x, u_input.a.x), global2.c.a), abs(u_input.b.wzx) << (firstLeadingBit(u_input.d.wzy) % vec3<u32>(32u))), ~countOneBits(vec3<i32>(-1i, u_input.b.x, -2147483647i))), _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(reverseBits(1u), 25u)] * _wgslsmith_f_op_vec2_f32(sign(global0[_wgslsmith_index_u32(~25355u, 25u)]))), u_input.b, vec4<u32>(~u_input.e, _wgslsmith_add_u32(select(global2.c.b, u_input.e, var_0.x), global2.a.b), reverseBits(4294967295u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.d.xy, u_input.d.zy), u_input.d.wz)) | abs(~(vec4<u32>(0u, 28888u, 0u, u_input.e) & u_input.d))).zx;
    var var_3 = func_1(firstLeadingBit(u_input.a.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(216f, -981f), 631f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 3055f), vec2<f32>(-1577f, -1187f), func_5(u_input.b.zxw, global0[_wgslsmith_index_u32(global2.c.b, 25u)], u_input.b, vec4<u32>(u_input.d.x, 4294967295u, global2.d.b, u_input.d.x)).xz))), global0[_wgslsmith_index_u32(u_input.d.x, 25u)]), ~u_input.d.x);
    let var_4 = _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(1u, 25u)] + global0[_wgslsmith_index_u32(u_input.e, 25u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-998f, _wgslsmith_f_op_f32(round(199f))), _wgslsmith_f_op_f32(-var_4.x))), -578f, _wgslsmith_div_f32(var_4.x, var_4.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(1u, 25u)] + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.d.b, 15155u), u_input.d.wz), 25u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1600f, -393f))) * _wgslsmith_f_op_vec2_f32(var_4 - vec2<f32>(var_4.x, var_4.x))))), vec2<f32>(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4.x)))))), var_4);
}

