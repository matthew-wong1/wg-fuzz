struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(352f, 1093f, 524f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2386f, -1466f, -809f) + vec3<f32>(-1000f, 345f, 1000f))))), vec3<f32>(383f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(881f - 1124f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(round(184f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(252f, 466f)) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -698f))), !vec3<bool>(select(false, true, false) & any(vec2<bool>(false, true)), true, true)));
    var var_1 = ((~max(u_input.c.x, 1i) >> (_wgslsmith_add_u32(~u_input.b.x, 4294967295u << (u_input.d % 32u)) % 32u)) >> (_wgslsmith_add_u32(29237u, countOneBits(4294967295u)) % 32u)) >> (0u % 32u);
    let var_2 = ~countOneBits(min(54112u, u_input.b.x)) ^ ~u_input.b.x;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -551f)) - var_0.x)), var_0.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-386f, _wgslsmith_div_f32(var_0.x, var_0.x))), -1285f, true))));
    var var_3 = Struct_2(var_0.x, Struct_1(1u, _wgslsmith_sub_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, var_2, 4294967295u, 4233u)), ~vec4<u32>(u_input.b.x, 1u, u_input.d, 1u) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(var_2, 49901u, var_2, u_input.d), vec4<u32>(u_input.d, 4294967295u, 8377u, var_2)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(648f, var_0.x) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(var_0.x - -754f))), !vec3<bool>(all(vec3<bool>(true, false, true)), true, true));
    return u_input.c;
}

fn func_2() -> vec3<i32> {
    let var_0 = 1i;
    var var_1 = Struct_1(max(6534u, 40176u), abs(abs(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d, 47305u, 35641u, 1u), ~vec4<u32>(25633u, u_input.b.x, u_input.b.x, 18886u)))));
    let var_2 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(all(vec2<bool>(true, true)), false, true, true), vec4<bool>(true, 70516u >= var_1.b.x, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true))), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, all(vec4<bool>(true, false, true, true)) || false));
    var_1 = Struct_1((firstTrailingBit(~u_input.b.x) & var_1.a) ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 41901u), _wgslsmith_sub_vec2_u32(u_input.b.yx, u_input.b.yy)) << (32571u % 32u)), var_1.b);
    var var_3 = ~u_input.c.x;
    return (_wgslsmith_mult_vec3_i32(func_3(), u_input.c) >> (~vec3<u32>(min(u_input.d, u_input.d), ~var_1.a, 5756u) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 22081u, 1u), vec3<u32>(u_input.b.x, 41583u, 70828u)) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_div_f32(arg_2.c.x, -176f), Struct_1(47869u, firstLeadingBit(vec4<u32>(~4294967295u, 0u, 63731u, 51268u))), arg_2.c, vec3<bool>(true, ~u_input.e == 1i, any(arg_2.d)));
    let var_1 = arg_2;
    let var_2 = Struct_2(arg_2.c.x, arg_2.b, arg_2.c, select(!(!arg_2.d), var_1.d, !(var_1.d.x & (23451i >= arg_0.x))));
    var var_3 = var_2;
    let var_4 = arg_0;
    return 702f;
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(func_4(-func_2(), select(vec4<bool>(arg_1, arg_0, arg_1, true), select(vec4<bool>(false, !arg_0, false, any(vec3<bool>(true, arg_1, false))), !(!vec4<bool>(arg_1, true, false, true)), !arg_1), select(select(select(vec4<bool>(false, arg_0, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, arg_1, arg_0, false)), select(vec4<bool>(arg_1, true, false, arg_0), vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), arg_1), select(!vec4<bool>(arg_0, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1), true), select(vec4<bool>(arg_1, true, false, false), vec4<bool>(true, false, arg_1, arg_0), !vec4<bool>(arg_1, arg_1, arg_1, true)))), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1137f - -1777f)))), Struct_1(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x), vec4<u32>(0u, 1u, 37802u, 31624u))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, 0u, u_input.d), vec4<u32>(1350u, u_input.b.x, u_input.d, u_input.d), vec4<u32>(10955u, 4294967295u, u_input.b.x, u_input.d))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(825f, -1218f) * _wgslsmith_f_op_f32(step(533f, 2466f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1914f, -1000f))), !vec3<bool>(!arg_0, true, true)), !(!vec2<bool>(false, arg_0))));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.c, !vec4<bool>(arg_1, arg_1, arg_1, arg_0), Struct_2(676f, Struct_1(u_input.d, vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.d)), vec2<f32>(-124f, 1000f), vec3<bool>(arg_1, arg_0, true)), vec2<bool>(true, true)))), 104f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(~vec3<i32>(1i, -7668i, u_input.a), !vec4<bool>(arg_1, arg_0, arg_0, arg_1), Struct_2(683f, Struct_1(u_input.b.x, vec4<u32>(u_input.d, u_input.b.x, 4294967295u, u_input.d)), vec2<f32>(883f, -1708f), vec3<bool>(arg_1, arg_1, arg_1)), vec2<bool>(true, true))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-229f - 613f)))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-489f + 256f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-817f)), _wgslsmith_div_f32(-417f, -883f)))), _wgslsmith_f_op_f32(min(1188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1285f))))))));
    let var_2 = u_input.c;
    var var_3 = Struct_1(42066u, ~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x, 4294967295u), 0u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4564u, 41469u, 1u), vec4<u32>(u_input.d, 34672u, u_input.b.x, 0u)), u_input.d), _wgslsmith_dot_vec4_u32(vec4<u32>(25471u, 50112u, u_input.b.x, 0u) & vec4<u32>(u_input.d, 207u, 36059u, 38783u), vec4<u32>(367u, 0u, u_input.b.x, u_input.d)), 0u));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(590f, var_1.x, -115f, var_1.x) + vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<f32>(356f, 679f, 945f, 642f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.x, var_1.x, -940f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1213f, var_1.x, var_1.x, -134f) - vec4<f32>(-395f, 252f, var_1.x, var_1.x)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -276f, 944f, -1000f), vec4<f32>(var_1.x, var_1.x, -1638f, var_1.x), false))) + vec4<f32>(_wgslsmith_f_op_f32(var_1.x - -636f), -899f, _wgslsmith_f_op_f32(func_4(var_2, vec4<bool>(arg_1, true, false, arg_0), Struct_2(var_1.x, Struct_1(11361u, var_3.b), vec2<f32>(var_1.x, var_1.x), vec3<bool>(false, arg_1, arg_0)), vec2<bool>(arg_1, arg_0))), _wgslsmith_div_f32(var_1.x, 1405f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-530f, _wgslsmith_f_op_f32(abs(-998f)), var_1.x, _wgslsmith_f_op_f32(func_4(vec3<i32>(51925i, -1i, -1i), vec4<bool>(false, false, arg_1, true), Struct_2(190f, Struct_1(u_input.b.x, vec4<u32>(var_3.a, 1u, 0u, var_3.b.x)), var_1.zz, vec3<bool>(arg_0, true, arg_1)), vec2<bool>(false, true))))))));
    return Struct_2(var_4.x, Struct_1(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(~u_input.b.x, 1u)), var_3.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_4.ww))))), !select(select(!vec3<bool>(arg_1, true, arg_0), vec3<bool>(true, true, true), !vec3<bool>(arg_0, false, true)), vec3<bool>(var_3.a > var_3.a, !arg_0, true), false));
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    let var_0 = -vec2<i32>(reverseBits(u_input.a), 0i) & ~u_input.c.xz;
    let var_1 = func_1(_wgslsmith_add_u32(func_1(true, false).b.a, 20735u) != arg_1, arg_0.d.x).b;
    let var_2 = ~var_1.b;
    var var_3 = u_input.b.x;
    var var_4 = reverseBits(func_3().x);
    return Struct_2(arg_0.a, Struct_1(countOneBits(~var_2.x << (1u % 32u)), abs(firstLeadingBit(~vec4<u32>(4412u, u_input.b.x, u_input.d, 1u)))), vec2<f32>(_wgslsmith_div_f32(-132f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1211f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a + 851f), arg_0.c.x, -157f > arg_0.c.x)))), arg_0.d);
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_mod_i32(u_input.a, u_input.c.x);
    var var_1 = func_1(true, true != arg_1.d.x).b;
    let var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(var_0), 45388i), vec2<i32>(~(~(-6682i)), arg_0) ^ vec2<i32>(1i ^ u_input.e, _wgslsmith_dot_vec3_i32(min(u_input.c, u_input.c), _wgslsmith_mod_vec3_i32(u_input.c, u_input.c))), abs(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, u_input.e), _wgslsmith_div_vec2_i32(u_input.c.yy, u_input.c.yz), _wgslsmith_sub_vec2_i32(vec2<i32>(27300i, var_0), u_input.c.yx)), -vec2<i32>(var_0, 2147483647i))));
    var_1 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_add_u32(reverseBits(53730u | u_input.d), ~(~4294967295u)), 4294967295u), countOneBits(var_1.b) << (~arg_1.b.b % vec4<u32>(32u)));
    var var_3 = (select(_wgslsmith_dot_vec3_u32(~var_1.b.wyy, var_1.b.wyz), 4294967295u, 693f < arg_1.c.x) >> (27466u % 32u)) >> (37815u % 32u);
    return func_5(Struct_2(arg_1.c.x, Struct_1(4294967295u, _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b.a, var_1.b.x, 1u, 15503u), vec4<u32>(4294967295u, 8964u, 99393u, arg_1.b.b.x))), arg_1.c, vec3<bool>(all(select(vec4<bool>(arg_1.d.x, true, true, arg_1.d.x), vec4<bool>(arg_1.d.x, false, arg_1.d.x, false), vec4<bool>(arg_1.d.x, false, arg_1.d.x, arg_1.d.x))), true, arg_1.d.x)), ~702u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(u_input.a, func_5(func_1(!(u_input.d > u_input.d), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))), 43572u));
    var_0 = Struct_2(var_0.c.x, func_1(u_input.a < u_input.e, true).b, var_0.c, func_5(func_6(_wgslsmith_clamp_i32(i32(-1i) * -65024i, _wgslsmith_mod_i32(u_input.a, 1i), -49094i << (u_input.b.x % 32u)), Struct_2(-1610f, Struct_1(u_input.d, var_0.b.b), vec2<f32>(var_0.c.x, 519f), vec3<bool>(var_0.d.x, true, false))), ((var_0.b.a << (51004u % 32u)) >> ((54805u << (1u % 32u)) % 32u)) << (0u % 32u)).d);
    let var_1 = ~4294967295u;
    var_0 = func_1(var_0.d.x, !func_6(1i, func_1(false, var_0.d.x)).d.x & any(var_0.d.zx));
    var var_2 = var_0.b;
    let var_3 = var_0.b;
    let var_4 = var_0.b;
    let var_5 = Struct_2(1f, func_1(any(vec2<bool>(var_0.d.x, 1i <= u_input.c.x)), true).b, var_0.c, func_6(u_input.a, func_5(func_6(37263i, Struct_2(var_0.a, var_0.b, vec2<f32>(var_0.a, 1020f), var_0.d)), select(33100u, ~u_input.b.x, false | var_0.d.x))).d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, func_2().x));
}

