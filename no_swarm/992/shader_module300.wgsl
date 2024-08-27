struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 21296u;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> u32 {
    return _wgslsmith_clamp_u32(select(74336u, _wgslsmith_mod_u32(4294967295u, 31356u) | ~u_input.d.x, true), u_input.c, 1u) | ~57642u;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_2.c))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-952f, 1000f)))) - vec2<f32>(-303f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.c.x)) + -1305f))), vec2<f32>(542f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-294f - 324f), -778f, true)), arg_2.c.x)), arg_1.wy));
    let var_1 = arg_2;
    let var_2 = arg_1.x;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_1.c)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_2.c)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c), _wgslsmith_f_op_vec2_f32(step(arg_2.c, vec2<f32>(arg_2.c.x, var_0.x)))))));
    global0 = _wgslsmith_dot_vec3_u32(arg_2.b, ~var_1.b);
    return ~arg_2.d.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> vec2<f32> {
    var var_0 = vec3<u32>(func_2(arg_2.x, select(select(arg_0.zy, arg_0.zx, arg_0.x), select(vec2<bool>(false, true), vec2<bool>(false, arg_0.x), arg_0.xy), arg_0.x)) | u_input.d.x, ~firstTrailingBit(10615u), 34497u);
    var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, abs(func_2(_wgslsmith_f_op_f32(arg_2.x - 722f), select(vec2<bool>(false, true), vec2<bool>(false, arg_0.x), arg_0.x))), func_3(-_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.x, u_input.a.x, u_input.a.x, -16884i), vec4<i32>(2147483647i, 117454i, 1i, arg_3.x)), !vec4<bool>(arg_0.x, true, false, false), Struct_1(2147483647i & u_input.a.x, vec3<u32>(28464u, u_input.c, var_0.x), _wgslsmith_div_vec2_f32(vec2<f32>(-234f, -2563f), arg_2.xx), _wgslsmith_sub_vec2_u32(var_0.yx, vec2<u32>(0u, var_0.x))), Struct_3(0i, -vec4<i32>(-35539i, arg_3.x, 17875i, arg_3.x), true))), select(~reverseBits(vec3<u32>(0u, var_0.x, var_0.x)) & (max(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(u_input.b, 10045u, var_0.x)) | ~vec3<u32>(34387u, var_0.x, var_0.x)), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, 4294967295u, u_input.c)), ~vec3<u32>(44627u, 4294967295u, var_0.x) | select(vec3<u32>(u_input.c, 4294967295u, 1u), vec3<u32>(58923u, 3767u, 4167u), vec3<bool>(true, true, arg_0.x))), select(arg_0, arg_0, false)));
    return arg_1.yy;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: f32) -> Struct_3 {
    global0 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 72285u), vec3<u32>(u_input.b, 1u, u_input.d.x)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(9172u, u_input.b, u_input.d.x), vec3<u32>(u_input.d.x, 4294967295u, u_input.c) >> (vec3<u32>(30938u, u_input.b, u_input.b) % vec3<u32>(32u)), min(vec3<u32>(u_input.d.x, 19317u, u_input.d.x), vec3<u32>(u_input.c, u_input.d.x, u_input.d.x)))), func_3(_wgslsmith_clamp_vec4_i32(-vec4<i32>(8438i, -1i, -3767i, u_input.a.x), vec4<i32>(u_input.a.x, 17212i, u_input.a.x, 876i) << (vec4<u32>(u_input.c, u_input.c, 0u, u_input.b) % vec4<u32>(32u)), vec4<i32>(-27359i, u_input.a.x, -39836i, 17699i)), select(!vec4<bool>(arg_1, true, arg_1, true), !vec4<bool>(true, arg_1, true, false), arg_1), Struct_1(u_input.a.x, vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-210f, arg_0.x)), ~u_input.d), Struct_3(u_input.a.x, vec4<i32>(2147483647i, u_input.a.x, 10691i, u_input.a.x), all(vec2<bool>(arg_1, arg_1)))));
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(2224f * _wgslsmith_f_op_f32(step(388f, _wgslsmith_f_op_f32(-946f * 1000f))))), 604f, false));
    let var_1 = Struct_2(Struct_1(-u_input.a.x | _wgslsmith_mult_i32(-1i, 23155i ^ u_input.a.x), abs(~(~vec3<u32>(13994u, 1u, 1u))), _wgslsmith_f_op_vec2_f32(-arg_0), vec2<u32>(u_input.b, u_input.c)));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) + var_1.a.c.x)), 611f)));
    let var_3 = var_1.a;
    return Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x) << (vec2<u32>(0u, var_3.d.x) % vec2<u32>(32u)), vec2<i32>(var_3.a, -6266i)) & ~24427i, _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, _wgslsmith_mult_i32(var_3.a & 0i, select(0i, 0i, arg_1)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(11970i, 1i), _wgslsmith_div_i32(u_input.a.x, 221i), u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a.zz, _wgslsmith_add_vec2_i32(vec2<i32>(var_3.a, 15651i), u_input.a.xy))), -max(firstLeadingBit(vec4<i32>(-1i, var_3.a, var_1.a.a, -2147483647i)), vec4<i32>(40305i, var_1.a.a, 2147483647i, 28154i) & vec4<i32>(var_3.a, 1i, var_1.a.a, u_input.a.x))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-644f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(896f, 1325f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-946f, 643f, 1038f), vec3<f32>(1223f, -1362f, -1337f), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1198f, -3102f, -1258f)), u_input.a)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(376f, -1370f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(267f, 1000f))))), !any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1323f))));
    global0 = func_3(vec4<i32>(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1851f, -935f) - vec2<f32>(1252f, -991f)), _wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(true, var_0.c, true), vec3<f32>(-1000f, 892f, 1332f), vec3<f32>(196f, -2045f, 394f), vec3<i32>(3501i, -1i, var_0.b.x)))), false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-650f, 1100f) + -289f)).a, u_input.a.x, 2147483647i, 8184i << (~abs(u_input.b) % 32u)), !(!(!vec4<bool>(true, var_0.c, var_0.c, var_0.c))), Struct_1(47412i, ~min(vec3<u32>(31792u, 23720u, u_input.d.x), vec3<u32>(u_input.b, u_input.c, u_input.d.x)), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(false, var_0.c, var_0.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1641f, 1672f, -102f) + vec3<f32>(-1578f, -1595f, -607f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1248f, -212f, -344f) * vec3<f32>(132f, 1000f, -1961f)), min(vec3<i32>(20793i, var_0.a, 0i), vec3<i32>(1i, -2147483647i, 0i)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, u_input.c), countOneBits(u_input.d))), Struct_3(1i, _wgslsmith_mod_vec4_i32(vec4<i32>(~2147483647i, _wgslsmith_mult_i32(var_0.b.x, var_0.b.x), var_0.a, 0i), countOneBits(vec4<i32>(var_0.b.x, 1i, var_0.a, u_input.a.x))), !(27906u != ~u_input.b)));
    var var_1 = Struct_1(~u_input.a.x, select(select(~(~vec3<u32>(u_input.d.x, 19870u, u_input.b)), vec3<u32>(u_input.c, u_input.c, 11884u) ^ firstTrailingBit(vec3<u32>(39278u, u_input.b, 68683u)), var_0.c), firstLeadingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, 50112u, 4294967295u), firstTrailingBit(vec3<u32>(1u, u_input.b, u_input.b)))), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, var_0.c), vec3<bool>(var_0.c, true, var_0.c)), select(!vec3<bool>(true, var_0.c, true), !vec3<bool>(false, var_0.c, true), false), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1019f, -2016f), vec2<f32>(524f, 935f))))), ~(select(vec2<u32>(52332u, 0u), vec2<u32>(605u, u_input.b), var_0.c) | ~(vec2<u32>(0u, 4294967295u) ^ u_input.d)));
    var var_2 = true;
    global0 = var_1.b.x;
    var var_3 = var_0;
    var_2 = var_3.c;
    var_3 = func_4(vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-var_1.c.x)))))), any(!vec4<bool>(var_0.c, true, select(var_3.c, false, false), true)), _wgslsmith_div_f32(var_1.c.x, -668f));
    var var_4 = any(!vec3<bool>(all(!vec3<bool>(true, var_3.c, false)), var_0.c, all(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec4_i32(-func_4(var_1.c, true, -961f).b, func_4(vec2<f32>(1000f, var_1.c.x), !var_3.c, _wgslsmith_f_op_f32(-var_1.c.x)).b), firstLeadingBit((var_3.b.x << (1u % 32u)) >> (var_1.b.x % 32u)), 90856i << (var_1.b.x % 32u), _wgslsmith_add_i32(var_0.a, _wgslsmith_clamp_i32(-u_input.a.x, u_input.a.x, var_1.a | var_3.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_1.c, vec2<f32>(-120f, var_1.c.x))))));
}

