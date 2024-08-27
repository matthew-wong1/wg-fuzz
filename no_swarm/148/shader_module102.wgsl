struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(23758u, 28284u, 27624u), vec3<u32>(1u, 12242u, 46177u));

var<private> global2: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(47525u, 0u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(123439u, 1u, 4294967295u), vec3<u32>(1u, 28857u, 4294967295u), vec3<u32>(85387u, 1u, 4294967295u));

var<private> global3: vec3<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<u32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.yz) - _wgslsmith_f_op_vec2_f32(global3.zx * _wgslsmith_f_op_vec2_f32(max(global3.xy, global3.zz)))));
    let var_1 = arg_0.x;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1792f, _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-1230f + 357f))))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.x), -510f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global3.x, arg_1))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1627f)) - arg_1)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3) -> u32 {
    global1 = array<vec3<u32>, 2>();
    global3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1111f, arg_1.c.a, global3.x)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(max(1000f, -1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 994f, -816f) - vec3<f32>(-1668f, -813f, arg_0.x))))));
    var var_0 = -8635i;
    return reverseBits(_wgslsmith_sub_u32(_wgslsmith_div_u32(select(u_input.a, ~u_input.a, true), ~(~4294967295u)), 0u));
}

fn func_1() -> Struct_5 {
    global3 = _wgslsmith_f_op_vec3_f32(func_2(-(~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.c, u_input.b.x, u_input.c), vec4<i32>(30437i, 2147483647i, u_input.b.x, -2147483647i)) ^ firstTrailingBit(vec4<i32>(1i, -36215i, u_input.c, -5766i))), _wgslsmith_f_op_f32(abs(-668f)), vec4<u32>(u_input.a, abs(_wgslsmith_clamp_u32(u_input.a, 0u, u_input.a) << (~u_input.a % 32u)), 48377u, u_input.a)));
    let var_0 = -_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.c, u_input.b.x, u_input.c, -12637i)), vec4<i32>(-15775i, u_input.c, 1i, -27136i)), vec4<i32>(-u_input.b.x, 1i, 0i, 64667i));
    var var_1 = Struct_1(~select(u_input.b, -abs(vec2<i32>(u_input.c, u_input.c)), vec2<bool>(true, true)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, func_3(global0.zy, Struct_3(vec2<f32>(global3.x, global0.x), Struct_2(global3.x), Struct_2(952f), 1i)) << (~1u % 32u), ~1u, reverseBits(~0u)), max(vec4<u32>(_wgslsmith_div_u32(u_input.a, 44916u), 1u, 4294967295u, ~97151u), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 35709u, 4294967295u, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 77505u, u_input.a)))), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(495f, -645f)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2771f, 972f), global3.zz)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(global0.zy))))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-226f, global0.x)))), Struct_2(_wgslsmith_f_op_f32(1139f - global3.x)), 1i);
    var_1 = Struct_1(u_input.b, ~(~(~var_1.b)), all(vec4<bool>(true, any(select(vec3<bool>(var_1.c, var_1.c, var_1.c), vec3<bool>(var_1.c, false, var_1.c), vec3<bool>(var_1.c, true, true))), !any(vec4<bool>(true, var_1.c, true, var_1.c)), var_1.c)), 1219f);
    return Struct_5(~min(~var_1.b.yy, select(var_1.b.zx, _wgslsmith_mod_vec2_u32(var_1.b.xz, var_1.b.xx), vec2<bool>(var_1.c, true))), _wgslsmith_f_op_vec3_f32(func_2(vec4<i32>(~u_input.b.x | (var_2.d ^ 80678i), select(_wgslsmith_clamp_i32(var_2.d, var_1.a.x, 8779i), u_input.c, true), 36569i, -2147483647i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + var_2.a.x)))), var_1.b)), ~vec3<i32>(~(-u_input.b.x), ~_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(var_2.d, u_input.c)), ~8879i));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: vec2<i32>) -> Struct_1 {
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b)) * vec3<f32>(arg_1.b.x, 2289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.x)))));
    return Struct_1(u_input.b, max(vec4<u32>(_wgslsmith_sub_u32(countOneBits(30339u), ~arg_0), ~arg_0, _wgslsmith_sub_u32(58896u, _wgslsmith_dot_vec4_u32(vec4<u32>(29159u, 0u, u_input.a, arg_0), vec4<u32>(19022u, 80037u, 103318u, arg_1.a.x))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, arg_1.a.x, u_input.a), vec4<u32>(10372u, arg_1.a.x, 40096u, u_input.a)), u_input.a)), vec4<u32>(select(_wgslsmith_mult_u32(0u, 50358u), 61438u, true), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, 0u) >> (vec2<u32>(u_input.a, arg_0) % vec2<u32>(32u)), ~vec2<u32>(36592u, 19614u)), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 16262u, 1u, 0u), vec4<u32>(61644u, 4294967295u, arg_0, 4294967295u))), ~min(u_input.a, arg_0))), false, -260f);
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(849f - global3.x), _wgslsmith_f_op_f32(-538f + arg_1.d), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global3.x * 248f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d, global3.x, global3.x, 1076f) + vec4<f32>(-1223f, global0.x, -717f, -700f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(178f, -614f, -976f, arg_1.d)))), vec4<f32>(-1677f, -1606f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-201f))), _wgslsmith_f_op_f32(f32(-1f) * -981f)))));
    let var_1 = 1831f;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d), -1021f)));
    let var_3 = func_1();
    let var_4 = arg_1.a.x;
    return _wgslsmith_dot_vec3_i32(func_1().c, vec3<i32>(firstTrailingBit(0i), _wgslsmith_sub_i32(var_3.c.x ^ -2147483647i, firstTrailingBit(u_input.b.x)), u_input.b.x) >> (vec3<u32>(0u, arg_1.b.x, _wgslsmith_mult_u32(41865u, 42141u) << (arg_1.b.x % 32u)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!select(firstTrailingBit(26263u) != (u_input.a & u_input.a), any(vec4<bool>(false, false, true, true)) || true, true), func_4(u_input.a, func_1(), u_input.b));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global3.x, global0.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1192f, global3.x, -313f))), ~u_input.a < u_input.a)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1233f, global3.x), vec3<f32>(172f, global0.x, -214f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 244f, global3.x) - vec3<f32>(global0.x, global0.x, global0.x)), vec3<bool>(true, true, false)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-384f, global3.x, -2132f, -490f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, global0.x, 1000f, -1071f), vec4<f32>(global0.x, global0.x, -571f, global0.x))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-458f, -750f, global3.x, global3.x))))))));
    var var_2 = 0u | u_input.a;
    var var_3 = !(~var_0 < u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(vec4<u32>(0u, ~50617u, ~59829u, _wgslsmith_add_u32(u_input.a, 0u))), u_input.b.x, firstLeadingBit(-2147483647i), _wgslsmith_sub_u32(31423u, u_input.a));
}

