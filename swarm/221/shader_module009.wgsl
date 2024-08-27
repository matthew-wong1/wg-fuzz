struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21>;

var<private> global1: vec4<f32> = vec4<f32>(168f, -600f, 206f, 184f);

var<private> global2: vec2<i32>;

var<private> global3: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(0i, 62071i, i32(-2147483648), 29675i), vec4<i32>(i32(-2147483648), 25310i, 23715i, 2147483647i), vec4<i32>(2147483647i, 0i, 2147483647i, i32(-2147483648)), vec4<i32>(2147483647i, -77874i, i32(-2147483648), 1i), vec4<i32>(0i, i32(-2147483648), 28836i, 1i), vec4<i32>(i32(-2147483648), -624i, -1i, 29695i), vec4<i32>(-1i, 1i, -26645i, 14569i));

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-1000f, 39952i), Struct_1(601f, 2147483647i), Struct_1(-1768f, 27291i), Struct_1(180f, 1i), Struct_1(1000f, -1i), Struct_1(-139f, i32(-2147483648)), Struct_1(103f, -9909i), Struct_1(453f, 2147483647i), Struct_1(362f, 23362i), Struct_1(-2411f, 37291i), Struct_1(-506f, 0i), Struct_1(262f, 0i), Struct_1(794f, -31868i), Struct_1(-491f, -13556i), Struct_1(474f, 1i), Struct_1(-1412f, -1i), Struct_1(1618f, -1i), Struct_1(-1350f, 62393i), Struct_1(1155f, -3604i), Struct_1(-1000f, i32(-2147483648)), Struct_1(1305f, -19111i), Struct_1(-167f, 0i), Struct_1(1729f, 2147483647i), Struct_1(268f, 0i), Struct_1(784f, 1i), Struct_1(869f, 10193i), Struct_1(-575f, 15471i), Struct_1(-482f, -1i), Struct_1(1083f, 1927i));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = arg_1.x;
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-780f, arg_0.a, -608f, 1359f)), vec4<f32>(193f, arg_0.a, -820f, arg_0.a))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-330f + -1648f), _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(global1.x - global1.x), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1490f))), !(!select(vec4<bool>(arg_1.x, arg_2.x, arg_1.x, arg_1.x), arg_1, vec4<bool>(arg_1.x, arg_2.x, true, false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(130f, arg_0.a, arg_0.a, 148f))) * vec4<f32>(360f, 1007f, 775f, -1100f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, global1.x, -115f) - vec4<f32>(global1.x, arg_0.a, global1.x, 724f)))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), -658f, _wgslsmith_f_op_f32(f32(-1f) * -1465f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -498f, global1.x, -109f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a, arg_0.a, global1.x, 112f), vec4<f32>(-1000f, global1.x, 539f, 838f))))))), countOneBits(4294967295u | _wgslsmith_mod_u32(4294967295u, u_input.a.x)) == u_input.b));
    let var_2 = vec4<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(26801i, ~max(9379i, 266i), -global2.x ^ ~7986i), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.c.x, arg_0.b), ~vec3<i32>(global2.x, global2.x, 0i)))), u_input.c.x, ~firstTrailingBit(arg_0.b));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a), -639f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -874f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-441f, -146f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, global1.x, true))) + _wgslsmith_f_op_f32(ceil(arg_0.a)))));
    return _wgslsmith_sub_u32(firstLeadingBit((u_input.b << (u_input.a.x % 32u)) ^ _wgslsmith_mod_u32(u_input.a.x, 38395u)) | _wgslsmith_mod_u32(~u_input.b & u_input.a.x, max(~u_input.a.x, u_input.a.x)), ~(~u_input.a.x));
}

fn func_4(arg_0: vec4<i32>) -> vec2<i32> {
    let var_0 = -2147483647i;
    global0 = array<vec3<f32>, 21>();
    let var_1 = (~(~(u_input.a.xy | u_input.a.yz)) & vec2<u32>(select(reverseBits(u_input.b), _wgslsmith_div_u32(u_input.b, u_input.b), true), u_input.b)) & _wgslsmith_div_vec2_u32(vec2<u32>(~(79846u >> (u_input.b % 32u)), 6014u), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b, 19315u), ~u_input.b), ~u_input.b));
    var var_2 = u_input.a;
    global2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.x, (arg_0.x ^ -2147483647i) ^ _wgslsmith_div_i32(42428i, u_input.c.x)), arg_0.yz, vec2<i32>(-1i) * -select(-arg_0.ww, vec2<i32>(1i, var_0), true));
    return arg_0.zw;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    global3 = array<vec4<i32>, 7>();
    global2 = _wgslsmith_div_vec2_i32(func_4(min(global3[_wgslsmith_index_u32(select(u_input.a.x, u_input.b, false), 7u)], vec4<i32>(-1i, u_input.c.x, 55509i, 0i)) << (vec4<u32>(select(u_input.a.x, u_input.b, true), select(449u, u_input.a.x, false), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), func_3(Struct_1(arg_0.x, 2147483647i), vec4<bool>(true, true, false, false), vec2<bool>(true, false))) % vec4<u32>(32u))), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(min(u_input.c, u_input.c), min(countOneBits(u_input.c), firstTrailingBit(vec2<i32>(global2.x, 19490i)))), abs(u_input.c ^ ~vec2<i32>(-8659i, global2.x))));
    let var_0 = vec3<i32>(~abs(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, 23071i), vec3<i32>(u_input.c.x, u_input.c.x, -4367i)))), 0i, _wgslsmith_mult_i32(10891i, -reverseBits(_wgslsmith_mod_i32(-39607i, global2.x))));
    let var_1 = u_input.a.x;
    let var_2 = abs(global3[_wgslsmith_index_u32(8362u, 7u)] >> (abs(~vec4<u32>(u_input.b, 4294967295u, 63027u, 0u)) % vec4<u32>(32u)));
    return !all(vec2<bool>(!any(vec4<bool>(false, true, true, false)), !any(vec2<bool>(false, true))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = select(vec3<bool>(true, true, true), vec3<bool>(!((-1000f >= global1.x) && (1000f == global1.x)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -1426f, -1490f)))), false), (-1000f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-241f + global1.x)))) && true);
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.b | 0u, u_input.a.x), u_input.b, 90729u) << (u_input.a % vec3<u32>(32u)), u_input.a);
    global0 = array<vec3<f32>, 21>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1.xx, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(min(global1.x, 394f)), _wgslsmith_f_op_f32(sign(global1.x))))), select(select(var_0.xz, vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), vec2<bool>(var_0.x, 1u >= u_input.a.x), _wgslsmith_add_u32(u_input.b, 18075u) <= func_3(Struct_1(global1.x, u_input.c.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec2<bool>(var_0.x, true))))));
    global4 = array<Struct_1, 29>();
    return Struct_2(select(select(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, true), true), vec3<bool>(var_0.x, all(vec3<bool>(var_0.x, false, var_0.x)), var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(func_2(vec4<f32>(584f, global1.x, var_2.x, -116f)), var_0.x, select(var_0.x, var_0.x, true)), select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, false, var_0.x)), select(select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, false, true)), select(vec3<bool>(false, var_0.x, false), vec3<bool>(false, var_0.x, false), var_0.x), all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)))), !(_wgslsmith_div_f32(-913f, 2870f) < _wgslsmith_f_op_f32(round(-984f)))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.yy) << (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_1.x), ~vec2<u32>(var_1.x, var_1.x)) % vec2<u32>(32u)), ~vec2<u32>(60536u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 6703u, var_1.x, 43622u), vec4<u32>(426u, 1u, 47152u, 4294967295u)))), 29u)], global4[_wgslsmith_index_u32(40290u, 29u)], Struct_1(var_2.x, -10046i), global4[_wgslsmith_index_u32(abs(firstTrailingBit(0u)), 29u)]);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = arg_2.a.x && (-2147483647i != u_input.c.x);
    global0 = array<vec3<f32>, 21>();
    var var_1 = func_4(~abs(firstTrailingBit(global3[_wgslsmith_index_u32(1u >> (u_input.a.x % 32u), 7u)]))).x;
    var var_2 = arg_2;
    var var_3 = _wgslsmith_div_u32(~(~1u | _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(60829u, 4294967295u, u_input.a.x, u_input.b)), ~vec4<u32>(u_input.b, 38078u, u_input.a.x, 16141u))), 0u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -758f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_vec2_f32(min(global1.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.zz - vec2<f32>(617f, arg_2.d.a)))))) - _wgslsmith_f_op_vec2_f32(-global1.zy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(vec4<f32>(121f, global1.x, global1.x, global1.x), global4[_wgslsmith_index_u32(u_input.b, 29u)], func_1(vec2<i32>(global2.x, 63635i)), Struct_1(-660f, global2.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(331f, global1.x), vec2<f32>(247f, global1.x))) + _wgslsmith_f_op_vec2_f32(select(global1.zy, global1.zy, false)))) + global1.zx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), global1.wz));
    var var_1 = _wgslsmith_mod_vec4_i32(-vec4<i32>(min(select(u_input.c.x, 5450i, true), u_input.c.x << (u_input.a.x % 32u)), _wgslsmith_mult_i32(9351i, abs(-35040i)), u_input.c.x, firstTrailingBit(-2270i)), ~global3[_wgslsmith_index_u32(4294967295u, 7u)]);
    let var_2 = global4[_wgslsmith_index_u32(u_input.a.x, 29u)];
    global0 = array<vec3<f32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec2_i32(~firstLeadingBit(var_1.zz), firstLeadingBit(_wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(global2.x, 1i)))), _wgslsmith_mod_u32(u_input.b, ((u_input.a.x ^ 16438u) & u_input.a.x) >> (61493u % 32u)));
}

