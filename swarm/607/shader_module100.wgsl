struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(i32(-2147483648), 57023i, -42348i, 72765i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<f32>) -> u32 {
    var var_0 = 1777f;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_2, arg_2), _wgslsmith_f_op_vec4_f32(ceil(arg_2)), min(arg_1, -19807i) >= -56839i))) * _wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(select(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 + arg_2)), !select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, true, true), arg_0.x)))));
    var var_2 = !select(vec4<bool>(~36711u != (1u | u_input.d), arg_0.x, any(select(vec2<bool>(true, false), vec2<bool>(arg_0.x, arg_0.x), arg_0.xz)), all(vec3<bool>(false, arg_0.x, arg_0.x))), vec4<bool>(all(arg_0.xz), u_input.c < ~4294967295u, (u_input.d == 4294967295u) && true, all(select(vec3<bool>(false, false, true), arg_0, vec3<bool>(true, arg_0.x, arg_0.x)))), false);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -318f));
    var var_3 = vec2<i32>(arg_1, arg_1);
    return ~u_input.c;
}

fn func_2() -> vec3<f32> {
    global0 = array<i32, 4>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -668f))), 393f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(777f)), -579f), 437f, !(0u >= u_input.d)))));
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~func_3(vec3<bool>(true, true, true), 2147483647i, vec4<f32>(-1000f, -1000f, 363f, 242f)), u_input.c), 4u)] & ~0i);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-764f)) * _wgslsmith_f_op_f32(floor(894f))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.d, u_input.d, u_input.d)), ~vec3<u32>(1u, 110842u, 21897u) | firstLeadingBit(vec3<u32>(u_input.d, u_input.c, u_input.c))), ~(~vec3<u32>(4294967295u, u_input.c, u_input.c) & ~vec3<u32>(0u, 1u, u_input.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1149f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1233f), -1136f)))), Struct_2(0i), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(539f)), _wgslsmith_div_f32(154f, -1286f), true)), -386f)), _wgslsmith_sub_u32(77659u, u_input.c), ~(~(~u_input.a)), -1i, vec2<f32>(632f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(594f, -541f)))));
    var var_3 = Struct_1(816f, 42713u, ~_wgslsmith_add_i32(abs(u_input.b), ~5452i), global0[_wgslsmith_index_u32(var_2.e.b, 4u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_2.c)) + vec2<f32>(_wgslsmith_f_op_f32(var_2.c.x + -476f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.e.e.x))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.a, var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(277f * var_3.e.x))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>) -> u32 {
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(min(-1169f, _wgslsmith_f_op_f32(-643f - _wgslsmith_f_op_f32(ceil(653f))))), u_input.d, arg_1, Struct_2(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.d, 4u)], -2147483647i), vec3<i32>(-1i, u_input.b, -1i)))), Struct_1(-1184f, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 42658u), ~vec2<u32>(10255u, u_input.c)), _wgslsmith_div_i32(min(global0[_wgslsmith_index_u32(40454u, 4u)], u_input.a), ~global0[_wgslsmith_index_u32(1u, 4u)]), u_input.b, arg_1)), vec2<i32>(select(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.d, 4u)], firstLeadingBit(2147483647i), -2147483647i), ~_wgslsmith_mult_i32(u_input.b, u_input.b), select(false, arg_1.x >= arg_0.x, true)), u_input.a), Struct_1(_wgslsmith_f_op_f32(trunc(-1301f)), func_3(vec3<bool>(true, true, -1559f < arg_0.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 4u)], 24169i, -20831i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], -1i)), 9627i, ~u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(989f, arg_0.x, arg_1.x, 360f)))), select(_wgslsmith_add_i32(u_input.b, global0[_wgslsmith_index_u32(abs(u_input.c), 4u)]), -(u_input.b | -17925i), !(-426f > arg_1.x)), u_input.a | (-26354i >> (u_input.d % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yy + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -218f) * vec2<f32>(-118f, -664f))))), Struct_1(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_vec3_f32(func_2()).x)), _wgslsmith_sub_u32(firstTrailingBit(~u_input.d), _wgslsmith_sub_u32(0u, u_input.d)), ~6567i << (countOneBits(_wgslsmith_mod_u32(84125u, 5164u)) % 32u), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(23541u, 4u)], -1041i)), select(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 4u)], -1i), reverseBits(vec2<i32>(global0[_wgslsmith_index_u32(1u, 4u)], -1i)), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.zx)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1, vec2<f32>(-744f, arg_1.x)))))), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)))));
    var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-var_0.c.e.x))), ~u_input.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.e.e.x, 1021f))), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))), Struct_2(_wgslsmith_dot_vec2_i32(var_0.b >> (vec2<u32>(11726u, 13797u) % vec2<u32>(32u)), var_0.b)), Struct_1(arg_0.x, min(~76575u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.b, var_0.c.b, var_0.c.b, u_input.c), vec4<u32>(var_0.a.e.b, u_input.c, u_input.c, 0u))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(32236u, _wgslsmith_div_u32(66173u, var_0.a.b)), 4u)], u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.x, arg_1.x), vec2<f32>(arg_0.x, arg_1.x))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.x, -155f), vec2<f32>(arg_1.x, var_0.d.e.x)))))), vec2<i32>(-2147483647i, -12572i & _wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 4u)], u_input.a | global0[_wgslsmith_index_u32(var_0.c.b, 4u)])), var_0.a.e, var_0.a.e, !(((global0[_wgslsmith_index_u32(40181u, 4u)] < global0[_wgslsmith_index_u32(5491u, 4u)]) & !var_0.e) | !(arg_1.x < var_0.c.e.x)));
    var_0 = Struct_4(Struct_3(-132f, firstLeadingBit(1u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec3_f32(func_2()).yy)), var_0.a.d, var_0.a.e), var_0.b & ~select(var_0.b & var_0.b, -vec2<i32>(global0[_wgslsmith_index_u32(11664u, 4u)], -9573i), vec2<bool>(var_0.e, true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-243f - arg_0.x), 120f))), countOneBits(12056u), min(0i, ~(-var_0.c.c)), global0[_wgslsmith_index_u32(u_input.d, 4u)], _wgslsmith_f_op_vec2_f32(-var_0.a.c)), var_0.d, var_0.e);
    let var_1 = var_0.a.d;
    let var_2 = var_0.a;
    return 8392u & var_0.a.b;
}

fn func_5(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    var var_0 = arg_1.xy;
    global0 = array<i32, 4>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1422f, 622f)))))), 35608u, _wgslsmith_f_op_vec3_f32(func_2()).yz, Struct_2(-20712i << (~(~u_input.d) % 32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f))), ~(~var_0.x) & 4294967295u, global0[_wgslsmith_index_u32(arg_1.x, 4u)], -arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-320f)), _wgslsmith_f_op_f32(round(-788f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-960f, _wgslsmith_f_op_f32(f32(-1f) * -251f)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>) -> Struct_3 {
    global0 = array<i32, 4>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(1000f, -1103f)), _wgslsmith_f_op_f32(func_5(global0[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.e.x, -1160f))), 4u)], ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 4294967295u, arg_0.b, arg_0.b), vec4<u32>(arg_0.e.b, 6505u, 1u, 1u))))));
    global0 = array<i32, 4>();
    var var_1 = select(_wgslsmith_mod_u32(8512u, 57442u) <= ~(~_wgslsmith_mod_u32(u_input.d, u_input.c)), all(vec4<bool>(true, true && all(vec4<bool>(true, false, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), true)), false);
    var var_2 = arg_0.a;
    return arg_0;
}

fn func_6(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_clamp_vec2_u32(min(vec2<u32>(~14900u, ~arg_0.e.b), ~(~vec2<u32>(arg_0.e.b, arg_0.b))), firstLeadingBit(~vec2<u32>(arg_0.b >> (1u % 32u), ~arg_0.b)), ~(~(~(~vec2<u32>(0u, u_input.d)))));
    let var_1 = 16993i;
    let var_2 = ~firstTrailingBit(-2147483647i) << (~_wgslsmith_add_u32(~abs(1u), u_input.c << (1u % 32u)) % 32u);
    var_0 = vec2<u32>(arg_0.b, _wgslsmith_mult_u32(_wgslsmith_mult_u32(countOneBits(countOneBits(u_input.d)), u_input.c >> (~u_input.c % 32u)), 15367u));
    let var_3 = arg_0.e;
    return vec2<bool>(any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))), true | (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_0.a, var_3.a)), _wgslsmith_f_op_f32(floor(var_3.e.x)))) < _wgslsmith_f_op_f32(step(259f, _wgslsmith_f_op_f32(-var_3.a)))));
}

fn func_7(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_dot_vec4_i32(max(reverseBits(vec4<i32>(37627i, 2147483647i, u_input.a, -1i)), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(-49471i, u_input.a, -2147483647i, -24846i)), vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.c, 4u)], -9957i, u_input.b) << (vec4<u32>(u_input.d, u_input.d, 0u, 1u) % vec4<u32>(32u)))) & max(countOneBits(vec4<i32>(-1i, 50867i, 80298i, 1i)), select(_wgslsmith_div_vec4_i32(vec4<i32>(-2897i, global0[_wgslsmith_index_u32(1u, 4u)], 0i, -6191i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 4u)], u_input.a, global0[_wgslsmith_index_u32(u_input.d, 4u)], global0[_wgslsmith_index_u32(88903u, 4u)])), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.a, u_input.b), vec4<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 4u)], -2147483647i), vec4<i32>(2147483647i, -1i, 16259i, global0[_wgslsmith_index_u32(4294967295u, 4u)])), vec4<bool>(true, arg_0.x, arg_0.x, arg_1.x))), vec4<i32>(u_input.a, ~global0[_wgslsmith_index_u32(~u_input.d, 4u)], firstLeadingBit(-u_input.b), min(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.d, 4u)] << (u_input.d % 32u), _wgslsmith_mult_i32(24560i, u_input.a)), abs(-u_input.a))));
    global0 = array<i32, 4>();
    let var_1 = ~(~2147483647i);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_2()).x, _wgslsmith_f_op_f32(1985f * _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(1000f - arg_2))), arg_1.x)), 19768u, -abs(firstLeadingBit(~(-2147483647i))), global0[_wgslsmith_index_u32(u_input.d, 4u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * -209f))) - vec2<f32>(arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_2, arg_2)), -186f)))));
    var_2 = func_1(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_2()).x, -385f))), u_input.c, var_2.e, Struct_2(~var_2.c), Struct_1(_wgslsmith_f_op_f32(-arg_2), u_input.d, var_2.c << (93964u % 32u), -1i, _wgslsmith_f_op_vec2_f32(-var_2.e))), countOneBits(firstTrailingBit(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -12326i, -49354i, -7936i), vec4<i32>(2147483647i, var_1, 10644i, -24059i)))))).e;
    return vec4<bool>(arg_1.x || any(select(arg_1, select(vec3<bool>(arg_1.x, arg_0.x, arg_1.x), arg_1, true), select(vec3<bool>(arg_0.x, true, arg_1.x), arg_1, false))), all(select(vec3<bool>(arg_1.x, false, 1u == u_input.d), select(arg_1, !vec3<bool>(false, arg_0.x, arg_1.x), arg_2 < 461f), vec3<bool>(arg_2 >= var_2.e.x, true, arg_1.x))), !func_6(func_1(func_1(Struct_3(arg_2, var_2.b, vec2<f32>(366f, arg_2), Struct_2(global0[_wgslsmith_index_u32(var_2.b, 4u)]), Struct_1(-206f, 0u, u_input.a, -2147483647i, var_2.e)), vec4<i32>(global0[_wgslsmith_index_u32(0u, 4u)], u_input.b, u_input.a, -1i)), vec4<i32>(1i, var_1, 30176i, 4267i))).x, any(!(!(!vec4<bool>(arg_1.x, true, true, arg_0.x)))));
}

fn func_8(arg_0: i32, arg_1: vec2<u32>, arg_2: i32, arg_3: vec4<bool>) -> StorageBuffer {
    let var_0 = 152u;
    global0 = array<i32, 4>();
    let var_1 = _wgslsmith_mod_i32(~arg_2, 30218i) & max(abs(58408i), arg_0);
    global0 = array<i32, 4>();
    var var_2 = 1f;
    return StorageBuffer(func_4(vec3<f32>(_wgslsmith_div_f32(568f, _wgslsmith_f_op_f32(trunc(1670f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1649f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_2()).x, -781f))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * 1579f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(965f + 413f), _wgslsmith_f_op_f32(f32(-1f) * -224f), true)))), _wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1260f, 432f, -2524f, 1000f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(523f, 1787f, 122f, 228f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(212f, 2065f, 236f, -112f), vec4<f32>(126f, 1573f, 389f, -1064f))), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -841f, 845f, -572f), vec4<f32>(1826f, 1009f, 766f, 803f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(668f, -737f, 1506f, -757f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1645f, 547f, -856f, 218f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-339f, -397f, 1384f, 123f))))))), ~_wgslsmith_mod_i32(~u_input.a, (24835i | arg_2) >> (~4294967295u % 32u)), vec3<u32>(1u, arg_1.x, ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_8(u_input.a << (_wgslsmith_mult_u32(~abs(u_input.d), u_input.c) % 32u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.c & u_input.c), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c, 4497u), vec2<u32>(4294967295u, _wgslsmith_div_u32(u_input.c, u_input.c))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.c), max(vec2<u32>(u_input.c, 5027u), vec2<u32>(u_input.d, u_input.d))), ~(~vec2<u32>(u_input.d, 4294967295u)))), 2147483647i, func_7(select(vec2<bool>(true, true), func_6(func_1(Struct_3(446f, u_input.c, vec2<f32>(-2033f, -565f), Struct_2(global0[_wgslsmith_index_u32(u_input.c, 4u)]), Struct_1(258f, 1u, u_input.a, global0[_wgslsmith_index_u32(u_input.d, 4u)], vec2<f32>(-651f, -519f))), vec4<i32>(50197i, global0[_wgslsmith_index_u32(16837u, 4u)], u_input.a, -18876i))), all(vec2<bool>(true, false)) | true), vec3<bool>(true, true, true), 654f));
}

