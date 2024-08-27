struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: u32, arg_3: vec3<bool>) -> vec4<f32> {
    global0 = array<vec4<bool>, 7>();
    let var_0 = Struct_2(Struct_1(~(~arg_0), 1u, vec3<i32>(-1i) * -(vec3<i32>(0i, -2147483647i, -1i) | vec3<i32>(u_input.c.x, 1i, u_input.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, arg_1) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1000f, -1014f, arg_1))))), false, Struct_1(arg_0, 19818u, vec3<i32>(_wgslsmith_div_i32(u_input.b.x, 0i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.x, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, arg_0.x)) % 32u), u_input.b.x, 2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_1, -901f), arg_1, -334f, _wgslsmith_f_op_f32(-390f + arg_1)) - vec4<f32>(-589f, arg_1, 191f, _wgslsmith_f_op_f32(f32(-1f) * -142f)))), arg_3.x, Struct_1(arg_0, _wgslsmith_mult_u32(max(arg_2, 0u), countOneBits(1u)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(1i, 2147483647i, 7693i), vec3<i32>(1i, -1i, u_input.b.x), arg_3), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.a.x), vec3<i32>(32294i, u_input.a.x, -55082i))), vec3<i32>(u_input.b.x & 1i, 1i, max(u_input.b.x, 9283i))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1286f, arg_1, arg_1, arg_1), vec4<f32>(arg_1, -143f, 234f, -480f), global0[_wgslsmith_index_u32(4294967295u, 7u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 1165f, -324f)))))));
    var var_1 = Struct_3(true, var_0, vec2<u32>(_wgslsmith_mult_u32(~(~50261u), 0u), _wgslsmith_add_u32(max(_wgslsmith_div_u32(0u, 19180u), 4294967295u), ~(4294967295u >> (arg_0.x % 32u)))));
    var var_2 = Struct_4(-1i, vec4<bool>(!all(global0[_wgslsmith_index_u32(~var_0.a.b, 7u)]), -20149i < _wgslsmith_add_i32(_wgslsmith_sub_i32(var_1.b.c.c.x, var_1.b.a.c.x), ~var_1.b.a.c.x), all(arg_3.zx), true || (false & arg_3.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_1.b.a.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a.d * _wgslsmith_f_op_vec4_f32(var_0.a.d * vec4<f32>(arg_1, -695f, var_0.e.d.x, 777f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.d.x, var_1.b.c.d.x, var_1.b.c.d.x, 706f) + vec4<f32>(arg_1, arg_1, -3147f, var_1.b.a.d.x))))))), Struct_1(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(arg_2, 4294967295u, arg_2)), ~vec3<u32>(var_1.b.c.a.x, 44910u, 56085u)), arg_0.x, vec3<i32>(select(2147483647i, _wgslsmith_mult_i32(var_0.e.c.x, u_input.b.x), all(global0[_wgslsmith_index_u32(2574u, 7u)])), var_0.c.c.x, ~var_0.e.c.x), _wgslsmith_f_op_vec4_f32(-var_1.b.c.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-657f, _wgslsmith_f_op_f32(f32(-1f) * -426f)))));
    var var_3 = Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(arg_0, var_1.b.e.a), select(select(~var_0.e.a, vec3<u32>(var_1.b.c.b, 4294967295u, arg_0.x), var_1.b.b), _wgslsmith_div_vec3_u32(var_2.d.a | var_2.d.a, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, arg_2), var_2.d.a)), !vec3<bool>(var_0.b, var_1.a, var_0.d))), ~1u >> ((countOneBits(1u) << (var_1.c.x % 32u)) % 32u), -firstLeadingBit(var_1.b.c.c), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a.d.x * 1806f) - _wgslsmith_f_op_f32(arg_1 - var_1.b.c.d.x)), -1016f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.d.x)), -294f));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_3.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.e.d.x, -465f, 800f, 1324f)) * vec4<f32>(2281f, 732f, var_2.e, _wgslsmith_f_op_f32(min(arg_1, var_3.d.x)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-534f, -644f, var_0.c.d.x, var_1.b.a.d.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_3.d, vec4<f32>(-1397f, var_3.d.x, 1034f, -173f)))), var_0.e.d));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>) -> Struct_3 {
    global0 = array<vec4<bool>, 7>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1264f))), arg_1.x)), _wgslsmith_f_op_f32(trunc(277f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(289f))));
    let var_1 = Struct_2(Struct_1(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(16331u, 0u, 36648u), vec3<u32>(0u, 4294967295u, 1u))), 4294967295u, _wgslsmith_div_vec3_i32(select(~vec3<i32>(-1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -1i, 698i), vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(19694i, u_input.a.x, 57889i)), !arg_1), ~vec3<i32>(arg_0.x, u_input.a.x, -1i)), _wgslsmith_f_op_vec4_f32(func_3(min(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 29599u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * -1454f), _wgslsmith_f_op_f32(-744f + -1000f))), 0u, !(!arg_1)))), arg_1.x, Struct_1(~(select(vec3<u32>(34027u, 35499u, 74273u), vec3<u32>(26366u, 1u, 5225u), arg_1.x) | firstLeadingBit(vec3<u32>(0u, 79354u, 29680u))), ~(~1u), vec3<i32>(-1i) * -(~vec3<i32>(u_input.c.x, u_input.b.x, -2147483647i)), vec4<f32>(-1112f, _wgslsmith_f_op_f32(max(436f, _wgslsmith_f_op_f32(-1000f + -878f))), -1713f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1072f, 1000f, arg_1.x))))), all(global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 71533u, 53826u), vec4<u32>(2962u, 1u, 1u, 27311u))), 7u)]), Struct_1(~vec3<u32>(1u, 1u, 1u), ~(~1u), vec3<i32>(select(arg_0.x, _wgslsmith_mult_i32(-15271i, arg_0.x), !arg_1.x), -_wgslsmith_mult_i32(u_input.a.x, arg_0.x), arg_0.x), vec4<f32>(1f, 1f, 1f, 1f)));
    let var_2 = Struct_3(arg_1.x, var_1, _wgslsmith_add_vec2_u32(~(~(~vec2<u32>(4294967295u, 0u))), ~countOneBits(vec2<u32>(var_1.c.b, 1u))));
    let var_3 = Struct_3(true, var_1, var_2.b.e.a.zy);
    return Struct_3(!(!var_2.b.b), Struct_2(Struct_1(select(vec3<u32>(1u, var_3.b.a.a.x, var_3.c.x), var_2.b.e.a, var_1.d) | vec3<u32>(var_2.c.x, var_3.c.x, var_2.c.x), 11148u, var_1.a.c ^ ~var_2.b.e.c, vec4<f32>(_wgslsmith_f_op_f32(-var_3.b.a.d.x), _wgslsmith_f_op_f32(819f - var_3.b.c.d.x), _wgslsmith_div_f32(1060f, var_1.a.d.x), _wgslsmith_f_op_f32(ceil(var_3.b.c.d.x)))), var_3.b.a.b <= _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_2.b.c.a, vec3<u32>(7969u, 4294967295u, var_1.a.b)), firstTrailingBit(4799u)), Struct_1(vec3<u32>(~var_1.e.a.x, 36354u, firstTrailingBit(58348u)), var_1.a.a.x | var_3.c.x, var_1.c.c, var_1.a.d), !(-var_2.b.e.c.x >= countOneBits(arg_0.x)), Struct_1(var_1.a.a, 1u, vec3<i32>(-1i) * -vec3<i32>(-50537i, var_1.c.c.x, arg_0.x), var_1.a.d)), var_2.c);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_1) -> Struct_2 {
    global0 = array<vec4<bool>, 7>();
    global0 = array<vec4<bool>, 7>();
    var var_0 = -u_input.c;
    var_0 = (select(vec2<i32>(reverseBits(arg_3.c.x), abs(arg_3.c.x)), select(u_input.a, ~arg_3.c.zz, !arg_2.a), true | any(vec2<bool>(true, true))) & ~_wgslsmith_mod_vec2_i32(vec2<i32>(5385i, -22584i), _wgslsmith_mult_vec2_i32(arg_3.c.zy, vec2<i32>(-8425i, 12676i)))) | (vec2<i32>(_wgslsmith_add_i32(u_input.a.x, arg_0.x << (arg_2.c.x % 32u)), func_2(u_input.b, vec3<bool>(arg_2.a, arg_2.b.b, true)).b.e.c.x) << (arg_2.b.c.a.yx % vec2<u32>(32u)));
    var_0 = vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_2.b.a.c.zx, arg_3.c.yy), arg_2.b.c.c.x | (i32(-1i) * -1i)), reverseBits(_wgslsmith_add_i32(-countOneBits(arg_1.x), arg_2.b.e.c.x)));
    return Struct_2(func_2(~(vec2<i32>(-12543i, -34880i) << (arg_2.c % vec2<u32>(32u))), !select(select(vec3<bool>(false, arg_2.b.d, arg_2.a), vec3<bool>(true, arg_2.a, arg_2.a), vec3<bool>(arg_2.a, true, true)), !vec3<bool>(true, arg_2.b.b, false), !arg_2.b.b)).b.a, arg_2.a, func_2(arg_1.xz, !select(select(vec3<bool>(arg_2.a, false, false), vec3<bool>(false, true, true), arg_2.b.d), !vec3<bool>(arg_2.a, arg_2.a, true), false)).b.a, arg_2.b.b, Struct_1(arg_2.b.a.a, abs(arg_2.c.x >> (arg_2.b.c.b % 32u)) << (arg_3.a.x % 32u), _wgslsmith_sub_vec3_i32(-vec3<i32>(arg_1.x, arg_3.c.x, var_0.x), arg_3.c), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.d.x, -880f, arg_3.d.x, 812f)), arg_2.b.c.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.b.c.d))))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    global0 = array<vec4<bool>, 7>();
    var var_0 = Struct_4(u_input.c.x, !global0[_wgslsmith_index_u32(0u, 7u)], vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + 1358f))), -1588f, 1f, 1064f), func_4(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.a.c.x, -48520i), u_input.b) ^ -vec2<i32>(arg_0.a.c.x, -82279i), firstLeadingBit(~vec2<i32>(-64411i, -52024i))), abs(abs(reverseBits(vec4<i32>(u_input.b.x, 15022i, 20651i, arg_0.e.c.x)))), func_2(vec2<i32>(18051i, -u_input.c.x), vec3<bool>(!arg_0.b, arg_0.b, true)), arg_0.a).a, 1312f);
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_0.a, 1i), abs(arg_0.c.c.x), _wgslsmith_clamp_i32(u_input.a.x, 0i, var_0.a), var_0.a), ~vec4<i32>(28756i, 20424i, arg_0.a.c.x, 2147483647i)) & ~_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(var_0.d.c.x, 1237i, u_input.a.x, var_0.a)), -vec4<i32>(3727i, var_0.d.c.x, u_input.c.x, arg_0.c.c.x)), vec4<i32>(-firstTrailingBit(arg_0.a.c.x ^ 36936i), -arg_0.c.c.x, 35486i, countOneBits(_wgslsmith_div_i32(16087i, 78635i))));
    return var_0.d;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = arg_0.xw;
    var var_1 = firstTrailingBit(~arg_1.b);
    let var_2 = countOneBits(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(8624i, 1i, 15606i, -28390i)) << (vec4<u32>(arg_1.b, arg_1.b, arg_1.b, arg_1.b) % vec4<u32>(32u)), ~countOneBits(vec4<i32>(arg_1.c.x, u_input.c.x, u_input.c.x, 7608i))) ^ -(~(~vec4<i32>(arg_1.c.x, u_input.b.x, -1i, u_input.b.x))));
    var_1 = min(20302u, arg_1.b);
    var var_3 = ~reverseBits(-u_input.b.x) ^ _wgslsmith_sub_i32(-4228i, 34031i);
    return func_4(select(~firstTrailingBit(vec2<i32>(-1i, var_2.x) >> (arg_1.a.zz % vec2<u32>(32u))), arg_1.c.yx, arg_3), _wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(var_2, var_2), var_2) ^ -vec4<i32>(firstTrailingBit(-1i), ~arg_1.c.x, ~u_input.a.x, arg_1.c.x), Struct_3(_wgslsmith_f_op_f32(189f - _wgslsmith_f_op_f32(-arg_1.d.x)) >= -1395f, func_2(-vec2<i32>(arg_1.c.x, 13331i) | vec2<i32>(-30444i, var_2.x), select(select(arg_0.zzw, vec3<bool>(true, var_0.x, false), true), !vec3<bool>(arg_0.x, true, false), true)).b, firstTrailingBit(func_5(func_2(arg_1.c.zy, arg_0.zzw).b, 82311u, _wgslsmith_f_op_vec2_f32(-arg_1.d.ww)).a.zz)), func_5(func_4(-u_input.a, abs(vec4<i32>(u_input.a.x, u_input.b.x, arg_1.c.x, u_input.c.x)), Struct_3(true, func_4(u_input.c, vec4<i32>(7418i, u_input.b.x, arg_1.c.x, 33365i), Struct_3(true, Struct_2(Struct_1(arg_1.a, 16936u, vec3<i32>(-7210i, u_input.c.x, var_2.x), vec4<f32>(-229f, 528f, -864f, -557f)), arg_0.x, Struct_1(vec3<u32>(arg_1.a.x, arg_1.a.x, 4294967295u), arg_1.b, arg_1.c, vec4<f32>(arg_2.x, arg_1.d.x, -871f, arg_2.x)), false, arg_1), arg_1.a.zy), Struct_1(vec3<u32>(arg_1.a.x, 1u, 0u), arg_1.a.x, vec3<i32>(arg_1.c.x, var_2.x, arg_1.c.x), vec4<f32>(arg_2.x, 1000f, 1013f, -1878f))), firstLeadingBit(vec2<u32>(37336u, 0u))), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b, 16979u, 46890u), arg_1.a), 4294967295u, vec3<i32>(var_2.x, -14746i, var_2.x), vec4<f32>(arg_2.x, -662f, arg_2.x, arg_1.d.x))), arg_1.a.x, func_5(Struct_2(func_2(arg_1.c.yy, vec3<bool>(arg_0.x, false, false)).b.e, false, Struct_1(vec3<u32>(22440u, 59708u, 28719u), arg_1.a.x, vec3<i32>(0i, arg_1.c.x, 0i), vec4<f32>(arg_2.x, arg_2.x, arg_1.d.x, 1188f)), !arg_3.x, func_2(var_2.zw, vec3<bool>(arg_3.x, false, false)).b.a), ~(~arg_1.b), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_1.d.x) - vec2<f32>(arg_2.x, 701f))))).d.zz));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> Struct_3 {
    global0 = array<vec4<bool>, 7>();
    let var_0 = Struct_3(arg_1.x, func_6(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), func_5(func_4(u_input.a >> (vec2<u32>(14082u, 1u) % vec2<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(36258i, u_input.b.x, u_input.a.x, u_input.c.x), vec4<i32>(u_input.b.x, 2147483647i, -12231i, -1i)), func_2(u_input.b, vec3<bool>(false, false, arg_1.x)), Struct_1(vec3<u32>(0u, 1u, 11017u), 21574u, vec3<i32>(-2147483647i, u_input.c.x, 14146i), vec4<f32>(-156f, -150f, 520f, 1589f))), abs(1u), vec2<f32>(arg_0, arg_0)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 - arg_0))), 1329f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0)))), !arg_1), vec2<u32>(firstTrailingBit(func_2(u_input.b, vec3<bool>(arg_1.x, arg_1.x, arg_1.x)).b.c.b) << (~1u % 32u), 1u));
    var var_1 = Struct_4(func_5(Struct_2(func_5(Struct_2(Struct_1(var_0.b.c.a, var_0.b.e.a.x, vec3<i32>(-2147483647i, u_input.a.x, -1i), vec4<f32>(-530f, -391f, -1246f, -418f)), arg_1.x, var_0.b.c, false, Struct_1(vec3<u32>(1u, var_0.b.a.a.x, 1u), var_0.b.a.a.x, vec3<i32>(-2147483647i, -16701i, u_input.b.x), vec4<f32>(260f, -1929f, var_0.b.a.d.x, 1237f))), 1u, vec2<f32>(arg_0, 199f)), true, var_0.b.c, arg_1.x, func_6(global0[_wgslsmith_index_u32(var_0.b.e.b, 7u)], var_0.b.e, var_0.b.a.d, arg_1).a), 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.b.e.d.xz, vec2<f32>(539f, -639f))) - _wgslsmith_f_op_vec2_f32(var_0.b.e.d.zz + var_0.b.a.d.wy))).c.x | select(-(~var_0.b.c.c.x), ~func_2(u_input.b, vec3<bool>(false, false, true)).b.e.c.x, arg_1.x), !global0[_wgslsmith_index_u32(~firstTrailingBit(4294967295u), 7u)], var_0.b.a.d, Struct_1(countOneBits(select(vec3<u32>(var_0.b.a.a.x, var_0.c.x, var_0.c.x), vec3<u32>(0u, var_0.b.e.b, 13219u), arg_1.x)) | _wgslsmith_div_vec3_u32(~vec3<u32>(var_0.c.x, 21613u, 1662u), vec3<u32>(38707u, var_0.b.c.a.x, var_0.b.a.b)), _wgslsmith_clamp_u32(var_0.b.a.b, 1u, _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, var_0.b.c.b), var_0.b.e.b >> (27021u % 32u))), ~(vec3<i32>(0i, u_input.b.x, 11848i) >> (~var_0.b.c.a % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-var_0.b.e.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.c.d.x + var_0.b.a.d.x))))));
    let var_2 = vec4<u32>(max(var_1.d.a.x, 23813u | var_0.b.c.b), 4294967295u, var_1.d.a.x, 4294967295u);
    var_1 = Struct_4(~(-_wgslsmith_sub_i32(countOneBits(var_0.b.c.c.x), i32(-1i) * -1i)), !(!vec4<bool>(false, arg_1.x | var_1.b.x, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, var_0.b.a.d.x, 337f, var_1.c.x)))))), func_4(vec2<i32>(u_input.b.x, ~_wgslsmith_add_i32(u_input.b.x, -42661i)), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 1i), u_input.a.x, select(2147483647i, -2147483647i, true), var_1.a), -(~vec4<i32>(u_input.a.x, var_1.a, var_0.b.c.c.x, -69472i))), Struct_3((false | var_0.b.b) || select(var_0.a, false, true), func_6(var_1.b, Struct_1(vec3<u32>(35048u, var_1.d.a.x, 12877u), var_1.d.a.x, var_0.b.c.c, vec4<f32>(-125f, var_0.b.a.d.x, var_1.c.x, -720f)), var_0.b.c.d, arg_1), var_1.d.a.yx), Struct_1(var_0.b.c.a, func_2(max(u_input.c, vec2<i32>(-7552i, var_0.b.a.c.x)), var_1.b.yzx).b.e.b, ~(-var_0.b.e.c), var_0.b.c.d)).c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-938f + -1002f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e), 545f), select(any(var_1.b.zxy), false, true))), _wgslsmith_f_op_f32(f32(-1f) * -1202f), arg_1.x)));
    return var_0;
}

fn func_7(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    var var_0 = -vec2<i32>(arg_0.b.e.c.x, ~arg_0.b.e.c.x);
    let var_1 = select(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, arg_0.b.a.c.x, -1i), arg_1.a.c), countOneBits(_wgslsmith_clamp_i32(arg_0.b.e.c.x, 32573i, -38322i) | arg_1.e.c.x), arg_1.e.c.x), arg_0.b.e.c.x, arg_1.b);
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -_wgslsmith_dot_vec3_i32(~arg_0.b.c.c, arg_1.e.c | arg_1.a.c)), max(u_input.a, func_5(func_1(751f, vec2<bool>(arg_0.b.d, false)).b, _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0.b.e.a.x, arg_0.c.x), func_5(arg_1, arg_0.b.e.a.x, arg_0.b.e.d.xz).b), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(arg_1.a.d.yw, arg_0.b.c.d.yz)))).c.xx));
    global0 = array<vec4<bool>, 7>();
    return Struct_1(vec3<u32>(arg_0.c.x, 1u, arg_1.e.a.x), ~_wgslsmith_mult_u32(abs(15622u), _wgslsmith_dot_vec4_u32(vec4<u32>(13492u, 58452u, 29130u, arg_1.c.b), vec4<u32>(114028u, arg_0.b.c.b, arg_0.b.e.b, 11373u))) & arg_0.b.c.a.x, arg_1.a.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1280f, arg_1.c.d.x, arg_0.b.c.d.x, arg_0.b.e.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1649f)))), select(vec2<bool>(true, all(vec4<bool>(true, true, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true)), func_6(!global0[_wgslsmith_index_u32(~max(47524u, 19421u), 7u)], Struct_1(~func_4(vec2<i32>(u_input.c.x, u_input.b.x), vec4<i32>(u_input.b.x, -1i, -24016i, 1i), Struct_3(true, Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 0u), 9153u, vec3<i32>(-49144i, u_input.b.x, 14459i), vec4<f32>(520f, -794f, -763f, -550f)), false, Struct_1(vec3<u32>(24442u, 4294967295u, 31641u), 1u, vec3<i32>(2147483647i, -28674i, 1i), vec4<f32>(-1690f, -1491f, -967f, 1032f)), false, Struct_1(vec3<u32>(2072u, 30761u, 8300u), 26435u, vec3<i32>(9508i, u_input.a.x, u_input.a.x), vec4<f32>(1449f, 1699f, -446f, -228f))), vec2<u32>(13706u, 0u)), Struct_1(vec3<u32>(28019u, 34200u, 13159u), 4294967295u, vec3<i32>(43698i, -2147483647i, u_input.c.x), vec4<f32>(-206f, 729f, 974f, 218f))).c.a, 1u >> (firstLeadingBit(1u) % 32u), ~(vec3<i32>(u_input.b.x, u_input.c.x, 1i) ^ vec3<i32>(u_input.a.x, 1i, u_input.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(738f, 2038f, -1079f, -882f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-819f, -756f, -1553f, -1291f) + vec4<f32>(-785f, 339f, 1481f, 309f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-241f, 1000f, -1253f, 305f) - vec4<f32>(1000f, 1495f, 560f, -336f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-100f, 352f, 550f, 695f)))), vec2<bool>(true, true)));
    var var_1 = func_5(func_6(select(select(vec4<bool>(true, true, true, true), select(global0[_wgslsmith_index_u32(42944u, 7u)], vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), global0[_wgslsmith_index_u32(41978u, 7u)])), select(!global0[_wgslsmith_index_u32(var_0.b, 7u)], select(vec4<bool>(true, false, false, true), global0[_wgslsmith_index_u32(var_0.a.x, 7u)], global0[_wgslsmith_index_u32(14109u, 7u)]), global0[_wgslsmith_index_u32(1u, 7u)]), false), Struct_1(~vec3<u32>(62257u, 31415u, var_0.a.x), firstLeadingBit(var_0.b) >> ((var_0.a.x << (var_0.a.x % 32u)) % 32u), var_0.c, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(272f, var_0.d.x, var_0.d.x, var_0.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_0.d - var_0.d)))), !vec2<bool>(false, func_6(global0[_wgslsmith_index_u32(var_0.a.x, 7u)], Struct_1(var_0.a, 31746u, vec3<i32>(var_0.c.x, u_input.b.x, -2147483647i), vec4<f32>(1452f, var_0.d.x, -1027f, -186f)), vec4<f32>(-667f, 335f, var_0.d.x, -1000f), vec2<bool>(true, true)).d)), var_0.a.x, var_0.d.xy);
    let var_2 = ~vec4<u32>(~(~_wgslsmith_dot_vec2_u32(var_1.a.yz, vec2<u32>(var_1.a.x, 4294967295u))), ~4294967295u, 33046u, _wgslsmith_mod_u32(0u, 7936u));
    var var_3 = _wgslsmith_f_op_f32(round(var_1.d.x));
    let var_4 = !select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), -52977i > var_1.c.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.a.x == -7676i), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), true), any(vec4<bool>(true, true, true, true))));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x * 1646f));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1039f, var_0.d.x), _wgslsmith_f_op_vec2_f32(var_1.d.xy * var_0.d.yy))), func_6(!(!global0[_wgslsmith_index_u32(var_2.x, 7u)]), func_1(_wgslsmith_div_f32(var_1.d.x, var_0.d.x), select(var_4.zz, !var_4.xy, !var_4.x)).b.e, _wgslsmith_f_op_vec4_f32(exp2(var_0.d)), !select(vec2<bool>(true, var_4.x), var_4.yz, var_4.zx)).e.d.x);
}

