struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(25860u, vec2<i32>(0i, 2147483647i), -1i);

var<private> global1: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true));

var<private> global2: array<i32, 17> = array<i32, 17>(-32309i, 19545i, 2147483647i, 1i, -48116i, 31105i, 0i, 62517i, -27347i, 1i, 69926i, i32(-2147483648), i32(-2147483648), 2147483647i, 0i, 1i, -73786i);

var<private> global3: array<bool, 30>;

var<private> global4: u32 = 1274u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: Struct_3) -> vec4<i32> {
    var var_0 = firstTrailingBit(u_input.d);
    global0 = Struct_4(abs(u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -(~34883i)), global0.b), _wgslsmith_div_i32(global0.b.x, arg_3.c.c));
    let var_1 = ~vec3<i32>(_wgslsmith_div_i32(global0.b.x, 6804i), reverseBits(0i), -2147483647i);
    return max(countOneBits(select(max(arg_0.a, vec4<i32>(1i, -1i, var_1.x, global2[_wgslsmith_index_u32(1u, 17u)])) >> (vec4<u32>(14436u, 32370u, 4294967295u, var_0.x) % vec4<u32>(32u)), firstTrailingBit(abs(vec4<i32>(0i, 11868i, -186i, 35987i))), all(!vec2<bool>(true, arg_0.d)))), vec4<i32>(2147483647i, global0.c, var_1.x, -(~global2[_wgslsmith_index_u32(abs(1u), 17u)])));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> Struct_4 {
    var var_0 = global2[_wgslsmith_index_u32(~(~arg_1.a) & (~min(u_input.a & 25417u, ~arg_1.a) | _wgslsmith_dot_vec2_u32(select(~u_input.d.xx, ~vec2<u32>(arg_2.a, 76088u), vec2<bool>(true, true)), ~u_input.d.wy)), 17u)];
    let var_1 = Struct_3(Struct_2(Struct_1(~(-vec4<i32>(-7024i, arg_2.b.x, 5847i, arg_2.b.x)), true, i32(-1i) * -arg_2.b.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1215f) + -213f) * _wgslsmith_f_op_f32(-1552f - _wgslsmith_f_op_f32(select(-176f, -399f, !global3[_wgslsmith_index_u32(global0.a, 30u)])))), Struct_1(select(firstLeadingBit(-vec4<i32>(30118i, global0.b.x, -2147483647i, -41865i)), vec4<i32>(0i ^ global2[_wgslsmith_index_u32(17649u, 17u)], _wgslsmith_mod_i32(arg_1.b.x, -5723i), global0.c & 0i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.d.x, 17u)], -24516i)), any(vec2<bool>(global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(arg_1.a, 30u)]))), true, min(~arg_1.b.x, arg_2.c), true), Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(26548i, arg_1.b.x, arg_2.c, global2[_wgslsmith_index_u32(u_input.d.x, 17u)]), func_3(Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(arg_2.a, 17u)], 0i, 26763i, 1i), global3[_wgslsmith_index_u32(u_input.a, 30u)], -17616i, false), vec4<f32>(524f, -2180f, 709f, 304f), vec3<i32>(arg_2.b.x, 2147483647i, global2[_wgslsmith_index_u32(6199u, 17u)]), Struct_3(Struct_2(Struct_1(vec4<i32>(5304i, arg_1.c, arg_1.b.x, global0.b.x), global3[_wgslsmith_index_u32(arg_2.a, 30u)], global0.b.x, global3[_wgslsmith_index_u32(2983u, 30u)])), -1000f, Struct_1(vec4<i32>(arg_1.c, arg_1.c, arg_2.c, global2[_wgslsmith_index_u32(65061u, 17u)]), global3[_wgslsmith_index_u32(1u, 30u)], -7203i, true), Struct_2(Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(arg_2.a, 17u)], -1i, global2[_wgslsmith_index_u32(arg_1.a, 17u)], 2147483647i), global3[_wgslsmith_index_u32(arg_2.a, 30u)], arg_1.c, true))))), true, -17715i, any(vec2<bool>(true, false)) & (global0.a == 19209u))));
    let var_2 = vec4<bool>(var_1.d.a.b, all(!(!vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 30u)]))), false, all(!global1[_wgslsmith_index_u32(53888u, 25u)]));
    let var_3 = func_3(Struct_1(var_1.a.a.a, ~(94278u & u_input.d.x) == 26731u, select(arg_1.c, ~global2[_wgslsmith_index_u32(u_input.d.x, 17u)], true & all(vec2<bool>(var_2.x, false))), any(vec2<bool>(true, 57712u == u_input.a))), vec4<f32>(746f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1690f, _wgslsmith_f_op_f32(ceil(var_1.b)))), var_1.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(380f, 1508f, true))), 1756f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-129f))))), ~var_1.c.a.xzw, Struct_3(var_1.a, 1000f, Struct_1(_wgslsmith_div_vec4_i32(select(vec4<i32>(global0.b.x, global0.b.x, 7640i, 2147483647i), var_1.c.a, var_2.x), var_1.a.a.a), false, func_3(var_1.d.a, vec4<f32>(var_1.b, 1994f, var_1.b, 2127f), vec3<i32>(arg_2.c, var_1.a.a.c, 1i), var_1).x & abs(arg_1.b.x), var_2.x), var_1.a)).ww;
    global2 = array<i32, 17>();
    return Struct_4(43528u, global0.b, -_wgslsmith_sub_i32(~arg_1.b.x & var_1.a.a.c, max(2147483647i, abs(29180i))));
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> vec4<f32> {
    global4 = select(_wgslsmith_dot_vec3_u32(u_input.d.yzz, abs(u_input.d.yxy | u_input.d.yyz)), 45608u, any(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false))) | ~(~1176u);
    var var_0 = !(!vec3<bool>(!any(vec2<bool>(global3[_wgslsmith_index_u32(16442u, 30u)], true)), false, true || any(vec2<bool>(global3[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(global0.a, 30u)]))));
    let var_1 = ~func_2(global0.a, arg_1, func_2(~(~91282u), func_2(22744u << (global0.a % 32u), func_2(global0.a, arg_1, arg_1), func_2(arg_1.a, Struct_4(u_input.b, arg_1.b, arg_1.b.x), arg_1)), Struct_4(global0.a, arg_1.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_1.b.x, 1i), vec3<i32>(arg_1.c, global0.b.x, -46085i))))).a;
    var var_2 = Struct_4(_wgslsmith_mod_u32(arg_1.a, abs(reverseBits(~u_input.d.x))), reverseBits(-vec2<i32>(1879i, func_3(Struct_1(vec4<i32>(arg_1.c, global2[_wgslsmith_index_u32(global0.a, 17u)], global2[_wgslsmith_index_u32(u_input.c, 17u)], global0.c), arg_0, 0i, var_0.x), vec4<f32>(-2489f, -534f, 134f, -647f), vec3<i32>(global0.c, global0.b.x, -36547i), Struct_3(Struct_2(Struct_1(vec4<i32>(0i, 0i, global0.b.x, arg_1.b.x), true, arg_1.c, true)), -1266f, Struct_1(vec4<i32>(global0.b.x, -1010i, global2[_wgslsmith_index_u32(var_1, 17u)], global0.b.x), false, global2[_wgslsmith_index_u32(arg_1.a, 17u)], arg_0), Struct_2(Struct_1(vec4<i32>(-2147483647i, -5135i, arg_1.b.x, global2[_wgslsmith_index_u32(1u, 17u)]), false, -14741i, false)))).x)), _wgslsmith_clamp_i32(global0.b.x, -1i, -_wgslsmith_mult_i32(global0.b.x | global2[_wgslsmith_index_u32(4294967295u, 17u)], -arg_1.c)));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(775f, 1630f)), _wgslsmith_f_op_f32(floor(-1658f))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-624f, -590f, 1446f, 1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-573f, -1443f, 1000f, 651f) + vec4<f32>(1224f, 1000f, -521f, 2392f))))))));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = func_2(~(~u_input.b), Struct_4(u_input.c, vec2<i32>(max(-1i, _wgslsmith_div_i32(arg_1.a.a.a.x, global0.c)), -1i), i32(-1i) * -1i), Struct_4(0u, min(vec2<i32>(global0.b.x, abs(-1i)), _wgslsmith_add_vec2_i32(global0.b, vec2<i32>(-1i, -2147483647i))), arg_1.a.a.a.x));
    let var_1 = arg_2;
    var_0 = Struct_4(1u, select(global0.b, _wgslsmith_div_vec2_i32(global0.b, var_0.b), !all(vec2<bool>(arg_2.x, false))), var_0.b.x ^ max(global0.b.x, -arg_1.c.c));
    var var_2 = ~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.d.x ^ u_input.b, ~0u, ~u_input.a), _wgslsmith_clamp_vec3_u32(u_input.d.wzw, firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a, 0u, u_input.d.x), u_input.d.wzw)), vec3<u32>(56693u, _wgslsmith_mod_u32(51229u, 4294967295u), 96440u & global0.a)));
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f, -2714f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.zww) - arg_3.zxx));
    return Struct_2(Struct_1(arg_1.c.a, var_1.x, var_0.c, arg_2.x));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> Struct_2 {
    let var_0 = u_input.a;
    global3 = array<bool, 30>();
    var var_1 = Struct_4(_wgslsmith_mod_u32(abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(global0.a, 53120u, 25242u, 68402u)), u_input.c ^ 94809u)), _wgslsmith_dot_vec3_u32((vec3<u32>(28796u, arg_2, 14196u) >> (vec3<u32>(6296u, u_input.b, u_input.d.x) % vec3<u32>(32u))) & select(vec3<u32>(48301u, arg_2, u_input.c), vec3<u32>(0u, 1u, u_input.c), false), firstLeadingBit(u_input.d.xyw >> (vec3<u32>(4294967295u, arg_2, 4294967295u) % vec3<u32>(32u))))), vec2<i32>(-25782i, 1i), global2[_wgslsmith_index_u32(arg_2, 17u)]);
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.c, -2147483647i & ~max(global0.c, 56274i)), vec2<i32>(_wgslsmith_mod_i32(1i, -33884i), var_1.c));
    global2 = array<i32, 17>();
    return func_5(true & all(vec2<bool>(true, 1506f <= arg_0.b)), arg_0, !(!global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, arg_2, arg_2, 4294967295u)), 25u)]), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, arg_0.b, -1336f) + vec4<f32>(397f, arg_0.b, -326f, 318f)), vec4<f32>(-192f, -761f, 582f, arg_0.b))), _wgslsmith_f_op_vec4_f32(func_4(true, func_2(arg_2, Struct_4(var_1.a, var_1.b, -1504i), Struct_4(1u, arg_0.a.a.a.zy, arg_0.d.a.c)))))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1574f)), vec4<f32>(_wgslsmith_f_op_f32(1000f * arg_0.b), _wgslsmith_f_op_f32(523f - arg_0.b), 2552f, -311f)), global3[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(_wgslsmith_add_u32(1u, global0.a))), 30u)])));
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    let var_0 = func_5(false, arg_0, vec4<bool>(true, (global0.a >= ~0u) | (~108655u >= _wgslsmith_mod_u32(global0.a, u_input.c)), !select(true, arg_0.c.d, true), !global3[_wgslsmith_index_u32(1u, 30u)] | select(global0.a >= 0u, true, false & arg_0.c.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, 802f, 787f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1640f, arg_0.b, arg_0.b, -1036f) + vec4<f32>(-1899f, arg_0.b, -440f, -1817f)))))));
    let var_1 = func_3(func_1(arg_0, func_5(global0.b.x <= _wgslsmith_mult_i32(0i, 2147483647i), Struct_3(arg_0.a, -1000f, var_0.a, func_1(Struct_3(var_0, 595f, arg_0.a.a, arg_0.a), true, 20492u)), select(!vec4<bool>(arg_0.d.a.b, global3[_wgslsmith_index_u32(62974u, 30u)], arg_0.d.a.d, arg_0.a.a.b), !vec4<bool>(arg_0.d.a.b, var_0.a.d, global3[_wgslsmith_index_u32(26553u, 30u)], var_0.a.b), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 141f, arg_0.b, 1000f))).a.b, min(global0.a, firstLeadingBit(max(u_input.c, 0u)))).a, vec4<f32>(arg_0.b, arg_0.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -751f), _wgslsmith_f_op_f32(-arg_0.b), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))), vec3<i32>(max(_wgslsmith_sub_i32(-1i, func_5(false, arg_0, vec4<bool>(var_0.a.b, var_0.a.d, true, true), vec4<f32>(arg_0.b, arg_0.b, -606f, 329f)).a.c), 1i ^ var_0.a.c), _wgslsmith_dot_vec4_i32(reverseBits(var_0.a.a ^ vec4<i32>(global0.c, -1i, global2[_wgslsmith_index_u32(global0.a, 17u)], 63241i)), -(vec4<i32>(-1i, var_0.a.c, global2[_wgslsmith_index_u32(u_input.c, 17u)], 0i) | vec4<i32>(var_0.a.a.x, var_0.a.a.x, 1i, 0i))), -1i), arg_0).wxy;
    let var_2 = func_2(abs(abs(4294967295u)), Struct_4(1u & (select(24748u, 4294967295u, arg_0.a.a.b) << (select(30874u, 1u, arg_0.c.d) % 32u)), select(vec2<i32>(-2147483647i, ~(-1i)), min(vec2<i32>(27353i, -885i), vec2<i32>(global0.c, global2[_wgslsmith_index_u32(u_input.c, 17u)])), !(!vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 30u)]))), -var_1.x & global0.c), Struct_4(~_wgslsmith_mod_u32(global0.a, global0.a) | 1688u, firstTrailingBit(var_0.a.a.yz), 57729i));
    var var_3 = vec3<f32>(-533f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + 101f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b))) * arg_0.b));
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1131f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_0.b, arg_0.b)), _wgslsmith_f_op_f32(604f * 887f), global3[_wgslsmith_index_u32(56351u << (1u % 32u), 30u)])), _wgslsmith_f_op_f32(f32(-1f) * -2176f))), var_3.x));
    return func_1(arg_0, any(global1[_wgslsmith_index_u32(~(~countOneBits(64179u)), 25u)]), _wgslsmith_sub_u32(~(~0u ^ abs(var_2.a)), var_2.a)).a;
}

fn func_7(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = func_1(Struct_3(Struct_2(func_1(Struct_3(Struct_2(Struct_1(vec4<i32>(global0.b.x, arg_0.a.x, -101459i, global0.b.x), arg_1.x, var_0.a.x, global3[_wgslsmith_index_u32(38631u, 30u)])), -652f, Struct_1(vec4<i32>(10752i, -1i, global0.c, 2147483647i), false, arg_0.a.x, global3[_wgslsmith_index_u32(0u, 30u)]), Struct_2(arg_0)), !arg_1.x, 9516u).a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f)))), Struct_1(vec4<i32>(countOneBits(1i), reverseBits(0i), var_0.c, arg_0.a.x), true, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(4294967295u, 17u)] << (global0.a % 32u), arg_0.c), global0.c >= global0.b.x), Struct_2(Struct_1(var_0.a >> (vec4<u32>(89177u, global0.a, global0.a, 1u) % vec4<u32>(32u)), true, -global0.b.x, true))), _wgslsmith_mod_u32(global0.a, _wgslsmith_dot_vec2_u32(u_input.d.yz, u_input.d.wy)) < 88698u, ~(~u_input.d.x));
    global4 = 53860u;
    var var_2 = _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(1107f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-943f)))), _wgslsmith_f_op_f32(trunc(-408f)), any(vec3<bool>(var_0.d, true, arg_1.x))))), true));
    var_0 = var_1.a;
    return Struct_2(func_6(Struct_3(func_5(!arg_0.b, Struct_3(Struct_2(arg_0), -463f, Struct_1(arg_0.a, true, arg_0.c, arg_0.b), Struct_2(var_1.a)), vec4<bool>(var_1.a.d, global3[_wgslsmith_index_u32(1u, 30u)], arg_1.x, global3[_wgslsmith_index_u32(20776u, 30u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1297f, 1000f, 811f, 1459f) * vec4<f32>(1620f, 1431f, -649f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(854f, -453f))), var_1.a, Struct_2(func_1(Struct_3(Struct_2(arg_0), -844f, arg_0, Struct_2(Struct_1(arg_0.a, true, global2[_wgslsmith_index_u32(0u, 17u)], true))), true, 54089u).a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(Struct_3(func_1(Struct_3(Struct_2(Struct_1(vec4<i32>(1i, global0.b.x, global2[_wgslsmith_index_u32(1u, 17u)], -2147483647i), global3[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 17u)], global3[_wgslsmith_index_u32(4294967295u, 30u)])), 278f, Struct_1(vec4<i32>(global0.c, 2147483647i, -957i, -1i), false, -25822i, true), Struct_2(Struct_1(vec4<i32>(32444i, global2[_wgslsmith_index_u32(0u, 17u)], -2147483647i, global0.b.x), false, 52383i, global3[_wgslsmith_index_u32(u_input.b, 30u)]))), false, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(true, Struct_4(u_input.b, vec2<i32>(global0.b.x, 77204i), -1i))).x), func_5(func_1(Struct_3(Struct_2(Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(global0.a, 17u)], 1i, -2147483647i, -51378i), false, global2[_wgslsmith_index_u32(u_input.d.x, 17u)], global3[_wgslsmith_index_u32(0u, 30u)])), -1360f, Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(0u, 17u)], 2147483647i, global2[_wgslsmith_index_u32(38345u, 17u)], 21506i), global3[_wgslsmith_index_u32(u_input.c, 30u)], global2[_wgslsmith_index_u32(4294967295u, 17u)], true), Struct_2(Struct_1(vec4<i32>(0i, -2147483647i, global2[_wgslsmith_index_u32(3581u, 17u)], 2147483647i), global3[_wgslsmith_index_u32(4294967295u, 30u)], -1i, global3[_wgslsmith_index_u32(1u, 30u)]))), false, 4294967295u).a.b, Struct_3(Struct_2(Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], global0.c, global0.c, global2[_wgslsmith_index_u32(14225u, 17u)]), true, -18086i, global3[_wgslsmith_index_u32(9077u, 30u)])), -1000f, Struct_1(vec4<i32>(-1i, 4652i, 12837i, global0.c), global3[_wgslsmith_index_u32(global0.a, 30u)], -22692i, true), Struct_2(Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(3383u, 17u)], global2[_wgslsmith_index_u32(global0.a, 17u)], global2[_wgslsmith_index_u32(global0.a, 17u)], global0.c), global3[_wgslsmith_index_u32(0u, 30u)], -2147483647i, false))), vec4<bool>(global3[_wgslsmith_index_u32(global0.a, 30u)], global3[_wgslsmith_index_u32(u_input.a, 30u)], global3[_wgslsmith_index_u32(1u, 30u)], true), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1494f, 315f, 1092f, -878f)))).a, func_1(Struct_3(Struct_2(Struct_1(vec4<i32>(global0.c, -1i, global0.b.x, 1i), true, global0.c, true)), -2061f, Struct_1(vec4<i32>(-20685i, -1i, 24519i, global0.c), true, global0.b.x, true), Struct_2(Struct_1(vec4<i32>(global0.b.x, global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(global0.a, 17u)], global2[_wgslsmith_index_u32(1u, 17u)]), false, global0.b.x, global3[_wgslsmith_index_u32(u_input.b, 30u)]))), any(global1[_wgslsmith_index_u32(4294967295u, 25u)]), ~0u))), global1[_wgslsmith_index_u32(countOneBits(~17494u) >> (abs(_wgslsmith_div_u32(global0.a, 11915u << (global0.a % 32u))) % 32u), 25u)]);
    global4 = countOneBits(u_input.d.x);
    let var_1 = func_7(func_5(var_0.a.d, Struct_3(Struct_2(Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(1u, 17u)], var_0.a.a.x, global2[_wgslsmith_index_u32(global0.a, 17u)]), false, -27332i, true)), _wgslsmith_f_op_f32(f32(-1f) * -1195f), func_7(Struct_1(vec4<i32>(var_0.a.c, global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(u_input.b, 17u)], global0.b.x), false, var_0.a.a.x, false), !global1[_wgslsmith_index_u32(73143u, 25u)]).a, func_7(func_1(Struct_3(Struct_2(var_0.a), -553f, var_0.a, Struct_2(Struct_1(vec4<i32>(-34162i, global2[_wgslsmith_index_u32(4294967295u, 17u)], var_0.a.a.x, global0.b.x), var_0.a.b, global2[_wgslsmith_index_u32(u_input.a, 17u)], global3[_wgslsmith_index_u32(30153u, 30u)]))), global3[_wgslsmith_index_u32(u_input.c, 30u)], global0.a).a, !global1[_wgslsmith_index_u32(1u, 25u)])), global1[_wgslsmith_index_u32(global0.a, 25u)], vec4<f32>(_wgslsmith_f_op_f32(sign(-1616f)), _wgslsmith_f_op_f32(select(-692f, -1000f, true)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1000f) - _wgslsmith_f_op_f32(227f * -319f)))).a, !global1[_wgslsmith_index_u32(global0.a, 25u)]);
    let var_2 = ~vec3<u32>(global0.a, u_input.d.x << (abs(4294967295u) % 32u), ~(~global0.a)) >> (vec3<u32>(u_input.b, _wgslsmith_sub_u32(min(1u, ~0u), func_2(countOneBits(u_input.b), Struct_4(66757u, vec2<i32>(global2[_wgslsmith_index_u32(global0.a, 17u)], global0.b.x), global0.c), Struct_4(u_input.c, vec2<i32>(17137i, 1i), 3214i)).a), global0.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.b), vec2<u32>(13288u, 15953u)) % 32u)) % vec3<u32>(32u));
    var var_3 = Struct_1(-(~min(vec4<i32>(-18693i, 1i, global2[_wgslsmith_index_u32(52852u, 17u)], global2[_wgslsmith_index_u32(u_input.c, 17u)]), vec4<i32>(0i, 17862i, var_1.a.a.x, -1i) & vec4<i32>(-9881i, global0.b.x, -46000i, global0.c))), var_0.a.b, global0.c, !all(global1[_wgslsmith_index_u32(4427u, 25u)]));
    global4 = ~func_2(_wgslsmith_sub_u32(32973u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.a, 111124u), select(u_input.d.wz, var_2.xx, vec2<bool>(false, var_1.a.b)))), func_2(_wgslsmith_mult_u32(79237u, abs(7952u)), func_2(min(92408u, global0.a), func_2(0u, Struct_4(u_input.a, var_1.a.a.xy, 2147483647i), Struct_4(0u, var_1.a.a.wy, 7572i)), func_2(4294967295u, Struct_4(var_2.x, var_0.a.a.xy, -2147483647i), Struct_4(global0.a, var_1.a.a.yw, var_3.c))), func_2(~34554u, Struct_4(36552u, var_1.a.a.xy, global0.c), Struct_4(u_input.b, var_0.a.a.wz, 2147483647i))), func_2(1u, func_2(4095u, Struct_4(global0.a, vec2<i32>(var_0.a.a.x, 34865i), var_1.a.a.x), Struct_4(0u, vec2<i32>(-10293i, global0.b.x), var_1.a.c)), Struct_4(0u, -var_1.a.a.zx, ~global0.c))).a;
    let var_4 = -444f;
    var var_5 = _wgslsmith_mod_u32(u_input.b, 7171u >> (_wgslsmith_add_u32(0u, var_2.x) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(var_2.yz, vec2<u32>(var_2.x, u_input.c)), var_2.yy)));
}

