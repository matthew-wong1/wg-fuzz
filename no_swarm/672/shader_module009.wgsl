struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(2458u, 711u, 38230u, 35004u);

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, true, true), vec3<f32>(892f, -1595f, -373f), vec2<f32>(-400f, -1000f), 4294967295u, vec4<i32>(141i, 0i, -10311i, 1i));

var<private> global2: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(1u, 4294967295u));

var<private> global3: vec3<i32>;

var<private> global4: Struct_1 = Struct_1(vec3<bool>(true, true, false), vec3<f32>(1103f, 565f, -450f), vec2<f32>(673f, -951f), 1u, vec4<i32>(i32(-2147483648), 728i, i32(-2147483648), -17948i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(vec3<bool>(!global4.a.x, false, !(!global4.a.x)), vec3<f32>(_wgslsmith_f_op_f32(round(-507f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.c.x - _wgslsmith_f_op_f32(step(873f, global1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c.x + 1864f)))), -280f), _wgslsmith_f_op_vec2_f32(global1.b.yy + vec2<f32>(642f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-892f - -584f), _wgslsmith_f_op_f32(arg_3.b.x + 488f))))), 4294967295u, vec4<i32>(-arg_3.e.x, ~(-(global4.e.x ^ global3.x)), select(global4.e.x, arg_3.e.x, all(vec4<bool>(arg_0, global4.a.x, arg_3.a.x, arg_3.a.x))) ^ global3.x, 19301i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global4.e.x, global3.x), _wgslsmith_add_vec2_i32(arg_3.e.zx, arg_3.e.xx))));
    global1 = arg_3;
    global0 = arg_1;
    let var_1 = -836f;
    let var_2 = ~abs(firstLeadingBit(arg_1));
    return select(1u, ~0u, !(!all(var_0.a)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> u32 {
    let var_0 = Struct_1(!select(vec3<bool>(global4.a.x & false, arg_1, global4.a.x), vec3<bool>(true & global4.a.x, false, arg_0.a.x | global4.a.x), arg_0.e.x >= (global3.x & 29186i)), arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.b.xx) - vec2<f32>(global1.c.x, arg_0.c.x)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, abs(global0.x)), 86574u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 77191u, 1u, 8606u), ~vec4<u32>(global1.d, 16555u, 28338u, 0u)), arg_0.d)), global4.e);
    let var_1 = var_0;
    let var_2 = Struct_1(!var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1418f, _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(1549f - 312f)), 298f)), vec2<f32>(_wgslsmith_f_op_f32(1243f + arg_0.b.x), -633f), 111790u, _wgslsmith_sub_vec4_i32(vec4<i32>(max(arg_2.x, global1.e.x), ~global3.x, ~global1.e.x, -1i) << (vec4<u32>(_wgslsmith_div_u32(0u, var_1.d), 0u, 0u, func_3(true, vec4<u32>(u_input.b.x, u_input.c.x, u_input.c.x, 1u), var_1.d, Struct_1(vec3<bool>(var_1.a.x, false, global4.a.x), vec3<f32>(-1341f, -124f, 1018f), var_0.b.zy, var_0.d, global1.e))) % vec4<u32>(32u)), arg_0.e));
    let var_3 = !(!select(select(var_2.a.yy, vec2<bool>(arg_1, global4.a.x), vec2<bool>(false, global4.a.x)), global1.a.zx, true));
    let var_4 = vec3<i32>(select(_wgslsmith_mult_i32(arg_2.x, -2147483647i), -global3.x, false) >> (global1.d % 32u), select(-30609i, _wgslsmith_mult_i32(-1i, ~(-var_0.e.x)), var_0.a.x), var_0.e.x ^ _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(var_2.e, vec4<i32>(0i, arg_2.x, var_2.e.x, global1.e.x), vec4<i32>(-2147483647i, -52490i, global3.x, u_input.d)), select(~vec4<i32>(arg_2.x, 1i, global1.e.x, var_0.e.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-18130i, 1i, 2147483647i, 9152i), vec4<i32>(2147483647i, var_1.e.x, 0i, global1.e.x)), vec4<bool>(false, false, false, var_3.x))));
    return ~1u;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: u32, arg_3: vec2<f32>) -> vec4<i32> {
    let var_0 = global4.a.x;
    var var_1 = -47065i;
    let var_2 = Struct_1(vec3<bool>(!global1.a.x & (global1.d != ~47677u), any(!(!global1.a)), !(!global4.a.x && any(global4.a.xz))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(213f)))), -1000f, true)), _wgslsmith_f_op_f32(1279f * global4.b.x), global4.b.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1143f - global4.b.x), _wgslsmith_f_op_f32(trunc(arg_1.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3 - arg_3) + _wgslsmith_div_vec2_f32(vec2<f32>(1071f, global4.c.x), arg_3))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_1.zz))))))), 33672u, firstTrailingBit(abs(global4.e | (vec4<i32>(32132i, u_input.d, 1i, global1.e.x) ^ vec4<i32>(6101i, u_input.d, -52936i, 2147483647i)))));
    let var_3 = vec2<i32>(1i, -16927i);
    global4 = var_2;
    return global1.e;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(select(select(select(vec3<bool>(global4.a.x, global4.a.x, global4.a.x), !vec3<bool>(true, global4.a.x, global1.a.x), select(vec3<bool>(true, global1.a.x, false), vec3<bool>(global1.a.x, global4.a.x, global4.a.x), global1.a)), !select(vec3<bool>(false, global1.a.x, global1.a.x), vec3<bool>(true, global1.a.x, true), vec3<bool>(global4.a.x, global4.a.x, global4.a.x)), global4.a.x | (20507u >= arg_1.x)), vec3<bool>(global1.a.x, !global1.a.x, global4.a.x | true), vec3<bool>(true, global1.a.x, select(true, any(vec4<bool>(global1.a.x, global4.a.x, global4.a.x, global1.a.x)), false && global1.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)))), _wgslsmith_f_op_vec2_f32(-global1.c), ~global0.x >> (64377u % 32u), global4.e);
    let var_1 = Struct_1(global4.a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-359f, 573f), _wgslsmith_f_op_f32(global4.c.x - var_0.b.x)), 878f))), _wgslsmith_f_op_vec2_f32(select(var_0.c, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(879f, global1.c.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global1.b.zy), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -2048f) - global4.c))))), global1.a.x)), 53139u, firstTrailingBit(vec4<i32>(arg_0.x, global1.e.x, _wgslsmith_mult_i32(-arg_0.x, arg_0.x), -16200i | global1.e.x)));
    var var_2 = _wgslsmith_f_op_f32(-118f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.c.x, global1.c.x))))));
    global0 = vec4<u32>(~1u, 10800u, ~4294967295u, global4.d);
    var var_3 = global1.d;
    return Struct_1(var_0.a, vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c.x))))), -1497f), _wgslsmith_f_op_vec2_f32(global1.b.yx - _wgslsmith_f_op_vec2_f32(-global1.b.xy)), _wgslsmith_sub_u32(1u, var_0.d ^ ~(global4.d | 1u)), _wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(abs(vec4<i32>(2147483647i, var_1.e.x, 19628i, 6455i)), max(vec4<i32>(1930i, 2608i, global3.x, 0i), global4.e)), ~(-(~vec4<i32>(arg_0.x, -1i, 1i, -2147483647i)))));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -1i;
    let var_1 = -450f;
    let var_2 = true;
    global2 = array<vec2<u32>, 1>();
    var_0 = _wgslsmith_add_i32(~(-arg_3.e.x), -2147483647i);
    return arg_2;
}

fn func_1() -> vec2<f32> {
    var var_0 = vec3<i32>(~(max(global3.x, _wgslsmith_sub_i32(global1.e.x, -17316i)) ^ firstTrailingBit(_wgslsmith_dot_vec4_i32(global4.e, vec4<i32>(u_input.d, u_input.d, 1i, global3.x)))), _wgslsmith_sub_i32(-26646i, global3.x), i32(-1i) * -2147483647i);
    var_0 = -vec3<i32>(-38415i, var_0.x, u_input.d);
    let var_1 = func_6(func_5(func_4(vec4<u32>(~u_input.b.x, ~1u, func_2(Struct_1(global1.a, global4.b, vec2<f32>(global1.c.x, global4.b.x), 4294967295u, vec4<i32>(-1i, var_0.x, -1i, global3.x)), global4.a.x, global4.e.zzw), ~u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)), 0u, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global1.c - global4.c), vec2<f32>(333f, global1.b.x)))), abs(select(global2[_wgslsmith_index_u32(global1.d, 1u)] >> (vec2<u32>(global0.x, 25357u) % vec2<u32>(32u)), reverseBits(vec2<u32>(48156u, 42097u)), global1.a.zz))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global4.b)) * global4.b), Struct_1(global4.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global4.b)), vec3<f32>(_wgslsmith_f_op_f32(-global4.b.x), global1.c.x, global1.c.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-157f, -1223f), global1.b.yx) * global4.c), vec2<f32>(-826f, _wgslsmith_f_op_f32(-global4.c.x)), global4.a.x)), ~4294967295u, global4.e), Struct_1(global4.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-272f, 730f, global4.c.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, -290f, global4.c.x))), vec3<f32>(_wgslsmith_f_op_f32(global1.b.x * -719f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1098f))), _wgslsmith_f_op_vec2_f32(ceil(global4.c)), ~44954u, global1.e));
    global1 = func_6(var_1, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_5(max(vec4<i32>(var_0.x, global1.e.x, 0i, -1i), vec4<i32>(global1.e.x, u_input.d, global4.e.x, global3.x)), ~global0.zy).b * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1380f, 1506f, -1179f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-355f, -1000f, -1143f)))))), func_5(var_1.e, select(reverseBits(~vec2<u32>(global1.d, 0u)), abs(vec2<u32>(4294967295u, 1u)), select(true, true, var_1.a.x))), Struct_1(func_5(-vec4<i32>(global3.x, global4.e.x, global4.e.x, global1.e.x), global0.wy).a, _wgslsmith_f_op_vec3_f32(-var_1.b), _wgslsmith_f_op_vec2_f32(var_1.b.yx + var_1.b.xz), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global2[_wgslsmith_index_u32(global0.x, 1u)], u_input.c.xy, vec2<u32>(0u, var_1.d)) >> (global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 34519u), 1u)] % vec2<u32>(32u)), reverseBits(vec2<u32>(global4.d, u_input.a.x) & global2[_wgslsmith_index_u32(4294967295u, 1u)])), global1.e));
    var_0 = -_wgslsmith_mod_vec3_i32(max(-var_1.e.ywz, -global4.e.zyz), abs(global1.e.wzz));
    return global1.b.zy;
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(select(arg_0.a, select(vec3<bool>(false, u_input.c.x != global0.x, global4.a.x), select(!global1.a, !vec3<bool>(false, global1.a.x, true), select(vec3<bool>(global4.a.x, arg_0.a.x, global1.a.x), vec3<bool>(global4.a.x, global1.a.x, true), vec3<bool>(true, true, true))), global1.a.x), true), _wgslsmith_f_op_vec3_f32(global4.b * _wgslsmith_f_op_vec3_f32(arg_0.b + arg_0.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-895f - global1.c.x), _wgslsmith_f_op_f32(arg_0.b.x + arg_0.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, 1304f)), func_6(Struct_1(vec3<bool>(global4.a.x, true, global1.a.x), vec3<f32>(global4.c.x, arg_0.b.x, -906f), global1.b.xz, 1u, vec4<i32>(2147483647i, global3.x, arg_0.e.x, global4.e.x)), vec3<f32>(301f, global1.b.x, 1220f), arg_0, arg_0).a.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1821f)), global1.b.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c), vec2<f32>(-209f, 121f)))), true)), ~(~_wgslsmith_sub_u32(~global1.d, _wgslsmith_dot_vec2_u32(global0.yy, global0.yx))), vec4<i32>(arg_0.e.x, func_5(vec4<i32>(global1.e.x, global1.e.x | global3.x, u_input.d, -21249i), ~(~vec2<u32>(global4.d, 0u))).e.x, abs(func_6(Struct_1(global1.a, vec3<f32>(-1861f, 406f, global1.c.x), global1.c, global1.d, vec4<i32>(u_input.d, global1.e.x, u_input.d, -8092i)), global4.b, func_6(Struct_1(vec3<bool>(true, false, false), vec3<f32>(-926f, global4.b.x, 1552f), vec2<f32>(-426f, global4.b.x), u_input.b.x, vec4<i32>(-2147483647i, 1i, -28124i, global1.e.x)), vec3<f32>(global4.b.x, -580f, 144f), Struct_1(vec3<bool>(global1.a.x, arg_0.a.x, global4.a.x), vec3<f32>(global4.c.x, -360f, 1000f), vec2<f32>(-173f, arg_0.c.x), 49401u, global1.e), Struct_1(vec3<bool>(arg_0.a.x, true, global4.a.x), global1.b, vec2<f32>(1000f, global4.c.x), arg_0.d, global1.e)), func_5(global4.e, vec2<u32>(1u, global1.d))).e.x), ~(~u_input.d & 1i)));
    let var_1 = arg_0;
    let var_2 = vec4<i32>(_wgslsmith_mod_i32(arg_0.e.x, global4.e.x), global3.x, ~112461i, arg_0.e.x) << (_wgslsmith_mult_vec4_u32(vec4<u32>(33329u, 17313u, arg_0.d, global0.x), ~vec4<u32>(func_3(var_0.a.x, vec4<u32>(32515u, var_0.d, var_1.d, 4294967295u), global0.x, var_1), arg_0.d, func_5(arg_0.e, vec2<u32>(global0.x, 4294967295u)).d, ~global1.d)) % vec4<u32>(32u));
    let var_3 = func_5(reverseBits(~firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, arg_0.e.x, u_input.d))) & ~global4.e, _wgslsmith_mod_vec2_u32(global2[_wgslsmith_index_u32(global1.d, 1u)], vec2<u32>(u_input.a.x | _wgslsmith_div_u32(global0.x, 13193u), 0u)));
    global4 = func_6(func_5(-reverseBits(_wgslsmith_mod_vec4_i32(var_0.e, vec4<i32>(-1i, -22694i, global1.e.x, var_2.x))), abs(vec2<u32>(var_1.d, select(1u, 21843u, true)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.x), -225f, arg_0.b.x), var_3.b, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b * vec3<f32>(148f, 994f, -779f))))))), var_0, Struct_1(vec3<bool>(!any(vec2<bool>(var_1.a.x, global1.a.x)), true, all(global1.a.zy)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2126f - -1000f) * var_1.c.x), global1.c.x, _wgslsmith_f_op_f32(-global4.c.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -150f)), func_6(func_5(vec4<i32>(1i, global4.e.x, var_0.e.x, var_1.e.x), global2[_wgslsmith_index_u32(arg_0.d, 1u)]), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c.x, arg_0.b.x, -759f), vec3<f32>(var_1.b.x, 171f, var_1.c.x), vec3<bool>(var_0.a.x, false, false))), var_1, func_6(var_3, var_3.b, var_3, Struct_1(var_3.a, vec3<f32>(var_0.b.x, 1007f, -202f), var_1.b.xy, 4294967295u, vec4<i32>(-1i, 54242i, u_input.d, 2147483647i)))).b.x), _wgslsmith_mod_u32(u_input.c.x ^ 16733u, ~(~65279u)), min(~var_1.e, reverseBits(vec4<i32>(-40010i, arg_0.e.x, global1.e.x, u_input.d)))));
    return Struct_1(func_5(-select(~global1.e, vec4<i32>(1i, 0i, -19459i, 0i), select(vec4<bool>(false, var_1.a.x, var_1.a.x, var_3.a.x), vec4<bool>(global4.a.x, true, global4.a.x, false), true)), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.zz, vec2<u32>(4294967295u, var_1.d)), ~global0.yw), global0.zx, ~(~vec2<u32>(var_1.d, u_input.c.x)))).a, vec3<f32>(global4.c.x, var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(arg_0.b.x + 624f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(510f, global4.b.x), vec2<f32>(1656f, -1830f)))), vec2<f32>(521f, _wgslsmith_f_op_f32(floor(global1.c.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.b.x, -829f), vec2<f32>(2108f, arg_0.b.x)))))), ~(~81093u), -vec4<i32>(_wgslsmith_mod_i32(var_1.e.x ^ 1i, ~2147483647i), ~reverseBits(var_0.e.x), var_2.x & global1.e.x, -reverseBits(var_1.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 1>();
    let var_0 = func_7(Struct_1(global4.a, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1368f, global1.c.x, global4.b.x))), _wgslsmith_f_op_vec2_f32(func_1()), global0.x, global4.e));
    global0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(37053u | _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], vec2<u32>(u_input.a.x, 1u)), 63235u >> (global4.d % 32u), ~func_2(Struct_1(vec3<bool>(global4.a.x, global1.a.x, true), global1.b, vec2<f32>(-1085f, -155f), u_input.c.x, vec4<i32>(13661i, global4.e.x, global4.e.x, 634i)), false, vec3<i32>(-1i, 2147483647i, global1.e.x)), 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(13677u, 0u, u_input.b.x, var_0.d) | vec4<u32>(35305u, 4294967295u, u_input.a.x, var_0.d), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(1u, global1.d, var_0.d, 0u)), firstTrailingBit(vec4<u32>(56608u, 61893u, 5754u, 37778u)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.c.x, -2263f, -1000f, 1349f))) - vec4<f32>(global4.c.x, 1264f, global1.c.x, 1128f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1418f * var_0.c.x) + _wgslsmith_f_op_f32(global1.c.x - 1000f)), _wgslsmith_div_f32(-1357f, _wgslsmith_f_op_f32(round(-1469f))), _wgslsmith_f_op_f32(-global1.b.x), global4.b.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global4.c.x, global1.c.x)), -334f, func_6(var_0, global4.b, Struct_1(vec3<bool>(global4.a.x, var_0.a.x, false), vec3<f32>(222f, var_0.b.x, -1806f), vec2<f32>(global1.c.x, global4.c.x), 27560u, vec4<i32>(-33157i, global1.e.x, -2147483647i, var_0.e.x)), Struct_1(global4.a, vec3<f32>(566f, -763f, 543f), vec2<f32>(global1.c.x, global1.c.x), global1.d, global1.e)).c.x, _wgslsmith_f_op_f32(-global1.c.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 114f, var_0.c.x, var_0.b.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, global1.b.x, global4.b.x, var_0.b.x) + vec4<f32>(global1.c.x, global4.c.x, var_0.c.x, 603f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.b.x, var_0.b.x, global4.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1450f, global4.b.x, global4.b.x, -170f) - vec4<f32>(global1.c.x, -264f, var_0.b.x, -744f))))))), var_0.a.x));
    let var_2 = (func_5(func_4(reverseBits(vec4<u32>(4294967295u, 6272u, 0u, 4294967295u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(263f, 266f, 259f) - vec3<f32>(var_0.c.x, -1000f, global4.c.x)), 0u, _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 1623f), global4.b.xy)), ~vec2<u32>(24433u, 53030u)).d << (~global1.d % 32u)) >= u_input.c.x;
    let var_3 = -1363f;
    global3 = global1.e.zzy;
    var var_4 = global3.x;
    let var_5 = var_1.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1106f)), global1.c.x, _wgslsmith_f_op_f32(max(361f, 1316f))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(func_1()).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(994f)), _wgslsmith_div_f32(global4.c.x, global1.c.x)))), vec2<u32>(~func_7(var_0).d, ~var_0.d), vec3<u32>(38014u, func_2(var_0, -18953i >= global1.e.x, vec3<i32>(13865i, u_input.d, 43441i) ^ global4.e.ywy), func_7(Struct_1(global1.a, vec3<f32>(126f, global4.b.x, var_1.x), vec2<f32>(1241f, 1397f), 0u, vec4<i32>(global4.e.x, global3.x, 46304i, global3.x))).d) & ~(~vec3<u32>(var_0.d, global0.x, global0.x) >> (~vec3<u32>(1u, 105514u, 4294967295u) % vec3<u32>(32u))), global1.e.x, _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 3001u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, 14397u, u_input.b.x), global0.yww)) | min(vec3<u32>(global0.x, 1u, var_0.d) | ~global0.yzw, (vec3<u32>(0u, 4294967295u, global0.x) << (vec3<u32>(1u, global1.d, global1.d) % vec3<u32>(32u))) | global0.yzx));
}

