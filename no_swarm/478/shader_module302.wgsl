struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: vec3<bool>) -> vec3<u32> {
    let var_0 = Struct_2(arg_1, Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.c)), arg_0.c, 1204f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, arg_0.c, arg_0.a.x))) * arg_0.a), select(true, !arg_3.x, true))), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, arg_0.b.x, 61533u), vec3<u32>(arg_1, abs(u_input.a), ~u_input.e)), arg_0.a.x, _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2, ~(-10425i), -u_input.d), abs(arg_0.e.wxy), _wgslsmith_mod_vec3_i32(arg_0.e.yyy, arg_0.d)), ~(-vec4<i32>(arg_2, 2147483647i, u_input.b, u_input.d))), _wgslsmith_mult_i32(arg_2, -30455i), Struct_1(arg_0.a, _wgslsmith_mod_vec3_u32(arg_0.b, u_input.c.yyz), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.c, arg_0.a.x, false)), _wgslsmith_f_op_f32(round(-1305f)))), -vec3<i32>(-2147483647i, 28994i, -40282i) ^ (min(arg_0.e.yyx, arg_0.d) ^ firstTrailingBit(vec3<i32>(2147483647i, 50000i, 12340i))), reverseBits(arg_0.e)));
    var var_1 = arg_0;
    var var_2 = 1455f;
    var_1 = var_0.d;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1025f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-798f + _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(-var_0.b.c)))));
    return vec3<u32>(1u, arg_1, 0u);
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = Struct_2(64550u, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, -1348f, -977f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2268f, 930f, arg_0))), (func_3(Struct_1(vec3<f32>(457f, -908f, arg_0), u_input.c.wwy, -759f, vec3<i32>(u_input.d, u_input.b, -14755i), vec4<i32>(u_input.d, u_input.b, -17716i, u_input.d)), u_input.a, 3465i, vec3<bool>(true, false, false)) ^ u_input.c.zxz) | (u_input.c.ywz & u_input.c.yyy), _wgslsmith_f_op_f32(min(-1978f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - arg_0), -1078f))), vec3<i32>(u_input.d, (53956i ^ u_input.b) >> (reverseBits(0u) % 32u), u_input.b), ~_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, -3908i, u_input.b), vec4<i32>(u_input.d, u_input.b, u_input.d, -3782i)), ~vec4<i32>(0i, u_input.b, u_input.b, u_input.d))), u_input.b | u_input.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -583f, arg_0), vec3<f32>(850f, 592f, arg_0), true)), vec3<f32>(arg_0, 777f, 269f), vec3<bool>(true, true, true)))), max(vec3<u32>(15794u, 1u, u_input.c.x), _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.e, u_input.c.x, 10698u), u_input.c.wzx, vec3<bool>(false, false, false)), vec3<u32>(u_input.c.x, u_input.c.x, u_input.e))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-567f, arg_0) - -221f))), vec3<i32>(-2147483647i, u_input.d, 29933i), vec4<i32>(~u_input.d, -(46960i << (0u % 32u)), firstLeadingBit(_wgslsmith_mult_i32(u_input.b, u_input.b)), 25390i)));
    var var_1 = _wgslsmith_f_op_f32(sign(-348f)) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(449f + var_0.d.a.x)) + _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(var_0.d.c - 218f)))));
    var var_2 = var_0.b.d.yy;
    var_1 = true;
    let var_3 = firstTrailingBit(_wgslsmith_add_vec4_u32(select(u_input.c, vec4<u32>(u_input.e, 4294967295u, 1u, 1u), u_input.c.x > var_0.b.b.x), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c.ywz, var_0.b.b), ~0u, ~11915u, ~37743u))) >> (~u_input.c % vec4<u32>(32u));
    return select(!vec2<bool>(var_2.x == _wgslsmith_dot_vec4_i32(var_0.d.e, var_0.d.e), true), !(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), false)), !vec2<bool>(!all(vec3<bool>(true, true, false)), true));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = u_input.c.x;
    var_0 = ~(~u_input.a << (_wgslsmith_add_u32(~(~u_input.c.x), u_input.e) % 32u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-462f, -237f, -1000f), vec3<f32>(1780f, -806f, -287f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(493f, -1000f, -1000f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-750f, 892f, -1000f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1416f, -1723f, -1253f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-616f, 218f, -1000f))))), ~(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 12907u, ~0u) & vec3<u32>(3022u >> (u_input.a % 32u), ~11121u, ~19823u)), _wgslsmith_f_op_f32(max(1752f, 640f)), vec3<i32>(-2147483647i, 1i, _wgslsmith_clamp_i32(-14630i, _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, arg_0.x, arg_0.x), vec3<i32>(arg_1, 0i, arg_0.x)), _wgslsmith_mult_i32(arg_0.x & arg_0.x, arg_0.x))), min(~firstTrailingBit(_wgslsmith_add_vec4_i32(arg_0, vec4<i32>(-8196i, -91599i, -29943i, -1i))), ~arg_0));
    let var_2 = any(!vec3<bool>(true, arg_2.x, arg_2.x));
    var var_3 = !select(vec3<bool>(true, (var_1.c == 1170f) == !var_2, true), vec3<bool>(arg_2.x, arg_2.x, true), _wgslsmith_mod_i32(~arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, arg_1, -31138i, u_input.d), arg_0)) == arg_1);
    return Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(u_input.e, u_input.c.x), 1u, ~48836u), vec3<u32>(1u, var_1.b.x, func_3(Struct_1(vec3<f32>(var_1.a.x, var_1.a.x, var_1.c), vec3<u32>(var_1.b.x, 1u, var_1.b.x), 1253f, vec3<i32>(u_input.d, -1i, arg_0.x), var_1.e), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, 36256u, 7327u), vec4<u32>(var_1.b.x, var_1.b.x, u_input.c.x, u_input.e)), _wgslsmith_mult_i32(var_1.d.x, 53711i), !vec3<bool>(false, arg_2.x, true)).x)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a - _wgslsmith_f_op_vec3_f32(min(var_1.a, vec3<f32>(var_1.a.x, var_1.c, 1458f))))), max(vec3<u32>(1u, _wgslsmith_sub_u32(36308u, var_1.b.x), 95861u), _wgslsmith_mod_vec3_u32(firstLeadingBit(var_1.b), var_1.b & vec3<u32>(10224u, u_input.c.x, 1u))), _wgslsmith_f_op_f32(-1f), select(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(u_input.d, var_1.e.x, -27289i)), select(vec3<i32>(arg_0.x, 61875i, 11527i), vec3<i32>(0i, u_input.b, -6670i), false)), ~arg_0.wwy, !(!var_3.x)), firstLeadingBit(vec4<i32>(6064i, countOneBits(15428i), arg_0.x, arg_0.x))), reverseBits(-(~abs(0i))), Struct_1(vec3<f32>(-920f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.x))), var_1.a.x), abs(select(var_1.b, vec3<u32>(1u, var_1.b.x, var_1.b.x), true)) | countOneBits(select(var_1.b, vec3<u32>(39372u, 0u, u_input.e), vec3<bool>(false, var_3.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c, _wgslsmith_f_op_f32(-var_1.c)))), vec3<i32>(-2147483647i, u_input.b, -44751i), var_1.e));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(arg_1.a, ~(~arg_3.d.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-717f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1197f)) + _wgslsmith_div_f32(arg_1.a.x, arg_1.a.x)))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(-46935i, -33993i, 23904i), vec3<i32>(arg_3.d.d.x, arg_2.d.x, _wgslsmith_dot_vec4_i32(arg_1.e, vec4<i32>(0i, 2692i, arg_1.d.x, arg_3.b.d.x)))), firstTrailingBit(arg_1.d)), vec4<i32>(u_input.b & ~(u_input.d ^ arg_2.e.x), select(arg_3.c, _wgslsmith_div_i32(arg_1.d.x, arg_3.c) << (~0u % 32u), true), -15937i, -_wgslsmith_mod_i32(arg_3.b.d.x << (arg_1.b.x % 32u), arg_3.b.d.x)));
    let var_1 = func_4(_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_0.e.x, ~(-2147483647i), _wgslsmith_div_i32(-2147483647i, -arg_3.b.d.x)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, arg_2.e.x, -2147483647i, arg_2.d.x), var_0.e) >> (u_input.c % vec4<u32>(32u)), vec4<i32>(-54425i, -var_0.e.x, -1i, _wgslsmith_sub_i32(arg_2.d.x, 2147483647i)))), _wgslsmith_dot_vec4_i32(-(vec4<i32>(-1i) * -arg_1.e), firstLeadingBit(var_0.e)), vec2<bool>(any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false)))), !select(true, true, false))).d;
    let var_2 = vec2<f32>(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), arg_2.c)));
    var var_3 = vec3<bool>(true, false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))) != true);
    var var_4 = arg_3;
    return Struct_1(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * -1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_3.d.c, 170f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(arg_2.a.x + -772f)))), (~vec3<u32>(1292u, 0u, 4294967295u) ^ u_input.c.ywy) & (firstLeadingBit(arg_3.d.b) & arg_1.b), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_mult_vec3_i32(~(-vec3<i32>(arg_2.d.x, arg_3.b.d.x, -2606i)) & ~(vec3<i32>(var_0.d.x, 2147483647i, arg_3.b.d.x) << (vec3<u32>(4294967295u, 1u, arg_3.d.b.x) % vec3<u32>(32u))), abs(vec3<i32>(var_1.e.x, firstLeadingBit(-9382i), -818i))), max(func_4(firstLeadingBit(arg_2.e), ~0i, select(vec2<bool>(true, var_3.x), !var_3.xy, false)).d.e, abs(var_1.e)));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> vec3<i32> {
    var var_0 = Struct_2(arg_0.a, func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(578f, 186f, arg_0.b.a.x, -536f)), vec4<f32>(arg_0.b.c, 269f, 1665f, arg_0.d.a.x), vec4<bool>(true, true, true, true)))), arg_0.d, arg_0.b, func_4(select(vec4<i32>(1i, 2147483647i, arg_0.c, arg_1), _wgslsmith_div_vec4_i32(arg_0.d.e, vec4<i32>(u_input.b, -2147483647i, -2147483647i, arg_0.d.e.x)), vec4<bool>(true, true, true, false)), ~(~arg_1), func_2(_wgslsmith_f_op_f32(exp2(arg_0.d.a.x))))), _wgslsmith_mod_i32(~(_wgslsmith_clamp_i32(-53340i, 2147483647i, -2147483647i) | reverseBits(arg_1)), ~arg_1), func_5(vec4<f32>(arg_0.b.c, _wgslsmith_f_op_f32(func_4(vec4<i32>(-1i, 3938i, 1i, arg_1), 9484i, vec2<bool>(false, false)).b.c * _wgslsmith_f_op_f32(f32(-1f) * -377f)), arg_0.b.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1000f))))), func_4(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(28176i, arg_0.c, 2147483647i, 0i)), -vec4<i32>(1i, 20164i, 0i, arg_0.b.d.x)), arg_0.d.d.x, select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, true, true))).b, arg_0.b, arg_0));
    var var_1 = vec4<u32>(u_input.e, _wgslsmith_sub_u32(1u, ~arg_0.a), arg_0.a | ~0u, _wgslsmith_clamp_u32(var_0.a, ~u_input.e, 4294967295u));
    let var_2 = 450f;
    let var_3 = arg_0.a;
    var var_4 = func_4(vec4<i32>(min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 0i), arg_0.d.e.xw) ^ 1i, -2147483647i), 9677i, var_0.c, arg_0.c), 8630i, func_2(-1066f));
    return func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2330f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1886f * var_2))), -406f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -865f)))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.b.a.x)), _wgslsmith_f_op_f32(floor(arg_0.d.a.x)), _wgslsmith_f_op_f32(abs(var_0.d.c))) * var_0.b.a), vec3<u32>(_wgslsmith_mod_u32(7738u, ~u_input.a), 22921u, func_4(~var_0.d.e, _wgslsmith_sub_i32(u_input.b, 42496i), func_2(var_4.d.c)).a), 524f, -(vec3<i32>(-28230i, u_input.d, arg_1) << (u_input.c.xyy % vec3<u32>(32u))) | _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.c, var_4.d.d.x, -56757i), vec3<i32>(arg_1, 2147483647i, arg_0.b.e.x), vec3<i32>(var_4.c, 0i, -2147483647i)), abs(vec3<i32>(11990i, 0i, u_input.d))), select(select(vec4<i32>(var_4.c, 2147483647i, -2147483647i, var_0.b.d.x), arg_0.d.e, vec4<bool>(false, true, true, true)), vec4<i32>(-2147483647i, -7375i, u_input.b, 1i), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false)) >> (u_input.c % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(var_2, -146f, false)), 728f, arg_0.d.c)), var_4.b.b >> (var_1.wyx % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(452f)), func_5(vec4<f32>(var_0.d.a.x, arg_0.d.c, arg_0.d.a.x, 1000f), Struct_1(vec3<f32>(var_4.d.a.x, var_0.d.c, var_0.b.c), arg_0.b.b, var_4.b.c, vec3<i32>(u_input.b, var_0.c, -2147483647i), vec4<i32>(arg_1, arg_1, -15874i, arg_1)), Struct_1(vec3<f32>(var_4.b.c, var_2, -117f), vec3<u32>(var_4.a, var_0.a, var_0.d.b.x), -814f, var_0.b.d, vec4<i32>(2147483647i, arg_1, 22252i, u_input.d)), arg_0).a.x)) + _wgslsmith_f_op_f32(var_0.b.c * _wgslsmith_f_op_f32(var_0.b.a.x + -413f))), vec3<i32>(-1i, -9782i, arg_1), var_4.b.e), Struct_2(_wgslsmith_dot_vec4_u32(abs(firstTrailingBit(vec4<u32>(var_1.x, 0u, var_1.x, u_input.e))), u_input.c), func_4(var_4.d.e, _wgslsmith_clamp_i32(var_4.b.e.x, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(32903i, u_input.b, -42552i), vec3<i32>(var_0.c, var_4.d.d.x, var_4.b.e.x))), vec2<bool>(true, true)).b, 0i, var_0.b)).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1667f))) - _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(-1000f, 505f))), 2721f, 409f), u_input.c.wyw, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -334f), _wgslsmith_f_op_f32(f32(-1f) * -131f))), 1f) * -219f), abs(-abs(func_1(Struct_2(0u, Struct_1(vec3<f32>(969f, -201f, -1421f), vec3<u32>(4294967295u, 6494u, u_input.e), -234f, vec3<i32>(u_input.b, u_input.d, u_input.b), vec4<i32>(u_input.d, u_input.b, u_input.d, u_input.d)), -9492i, Struct_1(vec3<f32>(975f, 710f, -499f), vec3<u32>(u_input.c.x, 5306u, u_input.a), -1016f, vec3<i32>(-8136i, -11760i, u_input.b), vec4<i32>(u_input.b, -14663i, u_input.b, u_input.d))), 0i))), -vec4<i32>(-14649i, -(u_input.d << (u_input.e % 32u)), ~u_input.d, u_input.d));
    var var_1 = _wgslsmith_div_u32(_wgslsmith_add_u32(1u, reverseBits(u_input.a)), var_0.b.x);
    var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 31945u, 38755u, 4294967295u) | vec4<u32>(0u, var_0.b.x, 1u, 0u), ~u_input.c) & countOneBits(u_input.c.x);
    var_1 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_f32(min(func_4(vec4<i32>(u_input.b, u_input.b, abs(~(-19135i)), _wgslsmith_mult_i32(0i, -61677i)), 1i, vec2<bool>(true, true)).b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(483f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + var_0.c) * var_0.a.x)) + var_0.a.x)));
    var var_3 = ~abs(u_input.d);
    var_1 = var_0.b.x;
    var_3 = i32(-1i) * -1i;
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(_wgslsmith_add_u32(~var_0.b.x, 11561u)), _wgslsmith_dot_vec4_u32(u_input.c, u_input.c ^ firstLeadingBit(vec4<u32>(var_0.b.x, 4187u, var_0.b.x, var_0.b.x)))), abs(19266u));
}

