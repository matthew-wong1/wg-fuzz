struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2677f;

var<private> global1: vec3<bool>;

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> bool {
    let var_0 = arg_0.d.x;
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1790f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1127f)))));
    let var_3 = ~u_input.c.x;
    let var_4 = ~(-(vec2<i32>(firstLeadingBit(2147483647i), 39425i & var_3) ^ (~u_input.c.zx ^ _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -1i), u_input.c.yy))));
    return 2147483647i < var_4.x;
}

fn func_2() -> Struct_4 {
    var var_0 = vec4<bool>(true, func_3(Struct_5(Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 0u), vec4<u32>(u_input.b, 1u, u_input.a, u_input.b)), Struct_1(vec4<u32>(16461u, 26527u, 0u, u_input.a), vec4<bool>(global1.x, false, true, global1.x), false), Struct_2(u_input.b, vec2<bool>(global1.x, global1.x), u_input.b, vec4<bool>(global1.x, false, true, true))), -699f, Struct_2(select(0u, 0u, global1.x), select(global1.zz, global1.xz, global1.x), select(u_input.b, u_input.b, global1.x), select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(false, true, global1.x, global1.x), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-760f, -1000f, 1362f) + vec3<f32>(-639f, 363f, -429f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1465f, 525f, -988f) - vec3<f32>(1033f, -1391f, -767f)))), !(any(vec3<bool>(false, global1.x, true)) && (u_input.c.x < u_input.c.x))), global1.x, !global1.x || (true | !(global1.x & global1.x)));
    global2 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-u_input.c.x, -2147483647i, u_input.c.x >> (9266u % 32u)), 2147483647i), vec2<i32>(-2147483647i, u_input.c.x)) & u_input.c.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1183f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-156f - 915f) - _wgslsmith_f_op_f32(trunc(675f)))), -1327f) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-168f + -381f))), _wgslsmith_f_op_f32(step(-1927f, _wgslsmith_f_op_f32(262f - -115f)))))));
    var_0 = vec4<bool>(global1.x, min(~_wgslsmith_div_u32(1u, u_input.b), ~(u_input.b | u_input.d.x)) != reverseBits(_wgslsmith_add_u32(abs(4294967295u), countOneBits(u_input.b))), !any(var_0.xxz), any(vec2<bool>(!global1.x, true)));
    let var_2 = Struct_2(~(~max(~u_input.d.x, ~4294967295u)), !select(global1.xy, select(vec2<bool>(var_0.x, false), select(var_0.zy, global1.zy, false), vec2<bool>(global1.x, true)), vec2<bool>(0u > u_input.b, true)), firstLeadingBit(_wgslsmith_add_u32(u_input.d.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.d.x, u_input.b), vec4<u32>(4294967295u, 45782u, 1u, u_input.a)))), select(select(vec4<bool>(all(var_0.zxy), global1.x, true, true), vec4<bool>(all(vec3<bool>(false, global1.x, true)), !global1.x, !var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, all(var_0.xz))), !vec4<bool>(true & var_0.x, !global1.x, true, any(vec4<bool>(global1.x, global1.x, true, global1.x))), select(select(select(vec4<bool>(var_0.x, global1.x, global1.x, var_0.x), vec4<bool>(var_0.x, global1.x, false, global1.x), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, global1.x, false, var_0.x), vec4<bool>(true, false, false, global1.x)), !vec4<bool>(global1.x, var_0.x, var_0.x, true)), select(vec4<bool>(var_0.x, var_0.x, global1.x, global1.x), select(vec4<bool>(global1.x, true, false, var_0.x), vec4<bool>(var_0.x, global1.x, var_0.x, true), global1.x), var_0.x && true), !(!vec4<bool>(var_0.x, false, false, global1.x)))));
    return Struct_4(Struct_3(min(~vec4<u32>(var_2.c, 23357u, 118808u, 0u), vec4<u32>(u_input.a | 41549u, ~u_input.b, firstTrailingBit(66747u), var_2.a)), Struct_1(reverseBits(~vec4<u32>(0u, 43414u, 1u, 29576u)), var_2.d, false), Struct_2(15634u, var_2.d.yx, ~25167u ^ _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(1u, var_2.c)), !vec4<bool>(global1.x, var_0.x, global1.x, false))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_4 {
    var var_0 = -1414f;
    var var_1 = any(!(!vec3<bool>(!global1.x, arg_0.x, false)));
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(~u_input.c.x, ~(i32(-1i) * -39765i), -select(abs(-18133i), u_input.c.x, arg_0.x), u_input.c.x), ~(vec4<i32>(-1i) * -vec4<i32>(-1i, 1i, u_input.c.x, -1i)));
    var var_3 = ~var_2.xwz;
    var var_4 = ~(~(~_wgslsmith_clamp_vec2_u32(countOneBits(u_input.d), ~vec2<u32>(u_input.d.x, u_input.d.x), ~u_input.d)));
    return func_2();
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: Struct_5) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = var_0.a;
    let var_2 = arg_1.a;
    var_0 = Struct_4(arg_1.a);
    let var_3 = vec4<i32>(-_wgslsmith_div_i32(-_wgslsmith_div_i32(arg_0.x, u_input.c.x), arg_0.x), reverseBits(~(i32(-1i) * -u_input.c.x)), u_input.c.x >> (var_1.a.x % 32u), _wgslsmith_sub_i32(u_input.c.x, 2147483647i));
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~abs(~firstTrailingBit(vec4<i32>(2147483647i, 1i, u_input.c.x, -22539i))), func_1(select(vec2<bool>(global1.x, all(vec4<bool>(true, global1.x, false, global1.x))), vec2<bool>(global1.x, true), !vec2<bool>(global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2318f, 218f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(577f, 152f, -1266f), vec3<f32>(812f, 874f, 1099f), vec3<bool>(global1.x, global1.x, false)))))), Struct_5(Struct_3(~(vec4<u32>(u_input.d.x, u_input.a, u_input.d.x, u_input.b) ^ vec4<u32>(u_input.a, 51255u, 16917u, u_input.d.x)), func_2().a.b, Struct_2(u_input.a, vec2<bool>(false, global1.x), u_input.b, !vec4<bool>(global1.x, false, false, global1.x))), 954f, Struct_2(4160u, global1.zy, 69987u, vec4<bool>(true, true, true, true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -311f), -186f, 1f)));
    let var_1 = Struct_5(func_1(var_0.c.b).a, -454f, var_0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(697f * -941f)), 240f, _wgslsmith_f_op_f32(-192f * 985f))));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d.x, var_1.d.x) * -1452f)))));
    global2 = _wgslsmith_dot_vec3_i32(~(abs(countOneBits(vec3<i32>(7598i, -1i, u_input.c.x))) | u_input.c), _wgslsmith_sub_vec3_i32(u_input.c, _wgslsmith_add_vec3_i32(u_input.c, u_input.c)));
    global0 = -1307f;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.x);
}

