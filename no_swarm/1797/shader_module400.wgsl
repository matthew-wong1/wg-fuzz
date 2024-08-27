struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: i32,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: Struct_2 = Struct_2(582f);

var<private> global3: f32 = -1000f;

var<private> global4: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    var var_0 = vec4<f32>(global2.a, arg_0.b, _wgslsmith_f_op_f32(-arg_0.d.a), _wgslsmith_f_op_f32(f32(-1f) * -598f));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-817f, 960f, _wgslsmith_f_op_f32(-857f - -189f), _wgslsmith_f_op_f32(1588f * 114f)) * vec4<f32>(global2.a, var_0.x, _wgslsmith_f_op_f32(831f - arg_0.d.a), _wgslsmith_f_op_f32(-global2.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1709f, arg_0.b, 975f, var_0.x) - vec4<f32>(-733f, 884f, -145f, -263f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2118f, -741f, 467f, arg_0.b), vec4<f32>(arg_0.b, 139f, global2.a, -299f), false))))))));
    global1 = array<Struct_1, 2>();
    global1 = array<Struct_1, 2>();
    let var_1 = max(1u, 49310u);
    return global0[_wgslsmith_index_u32(~(_wgslsmith_add_u32(u_input.d, u_input.d) >> (_wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 0u, 1u, var_1), vec4<u32>(38183u, var_1, u_input.d, var_1)), vec4<u32>(var_1, u_input.d, var_1, 0u)) % 32u)), 5u)] << (~select(min(~global0[_wgslsmith_index_u32(0u, 5u)], abs(vec3<u32>(var_1, u_input.d, var_1))), vec3<u32>(32763u, ~var_1, _wgslsmith_add_u32(9882u, 20430u)), !all(vec2<bool>(false, arg_0.e.x))) % vec3<u32>(32u));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = func_3(Struct_3(~1i & u_input.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global2.a)), _wgslsmith_f_op_f32(trunc(-1285f)))), _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b.x, u_input.c), ~u_input.a.x) & _wgslsmith_dot_vec2_i32(u_input.a.zw << (vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u)), vec2<i32>(u_input.a.x, u_input.b.x)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a, 241f)))), !vec4<bool>(true, select(true, true, false), true, true)));
    let var_1 = ~firstLeadingBit(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(u_input.b.x, -1i, 2147483647i)), min(_wgslsmith_mod_vec3_i32(u_input.a.wyw, vec3<i32>(u_input.b.x, -28096i, u_input.a.x)), vec3<i32>(2541i, u_input.c, u_input.a.x))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(206f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1603f)) - 816f)), _wgslsmith_f_op_f32(trunc(global2.a)))) - _wgslsmith_f_op_f32(min(-712f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(arg_0.x))))))));
    global1 = array<Struct_1, 2>();
    var var_3 = !global4[_wgslsmith_index_u32(~abs(~_wgslsmith_div_u32(var_0.x, 4294967295u)), 24u)];
    return Struct_2(_wgslsmith_f_op_f32(1165f * 1768f));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = !select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, all(vec4<bool>(false, false, false, true)), true), true);
    global3 = arg_1.x;
    global2 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.a)))), arg_2.a), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.d), ~_wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 1u)), vec2<u32>(u_input.d, 20226u) << (vec2<u32>(4294967295u, 15008u) % vec2<u32>(32u)))));
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(round(arg_0.xx)), func_3(Struct_3(min(19599i, -33434i), -457f, _wgslsmith_div_i32(firstTrailingBit(-2147483647i), u_input.b.x), Struct_2(_wgslsmith_f_op_f32(1635f * arg_0.x)), !(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)))).xz);
    var var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 2u)];
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-global2.a), global2.a))) + var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, 853f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec3<f32>(-458f, 420f, global2.a), vec2<f32>(875f, global2.a), Struct_2(global2.a))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(820f, global2.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(270f, global2.a) * vec2<f32>(global2.a, global2.a)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.a, -651f))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-763f, -2750f) - vec2<f32>(global2.a, 397f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-391f, var_0.x) * vec2<f32>(global2.a, global2.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, 360f)), true)) * vec2<f32>(_wgslsmith_f_op_f32(-global2.a), global2.a)) * vec2<f32>(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global2.a)), select(vec2<u32>(u_input.d, 40934u), vec2<u32>(4294967295u, 57900u), false)).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-441f, var_0.x)), _wgslsmith_f_op_f32(select(467f, var_0.x, true))))));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a * -1437f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec3<f32>(var_0.x, -555f, -1312f), vec2<f32>(global2.a, var_0.x), Struct_2(var_0.x))).x) - 1013f)));
    global4 = array<vec2<bool>, 24>();
    let var_1 = select(vec3<bool>(all(select(select(vec2<bool>(true, true), global4[_wgslsmith_index_u32(u_input.d, 24u)], true), global4[_wgslsmith_index_u32(4294967295u, 24u)], global4[_wgslsmith_index_u32(max(u_input.d, u_input.d), 24u)])), true, var_0.x <= 1174f), vec3<bool>(!any(global4[_wgslsmith_index_u32(~57278u, 24u)]), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.xyx, vec3<i32>(-6166i, u_input.c, u_input.b.x)), vec3<i32>(u_input.b.x, 22504i, -32989i) & vec3<i32>(u_input.b.x, u_input.c, 2147483647i)) == -23631i, true | (firstTrailingBit(u_input.d) > _wgslsmith_add_u32(u_input.d, 42689u))), vec3<bool>(true, true, true));
    var var_2 = Struct_3(-1i, _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-267f, -792f, -778f), vec3<f32>(global2.a, var_0.x, 432f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a, global2.a), vec2<f32>(var_0.x, 1485f), vec2<bool>(true, var_1.x))))), func_2(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_1(vec3<f32>(var_0.x, 441f, global2.a), vec2<f32>(global2.a, -1000f), Struct_2(-463f))).x, var_0.x), min(vec2<u32>(4294967295u, u_input.d), vec2<u32>(u_input.d, 62770u))))).x, -(2147483647i | firstTrailingBit(-2147483647i)), func_2(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.a, 128f, global2.a)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(406f, -926f)), Struct_2(_wgslsmith_f_op_f32(floor(-323f))))), abs(~(~vec2<u32>(u_input.d, 0u)))), vec4<bool>(all(vec4<bool>(true, true, any(vec3<bool>(var_1.x, true, false)), false)), !var_1.x, any(vec3<bool>(true, var_1.x, true)), true));
    global0 = array<vec3<u32>, 5>();
    global1 = array<Struct_1, 2>();
    global0 = array<vec3<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_sub_u32(u_input.d, 67431u), abs(~0u)) | ~_wgslsmith_mult_u32(~u_input.d, u_input.d), var_2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 614f) + 798f)))));
}

