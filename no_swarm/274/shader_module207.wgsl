struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(0u, 4294967295u, 50221u, 43377u, 1u, 8942u, 1u, 1u, 0u, 1u, 1u, 19630u, 16062u, 4294967295u, 0u, 15790u, 0u, 66646u, 1u, 30625u, 25456u, 26134u, 3093u, 4294967295u, 0u, 56784u);

var<private> global1: i32 = -50900i;

var<private> global2: f32 = 1151f;

var<private> global3: vec3<u32> = vec3<u32>(13780u, 1u, 25760u);

var<private> global4: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    global1 = _wgslsmith_div_i32(~(~_wgslsmith_mult_i32(1i, u_input.d.x)), arg_0) | -(~(-5617i));
    global1 = -17805i;
    global0 = array<u32, 26>();
    return global4.a;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(~(-(~(-global4.b.d.xww))));
    let var_1 = select(select(vec4<bool>(!any(vec3<bool>(false, global4.a.x, true)), true, false, true), !select(select(vec4<bool>(global4.a.x, global4.a.x, true, global4.a.x), vec4<bool>(global4.a.x, global4.a.x, global4.a.x, global4.a.x), vec4<bool>(false, true, global4.a.x, global4.a.x)), !vec4<bool>(global4.a.x, true, false, global4.a.x), vec4<bool>(true, true, true, true)), global4.a.x), !select(vec4<bool>(global4.a.x, !global4.a.x, any(vec2<bool>(global4.a.x, global4.a.x)), global4.a.x), !vec4<bool>(true, global4.a.x, global4.a.x, global4.a.x), select(all(vec4<bool>(false, false, false, false)), select(global4.a.x, global4.a.x, false), true)), all(select(vec2<bool>(true, true), select(func_3(var_0.a.x), select(global4.a, global4.a, global4.a), global4.a.x), vec2<bool>(false, func_3(26344i).x))));
    global3 = _wgslsmith_sub_vec3_u32(vec3<u32>(~reverseBits(_wgslsmith_clamp_u32(u_input.b, 9757u, 49844u)), 33031u, _wgslsmith_div_u32(u_input.b, 22966u)), ~(~vec3<u32>(~33923u, 19587u, abs(25659u))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(558f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-838f))))), -860f));
    var var_2 = Struct_1(1i, u_input.c, 41201i, global4.b.d);
    return Struct_2(countOneBits(vec4<u32>(abs(4294967295u), (global3.x | global3.x) << (22273u % 32u), global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(1u, 16094u)), 26u)], max(1u, min(1u, 14251u)))), Struct_1(~(-34518i), 1i, abs(~global4.b.b) ^ min(var_0.a.x & 27654i, _wgslsmith_div_i32(global4.b.b, -1i)), ~select(firstLeadingBit(var_2.d), _wgslsmith_mod_vec4_i32(var_2.d, global4.b.d), global4.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = 0u;
    let var_1 = ~global4.b.b;
    let var_2 = Struct_4(~(vec3<i32>(-global4.b.c, 1i, ~(-2147483647i)) | (countOneBits(arg_0.b.d.yyz) & _wgslsmith_mod_vec3_i32(arg_2.d.zyz, vec3<i32>(arg_2.c, 19501i, 21660i)))));
    let var_3 = Struct_3(vec2<bool>(arg_1.x, true), Struct_1(arg_0.b.d.x | ~min(arg_2.c, 0i), 63801i, ~(-countOneBits(17814i)), _wgslsmith_clamp_vec4_i32(min(select(vec4<i32>(-6294i, -2147483647i, 2147483647i, -73108i), vec4<i32>(var_1, var_1, arg_2.b, -62306i), vec4<bool>(false, arg_1.x, false, true)), ~global4.b.d), select(arg_0.b.d, select(arg_0.b.d, vec4<i32>(0i, -1635i, global4.b.c, var_2.a.x), false), !vec4<bool>(global4.a.x, true, global4.a.x, global4.a.x)), global4.b.d)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1004f, _wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_f_op_f32(step(1139f, -419f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global4.c)))))));
    var var_4 = Struct_3(select(!(!(!global4.a)), vec2<bool>(arg_1.x, true), arg_1.x), func_2().b, vec3<f32>(global4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -861f)), _wgslsmith_f_op_f32(-172f - global4.c.x)));
    return firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_mult_u32(~1u, _wgslsmith_clamp_u32(1u, arg_0.a.x, arg_0.a.x)), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global3.x, 26u)], 6286u) | (18143u ^ global3.x))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<i32>) -> Struct_4 {
    var var_0 = arg_2.x;
    global0 = array<u32, 26>();
    let var_1 = global4.a.x;
    let var_2 = vec4<i32>(-73988i, i32(-1i) * -1i, (u_input.c | _wgslsmith_mod_i32(abs(arg_3.x), arg_3.x)) | ~(-_wgslsmith_add_i32(3195i, 8156i)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(25727i >> (0u % 32u), 15337i), _wgslsmith_sub_i32(global4.b.a | global4.b.a, -8122i), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-35112i, 41580i, 2147483647i, arg_1.a)), vec4<i32>(u_input.d.x, global4.b.d.x, -39419i, -1i)), -1i), global4.b.d));
    let var_3 = vec2<u32>(~(select(arg_0 ^ arg_0, global0[_wgslsmith_index_u32(~4294967295u, 26u)], select(global4.a.x, global4.a.x, false)) & func_4(func_2(), vec4<bool>(true, true, true, true), global4.b)), firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 26u)], 4294967295u, 1u, u_input.a), vec4<u32>(0u, global0[_wgslsmith_index_u32(38894u, 26u)], 0u, global3.x) & vec4<u32>(u_input.a, 1u, 35142u, 1u))));
    return Struct_4(var_2.wxz);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: i32) -> vec4<u32> {
    let var_0 = func_1(u_input.a, func_2().b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(277f, _wgslsmith_f_op_f32(global4.c.x - _wgslsmith_f_op_f32(min(global4.c.x, global4.c.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(133f - 270f))), global4.c.x)), _wgslsmith_add_vec2_i32(select(~vec2<i32>(-1i, u_input.c), -global4.b.d.yw, func_3(-32887i)) & vec2<i32>(11768i, -1i), u_input.d));
    let var_1 = Struct_4(vec3<i32>(arg_2.a.x, ~abs(var_0.a.x), 2147483647i));
    let var_2 = func_2().b;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global4.c.x, global4.c.x, false)) * -603f), global4.c.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1034f)));
    var var_3 = func_1(arg_0.x, var_2, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-148f, -305f, global4.c.x, 1045f), vec4<f32>(global4.c.x, global4.c.x, global4.c.x, global4.c.x), false)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-993f, global4.c.x, global4.c.x, -485f) + vec4<f32>(-473f, 1000f, global4.c.x, -2857f))) + vec4<f32>(_wgslsmith_f_op_f32(round(global4.c.x)), _wgslsmith_f_op_f32(global4.c.x - 1259f), -1000f, _wgslsmith_f_op_f32(-global4.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.c.x, 1802f, 1130f, global4.c.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-413f, -1132f, 1480f, -697f))) - vec4<f32>(_wgslsmith_f_op_f32(global4.c.x * 1494f), _wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(global4.c.x - global4.c.x), _wgslsmith_f_op_f32(-global4.c.x))))), _wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -22544i, ~u_input.c) >> (vec2<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 26u)], 26u)], u_input.b), ~global0[_wgslsmith_index_u32(global3.x, 26u)]) % vec2<u32>(32u)), func_2().b.d.yx));
    return countOneBits(~vec4<u32>(global3.x, 33141u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(20642u, 26u)], _wgslsmith_dot_vec2_u32(arg_1, arg_1)), ~(~1u)));
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: Struct_4, arg_3: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(min(-924f, -1264f)))));
    var var_1 = _wgslsmith_f_op_f32(step(-511f, -316f));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1636f, var_0, 552f, 785f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-785f, global4.c.x, global4.c.x, -393f), vec4<f32>(-227f, 771f, -2058f, global4.c.x), vec4<bool>(false, true, true, global4.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.c.x, var_0, global4.c.x, 272f) - vec4<f32>(var_0, -1220f, -675f, -701f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-141f, -555f, var_0, global4.c.x))))), !vec4<bool>(all(vec3<bool>(global4.a.x, false, global4.a.x)), true, any(vec4<bool>(true, global4.a.x, global4.a.x, false)), global4.a.x))));
    var var_3 = Struct_2(_wgslsmith_mod_vec4_u32(~firstLeadingBit(firstTrailingBit(vec4<u32>(4294967295u, global3.x, global3.x, global3.x))), arg_0.a), global4.b);
    var_1 = global4.c.x;
    return select(select(vec3<bool>(select(arg_3, false, any(vec2<bool>(true, global4.a.x))), false, true), !vec3<bool>(!global4.a.x, true, arg_3 | global4.a.x), vec3<bool>(func_3(_wgslsmith_add_i32(0i, arg_0.b.c)).x, all(!vec4<bool>(arg_3, true, false, arg_3)), global4.a.x)), !(!select(select(vec3<bool>(true, arg_3, false), vec3<bool>(false, global4.a.x, global4.a.x), false), vec3<bool>(global4.a.x, false, global4.a.x), all(global4.a))), !vec3<bool>(arg_3, true, all(vec3<bool>(arg_3, arg_3, global4.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(func_5(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(global3.x, 4294967295u, global0[_wgslsmith_index_u32(0u, 26u)]), vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 26u)], u_input.b), vec3<bool>(true, false, true)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(23213u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)])), vec3<u32>(u_input.a, global3.x, 5540u) ^ vec3<u32>(global0[_wgslsmith_index_u32(global3.x, 26u)], 1455u, 15700u)), global3.yx | global3.zx, func_1(1u, Struct_1(-54264i, -1i, global4.b.d.x, global4.b.d), vec4<f32>(global4.c.x, -134f, 1026f, 986f), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(30354i, u_input.d.x))), -2147483647i), Struct_1(u_input.c, ~u_input.c & (global4.b.a >> (99938u % 32u)), 137i, _wgslsmith_div_vec4_i32(~global4.b.d, vec4<i32>(-2147483647i, 33899i, u_input.d.x, -2147483647i)))), 18918u, Struct_4(countOneBits(select(_wgslsmith_mod_vec3_i32(vec3<i32>(global4.b.b, 10829i, -19247i), global4.b.d.yzz), select(vec3<i32>(u_input.c, -2147483647i, 2147483647i), vec3<i32>(u_input.c, 26996i, -16453i), vec3<bool>(true, global4.a.x, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, global4.a.x, true), false)))), !global4.a.x);
    var var_1 = _wgslsmith_div_f32(global4.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c.x * 509f) + _wgslsmith_f_op_f32(-1171f - 1260f)));
    let var_2 = global4.b.d;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-861f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -274f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.c.x), global4.c.x)))));
    global1 = _wgslsmith_div_i32(-global4.b.a, func_2().b.b);
    var_0 = !(!select(!(!vec3<bool>(true, global4.a.x, global4.a.x)), !(!vec3<bool>(false, global4.a.x, false)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-776f, global4.c.x, false)))));
}

