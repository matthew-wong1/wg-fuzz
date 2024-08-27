struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec3<f32>, 32>;

var<private> global2: vec3<f32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>) -> i32 {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(0u, 32u)]) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_0.x, global2.x) + arg_1)))))));
    return max(~(~u_input.b.x), -14986i);
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(17086u, u_input.e.x) << (firstLeadingBit(1u) % 32u), 32u)]), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(170f, 1465f))))), arg_2.c, 2322f, ~u_input.a.x);
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.a), arg_2.c, arg_2.c, -471f, reverseBits(~_wgslsmith_sub_i32(func_3(vec2<f32>(var_0.a.x, global2.x), arg_2.b.yxz), -1i)));
    global1 = array<vec3<f32>, 32>();
    let var_2 = vec3<bool>(firstLeadingBit(~1u) > (3644u >> (~(~global0.x) % 32u)), arg_0 || (true | arg_0), any(select(!vec3<bool>(true, false, arg_0), !vec3<bool>(true, false, arg_0), false)));
    return global0.xwy;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = abs(arg_2.zzy);
    global0 = ~(~(~(u_input.e ^ u_input.e) | u_input.e));
    global1 = array<vec3<f32>, 32>();
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(471f + global2.x))), _wgslsmith_div_f32(global2.x, -1047f), _wgslsmith_f_op_f32(sign(-1602f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, 562f, global2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -128f, global2.x) - global1[_wgslsmith_index_u32(global0.x, 32u)]), arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, global2.x, global2.x), vec3<f32>(-1139f, global2.x, 956f)))))));
    global1 = array<vec3<f32>, 32>();
    return Struct_1(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-239f)) - _wgslsmith_f_op_f32(abs(global2.x))))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    var var_0 = vec4<bool>(u_input.e.x >= ~_wgslsmith_sub_u32(abs(u_input.e.x), _wgslsmith_mod_u32(global0.x, 17428u)), true, ~_wgslsmith_dot_vec4_u32(u_input.e, ~u_input.e) != (((global0.x << (0u % 32u)) & reverseBits(60958u)) | u_input.d), any(select(vec2<bool>(true, -351f != arg_1.a), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), true)));
    global0 = ~vec4<u32>(~abs(30228u), 4294967295u, ~_wgslsmith_div_u32(max(2418u, 4294967295u), global0.x), 0u);
    global1 = array<vec3<f32>, 32>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(121270u, 0u), 32u)])) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_2, 1720f) - vec3<f32>(arg_0.e, global2.x, arg_2))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(427f, 454f, arg_0.b.x) * global1[_wgslsmith_index_u32(1u, 32u)]))))), func_4(select(var_0.x, all(!var_0.xx), true), abs(vec2<u32>(global0.x, 2695u << (u_input.e.x % 32u))), ~u_input.a, ~_wgslsmith_dot_vec3_u32(func_2(false, vec2<i32>(-2147483647i, arg_0.a), Struct_3(arg_0.a, arg_0.b, arg_1, 1107f, arg_1.a)), global0.xyz)), func_4(all(!select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, false), true)), vec2<u32>(56378u & _wgslsmith_clamp_u32(0u, u_input.d, u_input.d), u_input.d), u_input.a, u_input.e.x), 483f, -1i);
    let var_2 = Struct_3(1824i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(521f, arg_2, global2.x, -676f)))) * _wgslsmith_f_op_vec4_f32(arg_0.b * vec4<f32>(var_1.c.a, 1163f, 907f, 128f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + -1000f) + -761f))), func_4(var_0.x, u_input.e.zz, vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(u_input.b.xy), firstTrailingBit(vec2<i32>(u_input.c, 23723i))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_0.a, 2147483647i), u_input.b), u_input.a.x << ((global0.x ^ 96328u) % 32u), i32(-1i) * -arg_0.a), ~48129u).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(123f)))));
    return vec3<bool>(all(select(vec2<bool>(all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), true), !select(vec2<bool>(var_0.x, false), var_0.zw, var_0.yy), true)), (_wgslsmith_div_f32(var_2.c.a, _wgslsmith_f_op_f32(arg_0.e * -458f)) >= 959f) | !(_wgslsmith_sub_i32(2147483647i, u_input.c) < min(27228i, var_2.a)), all(var_0.zz));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec2<bool>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(abs(func_4(false, ~min(u_input.e.yw, vec2<u32>(1u, 4294967295u)), u_input.a, global0.x).a)));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f - -1637f), global2.x, -1000f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, global2.x)))))));
    global0 = abs(~u_input.e);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1500f + global2.x))) + _wgslsmith_f_op_f32(-func_5(vec3<u32>(0u, u_input.d, 19054u), vec3<bool>(arg_0.x, false, true), arg_0).a)) - var_0.x)));
    let var_2 = vec2<u32>(~45755u, ~59520u);
    let var_3 = 1u;
    return any(arg_0);
}

fn func_7(arg_0: bool, arg_1: vec2<f32>) -> vec2<bool> {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~u_input.d, 32u)]))));
    let var_0 = Struct_3(firstTrailingBit(~u_input.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_f_op_f32(sign(1666f)), _wgslsmith_f_op_f32(arg_1.x + 677f), _wgslsmith_f_op_f32(666f - arg_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-771f, arg_1.x, -1095f, 374f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 1212f))), arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x))));
    var var_1 = !(~_wgslsmith_clamp_u32(u_input.e.x, ~u_input.d, 0u) < _wgslsmith_mult_u32(7896u, global0.x));
    let var_2 = ~_wgslsmith_mod_vec2_u32(abs(select(abs(vec2<u32>(global0.x, u_input.e.x)), vec2<u32>(u_input.d, 24544u), select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), vec2<bool>(false, arg_0)))), vec2<u32>(global0.x, select(u_input.e.x, 36421u, false)) << (vec2<u32>(~11598u, ~19845u) % vec2<u32>(32u)));
    let var_3 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.b.wyx)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global1[_wgslsmith_index_u32(var_2.x, 32u)], var_0.b.xyz)), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(var_2.x, 32u)] * vec3<f32>(var_0.c.a, -1000f, -548f))), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -2716f, -586f), _wgslsmith_f_op_vec3_f32(var_0.b.wxy + vec3<f32>(235f, global2.x, global2.x))), vec3<bool>(true, true, true)))), Struct_1(1231f), func_4(func_6(!vec2<bool>(arg_0, false), var_0.c), ~abs(var_2), -(vec4<i32>(-15290i, u_input.a.x, 0i, u_input.a.x) >> (u_input.e % vec4<u32>(32u))), 0u), 1533f, u_input.a.x);
    return !vec2<bool>(!arg_0, arg_0 | (u_input.c != 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_7(func_6(vec2<bool>(true, true), func_5(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, 0u, global0.x), global0.yxz), func_1(Struct_3(u_input.a.x, vec4<f32>(global2.x, global2.x, -2042f, -411f), Struct_1(-1000f), global2.x, 943f), Struct_1(-435f), -1325f), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global2.xz, global2.yy))));
    var_0 = !(!(!vec2<bool>(26895i <= u_input.c, var_0.x)));
    let var_1 = Struct_3(u_input.b.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-240f, -574f, 706f, 257f)) + vec4<f32>(global2.x, global2.x, 1065f, 909f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 1154f, -764f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global2.x))))), select(select(!vec4<bool>(var_0.x, var_0.x, false, var_0.x), select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, false, true, true), var_0.x), func_7(false, vec2<f32>(-717f, -1185f)).x), !vec4<bool>(true, var_0.x, true, true), select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, true), var_0.x)))), func_4(false, firstTrailingBit(global0.xz), vec4<i32>(_wgslsmith_clamp_i32(-1i, -1i, u_input.b.x), -u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, -1i), vec3<i32>(-32943i, 68832i, 34882i)), firstTrailingBit(-1i)) >> (u_input.e % vec4<u32>(32u)), 0u), -360f, global2.x);
    var var_2 = any(!select(!func_1(var_1, var_1.c, -1000f), !func_1(var_1, var_1.c, global2.x), func_1(Struct_3(2147483647i, vec4<f32>(global2.x, -916f, var_1.d, -1186f), var_1.c, -809f, global2.x), Struct_1(-836f), global2.x)));
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.x)) - global2.x) * global2.x), -1008f, _wgslsmith_f_op_f32(var_1.d - 1000f)));
    let var_3 = reverseBits(-11382i);
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-614f, global2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.x - var_1.e), 1000f)))));
    let var_4 = vec3<bool>(true, select(var_0.x, ~1u != _wgslsmith_dot_vec3_u32(u_input.e.wzy, _wgslsmith_sub_vec3_u32(u_input.e.xyx, u_input.e.yzy)), true), func_1(var_1, var_1.c, _wgslsmith_f_op_f32(ceil(func_4(true, u_input.e.yy, vec4<i32>(0i, u_input.c, 0i, u_input.b.x), 1u).a))).x | false);
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -2572f)), _wgslsmith_f_op_f32(f32(-1f) * -1127f), _wgslsmith_div_f32(-1018f, var_1.b.x), var_1.d), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(max(global2.x, -892f)), global2.x), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-125f, -315f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 910f) - global2.yz))))), var_1.b.yx)), max(-(countOneBits(u_input.a.x) | ~1i), u_input.a.x), 0i);
}

