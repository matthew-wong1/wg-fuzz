struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-662f, -597f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 650f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-347f + -736f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1831f)), _wgslsmith_f_op_f32(f32(-1f) * -776f)), _wgslsmith_f_op_f32(floor(-1404f)))) * _wgslsmith_div_f32(-550f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1725f + -2455f))))), ~vec4<i32>(~u_input.a, u_input.a, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a, 0i), _wgslsmith_clamp_i32(u_input.a, u_input.a, 2147483647i)), 1i));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), var_0.b) + var_0.a), var_0.b, var_0.c);
    var_1 = Struct_1(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1013f)))))), 1f, ~_wgslsmith_clamp_vec4_i32(-vec4<i32>(-4787i, var_1.c.x, 2147483647i, 2147483647i), vec4<i32>(0i, -2147483647i, u_input.a, var_0.c.x) ^ var_1.c, max(max(vec4<i32>(118476i, u_input.a, var_0.c.x, 0i), vec4<i32>(25853i, u_input.a, var_0.c.x, var_1.c.x)), -var_0.c)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(var_1.a)), _wgslsmith_f_op_f32(abs(var_0.b)), ~(-min(-vec4<i32>(u_input.a, var_0.c.x, var_0.c.x, u_input.a), select(vec4<i32>(var_1.c.x, -2147483647i, 1i, u_input.a), vec4<i32>(25569i, u_input.a, var_0.c.x, var_0.c.x), true))));
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, var_0.a.x), var_1.a) + _wgslsmith_f_op_vec2_f32(-var_1.a)), _wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(-1608f - 371f))), var_1.c)), ~49219i, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(var_1.b, 1265f))), -153f, _wgslsmith_sub_vec4_i32(vec4<i32>(636i, var_0.c.x, u_input.a, 11775i), vec4<i32>(u_input.a, var_1.c.x, u_input.a, var_1.c.x)) | select(var_1.c, vec4<i32>(var_0.c.x, var_1.c.x, var_0.c.x, -18841i), vec4<bool>(false, true, false, true)))));
    return 1512f;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-869f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(226f - -273f))))));
    var var_1 = Struct_1(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -1909f) - 1666f), abs(~(~firstLeadingBit(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)))));
    let var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(~(~1670u), 91971u, ~1u), abs(1u)), ~(~reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 25639u), vec2<u32>(0u, 7032u), vec2<u32>(4294967295u, 4294967295u)))));
    var var_3 = vec4<f32>(-2142f, -1124f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_1.a.x, var_0.x, true)))), -225f);
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_3.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_3.xx, var_1.a) - _wgslsmith_f_op_vec2_f32(var_1.a - var_0)))), _wgslsmith_div_f32(1834f, _wgslsmith_f_op_f32(func_3())), vec4<i32>(-1i) * -abs(-vec4<i32>(u_input.a, -2147483647i, 2147483647i, u_input.a)));
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(var_0 - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(var_1.c, var_1.c), countOneBits(var_1.c)))), u_input.a, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(var_3.ww)))), _wgslsmith_f_op_f32(-var_0.x), vec4<i32>(firstLeadingBit(u_input.a), -16356i, 1i, ~var_1.c.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = func_2().c.a;
    let var_1 = select(vec4<bool>(true, !arg_2, (true || (-387f >= arg_0.a.a.b)) && false, false), select(!vec4<bool>(true, select(arg_2, arg_2, true), false, arg_2), !vec4<bool>(false, any(vec3<bool>(arg_2, true, true)), true, true), !select(select(vec4<bool>(arg_2, true, true, arg_2), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, arg_2, true, true), vec4<bool>(false, true, true, arg_2), vec4<bool>(false, false, arg_2, false)), arg_2)), vec4<bool>(arg_2, abs(1u) == ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 17859u, 4752u), vec3<u32>(1u, 4294967295u, 17765u)), false, false));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-434f, arg_0.c.a.b)) - _wgslsmith_f_op_vec2_f32(round(arg_0.c.a.a))), arg_3.wx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(trunc(-642f))), arg_0.a.a.b), vec4<i32>(arg_1.a.c.x, 0i, -_wgslsmith_dot_vec3_i32(vec3<i32>(22343i, arg_1.a.c.x, 4324i) | vec3<i32>(u_input.a, arg_0.c.a.c.x, arg_0.a.a.c.x), _wgslsmith_sub_vec3_i32(arg_1.a.c.yxy, var_0.c.wwz)), firstLeadingBit(51762i)));
    var var_2 = vec3<u32>(_wgslsmith_sub_u32(reverseBits(firstTrailingBit(min(1u, 37672u))), abs(select(1u, 0u, !var_1.x))), 1u, max(~9123u, _wgslsmith_dot_vec4_u32(vec4<u32>(~7342u, 1u, 22223u, ~0u), vec4<u32>(~1u, ~90554u, ~1u, 60558u))));
    var_2 = vec3<u32>(var_2.x, ~(~var_2.x), var_2.x);
    return arg_0.c;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool) -> vec4<f32> {
    var var_0 = Struct_3(func_4(func_2(), Struct_2(arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b * -164f) + _wgslsmith_div_f32(arg_1.x, arg_1.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1301f, arg_1.x, arg_1.x, arg_0.a.a.x), vec4<f32>(321f, 442f, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.b, arg_0.a.a.x, arg_0.a.b, arg_0.a.b))))))), arg_0.a.c.x, func_4(Struct_3(func_2().c, ~(i32(-1i) * -2147483647i), arg_0), arg_0, true, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1090f)), arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), arg_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a.b + 750f))))));
    let var_1 = vec2<u32>(_wgslsmith_add_u32(select(~1u, 1u, true), ~_wgslsmith_clamp_u32(0u, 1u, 0u)), 1u) | ~(~firstLeadingBit(vec2<u32>(4294967295u, 1u)));
    var_0 = Struct_3(func_4(func_2(), Struct_2(Struct_1(arg_1.zx, 975f, -vec4<i32>(u_input.a, -2147483647i, -33205i, 1i))), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b, var_0.c.a.b, arg_1.x, 643f) - vec4<f32>(arg_0.a.a.x, 634f, 1894f, -2093f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-530f, 518f, 1740f, arg_0.a.a.x)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.b, arg_0.a.b, -983f, 380f) + vec4<f32>(-645f, var_0.a.a.a.x, arg_1.x, var_0.a.a.a.x)))))), (u_input.a | (i32(-1i) * -7264i)) ^ func_4(Struct_3(Struct_2(var_0.a.a), var_0.c.a.c.x, arg_0), Struct_2(arg_0.a), _wgslsmith_f_op_f32(arg_1.x - arg_0.a.a.x) == _wgslsmith_f_op_f32(floor(-313f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-209f, var_0.a.a.b, -1171f, -303f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.a.a.x, var_0.a.a.b, arg_0.a.a.x, 1000f), vec4<f32>(arg_1.x, arg_0.a.a.x, arg_0.a.a.x, -1744f), vec4<bool>(true, arg_2, arg_2, arg_2))))).a.c.x, Struct_2(Struct_1(var_0.c.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.a.x * 1769f)), arg_0.a.c)));
    let var_2 = var_1;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -361f, arg_0.a.a.x, var_0.a.a.b)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.b, arg_0.a.b, arg_1.x, var_0.a.a.a.x), vec4<f32>(256f, arg_1.x, arg_0.a.b, -1443f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.a.x, 444f, arg_1.x, arg_0.a.b))))), select(vec4<bool>(-1i > u_input.a, any(vec3<bool>(true, arg_2, arg_2)), false, arg_2), select(select(vec4<bool>(true, true, arg_2, arg_2), vec4<bool>(arg_2, true, true, false), arg_2), select(vec4<bool>(true, false, arg_2, arg_2), vec4<bool>(false, arg_2, arg_2, true), vec4<bool>(false, arg_2, false, arg_2)), select(vec4<bool>(false, true, true, true), vec4<bool>(arg_2, arg_2, true, false), true)), true))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2531f, 1020f, 1973f, -1242f))) + vec4<f32>(arg_1.x, -304f, 1f, 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.a.b, arg_1.x, arg_0.a.b)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(911f, 1000f, -733f, var_0.a.a.b))), select(vec4<bool>(true, false, true, arg_2), vec4<bool>(true, false, false, arg_2), true))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3) -> f32 {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_1.c.a.a * vec2<f32>(-482f, -101f)), _wgslsmith_f_op_vec2_f32(-arg_1.a.a.a))), _wgslsmith_f_op_f32(f32(-1f) * -395f), max(arg_1.c.a.c, vec4<i32>(2147483647i, 0i, -2147483647i, -9061i)))), 33817i, Struct_2(func_2().c.a));
    var var_1 = !all(!vec3<bool>(true, true, any(vec3<bool>(true, false, true))));
    var var_2 = select(vec4<bool>(!select(any(vec3<bool>(true, true, false)), false, all(vec3<bool>(false, true, true))), false, any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, false, false), false)), !all(vec4<bool>(false, true, true, false))), select(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(false, true, true, false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec3<bool>(true, true, true)), false, false, select(true, false, false))));
    var var_3 = all(!select(vec3<bool>(true, var_2.x, true), vec3<bool>(true, true, var_0.b >= -10936i), !(!var_2.xxw)));
    var_3 = var_2.x;
    return _wgslsmith_f_op_f32(1000f + func_4(Struct_3(func_2().c, 13944i, Struct_2(var_0.c.a)), arg_1.c, !any(select(vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(var_2.x, true, false, false), false)), _wgslsmith_f_op_vec4_f32(-arg_0)).a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>((u_input.a <= 0i) && all(vec2<bool>(false, true)), true, true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(907f, 1000f) - vec2<f32>(-1757f, -1000f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1460f, 876f), vec2<f32>(493f, -167f), true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(vec2<f32>(622f, -690f), -1054f, vec4<i32>(63335i, u_input.a, -35029i, 26192i))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-512f, -1000f, -705f), vec3<f32>(414f, 1000f, 392f), vec3<bool>(var_0.x, var_0.x, false))), true)), Struct_3(func_4(Struct_3(Struct_2(Struct_1(vec2<f32>(-320f, 703f), -1000f, vec4<i32>(u_input.a, u_input.a, -23130i, 76709i))), 0i, Struct_2(Struct_1(vec2<f32>(-1000f, 553f), -2031f, vec4<i32>(-12327i, u_input.a, u_input.a, -75017i)))), Struct_2(Struct_1(vec2<f32>(476f, 1773f), -847f, vec4<i32>(14093i, -2147483647i, u_input.a, u_input.a))), true, vec4<f32>(-1000f, 302f, -693f, -671f)), -2147483647i, Struct_2(Struct_1(vec2<f32>(735f, -147f), 1166f, vec4<i32>(0i, u_input.a, u_input.a, u_input.a))))))), -(~reverseBits(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    var_1 = func_2().a.a;
    let var_2 = min(_wgslsmith_mult_i32(select(abs(_wgslsmith_add_i32(var_1.c.x, u_input.a)), var_1.c.x, !(var_0.x | false)), 14078i), ~u_input.a);
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(Struct_1(var_1.a, -1447f, vec4<i32>(var_1.c.x, -5679i, 23912i, -5712i))), u_input.a, Struct_2(Struct_1(vec2<f32>(-826f, -343f), var_1.b, vec4<i32>(var_2, var_2, -1i, -1i)))), Struct_2(Struct_1(vec2<f32>(var_1.b, -335f), var_1.a.x, vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a))), any(var_0.xx), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b, -119f, var_1.a.x, var_1.a.x)))).a.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - -2559f))) + var_1.a.x), vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i ^ var_2, ~u_input.a, var_2), _wgslsmith_sub_vec3_i32(var_1.c.xyx, var_1.c.wyy) >> (~vec3<u32>(4294967295u, 52976u, 54462u) % vec3<u32>(32u))), 1948i, abs(~(~1i))));
    var_1 = func_2().a.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(873f, -354f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.b)), _wgslsmith_f_op_f32(-var_1.b)))), 124f), ~select(vec3<u32>(1u, countOneBits(17434u), 65630u), abs(vec3<u32>(0u, 1u, 56768u)), !(-1266f >= var_1.a.x)), var_1.c, var_1.b, _wgslsmith_mult_i32(-2147483647i, func_2().a.a.c.x) << (~67036u % 32u));
}

