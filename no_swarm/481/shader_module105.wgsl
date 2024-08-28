struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<bool> {
    var var_0 = vec3<i32>(-(~u_input.a), _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(-vec3<i32>(39411i, u_input.a, -15943i), _wgslsmith_clamp_vec3_i32(vec3<i32>(13973i, u_input.b, 0i), vec3<i32>(-2147483647i, u_input.a, 21695i), vec3<i32>(u_input.b, -2147483647i, u_input.b))), _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-55498i, u_input.b, u_input.a)), ~countOneBits(vec3<i32>(64814i, u_input.b, 1i)))), ~_wgslsmith_div_i32(-1i, 1i));
    let var_1 = _wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1577f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(994f * 2139f), _wgslsmith_f_op_f32(f32(-1f) * -592f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(1727f, _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(936f, var_1) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 788f)))))));
    var var_3 = Struct_1(true, var_2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 1025f, var_1) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1, var_2.x, var_1)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, 1000f, -975f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, var_2.x, var_2.x)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(301f, var_2.x, var_2.x), vec3<f32>(var_2.x, var_2.x, 639f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_2.x, -307f)))));
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, var_2.x, var_3.c.x, var_1), vec4<f32>(var_3.b, var_3.c.x, var_1, -1140f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 1116f, var_1, var_3.c.x))), vec4<f32>(_wgslsmith_f_op_f32(round(659f)), _wgslsmith_f_op_f32(step(var_3.b, 543f)), var_3.c.x, var_3.c.x), select(vec4<bool>(var_3.a, var_3.a, var_3.a, var_3.a), !vec4<bool>(true, var_3.a, var_3.a, false), any(vec3<bool>(var_3.a, var_3.a, var_3.a))))))), Struct_1(true, var_3.c.x, vec3<f32>(-965f, _wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1733f, 1000f)) * _wgslsmith_f_op_f32(ceil(-1000f))))));
    return vec2<bool>(var_4.b.a, all(!select(vec3<bool>(var_3.a, var_4.b.a, var_4.b.a), select(vec3<bool>(var_4.b.a, true, false), vec3<bool>(true, true, true), var_3.a), any(vec4<bool>(var_4.b.a, true, false, true)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = !func_3();
    var_0 = vec2<bool>(select(u_input.b <= (-u_input.a | _wgslsmith_add_i32(u_input.a, -2147483647i)), !(!arg_1.a), false), false);
    var_0 = vec2<bool>(!arg_1.a & false, true);
    let var_1 = arg_1;
    var var_2 = Struct_1(true, -757f, arg_1.c);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(arg_1.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b))))), -253f));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>) -> vec3<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(1072f - _wgslsmith_f_op_vec2_f32(func_2(arg_0.x, Struct_1(true, arg_0.x, vec3<f32>(arg_0.x, 781f, -276f)))).x), Struct_1(!all(vec3<bool>(true, false, true)), 676f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 603f, 1000f)))))).x, _wgslsmith_f_op_f32(-1007f * arg_0.x), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(sign(arg_0.x))), arg_0.x)));
    let var_1 = Struct_1(true, var_0.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1117f), _wgslsmith_f_op_f32(-625f * -1129f))))));
    var var_2 = u_input.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c, _wgslsmith_div_u32(u_input.d.x, u_input.d.x), u_input.c), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.d, u_input.d, vec3<u32>(59256u, u_input.d.x, 85341u)), u_input.d), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 78234u, 0u), vec3<u32>(u_input.c, u_input.d.x, u_input.d.x)), vec3<u32>(u_input.d.x, 4294967295u, 2348u)))) % 32u);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(-597f, arg_0.x))))))));
    var var_4 = 1153f;
    return (~countOneBits(u_input.d) ^ (~_wgslsmith_div_vec3_u32(u_input.d, u_input.d) & vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, u_input.c, 1u), vec4<u32>(1u, u_input.d.x, u_input.d.x, 70528u)), 1u, ~u_input.d.x))) & (select(abs(vec3<u32>(1u, 1u, 37907u)) << (select(vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u), vec3<u32>(u_input.c, u_input.d.x, 1u), var_1.a) % vec3<u32>(32u)), vec3<u32>(6163u, ~u_input.c, _wgslsmith_clamp_u32(u_input.c, u_input.d.x, u_input.d.x)), true) ^ ~_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(1u, u_input.c, 4294967295u) & vec3<u32>(u_input.d.x, 17751u, 4294967295u)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~select(u_input.d.x, u_input.d.x, arg_0.a), ~18816u, 80945u), u_input.d), min(~u_input.d, _wgslsmith_mult_vec3_u32(~(~u_input.d), func_4(_wgslsmith_f_op_vec2_f32(func_2(491f, arg_0)), -vec4<i32>(arg_3.x, -31883i, -1i, -2147483647i)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(-600f, arg_0.c.x), arg_1, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3147f * -355f) - _wgslsmith_f_op_f32(round(924f)))))), arg_0);
    let var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2)) + _wgslsmith_f_op_f32(var_2.c.x * 2034f))), _wgslsmith_f_op_f32(-638f - _wgslsmith_f_op_vec2_f32(func_2(-395f, var_1.b)).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -685f) * _wgslsmith_f_op_f32(-var_2.b))));
    var var_4 = arg_0;
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -361f) * _wgslsmith_f_op_f32(629f * var_2.c.x)), 1351f, _wgslsmith_f_op_f32(ceil(arg_0.c.x)), arg_1)), var_1.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = ~(-abs(~vec3<i32>(u_input.b, -1801i, u_input.a))) & vec3<i32>(-u_input.a, firstLeadingBit(_wgslsmith_add_i32(1i, firstLeadingBit(u_input.a))), max(firstTrailingBit(-49477i), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(55524i, u_input.a), vec2<i32>(u_input.a, u_input.a)), u_input.a)));
    var var_1 = -u_input.b >> (_wgslsmith_clamp_u32(~abs(u_input.d.x), abs(_wgslsmith_clamp_u32(u_input.c, u_input.d.x, firstLeadingBit(4294967295u))), u_input.c) % 32u);
    var var_2 = min(_wgslsmith_sub_vec3_i32(-vec3<i32>(-44280i, var_0.x, u_input.b), var_0) | -countOneBits(var_0), (vec3<i32>(26673i, max(u_input.a, var_0.x), countOneBits(0i)) ^ vec3<i32>(~u_input.a, countOneBits(u_input.b), u_input.b)) << (abs(vec3<u32>(reverseBits(0u), u_input.c, ~u_input.d.x)) % vec3<u32>(32u)));
    var var_3 = Struct_1(any(!select(vec2<bool>(arg_1.b.a, arg_0.b.a), select(vec2<bool>(arg_1.b.a, false), vec2<bool>(arg_1.b.a, arg_1.b.a), arg_0.b.a), false)), arg_0.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_1.b.c, _wgslsmith_f_op_vec3_f32(-arg_0.b.c)))));
    return func_1(func_1(func_1(func_1(Struct_1(false, 252f, vec3<f32>(534f, -856f, arg_1.b.c.x)), arg_1.b.c.x, _wgslsmith_f_op_f32(-1372f * 1081f), vec2<i32>(1i, var_0.x) ^ var_0.yx).b, var_3.c.x, _wgslsmith_f_op_f32(-var_3.c.x), vec2<i32>(var_2.x, var_0.x) & ~vec2<i32>(1i, 0i)).b, 554f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1182f, _wgslsmith_f_op_f32(abs(arg_1.b.c.x))))), vec2<i32>(var_2.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d.zx) % 32u), var_0.x)).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.b)) - _wgslsmith_f_op_f32(trunc(arg_1.b.b))), 1000f, _wgslsmith_add_vec2_i32(var_0.yy, countOneBits(var_2.yx)));
}

fn func_6(arg_0: u32, arg_1: Struct_2) -> bool {
    let var_0 = firstLeadingBit(min(vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.b), vec3<i32>(-2147483647i, u_input.a, u_input.b)) ^ -1i, _wgslsmith_div_i32(i32(-1i) * -1i, firstTrailingBit(u_input.a))), -abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(10925i, 2147483647i, 17588i), vec3<i32>(u_input.a, -1i, -15482i), vec3<i32>(u_input.b, 25869i, u_input.b)))));
    var var_1 = _wgslsmith_f_op_f32(325f + _wgslsmith_f_op_f32(min(891f, 241f)));
    let var_2 = func_5(Struct_2(arg_1.a, Struct_1(!any(vec4<bool>(true, true, true, arg_1.b.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.b.c.x, 505f)), _wgslsmith_f_op_f32(select(arg_1.b.c.x, arg_1.a.x, true))), _wgslsmith_f_op_vec3_f32(arg_1.b.c - arg_1.b.c))), func_1(func_1(func_5(Struct_2(arg_1.a, Struct_1(false, arg_1.a.x, vec3<f32>(-2151f, 1451f, -1426f))), func_5(Struct_2(arg_1.a, arg_1.b), arg_1)).b, _wgslsmith_f_op_f32(arg_1.a.x - 305f), _wgslsmith_f_op_f32(f32(-1f) * -443f), -(~vec2<i32>(var_0.x, -1i))).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -958f))) + arg_1.b.c.x), -669f, reverseBits(var_0.yz)));
    let var_3 = func_1(func_1(func_1(func_1(Struct_1(false, -1000f, var_2.a.wzx), -1000f, -1000f, reverseBits(vec2<i32>(u_input.b, 60242i))).b, 1286f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(arg_1.a.x))), var_0.yy).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_2.b.c.x)), arg_1.b.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-683f + 894f))), var_0.zz).b, _wgslsmith_f_op_f32(f32(-1f) * -516f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), vec2<i32>(var_0.x, 5436i)).b;
    var_1 = _wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b.c.x))))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b)), _wgslsmith_f_op_f32(var_3.c.x - _wgslsmith_f_op_f32(2026f - _wgslsmith_f_op_f32(var_3.b + arg_1.a.x))))) <= var_3.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!vec4<bool>(false, true & (u_input.d.x >= u_input.d.x), (u_input.a < u_input.b) != true, true));
    let var_1 = vec4<bool>(func_6(u_input.c, func_5(Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(242f, -429f, 1195f, 1678f))), Struct_1(false, -873f, vec3<f32>(1027f, 668f, 176f))), func_1(Struct_1(false, -1293f, vec3<f32>(278f, -838f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1028f), 199f, ~vec2<i32>(u_input.b, u_input.b)))), false & !(all(vec3<bool>(false, true, true)) | all(vec3<bool>(true, false, true))), false, true);
    var var_2 = Struct_1(!all(select(select(var_1, var_1, vec4<bool>(false, false, false, false)), select(vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(true, true, var_1.x, false), false), all(vec4<bool>(true, var_1.x, true, false)))), 1208f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-269f, -644f) + _wgslsmith_f_op_f32(max(251f, -1188f)))), _wgslsmith_f_op_f32(-2468f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(155f - 1255f))), -681f));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-579f)), -1000f);
    var_0 = var_1.x;
    var_0 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(u_input.a, ~_wgslsmith_sub_i32(u_input.a, u_input.b)) ^ _wgslsmith_add_i32(~_wgslsmith_div_i32(5582i, u_input.a), -2147483647i));
}

