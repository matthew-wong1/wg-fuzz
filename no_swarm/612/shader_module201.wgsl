struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec4<u32>(0u, 1u, 68053u, 5103u), vec3<f32>(857f, 836f, 477f)), Struct_2(vec4<u32>(38824u, 21026u, 1u, 35129u), vec3<f32>(1477f, 2868f, 559f)), Struct_2(vec4<u32>(20926u, 1749u, 1u, 1u), vec3<f32>(1660f, 1000f, 503f)), Struct_2(vec4<u32>(23124u, 4294967295u, 0u, 26254u), vec3<f32>(-202f, -479f, 798f)), Struct_2(vec4<u32>(1u, 4294967295u, 4294967295u, 105737u), vec3<f32>(1085f, 633f, 181f)), Struct_2(vec4<u32>(10861u, 67031u, 1u, 4294967295u), vec3<f32>(-761f, 430f, -589f)), Struct_2(vec4<u32>(334u, 0u, 1u, 1u), vec3<f32>(152f, 411f, -1529f)), Struct_2(vec4<u32>(4294967295u, 16210u, 2406u, 5817u), vec3<f32>(793f, 1065f, 259f)), Struct_2(vec4<u32>(4294967295u, 12133u, 1u, 11893u), vec3<f32>(840f, -531f, 1552f)), Struct_2(vec4<u32>(0u, 4294967295u, 38975u, 1u), vec3<f32>(691f, -478f, -529f)), Struct_2(vec4<u32>(1u, 9978u, 32978u, 1u), vec3<f32>(1466f, 889f, 654f)), Struct_2(vec4<u32>(4294967295u, 10411u, 4294967295u, 4294967295u), vec3<f32>(1687f, 1000f, -682f)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 4225u, 1u), vec3<f32>(119f, 699f, -829f)));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_4) -> u32 {
    global0 = array<f32, 20>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, 568f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 20u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(46826u, 20u)], arg_0.b, arg_0.a.a))) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 20u)]))));
    return 0u;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2181f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1244f, global0[_wgslsmith_index_u32(1u, 20u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 20u)] - -254f)))) - global0[_wgslsmith_index_u32(func_3(Struct_4(Struct_1(arg_2), 1292f, vec2<f32>(global0[_wgslsmith_index_u32(~global1.x, 20u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(51219u, 20u)] - 1603f)))), 20u)]);
    global1 = firstLeadingBit(vec4<u32>(1u, ~(~_wgslsmith_mult_u32(75548u, global1.x)), ~26635u, _wgslsmith_sub_u32(global1.x, ~u_input.b.x & 1u)));
    var var_1 = vec3<bool>(arg_2, !(!arg_2), false);
    global0 = array<f32, 20>();
    let var_2 = u_input.d;
    return Struct_1(true);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_4(Struct_1(func_2(_wgslsmith_mod_i32(arg_2.x, 41981i) != 50899i, (arg_2.x << (global1.x % 32u)) ^ -15825i, any(!vec3<bool>(arg_1.a.a, true, arg_1.a.a))).a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(43634u, 20u)]), _wgslsmith_f_op_f32(max(1255f, _wgslsmith_f_op_f32(arg_3 * 906f)))), arg_1.c);
    global2 = array<Struct_2, 13>();
    return global2[_wgslsmith_index_u32(global1.x, 13u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: bool) -> Struct_4 {
    let var_0 = func_4(vec4<i32>(select(_wgslsmith_add_i32(-24972i, _wgslsmith_mult_i32(u_input.a, -13114i)), arg_2.x, !arg_1.a.a), -2147483647i, arg_2.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.xy, vec2<i32>(2147483647i, -1i)), vec2<i32>(-1i) * -arg_2.yx)), Struct_4(func_2(arg_3, 2147483647i, !arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))), arg_1.c), vec2<i32>(_wgslsmith_sub_i32(arg_2.x, arg_2.x), u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(758f + arg_1.b))))));
    global2 = array<Struct_2, 13>();
    global0 = array<f32, 20>();
    global2 = array<Struct_2, 13>();
    global1 = vec4<u32>(1u, arg_0.x, ~4294967295u, u_input.b.x);
    return Struct_4(func_2(!select(true, arg_1.a.a, true), firstTrailingBit(select(arg_2.x, arg_2.x, !arg_3)), true), 394f, vec2<f32>(-1000f, arg_1.c.x));
}

fn func_5(arg_0: Struct_4) -> i32 {
    let var_0 = Struct_3(!vec4<bool>(false, arg_0.a.a, true, false));
    global0 = array<f32, 20>();
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(682f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-265f, arg_0.b)));
    var var_2 = Struct_1(true);
    var_2 = func_2(true, ~0i, var_0.a.x);
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 30209i | _wgslsmith_mult_i32(-func_5(func_1(global1.zxy, Struct_4(Struct_1(true), global0[_wgslsmith_index_u32(u_input.b.x, 20u)], vec2<f32>(global0[_wgslsmith_index_u32(56u, 20u)], 1349f)), vec4<i32>(1i, -1i, 21330i, -28415i), false)), 57336i);
    global2 = array<Struct_2, 13>();
    var var_1 = func_1(~vec3<u32>(4294967295u, global1.x, 7580u), Struct_4(func_1(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b.x, 16756u, 0u), select(vec3<u32>(global1.x, u_input.b.x, global1.x), global1.xwx, vec3<bool>(true, true, false))), Struct_4(func_1(vec3<u32>(global1.x, 48913u, 1u), Struct_4(Struct_1(true), -625f, vec2<f32>(-664f, -129f)), vec4<i32>(-2147483647i, 1i, u_input.d.x, 2147483647i), false).a, 1000f, func_1(global1.zyx, Struct_4(Struct_1(false), global0[_wgslsmith_index_u32(31848u, 20u)], vec2<f32>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)])), vec4<i32>(59246i, var_0, -2147483647i, var_0), false).c), abs(-vec4<i32>(1i, u_input.d.x, 43978i, 1i)), true).a, 1427f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(2312f, _wgslsmith_f_op_f32(408f * 991f)))), ~_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 40459i, u_input.d.x, 2147483647i) >> (vec4<u32>(u_input.b.x, 67557u, global1.x, u_input.b.x) % vec4<u32>(32u)), ~vec4<i32>(var_0, 1i, var_0, u_input.a), select(vec4<i32>(var_0, 14736i, u_input.d.x, 2147483647i), vec4<i32>(u_input.a, 1i, u_input.a, -10070i), vec4<bool>(false, true, true, true))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -39715i, u_input.c.x, 0i), vec4<i32>(0i, 2147483647i, 17402i, u_input.c.x)))), all(vec3<bool>((u_input.b.x >= u_input.b.x) || func_2(true, 0i, true).a, any(vec2<bool>(true, true)), true)));
    var var_2 = 49887u;
    var var_3 = func_1(vec3<u32>(~countOneBits(global1.x << (4294967295u % 32u)), ~_wgslsmith_sub_u32(firstLeadingBit(0u), firstLeadingBit(u_input.b.x)), ~_wgslsmith_clamp_u32(~1u, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.b.x)), func_1(countOneBits((global1.xwx & vec3<u32>(71358u, 32956u, global1.x)) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, global1.x), global1.zxy)), func_1(global1.zxw, Struct_4(var_1.a, _wgslsmith_f_op_f32(952f * -1280f), _wgslsmith_f_op_vec2_f32(var_1.c * vec2<f32>(-735f, 1620f))), ~(-vec4<i32>(1i, var_0, u_input.c.x, -4351i)), global1.x <= ~global1.x), reverseBits(-(vec4<i32>(var_0, -42565i, -1i, var_0) | vec4<i32>(2147483647i, var_0, 1i, u_input.e.x))), all(select(!vec4<bool>(var_1.a.a, var_1.a.a, true, false), !vec4<bool>(var_1.a.a, true, var_1.a.a, var_1.a.a), select(vec4<bool>(false, var_1.a.a, true, var_1.a.a), vec4<bool>(var_1.a.a, true, var_1.a.a, false), false)))), vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_clamp_i32(u_input.a, 159i, u_input.a)), _wgslsmith_clamp_i32(-16453i, ~var_0, abs(1i))), u_input.a, -(~(-1i)), _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(49420i, u_input.c.x, 0i), vec3<i32>(2147483647i, u_input.a, -40063i)), select(vec3<i32>(u_input.a, -1i, u_input.c.x), u_input.d, false)))), !(any(vec3<bool>(var_1.a.a, var_1.a.a, false)) == true));
    let var_4 = Struct_1(true & var_1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

