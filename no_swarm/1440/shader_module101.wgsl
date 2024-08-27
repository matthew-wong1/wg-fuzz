struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(19777i, 31061i, -9439i, 12194i, 1i, 0i, -53673i, 37398i, -18222i, 1577i, 8560i, 19408i);

var<private> global1: array<f32, 31>;

var<private> global2: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

var<private> global3: array<Struct_1, 6>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    global3 = array<Struct_1, 6>();
    global0 = array<i32, 12>();
    var var_0 = arg_1.c;
    var var_1 = ~(vec4<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(arg_0.a, u_input.b.x, -21483i, arg_1.b.a), vec4<i32>(2147483647i, -41419i, 2147483647i, -37165i)), countOneBits(vec4<i32>(arg_0.a, -451i, arg_0.a, -2492i))), u_input.b.x, ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.d.d, arg_1.b.d), 12u)], _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(select(26866u, 49614u, false), 12u)], select(u_input.b.x, 0i, arg_1.c))) << (~(~u_input.a) % vec4<u32>(32u)));
    let var_2 = -1i;
    return (_wgslsmith_f_op_f32(-arg_1.d.b) != _wgslsmith_f_op_f32(ceil(-145f))) != arg_1.c;
}

fn func_2(arg_0: i32) -> vec4<u32> {
    var var_0 = (global1[_wgslsmith_index_u32(11835u, 31u)] != global1[_wgslsmith_index_u32(~(~23556u), 31u)]) | true;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(17214u, 31u)])))) * vec2<f32>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.a.x | 4294967295u, 31u)], _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(4294967295u, 31u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(3895u, 31u)] * -1426f)))), global3[_wgslsmith_index_u32(u_input.a.x, 6u)], any(vec2<bool>(true, false)), Struct_1(arg_0 << (u_input.a.x % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1336f) * -155f), abs(abs(max(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec2<i32>(16270i, -1i)))), _wgslsmith_dot_vec3_u32(vec3<u32>(36093u, u_input.a.x & 4294967295u, ~u_input.a.x), u_input.a.zyx)));
    global0 = array<i32, 12>();
    var_0 = select(!func_3(var_1.b, Struct_2(var_1.a, Struct_1(global0[_wgslsmith_index_u32(14933u, 12u)], global1[_wgslsmith_index_u32(28566u, 31u)], u_input.b, 64857u), false, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, var_1.b.d), 6u)])), func_3(global3[_wgslsmith_index_u32(1u >> (var_1.b.d % 32u), 6u)], Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(1633f, 772f, true)), _wgslsmith_f_op_f32(sign(var_1.a.x))), var_1.d, _wgslsmith_f_op_f32(758f + global1[_wgslsmith_index_u32(var_1.b.d, 31u)]) > global1[_wgslsmith_index_u32(~u_input.a.x, 31u)], global3[_wgslsmith_index_u32(86905u, 6u)])), 2027f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.b - var_1.b.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(418f, var_1.d.b)))));
    var var_2 = !var_1.c;
    return abs(~(~_wgslsmith_div_vec4_u32(u_input.a, u_input.a)) | (select(u_input.a, u_input.a, !vec4<bool>(var_1.c, var_1.c, var_1.c, var_1.c)) >> (~(u_input.a | vec4<u32>(u_input.a.x, var_1.b.d, 94192u, 1u)) % vec4<u32>(32u))));
}

fn func_1() -> Struct_1 {
    var var_0 = ~(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)), abs(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x))), ~func_2(18484i)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-234f + global1[_wgslsmith_index_u32(72553u, 31u)])))))), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_0.x >> (var_0.x % 32u), _wgslsmith_mult_u32(115454u, 0u)), 31u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-292f, global1[_wgslsmith_index_u32(0u, 31u)], true))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(766f - 873f))))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(831f))), -726f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.a.x, 31u)]) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1006f, -1634f) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 31u)] * -1000f))));
    let var_2 = true;
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(12737u, ~(~(select(u_input.a.x, var_0.x, true) << (u_input.a.x % 32u)))), 6u)];
    let var_4 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_3.b, global1[_wgslsmith_index_u32(var_3.d, 31u)]), vec2<f32>(var_1.x, var_3.b))) + vec2<f32>(430f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 31u)]))), global3[_wgslsmith_index_u32(~var_0.x, 6u)], any(select(select(vec2<bool>(true, false), vec2<bool>(var_2, var_2), vec2<bool>(true, var_2)), !vec2<bool>(var_2, var_2), true)), global3[_wgslsmith_index_u32(30172u, 6u)]), Struct_1(~(~(-5686i) ^ global0[_wgslsmith_index_u32(87838u, 12u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.b, -1243f))), u_input.b, var_0.x), select(vec2<bool>(true, true), select(vec2<bool>(all(vec2<bool>(var_2, false)), var_2), select(select(vec2<bool>(var_2, var_2), vec2<bool>(true, true), vec2<bool>(var_2, var_2)), vec2<bool>(true, var_2), vec2<bool>(true, true)), any(select(vec4<bool>(false, true, var_2, true), vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(var_2, false, true, false)))), select(select(!vec2<bool>(var_2, false), vec2<bool>(true, true), any(vec4<bool>(true, var_2, var_2, var_2))), select(select(vec2<bool>(var_2, false), vec2<bool>(var_2, false), vec2<bool>(true, false)), vec2<bool>(var_2, true), !vec2<bool>(false, var_2)), !vec2<bool>(var_2, true))));
    return Struct_1(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(select(~var_3.d, select(36976u, var_0.x, false), true) << (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a.xyy, vec3<u32>(var_4.a.b.d, var_0.x, 32031u)), u_input.a.x) % 32u), 12u)], ~35724i), -824f, _wgslsmith_div_vec2_i32(var_3.c, u_input.b), firstLeadingBit(var_4.b.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 12>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -157f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f - -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(849f, global1[_wgslsmith_index_u32(1u, 31u)]) * _wgslsmith_f_op_f32(sign(237f))), _wgslsmith_f_op_f32(-1519f - global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 31u)])), _wgslsmith_f_op_f32(round(338f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1262f, global1[_wgslsmith_index_u32(u_input.a.x, 31u)], 1571f, 246f), vec4<f32>(global1[_wgslsmith_index_u32(9921u, 31u)], 559f, global1[_wgslsmith_index_u32(u_input.a.x, 31u)], global1[_wgslsmith_index_u32(29618u, 31u)]))))));
    let var_1 = func_1();
    let var_2 = select(vec2<bool>(true, !all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), true))), vec2<bool>(!(var_1.d >= var_1.d), false), !vec2<bool>(any(vec2<bool>(true, true)), true));
    var var_3 = firstTrailingBit(u_input.a.x);
    global2 = array<vec3<bool>, 24>();
    let var_4 = ~vec2<u32>(~u_input.a.x, ~(~u_input.a.x));
    let var_5 = global2[_wgslsmith_index_u32(firstTrailingBit(~max(_wgslsmith_sub_u32(func_2(global0[_wgslsmith_index_u32(15785u, 12u)]).x, ~1u), _wgslsmith_div_u32(47479u, _wgslsmith_mod_u32(var_1.d, var_4.x)))), 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(func_1().d | (0u << (abs(select(var_1.d, 1u, var_2.x)) % 32u)), var_4.x & abs(select(~var_4.x, 82957u, true)), vec4<f32>(265f, global1[_wgslsmith_index_u32(~(~var_4.x), 31u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~var_4.x, var_4.x), min(abs(u_input.a.yzx), u_input.a.zzy)), 31u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-217f))) + func_1().b)), -(var_1.c << (abs(vec2<u32>(var_1.d, var_1.d)) % vec2<u32>(32u))));
}

