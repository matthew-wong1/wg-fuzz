struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool = true;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<f32> {
    var var_0 = vec2<bool>(!any(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true);
    let var_1 = Struct_2(Struct_1(u_input.c & ~vec3<i32>(u_input.c.x, -4908i, u_input.a.x), select(_wgslsmith_add_vec3_u32(u_input.d.wwy & u_input.d.zxw, u_input.d.wzx), min(vec3<u32>(u_input.d.x, u_input.b.x, 16049u), u_input.d.yyw), vec3<bool>(select(true, false, true), !var_0.x, var_0.x)), !(!var_0.x), select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.a.x) | max(vec4<i32>(u_input.c.x, u_input.a.x, 1i, u_input.c.x), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(select(u_input.c.x, u_input.a.x, true), u_input.c.x, max(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -76891i, u_input.c.x), u_input.c)), !vec4<bool>(var_0.x, var_0.x, false, false))), Struct_1(vec3<i32>(select(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.a), var_0.x), u_input.c.x, u_input.c.x), vec3<u32>(~(~u_input.b.x), min(u_input.b.x, 4294967295u), 4294967295u), true, vec4<i32>(_wgslsmith_mult_i32(-2147483647i << (u_input.b.x % 32u), 1i), u_input.c.x, 1i, -1i)), u_input.c, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.b.x), u_input.b.x), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(4192u, 0u, u_input.b.x), max(u_input.b.x, 1u))));
    global0 = _wgslsmith_mod_i32(firstLeadingBit(max(var_1.b.a.x, -2147483647i)), -_wgslsmith_clamp_i32(1i, ~39142i, ~var_1.b.a.x));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(190f)), 519f)) + _wgslsmith_f_op_f32(-1f))));
    global1 = false;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<u32>) -> i32 {
    var var_0 = reverseBits(vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(abs(vec4<u32>(4294967295u, arg_1.a.b.x, arg_2.x, arg_1.a.b.x))), vec4<u32>(select(4294967295u, u_input.d.x, true), arg_2.x >> (arg_1.a.b.x % 32u), 1u, 43943u)), ~2439u));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_dot_vec3_i32(arg_1.c, arg_1.a.d.zzx);
    var var_3 = Struct_1(vec3<i32>(u_input.a.x, 1i, ~(~var_1.c.x)), u_input.d.zxw, any(vec2<bool>(true, all(!vec2<bool>(false, var_1.b.c)))), ~var_1.b.d);
    global1 = true;
    return _wgslsmith_mod_i32(var_3.d.x, -var_3.d.x);
}

fn func_2(arg_0: vec2<bool>) -> Struct_4 {
    let var_0 = func_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -548f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -427f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-100f, 769f), vec2<f32>(1287f, -779f), false)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-138f, 1562f), vec2<f32>(-682f, 836f), false)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-427f, -1000f) - vec2<f32>(-400f, -710f))))), Struct_2(Struct_1(~(-vec3<i32>(u_input.a.x, -2147483647i, u_input.c.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(41096u, 13399u, u_input.b.x), vec3<u32>(u_input.d.x, u_input.d.x, 1u)), false, firstTrailingBit(vec4<i32>(6315i, u_input.a.x, u_input.c.x, u_input.c.x) >> (vec4<u32>(4294967295u, 4294967295u, 1u, u_input.d.x) % vec4<u32>(32u)))), Struct_1(u_input.c & _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.c.x, 35683i), vec3<i32>(u_input.a.x, u_input.c.x, 33311i)), ~vec3<u32>(u_input.b.x, u_input.d.x, 1u), arg_0.x, ~min(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_add_vec3_i32(abs(reverseBits(vec3<i32>(u_input.a.x, -4967i, 0i))), -vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), ~1u), u_input.d.yz);
    global0 = ~abs(-u_input.c.x);
    global0 = 2147483647i;
    var var_1 = ~(~(~u_input.b));
    var var_2 = Struct_4(any(!select(arg_0, vec2<bool>(arg_0.x, arg_0.x), false)) & any(!(!vec4<bool>(arg_0.x, false, arg_0.x, false))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(355f, -202f, -359f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1286f, 1321f, 1000f), vec3<f32>(-582f, 1397f, -218f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-494f, 1000f, -1252f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(650f, -1534f, -785f) * vec3<f32>(1532f, -162f, 1732f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1269f, 1000f, 1000f)))) + vec3<f32>(1f, _wgslsmith_f_op_f32(max(-578f, 382f)), -119f))), vec3<f32>(_wgslsmith_f_op_f32(-1208f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-279f, -762f)), _wgslsmith_f_op_f32(-691f + 2470f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-619f)) + 1740f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-426f * -1304f) - _wgslsmith_f_op_f32(f32(-1f) * -624f)) - -1294f)), Struct_1(u_input.c, vec3<u32>(25226u, 4294967295u, firstTrailingBit(_wgslsmith_mult_u32(u_input.d.x, var_1.x))), !(!arg_0.x) == arg_0.x, vec4<i32>(34407i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(68268i, 47361i, u_input.a.x, -33976i)), ~vec4<i32>(u_input.a.x, 48805i, 1i, u_input.c.x)), u_input.c.x, reverseBits(~u_input.a.x))));
    return Struct_4(u_input.a.x >= (var_2.d.a.x & -2147483647i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1450f, -1000f, _wgslsmith_f_op_f32(-var_2.b.x)) + vec3<f32>(_wgslsmith_f_op_f32(trunc(-509f)), -1000f, _wgslsmith_f_op_f32(-var_2.b.x))), _wgslsmith_div_vec3_f32(var_2.c, var_2.c), ~1u > u_input.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1272f, 707f))), var_2.b.x, var_2.b.x) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.b.x, var_2.c.x, -567f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-551f, 1000f, -1071f), vec3<f32>(var_2.c.x, -353f, 1148f)), var_2.b, true))))), var_2.d);
}

fn func_5(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: bool) -> bool {
    global0 = u_input.a.x;
    var var_0 = Struct_1(max(arg_2.d.d.xyw, vec3<i32>(1i, func_2(select(vec2<bool>(arg_3, arg_3), vec2<bool>(false, arg_2.d.c), arg_2.d.c)).d.a.x, -1i)), select(~vec3<u32>(33824u, 0u, u_input.d.x) & arg_2.d.b, vec3<u32>(105623u, u_input.b.x, arg_2.d.b.x) ^ _wgslsmith_sub_vec3_u32(arg_2.d.b, arg_2.d.b), select(vec3<bool>(true, true, true), vec3<bool>(arg_3, true, true), arg_2.d.c)) & _wgslsmith_mod_vec3_u32(select(~arg_2.d.b, ~u_input.d.wwx, select(vec3<bool>(false, false, arg_2.d.c), vec3<bool>(false, arg_3, arg_2.d.c), arg_2.d.c)), vec3<u32>(min(4294967295u, u_input.d.x), u_input.d.x, _wgslsmith_div_u32(u_input.d.x, arg_2.d.b.x))), arg_2.b.x >= _wgslsmith_f_op_f32(exp2(func_2(select(vec2<bool>(true, arg_3), vec2<bool>(true, arg_3), false)).c.x)), ~(~(-arg_2.d.d)));
    var var_1 = Struct_4(arg_2.d.c, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(arg_2.c.x - 720f), -3107f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.b.x), arg_2.c.x)), arg_2.b.x, 1931f)), arg_2.d);
    var_1 = arg_2;
    global0 = arg_0;
    return var_1.a;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1701f * -232f)))));
    let var_1 = func_5(u_input.c.x, abs(vec4<i32>(abs(u_input.c.x) ^ (u_input.c.x ^ 30707i), u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x ^ u_input.c.x), select(-u_input.c.x, u_input.c.x << (u_input.d.x % 32u), arg_1.x))), func_2(select(arg_1, arg_2.zx, true)), ~4294967295u == ~(arg_0 | ~1u));
    var var_2 = select(select(arg_2.xx, select(select(select(arg_2.zz, vec2<bool>(arg_1.x, true), true), arg_2.xy, !arg_2.zx), select(arg_1, !vec2<bool>(arg_2.x, arg_1.x), all(vec3<bool>(false, false, arg_2.x))), select(select(vec2<bool>(true, false), arg_2.xz, vec2<bool>(var_1, arg_2.x)), vec2<bool>(var_1, true), select(vec2<bool>(arg_2.x, true), arg_1, arg_2.x))), select(!vec2<bool>(arg_1.x, arg_2.x), vec2<bool>(false, true), true)), !vec2<bool>(!arg_1.x, true), select(!(!select(vec2<bool>(false, var_1), arg_2.yz, vec2<bool>(arg_2.x, false))), vec2<bool>(true, !select(arg_1.x, false, var_1)), true));
    var var_3 = Struct_3(vec4<i32>(39713i, -u_input.a.x, func_2(arg_1).d.a.x, _wgslsmith_clamp_i32(u_input.c.x, u_input.a.x, 0i)), vec4<bool>(any(vec3<bool>(all(arg_2.yz), select(true, true, true), true)), any(vec3<bool>(true & arg_1.x, var_2.x, !arg_1.x)), !select(true, any(vec4<bool>(var_1, arg_1.x, var_1, arg_2.x)), arg_2.x), !(-u_input.c.x >= -43697i)), arg_0, ~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, u_input.c.x)), ~(-vec2<i32>(u_input.a.x, 0i))), var_2.x);
    let var_4 = Struct_2(Struct_1(-var_3.a.zyy, abs(u_input.d.xwy), true | !var_2.x, _wgslsmith_clamp_vec4_i32(~firstTrailingBit(var_3.a), abs(_wgslsmith_mult_vec4_i32(var_3.a, vec4<i32>(var_3.d, 1i, u_input.a.x, var_3.d))), var_3.a)), Struct_1(u_input.c, u_input.d.yyx, var_3.e, vec4<i32>(-24126i, 2147483647i, _wgslsmith_div_i32(u_input.a.x, -var_3.d), -15452i)), var_3.a.zxx, reverseBits(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, var_3.c, var_3.c), u_input.d.zyx), _wgslsmith_div_u32(40928u, arg_0)))));
    return vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0)))), 317f)), 433f, _wgslsmith_f_op_f32(f32(-1f) * -531f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 8705u))) << (~vec4<u32>(_wgslsmith_mult_u32(1u, u_input.b.x), u_input.b.x ^ u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(55744u, u_input.d.x, u_input.b.x, u_input.b.x), u_input.d), ~u_input.d.x) % vec4<u32>(32u)), vec4<i32>(-1i, _wgslsmith_clamp_i32(select(u_input.c.x, u_input.c.x, true), firstLeadingBit(u_input.a.x), ~(~u_input.a.x)), (-1i & u_input.a.x) >> (1591u % 32u), -39167i), u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_1(u_input.b.x, vec2<bool>(false, false), vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-792f, 465f, -1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(406f, -956f, 459f) - vec3<f32>(-554f, -1000f, -1690f)) - vec3<f32>(860f, -1000f, 289f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(191f + -589f), -585f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1166f, -1200f) + vec2<f32>(-1846f, 263f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-562f, -354f) - vec2<f32>(1528f, 675f))))));
}

