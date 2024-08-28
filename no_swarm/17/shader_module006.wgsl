struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, true, false, false, true, false, true, true, true, false);

var<private> global1: array<i32, 15> = array<i32, 15>(8603i, 2147483647i, -5301i, 2147483647i, 0i, 2147483647i, i32(-2147483648), -1i, -1i, 17392i, -12973i, 55578i, 5962i, 2147483647i, -41840i);

var<private> global2: array<vec4<u32>, 28>;

var<private> global3: array<vec2<i32>, 22>;

var<private> global4: array<i32, 25> = array<i32, 25>(-1i, -904i, 2147483647i, -88602i, -10298i, 2147483647i, 1i, -20558i, 1i, 2147483647i, 0i, 0i, 0i, 1105i, -1i, -7328i, 0i, 14744i, -26522i, 31869i, i32(-2147483648), 1i, -11880i, i32(-2147483648), -11194i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>) -> vec3<bool> {
    let var_0 = Struct_2(max(arg_1.xz, min(_wgslsmith_add_vec2_u32(select(vec2<u32>(83120u, 4294967295u), vec2<u32>(20308u, u_input.b.x), true), vec2<u32>(1u, arg_1.x)), firstTrailingBit(vec2<u32>(arg_1.x, u_input.b.x)) << (min(vec2<u32>(u_input.b.x, 0u), u_input.b) % vec2<u32>(32u)))), min(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.x & arg_1.x, ~arg_1.x), 25u)], min(u_input.a, min(31187i, -27161i))) << (~max(1u ^ u_input.b.x, countOneBits(4418u)) % 32u));
    let var_1 = Struct_3(min(vec2<u32>(~_wgslsmith_sub_u32(4294967295u, 4294967295u), abs(u_input.b.x & arg_1.x)), ~(vec2<u32>(var_0.a.x, var_0.a.x) ^ u_input.b) & ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_0.a.x), u_input.b)), _wgslsmith_clamp_vec3_u32(reverseBits(arg_1), ~(select(arg_1, arg_1, true) | vec3<u32>(u_input.b.x, arg_1.x, arg_1.x)), ~select(_wgslsmith_mod_vec3_u32(vec3<u32>(60208u, arg_1.x, var_0.a.x), arg_1), arg_1, vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(9741u, 10u)]))), abs(reverseBits(arg_0)), global0[_wgslsmith_index_u32(0u, 10u)]);
    global2 = array<vec4<u32>, 28>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-388f, -1000f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1282f, -1783f)))))))), 265f, 1000f, vec2<i32>(-(~1i), select(~(-var_1.c.x), _wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(arg_0.x, -2147483647i)), !all(vec3<bool>(global0[_wgslsmith_index_u32(4481u, 10u)], false, global0[_wgslsmith_index_u32(0u, 10u)])))), vec3<bool>(global0[_wgslsmith_index_u32(0u, 10u)], true, any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(var_1.d, false, true, true), global0[_wgslsmith_index_u32(8027u, 10u)]), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(var_0.a.x, 10u)], false), !vec4<bool>(false, global0[_wgslsmith_index_u32(arg_1.x, 10u)], var_1.d, var_1.d)))));
    let var_3 = _wgslsmith_add_vec3_i32(abs(vec3<i32>(-1i) * -vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], 2147483647i, -1i)), vec3<i32>(global1[_wgslsmith_index_u32(~arg_1.x, 15u)], -1i, 0i));
    return vec3<bool>(all(vec4<bool>(true, all(var_2.e.zy), true, true)), var_2.e.x, false);
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1044f)), -1712f)), 1f) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(260f - arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_sub_vec2_i32(global3[_wgslsmith_index_u32(2069u, 22u)], global3[_wgslsmith_index_u32(1u & u_input.b.x, 22u)] << (vec2<u32>(firstTrailingBit(u_input.b.x), ~4294967295u) % vec2<u32>(32u))), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(14283u, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), func_3(vec4<i32>(2147483647i, -26839i, global4[_wgslsmith_index_u32(52372u, 25u)], global1[_wgslsmith_index_u32(u_input.b.x, 15u)]), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)), 10u)] & (2147483647i <= global1[_wgslsmith_index_u32(80628u, 15u)]), true), false | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 1u), vec3<u32>(u_input.b.x, 0u, u_input.b.x)) << (firstTrailingBit(u_input.b.x) % 32u), 10u)]));
    global3 = array<vec2<i32>, 22>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-109f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c, -1506f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c))));
    global2 = array<vec4<u32>, 28>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2107f, arg_0.x)))));
    return 20280u;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_2 {
    global3 = array<vec2<i32>, 22>();
    global4 = array<i32, 25>();
    let var_0 = !arg_1;
    global3 = array<vec2<i32>, 22>();
    var var_1 = ~_wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(0u >> (u_input.b.x % 32u), 25u)], global4[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1334f, 1053f))), 25u)] >> (84446u % 32u), -2147483647i);
    return Struct_2(vec2<u32>(_wgslsmith_div_u32(select(0u, _wgslsmith_add_u32(1u, 38963u), !arg_1.x), max(max(56211u, 7395u), u_input.b.x)), 0u), ~2147483647i);
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec2<u32> {
    global2 = array<vec4<u32>, 28>();
    var var_0 = Struct_3(vec2<u32>(func_2(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1515f))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, 35763u), vec2<u32>(arg_0.a.x, 25128u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.b.x), vec3<u32>(9024u, 24737u, u_input.b.x))), _wgslsmith_dot_vec2_u32(arg_0.a, vec2<u32>(4294967295u, 4294967295u)) >> ((1u >> (1u % 32u)) % 32u))), firstLeadingBit(vec3<u32>(~0u ^ ~arg_0.a.x, u_input.b.x, _wgslsmith_mod_u32(firstLeadingBit(u_input.b.x), 4294967295u))), ~_wgslsmith_mod_vec4_i32(~max(vec4<i32>(1i, arg_0.b, global1[_wgslsmith_index_u32(u_input.b.x, 15u)], arg_0.b), vec4<i32>(38545i, u_input.a, 0i, 2978i)), vec4<i32>(u_input.a, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 13039u), 25u)], ~28366i, 21976i)), any(!func_3(-vec4<i32>(1i, global4[_wgslsmith_index_u32(83641u, 25u)], global4[_wgslsmith_index_u32(arg_0.a.x, 25u)], global1[_wgslsmith_index_u32(u_input.b.x, 15u)]), reverseBits(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)))));
    var var_1 = Struct_3(~vec2<u32>(_wgslsmith_div_u32(func_1(Struct_1(vec2<f32>(arg_1, -1000f), arg_1, 506f, global3[_wgslsmith_index_u32(arg_0.a.x, 22u)], vec3<bool>(false, var_0.d, true)), vec4<bool>(var_0.d, global0[_wgslsmith_index_u32(4294967295u, 10u)], true, false)).a.x, 36660u), var_0.b.x), min(vec3<u32>(u_input.b.x, u_input.b.x, 81358u), ~var_0.b), vec4<i32>(19494i, 8038i, global1[_wgslsmith_index_u32(abs((u_input.b.x | 16985u) ^ var_0.a.x), 15u)], ~u_input.a), true);
    var var_2 = reverseBits(var_0.b);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(func_1(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(269f, 295f), vec2<f32>(-997f, -850f)), 457f, _wgslsmith_f_op_f32(-1000f * 414f), _wgslsmith_add_vec2_i32(global3[_wgslsmith_index_u32(u_input.b.x, 22u)], global3[_wgslsmith_index_u32(u_input.b.x, 22u)]), !vec3<bool>(global0[_wgslsmith_index_u32(65497u, 10u)], true, false)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(u_input.b.x | u_input.b.x, 10u)], true, global0[_wgslsmith_index_u32(92000u, 10u)] && global0[_wgslsmith_index_u32(u_input.b.x, 10u)])), _wgslsmith_div_f32(443f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1477f)), -1000f))), _wgslsmith_div_i32(reverseBits(_wgslsmith_mod_i32(~global1[_wgslsmith_index_u32(1u, 15u)], func_1(Struct_1(vec2<f32>(966f, -530f), 199f, 1302f, vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global4[_wgslsmith_index_u32(4294967295u, 25u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(0u, 10u)])), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(78459u, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)], true)).b)), reverseBits(global1[_wgslsmith_index_u32(abs(4294967295u), 15u)])));
    let var_1 = !(!vec4<bool>(select(true, global0[_wgslsmith_index_u32(44381u, 10u)] & false, !global0[_wgslsmith_index_u32(var_0.a.x, 10u)]), all(select(vec2<bool>(true, global0[_wgslsmith_index_u32(6761u, 10u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 10u)], true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 10u)], global0[_wgslsmith_index_u32(69659u, 10u)]))), global0[_wgslsmith_index_u32(abs(~76398u), 10u)], !global0[_wgslsmith_index_u32(~1u, 10u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-40472i, -_wgslsmith_sub_i32(1i, abs(global4[_wgslsmith_index_u32(29661u, 25u)])), firstLeadingBit(0i)), ~select(firstTrailingBit(select(vec3<u32>(var_0.a.x, var_0.a.x, 59742u), vec3<u32>(var_0.a.x, 4294967295u, 1u), global0[_wgslsmith_index_u32(1u, 10u)])), firstLeadingBit(~vec3<u32>(95321u, u_input.b.x, u_input.b.x)), var_1.www), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1290f)) + -227f));
}

