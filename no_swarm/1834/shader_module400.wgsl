struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13>;

var<private> global1: array<u32, 16> = array<u32, 16>(4294967295u, 39047u, 0u, 11591u, 14778u, 100821u, 4294967295u, 1u, 24051u, 106860u, 4294967295u, 1u, 1u, 0u, 0u, 4294967295u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32((i32(-1i) * -u_input.a.x) << (15352u % 32u), _wgslsmith_sub_i32(_wgslsmith_add_i32(~u_input.a.x, -arg_0), -_wgslsmith_sub_i32(arg_0, 2147483647i))), i32(-1i) * -min(-arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 1i, -36415i, 1i))), -2147483647i);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = !select(select(!select(vec3<bool>(false, arg_1.a, false), vec3<bool>(arg_1.a, arg_1.a, true), vec3<bool>(false, arg_1.a, arg_1.a)), vec3<bool>(var_1 >= var_1, true, true != arg_1.a), true && (var_1 <= var_1)), !(!(!vec3<bool>(false, arg_1.a, arg_1.a))), !(!vec3<bool>(arg_1.a, arg_1.a, arg_1.a)));
    let var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, u_input.a.x), -min(~abs(vec2<i32>(arg_0, arg_0)), vec2<i32>(-1i) * -u_input.a.xy));
    global1 = array<u32, 16>();
    return ~1u;
}

fn func_2() -> bool {
    var var_0 = Struct_1(any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), vec3<u32>(~25690u, ~19804u, func_3(-1076i, Struct_1(all(vec2<bool>(true, false)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 14488u, 95809u), vec4<u32>(1u, 69768u, u_input.b, 1u)), 13u)]))));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-496f, 1190f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-825f, 1076f) - vec2<f32>(-193f, 613f)))))));
    global1 = array<u32, 16>();
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 611f));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(761f, -1012f) - vec2<f32>(var_1.x, -1586f)), vec2<f32>(var_1.x, 1603f), vec2<bool>(var_0.a, var_0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(799f, var_1.x)))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), -930f) - vec2<f32>(_wgslsmith_f_op_f32(trunc(-1654f)), -994f)));
    return all(select(!select(!vec4<bool>(var_0.a, true, var_0.a, var_0.a), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, var_0.a), var_0.a), true), select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, var_0.a, true, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(false, var_0.a, true, var_0.a)), all(vec3<bool>(var_0.a, var_0.a, var_0.a))), vec4<bool>(true, var_0.a, var_0.a && var_0.a, 1i >= u_input.a.x), true), select(select(select(vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(true, var_0.a, true, var_0.a), vec4<bool>(false, var_0.a, true, false)), vec4<bool>(true, true, true, true), var_0.a || var_0.a), select(!vec4<bool>(true, var_0.a, var_0.a, false), vec4<bool>(true, true, false, true), !vec4<bool>(var_0.a, true, var_0.a, var_0.a)), true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: vec4<u32>) -> Struct_1 {
    global1 = array<u32, 16>();
    var var_0 = Struct_1(~(_wgslsmith_add_i32(u_input.a.x, u_input.a.x) | ~2147483647i) < 27125i, vec3<u32>(_wgslsmith_add_u32(~0u, arg_0.b.x) | 1u, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(reverseBits(4294967295u)), ~arg_3.x), 16u)], firstLeadingBit(1u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -909f) - _wgslsmith_f_op_f32(-1490f * arg_1.x)), _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(1298f - arg_1.x)), arg_1.x))) * arg_1);
    global0 = array<vec3<u32>, 13>();
    global1 = array<u32, 16>();
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_mod_u32(((_wgslsmith_sub_u32(0u, arg_0) << (~1u % 32u)) | firstLeadingBit(global1[_wgslsmith_index_u32(arg_0, 16u)] & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)])) << (u_input.b % 32u), 4294967295u);
    var var_1 = Struct_1(true, global0[_wgslsmith_index_u32(select(~arg_0, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(16838u, arg_0, 8673u), global0[_wgslsmith_index_u32(reverseBits(global1[_wgslsmith_index_u32(1u, 16u)]), 13u)]), global0[_wgslsmith_index_u32(arg_1.x, 13u)]), true), 13u)]);
    let var_2 = func_4(Struct_1(func_2(), select(global0[_wgslsmith_index_u32(63703u, 13u)], vec3<u32>(arg_1.x, global1[_wgslsmith_index_u32(~18566u, 16u)], 1u), !select(vec3<bool>(true, false, true), vec3<bool>(var_1.a, true, false), false))), vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-750f, -1513f)), -1057f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1030f + -365f) + -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(132f - -1155f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1379f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-250f, _wgslsmith_f_op_f32(max(793f, -509f)))), _wgslsmith_f_op_f32(step(-793f, 185f))), -620f), vec4<u32>(~(~(~14451u)), reverseBits(49299u & _wgslsmith_add_u32(0u, var_1.b.x)), min(arg_1.x, abs(var_1.b.x)), u_input.b | max(_wgslsmith_dot_vec2_u32(var_1.b.yx, arg_1.wx), 11152u)));
    var var_3 = 1u;
    let var_4 = _wgslsmith_mod_vec3_i32(firstLeadingBit(u_input.a), vec3<i32>(~abs(_wgslsmith_mult_i32(-64943i, 0i)), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 59082i));
    return vec4<u32>(abs(~(~global1[_wgslsmith_index_u32(arg_1.x, 16u)]) ^ ~(~global1[_wgslsmith_index_u32(var_2.b.x, 16u)])), ~firstTrailingBit(var_0), var_0, ~30722u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 13>();
    var var_0 = 1f;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), -2373f);
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(22285i, u_input.a.x), -38112i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x) >> (func_1(4294967295u, vec4<u32>(53884u, u_input.b, global1[_wgslsmith_index_u32(10041u, 16u)], 7271u)) % vec4<u32>(32u)), ~vec4<i32>(-27588i, u_input.a.x, 46625i, u_input.a.x)), 65641i), _wgslsmith_div_i32(_wgslsmith_mult_i32(-_wgslsmith_mod_i32(-50768i, u_input.a.x), 2733i), u_input.a.x));
    var var_3 = _wgslsmith_div_i32(-var_2.x, firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_mod_i32(~u_input.a.x, ~u_input.a.x), -u_input.a.x)));
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1252f)))));
    global1 = array<u32, 16>();
    global0 = array<vec3<u32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -263f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -464f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(466f, _wgslsmith_f_op_f32(-912f - 718f)), vec2<f32>(_wgslsmith_f_op_f32(-1002f + -584f), _wgslsmith_f_op_f32(885f * 1000f)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), false)))), -abs(-_wgslsmith_mod_vec2_i32(u_input.a.zx, u_input.a.yy)), func_4(Struct_1(all(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(u_input.b, 13u)]), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(762f, -1601f, -1529f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 1000f, -625f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-794f, 1506f, 630f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-600f, -1000f, 299f), vec3<f32>(-872f, -1249f, -125f), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1638f, 1089f, 280f))))), _wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)], 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)]), vec4<u32>(u_input.b, 4038u, 1289u, 0u), vec4<u32>(0u, 47428u, 4294967295u, 2434u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(0u, 16u)], u_input.b, global1[_wgslsmith_index_u32(u_input.b, 16u)]), vec4<u32>(14017u, u_input.b, 56981u, 23857u)) | (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(103338u, 16u)], 16u)], u_input.b, 1u, 0u) >> (vec4<u32>(83361u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)], 1u, 13890u) % vec4<u32>(32u))))).b.x, vec2<u32>(_wgslsmith_mod_u32(44360u, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)]), 16u)]), ~min(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)])) << (vec2<u32>(_wgslsmith_mod_u32(1u, ~global1[_wgslsmith_index_u32(78354u, 16u)]), ~func_4(Struct_1(false, vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], u_input.b, u_input.b)), vec3<f32>(707f, 1073f, -238f), vec3<f32>(-790f, 1418f, 473f), vec4<u32>(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)], u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)])).b.x) % vec2<u32>(32u)), min(vec3<u32>(firstLeadingBit(47885u), u_input.b, max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)], 5021u)) & select(global0[_wgslsmith_index_u32(~4294967295u, 13u)], global0[_wgslsmith_index_u32(~0u, 13u)], select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(33667u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)], 1u, global1[_wgslsmith_index_u32(4294967295u, 16u)]), global0[_wgslsmith_index_u32(u_input.b, 13u)]), 42356u) & _wgslsmith_div_u32(11935u, 1u), 13u)]));
}

