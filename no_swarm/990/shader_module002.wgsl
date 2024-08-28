struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: i32,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 65196u;

var<private> global1: f32;

var<private> global2: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: i32, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), 1699f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(692f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(407f, 1184f)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(542f, 1813f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1547f, -116f) - vec2<f32>(-1669f, -532f)), true)))))));
    let var_1 = -43418i;
    global0 = 0u;
    let var_2 = _wgslsmith_mult_i32(firstLeadingBit(arg_2 & ((-1i ^ var_1) ^ 16261i)), arg_2);
    let var_3 = arg_1.x;
    return _wgslsmith_f_op_f32(-294f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -1257f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(538f)), _wgslsmith_f_op_f32(f32(-1f) * -160f)))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = !all(vec2<bool>(all(!arg_2.b), arg_2.d.x));
    let var_1 = Struct_3(vec3<u32>(abs(firstTrailingBit(arg_2.a.x) >> (abs(u_input.b) % 32u)), u_input.b, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~arg_1.x, arg_1.x), _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, u_input.b), reverseBits(3577u)), min(u_input.b, ~arg_1.x))), select(select(vec4<bool>(false, true, arg_3.b, all(arg_2.b.wxw)), select(!vec4<bool>(arg_3.b, false, arg_2.b.x, false), arg_2.b, arg_2.b), arg_2.b), vec4<bool>(arg_3.b, true, true, true), ((u_input.b | u_input.b) >= 73661u) != all(arg_2.b.yzy)), -1i >> (1u % 32u), vec3<bool>(all(select(!arg_2.b.zw, vec2<bool>(arg_3.b, arg_3.b), arg_3.b)), (1621i << (u_input.b % 32u)) < 1i, false), Struct_2(u_input.d, arg_3, (vec3<i32>(2147483647i, arg_2.c, arg_2.c) | ~vec3<i32>(1i, arg_2.c, 2147483647i)) & arg_2.e.c, _wgslsmith_dot_vec4_i32(firstTrailingBit(abs(vec4<i32>(arg_2.c, -8251i, 23362i, 62420i))), select(~vec4<i32>(31793i, 2147483647i, 1i, -26683i), vec4<i32>(-1i, u_input.c.x, u_input.d.x, u_input.e.x), arg_3.b)), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), false)));
    return _wgslsmith_div_vec3_u32(max(arg_2.a, ~(~arg_2.a)) & _wgslsmith_clamp_vec3_u32(firstLeadingBit(var_1.a) ^ var_1.a, select(arg_1.zzy, arg_2.a | var_1.a, any(arg_2.d.zy)), var_1.a), reverseBits(_wgslsmith_div_vec3_u32(arg_2.a, vec3<u32>(var_1.a.x, _wgslsmith_sub_u32(0u, var_1.a.x), ~arg_1.x))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_3) -> vec4<f32> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(173f)))))));
    var var_0 = i32(-1i) * -(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -2577i, -6165i, 0i) >> (vec4<u32>(u_input.b, 4294967295u, arg_3.a.x, 37061u) % vec4<u32>(32u)), -vec4<i32>(2147483647i, 2147483647i, arg_1.x, arg_1.x)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a * arg_3.e.b.a) - -586f));
    let var_1 = Struct_3(_wgslsmith_mod_vec3_u32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1678i, vec4<u32>(32789u, arg_3.a.x, 73276u, 1u), -7679i, 1i))), vec4<u32>(~arg_3.a.x, ~u_input.b, 4294967295u, arg_3.a.x), Struct_3(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.a.x, u_input.b, u_input.b), arg_3.a), select(vec4<bool>(true, false, false, arg_3.b.x), vec4<bool>(true, true, arg_3.b.x, arg_3.b.x), arg_3.b), _wgslsmith_mult_i32(u_input.e.x, -20264i), select(arg_3.b.zzx, vec3<bool>(arg_2.b, true, arg_2.b), false), Struct_2(vec3<i32>(2147483647i, arg_1.x, 90146i), Struct_1(arg_0.x, true), u_input.e, arg_1.x, arg_2)), Struct_1(arg_3.e.b.a, u_input.b > arg_3.a.x)), _wgslsmith_sub_vec3_u32(arg_3.a, ~vec3<u32>(arg_3.a.x, arg_3.a.x, 964u))), vec4<bool>(all(vec4<bool>(!arg_3.e.e.b, arg_2.b, any(arg_3.b), arg_3.d.x)), any(arg_3.b.zwx), any(!vec2<bool>(arg_3.e.b.b, arg_3.b.x)), false == (any(vec2<bool>(true, false)) & (u_input.c.x != -2147483647i))), ~arg_1.x, select(select(select(select(vec3<bool>(false, false, arg_2.b), arg_3.b.zyx, arg_3.e.e.b), !vec3<bool>(arg_3.e.e.b, false, arg_2.b), arg_2.b & false), !arg_3.d, select(vec3<bool>(true, true, true), arg_3.b.wwz, !arg_3.e.e.b)), arg_3.b.yzz, vec3<bool>(false, arg_2.b, all(vec3<bool>(arg_3.d.x, arg_3.b.x, true)))), Struct_2(select(abs(arg_1 & arg_3.e.a), arg_3.e.c, !any(arg_3.d.zz)), arg_2, arg_3.e.c, ~arg_1.x, Struct_1(arg_2.a, arg_2.b)));
    global2 = 10035u;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -841f)), -944f, arg_0.x, 658f)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    let var_0 = false;
    global1 = _wgslsmith_div_f32(arg_0.e.b.a, _wgslsmith_f_op_f32(f32(-1f) * -874f));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(286f)), _wgslsmith_f_op_f32(arg_1.e.b.a - -393f)), vec3<i32>(arg_0.c, -740i, -60568i) ^ arg_0.e.a, arg_0.e.e, arg_0))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<f32>(arg_1.e.e.a, -371f), vec3<i32>(arg_0.e.c.x, arg_1.c, -12541i), arg_0.e.e, Struct_3(vec3<u32>(arg_0.a.x, arg_0.a.x, 1u), vec4<bool>(arg_1.e.b.b, true, true, var_0), arg_0.c, arg_1.b.wxz, arg_0.e)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-182f, arg_1.e.e.a, arg_1.e.e.a, arg_1.e.b.a) + vec4<f32>(-1154f, arg_0.e.e.a, 688f, arg_1.e.e.a)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e.b.a, -399f) - vec2<f32>(-1000f, 941f)), ~vec3<i32>(arg_1.e.d, 22983i, -26848i), Struct_1(arg_0.e.b.a, true), Struct_3(arg_1.a, vec4<bool>(arg_1.b.x, var_0, true, arg_1.e.e.b), arg_0.e.a.x, arg_1.d, Struct_2(u_input.d, Struct_1(arg_0.e.e.a, true), u_input.d, arg_1.e.c.x, Struct_1(arg_1.e.b.a, false)))))))));
    let var_2 = true;
    global2 = _wgslsmith_add_u32(select(abs(u_input.b) & 12732u, 44928u, !var_2), u_input.b) << (_wgslsmith_add_u32(32305u, ~(_wgslsmith_mod_u32(u_input.b, 4294967295u) | 26070u)) % 32u);
    return arg_1;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    global0 = _wgslsmith_mult_u32(abs(min(_wgslsmith_mult_u32(u_input.b, 4294967295u), arg_1.a.x)), _wgslsmith_add_u32(firstTrailingBit(arg_3.a.x), ~(arg_1.a.x ^ u_input.b))) >> (~u_input.b % 32u);
    let var_0 = countOneBits(~(~vec4<i32>(arg_1.c, arg_1.e.d, -1035i, 1i)) << (vec4<u32>(11531u, 1u, ~arg_1.a.x, _wgslsmith_div_u32(u_input.b, func_1(Struct_3(vec3<u32>(u_input.b, 1187u, u_input.b), arg_3.b, -2147483647i, vec3<bool>(arg_3.d.x, arg_3.b.x, arg_3.e.e.b), Struct_2(arg_1.e.c, Struct_1(2594f, false), vec3<i32>(u_input.a.x, 2147483647i, arg_3.e.d), arg_2.a.x, Struct_1(637f, false))), arg_3).a.x)) % vec4<u32>(32u)));
    let var_1 = ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, u_input.b, arg_1.a.x)), vec3<u32>(1u, ~(~u_input.b), ~_wgslsmith_add_u32(u_input.b, 4294967295u)));
    var var_2 = arg_2;
    var var_3 = var_2.b.b;
    return true;
}

fn func_6(arg_0: bool) -> u32 {
    var var_0 = ~(~(~firstTrailingBit(func_4(-499f, vec4<u32>(u_input.b, u_input.b, 57094u, u_input.b), Struct_3(vec3<u32>(59720u, 4457u, u_input.b), vec4<bool>(true, arg_0, arg_0, arg_0), u_input.c.x, vec3<bool>(arg_0, arg_0, false), Struct_2(vec3<i32>(1i, 6393i, u_input.e.x), Struct_1(-225f, arg_0), vec3<i32>(-22871i, 8037i, u_input.a.x), u_input.c.x, Struct_1(-2352f, false))), Struct_1(-148f, arg_0)).xx)));
    let var_1 = func_1(func_1(func_1(func_1(func_1(Struct_3(vec3<u32>(1u, 1u, 58736u), vec4<bool>(true, arg_0, true, arg_0), -25356i, vec3<bool>(true, arg_0, arg_0), Struct_2(u_input.e, Struct_1(1636f, true), vec3<i32>(33915i, 2147483647i, -18718i), -16618i, Struct_1(723f, false))), Struct_3(vec3<u32>(u_input.b, var_0.x, 26948u), vec4<bool>(true, true, arg_0, arg_0), u_input.e.x, vec3<bool>(arg_0, arg_0, arg_0), Struct_2(u_input.d, Struct_1(-213f, false), vec3<i32>(-2147483647i, 43012i, 0i), -21461i, Struct_1(1000f, false)))), func_1(Struct_3(vec3<u32>(1u, u_input.b, var_0.x), vec4<bool>(arg_0, true, arg_0, arg_0), u_input.c.x, vec3<bool>(arg_0, false, arg_0), Struct_2(u_input.e, Struct_1(869f, true), u_input.e, 2147483647i, Struct_1(-586f, false))), Struct_3(vec3<u32>(0u, 0u, u_input.b), vec4<bool>(false, arg_0, arg_0, arg_0), u_input.a.x, vec3<bool>(false, arg_0, false), Struct_2(u_input.d, Struct_1(-739f, arg_0), u_input.d, u_input.e.x, Struct_1(-2502f, false))))), Struct_3(~vec3<u32>(0u, u_input.b, var_0.x), !vec4<bool>(arg_0, arg_0, true, true), 8856i, select(vec3<bool>(arg_0, false, true), vec3<bool>(true, arg_0, false), vec3<bool>(true, false, arg_0)), Struct_2(vec3<i32>(0i, 6696i, u_input.d.x), Struct_1(319f, arg_0), vec3<i32>(0i, -1i, 1i), 15324i, Struct_1(-1240f, false)))), func_1(func_1(func_1(Struct_3(vec3<u32>(var_0.x, 0u, var_0.x), vec4<bool>(arg_0, arg_0, true, true), u_input.a.x, vec3<bool>(true, false, arg_0), Struct_2(u_input.e, Struct_1(-1261f, arg_0), vec3<i32>(u_input.a.x, u_input.c.x, 2257i), u_input.e.x, Struct_1(1000f, arg_0))), Struct_3(vec3<u32>(var_0.x, var_0.x, u_input.b), vec4<bool>(arg_0, arg_0, arg_0, true), 38479i, vec3<bool>(true, arg_0, arg_0), Struct_2(u_input.d, Struct_1(235f, false), vec3<i32>(10629i, 2147483647i, 0i), u_input.d.x, Struct_1(-561f, arg_0)))), Struct_3(vec3<u32>(13636u, var_0.x, u_input.b), vec4<bool>(true, false, arg_0, arg_0), -2147483647i, vec3<bool>(arg_0, arg_0, arg_0), Struct_2(u_input.d, Struct_1(-1000f, arg_0), vec3<i32>(2147483647i, u_input.a.x, 13457i), u_input.c.x, Struct_1(-745f, arg_0)))), func_1(Struct_3(vec3<u32>(0u, 0u, u_input.b), vec4<bool>(true, arg_0, arg_0, arg_0), 7796i, vec3<bool>(arg_0, arg_0, arg_0), Struct_2(vec3<i32>(73026i, 1591i, -6047i), Struct_1(1033f, false), vec3<i32>(u_input.e.x, u_input.a.x, 2147483647i), u_input.e.x, Struct_1(1851f, arg_0))), Struct_3(vec3<u32>(19308u, var_0.x, var_0.x), vec4<bool>(arg_0, arg_0, arg_0, arg_0), u_input.c.x, vec3<bool>(true, arg_0, true), Struct_2(u_input.d, Struct_1(-1065f, true), vec3<i32>(-2147483647i, u_input.d.x, 0i), u_input.a.x, Struct_1(-1466f, arg_0)))))), Struct_3(select(_wgslsmith_sub_vec3_u32(func_1(Struct_3(vec3<u32>(var_0.x, var_0.x, var_0.x), vec4<bool>(arg_0, arg_0, arg_0, false), -1702i, vec3<bool>(true, arg_0, true), Struct_2(vec3<i32>(3929i, u_input.c.x, 26924i), Struct_1(-1000f, arg_0), vec3<i32>(u_input.a.x, 2147483647i, 0i), -3691i, Struct_1(452f, arg_0))), Struct_3(vec3<u32>(1u, u_input.b, 1u), vec4<bool>(false, arg_0, arg_0, true), u_input.d.x, vec3<bool>(arg_0, true, arg_0), Struct_2(vec3<i32>(-29029i, u_input.a.x, u_input.a.x), Struct_1(1439f, arg_0), vec3<i32>(u_input.a.x, u_input.a.x, 6634i), u_input.a.x, Struct_1(-188f, true)))).a, select(vec3<u32>(39574u, var_0.x, var_0.x), vec3<u32>(4294967295u, 8417u, var_0.x), vec3<bool>(arg_0, false, arg_0))), countOneBits(vec3<u32>(36193u, var_0.x, u_input.b)), vec3<bool>(arg_0 != true, false || arg_0, true)), !(!select(vec4<bool>(arg_0, true, true, true), vec4<bool>(false, arg_0, true, false), false)), u_input.a.x, vec3<bool>(u_input.c.x == 8847i, select(arg_0, u_input.a.x < -1i, !arg_0), all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), arg_0))), Struct_2(select(~vec3<i32>(u_input.c.x, u_input.e.x, u_input.e.x), ~vec3<i32>(u_input.d.x, -56164i, u_input.d.x), arg_0 & arg_0), Struct_1(_wgslsmith_f_op_f32(round(762f)), !arg_0), vec3<i32>(~u_input.d.x, _wgslsmith_div_i32(u_input.c.x, u_input.c.x), ~u_input.a.x), min(2991i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, 22087i, u_input.d.x), vec4<i32>(-1333i, u_input.e.x, 2147483647i, 2147483647i))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0))));
    var var_2 = vec4<i32>(~34440i, -19277i, countOneBits(-12878i) ^ ~var_1.c, i32(-1i) * -1i);
    let var_3 = var_1.e.b.a;
    global0 = ~1u;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(u_input.b) >= firstLeadingBit(func_6(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, -946f, 1527f)), Struct_3(vec3<u32>(1u, 1u, u_input.b), vec4<bool>(true, false, true, false), u_input.c.x, vec3<bool>(false, false, true), Struct_2(vec3<i32>(u_input.e.x, -13609i, u_input.d.x), Struct_1(-980f, true), u_input.e, u_input.e.x, Struct_1(490f, false))), Struct_2(vec3<i32>(1i, 43407i, 19052i), Struct_1(378f, true), u_input.e, u_input.c.x, Struct_1(378f, false)), func_1(Struct_3(vec3<u32>(0u, u_input.b, u_input.b), vec4<bool>(false, true, true, false), -26641i, vec3<bool>(true, false, true), Struct_2(u_input.e, Struct_1(-191f, true), vec3<i32>(0i, -1i, u_input.e.x), u_input.a.x, Struct_1(100f, true))), Struct_3(vec3<u32>(108169u, u_input.b, 4294967295u), vec4<bool>(true, false, true, false), u_input.e.x, vec3<bool>(false, true, true), Struct_2(u_input.d, Struct_1(730f, true), u_input.e, 1i, Struct_1(612f, false)))))));
    global1 = _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -722f), 1318f) * vec2<f32>(_wgslsmith_f_op_f32(335f - 1059f), _wgslsmith_f_op_f32(f32(-1f) * -245f))) * vec2<f32>(_wgslsmith_f_op_f32(floor(func_1(Struct_3(vec3<u32>(u_input.b, 2592u, 36617u), vec4<bool>(var_0, var_0, true, var_0), -2147483647i, vec3<bool>(false, false, var_0), Struct_2(u_input.e, Struct_1(-929f, var_0), u_input.e, u_input.c.x, Struct_1(841f, var_0))), Struct_3(vec3<u32>(u_input.b, 76692u, 1u), vec4<bool>(true, false, var_0, var_0), 25259i, vec3<bool>(var_0, true, var_0), Struct_2(u_input.d, Struct_1(-427f, false), u_input.d, 37152i, Struct_1(855f, false)))).e.b.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1848f), -364f))), vec3<i32>(abs(u_input.d.x) | abs(u_input.d.x), firstTrailingBit(u_input.e.x), u_input.d.x), func_1(func_1(func_1(Struct_3(vec3<u32>(5640u, u_input.b, 33297u), vec4<bool>(var_0, false, true, var_0), u_input.a.x, vec3<bool>(false, var_0, var_0), Struct_2(vec3<i32>(-36561i, u_input.c.x, u_input.e.x), Struct_1(-197f, var_0), u_input.d, u_input.e.x, Struct_1(-404f, var_0))), func_1(Struct_3(vec3<u32>(30570u, u_input.b, u_input.b), vec4<bool>(true, var_0, var_0, true), u_input.a.x, vec3<bool>(false, var_0, false), Struct_2(vec3<i32>(-2147483647i, u_input.d.x, 1i), Struct_1(-1000f, false), u_input.e, u_input.d.x, Struct_1(-289f, var_0))), Struct_3(vec3<u32>(u_input.b, 15180u, 4294967295u), vec4<bool>(true, var_0, var_0, true), -1i, vec3<bool>(false, true, var_0), Struct_2(u_input.e, Struct_1(-1000f, false), vec3<i32>(-47121i, -25117i, 3062i), u_input.e.x, Struct_1(-2118f, var_0))))), func_1(Struct_3(vec3<u32>(u_input.b, 0u, u_input.b), vec4<bool>(var_0, var_0, var_0, var_0), u_input.c.x, vec3<bool>(var_0, false, false), Struct_2(vec3<i32>(0i, 30064i, u_input.e.x), Struct_1(554f, false), vec3<i32>(39398i, -2147483647i, u_input.d.x), 0i, Struct_1(-1454f, var_0))), Struct_3(vec3<u32>(0u, 0u, u_input.b), vec4<bool>(false, false, var_0, false), -43989i, vec3<bool>(false, var_0, true), Struct_2(u_input.d, Struct_1(1629f, false), vec3<i32>(u_input.a.x, 2147483647i, -20246i), 11690i, Struct_1(-388f, false))))), func_1(Struct_3(vec3<u32>(0u, 1u, 43385u) >> (vec3<u32>(u_input.b, u_input.b, 1u) % vec3<u32>(32u)), !vec4<bool>(var_0, false, true, false), -u_input.a.x, vec3<bool>(var_0, var_0, var_0), Struct_2(vec3<i32>(u_input.c.x, 8415i, u_input.a.x), Struct_1(617f, var_0), vec3<i32>(u_input.c.x, u_input.e.x, u_input.e.x), -53212i, Struct_1(-833f, false))), Struct_3(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 24413u, u_input.b), vec3<u32>(u_input.b, u_input.b, 1u)), select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(var_0, true, var_0, true)), u_input.a.x, select(vec3<bool>(var_0, true, true), vec3<bool>(var_0, true, false), false), func_1(Struct_3(vec3<u32>(u_input.b, 16678u, 18640u), vec4<bool>(false, true, var_0, true), u_input.c.x, vec3<bool>(false, var_0, true), Struct_2(u_input.e, Struct_1(1455f, var_0), vec3<i32>(u_input.d.x, u_input.e.x, u_input.d.x), -1i, Struct_1(-460f, var_0))), Struct_3(vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<bool>(true, var_0, var_0, true), u_input.e.x, vec3<bool>(true, false, var_0), Struct_2(u_input.e, Struct_1(-2256f, var_0), u_input.d, -2147483647i, Struct_1(-324f, var_0)))).e))).e.e, Struct_3(~abs(vec3<u32>(83529u, 4294967295u, u_input.b)), func_1(Struct_3(select(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(u_input.b, 11885u, u_input.b), vec3<bool>(true, false, var_0)), select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, true, true, var_0)), i32(-1i) * -62978i, vec3<bool>(true, true, true), func_1(Struct_3(vec3<u32>(4294967295u, u_input.b, 0u), vec4<bool>(var_0, var_0, true, var_0), u_input.a.x, vec3<bool>(true, var_0, var_0), Struct_2(vec3<i32>(u_input.d.x, 8097i, u_input.c.x), Struct_1(-214f, false), vec3<i32>(2147483647i, -5245i, u_input.c.x), u_input.a.x, Struct_1(1000f, true))), Struct_3(vec3<u32>(35354u, u_input.b, 1u), vec4<bool>(true, false, true, var_0), u_input.c.x, vec3<bool>(var_0, var_0, var_0), Struct_2(u_input.d, Struct_1(-257f, var_0), u_input.d, u_input.d.x, Struct_1(188f, var_0)))).e), func_1(Struct_3(vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<bool>(var_0, var_0, var_0, true), -1i, vec3<bool>(true, false, false), Struct_2(vec3<i32>(u_input.c.x, -80295i, u_input.e.x), Struct_1(-1462f, true), vec3<i32>(-1i, u_input.a.x, -7414i), 26290i, Struct_1(343f, var_0))), func_1(Struct_3(vec3<u32>(4294967295u, 1u, 55151u), vec4<bool>(var_0, false, false, false), u_input.c.x, vec3<bool>(var_0, true, var_0), Struct_2(u_input.e, Struct_1(436f, true), vec3<i32>(u_input.d.x, u_input.a.x, u_input.c.x), u_input.e.x, Struct_1(-1010f, var_0))), Struct_3(vec3<u32>(u_input.b, 14118u, 4763u), vec4<bool>(true, var_0, true, var_0), u_input.c.x, vec3<bool>(true, var_0, var_0), Struct_2(u_input.e, Struct_1(-990f, true), vec3<i32>(12622i, 2147483647i, 1i), u_input.e.x, Struct_1(-911f, var_0)))))).b, _wgslsmith_add_i32(-u_input.a.x, _wgslsmith_mult_i32(min(-1i, -1i), -34192i)), vec3<bool>(!all(vec4<bool>(var_0, var_0, false, false)), false, !(!var_0)), func_1(func_1(Struct_3(vec3<u32>(4294967295u, 1u, u_input.b), vec4<bool>(var_0, true, false, false), u_input.e.x, vec3<bool>(false, var_0, var_0), Struct_2(u_input.e, Struct_1(747f, true), u_input.d, u_input.a.x, Struct_1(-836f, var_0))), func_1(Struct_3(vec3<u32>(16253u, u_input.b, 0u), vec4<bool>(false, false, true, var_0), -2147483647i, vec3<bool>(var_0, true, var_0), Struct_2(u_input.d, Struct_1(-1000f, var_0), vec3<i32>(u_input.e.x, 28571i, 0i), u_input.e.x, Struct_1(-1000f, false))), Struct_3(vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<bool>(true, var_0, var_0, true), u_input.d.x, vec3<bool>(true, var_0, false), Struct_2(vec3<i32>(u_input.a.x, 2147483647i, u_input.e.x), Struct_1(1512f, var_0), vec3<i32>(2147483647i, -7000i, 1954i), -2147483647i, Struct_1(-550f, var_0))))), func_1(func_1(Struct_3(vec3<u32>(0u, 4294967295u, u_input.b), vec4<bool>(var_0, var_0, var_0, true), 0i, vec3<bool>(false, var_0, false), Struct_2(vec3<i32>(1i, 42951i, 1i), Struct_1(-2094f, var_0), vec3<i32>(u_input.c.x, -2147483647i, 1i), 48384i, Struct_1(1013f, var_0))), Struct_3(vec3<u32>(77506u, u_input.b, u_input.b), vec4<bool>(false, true, var_0, var_0), -22397i, vec3<bool>(var_0, var_0, true), Struct_2(u_input.d, Struct_1(182f, true), u_input.e, u_input.c.x, Struct_1(-1229f, false)))), func_1(Struct_3(vec3<u32>(u_input.b, 82010u, 8919u), vec4<bool>(var_0, true, false, true), 2147483647i, vec3<bool>(var_0, var_0, var_0), Struct_2(u_input.e, Struct_1(2145f, var_0), u_input.d, u_input.e.x, Struct_1(693f, true))), Struct_3(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec4<bool>(true, var_0, var_0, false), 0i, vec3<bool>(var_0, var_0, var_0), Struct_2(vec3<i32>(u_input.d.x, 0i, u_input.d.x), Struct_1(-533f, var_0), u_input.d, 45596i, Struct_1(1000f, var_0)))))).e))).x;
    let var_1 = vec2<bool>(true, true);
    let var_2 = Struct_2(_wgslsmith_sub_vec3_i32(-u_input.e, vec3<i32>(abs(_wgslsmith_mult_i32(-1i, u_input.d.x)), 70568i, _wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, u_input.c.x), reverseBits(-24265i)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(389f - 1212f) - 1f)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(-1418f, -946f))) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-605f)), 455f))), ~_wgslsmith_clamp_vec3_i32(u_input.e, u_input.d, _wgslsmith_sub_vec3_i32(u_input.e, u_input.e >> (vec3<u32>(u_input.b, u_input.b, 50908u) % vec3<u32>(32u)))), 34509i, Struct_1(181f, true));
    let var_3 = var_2.b;
    global0 = _wgslsmith_dot_vec4_u32(min(~vec4<u32>(64790u, firstLeadingBit(u_input.b), 4294967295u, u_input.b), ~vec4<u32>(~0u, func_1(Struct_3(vec3<u32>(1u, u_input.b, u_input.b), vec4<bool>(var_0, true, false, true), -1i, vec3<bool>(var_1.x, var_2.e.b, false), Struct_2(var_2.a, var_3, vec3<i32>(var_2.a.x, 0i, -1822i), u_input.d.x, var_2.e)), Struct_3(vec3<u32>(26947u, u_input.b, u_input.b), vec4<bool>(var_0, var_3.b, var_0, false), 25316i, vec3<bool>(true, var_1.x, false), Struct_2(vec3<i32>(60292i, 2147483647i, var_2.c.x), var_2.b, vec3<i32>(u_input.a.x, 21582i, u_input.a.x), -35590i, var_3))).a.x, _wgslsmith_mult_u32(u_input.b, 28631u), 1u)), max(select(vec4<u32>(u_input.b, abs(u_input.b), ~4294967295u, 26801u), _wgslsmith_mod_vec4_u32(vec4<u32>(37884u, u_input.b, u_input.b, u_input.b), vec4<u32>(18199u, u_input.b, 0u, 1u)) & firstTrailingBit(vec4<u32>(0u, u_input.b, u_input.b, u_input.b)), any(var_1)), ~(reverseBits(vec4<u32>(4294967295u, u_input.b, u_input.b, 31659u)) << (min(vec4<u32>(u_input.b, u_input.b, 1u, 37989u), vec4<u32>(4294967295u, 83191u, 0u, 48389u)) % vec4<u32>(32u)))));
    var var_4 = max(firstTrailingBit(countOneBits(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(14788i, -2984i, u_input.a.x, var_2.c.x), vec4<i32>(u_input.a.x, u_input.a.x, var_2.d, -1i))))), abs(_wgslsmith_clamp_vec4_i32(abs(-vec4<i32>(u_input.e.x, -63108i, -2147483647i, u_input.c.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -14195i, 43702i, -1609i), -vec4<i32>(13824i, 1267i, 0i, var_2.a.x)), vec4<i32>(-2283i, var_2.c.x, -var_2.a.x, u_input.e.x & var_2.a.x))));
    let var_5 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, 823f, 1000f) + vec3<f32>(var_3.a, 336f, var_2.b.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.a, var_2.b.a, 1087f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.a, var_2.b.a, 285f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-329f, 1000f, 849f), vec3<f32>(var_2.e.a, var_3.a, var_2.e.a)))), var_2.b.a <= _wgslsmith_f_op_f32(-var_3.a))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(603f, var_2.b.a, var_2.b.a)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-168f, 1406f, -211f), vec3<f32>(1429f, var_3.a, 709f)))), true))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.a, _wgslsmith_f_op_f32(sign(-1000f)), func_1(Struct_3(vec3<u32>(u_input.b, 12022u, u_input.b), vec4<bool>(true, var_0, true, true), -16066i, vec3<bool>(true, var_2.b.b, var_0), var_2), Struct_3(vec3<u32>(u_input.b, 0u, u_input.b), vec4<bool>(var_3.b, true, var_0, var_0), 2743i, vec3<bool>(true, var_1.x, true), Struct_2(var_4.zzz, Struct_1(var_3.a, false), vec3<i32>(var_2.a.x, var_2.d, u_input.e.x), 35121i, var_2.e))).e.e.a))), !select(!vec3<bool>(var_3.b, var_2.b.b, var_3.b), vec3<bool>(var_1.x, var_2.e.b, all(vec2<bool>(true, false))), true)));
    global2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zx, _wgslsmith_f_op_f32(step(-615f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b.a))))), u_input.c.x, vec2<u32>(u_input.b, 4294967295u));
}

