struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false));

var<private> global1: vec3<u32> = vec3<u32>(10699u, 66567u, 0u);

var<private> global2: array<Struct_2, 20>;

var<private> global3: Struct_1 = Struct_1(1912f, vec4<f32>(-760f, -2183f, -708f, -1159f), vec4<bool>(false, true, true, true), -1221f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_1.b.x, -1698f)))) * arg_1.d), _wgslsmith_f_op_vec4_f32(-global3.b), global3.c, arg_0.a);
    var var_1 = u_input.d.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-165f - 1603f))));
    var var_3 = _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(28260u, 1u), global1.yx), abs(max(0u, global1.x)), 1u)), ~vec4<u32>(global1.x, ~u_input.d.x, global1.x, 0u));
    var_2 = -1000f;
    return abs(1u);
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = ~(_wgslsmith_mult_vec4_u32(vec4<u32>(~1u, global1.x, arg_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, global1.x, 44260u), vec4<u32>(u_input.c, 11599u, 37107u, 69629u))), ~select(vec4<u32>(60644u, u_input.d.x, 2522u, 13515u), vec4<u32>(0u, global1.x, u_input.d.x, 61677u), arg_0.e.c.x)) | vec4<u32>(0u, countOneBits(_wgslsmith_mod_u32(73129u, global1.x)), ~arg_0.d, select(1u, func_3(arg_0.c, Struct_1(273f, global3.b, vec4<bool>(global3.c.x, arg_0.c.c.x, false, global3.c.x), -288f), global3.c.xz), global3.c.x)));
    global3 = Struct_1(_wgslsmith_f_op_f32(trunc(-3129f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-679f, -2682f, -625f, -641f)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_0.c.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1422f, 1000f, 310f, 1121f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.d, global3.d, -184f, -539f))))))), !select(select(!vec4<bool>(arg_0.c.c.x, global3.c.x, true, false), !global3.c, false), select(!global3.c, vec4<bool>(arg_0.c.c.x, false, arg_0.c.c.x, true), true), any(vec2<bool>(arg_0.c.c.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.e.a, -521f) - 381f))));
    global0 = array<vec4<bool>, 32>();
    var var_1 = Struct_2(firstTrailingBit(~countOneBits(firstTrailingBit(vec3<u32>(global1.x, 4294967295u, 4294967295u)))), arg_0.e.b.x, Struct_1(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.d), _wgslsmith_div_f32(-1260f, -1720f), 877f, _wgslsmith_div_f32(arg_0.c.d, 212f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.e.b * vec4<f32>(-550f, -175f, -1644f, 984f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, arg_0.c.d, 593f, 1783f)))), arg_0.c.c, _wgslsmith_f_op_f32(trunc(arg_0.e.a))), 0u, Struct_1(global3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b, arg_0.e.b.x, -1670f, -201f), global3.b))))), global3.c, _wgslsmith_f_op_f32(exp2(arg_0.c.b.x))));
    var_1 = arg_0;
    return var_1.e;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> f32 {
    global2 = array<Struct_2, 20>();
    global1 = vec3<u32>(~80174u, abs(u_input.a), global1.x);
    let var_0 = _wgslsmith_add_i32(-2147483647i >> (_wgslsmith_mod_u32(u_input.d.x, func_3(Struct_1(-381f, vec4<f32>(arg_0.b.x, -2210f, -1722f, 1318f), vec4<bool>(global3.c.x, true, global3.c.x, false), arg_0.b.x), Struct_1(-983f, vec4<f32>(global3.a, arg_0.d, global3.d, -1184f), vec4<bool>(true, global3.c.x, global3.c.x, global3.c.x), 637f), global3.c.xz) & u_input.a) % 32u), 16449i);
    var var_1 = firstLeadingBit(vec2<u32>(global1.x, ~(~4294967295u) | global1.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(arg_0.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec3<u32>, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(abs(-vec2<i32>(u_input.b, -2147483647i)), vec2<i32>(_wgslsmith_dot_vec2_i32(arg_3.zy, vec2<i32>(2147483647i, -38245i)), 6761i)) >> (vec2<u32>(52419u, ~(~0u)) % vec2<u32>(32u)), ~reverseBits(-_wgslsmith_div_vec2_i32(vec2<i32>(-3205i, u_input.b), vec2<i32>(u_input.b, u_input.b))));
    var var_1 = Struct_2(~vec3<u32>(~arg_2.x, 1u, ~(u_input.c | 111502u)), global3.a, arg_0.e, ~arg_0.a.x, Struct_1(_wgslsmith_f_op_f32(-arg_0.e.d), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global3.b), _wgslsmith_div_vec4_f32(arg_0.e.b, vec4<f32>(-829f, arg_0.c.b.x, global3.d, global3.a)), func_2(Struct_2(arg_0.a, -223f, Struct_1(-1988f, vec4<f32>(arg_0.e.d, global3.b.x, 244f, -455f), vec4<bool>(true, false, arg_1, true), 251f), arg_0.a.x, Struct_1(global3.b.x, vec4<f32>(-456f, arg_0.c.b.x, arg_0.e.a, -782f), vec4<bool>(true, global3.c.x, global3.c.x, true), arg_0.e.b.x)), arg_3.x).c)))), func_2(Struct_2(vec3<u32>(25321u, arg_0.d, u_input.d.x), -2637f, func_2(Struct_2(arg_0.a, arg_0.c.a, Struct_1(-1205f, vec4<f32>(1032f, arg_0.b, -354f, arg_0.e.a), global0[_wgslsmith_index_u32(arg_0.a.x, 32u)], arg_0.e.b.x), global1.x, arg_0.c), u_input.b), min(arg_2.x, u_input.c), Struct_1(arg_0.b, vec4<f32>(arg_0.b, 941f, 1142f, global3.a), global0[_wgslsmith_index_u32(4294967295u, 32u)], -936f)), 47350i & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(68427i, u_input.b, u_input.b))).c, _wgslsmith_div_f32(1000f, 786f)));
    var var_2 = 4294967295u;
    var var_3 = !global0[_wgslsmith_index_u32(u_input.a, 32u)];
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(select(23591u, 0u, false), 20u)], u_input.b).d - -1824f), -1332f)), -472f);
    return Struct_2(~min(vec3<u32>(~4294967295u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(44520u, global1.x, 648u), arg_2)), abs(~vec3<u32>(var_1.d, u_input.d.x, 1u))), 989f, var_1.c, arg_0.d, func_2(Struct_2(~_wgslsmith_sub_vec3_u32(arg_0.a, arg_2), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, arg_0.e.a)), Struct_1(_wgslsmith_f_op_f32(-612f + global3.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.a, 573f, global3.a, -1244f)), !arg_0.e.c, 133f), arg_2.x, arg_0.e), -2147483647i));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global2 = array<Struct_2, 20>();
    var var_0 = func_5(Struct_2(~(~abs(vec3<u32>(34682u, u_input.a, u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -1540f), Struct_1(global3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(430f, -1000f, -1285f, global3.b.x))), vec4<bool>(select(global3.c.x, true, global3.c.x), global3.c.x, true, any(global3.c.xzw)), _wgslsmith_f_op_f32(func_4(func_2(Struct_2(vec3<u32>(0u, u_input.c, 53953u), 148f, Struct_1(global3.d, global3.b, vec4<bool>(global3.c.x, true, false, global3.c.x), global3.d), 0u, Struct_1(1585f, global3.b, vec4<bool>(global3.c.x, global3.c.x, global3.c.x, true), global3.b.x)), 2147483647i), max(arg_0, 36496i)))), abs(4294967295u), Struct_1(_wgslsmith_f_op_f32(-func_2(Struct_2(vec3<u32>(global1.x, 67180u, 4294967295u), global3.d, Struct_1(1840f, vec4<f32>(global3.a, -691f, global3.a, global3.a), global0[_wgslsmith_index_u32(76211u, 32u)], global3.a), u_input.c, Struct_1(global3.a, global3.b, vec4<bool>(true, true, true, true), 565f)), -17167i).d), vec4<f32>(_wgslsmith_f_op_f32(-global3.a), -1844f, -1340f, global3.a), select(select(vec4<bool>(global3.c.x, true, global3.c.x, true), global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(global1.x, 32u)]), !vec4<bool>(global3.c.x, global3.c.x, global3.c.x, true), !vec4<bool>(false, true, global3.c.x, global3.c.x)), global3.b.x)), global3.c.x, ~(~min(vec3<u32>(0u, u_input.c, global1.x), abs(vec3<u32>(1u, 4294967295u, global1.x)))), firstTrailingBit(vec3<i32>(_wgslsmith_div_i32(0i, -16846i), -1i, -45839i)));
    let var_1 = Struct_2(~var_0.a, _wgslsmith_f_op_f32(694f - var_0.c.b.x), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(func_2(Struct_2(var_0.a, -1215f, Struct_1(404f, global3.b, vec4<bool>(var_0.e.c.x, false, true, false), var_0.b), 4294967295u, var_0.c), arg_0).a, global3.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.d, -171f, -992f, var_0.e.b.x) * vec4<f32>(738f, 1320f, 664f, -1000f)) + vec4<f32>(global3.b.x, -852f, 190f, -1000f))), var_0.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a))), _wgslsmith_sub_u32(var_0.a.x, 1u), var_0.c);
    return Struct_1(-552f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.d)) - global3.d), _wgslsmith_f_op_f32(-574f + 560f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d * 1000f)), _wgslsmith_f_op_f32(global3.b.x - -196f)), vec4<bool>(true, all(var_1.e.c), any(!var_0.c.c), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) * func_5(global2[_wgslsmith_index_u32(var_0.a.x, 20u)], var_1.c.c.x, var_1.a, vec3<i32>(1745i, arg_0, 1i)).c.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(142f + -645f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 32>();
    var var_0 = u_input.a;
    let var_1 = u_input.d;
    let var_2 = func_1(u_input.b);
    global3 = func_5(func_5(global2[_wgslsmith_index_u32(1u, 20u)], all(var_2.c.zx), abs(abs(abs(vec3<u32>(u_input.a, var_1.x, u_input.c)))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, u_input.b, u_input.b), reverseBits(vec3<i32>(1i, u_input.b, u_input.b)))), all(global3.c), vec3<u32>(1u, func_5(global2[_wgslsmith_index_u32(1u, 20u)], true, vec3<u32>(37460u, _wgslsmith_add_u32(4294967295u, global1.x), u_input.c), ~(-vec3<i32>(10166i, -13642i, u_input.b))).d, _wgslsmith_clamp_u32(select(~var_1.x, 4294967295u, true), 15268u, ~_wgslsmith_div_u32(u_input.a, 8917u))), ~vec3<i32>(u_input.b, u_input.b, u_input.b)).c;
    global0 = array<vec4<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, reverseBits(vec2<u32>(~global1.x, var_1.x) ^ _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(var_1, global1.xy, u_input.d), vec2<u32>(var_1.x, u_input.c))), var_2.b.xyz, global1.x, _wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(abs(vec3<u32>(var_1.x, u_input.a, u_input.d.x)), firstLeadingBit(vec3<u32>(20508u, 78441u, 26349u))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), ~vec2<u32>(10758u, 0u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, global1.x, 0u), vec4<u32>(u_input.d.x, global1.x, global1.x, u_input.c)), 1u)));
}

