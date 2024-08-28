struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13>;

var<private> global1: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(276i, 18194i, 28131i, 0i), vec4<i32>(2147483647i, i32(-2147483648), 4075i, 41080i), vec4<i32>(46131i, 1i, 2147483647i, 1i), vec4<i32>(21154i, -10220i, -1i, i32(-2147483648)), vec4<i32>(-64416i, 12659i, 0i, 0i), vec4<i32>(0i, 2147483647i, 2147483647i, 0i), vec4<i32>(15955i, 62937i, -19519i, 2147483647i), vec4<i32>(-2923i, 0i, 15972i, 32069i), vec4<i32>(36982i, 41154i, 0i, 2147483647i), vec4<i32>(18810i, 12390i, 2147483647i, 37179i), vec4<i32>(19134i, 8155i, -33612i, -45784i), vec4<i32>(14058i, 0i, -4294i, i32(-2147483648)), vec4<i32>(-1646i, -41067i, 1i, 0i), vec4<i32>(77257i, 24339i, -34466i, 10543i), vec4<i32>(1i, -16640i, 1i, i32(-2147483648)), vec4<i32>(27173i, 0i, -20090i, 1i), vec4<i32>(-8253i, -1i, -1i, 2147483647i), vec4<i32>(0i, 4213i, -1i, 1i), vec4<i32>(32266i, -2916i, 43171i, -1i), vec4<i32>(1i, i32(-2147483648), 1i, 0i), vec4<i32>(2147483647i, -1i, 2147483647i, -35394i), vec4<i32>(-23640i, 6574i, i32(-2147483648), -10743i), vec4<i32>(-1i, i32(-2147483648), -24412i, 9489i), vec4<i32>(3937i, 18247i, i32(-2147483648), 2147483647i), vec4<i32>(2147483647i, -70047i, 12643i, 4206i), vec4<i32>(i32(-2147483648), 1i, -22452i, 16889i), vec4<i32>(2147483647i, 14953i, -1i, -3333i), vec4<i32>(38173i, 2147483647i, 2147483647i, 28546i));

var<private> global2: array<vec4<i32>, 24>;

var<private> global3: array<bool, 32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = !select(!vec4<bool>(!arg_1.x, false, true, all(vec4<bool>(false, arg_1.x, false, false))), vec4<bool>(all(select(vec4<bool>(true, false, arg_1.x, false), vec4<bool>(arg_1.x, global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(u_input.a.x, 32u)], true), false)), true, !all(vec3<bool>(arg_1.x, false, true)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(1775u, 24610u, u_input.a.x, u_input.a.x))), 32u)]), vec4<bool>(_wgslsmith_f_op_f32(-arg_0.a) < _wgslsmith_f_op_f32(-arg_0.a), true, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a.x, ~u_input.a.x), 32u)], abs(u_input.a.x) > 4294967295u));
    return arg_1;
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: vec2<bool>) -> f32 {
    global2 = array<vec4<i32>, 24>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-800f, arg_2.a), vec2<f32>(arg_2.a, arg_2.a))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(426f, arg_2.a))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a * arg_2.a)), -1056f)));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(154f * var_0.x);
    let var_3 = vec4<i32>(~(i32(-1i) * -arg_2.b.a), abs(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, arg_0), ~arg_0), 24u)], vec4<i32>(-arg_2.b.a, _wgslsmith_mod_i32(u_input.b.x, -16168i), u_input.b.x & 28702i, select(arg_2.b.a, u_input.b.x, true)))), -1i, _wgslsmith_clamp_i32(67987i, ~(-(-2288i ^ u_input.b.x)), arg_2.b.a >> (31221u % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * _wgslsmith_f_op_f32(round(var_0.x))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_f32(func_4(abs(u_input.a.x), !func_3(Struct_2(-2347f), select(vec2<bool>(global3[_wgslsmith_index_u32(119200u, 32u)], true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], false), false), Struct_2(arg_1.a)), Struct_4(-855f, arg_0), select(!func_3(arg_1, vec2<bool>(global3[_wgslsmith_index_u32(1u, 32u)], true), arg_1), func_3(Struct_2(arg_1.a), vec2<bool>(global3[_wgslsmith_index_u32(13434u, 32u)], true), arg_1), global3[_wgslsmith_index_u32(~u_input.a.x, 32u)]))), arg_0);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32) -> vec4<bool> {
    global0 = array<vec3<u32>, 13>();
    global3 = array<bool, 32>();
    var var_0 = select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz, _wgslsmith_div_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(u_input.a.zx, u_input.a.zx)), ~(~u_input.a.zx))), 32u)], !global3[_wgslsmith_index_u32(u_input.a.x, 32u)], global3[_wgslsmith_index_u32(countOneBits((1u ^ u_input.a.x) ^ 4294967295u), 32u)]);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))) + -779f) >= 143f;
    global1 = array<vec4<i32>, 28>();
    return !vec4<bool>(any(select(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 32u)], true, global3[_wgslsmith_index_u32(4294967295u, 32u)]), select(vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(77193u, 32u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 32u)], false, global3[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a.x, 32u)], true)), all(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 32u)])))), false, !global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(17027u), u_input.a.x), 32u)], global3[_wgslsmith_index_u32(~(~0u), 32u)]);
}

fn func_6(arg_0: vec4<bool>) -> Struct_3 {
    global1 = array<vec4<i32>, 28>();
    global2 = array<vec4<i32>, 24>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(func_4(~u_input.a.x, arg_0.zx, Struct_4(486f, Struct_1(-963i)), arg_0.zy)), -825f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(472f, 1922f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(803f, 689f), vec2<f32>(1386f, 345f), false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-439f, 1576f)) + vec2<f32>(769f, -1772f))))));
    var var_1 = Struct_3(func_2(Struct_1(u_input.b.x), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1286f, -634f))))).b, Struct_1(-abs(2147483647i)));
    return Struct_3(Struct_1(var_1.b.a), Struct_1(i32(-1i) * -21102i));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    return func_6(!func_5(func_2(Struct_1(u_input.b.x), arg_2), Struct_3(Struct_1(u_input.b.x), func_2(arg_1, arg_2).b), -42799i));
}

fn func_7(arg_0: bool, arg_1: Struct_3, arg_2: vec4<i32>) -> Struct_3 {
    global0 = array<vec3<u32>, 13>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-439f, -601f), _wgslsmith_f_op_f32(step(231f, -231f))) - _wgslsmith_f_op_f32(-2566f + 1065f))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a * 1122f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))));
    let var_2 = select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], !all(select(vec4<bool>(true, arg_0, global3[_wgslsmith_index_u32(u_input.a.x, 32u)], arg_0), vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(0u, 32u)], true), false))), vec2<bool>(true, true), select(vec2<bool>(!any(vec3<bool>(global3[_wgslsmith_index_u32(37493u, 32u)], false, true)), func_5(Struct_4(var_0.a, arg_1.a), Struct_3(arg_1.a, Struct_1(-3037i)), -41113i).x), vec2<bool>(!(-1000f != var_1.a), !arg_0), vec2<bool>(all(vec3<bool>(true, false, false)) && true, !(-1597f <= var_1.a))));
    var var_3 = 2147483647i;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    let var_1 = func_7(var_0.x, func_1(!vec4<bool>(true, false, true, global3[_wgslsmith_index_u32(17383u, 32u)]), Struct_1(-_wgslsmith_mod_i32(-18816i, u_input.b.x)), Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-260f, 312f, global3[_wgslsmith_index_u32(u_input.a.x, 32u)])))))), vec4<i32>(39064i, min(-1i, func_6(vec4<bool>(true, true, true, true)).b.a), -(~func_1(vec4<bool>(true, global3[_wgslsmith_index_u32(11231u, 32u)], var_0.x, var_0.x), Struct_1(14535i), Struct_2(1638f)).b.a), ~func_6(!vec4<bool>(global3[_wgslsmith_index_u32(22990u, 32u)], var_0.x, var_0.x, false)).b.a));
    let var_2 = u_input.b;
    global0 = array<vec3<u32>, 13>();
    var var_3 = vec2<u32>(countOneBits(~1u), u_input.a.x);
    let var_4 = Struct_1(func_2(Struct_1(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-9064i, u_input.b.x, var_1.a.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -46789i, -1i), vec3<i32>(-1i, 0i, 85510i), vec3<i32>(35021i, var_1.b.a, -1i)))), Struct_2(1f)).b.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1141f, 420f) * vec3<f32>(1000f, 335f, -868f))))))));
}

