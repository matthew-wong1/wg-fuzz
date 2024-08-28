struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> bool {
    let var_0 = ~global0.yz;
    var var_1 = Struct_5(all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), vec2<bool>(true, select(true, true, false)))), vec3<u32>(~(firstLeadingBit(1u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 75494u, u_input.c), vec4<u32>(4294967295u, global0.x, 4294967295u, 4294967295u))), u_input.c, firstTrailingBit((global0.x ^ global0.x) >> (u_input.c % 32u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1169f + arg_0))))));
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-856f, arg_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * var_1.c.a) - _wgslsmith_f_op_f32(step(199f, _wgslsmith_f_op_f32(-888f - arg_0))))));
    var var_2 = -vec2<i32>(_wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(u_input.b.x, -53063i)), u_input.a.x), ~select(-1i, u_input.a.x, false) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -35645i, -13727i), vec4<i32>(-2147483647i, -68914i, -42367i, 2147483647i)));
    let var_3 = vec3<u32>(~4946u, u_input.c, u_input.c);
    return var_1.a;
}

fn func_2() -> vec4<u32> {
    var var_0 = func_3(890f, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1068f)))))));
    var var_1 = global0.wyx;
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -159f), _wgslsmith_f_op_f32(1000f * -128f)))), Struct_3(Struct_2(~vec4<u32>(global0.x, var_1.x, 1u, u_input.c), global0.yyy), -(~u_input.d.x) & -24923i, true && (_wgslsmith_div_f32(global1.a, global1.a) == _wgslsmith_f_op_f32(global1.a - global1.a)), Struct_1(global1.a), Struct_1(global1.a)), Struct_1(2680f), true, Struct_2(vec4<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, var_1.x), u_input.c), ~abs(u_input.c), abs(_wgslsmith_add_u32(1u, 1u))), _wgslsmith_div_vec3_u32(vec3<u32>(6560u, ~global0.x, global0.x), global0.wzz & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 23029u, 1u), vec3<u32>(39212u, 16902u, var_1.x)))));
    var var_3 = Struct_1(-1000f);
    let var_4 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1647f, var_2.c.a)) + _wgslsmith_f_op_f32(f32(-1f) * -1527f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1003f, 857f) + var_3.a)), global1.a), var_2.b, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_2.a.x))))), var_2.b.e.a <= _wgslsmith_f_op_f32(f32(-1f) * -145f), var_2.e);
    return abs(abs(vec4<u32>(~firstTrailingBit(27152u), _wgslsmith_dot_vec4_u32(vec4<u32>(60736u, var_1.x, var_1.x, 68440u), vec4<u32>(4294967295u, 1u, 95140u, u_input.c)) & ~2316u, 0u, ~_wgslsmith_mult_u32(global0.x, 36826u))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> bool {
    var var_0 = Struct_3(Struct_2(~func_2(), vec3<u32>((u_input.c ^ 1u) | max(u_input.c, u_input.c), arg_2.b.x, 4294967295u)), -2147483647i << (_wgslsmith_add_u32(~(~1u), ~(~u_input.c)) % 32u), arg_1, Struct_1(1515f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1564f))));
    let var_1 = Struct_5(!all(select(!vec2<bool>(false, var_0.c), select(vec2<bool>(false, true), vec2<bool>(true, var_0.c), vec2<bool>(arg_1, var_0.c)), !vec2<bool>(arg_1, arg_3))), max(vec3<u32>((44214u << (u_input.c % 32u)) | func_2().x, 4294967295u, ~35357u ^ _wgslsmith_div_u32(var_0.a.a.x, 67781u)), ~vec3<u32>(29340u, min(6122u, u_input.c), ~u_input.c)), var_0.d);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(228f, 152f)) - vec2<f32>(var_1.c.a, 1446f)), vec2<f32>(_wgslsmith_f_op_f32(var_0.e.a * 373f), -265f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.a, -263f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1451f, global1.a) - vec2<f32>(global1.a, var_1.c.a))))));
    global0 = var_0.a.a;
    global0 = var_0.a.a;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = all(vec3<bool>(true, select(!func_1(u_input.b.x, false, Struct_2(vec4<u32>(global0.x, global0.x, u_input.c, 27201u), vec3<u32>(global0.x, 4294967295u, 21100u)), true), true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)))), all(vec3<bool>(true, true, 1u != global0.x))));
    var var_1 = Struct_3(Struct_2(abs(abs(vec4<u32>(u_input.c, 21216u, 1u, global0.x))), global0.wxz), 10818i, true, Struct_1(-435f), Struct_1(-1038f));
    var_1 = Struct_3(Struct_2(var_1.a.a, global0.yxz), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -37266i, var_1.b, 28387i), vec4<i32>(11372i, var_1.b, -37064i, u_input.a.x)), u_input.b.x, max(var_1.b, 2147483647i), _wgslsmith_mult_i32(-23406i, var_1.b))), abs(_wgslsmith_mult_vec4_i32(u_input.b, ~vec4<i32>(-1i, u_input.a.x, u_input.a.x, 1i)))), true, var_1.e, var_1.d);
    var_1 = Struct_3(Struct_2(vec4<u32>(_wgslsmith_sub_u32(var_1.a.a.x, 1u), _wgslsmith_div_u32(64632u, _wgslsmith_clamp_u32(4294967295u, var_1.a.a.x, 4294967295u)), var_1.a.a.x, 9096u), firstTrailingBit(_wgslsmith_sub_vec3_u32(var_1.a.a.xyz, _wgslsmith_div_vec3_u32(vec3<u32>(32308u, 1u, 0u), var_1.a.a.xxx)))), ~max(0i, max(_wgslsmith_mult_i32(1i, 2147483647i), 1i)), !(!var_1.c), Struct_1(_wgslsmith_f_op_f32(round(-1762f))), var_1.d);
    var_1 = Struct_3(Struct_2(_wgslsmith_sub_vec4_u32(var_1.a.a, firstTrailingBit(var_1.a.a)), firstLeadingBit(vec3<u32>(~u_input.c, 0u, ~1u))), _wgslsmith_div_i32(firstLeadingBit(~var_1.b), abs(var_1.b)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a, 1000f)) * _wgslsmith_div_f32(241f, global1.a))), Struct_1(_wgslsmith_f_op_f32(ceil(-1366f))), var_1.d);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -138f);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.d.a + _wgslsmith_f_op_f32(select(var_1.d.a, -1122f, false)))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1491f - -348f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2497f + var_2)))), -1089f)));
    let var_4 = Struct_5(_wgslsmith_sub_u32(global0.x, 96727u) <= (0u >> (max(min(u_input.c, u_input.c), u_input.c) % 32u)), ~(~(~_wgslsmith_div_vec3_u32(var_1.a.b, var_1.a.b))), Struct_1(_wgslsmith_f_op_f32(var_3.x * var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_add_vec4_i32(max(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b.xzy, u_input.b.zzz), u_input.a.x, select(46236i, 29910i, true), -1i), min(-vec4<i32>(82726i, var_1.b, var_1.b, -2147483647i), select(u_input.b, u_input.b, vec4<bool>(false, var_1.c, var_4.a, var_1.c)))), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b.x, u_input.a.x, reverseBits(u_input.b.x)), u_input.b << (var_1.a.a % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, 2712f))), -1000f) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(var_3))))));
}

