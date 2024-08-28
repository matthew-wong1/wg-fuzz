struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(198f, -411f, -148f, 211f, -614f, 2331f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = vec3<i32>(u_input.d.x, ~countOneBits(59327i), select(-8589i, u_input.c, false));
    let var_1 = arg_1.a.x;
    var_0 = -(~(~u_input.a));
    var var_2 = Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-359f)))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x * _wgslsmith_f_op_f32(step(362f, arg_3.a.x))))));
    var var_3 = _wgslsmith_add_u32(6358u, select(_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(22843u, 20731u), ~0u)), _wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(93530u, 57682u), ~0u)), var_2.a.x >= arg_0.x));
    return !any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)));
}

fn func_2() -> Struct_1 {
    global0 = array<f32, 6>();
    let var_0 = !vec4<bool>(true, true & func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 6u)], -464f) * vec2<f32>(global0[_wgslsmith_index_u32(0u, 6u)], -661f)), Struct_1(vec4<f32>(-1000f, -104f, 914f, global0[_wgslsmith_index_u32(24997u, 6u)])), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(1u, 6u)], 1988f, 652f, global0[_wgslsmith_index_u32(33049u, 6u)])), Struct_1(vec4<f32>(1069f, -1327f, global0[_wgslsmith_index_u32(0u, 6u)], 549f))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false))), true);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1538f), _wgslsmith_f_op_f32(-1035f * _wgslsmith_f_op_f32(sign(1412f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0[_wgslsmith_index_u32(1u, 6u)]) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-321f, global0[_wgslsmith_index_u32(20575u, 6u)], global0[_wgslsmith_index_u32(26624u, 6u)], 3275f))))))));
    var var_2 = 33447u << (0u % 32u);
    var var_3 = select(vec2<bool>(!(!(!var_0.x)), false), select(vec2<bool>(!var_0.x, false), vec2<bool>(var_0.x, true), any(!vec4<bool>(true, false, false, var_0.x)) || true), true);
    return Struct_1(var_1.a);
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(u_input.c & min(i32(-1i) * -u_input.d.x, 1i), reverseBits(u_input.c));
    let var_1 = arg_0;
    var var_2 = func_2();
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(var_2.a)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, global0[_wgslsmith_index_u32(arg_1.x, 6u)], -601f, -139f), _wgslsmith_f_op_vec4_f32(var_2.a - vec4<f32>(var_2.a.x, -336f, 273f, var_2.a.x)))))))));
    var var_4 = func_2();
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_0 = countOneBits(-2147483647i);
    var var_1 = u_input.b.wzy;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.a.x - _wgslsmith_f_op_f32(-1201f * _wgslsmith_f_op_f32(trunc(arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_2().a.x, -675f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(68380u, 6u)] - -664f))) - _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_div_f32(879f, arg_0.a.x)))), true));
    return Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(308f, arg_2.a.x))), 1218f), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) + _wgslsmith_f_op_f32(434f + arg_1))), _wgslsmith_f_op_f32(sign(609f)), func_1(true, ~vec3<u32>(1u, 1u, 1u)).a.x));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_1 {
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_0 = arg_0;
    global0 = array<f32, 6>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_0.a.xzy);
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_0.a))), _wgslsmith_f_op_vec4_f32(-arg_0.a)));
}

fn func_6(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_add_vec3_u32(~abs(vec3<u32>(1u, max(39233u, 4294967295u), 53379u)), ~countOneBits(vec3<u32>(_wgslsmith_add_u32(59994u, 1u), abs(8910u), select(32764u, 1u, false))));
    global0 = array<f32, 6>();
    var var_1 = 38065u;
    return ~vec4<u32>(~max(var_0.x, firstTrailingBit(16274u)), ~var_0.x, _wgslsmith_add_u32(~max(var_0.x, var_0.x), 1u), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(func_1(any(vec4<bool>(false, true, false, false)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_f32(trunc(-2388f)), func_1(false, max(vec3<u32>(38405u, 1u, 20006u), vec3<u32>(4294967295u, 4294967295u, 1u)))), ~(~9798i) <= select(firstTrailingBit(u_input.b.x), i32(-1i) * -1i, true), vec4<bool>(true, all(vec4<bool>(true, true, true, true)) || all(vec4<bool>(false, false, true, true)), !(0i < u_input.b.x), any(vec3<bool>(true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(23107u, 6u)] + global0[_wgslsmith_index_u32(0u, 6u)]) + global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 6u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 6u)] + -1024f), 326f)));
    var_0 = max(~vec4<u32>(var_0.x, var_0.x, min(min(1u, var_0.x), 1u), 8688u), vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 28409u, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 0u))), 32057u, var_0.x, var_0.x));
    let var_1 = vec4<i32>(-u_input.c, 38972i, reverseBits(u_input.b.x), firstLeadingBit(_wgslsmith_dot_vec2_i32(select(_wgslsmith_mod_vec2_i32(u_input.b.xy, u_input.b.zy), -vec2<i32>(u_input.a.x, u_input.a.x), true), ~abs(vec2<i32>(10428i, 69233i)))));
    var var_2 = select(vec4<bool>(var_1.x < 1i, true, all(vec4<bool>(true, true, true, true)), true), select(select(vec4<bool>(true, false, true, all(vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), func_3(vec2<f32>(-465f, 1091f), func_4(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(0u, 6u)], 1651f, global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)])), global0[_wgslsmith_index_u32(var_0.x, 6u)], Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], 190f, 1000f, 1000f))), Struct_1(vec4<f32>(974f, 471f, global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(1u, 6u)])), func_1(true, vec3<u32>(var_0.x, var_0.x, var_0.x)))), vec4<bool>(true, true, false, firstTrailingBit(var_1.x) >= _wgslsmith_sub_i32(-28890i, -1i)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false))), vec4<bool>(true, true, true, true));
    var var_3 = ~var_0.x;
    var_2 = select(vec4<bool>(!any(vec4<bool>(var_2.x, var_2.x, true, var_2.x)), var_2.x, any(!select(vec4<bool>(false, true, true, false), vec4<bool>(var_2.x, false, false, true), var_2.x)), all(!var_2.zyw)), !vec4<bool>(var_2.x, var_2.x, var_2.x, true), select(select(!select(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(true, var_2.x, false, true), vec4<bool>(false, var_2.x, false, false)), vec4<bool>(false, var_2.x, any(vec4<bool>(var_2.x, false, var_2.x, false)), !var_2.x), select(select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(var_2.x, true, var_2.x, false)), vec4<bool>(false, var_2.x, var_2.x, true), var_2.x)), vec4<bool>(true, !(!var_2.x), true, !var_2.x && all(vec4<bool>(true, var_2.x, var_2.x, var_2.x))), vec4<bool>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.x, 6u)], 933f) <= global0[_wgslsmith_index_u32(~5804u, 6u)], true, all(vec3<bool>(false, var_2.x, true)) & any(vec4<bool>(var_2.x, true, var_2.x, var_2.x)), var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(max(select(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.d.x, 16178i), var_1.xxw), vec3<i32>(_wgslsmith_clamp_i32(0i, -1i, 16953i), 7559i, var_1.x), vec3<bool>(true, true, true)), abs(u_input.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)]), vec2<f32>(-959f, -2276f), vec2<bool>(false, var_2.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-375f, global0[_wgslsmith_index_u32(var_0.x, 6u)])))), vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(0u, var_0.x, 24612u, var_0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 9962u), vec4<u32>(var_0.x, var_0.x, var_0.x, 0u))), 6u)], func_4(Struct_1(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)])), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.x, 6u)], -565f), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 6u)], 451f, global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)]))).a.x), vec2<bool>(true, !var_2.x))), vec4<i32>(u_input.d.x, -2147483647i, 2147483647i, -min(0i, -43584i)));
}

