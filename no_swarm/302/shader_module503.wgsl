struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-831f, vec3<bool>(true, true, true));

var<private> global1: array<bool, 6>;

var<private> global2: array<f32, 30> = array<f32, 30>(1372f, -212f, 307f, -533f, -1410f, 1000f, 1039f, -1002f, 808f, 265f, -449f, -1463f, 1000f, 1000f, 942f, -998f, 1420f, 490f, 274f, -113f, -1258f, 682f, 1896f, 596f, -1550f, -900f, -609f, 139f, -306f, -294f);

var<private> global3: array<bool, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global0.a)))), -232f);
    var var_1 = var_0;
    let var_2 = Struct_2(u_input.d.x, Struct_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 30u)]), select(select(global0.b, !vec3<bool>(true, false, global0.b.x), global0.b), vec3<bool>(global0.b.x, all(vec4<bool>(global0.b.x, false, global0.b.x, true)), any(global0.b.yy)), all(!vec4<bool>(global3[_wgslsmith_index_u32(9151u, 5u)], false, global3[_wgslsmith_index_u32(10060u, 5u)], global0.b.x)))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f)))), !vec3<bool>(global3[_wgslsmith_index_u32(reverseBits(1u), 5u)], all(vec2<bool>(false, true)), select(false, true, global0.b.x))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1492f * 1939f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-377f * var_2.b.a)))), 1612f)));
    var var_4 = (~abs(select(vec2<u32>(31820u, 102518u), vec2<u32>(4294967295u, 1u), global0.b.x)) << (reverseBits(~select(vec2<u32>(1u, 4294967295u), vec2<u32>(27469u, 1u), global0.b.zy)) % vec2<u32>(32u))) | ~vec2<u32>(77812u, 1u);
    return select(select(var_2.b.b.yy, vec2<bool>(true, false), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.x, var_4.x), vec2<u32>(var_4.x, 4294967295u)) != var_4.x), !global0.b.zz, !(!any(!vec3<bool>(false, global0.b.x, global0.b.x))));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> vec3<bool> {
    global2 = array<f32, 30>();
    var var_0 = !vec3<bool>(1i < firstLeadingBit(u_input.b), !all(func_3()), arg_1);
    let var_1 = arg_2;
    var var_2 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)), 1u);
    let var_3 = Struct_1(-777f, select(select(select(var_1.b, vec3<bool>(false, var_1.b.x, arg_2.b.x), -357f >= global2[_wgslsmith_index_u32(0u, 30u)]), vec3<bool>(arg_2.b.x, -1379f < arg_2.a, global3[_wgslsmith_index_u32(1u, 5u)]), select(select(vec3<bool>(var_1.b.x, true, arg_0.x), vec3<bool>(arg_1, true, false), vec3<bool>(global3[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(17839u, 5u)])), vec3<bool>(arg_1, false, true), !var_0.x)), vec3<bool>(false, (u_input.d.x <= u_input.b) | true, true), arg_0.zxz));
    return arg_2.b;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<f32>) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_2.x), !select(arg_0.b, !func_2(vec4<bool>(false, arg_0.b.x, arg_0.b.x, global1[_wgslsmith_index_u32(14451u, 6u)]), false, arg_0), true));
    global1 = array<bool, 6>();
    global0 = Struct_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~1u, 30u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(~0u, 6u)], firstTrailingBit(-2147483647i) <= ~arg_1.x, true), global0.b, arg_0.a > _wgslsmith_f_op_f32(-arg_0.a)));
    global3 = array<bool, 5>();
    global3 = array<bool, 5>();
    return select(select(arg_0.b, !var_0.b, arg_0.b), !vec3<bool>(false, arg_0.b.x, -808f < _wgslsmith_f_op_f32(-arg_2.x)), global0.b);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(~arg_2, 30u)], arg_0.b);
    global2 = array<f32, 30>();
    global2 = array<f32, 30>();
    var var_1 = Struct_2(u_input.c, Struct_1(arg_1, vec3<bool>(true, (global3[_wgslsmith_index_u32(3728u, 5u)] || global3[_wgslsmith_index_u32(12648u, 5u)]) && true, true)), Struct_1(-448f, !(!func_1(arg_0, u_input.e.xw, vec2<f32>(-506f, -826f)))));
    let var_2 = Struct_2(_wgslsmith_sub_i32(var_1.a, ~(-4892i)), var_1.c, var_1.c);
    return Struct_1(-151f, select(select(var_0.b, var_2.b.b, func_3().x), vec3<bool>(true, true, any(vec4<bool>(global1[_wgslsmith_index_u32(112191u, 6u)], true, var_2.c.b.x, var_2.b.b.x))), var_2.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(global0.a, select(select(select(global0.b, global0.b, global0.b.x), func_1(Struct_1(global0.a, vec3<bool>(false, true, global0.b.x)), u_input.d, vec2<f32>(-1796f, 635f)), vec3<bool>(global3[_wgslsmith_index_u32(40805u, 5u)], global1[_wgslsmith_index_u32(48770u, 6u)], false)), global0.b, all(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 5u)], true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(58475u, 1u, 89772u) & countOneBits(1u), 30u)] * _wgslsmith_f_op_f32(sign(-932f)))), ~29593u);
    var var_1 = _wgslsmith_mod_i32(abs(_wgslsmith_dot_vec3_i32(u_input.e.zwy & vec3<i32>(u_input.b, 2147483647i, -67404i), -u_input.a)), -1i) == u_input.c;
    let var_2 = Struct_2(0i, Struct_1(751f, var_0.b), func_4(func_4(func_4(func_4(Struct_1(-1000f, vec3<bool>(false, true, global3[_wgslsmith_index_u32(27545u, 5u)])), 1452f, 67526u), -1176f, ~4294967295u), _wgslsmith_f_op_f32(ceil(-766f)), ~(~1u)), global2[_wgslsmith_index_u32(~1u, 30u)], _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 3519u)), abs(max(54509u, 4294967295u)))));
    var var_3 = 1u;
    global3 = array<bool, 5>();
    var_1 = global1[_wgslsmith_index_u32(4294967295u, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(-359f, -916f)), _wgslsmith_f_op_f32(global0.a + -1000f), 1f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1005f))), -323f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(34091u, 30u)])))), 5924u);
}

