struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-1i, -585f), Struct_1(-1i, 595f), Struct_1(0i, 1000f), Struct_1(1i, 1396f), Struct_1(-30505i, 1703f), Struct_1(1i, 1000f), Struct_1(-17162i, 947f), Struct_1(-1i, -237f), Struct_1(-1i, 970f), Struct_1(-62790i, -532f), Struct_1(48190i, -1240f), Struct_1(28944i, -928f), Struct_1(i32(-2147483648), -411f), Struct_1(0i, -212f), Struct_1(2147483647i, 1984f), Struct_1(i32(-2147483648), -224f), Struct_1(-23758i, -684f), Struct_1(2147483647i, -674f), Struct_1(i32(-2147483648), 1232f), Struct_1(i32(-2147483648), 675f), Struct_1(i32(-2147483648), -1100f), Struct_1(-19332i, 1372f), Struct_1(-1i, 141f), Struct_1(-32017i, 2047f), Struct_1(-37060i, -848f), Struct_1(-1i, 184f), Struct_1(7454i, 1120f), Struct_1(i32(-2147483648), 464f), Struct_1(-65916i, -838f), Struct_1(0i, -667f));

var<private> global1: u32 = 4294967295u;

var<private> global2: Struct_1 = Struct_1(0i, 336f);

var<private> global3: vec4<i32> = vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), i32(-2147483648));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: u32) -> vec4<i32> {
    global1 = 4294967295u;
    let var_0 = vec4<u32>(abs(_wgslsmith_sub_u32(57720u, _wgslsmith_dot_vec2_u32(u_input.a.xw, vec2<u32>(u_input.a.x, 38726u)) & ~arg_2)), arg_2, firstLeadingBit(reverseBits(~_wgslsmith_dot_vec3_u32(u_input.a.yzw, u_input.a.yzy))), max(arg_2, u_input.a.x));
    var var_1 = select(vec4<bool>(42038u != var_0.x, true, arg_0, !arg_0), vec4<bool>(arg_0 & false, arg_0, arg_0, all(!select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)))), false);
    global1 = 0u;
    let var_2 = global0[_wgslsmith_index_u32(~1u, 30u)];
    return select(vec4<i32>(global2.a, 2147483647i, min(global3.x, 1i), 1i), vec4<i32>(-1i) * -vec4<i32>(global2.a >> (19257u % 32u), max(0i, var_2.a), 2147483647i, 0i), !(!var_1.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = Struct_1(~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.b.x, u_input.b.x, -8527i), vec3<i32>(14342i, arg_3.a, arg_3.a)), countOneBits(vec3<i32>(global3.x, global2.a, arg_3.a))), -arg_3.a), -1650f);
    global3 = func_3(false || (1u <= abs(u_input.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(553f, -1000f, 871f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -719f, arg_3.b) - vec3<f32>(arg_1.x, 1000f, 1437f))), arg_0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(565f, var_0.b, 178f)) * vec3<f32>(arg_1.x, -101f, -406f)))), countOneBits(1u));
    var var_1 = Struct_1(~max(var_0.a, 6715i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1813f, arg_3.b, true)))))));
    let var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~u_input.d.yy);
    var_1 = global0[_wgslsmith_index_u32(u_input.d.x, 30u)];
    return _wgslsmith_div_vec3_f32(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(562f, global2.b, -181f) + vec3<f32>(199f, -330f, 797f))) + _wgslsmith_f_op_vec3_f32(-arg_0))));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1621f, -751f, global2.b) + vec3<f32>(global2.b, global2.b, global2.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1317f, global2.b) * vec2<f32>(553f, 1689f)), Struct_1(-2147483647i, 107f), Struct_1(0i, global2.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1482f, global2.b, global2.b)) + vec3<f32>(-598f, 727f, 1534f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-135f, global2.b, global2.b))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, 1130f, global2.b) - vec3<f32>(global2.b, global2.b, global2.b))))));
    let var_1 = select(select(arg_2.xxz, arg_2.xyw, vec3<bool>(true, !(!arg_0), arg_0)), !select(select(select(arg_2.yzz, arg_2.xyw, true), select(vec3<bool>(false, arg_2.x, false), arg_2.zwx, vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), true), vec3<bool>(arg_0, true, true), vec3<bool>(true, true, !arg_0)), !select(arg_2.wyx, arg_2.zzz, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -54659i, u_input.b.x), vec3<i32>(30364i, 20135i, global3.x)) != -u_input.e));
    global3 = u_input.b;
    var var_2 = Struct_1(57113i, _wgslsmith_f_op_f32(step(global2.b, -1056f)));
    var var_3 = arg_2.zzz;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + var_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, vec2<i32>(-1i) * -global3.yw, select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, false, true), true)))) + _wgslsmith_f_op_f32(-644f + global2.b));
    global1 = u_input.d.x;
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.d.x, u_input.d.x) & ~0u, 30u)];
    global0 = array<Struct_1, 30>();
    var var_2 = Struct_1(~(i32(-1i) * -2147483647i), 1f);
    var var_3 = !select(select(vec3<bool>(true, u_input.a.x < 0u, false), vec3<bool>(2266f < var_1.b, any(vec4<bool>(true, false, false, false)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), any(vec4<bool>(false, true, true, false)))), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true));
    var var_4 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.d.x, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(u_input.d.x, 0u)), ~_wgslsmith_add_u32(9271u, var_4.x)), u_input.d.x), var_1.a, -_wgslsmith_div_i32(abs(1i), ~global2.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -455f), -348f)), vec4<u32>(70305u, u_input.d.x, ~_wgslsmith_add_u32(1u, u_input.a.x), ~(~13217u)));
}

