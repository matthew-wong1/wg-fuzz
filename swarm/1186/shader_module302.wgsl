struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: i32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, true, false, true, true, true, false, true, true, true, true, true, true, false, true, false, false, false, false, true, false, false, false, false, false, true, false, false, false, true);

var<private> global1: Struct_2 = Struct_2(vec2<bool>(true, true), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), 1i, vec2<bool>(false, false), true), vec4<bool>(true, true, false, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> bool {
    var var_0 = u_input.c.x;
    global1 = arg_1;
    var var_1 = global1.b;
    var var_2 = var_1.d;
    var_1 = arg_1.b;
    return false;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = arg_3;
    var var_1 = Struct_1(!select(arg_2.b.a, select(arg_2.b.a, arg_1.a, arg_1.d.x), select(!vec4<bool>(true, global1.a.x, false, global0[_wgslsmith_index_u32(var_0.x, 30u)]), select(global1.c, global1.b.a, vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 30u)], false, true)), false)), vec4<bool>(global0[_wgslsmith_index_u32(arg_3.x, 30u)], global0[_wgslsmith_index_u32(23351u, 30u)], global0[_wgslsmith_index_u32(3906u, 30u)], true), (-arg_1.c ^ (abs(52380i) | (arg_2.b.c & global1.b.c))) ^ ~arg_1.c, arg_2.a, func_2(arg_0.x, Struct_2(!vec2<bool>(arg_2.c.x, false), arg_2.b, select(vec4<bool>(true, arg_2.b.d.x, true, true), arg_1.b, vec4<bool>(arg_2.a.x, false, arg_1.e, global1.c.x)))));
    let var_2 = Struct_3(arg_2);
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), 578f, _wgslsmith_f_op_f32(471f * arg_0.x)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, arg_0.x, -128f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(arg_0.x, 981f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -476f), _wgslsmith_f_op_f32(f32(-1f) * -270f))))));
    let var_4 = -_wgslsmith_sub_i32(arg_1.c, 13805i);
    return select(select(!global1.b.d, !select(!arg_1.d, select(var_1.a.zz, vec2<bool>(var_1.a.x, global0[_wgslsmith_index_u32(var_0.x, 30u)]), arg_1.a.x), !var_1.b.xy), all(vec2<bool>(true, true))), select(!(!var_1.d), var_2.a.c.yz, var_1.a.xy), !arg_1.a.yx);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = -165f;
    let var_1 = -countOneBits(global1.b.c);
    global0 = array<bool, 30>();
    global1 = Struct_2(!global1.c.wz, Struct_1(!global1.c, vec4<bool>(!func_2(-570f, Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global1.a.x), Struct_1(global1.c, global1.c, -2147483647i, vec2<bool>(true, global1.a.x), true), vec4<bool>(global1.a.x, true, global1.b.b.x, false))), global1.b.b.x, false, !(!global0[_wgslsmith_index_u32(u_input.c.x, 30u)])), 1i, vec2<bool>(all(select(vec4<bool>(true, global0[_wgslsmith_index_u32(17256u, 30u)], false, global1.b.e), global1.b.a, global1.b.a)), arg_0.x > _wgslsmith_f_op_f32(trunc(810f))), true), vec4<bool>(~firstTrailingBit(1i) > _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 25604i), vec2<i32>(16427i, 2147483647i)), -u_input.b.xy), true, any(!global1.c), global1.c.x));
    var var_2 = Struct_3(Struct_2(!select(!vec2<bool>(global1.a.x, global1.c.x), vec2<bool>(true, global0[_wgslsmith_index_u32(34522u, 30u)]), func_3(arg_0.yx, Struct_1(vec4<bool>(true, global1.b.b.x, false, true), global1.c, var_1, vec2<bool>(false, global1.a.x), global1.c.x), Struct_2(global1.a, Struct_1(vec4<bool>(false, global1.b.d.x, global1.b.b.x, true), vec4<bool>(false, global0[_wgslsmith_index_u32(63855u, 30u)], global1.b.e, global0[_wgslsmith_index_u32(28061u, 30u)]), global1.b.c, global1.b.d, global0[_wgslsmith_index_u32(74604u, 30u)]), global1.c), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))), Struct_1(!global1.c, select(!global1.c, !global1.b.a, vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 30u)], false)), _wgslsmith_div_i32(-30394i, ~1i), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 30u)], true), true), !vec4<bool>(true, true, -482f >= var_0, true)));
    return Struct_1(select(var_2.a.b.b, vec4<bool>(false, var_2.a.c.x, var_2.a.a.x, global1.a.x), global1.c), var_2.a.b.a, -21035i, !func_3(arg_0.yx, global1.b, var_2.a, ~u_input.c | reverseBits(vec3<u32>(0u, u_input.c.x, u_input.c.x))), global0[_wgslsmith_index_u32(~(~0u), 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(!select(!(!global1.a), global1.b.b.xw, vec2<bool>(true, true)), func_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-249f - 613f), _wgslsmith_f_op_f32(-1112f + -139f))), _wgslsmith_f_op_f32(2334f + -1486f), 225f), u_input.b.zw), vec4<bool>(global1.c.x, global1.a.x, !global1.c.x, false));
    global1 = Struct_2(global1.a, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(217f, 444f, -2748f), vec3<f32>(-1615f, 179f, -922f), vec3<bool>(false, true, true))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-613f, 857f, -2110f) * vec3<f32>(-1797f, -1770f, -780f))))), u_input.b.wx), global1.c);
    var var_0 = Struct_1(vec4<bool>(all(global1.c.www), true, global1.c.x | !(!global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), _wgslsmith_f_op_f32(select(-1289f, 1206f, !global0[_wgslsmith_index_u32(u_input.c.x, 30u)])) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(591f * 1203f) + -353f)), !(!func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1107f, 1000f, -1610f)), _wgslsmith_mod_vec2_i32(u_input.b.yw, u_input.b.wy)).b), ~(-(~_wgslsmith_dot_vec2_i32(u_input.b.wx, u_input.b.zw))), !(!select(!vec2<bool>(global1.c.x, true), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec2<bool>(global0[_wgslsmith_index_u32(55664u, 30u)], true))), global1.a.x);
    var_0 = Struct_1(!select(select(vec4<bool>(true, var_0.b.x, global0[_wgslsmith_index_u32(u_input.c.x, 30u)], false), func_1(vec3<f32>(-207f, -2323f, 584f), u_input.b.xx).b, any(var_0.b)), !vec4<bool>(global1.c.x, false, var_0.a.x, false), vec4<bool>(true, global1.a.x, true, false)), !vec4<bool>(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1808f, 542f) + vec2<f32>(305f, 1000f)), func_1(vec3<f32>(1957f, 385f, -363f), vec2<i32>(var_0.c, -28519i)), Struct_2(vec2<bool>(var_0.a.x, true), Struct_1(var_0.a, vec4<bool>(var_0.d.x, global0[_wgslsmith_index_u32(u_input.c.x, 30u)], true, true), -2147483647i, var_0.a.xw, global1.a.x), var_0.b), _wgslsmith_mod_vec3_u32(u_input.c, vec3<u32>(0u, 0u, u_input.c.x))).x, all(select(global1.a, vec2<bool>(global1.b.b.x, true), vec2<bool>(false, false))), global0[_wgslsmith_index_u32(~1u >> (~u_input.c.x % 32u), 30u)], all(var_0.a.xy)), _wgslsmith_clamp_i32(~(global1.b.c & (global1.b.c << (u_input.c.x % 32u))), _wgslsmith_add_i32(var_0.c, ~var_0.c) & var_0.c, ~(-1i)), global1.a, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(695f))) == _wgslsmith_f_op_f32(f32(-1f) * -1183f)) && false);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-727f * 534f), 522f, _wgslsmith_f_op_f32(326f - -338f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-835f, 174f, -745f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(601f, 1608f, 757f)))), !any(var_0.b.zzy)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-939f, 1321f, -528f)), vec3<f32>(_wgslsmith_f_op_f32(abs(-374f)), _wgslsmith_div_f32(-475f, 1796f), _wgslsmith_f_op_f32(abs(-463f))), vec3<bool>(!global0[_wgslsmith_index_u32(u_input.c.x, 30u)], !global1.a.x, global1.a.x | global0[_wgslsmith_index_u32(u_input.c.x, 30u)])))));
    let var_2 = var_1.zx;
    let var_3 = Struct_3(Struct_2(select(func_3(_wgslsmith_f_op_vec2_f32(floor(var_1.zy)), global1.b, Struct_2(vec2<bool>(true, false), global1.b, var_0.b), u_input.c), global1.c.zw, select(global1.b.e, var_0.d.x, global0[_wgslsmith_index_u32(52148u, 30u)]) & true), Struct_1(vec4<bool>(var_0.b.x, !global0[_wgslsmith_index_u32(u_input.c.x, 30u)], all(var_0.b.wz), global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), var_0.a, _wgslsmith_add_i32(_wgslsmith_div_i32(513i, global1.b.c), 41207i), var_0.d, global1.c.x), vec4<bool>(true, !(u_input.b.x <= 1i), true, false)));
    global1 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(select(firstTrailingBit(u_input.b.zxz), u_input.b.yyz & vec3<i32>(global1.b.c, var_3.a.b.c, -1i), false)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-345f, -397f, false))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_sub_i32(abs(u_input.b.x), -2147483647i));
}

