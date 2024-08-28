struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<i32>,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9>;

var<private> global1: i32 = 3593i;

var<private> global2: array<i32, 28>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> vec3<f32> {
    var var_0 = Struct_5(Struct_1(-(global2[_wgslsmith_index_u32(u_input.a >> (76376u % 32u), 28u)] ^ global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(81318u, u_input.a), 28u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(u_input.a, 9u)] * vec3<f32>(arg_1.x, 194f, 1092f))))), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~52530u, u_input.a), vec2<u32>(1u, 4063u)), _wgslsmith_mod_vec2_u32(vec2<u32>(~4294967295u, reverseBits(8151u)), ~firstLeadingBit(vec2<u32>(u_input.a, 2682u)))), vec4<i32>(global2[_wgslsmith_index_u32(firstTrailingBit(select(69103u, u_input.a, true) & ~3830u), 28u)], -global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(49526u, u_input.a)), 28u)], ~global2[_wgslsmith_index_u32(~1u, 28u)], -33043i), Struct_3(vec3<i32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 97399u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 79023u, u_input.a)), 28u)] << (u_input.a % 32u), -29702i, -18133i), Struct_1(7753i, vec3<f32>(1976f, _wgslsmith_f_op_f32(-855f - -700f), -202f))), vec4<bool>(true, true, true, select(true, (49726u <= u_input.a) || true, _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(1u, 28u)], -49836i) >= -global2[_wgslsmith_index_u32(0u, 28u)])));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(558f, 2069f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1185f + -374f), var_0.d.b.b.x)))));
    global2 = array<i32, 28>();
    let var_2 = var_0.c;
    let var_3 = var_0.e.x;
    return var_0.d.b.b;
}

fn func_2(arg_0: i32, arg_1: u32) -> vec2<i32> {
    global0 = array<vec3<f32>, 9>();
    var var_0 = Struct_3(-(~select(vec3<i32>(-33450i, arg_0, global2[_wgslsmith_index_u32(arg_1, 28u)]), vec3<i32>(-32686i, -18766i, 45345i), any(vec2<bool>(true, false)))), Struct_1(abs(10768i), _wgslsmith_f_op_vec3_f32(func_3(346f, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(408f, 921f)))))));
    global0 = array<vec3<f32>, 9>();
    let var_1 = false && any(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    var var_2 = select(abs(~0i), abs(_wgslsmith_add_i32(~min(var_0.a.x, 0i), reverseBits(-1i) ^ (arg_0 << (7210u % 32u)))), all(vec4<bool>(false, arg_1 > 0u, false, true)));
    return vec2<i32>(arg_0, arg_0);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec3<i32>) -> bool {
    global1 = 2147483647i;
    var var_0 = -arg_0.xzy | arg_2.d;
    let var_1 = arg_2.e.b;
    return true;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<bool>) -> Struct_3 {
    global2 = array<i32, 28>();
    var var_0 = _wgslsmith_mult_u32(4294967295u, u_input.a);
    var var_1 = vec4<bool>(true, arg_1 <= _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_1), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, arg_1)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1, 1u), vec2<u32>(u_input.a, arg_1), vec2<u32>(77893u, arg_1))), arg_2.x & (arg_2.x || func_4(vec4<i32>(-12917i, global2[_wgslsmith_index_u32(arg_1, 28u)], global2[_wgslsmith_index_u32(arg_1, 28u)], -14202i), func_2(0i, arg_1), Struct_4(vec3<i32>(2017i, global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(arg_1, 28u)]), vec4<f32>(264f, 876f, arg_0.x, arg_0.x), arg_2, vec3<i32>(global2[_wgslsmith_index_u32(82023u, 28u)], global2[_wgslsmith_index_u32(arg_1, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)]), Struct_3(vec3<i32>(global2[_wgslsmith_index_u32(17928u, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)], 4061i), Struct_1(71311i, arg_0.wzw))), -vec3<i32>(2147483647i, 1i, -41002i))), !(true || all(arg_2.zx)));
    global2 = array<i32, 28>();
    global2 = array<i32, 28>();
    return Struct_3(vec3<i32>(global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(22152u, 28u)], _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(~(arg_1 | 26474u), 28u)], _wgslsmith_sub_i32(17173i, _wgslsmith_dot_vec2_i32(vec2<i32>(-30585i, global2[_wgslsmith_index_u32(u_input.a, 28u)]), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(arg_1, 28u)]))))), Struct_1(firstLeadingBit(2147483647i) ^ _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(abs(u_input.a), 28u)], reverseBits(43354i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0.x, -822f) + vec3<f32>(-1089f, arg_0.x, arg_0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(292f, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    var var_0 = Struct_2(vec4<bool>(any(vec4<bool>(true, select(true, arg_1.c.x, arg_1.c.x), true, true)), true, arg_1.c.x, false), false);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(409f + arg_1.e.b.b.x))))));
    var_0 = Struct_2(select(var_0.a, !var_0.a, !vec4<bool>(all(vec3<bool>(arg_1.c.x, var_0.a.x, true)), arg_1.c.x, u_input.a <= u_input.a, false)), true);
    let var_2 = arg_1;
    var var_3 = Struct_2(var_0.a, false);
    return Struct_2(!var_0.a, true);
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    let var_0 = countOneBits(-15576i);
    var var_1 = 31871u;
    var var_2 = Struct_5(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(125f, 2577f, 1008f, -775f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2331f, 487f, 750f, -376f))), u_input.a, vec3<bool>(arg_0.a.x, !arg_0.a.x, true)).b, _wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(~0u), _wgslsmith_sub_u32(u_input.a & u_input.a, abs(u_input.a))), vec2<u32>(0u, ~u_input.a)), vec4<i32>(var_0, -(i32(-1i) * -2147483647i), _wgslsmith_sub_i32(~var_0, func_1(vec4<f32>(275f, 150f, -1454f, -1031f), u_input.a, vec3<bool>(arg_0.b, arg_0.b, arg_0.b)).b.a), -2147483647i) >> (vec4<u32>(u_input.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 108716u), vec2<u32>(4294967295u, u_input.a)), 1u), reverseBits(_wgslsmith_add_u32(14997u, u_input.a)), countOneBits(u_input.a ^ 36520u)) % vec4<u32>(32u)), Struct_3(vec3<i32>(-1i, ~(-global2[_wgslsmith_index_u32(u_input.a, 28u)]), _wgslsmith_div_i32(i32(-1i) * -1i, var_0)), Struct_1(-1i, global0[_wgslsmith_index_u32(35212u, 9u)])), arg_0.a);
    let var_3 = var_2.a;
    var_1 = var_2.b.x;
    return func_5(var_2.a, Struct_4(vec3<i32>(1673i, _wgslsmith_clamp_i32(var_2.d.b.a, -44769i, ~var_3.a), global2[_wgslsmith_index_u32(~(~u_input.a), 28u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1790f, var_2.a.b.x, var_3.b.x, -1315f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.b.x, var_2.a.b.x, var_2.a.b.x, 719f), vec4<f32>(233f, 510f, var_3.b.x, -1753f), vec4<bool>(false, var_2.e.x, true, true))))), select(func_5(func_1(vec4<f32>(var_3.b.x, var_2.a.b.x, var_2.a.b.x, -1594f), u_input.a, vec3<bool>(arg_1, true, false)).b, Struct_4(var_2.d.a, vec4<f32>(1107f, var_3.b.x, -181f, -1746f), var_2.e.zxx, vec3<i32>(var_0, -17232i, 1i), Struct_3(var_2.c.yyw, var_2.d.b)), var_2.d, Struct_3(var_2.d.a, Struct_1(var_0, var_3.b))).a.wxz, select(!arg_0.a.xyy, vec3<bool>(arg_1, arg_1, var_2.e.x), vec3<bool>(false, arg_0.b, arg_1)), select(var_2.e.x, !var_2.e.x, !arg_1)), ~var_2.c.xwz, Struct_3(vec3<i32>(~(-60123i), _wgslsmith_dot_vec4_i32(var_2.c, var_2.c), var_2.d.b.a & 2147483647i), var_2.d.b)), var_2.d, Struct_3(vec3<i32>(var_0, abs(-1i), -1i), Struct_1(_wgslsmith_sub_i32(var_3.a, _wgslsmith_div_i32(var_3.a, var_0)), _wgslsmith_f_op_vec3_f32(round(var_2.d.b.b)))));
}

fn func_7(arg_0: Struct_2, arg_1: vec3<f32>) -> bool {
    let var_0 = Struct_3(min(firstLeadingBit(~min(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)]), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(11250u, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)]))), vec3<i32>(i32(-1i) * -global2[_wgslsmith_index_u32(u_input.a, 28u)], 2147483647i, select(0i, 1i, false) | -36291i)), func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 155f), vec4<f32>(arg_1.x, -817f, 250f, arg_1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1935f, -845f, -1105f, arg_1.x))), 1u, arg_0.a.zxz).b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-712f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(182f * 582f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(201f * 1000f) - _wgslsmith_f_op_f32(round(var_0.b.b.x))))));
    let var_2 = var_0.b;
    var var_3 = var_0;
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.b.b.x)) + -1028f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-394f - 525f)))), arg_0.a.x));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(u_input.a, 28u)];
    let var_0 = func_7(func_6(func_5(Struct_1(_wgslsmith_add_i32(-2147483647i, global2[_wgslsmith_index_u32(u_input.a, 28u)]), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-107f, 731f, 752f)))), Struct_4(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(20163u, 28u)]), vec3<i32>(global2[_wgslsmith_index_u32(29284u, 28u)], global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-714f, 410f, -378f, -365f) + vec4<f32>(-2035f, 235f, -1208f, -1622f)), vec3<bool>(false, true, false), select(vec3<i32>(30345i, global2[_wgslsmith_index_u32(0u, 28u)], -8637i), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)], 22385i), true), func_1(vec4<f32>(781f, 325f, 1412f, 1297f), 4294967295u, vec3<bool>(false, true, false))), Struct_3(abs(vec3<i32>(global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)])), func_1(vec4<f32>(-152f, 598f, 259f, -729f), 0u, vec3<bool>(true, false, true)).b), Struct_3(countOneBits(vec3<i32>(0i, global2[_wgslsmith_index_u32(0u, 28u)], 27820i)), Struct_1(-1i, global0[_wgslsmith_index_u32(1u, 9u)]))), true), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.a, 9u)]));
    let var_1 = func_5(func_1(vec4<f32>(1264f, _wgslsmith_f_op_f32(f32(-1f) * -470f), 261f, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(trunc(-1070f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(810f, 220f), vec2<f32>(269f, -1000f), false)))).x), 71329u, !vec3<bool>(var_0, func_6(Struct_2(vec4<bool>(true, var_0, var_0, false), true), true).a.x, var_0 && var_0)).b, Struct_4(vec3<i32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a << (u_input.a % 32u), u_input.a), 28u)], abs(_wgslsmith_clamp_i32(-2147483647i, global2[_wgslsmith_index_u32(49280u, 28u)], 0i)), global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a, 96880u, 44721u), 28u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1112f, func_1(vec4<f32>(543f, 493f, -1368f, 1471f), 4817u, vec3<bool>(true, true, true)).b.b.x, _wgslsmith_f_op_f32(1000f - -402f), -145f)), !(!func_5(Struct_1(-15924i, global0[_wgslsmith_index_u32(u_input.a, 9u)]), Struct_4(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)], 0i), vec4<f32>(1727f, 632f, -1676f, 1056f), vec3<bool>(var_0, var_0, var_0), vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], -1616i, 1i), Struct_3(vec3<i32>(global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)], -1i), Struct_1(global2[_wgslsmith_index_u32(u_input.a, 28u)], vec3<f32>(-1000f, -123f, -975f)))), Struct_3(vec3<i32>(18675i, 1i, 43996i), Struct_1(-2147483647i, vec3<f32>(441f, 1000f, -461f))), Struct_3(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], 13590i, global2[_wgslsmith_index_u32(4294967295u, 28u)]), Struct_1(-29630i, global0[_wgslsmith_index_u32(72119u, 9u)]))).a.wxz), vec3<i32>(global2[_wgslsmith_index_u32(9094u, 28u)], ~reverseBits(46369i), ~2147483647i), Struct_3(_wgslsmith_sub_vec3_i32(select(vec3<i32>(-1i, 1i, global2[_wgslsmith_index_u32(u_input.a, 28u)]), vec3<i32>(29960i, 27757i, -12002i), vec3<bool>(var_0, var_0, var_0)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a, 28u)], 1i), vec3<i32>(-8851i, 11073i, global2[_wgslsmith_index_u32(1u, 28u)]), vec3<i32>(-30985i, 1i, global2[_wgslsmith_index_u32(0u, 28u)]))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a, 28u)], 1i), vec3<i32>(-33020i, 1i, global2[_wgslsmith_index_u32(3780u, 28u)])), _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(4294967295u, 9u)], vec3<f32>(608f, -1000f, -1405f))))), Struct_3(~(-vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)])), func_1(vec4<f32>(-799f, _wgslsmith_f_op_f32(-1200f + 1108f), _wgslsmith_div_f32(-2773f, -1000f), -1173f), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), ~vec4<u32>(u_input.a, 4294967295u, 17051u, 33652u)), vec3<bool>(true, true, true)).b), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1901f, -2041f, -1447f, 329f), vec4<f32>(1981f, -952f, -654f, 283f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1941f, 832f, 582f, -1342f), vec4<f32>(1158f, -406f, -1000f, 544f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-460f, -833f, 1000f, -1760f) - vec4<f32>(-186f, 1231f, -1000f, -974f)), func_5(Struct_1(-1i, global0[_wgslsmith_index_u32(u_input.a, 9u)]), Struct_4(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(87944u, 28u)], -67075i), vec4<f32>(-675f, 316f, -557f, 985f), vec3<bool>(false, true, var_0), vec3<i32>(-7439i, global2[_wgslsmith_index_u32(u_input.a, 28u)], -1i), Struct_3(vec3<i32>(global2[_wgslsmith_index_u32(36303u, 28u)], 2147483647i, 31284i), Struct_1(1i, global0[_wgslsmith_index_u32(u_input.a, 9u)]))), Struct_3(vec3<i32>(-2147483647i, 1i, global2[_wgslsmith_index_u32(u_input.a, 28u)]), Struct_1(global2[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 9u)])), Struct_3(vec3<i32>(35541i, global2[_wgslsmith_index_u32(1u, 28u)], -2160i), Struct_1(-2147483647i, global0[_wgslsmith_index_u32(u_input.a, 9u)]))).a))), ~4294967295u, !select(select(vec3<bool>(false, var_0, var_0), vec3<bool>(true, var_0, true), false), vec3<bool>(true, true, true), any(vec3<bool>(var_0, false, var_0)))));
    var var_2 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-382f + 1000f), 715f, _wgslsmith_f_op_f32(min(1590f, -338f)), 209f)) + vec4<f32>(755f, -465f, _wgslsmith_f_op_f32(step(-754f, _wgslsmith_f_op_f32(-416f * 1965f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(947f, -296f)) + _wgslsmith_div_f32(-243f, -1095f)))), _wgslsmith_dot_vec3_u32(vec3<u32>((1u | u_input.a) >> (select(u_input.a, u_input.a, var_1.b) % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, 20126u)), 0u & u_input.a, ~u_input.a), ~54061u), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(1u, u_input.a, 79587u))) | ~min(vec3<u32>(8360u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u))), !var_1.a.xyw).b;
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(4294967295u, u_input.a)), vec2<u32>(1u, u_input.a))), vec4<u32>(~abs(~51996u), 18600u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 31268u, 1u) << (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(4294967295u, 50643u, u_input.a))), ~(countOneBits(u_input.a) & ~u_input.a)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_2.b.x, -554f, 1328f) - vec4<f32>(-1271f, var_2.b.x, 1000f, 265f)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1054f), _wgslsmith_f_op_f32(108f * var_2.b.x), _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1366f))))), var_2.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.zz) - var_2.b.xx));
}

