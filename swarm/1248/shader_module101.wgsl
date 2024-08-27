struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 19>;

var<private> global1: array<f32, 19>;

var<private> global2: array<bool, 2> = array<bool, 2>(true, false);

var<private> global3: array<Struct_1, 2>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = ~0u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, -202f) + vec3<f32>(174f, -2439f, global1[_wgslsmith_index_u32(16352u, 19u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-252f, arg_0.x, -834f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 19u)], 1936f, arg_0.x) * vec3<f32>(1125f, arg_0.x, 960f))))))));
    global1 = array<f32, 19>();
    var var_2 = Struct_1(vec3<bool>(!(-1i >= (1i ^ u_input.a)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(12973u, 4294967295u), 2u)], global2[_wgslsmith_index_u32(max(1u, 1u), 2u)]), -reverseBits(_wgslsmith_add_vec4_i32(select(global0[_wgslsmith_index_u32(32184u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], false), global0[_wgslsmith_index_u32(4294967295u, 19u)] | global0[_wgslsmith_index_u32(4294967295u, 19u)])));
    var_2 = Struct_1(!(!(!var_2.a)), var_2.b);
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = true;
    let var_1 = arg_0.b.wwx;
    var var_2 = Struct_1(!vec3<bool>(false, arg_0.a.x, false), ~select(vec4<i32>(_wgslsmith_div_i32(u_input.a, -1i), u_input.a, 1i, arg_0.b.x), arg_2.b, vec4<bool>(!arg_0.a.x, true, func_3(vec2<f32>(970f, 1167f)), any(vec4<bool>(true, true, arg_0.a.x, true)))));
    let var_3 = global3[_wgslsmith_index_u32(4294967295u, 2u)];
    global3 = array<Struct_1, 2>();
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = 2677u;
    global0 = array<vec4<i32>, 19>();
    global0 = array<vec4<i32>, 19>();
    global3 = array<Struct_1, 2>();
    let var_1 = abs(_wgslsmith_add_i32(reverseBits(~(-1687i)), -_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.b.x, 21622i, 54i, 50334i), vec4<i32>(-1i, 25923i, 2147483647i, u_input.a))));
    return var_1;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(0u, 2u)];
    let var_1 = -vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, -28484i, -14954i) ^ vec3<i32>(-19351i, 2147483647i, 9038i), var_0.b.wwx), arg_1.b.x, func_4(func_2(Struct_1(arg_1.a, vec4<i32>(u_input.a, -11170i, -1i, arg_2.x)), ~vec3<u32>(0u, 4294967295u, 1u), Struct_1(vec3<bool>(arg_1.a.x, arg_1.a.x, false), vec4<i32>(-1i, -753i, 2147483647i, var_0.b.x))), arg_1));
    let var_2 = !(!(!select(select(var_0.a, vec3<bool>(global2[_wgslsmith_index_u32(1u, 2u)], false, false), vec3<bool>(var_0.a.x, true, var_0.a.x)), select(vec3<bool>(arg_1.a.x, arg_1.a.x, false), vec3<bool>(var_0.a.x, true, arg_1.a.x), arg_1.a.x), arg_2.x >= arg_1.b.x)));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(857u, countOneBits(1u)), _wgslsmith_sub_u32(75552u, ~(~37273u)))), 19u)];
    let var_4 = vec3<bool>(!(false | all(vec2<bool>(arg_1.a.x, arg_1.a.x))), true, true);
    return Struct_1(vec3<bool>(true || ((var_1.x & var_1.x) < min(u_input.a, 18133i)), !global2[_wgslsmith_index_u32(select(~4294967295u, ~22925u, var_0.a.x & true), 2u)], false), vec4<i32>(~(-var_0.b.x), -(~arg_2.x) << (firstLeadingBit(0u) % 32u), _wgslsmith_mod_i32(var_0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, 0i), var_0.b.wz)) ^ -_wgslsmith_dot_vec3_i32(var_0.b.xxx, vec3<i32>(0i, 15580i, arg_2.x)), firstTrailingBit(var_1.x)));
}

fn func_5(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-836f, 1085f) * vec2<f32>(-1215f, global1[_wgslsmith_index_u32(4294967295u, 19u)])), vec2<f32>(global1[_wgslsmith_index_u32(1u, 19u)], -1000f), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1593f, global1[_wgslsmith_index_u32(0u, 19u)]) + vec2<f32>(559f, global1[_wgslsmith_index_u32(17453u, 19u)])), any(arg_0.a.xy))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(1u, 19u)], 1072f) * vec2<f32>(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)]))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(463f, -997f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(27412u, 19u)]))), vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 2u)]))), false))) * vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 19u)]), arg_0.a.x | global2[_wgslsmith_index_u32(4294967295u, 2u)])))), -254f));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_div_u32(~1u, 41985u)), 1u), 2u)];
    let var_2 = Struct_1(vec3<bool>(!(!global2[_wgslsmith_index_u32(4294967295u, 2u)]) & true, !(!any(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(6071u, 2u)]))), arg_0.a.x | any(arg_0.a)), ~select(-var_1.b, -vec4<i32>(arg_0.b.x, -1i, 47061i, 0i), any(!vec4<bool>(arg_0.a.x, true, true, arg_0.a.x))));
    let var_3 = global3[_wgslsmith_index_u32((~_wgslsmith_div_u32(2617u, ~39170u) & select(54744u, _wgslsmith_add_u32(select(4999u, 1u, arg_0.a.x), firstTrailingBit(34016u)), false)) & 4294967295u, 2u)];
    let var_4 = Struct_1(vec3<bool>(true, var_2.a.x == all(vec3<bool>(var_3.a.x, false, false)), !any(var_1.a)), vec4<i32>(~(-2147483647i), 1i, var_1.b.x, -var_2.b.x));
    return global1[_wgslsmith_index_u32(firstLeadingBit(~min(1u, ~firstTrailingBit(12428u))), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(24704u, 19u)], 1f, global1[_wgslsmith_index_u32(44163u, 19u)]);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1515f))), 1828f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1477f - -1114f) * 1997f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1035f - global1[_wgslsmith_index_u32(1u, 19u)])))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(func_1(global1[_wgslsmith_index_u32(40144u, 19u)], Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(37191u, 2u)], false), global0[_wgslsmith_index_u32(25259u, 19u)]), vec3<i32>(-11434i, u_input.a, u_input.a), global1[_wgslsmith_index_u32(25771u, 19u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(1u, 19u)])) * _wgslsmith_f_op_f32(round(250f)))) * -350f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(min(reverseBits(~12033u), ~4294967295u), 19u)]));
    let var_2 = countOneBits(~_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_3 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -153f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-554f)))))), func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, global2[_wgslsmith_index_u32(1u, 2u)])) * 2330f), var_1.x)), Struct_1(!select(vec3<bool>(global2[_wgslsmith_index_u32(var_2.x, 2u)], global2[_wgslsmith_index_u32(0u, 2u)], true), vec3<bool>(false, true, false), vec3<bool>(global2[_wgslsmith_index_u32(var_2.x, 2u)], false, global2[_wgslsmith_index_u32(var_2.x, 2u)])), select(select(vec4<i32>(-778i, -2147483647i, u_input.a, -32168i), vec4<i32>(-15013i, 2147483647i, u_input.a, u_input.a), true), _wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(var_2.x, 19u)], vec4<i32>(u_input.a, -1i, -23910i, u_input.a)), select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(var_2.x, 2u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(var_2.x, 2u)], true, true), global2[_wgslsmith_index_u32(88778u, 2u)]))), vec3<i32>(abs(6015i), u_input.a, u_input.a), global1[_wgslsmith_index_u32(var_2.x, 19u)]), ~_wgslsmith_mod_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 0i, 49542i), vec3<i32>(u_input.a, -38920i, 2147483647i)), -vec3<i32>(0i, 1i, -13956i) | func_2(Struct_1(vec3<bool>(true, global2[_wgslsmith_index_u32(var_2.x, 2u)], global2[_wgslsmith_index_u32(var_2.x, 2u)]), global0[_wgslsmith_index_u32(var_2.x, 19u)]), vec3<u32>(var_2.x, var_2.x, var_2.x), Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(82999u, 2u)], true, global2[_wgslsmith_index_u32(var_2.x, 2u)]), global0[_wgslsmith_index_u32(1u, 19u)])).b.wxx), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 19u)]));
    global3 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(29660i, -vec4<i32>(-var_3.b.x >> (countOneBits(var_2.x) % 32u), ~var_3.b.x, u_input.a ^ -1i, i32(-1i) * -8807i), _wgslsmith_clamp_u32(19915u, ~(~4294967295u), firstLeadingBit(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_2.x, var_2.x)), vec2<u32>(var_2.x, var_2.x)))), firstTrailingBit(60280u));
}

