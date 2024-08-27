struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<f32, 30> = array<f32, 30>(-628f, 1605f, -970f, 1172f, -1181f, 322f, 1000f, -2077f, -349f, 882f, 1410f, 156f, -2377f, -698f, 703f, 2354f, -127f, -1100f, -1339f, 317f, -1544f, 291f, -414f, -436f, 636f, 1091f, -2814f, 875f, -942f, -137f);

var<private> global2: i32 = -7669i;

var<private> global3: array<vec3<u32>, 20>;

var<private> global4: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<bool>) -> vec3<i32> {
    global2 = max(u_input.b, select(u_input.b, u_input.a.x, true));
    let var_0 = firstTrailingBit(select(~(_wgslsmith_mod_vec3_u32(global3[_wgslsmith_index_u32(4294967295u, 20u)], vec3<u32>(29320u, 4294967295u, 614u)) >> (global3[_wgslsmith_index_u32(~45316u, 20u)] % vec3<u32>(32u))), min(global3[_wgslsmith_index_u32(0u, 20u)], vec3<u32>(max(8477u, 14776u), firstTrailingBit(4294967295u), 0u)), arg_0.zwz));
    global1 = array<f32, 30>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(var_0.x, 30u)])), -2130f);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -368f), var_1.x), var_1)), ~var_0.yx, _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(countOneBits(var_0.x), 30u)])), -61802i, var_1.x);
    return u_input.a.ywy;
}

fn func_4(arg_0: i32) -> vec2<f32> {
    let var_0 = global1[_wgslsmith_index_u32(0u ^ ~(~_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(119931u, 20u)], vec3<u32>(1u, 41931u, 0u)) ^ 4294967295u), 30u)];
    global2 = -2147483647i;
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1166f, -537f)))) * global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(64517u, 0u), vec2<u32>(21855u, 0u)) ^ 1u, 39964u)), 30u)]);
    global4 = -830f;
    global1 = array<f32, 30>();
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(833f, global1[_wgslsmith_index_u32(17492u, 30u)]) + vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(412f, global1[_wgslsmith_index_u32(1u, 30u)]) * vec2<f32>(global1[_wgslsmith_index_u32(1u, 30u)], 861f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(67796u, 30u)])) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], 1302f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(89257u, 30u)], global1[_wgslsmith_index_u32(33197u, 30u)])))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-746f, global1[_wgslsmith_index_u32(54209u, 30u)])), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1000f, global1[_wgslsmith_index_u32(0u, 30u)]))), !global0.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, reverseBits(8241u)), 30u)], -1345f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-921f, -344f), vec2<f32>(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(28736u, 30u)])) + vec2<f32>(global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(63905u, 30u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(68796u, 30u)], global1[_wgslsmith_index_u32(16402u, 30u)]))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> f32 {
    let var_0 = vec2<u32>(~min(_wgslsmith_clamp_u32(~13219u, _wgslsmith_dot_vec3_u32(vec3<u32>(174u, 1u, 6320u), vec3<u32>(4294967295u, 4294967295u, 1u)), min(4294967295u, 4294967295u)), _wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(25871u, 20u)], global3[_wgslsmith_index_u32(~4294967295u, 20u)])), 1u);
    var var_1 = u_input.a.yx;
    let var_2 = Struct_1(arg_0, vec2<u32>(~firstLeadingBit(37202u), ~4294967295u), arg_2, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    var var_3 = Struct_3(Struct_2(u_input.a.yy, u_input.b, arg_1.c), vec4<i32>(_wgslsmith_mod_i32(2147483647i, 29127i), u_input.b, ~(~(~(-2147483647i))), var_1.x), select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, false)), all(vec4<bool>(false, global0.x, true, global0.x))), !vec3<bool>(global0.x, true, true), true), vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -900f) >= _wgslsmith_f_op_f32(floor(arg_0.x)), global0.x && true, select(!global0.x, true, global0.x)), false));
    var var_4 = _wgslsmith_div_i32(~744i, _wgslsmith_dot_vec2_i32(vec2<i32>(max(0i, 85872i) & arg_1.b, ~(-var_1.x)), firstLeadingBit(arg_1.a) & func_3(vec4<bool>(var_3.c.x, false, global0.x, global0.x)).xx));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1175f + 803f)), var_2.e)), _wgslsmith_f_op_f32(round(var_2.e)), any(!(!var_3.c))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    let var_0 = _wgslsmith_clamp_i32(countOneBits(arg_0.a.x), arg_1.a.b, abs(~((u_input.a.x | arg_1.a.a.x) ^ _wgslsmith_div_i32(arg_0.a.x, 2147483647i))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(1u, 30u)]))));
    var var_2 = vec3<bool>(arg_1.c.x, true, select(true, all(vec4<bool>(arg_1.c.x || arg_1.c.x, all(arg_1.c.xy), true, arg_1.c.x)), false));
    let var_3 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_dot_vec3_i32(func_3(vec4<bool>(arg_1.c.x, true, global0.x, false)), ~(~arg_1.a.c)))), Struct_2(func_3(!(!vec4<bool>(arg_1.c.x, var_2.x, false, global0.x))).xx, 1i, u_input.a.wwy), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(14978u, 30576u, 67994u, 73770u), vec4<u32>(24707u, 4294967295u, 60158u, 1u)) ^ countOneBits(4294967295u)), ~max(_wgslsmith_sub_u32(44196u, 20559u), 1u)), 30u)], -17068i));
    let var_4 = !select(var_2.zy, select(!var_2.xy, arg_1.c.yz, vec2<bool>(true, true)), true);
    return -2147483647i;
}

fn func_1(arg_0: u32, arg_1: u32) -> vec2<bool> {
    global2 = _wgslsmith_clamp_i32(0i, -(i32(-1i) * -32802i), 44850i) & 0i;
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(func_2(Struct_2(vec2<i32>(-33167i, 1i), -1i, u_input.a.zxz), Struct_3(Struct_2(u_input.a.yx, -4781i, vec3<i32>(u_input.a.x, u_input.b, 26588i)), vec4<i32>(-847i, u_input.a.x, u_input.a.x, 13263i), vec3<bool>(global0.x, global0.x, true))) << (arg_0 % 32u), -33841i, u_input.a.x >> (arg_1 % 32u), firstTrailingBit(u_input.a.x)), u_input.a);
    global2 = ~2147483647i;
    var var_1 = -21458i;
    var var_2 = Struct_3(Struct_2(-func_3(vec4<bool>(global0.x, global0.x, global0.x, true)).zz, func_2(Struct_2(~u_input.a.yz, u_input.a.x, vec3<i32>(var_0.x, u_input.b, 1i)), Struct_3(Struct_2(vec2<i32>(var_0.x, u_input.b), u_input.b, u_input.a.wwx), _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.b, 21069i, -2147483647i), vec4<i32>(2365i, -15002i, var_0.x, u_input.a.x)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), global0.x))), (-u_input.a.zxy & -var_0.xzy) ^ vec3<i32>(~u_input.b, -u_input.b, var_0.x)), u_input.a, !select(!select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), global0.x), select(select(vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, global0.x, false), false), vec3<bool>(true, global0.x, global0.x), !global0.x), !global0.x));
    return vec2<bool>(var_2.c.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 30>();
    global1 = array<f32, 30>();
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(982f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(22891u, 30u)], global1[_wgslsmith_index_u32(1u, 30u)])))) * -349f)), global1[_wgslsmith_index_u32(~abs(1u), 30u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~max(0u, ~30440u), 30u)]), global1[_wgslsmith_index_u32(4294967295u, 30u)]);
    global0 = !(!func_1(1u, _wgslsmith_mult_u32(~0u, min(28102u, 0u))));
    var var_1 = vec4<u32>(~(~_wgslsmith_mult_u32(12919u, 9810u)), ~59431u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 1u, 1u), 0u) ^ 1u, ~4294967295u) | ~(~(~vec4<u32>(4294967295u, 4294967295u, 1693u, 1u)));
    let var_2 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_1.x, 30u)]);
    var var_3 = vec4<i32>(min(1i, ~(1i >> (1u % 32u))), -28521i, -(~25720i), abs(43495i));
    let x = u_input.a;
    s_output = StorageBuffer(61i, func_3(vec4<bool>(global0.x, any(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, true, true), vec3<bool>(global0.x, global0.x, global0.x))), global0.x, true)).x, _wgslsmith_div_i32(-(~_wgslsmith_add_i32(u_input.b, -49993i)), var_3.x), firstLeadingBit(vec4<i32>(var_3.x, u_input.b, var_3.x, _wgslsmith_sub_i32(-2653i, -18362i))));
}

