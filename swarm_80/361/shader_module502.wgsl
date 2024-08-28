struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<bool>) -> u32 {
    var var_0 = Struct_1(~(2147483647i ^ ~u_input.b) >> (60336u % 32u), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1405f, arg_0, 1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1000f, arg_0) * vec3<f32>(470f, -608f, -1717f)))))), arg_2.x, ~arg_1.x);
    let var_1 = Struct_1(reverseBits(firstTrailingBit(-(var_0.a ^ var_0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1971f, arg_0, arg_0)))) - vec3<f32>(-457f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.x)) + _wgslsmith_f_op_f32(1104f - var_0.b.x)))), var_0.c, ~(~_wgslsmith_clamp_u32(~var_0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 82970u, 0u), vec3<u32>(arg_1.x, 29146u, 57220u)), arg_1.x)));
    var var_2 = var_1.b.yy;
    var_0 = Struct_1(-(-abs(var_0.a) & ~firstLeadingBit(u_input.b)), _wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_0.b.x, -712f)), _wgslsmith_f_op_vec3_f32(-var_0.b), arg_2.yyz)))), all(!select(arg_2, select(arg_2, arg_2, var_0.c), vec4<bool>(arg_2.x, arg_2.x, var_1.c, arg_2.x))), 46597u);
    var_0 = Struct_1(_wgslsmith_mult_i32(u_input.a, _wgslsmith_add_i32(abs(0i), 2147483647i)), var_0.b, true, 1u);
    return reverseBits(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.d, arg_1.x), ~vec3<u32>(var_0.d, var_1.d, arg_1.x)), 1u), ~_wgslsmith_mult_u32(var_1.d, var_0.d)));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: bool) -> Struct_1 {
    let var_0 = u_input.b;
    let var_1 = Struct_1(1i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 + 176f), -521f))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_0)), arg_0))), true, ~arg_1.x);
    let var_2 = Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-250f, _wgslsmith_f_op_f32(abs(arg_0)), -1722f)))), true, arg_1.x);
    var var_3 = Struct_1(-5101i, var_2.b, all(!(!(!vec2<bool>(var_2.c, arg_2)))), ~_wgslsmith_sub_u32(0u, ~func_3(var_1.b.x, arg_1.yx, vec4<bool>(false, arg_2, true, true))));
    var var_4 = vec2<bool>(!all(vec3<bool>(all(vec3<bool>(false, var_2.c, var_1.c)), var_1.c, any(vec4<bool>(false, arg_2, true, var_3.c)))), select(!(!var_3.c), var_1.c, true));
    return Struct_1(abs(reverseBits(u_input.b)), var_1.b, true, 1u);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(~2147483647i, arg_0), 14373i);
    var var_1 = _wgslsmith_sub_i32(u_input.b, -28067i);
    var_0 = -arg_0;
    let var_2 = ((_wgslsmith_mult_vec4_i32(-vec4<i32>(-17307i, -65041i, arg_0, arg_1.a), vec4<i32>(11211i, arg_0, arg_1.a, -48878i)) | abs(vec4<i32>(-9664i, u_input.a, -1i, -1i) ^ vec4<i32>(37203i, -1i, arg_1.a, arg_0))) >> (~(vec4<u32>(1u, 0u, 15600u, arg_1.d) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(55303u, 67075u, arg_1.d, arg_1.d), vec4<u32>(arg_1.d, 25001u, 4294967295u, 0u))) % vec4<u32>(32u))) ^ (_wgslsmith_add_vec4_i32(min(vec4<i32>(arg_1.a, arg_1.a, arg_1.a, u_input.b), vec4<i32>(u_input.a, 2147483647i, arg_1.a, -40565i)) ^ (vec4<i32>(2147483647i, 1i, 1i, 2147483647i) ^ vec4<i32>(-13226i, arg_0, arg_0, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, -1i, -2147483647i, -36574i), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, arg_0, 37966i, 9920i), vec4<i32>(arg_1.a, 2990i, arg_1.a, 42195i)), vec4<i32>(u_input.b, -74598i, 1i, u_input.b))) >> (vec4<u32>(44712u, abs(arg_2.x) >> (arg_1.d % 32u), 1u, firstTrailingBit(0u)) % vec4<u32>(32u)));
    let var_3 = func_2(772f, ~((abs(vec4<u32>(arg_2.x, 4294967295u, 18754u, arg_1.d)) & ~vec4<u32>(2002u, arg_1.d, arg_2.x, arg_1.d)) | vec4<u32>(func_2(744f, vec4<u32>(53895u, 88877u, arg_1.d, arg_1.d), arg_1.c).d, arg_2.x, 1u, arg_2.x)), false & select(arg_1.c, func_2(_wgslsmith_f_op_f32(339f * arg_1.b.x), vec4<u32>(arg_1.d, 43990u, 62259u, arg_1.d), any(vec4<bool>(arg_1.c, arg_1.c, arg_1.c, arg_1.c))).c, true));
    return func_2(_wgslsmith_f_op_f32(step(arg_1.b.x, -984f)), firstTrailingBit(~firstLeadingBit(~vec4<u32>(49630u, var_3.d, 73472u, 0u))), false);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = select(vec2<bool>(_wgslsmith_div_f32(752f, _wgslsmith_f_op_f32(var_0.b.x + 1134f)) <= _wgslsmith_f_op_f32(-var_0.b.x), true), vec2<bool>(!(!arg_0.c), arg_0.c), vec2<bool>(~(~38853u) <= var_0.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.x - arg_0.b.x))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f) + 1019f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1160f + _wgslsmith_f_op_f32(exp2(arg_0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + -116f))) + _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(-var_0.b.x))));
    var_2 = var_0.b;
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1116f, var_2.x, -305f) * _wgslsmith_f_op_vec3_f32(-var_0.b)) * _wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(-1612f, -1015f, 873f)))), _wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1103f)), -341f, _wgslsmith_f_op_f32(-var_2.x))));
    return func_4(func_4(~(-55691i), Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.b)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1707f, 588f, arg_0.b.x))), arg_0.c, var_0.d), vec2<u32>(_wgslsmith_mult_u32(4294967295u, firstTrailingBit(var_0.d)), arg_0.d)).a, var_0, min(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 26871u, arg_0.d), vec3<u32>(16230u, 106842u, arg_0.d) | vec3<u32>(var_0.d, var_0.d, 28846u)), 0u), vec2<u32>(~4294967295u, var_0.d)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = false;
    let var_1 = vec2<u32>(59745u, _wgslsmith_div_u32(min(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(3930u, 0u), vec2<u32>(29005u, 4294967295u))), 34999u));
    return func_5(func_4(-(~u_input.b) & 0i, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1568f)), vec4<u32>(~var_1.x, _wgslsmith_add_u32(var_1.x, var_1.x), 1u, _wgslsmith_sub_u32(115664u, var_1.x)), all(!vec4<bool>(false, var_0, var_0, false))), vec2<u32>(var_1.x, _wgslsmith_mult_u32(countOneBits(var_1.x), ~var_1.x))));
}

fn func_6(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = select(!(!vec2<bool>(var_0.b.x > -1849f, true)), arg_1.xx, arg_2.c);
    var var_2 = arg_2;
    let var_3 = var_0.d;
    let var_4 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_2.b.x, -410f, false)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_f_op_f32(ceil(var_0.b.x))))), var_2.b.x, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(172f, var_0.b.x, arg_2.b.x, var_2.b.x) - vec4<f32>(1000f, var_0.b.x, 1450f, 2542f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 408f, 792f, arg_2.b.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-990f, var_0.b.x, var_0.b.x, arg_2.b.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(739f, -606f, 1000f, var_2.b.x))))));
    return func_4(var_0.a, Struct_1(~(i32(-1i) * -1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(401f, arg_2.b.x, _wgslsmith_f_op_f32(-var_4.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.b * vec3<f32>(-655f, arg_2.b.x, arg_2.b.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(355f, -794f, arg_2.b.x)))), var_0.c || (_wgslsmith_f_op_f32(var_4.x + var_4.x) == -739f), 2201u), vec2<u32>(4294967295u, countOneBits(_wgslsmith_div_u32(14623u, ~arg_2.d))));
}

fn func_7(arg_0: Struct_1) -> f32 {
    var var_0 = -(_wgslsmith_mult_vec3_i32(select(select(vec3<i32>(u_input.a, arg_0.a, 15180i), vec3<i32>(arg_0.a, 7792i, u_input.b), vec3<bool>(true, arg_0.c, arg_0.c)), firstLeadingBit(vec3<i32>(arg_0.a, u_input.b, -8182i)), vec3<bool>(arg_0.c, false, true)), abs(vec3<i32>(u_input.a, u_input.b, u_input.b))) >> (vec3<u32>(1u, func_1(i32(-1i) * -18793i).d, ~func_3(-1089f, vec2<u32>(30901u, 4294967295u), vec4<bool>(arg_0.c, false, true, arg_0.c))) % vec3<u32>(32u)));
    var_0 = vec3<i32>(-2147483647i, -func_4(abs(u_input.a), func_2(arg_0.b.x, vec4<u32>(4294967295u, 48122u, arg_0.d, 1944u), arg_0.c), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.d, arg_0.d), vec2<u32>(2776u, 5788u))).a, arg_0.a) & vec3<i32>(u_input.b >> (_wgslsmith_sub_u32(~0u, 0u) % 32u), arg_0.a, -(~arg_0.a));
    var_0 = firstLeadingBit(~vec3<i32>(1i, arg_0.a, 2147483647i) >> (vec3<u32>(~func_5(Struct_1(-24309i, vec3<f32>(-425f, -956f, 779f), arg_0.c, 0u)).d, min(arg_0.d, ~49632u), ~(arg_0.d >> (arg_0.d % 32u))) % vec3<u32>(32u)));
    var_0 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, -1i), ~u_input.b), var_0.x), -2147483647i, _wgslsmith_dot_vec3_i32(min(reverseBits(vec3<i32>(34264i, u_input.a, -2147483647i)), vec3<i32>(u_input.b, arg_0.a, var_0.x) >> (vec3<u32>(arg_0.d, 11478u, 4294967295u) % vec3<u32>(32u))), vec3<i32>(57569i, -12691i, u_input.b ^ 0i))) << (~(~(~(~vec3<u32>(7286u, arg_0.d, arg_0.d)))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_mod_i32(-var_0.x, min(_wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(var_0.x, -1i, 33440i, 10293i)), reverseBits(vec4<i32>(arg_0.a, -1i, -27599i, 1i))), u_input.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-525f))), _wgslsmith_f_op_f32(-1f));
    var var_1 = firstTrailingBit(22075u);
    let var_2 = all(!select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)));
    let var_3 = var_2;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_7(func_6(~u_input.a | u_input.a, !vec4<bool>(true, false, true, var_2), func_1(-1i ^ u_input.b), true))));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-103f, 999f)), func_5(Struct_1(32733i, vec3<f32>(-466f, 302f, 984f), true, 15112u)).b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -610f)) * _wgslsmith_f_op_f32(914f * _wgslsmith_f_op_f32(-568f + 550f))))));
    var_1 = min(func_4(abs(min(u_input.a, u_input.b)) & 1i, Struct_1(27292i, vec3<f32>(_wgslsmith_f_op_f32(floor(654f)), _wgslsmith_f_op_f32(f32(-1f) * -1235f), _wgslsmith_f_op_f32(500f + -2304f)), !any(vec2<bool>(false, var_2)), firstLeadingBit(0u)), ~(~(~vec2<u32>(0u, 7188u)))).d, _wgslsmith_dot_vec2_u32(~reverseBits(~vec2<u32>(4294967295u, 4042u)), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(45400u, 1u), 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 52566u, 4294967295u)))));
    var var_4 = true;
    let var_5 = select(!vec4<bool>(any(!vec3<bool>(true, var_2, var_2)), true, false, true), !select(select(select(vec4<bool>(true, var_3, false, var_3), vec4<bool>(var_2, false, var_3, var_3), var_2), !vec4<bool>(var_2, false, var_2, true), !vec4<bool>(var_2, false, var_2, false)), select(!vec4<bool>(true, var_2, var_3, var_2), !vec4<bool>(true, false, true, var_3), !vec4<bool>(false, var_3, false, var_3)), !var_2), !var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_2(_wgslsmith_div_f32(-1489f, -568f), abs(vec4<u32>(0u, 31131u, 84729u, 13769u)), var_3).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -215f) + 562f)))), -1557f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(604f - 1864f), _wgslsmith_f_op_f32(f32(-1f) * -1187f), false)) * _wgslsmith_f_op_f32(-579f + _wgslsmith_f_op_f32(f32(-1f) * -181f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-891f + 1127f))));
}

