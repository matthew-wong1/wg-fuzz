struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x | u_input.b.x), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.d, u_input.b.x)), _wgslsmith_mult_u32(u_input.b.x, firstLeadingBit(abs(reverseBits(u_input.d)))));
    var var_1 = any(arg_2.a);
    var_1 = !(-max(~arg_1.b.x, -1i) <= arg_2.b.x);
    let var_2 = vec4<i32>(1i, select(u_input.a.x, -(0i & ~arg_1.b.x), all(vec2<bool>(select(true, false, false), arg_2.b.x >= arg_1.b.x))), ~arg_2.b.x, -80616i);
    var_1 = arg_2.a.x | (!any(!vec4<bool>(arg_2.c, arg_2.a.x, arg_2.c, arg_2.c)) | (~(-31620i) <= arg_2.b.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -339f)))));
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(round(-677f));
    var_0 = -1183f;
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(872f, 280f, 677f, 2057f), Struct_2(1417f, vec3<i32>(-347i, -11530i, u_input.a.x)), Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(0i, arg_1), true)))) * _wgslsmith_f_op_f32(trunc(-415f)))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-841f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1749f, 1000f) * _wgslsmith_f_op_f32(func_3(vec4<f32>(-540f, -822f, 1271f, 1001f), Struct_2(528f, u_input.a), Struct_1(vec4<bool>(false, false, false, false), u_input.c, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1050f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1705f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -419f), _wgslsmith_f_op_f32(step(1384f, 208f)), true)) * 918f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -2404f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1078f, -166f, _wgslsmith_f_op_f32(step(655f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1943f, 342f, -301f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-669f, -984f, -330f))))), vec3<f32>(_wgslsmith_f_op_f32(1161f + -334f), _wgslsmith_f_op_f32(-2577f * -1116f), _wgslsmith_f_op_f32(ceil(523f))), true))));
    return Struct_2(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-178f))) + _wgslsmith_div_f32(_wgslsmith_div_f32(481f, -524f), var_1.x))), _wgslsmith_sub_vec3_i32(vec3<i32>(select(-7770i, u_input.e, false), -2147483647i, -u_input.c.x), ~firstTrailingBit(vec3<i32>(u_input.a.x, u_input.e, u_input.e))) | (u_input.a & u_input.a));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_2.a;
    var var_1 = u_input.a;
    var var_2 = Struct_1(!(!select(!vec4<bool>(true, arg_2.a.x, false, false), select(vec4<bool>(arg_2.c, arg_3.c, true, true), arg_2.a, arg_2.a.x), !vec4<bool>(false, arg_3.a.x, false, true))), vec2<i32>(1858i, 1i), any(!vec2<bool>(any(vec4<bool>(var_0.x, var_0.x, false, false)), arg_2.b.x < -22271i)));
    let var_3 = -1060f;
    let var_4 = var_3;
    return Struct_2(arg_1.a, ~vec3<i32>(2147483647i, i32(-1i) * -arg_3.b.x, var_2.b.x));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = vec3<bool>(false, false, true);
    let var_1 = var_0.x;
    var var_2 = u_input.b.x;
    let var_3 = func_4(~arg_1, func_2(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(49255u, u_input.b.x, 0u, 0u), vec4<u32>(0u, u_input.d, u_input.d, u_input.b.x))), u_input.a.x), Struct_1(select(vec4<bool>(false, true && var_0.x, true, false), !select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, false, false, true), var_0.x), !vec4<bool>(var_0.x, true, false, false)), vec2<i32>(firstLeadingBit(arg_2.b.x), 1i), var_0.x), Struct_1(!select(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(true, var_0.x, true, false), vec4<bool>(var_0.x, false, false, false)), !vec4<bool>(false, var_0.x, var_0.x, true)), _wgslsmith_sub_vec2_i32(~arg_2.b.xx, min(vec2<i32>(arg_0.b.x, -44841i) >> (u_input.b.yx % vec2<u32>(32u)), vec2<i32>(11535i, -45836i))), var_0.x));
    var var_4 = var_3.b;
    return Struct_1(vec4<bool>(false, var_0.x, false, true), firstTrailingBit(vec2<i32>(arg_2.b.x, arg_0.b.x)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(_wgslsmith_f_op_f32(-231f - -1125f), _wgslsmith_mult_vec3_i32(u_input.a, reverseBits(-vec3<i32>(-2147483647i, 19405i, u_input.a.x)))), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.e, 2147483647i), u_input.c.x, u_input.c.x), ~_wgslsmith_sub_i32(2794i, -27637i ^ u_input.e), -u_input.e, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, i32(-1i) * -20537i), -u_input.c.x)), Struct_2(-509f, _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(0i, ~u_input.c.x, countOneBits(u_input.a.x)))));
    var_0 = func_1(func_4(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(1i, 0i, u_input.a.x, -1i)) << (min(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.d, u_input.d)) % vec4<u32>(32u)), select(~vec4<i32>(var_0.b.x, u_input.a.x, 0i, u_input.c.x), vec4<i32>(-1i, 30082i, 31064i, u_input.a.x) | vec4<i32>(-1i, 2147483647i, 15976i, u_input.c.x), var_0.b.x <= 22510i)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1093f) + _wgslsmith_f_op_f32(ceil(344f))), u_input.a), Struct_1(var_0.a, _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.a.x, 37181i)), u_input.a.yx, vec2<i32>(var_0.b.x, var_0.b.x)), all(!vec2<bool>(var_0.a.x, true))), func_1(func_4(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -1i, -1i, var_0.b.x), vec4<i32>(6195i, u_input.e, -13056i, 49011i)), Struct_2(1742f, vec3<i32>(-5662i, 56579i, var_0.b.x)), Struct_1(vec4<bool>(var_0.c, var_0.c, var_0.a.x, var_0.c), vec2<i32>(14486i, var_0.b.x), var_0.c), Struct_1(vec4<bool>(var_0.a.x, var_0.c, var_0.c, var_0.a.x), vec2<i32>(2147483647i, var_0.b.x), var_0.a.x)), -vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -37795i) ^ vec4<i32>(var_0.b.x, u_input.c.x, var_0.b.x, -1i), func_4(abs(vec4<i32>(u_input.c.x, var_0.b.x, 48951i, 0i)), Struct_2(225f, u_input.a), Struct_1(vec4<bool>(var_0.a.x, false, var_0.c, true), var_0.b, true), func_1(Struct_2(1295f, vec3<i32>(u_input.e, -2371i, var_0.b.x)), vec4<i32>(36262i, 2147483647i, u_input.e, u_input.e), Struct_2(-204f, u_input.a))))), abs(vec4<i32>(var_0.b.x, -var_0.b.x, u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<i32>(-2147483647i, u_input.a.x, -1i))) >> (vec4<u32>(u_input.d, select(u_input.d, u_input.b.x, var_0.a.x), 1u, ~u_input.b.x) % vec4<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-235f)) * 1865f)), func_4(abs(-vec4<i32>(-2147483647i, 29559i, -1i, var_0.b.x)), Struct_2(_wgslsmith_f_op_f32(max(411f, -403f)), vec3<i32>(var_0.b.x, var_0.b.x, u_input.c.x) | u_input.a), func_1(Struct_2(-869f, vec3<i32>(u_input.c.x, var_0.b.x, 18381i)), _wgslsmith_add_vec4_i32(vec4<i32>(30172i, var_0.b.x, -9169i, var_0.b.x), vec4<i32>(2147483647i, u_input.c.x, var_0.b.x, 24233i)), Struct_2(-1532f, u_input.a)), func_1(func_4(vec4<i32>(var_0.b.x, var_0.b.x, 1i, var_0.b.x), Struct_2(1624f, vec3<i32>(u_input.c.x, u_input.c.x, var_0.b.x)), Struct_1(var_0.a, var_0.b, var_0.c), Struct_1(vec4<bool>(false, false, var_0.c, var_0.c), u_input.a.zy, false)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2208i, u_input.c.x, 32642i, u_input.c.x), vec4<i32>(u_input.c.x, 1i, -24889i, var_0.b.x)), func_4(vec4<i32>(var_0.b.x, -1i, u_input.e, u_input.c.x), Struct_2(-157f, u_input.a), Struct_1(var_0.a, vec2<i32>(6264i, -1i), var_0.a.x), Struct_1(vec4<bool>(var_0.a.x, var_0.c, true, var_0.a.x), var_0.b, true)))).b));
    let var_1 = ~abs(vec4<u32>(~(u_input.d & u_input.b.x), 0u, 1u, 17004u));
    let var_2 = !any(var_0.a);
    var_0 = Struct_1(select(func_1(func_2(_wgslsmith_div_u32(var_1.x, 65422u), -var_0.b.x), -select(vec4<i32>(-28592i, var_0.b.x, -1i, 44375i), vec4<i32>(25422i, u_input.e, u_input.a.x, u_input.c.x), var_2), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.a)).a, vec4<bool>(var_2, var_0.c && all(var_0.a), var_0.a.x, true), all(func_1(func_4(vec4<i32>(var_0.b.x, var_0.b.x, u_input.c.x, 0i), Struct_2(571f, u_input.a), Struct_1(var_0.a, vec2<i32>(2147483647i, -2147483647i), var_2), Struct_1(var_0.a, vec2<i32>(var_0.b.x, u_input.e), false)), select(vec4<i32>(7496i, var_0.b.x, 19191i, var_0.b.x), vec4<i32>(-2147483647i, var_0.b.x, var_0.b.x, u_input.a.x), var_2), Struct_2(-838f, vec3<i32>(-302i, 37884i, u_input.e))).a.wyw)), (u_input.c & func_4(vec4<i32>(u_input.a.x, var_0.b.x, 7629i, u_input.e), Struct_2(-383f, vec3<i32>(var_0.b.x, -35665i, 0i)), func_1(Struct_2(-550f, vec3<i32>(-2147483647i, var_0.b.x, 2147483647i)), vec4<i32>(-1358i, 2147483647i, 0i, 0i), Struct_2(1000f, vec3<i32>(43938i, 2147483647i, -37340i))), Struct_1(var_0.a, var_0.b, false)).b.xy) >> ((_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, var_1.x), var_1.wx), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(1u, 0u))) << (vec2<u32>(abs(0u), max(4294967295u, var_1.x)) % vec2<u32>(32u))) % vec2<u32>(32u)), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.b.x, 401f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(271f * 1465f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(281f))))))));
}

