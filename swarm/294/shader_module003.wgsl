struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

var<private> global1: vec3<f32> = vec3<f32>(-762f, -1182f, -315f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    let var_0 = ~(vec4<u32>(1u, u_input.b, ~0u, _wgslsmith_sub_u32(4294967295u, 10739u)) >> (max(vec4<u32>(16196u, u_input.b, 1u, 1u) << (vec4<u32>(4294967295u, u_input.e, u_input.e, 28244u) % vec4<u32>(32u)), ~vec4<u32>(24642u, u_input.d.x, u_input.b, 1u)) % vec4<u32>(32u))) & (vec4<u32>(~(~36284u), u_input.d.x, (1662u | u_input.d.x) | u_input.d.x, ~57164u) >> (vec4<u32>(4294967295u, 79220u << (u_input.b % 32u), 51100u, ~231u) % vec4<u32>(32u)));
    global0 = array<vec3<bool>, 19>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 629f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) + 1560f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -184f))));
    var var_2 = vec3<f32>(-374f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1491f - -388f))) - _wgslsmith_f_op_f32(f32(-1f) * -662f)), -1393f);
    var var_3 = arg_1.e;
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> vec3<i32> {
    let var_0 = true;
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(~(-1i) | _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-32542i, 1i, arg_0, 33625i), vec4<i32>(arg_1.c, 2147483647i, u_input.c, arg_0)), _wgslsmith_clamp_i32(-10430i, -2147483647i, u_input.a)), 1i, 53483i & u_input.a), countOneBits(countOneBits(vec3<i32>(-14196i, abs(0i), abs(u_input.c)))), ~(~(-vec3<i32>(u_input.c, arg_0, 0i))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<vec3<bool>, 19>();
    let var_0 = -(~_wgslsmith_add_vec2_i32(~reverseBits(vec2<i32>(1480i, u_input.a)), vec2<i32>(u_input.a | u_input.c, ~u_input.a)));
    global0 = array<vec3<bool>, 19>();
    let var_1 = min(func_4(_wgslsmith_dot_vec4_i32(select(-vec4<i32>(var_0.x, var_0.x, 33096i, var_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, u_input.a, u_input.a, 0i), vec4<i32>(var_0.x, 25646i, u_input.a, var_0.x)), arg_0.a.x), -(~vec4<i32>(u_input.a, 28182i, 1i, 14250i))), Struct_2(_wgslsmith_f_op_f32(func_3(arg_2, Struct_2(773f, arg_2.a, 23964i, vec3<bool>(arg_2.a.x, false, arg_0.a.x), Struct_1(vec4<bool>(arg_2.a.x, false, false, arg_0.a.x))))), select(arg_2.a, vec4<bool>(false, false, arg_2.a.x, false), true), var_0.x, select(arg_2.a.xyz, arg_2.a.wyx, vec3<bool>(true, false, arg_0.a.x)), Struct_1(select(vec4<bool>(false, false, true, true), arg_0.a, arg_2.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(776f * -1597f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-573f + global1.x) * _wgslsmith_f_op_f32(560f * global1.x)), !arg_2.a.x && (false || arg_2.a.x)))), vec3<i32>(min(u_input.c, var_0.x) | ~var_0.x, ~_wgslsmith_sub_i32(u_input.c, 0i), var_0.x) ^ vec3<i32>(~abs(-28248i), (1i | u_input.a) >> (u_input.b % 32u), 34650i));
    var var_2 = min(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(3623u >> (u_input.e % 32u), ~4294967295u, 4294967295u, max(1u, 4311u)), vec4<u32>(firstTrailingBit(u_input.e), u_input.d.x, u_input.d.x, ~7140u)));
    return !(!select(!select(arg_2.a, arg_2.a, arg_2.a), select(arg_0.a, vec4<bool>(arg_2.a.x, false, true, false), !vec4<bool>(arg_2.a.x, false, arg_2.a.x, arg_2.a.x)), !(!vec4<bool>(true, arg_2.a.x, arg_0.a.x, arg_0.a.x))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec4<i32>) -> f32 {
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(872f, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -449f) - global1.x)));
    let var_0 = max(-4604i, _wgslsmith_clamp_i32(arg_2.x, i32(-1i) * -u_input.a, -18121i));
    return _wgslsmith_f_op_f32(-358f - 791f);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool, arg_3: vec2<f32>) -> u32 {
    var var_0 = -(vec2<i32>(-1i) * -(vec2<i32>(arg_0.c, arg_1.x) ^ arg_1.xw)) ^ ~arg_1.yz;
    var var_1 = arg_0;
    var_0 = ~_wgslsmith_div_vec2_i32(arg_1.yx, ~select(arg_1.zw, vec2<i32>(arg_1.x, -2147483647i) ^ vec2<i32>(-13125i, var_0.x), any(arg_0.e.a.wy)));
    let var_2 = arg_1.zwx;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, arg_0.a, arg_3.x, var_1.a) + vec4<f32>(global1.x, 114f, -301f, -620f)))), func_2(arg_0.e, arg_0.a, Struct_1(var_1.e.a)), vec4<i32>(~_wgslsmith_add_i32(arg_1.x, 0i), abs(1i), func_4(var_1.c, arg_0, 138f).x & arg_1.x, arg_0.c))), select(func_2(Struct_1(vec4<bool>(true, false, arg_0.d.x, false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a + arg_3.x))), var_1.e), select(func_2(Struct_1(vec4<bool>(arg_0.d.x, true, arg_0.b.x, false)), -884f, arg_0.e), var_1.b, !(!vec4<bool>(false, var_1.d.x, arg_2, arg_2))), all(vec4<bool>(any(arg_0.e.a), select(arg_0.d.x, arg_0.e.a.x, false), true, 65762u != u_input.d.x))), 47771i, vec3<bool>(true, var_1.d.x, _wgslsmith_div_u32(0u, ~0u) <= _wgslsmith_div_u32(46950u, abs(u_input.b))), Struct_1(vec4<bool>(var_1.e.a.x, all(vec4<bool>(true, arg_2, true, arg_2)), var_1.b.x, func_2(Struct_1(vec4<bool>(var_1.d.x, true, false, arg_0.d.x)), arg_0.a, var_1.e).x && !arg_0.e.a.x)));
    return _wgslsmith_div_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(u_input.d.x), _wgslsmith_sub_u32(u_input.d.x, 8251u), firstLeadingBit(50341u), 7103u), max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(4294967295u, u_input.b, 39594u, 27536u)), vec4<u32>(u_input.b, 17593u, u_input.e, u_input.d.x))), 35620u, arg_0.b.x), ~(~(~u_input.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = array<vec3<bool>, 19>();
    var var_1 = 23683u;
    var var_2 = Struct_1(vec4<bool>(all(!(!vec3<bool>(false, var_0, false))), true, global1.x > global1.x, true));
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.e, ~func_1(Struct_2(256f, var_2.a, 18709i, var_2.a.xww, Struct_1(var_2.a)), ~vec4<i32>(u_input.c, u_input.a, u_input.a, u_input.c), !var_2.a.x, _wgslsmith_f_op_vec2_f32(-global1.zx)), reverseBits(76973u), ~_wgslsmith_dot_vec2_u32(u_input.d.zy, abs(vec2<u32>(u_input.b, u_input.e)))), 196f, vec2<i32>(-(~u_input.c), -40949i), firstLeadingBit(~vec3<u32>(1u, ~u_input.b, ~0u)));
}

