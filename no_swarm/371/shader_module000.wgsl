struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<bool>,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
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

var<private> global0: bool;

var<private> global1: u32;

var<private> global2: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global2 = array<vec3<bool>, 32>();
    global2 = array<vec3<bool>, 32>();
    var var_0 = vec3<u32>(~37214u, ~(~(0u & u_input.a.x) & 24696u), ~u_input.c);
    let var_1 = true;
    let var_2 = Struct_1(var_1, ~((vec3<u32>(67771u, 46363u, 1068u) | ~vec3<u32>(0u, var_0.x, 1u)) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, u_input.a.x, 55102u), vec3<u32>(u_input.a.x, var_0.x, u_input.a.x)), vec3<u32>(u_input.c, var_0.x, 5265u) & vec3<u32>(u_input.a.x, u_input.c, 33017u))), !(!vec2<bool>(false & var_1, true)), var_0.x, countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0, arg_0, u_input.e.x), vec3<i32>(arg_0, 1i, arg_0))));
    return var_2;
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = func_2(firstTrailingBit(_wgslsmith_dot_vec2_i32(~countOneBits(vec2<i32>(u_input.b, u_input.e.x)), vec2<i32>(i32(-1i) * -2147483647i, 16543i))));
    let var_1 = var_0;
    let var_2 = u_input.e | u_input.e;
    let var_3 = var_0;
    let var_4 = abs(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-25976i, _wgslsmith_dot_vec3_i32(var_3.e, vec3<i32>(var_3.e.x, 2147483647i, var_2.x)), var_1.e.x, _wgslsmith_dot_vec4_i32(var_2, u_input.e)), vec4<i32>(~var_2.x, -23375i, 745i & var_0.e.x, var_1.e.x | u_input.d))));
    return var_3.d;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<i32>, arg_3: f32) -> u32 {
    global1 = min(arg_0 << (~(~0u) % 32u), arg_0);
    var var_0 = !global2[_wgslsmith_index_u32(~41202u, 32u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 351f, 185f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, 1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, 436f, -2320f) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(941f, 622f, -1794f), vec3<f32>(arg_3, 605f, arg_3)))))))));
    global2 = array<vec3<bool>, 32>();
    var var_2 = func_2(u_input.b);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~30521u, ~1u, _wgslsmith_div_u32(u_input.a.x, 1u), 10817u & arg_0), firstLeadingBit(vec4<u32>(u_input.c, 1u, 4294967295u, u_input.c))) | vec4<u32>(_wgslsmith_mult_u32(1u, ~4294967295u), 1u, arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, 0u, var_2.b.x), vec3<u32>(arg_0, var_2.b.x, var_2.d)) >> (arg_0 % 32u)), select(abs(vec4<u32>(4294967295u, ~7920u, _wgslsmith_dot_vec3_u32(var_2.b, var_2.b), ~var_2.b.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, select(arg_0, 1u, var_0.x), _wgslsmith_sub_u32(var_2.b.x, 13578u), 125u), select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 21765u, 9244u, var_2.d), vec4<u32>(22664u, var_2.d, 98884u, u_input.a.x)), vec4<u32>(84244u, 0u, 751u, var_2.d) | vec4<u32>(0u, 0u, 25948u, 1u), !var_0.x)), select(vec4<bool>(true, var_0.x | var_0.x, 1707f >= var_1.x, !var_0.x), !select(vec4<bool>(true, var_0.x, var_2.c.x, true), vec4<bool>(var_2.a, var_0.x, true, true), var_2.a), vec4<bool>(u_input.c >= arg_0, var_0.x, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_add_u32(func_1(true), _wgslsmith_sub_u32(_wgslsmith_mod_u32(~41203u, func_3(u_input.a.x, u_input.e.x, u_input.e, -238f)), ~(u_input.c << (0u % 32u))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2087f, -1062f), 2343f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1629f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-883f, -1000f)) + -191f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1655f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(0u, u_input.c), ~u_input.c), vec2<u32>(u_input.c >> (38038u % 32u), u_input.c)), 8738u, u_input.a.x, _wgslsmith_div_u32(~u_input.a.x << (u_input.c % 32u), ~abs(u_input.a.x))) & max(firstLeadingBit(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(34853u, 4294967295u, u_input.a.x, 1u), vec4<u32>(4294967295u, 1125u, 17096u, u_input.a.x)), ~vec4<u32>(3474u, 1u, u_input.a.x, 4294967295u), ~vec4<u32>(u_input.c, u_input.a.x, 77695u, u_input.a.x))), _wgslsmith_add_vec4_u32(~reverseBits(vec4<u32>(u_input.c, u_input.c, u_input.a.x, u_input.a.x)), ~(vec4<u32>(1u, u_input.a.x, u_input.c, 5235u) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, u_input.c) % vec4<u32>(32u)))));
    global2 = array<vec3<bool>, 32>();
    let var_2 = -(~vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b, u_input.d), _wgslsmith_clamp_i32(u_input.e.x, u_input.d, u_input.d)), 2147483647i, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(-1i >> ((~(41200u ^ var_1.x) & 1u) % 32u));
}

