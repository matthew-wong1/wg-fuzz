struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16>;

var<private> global1: u32 = 0u;

var<private> global2: array<vec2<i32>, 29>;

var<private> global3: array<f32, 21>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = vec4<i32>(~(-17815i), -u_input.b, 1i, 52165i) ^ _wgslsmith_div_vec4_i32(-vec4<i32>(max(6561i, u_input.b), u_input.b, u_input.b, -2147483647i), ~vec4<i32>(2147483647i, -2147483647i, ~(-29941i), _wgslsmith_mod_i32(-2147483647i, u_input.b)));
    var var_1 = global3[_wgslsmith_index_u32(u_input.a.x, 21u)];
    let var_2 = -34788i >> (u_input.a.x % 32u);
    global0 = array<vec4<bool>, 16>();
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(1123f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-322f + global3[_wgslsmith_index_u32(4294967295u, 21u)]), _wgslsmith_div_f32(793f, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) * _wgslsmith_div_f32(-333f, -1405f)), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, 1418f))))));
    return var_0.x;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = Struct_5(-18489i, select(select(!(!arg_2.b), vec2<bool>(arg_2.b.x, !arg_2.b.x), any(vec4<bool>(arg_2.d, true, true, arg_2.d))), !arg_2.b, arg_2.b.x), select(arg_2.b.x, any(global0[_wgslsmith_index_u32(~(~27396u), 16u)]), true), Struct_1(arg_2.b, 131236u));
    let var_1 = ~(~(~max(~vec4<u32>(0u, var_0.d.b, u_input.a.x, u_input.a.x), abs(vec4<u32>(u_input.a.x, u_input.a.x, var_0.d.b, u_input.a.x)))));
    var var_2 = -2147483647i;
    let var_3 = Struct_4(Struct_1(select(select(vec2<bool>(true, true), !arg_2.b, !arg_2.b), var_0.d.a, all(select(vec3<bool>(false, true, arg_2.d), vec3<bool>(var_0.b.x, true, arg_2.d), true))), ~var_1.x), Struct_3(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(i32(-1i) * -3515i, u_input.b >> (38301u % 32u), -56649i), ~(-var_0.a)), select(var_0.b, !vec2<bool>(true, arg_2.d), countOneBits(arg_2.c) <= (-57609i ^ arg_2.a)), u_input.b, true), (0i > (i32(-1i) * -arg_0)) | select(!all(vec3<bool>(var_0.c, arg_2.b.x, var_0.b.x)), var_0.d.b < var_0.d.b, all(global0[_wgslsmith_index_u32(var_0.d.b, 16u)])), vec2<bool>((firstTrailingBit(arg_2.a) == -28604i) & arg_2.d, false), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -7094i, ~u_input.b), firstLeadingBit(~vec4<i32>(arg_2.c, arg_0, -1i, arg_2.c))), 53016i));
    var var_4 = arg_1;
    return vec2<bool>(true, any(var_3.b.b) | arg_2.d);
}

fn func_2() -> i32 {
    global3 = array<f32, 21>();
    let var_0 = Struct_4(Struct_1(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), false)), 13482u), Struct_3(7150i, func_4(~(-4829i), _wgslsmith_f_op_f32(-1047f * global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(44520u, 32495u), 21u)]), Struct_3(func_3(global3[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec2<bool>(false, true), 1i, all(vec4<bool>(false, true, true, true)))), 2147483647i, select(any(!global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), false, true)), true, select(vec2<bool>(u_input.a.x < ~56344u, false), !func_4(max(0i, u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -128f), Struct_3(u_input.b, vec2<bool>(true, false), u_input.b, true)), vec2<bool>(true, true)), abs(vec2<i32>(_wgslsmith_add_i32(~2147483647i, 1i), abs(_wgslsmith_div_i32(2147483647i, u_input.b)))));
    var var_1 = _wgslsmith_add_u32(1u, ~_wgslsmith_sub_u32(var_0.a.b, firstTrailingBit(u_input.a.x) ^ ~0u));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(724f, 799f)), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.a.x, 21u)]))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(0u, 21u)], -389f))))), vec2<f32>(global3[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.a.b & u_input.a.x, 21u)] * -378f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], -1075f), vec2<f32>(global3[_wgslsmith_index_u32(1u, 21u)], 1621f))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3[_wgslsmith_index_u32(1u, 21u)], 904f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1462f, -693f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], global3[_wgslsmith_index_u32(u_input.a.x, 21u)])) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], global3[_wgslsmith_index_u32(51725u, 21u)]) - vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], global3[_wgslsmith_index_u32(u_input.a.x, 21u)])))))))));
    let var_3 = Struct_4(var_0.a, Struct_3(26356i, vec2<bool>(!var_0.b.d, true), reverseBits(-_wgslsmith_div_i32(u_input.b, var_0.e.x)), _wgslsmith_div_f32(-1625f, _wgslsmith_f_op_f32(min(var_2.x, var_2.x))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(482f - 1472f) * global3[_wgslsmith_index_u32(1u, 21u)])), var_0.a.a.x, var_0.d, select(~(global2[_wgslsmith_index_u32(var_0.a.b, 29u)] >> (~u_input.a % vec2<u32>(32u))), vec2<i32>(-_wgslsmith_add_i32(var_0.e.x, var_0.e.x), _wgslsmith_mod_i32(~var_0.e.x, countOneBits(2147483647i))), any(vec2<bool>(all(vec3<bool>(true, var_0.b.d, true)), var_0.a.a.x | var_0.b.b.x))));
    return ~(-2163i);
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    global1 = 1u;
    global2 = array<vec2<i32>, 29>();
    let var_0 = vec2<i32>(~firstLeadingBit(select(u_input.b ^ 0i, -1i >> (arg_0.b % 32u), true)), -30703i);
    var var_1 = func_2();
    global3 = array<f32, 21>();
    return Struct_4(Struct_1(vec2<bool>(arg_0.a.x, !(false | arg_0.a.x)), ~(~abs(arg_0.b))), Struct_3(u_input.b, vec2<bool>(any(vec2<bool>(true, true)), true), _wgslsmith_mult_i32((u_input.b >> (arg_0.b % 32u)) >> (_wgslsmith_sub_u32(19049u, 6349u) % 32u), var_0.x), arg_0.a.x), (arg_0.b > _wgslsmith_dot_vec2_u32(abs(vec2<u32>(27735u, 4294967295u)), vec2<u32>(arg_0.b, 4294967295u))) != ((select(var_0.x, u_input.b, arg_0.a.x) | 0i) > abs(u_input.b >> (arg_0.b % 32u))), vec2<bool>(true, arg_0.a.x || select(arg_0.a.x, arg_0.a.x, any(global0[_wgslsmith_index_u32(66957u, 16u)]))), var_0 ^ ~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(var_0, vec2<i32>(-1i, var_0.x)), abs(global2[_wgslsmith_index_u32(arg_0.b, 29u)])));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool) -> vec2<bool> {
    global3 = array<f32, 21>();
    global3 = array<f32, 21>();
    var var_0 = Struct_3(~arg_0.e.x, !select(!vec2<bool>(false, arg_2), vec2<bool>(true, false), !func_4(u_input.b, arg_1.a, arg_0.b)), 11295i, arg_0.b.d);
    global2 = array<vec2<i32>, 29>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1579f)), _wgslsmith_f_op_f32(-163f - _wgslsmith_div_f32(arg_1.a, 330f))), -1191f));
    return func_1(Struct_1(!var_0.b, arg_0.a.b)).b.b;
}

fn func_6(arg_0: vec2<bool>) -> Struct_4 {
    let var_0 = Struct_3(u_input.b, func_4(2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(703f + global3[_wgslsmith_index_u32(u_input.a.x, 21u)])))), Struct_3(35567i, vec2<bool>(true, true), -45151i, arg_0.x || true)), 1i, arg_0.x);
    global3 = array<f32, 21>();
    global3 = array<f32, 21>();
    return func_1(Struct_1(vec2<bool>(arg_0.x || false, !any(global0[_wgslsmith_index_u32(4294967295u, 16u)])), firstTrailingBit(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_div_u32(33345u, 1u), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_1(Struct_1(select(vec2<bool>(false, false), vec2<bool>(false, true), true), reverseBits(4294967295u))), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2013f * global3[_wgslsmith_index_u32(1u, 21u)]), -1405f), global0[_wgslsmith_index_u32(~4294967295u, 16u)], global0[_wgslsmith_index_u32(~0u, 16u)]), all(func_1(Struct_1(vec2<bool>(true, true), 75502u)).d)));
    var var_1 = var_0.b;
    var var_2 = _wgslsmith_div_i32(func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(0u, 21u)], global3[_wgslsmith_index_u32(1u, 21u)]) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 21u)]))), func_6(!select(var_0.d, vec2<bool>(false, true), var_0.b.b.x)).b.c) & _wgslsmith_mod_i32(firstTrailingBit(u_input.b >> (1u % 32u)), func_2() ^ _wgslsmith_clamp_i32(1i, -var_1.a, min(var_0.e.x, var_0.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.a.b, 21u)] + global3[_wgslsmith_index_u32(~u_input.a.x, 21u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1000f, 1040f), vec3<f32>(-1356f, global3[_wgslsmith_index_u32(0u, 21u)], global3[_wgslsmith_index_u32(42568u, 21u)]), false)), vec3<f32>(-901f, 197f, global3[_wgslsmith_index_u32(25065u, 21u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(39116u, 21u)], global3[_wgslsmith_index_u32(4294967295u, 21u)], 2412f))))), vec2<i32>(min(_wgslsmith_div_i32(var_0.b.a, _wgslsmith_div_i32(4771i, u_input.b)), ~(-1i)), u_input.b), _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~41473u, ~u_input.a.x) ^ ~u_input.a.x, 21u)])));
}

