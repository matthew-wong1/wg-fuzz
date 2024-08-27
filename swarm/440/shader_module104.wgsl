struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32> = vec4<f32>(1603f, -234f, 419f, 831f);

var<private> global2: array<bool, 20> = array<bool, 20>(true, false, false, false, true, true, true, true, false, true, false, false, true, true, true, false, true, false, true, true);

var<private> global3: Struct_2 = Struct_2(vec2<f32>(-641f, -1842f));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: f32) -> vec4<bool> {
    let var_0 = Struct_1(arg_0.a.x, global0.b);
    global3 = arg_0;
    var var_1 = arg_0.a;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_1)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(global0.a, 1273f, arg_3, 1731f))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(471f, -1219f, var_0.a, -230f))))))));
    let var_2 = Struct_1(global0.a, 19597i & (~(-arg_2.x) | (i32(-1i) * -3040i)));
    return select(select(vec4<bool>(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 20u)], any(vec2<bool>(false, true)) | global2[_wgslsmith_index_u32(u_input.a >> (4294967295u % 32u), 20u)], !(true && global2[_wgslsmith_index_u32(u_input.a, 20u)]), !global2[_wgslsmith_index_u32(4429u, 20u)] | global2[_wgslsmith_index_u32(abs(0u), 20u)]), select(select(!vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(84547u, 20u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 20u)], false, true, true), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 20u)], false, global2[_wgslsmith_index_u32(u_input.a, 20u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(55447u, 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)]), vec4<bool>(global2[_wgslsmith_index_u32(27776u, 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)], global2[_wgslsmith_index_u32(30426u, 20u)]))), vec4<bool>(false, true, any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 20u)], true)), false), global2[_wgslsmith_index_u32(~u_input.a | ~1u, 20u)]), !vec4<bool>(var_1.x >= 815f, global2[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 20u)], global2[_wgslsmith_index_u32(1u, 20u)], select(global2[_wgslsmith_index_u32(u_input.a, 20u)], true, true))), vec4<bool>(!(!(-28718i != var_2.b)), false, var_2.b > global0.b, global2[_wgslsmith_index_u32(~(~(~50330u)), 20u)]), -488f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a)) - _wgslsmith_f_op_f32(floor(global0.a))) + var_1.x));
}

fn func_2() -> u32 {
    var var_0 = select(select(!(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)], true, global2[_wgslsmith_index_u32(u_input.a, 20u)])), select(select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 20u)], true, false, global2[_wgslsmith_index_u32(u_input.a, 20u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(3848u, 20u)], true, false, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 20u)], true, false, global2[_wgslsmith_index_u32(72092u, 20u)]), false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 20u)], global2[_wgslsmith_index_u32(0u, 20u)], false, global2[_wgslsmith_index_u32(3424u, 20u)])), !func_3(Struct_2(global3.a), vec4<f32>(global1.x, global3.a.x, -1575f, -768f), u_input.b, 297f), vec4<bool>(true, any(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 20u)], true)), all(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 20u)])), true)), !select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 20u)], true, global2[_wgslsmith_index_u32(0u, 20u)]), !vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.a, 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)]), false)), !(!func_3(Struct_2(vec2<f32>(global3.a.x, -1363f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(466f, 1454f, 1772f, 1302f) - vec4<f32>(global1.x, global3.a.x, -315f, global3.a.x)), ~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(sign(-286f)))), func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-global3.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, -1355f, global3.a.x, -704f)))), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.a.x)))));
    var var_1 = select(~u_input.a, _wgslsmith_sub_u32(u_input.a, ~1u), var_0.x);
    let var_2 = Struct_1(620f, _wgslsmith_add_i32(1i, abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-5997i, -12448i), u_input.b.x & u_input.b.x))));
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)) - 600f), global0.a, global1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2452f - -1515f), _wgslsmith_f_op_f32(f32(-1f) * -224f))), var_2.a, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(var_2.a + 1253f), -528f, global0.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, global3.a.x, -459f, var_2.a) + vec4<f32>(global0.a, global0.a, -250f, global0.a))))));
    global0 = var_2;
    return countOneBits(abs(u_input.a));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = -197f;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global1.xz))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global3.a)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1834f, global1.x)))))));
    var_1 = Struct_2(var_1.a);
    var var_2 = !(!arg_3);
    let var_3 = u_input.a;
    return Struct_2(_wgslsmith_f_op_vec2_f32(var_1.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a * var_1.a))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> u32 {
    var var_0 = !vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 20u)], !select(all(vec3<bool>(global2[_wgslsmith_index_u32(arg_2.x, 20u)], global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(28028u, 20u)])), false, arg_0.b < -1i), global2[_wgslsmith_index_u32(u_input.a, 20u)], 30790i == _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b, arg_1.b, arg_1.b), u_input.b), arg_0.b, arg_1.b));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.yx)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 604f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-263f, 1254f) * global3.a)))), global3.a));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a)));
    var_2 = global0.a;
    global3 = func_4(vec4<u32>(arg_3, 4294967295u, _wgslsmith_mult_u32(99101u, ~(~u_input.a)), ~abs(4294967295u)), Struct_1(_wgslsmith_f_op_f32(327f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(637f * arg_0.a))), _wgslsmith_mod_i32(8771i, firstTrailingBit(-40775i))), arg_1, false && (_wgslsmith_sub_u32(arg_2.x, func_2()) >= arg_2.x));
    return _wgslsmith_add_u32(u_input.a, 4294967295u);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = ~_wgslsmith_add_vec2_i32(u_input.b.zz, u_input.b.zx);
    var_0 = max(~select(vec2<i32>(i32(-1i) * -22456i, 1i), select(vec2<i32>(26948i, -12559i), min(u_input.b.yx, vec2<i32>(-10222i, -13090i)), vec2<bool>(global2[_wgslsmith_index_u32(arg_3.x, 20u)], false)), vec2<bool>(true, true)), u_input.b.xy);
    var var_1 = vec4<f32>(arg_1.a.x, -526f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -759f))), _wgslsmith_f_op_f32(1f - 902f));
    global2 = array<bool, 20>();
    var var_2 = _wgslsmith_f_op_f32(select(global3.a.x, _wgslsmith_f_op_f32(sign(198f)), arg_0));
    return arg_1;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = -8195i;
    global3 = func_4(~vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 6456u, u_input.a)), u_input.a, abs(func_2()), u_input.a), Struct_1(510f, 49199i), Struct_1(arg_1.a.x, ~54643i), global2[_wgslsmith_index_u32(4699u & func_2(), 20u)]);
    global2 = array<bool, 20>();
    let var_1 = arg_2;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)), arg_0));
    return Struct_2(vec2<f32>(-1368f, -651f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(u_input.a, ~_wgslsmith_sub_u32(max(u_input.a, u_input.a), _wgslsmith_mod_u32(49313u, u_input.a))) & ~_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(u_input.a, ~u_input.a));
    var var_1 = u_input.b.xx;
    var var_2 = func_6(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(337f, global0.a) + _wgslsmith_f_op_f32(trunc(global3.a.x))) + -1151f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)))), global0.a, 749f), func_5(all(!select(vec4<bool>(global2[_wgslsmith_index_u32(26102u, 20u)], true, false, true), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)], true), vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(u_input.a, 20u)]))), Struct_2(vec2<f32>(-1148f, -324f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global3.a.x, global1.x) - global1.xyz))), _wgslsmith_sub_vec3_u32(vec3<u32>(func_1(Struct_1(-1000f, var_1.x), Struct_1(1072f, global0.b), vec4<u32>(40277u, u_input.a, 4294967295u, 67401u), u_input.a), u_input.a & 0u, _wgslsmith_mod_u32(43963u, u_input.a)), ~(~vec3<u32>(0u, 50575u, 1u)))), Struct_1(-1000f, global0.b | (_wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.b.yz) | _wgslsmith_add_i32(10452i, -82726i))));
    global3 = Struct_2(func_6(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, 1678f, -1582f, _wgslsmith_f_op_f32(floor(509f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1359f, -781f, 276f, var_2.a.x) * vec4<f32>(-676f, -850f, -674f, global3.a.x))))), Struct_2(vec2<f32>(983f, 101f)), Struct_1(_wgslsmith_f_op_f32(min(var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1548f))), -countOneBits(global0.b))).a);
    var var_3 = func_5(global2[_wgslsmith_index_u32(u_input.a, 20u)], func_6(_wgslsmith_f_op_vec4_f32(vec4<f32>(-506f, -413f, _wgslsmith_div_f32(global1.x, global0.a), global3.a.x) + vec4<f32>(_wgslsmith_div_f32(global3.a.x, global1.x), _wgslsmith_f_op_f32(-841f * 658f), -1000f, _wgslsmith_f_op_f32(abs(var_2.a.x)))), func_4(vec4<u32>(~u_input.a, ~7667u, 4294967295u, 0u), Struct_1(_wgslsmith_f_op_f32(min(global1.x, 258f)), -u_input.b.x), Struct_1(_wgslsmith_f_op_f32(829f - global3.a.x), global0.b), any(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(22973u, 20u)], true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_sub_i32(0i, -2147483647i))), global1.zyz, ~firstLeadingBit(max(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a)), ~vec3<u32>(4294967295u, 7899u, u_input.a)))).a;
    var_3 = vec2<f32>(-626f, 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, u_input.b.yy, 525f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2005f * _wgslsmith_f_op_f32(f32(-1f) * -1821f))) * _wgslsmith_f_op_f32(round(global0.a))));
}

