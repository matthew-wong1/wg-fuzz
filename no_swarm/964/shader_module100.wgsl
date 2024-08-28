struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> bool {
    let var_0 = Struct_1(countOneBits(~u_input.a.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(774f, 311f, 1227f, -1041f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-193f, 343f, 783f, -874f))))))));
    let var_1 = vec3<i32>(2147483647i, ~(~u_input.b), _wgslsmith_mult_i32(64453i >> (~var_0.a % 32u), ~15615i));
    let var_2 = -(-21972i << ((var_0.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 546u, var_0.a, var_0.a), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, u_input.a.x, var_0.a, 0u), vec4<u32>(0u, 1u, 93171u, u_input.a.x))) % 32u)) % 32u));
    var var_3 = min(~_wgslsmith_sub_vec4_u32(vec4<u32>(16297u, u_input.a.x, var_0.a, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(39535u, var_0.a, 1u, var_0.a), vec4<u32>(var_0.a, 4294967295u, var_0.a, 28182u))), abs(~vec4<u32>(u_input.c, u_input.c, 0u, 1u))) >> (min(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.c, 34232u, 28584u, u_input.a.x)), vec4<u32>(1u, ~u_input.a.x, ~var_0.a, firstTrailingBit(4294967295u))), vec4<u32>(var_0.a, 4294967295u, 40008u | var_0.a, _wgslsmith_add_u32(~59093u, 80553u | u_input.a.x))) % vec4<u32>(32u));
    let var_4 = true;
    return true;
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: bool) -> vec4<f32> {
    let var_0 = true;
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(max(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c, 33868u), vec2<u32>(94838u, u_input.c) << (vec2<u32>(u_input.a.x, u_input.c) % vec2<u32>(32u))), max(u_input.a & vec2<u32>(32846u, u_input.a.x), vec2<u32>(63386u, 0u))), ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.c, u_input.c), vec3<u32>(39363u, 0u, 48585u)), 74127u)), vec2<u32>(4294967295u, ~abs(0u)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -1000f, -386f, -244f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1869f, -984f, -1037f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(214f, 2485f, -1181f, 1000f), vec4<f32>(-1000f, 1124f, 500f, -144f)), vec4<f32>(-888f, -346f, -112f, -744f))))), Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-857f, 502f, -449f, 1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2630f, -1133f, 1000f, 1000f) * vec4<f32>(-1000f, 1000f, 770f, -2293f))))));
    let var_3 = vec2<u32>(_wgslsmith_mod_u32(var_1, _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 0u, 4294967295u, 42772u), vec4<u32>(var_2.b.a, 48733u, u_input.a.x, var_2.b.a), vec4<u32>(var_1, 98833u, 26377u, 4294967295u)), ~(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) << (vec4<u32>(36344u, var_1, 18439u, var_1) % vec4<u32>(32u))))), 4294967295u);
    return vec4<f32>(1424f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.a.x)), var_2.b.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(530f)))), -814f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -827f), 2371f)) - -341f));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_mod_i32(-2147483647i, u_input.b), vec4<bool>(!func_3(), true, 1u < countOneBits(u_input.c), true), -(~(vec3<i32>(u_input.b, u_input.b, u_input.b) << (arg_0.zxy % vec3<u32>(32u)))), any(vec4<bool>(true, true, true, true)))), Struct_1(abs(~u_input.a.x & ~arg_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-721f, 354f, 327f, arg_1.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -1837f, arg_1.x))))));
    var var_1 = u_input.b;
    var var_2 = arg_0;
    let var_3 = vec4<u32>(~_wgslsmith_mult_u32(u_input.c << (~4294967295u % 32u), var_2.x), 16069u, 27155u, ~u_input.c);
    var_0 = Struct_2(vec4<f32>(286f, var_0.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1492f * 1000f)))), _wgslsmith_f_op_f32(max(-1258f, _wgslsmith_f_op_f32(ceil(158f))))), var_0.b);
    return Struct_3(Struct_1(_wgslsmith_dot_vec4_u32(var_3, vec4<u32>(select(var_3.x, arg_0.x, true), var_0.b.a, abs(7564u), _wgslsmith_dot_vec2_u32(arg_0.zz, vec2<u32>(12177u, 4294967295u)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, 928f, 230f, arg_1.x), vec4<f32>(-1822f, 1814f, 125f, -242f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(432f, -422f, 425f, arg_1.x)))))), all(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), vec3<bool>((_wgslsmith_f_op_f32(var_0.b.b.x - -1239f) <= arg_1.x) && all(vec3<bool>(true, true, true)), select(abs(-2147483647i), u_input.b, true) > ~(0i | u_input.b), !all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), 4294967295u | ((~92367u ^ u_input.a.x) ^ 107937u));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> Struct_2 {
    var var_0 = min(max(vec3<i32>(50893i, countOneBits(-22765i), ~u_input.b), vec3<i32>(-1i, -29183i, -1i)), max(vec3<i32>(u_input.b ^ u_input.b, arg_0.d, -2147483647i), countOneBits(vec3<i32>(u_input.b & 1i, arg_0.d, -29420i))));
    var var_1 = arg_0.b.x;
    var_0 = -_wgslsmith_clamp_vec3_i32(-vec3<i32>(~(-2147483647i), 1i, 0i), ~(vec3<i32>(-1i, arg_0.d, u_input.b) & vec3<i32>(38790i, u_input.b, 0i)) & vec3<i32>(1i, var_0.x, reverseBits(0i)), reverseBits(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-21641i, 24125i, var_0.x), vec3<i32>(15118i, 61216i, 4970i)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, -2147483647i, u_input.b), vec3<i32>(u_input.b, var_0.x, 1i)), arg_0.e)));
    var var_2 = arg_0;
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(max(arg_1.a.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1128f, 426f, arg_1.a.b.x, var_2.b.x), arg_1.a.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.b.x, -622f, -1368f, 1224f) - arg_1.a.b)))), Struct_1(arg_0.a, arg_1.a.b));
    return Struct_2(func_2(_wgslsmith_add_vec4_u32(vec4<u32>(64680u, u_input.c, arg_0.c, arg_1.a.a), ~vec4<u32>(0u, arg_0.c, u_input.c, 54893u)) ^ ~select(vec4<u32>(u_input.a.x, arg_0.c, var_2.a, 0u), vec4<u32>(arg_0.a, arg_0.c, arg_1.a.a, var_3.b.a), vec4<bool>(arg_0.e.x, true, true, true)), vec3<f32>(176f, func_2(~vec4<u32>(2326u, 4294967295u, arg_0.c, 42302u), var_2.b).a.b.x, _wgslsmith_f_op_f32(-arg_0.b.x))).a.b, var_3.b);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<i32>) -> vec3<bool> {
    var var_0 = Struct_4(_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a, reverseBits(u_input.a)), 42761u)), _wgslsmith_f_op_vec3_f32(arg_0.b.b.yzy * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.zww)))), arg_0.b.a, ~select(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, u_input.b), arg_1.zz) & select(-2147483647i, 6031i, true), u_input.b, true), vec3<bool>(true, func_2(vec4<u32>(1u ^ u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, arg_0.b.a), vec2<u32>(0u, 4294967295u)), func_5(Struct_4(1u, vec3<f32>(arg_0.a.x, -1526f, arg_0.a.x), 41981u, 1i, vec3<bool>(false, true, true)), Struct_3(arg_0.b, true, vec3<bool>(true, false, true), 0u)).b.a, ~arg_0.b.a), arg_0.a.ywy).b, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    var var_1 = Struct_4(arg_0.b.a, vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(472f * 2121f))), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.d, 0i), _wgslsmith_mod_i32(-1i, var_0.d)), vec4<bool>(true, !var_0.e.x, var_0.e.x, !var_0.e.x), arg_1, !var_0.e.x)).x), 1u, -6484i, !select(vec3<bool>(var_0.e.x, var_0.e.x, false || var_0.e.x), vec3<bool>(var_0.e.x, u_input.b == var_0.d, true), true));
    var_1 = Struct_4(var_0.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-591f, arg_0.a.x, 565f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(148f, -160f, -809f)) + _wgslsmith_f_op_vec3_f32(var_1.b - vec3<f32>(-2150f, 386f, -527f))), _wgslsmith_f_op_vec4_f32(func_4(28538i, select(vec4<bool>(var_0.e.x, var_0.e.x, false, var_1.e.x), vec4<bool>(false, false, var_1.e.x, false), vec4<bool>(true, var_0.e.x, var_1.e.x, true)), -vec3<i32>(591i, arg_1.x, arg_1.x), func_2(vec4<u32>(u_input.c, 48187u, 42277u, var_1.a), arg_0.a.wxx).c.x)).xzy), all(!func_2(vec4<u32>(var_0.c, arg_0.b.a, 78403u, var_0.a), arg_0.b.b.xyz).c.yx))), func_2(vec4<u32>(20062u << (~var_0.a % 32u), 1u, countOneBits(~var_0.c), select(~63321u, _wgslsmith_div_u32(var_0.a, 0u), true)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(var_1.b, vec3<f32>(-1794f, arg_0.b.b.x, arg_0.a.x))))).d, 15459i, var_0.e);
    var var_2 = func_2(vec4<u32>(func_2(abs(vec4<u32>(u_input.c, 4294967295u, arg_0.b.a, var_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.b.x, 234f))).d >> (_wgslsmith_sub_u32(75167u, func_5(Struct_4(0u, var_1.b, 18211u, 21858i, var_0.e), Struct_3(Struct_1(u_input.a.x, arg_0.a), false, var_1.e, var_1.a)).b.a) % 32u), var_1.c, ~firstTrailingBit(4294967295u), 4294967295u), func_2(vec4<u32>(u_input.a.x, 0u, var_1.a, 0u | u_input.c), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(var_1.b.x + 734f), _wgslsmith_f_op_f32(f32(-1f) * -1380f), -1096f), vec3<f32>(_wgslsmith_f_op_f32(round(var_0.b.x)), 1073f, _wgslsmith_f_op_f32(select(var_1.b.x, -1172f, false)))))).a.b.xzw).a;
    let var_3 = !func_2(vec4<u32>(4294967295u, max(var_2.a, 47487u), u_input.c, 47153u << (var_0.a % 32u)) | _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(51777u, 4294967295u, u_input.c, 4294967295u)), select(vec4<u32>(arg_0.b.a, 71456u, 66373u, 25142u), vec4<u32>(var_2.a, 4294967295u, 31431u, u_input.c), vec4<bool>(var_0.e.x, var_0.e.x, var_1.e.x, var_0.e.x)), max(vec4<u32>(var_0.a, arg_0.b.a, u_input.a.x, var_1.a), vec4<u32>(u_input.a.x, arg_0.b.a, var_1.c, 80981u))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-226f + var_2.b.x), arg_0.a.x), -340f, var_2.b.x)).c.zz;
    return !(!select(!select(vec3<bool>(var_1.e.x, var_1.e.x, var_1.e.x), vec3<bool>(false, false, false), vec3<bool>(var_3.x, var_0.e.x, true)), func_2(reverseBits(vec4<u32>(4294967295u, 4294967295u, var_0.c, var_1.c)), _wgslsmith_f_op_vec3_f32(-arg_0.b.b.wxx)).c, select(var_0.e, vec3<bool>(var_0.e.x, true, true), select(vec3<bool>(true, true, false), vec3<bool>(var_0.e.x, var_3.x, var_3.x), var_0.e.x))));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = func_6(func_5(arg_0, func_2(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(17454u, 81998u, arg_0.a, 0u)), ~vec4<u32>(65929u, arg_0.a, arg_0.c, 60824u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.b))))), firstLeadingBit(reverseBits(vec3<i32>(arg_0.d, -40990i, -16600i))));
    var_0 = arg_0;
    var_0 = arg_0;
    return Struct_3(arg_2, any(select(vec2<bool>(true, true), func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 6866u, 23126u, arg_0.a), vec4<u32>(46149u, u_input.c, 34904u, 9970u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, arg_2.b.x, arg_2.b.x) + vec3<f32>(-366f, -1000f, 1616f))).c.xx, vec2<bool>(true, true))), vec3<bool>(true, select(true, !arg_0.e.x, var_0.e.x), true), 4294967295u);
}

fn func_7(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_4(u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.b.xxy)))), u_input.a.x, _wgslsmith_dot_vec4_i32(abs(select(vec4<i32>(u_input.b, u_input.b, -17187i, u_input.b) >> (vec4<u32>(arg_2.a.a, u_input.c, arg_2.d, 4294967295u) % vec4<u32>(32u)), -vec4<i32>(8874i, 0i, 2147483647i, u_input.b), arg_2.c.x)), vec4<i32>(countOneBits(387i), u_input.b, _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b), u_input.b) ^ vec4<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 0i)), _wgslsmith_sub_i32(u_input.b, -1i), i32(-1i) * -17891i)), vec3<bool>(any(!(!arg_1)), any(func_6(func_5(Struct_4(arg_2.a.a, vec3<f32>(arg_2.a.b.x, -1000f, -528f), 0u, -2147483647i, arg_2.c), arg_2), abs(vec3<i32>(-2147483647i, 2147483647i, 2147483647i)))), arg_2.c.x));
    let var_1 = true;
    var var_2 = _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, firstLeadingBit(arg_2.a.a) & 1u)) >> (_wgslsmith_mod_u32(min(arg_2.d, 5521u), ~u_input.a.x) % 32u);
    var var_3 = select(var_0.e, !vec3<bool>(false, func_6(Struct_2(arg_2.a.b, arg_2.a), vec3<i32>(var_0.d, 49186i, 23035i)).x || false, arg_1.x), !func_1(var_0, !vec4<bool>(arg_1.x, true, arg_1.x, true), Struct_1(var_0.a ^ var_0.a, vec4<f32>(-1888f, -490f, 1012f, var_0.b.x))).c);
    var var_4 = ~(~func_1(var_0, !select(vec4<bool>(true, true, var_3.x, false), vec4<bool>(var_1, var_1, var_1, false), false), Struct_1(22451u, vec4<f32>(arg_2.a.b.x, -638f, arg_2.a.b.x, -1340f))).d);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2470f - 557f)), -1002f);
}

fn func_8(arg_0: Struct_4, arg_1: i32) -> vec2<f32> {
    var var_0 = vec2<i32>(-1i) * -vec2<i32>(u_input.b, -21377i);
    let var_1 = _wgslsmith_div_vec4_i32(firstTrailingBit(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_0.x, -2147483647i, u_input.b, -10794i) ^ (vec4<i32>(-2147483647i, var_0.x, arg_1, -1i) << (vec4<u32>(4294967295u, u_input.c, arg_0.a, arg_0.c) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, 0i, -22647i, 17793i), min(vec4<i32>(arg_1, 2147483647i, arg_1, u_input.b), vec4<i32>(var_0.x, arg_0.d, -1i, 0i))))), vec4<i32>(_wgslsmith_add_i32(~arg_0.d, select(var_0.x, firstLeadingBit(-67649i), true)), ~(~_wgslsmith_div_i32(u_input.b, 2147483647i)), _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(8536i, -4127i, -1i, 1i), vec4<i32>(arg_1, u_input.b, u_input.b, arg_1))), ~vec4<i32>(-1i, u_input.b, u_input.b, var_0.x)), -arg_0.d));
    var var_2 = ~(~_wgslsmith_sub_u32(firstTrailingBit(~u_input.a.x), arg_0.c));
    var var_3 = !func_6(func_5(arg_0, func_2(~vec4<u32>(56659u, arg_0.c, arg_0.c, 32402u), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x) + vec3<f32>(1000f, arg_0.b.x, 1088f)))), var_1.xxw).zz;
    var var_4 = !func_1(arg_0, !vec4<bool>(var_3.x & var_3.x, arg_0.e.x, arg_0.e.x, all(vec4<bool>(var_3.x, false, arg_0.e.x, true))), func_1(Struct_4(u_input.c >> (arg_0.c % 32u), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1695f, arg_0.b.x, -1550f))), u_input.a.x, -var_1.x, func_1(arg_0, vec4<bool>(var_3.x, false, arg_0.e.x, false), Struct_1(22646u, vec4<f32>(arg_0.b.x, arg_0.b.x, -131f, arg_0.b.x))).c), !(!vec4<bool>(false, true, arg_0.e.x, var_3.x)), Struct_1(arg_0.a, func_1(arg_0, vec4<bool>(var_3.x, var_3.x, true, arg_0.e.x), Struct_1(4294967295u, vec4<f32>(-1614f, arg_0.b.x, -646f, 1412f))).a.b)).a).c;
    return func_2(abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, 5039u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(12726u, 72495u, u_input.c, arg_0.a), vec4<u32>(u_input.a.x, arg_0.c, u_input.c, 14603u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1229f + arg_0.b.x)), _wgslsmith_div_f32(-752f, _wgslsmith_f_op_f32(floor(arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1803f)))))).a.b.wx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec3<i32>(u_input.b, ~(-1i), _wgslsmith_div_i32(u_input.b, -(1i | u_input.b))), ~_wgslsmith_div_vec3_i32(vec3<i32>(1i, -48215i, ~(-37679i)), vec3<i32>(1i, -u_input.b, 0i)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1762f, 574f) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1294f, -1052f))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(func_8(Struct_4(u_input.c, vec3<f32>(-251f, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_f32(func_7(true, vec2<bool>(true, true), func_1(Struct_4(u_input.c, vec3<f32>(-203f, var_1.x, var_1.x), 1u, 1i, vec3<bool>(true, true, true)), vec4<bool>(false, false, true, true), Struct_1(u_input.a.x, vec4<f32>(-1000f, var_1.x, 610f, 890f)))))), u_input.a.x, ~var_0.x >> ((firstTrailingBit(0u) ^ u_input.c) % 32u), !vec3<bool>(true, false, all(vec4<bool>(true, true, true, false)))), -466i));
    var var_2 = func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), reverseBits(4294967295u)), _wgslsmith_mod_u32(~u_input.c, 118576u), ~u_input.a.x), ~(~vec4<u32>(u_input.a.x, 10783u, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec3_f32(-func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, 1u, u_input.c) ^ vec4<u32>(u_input.c, 1u, 1u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 17732u, 11243u)), vec3<f32>(-1000f, _wgslsmith_f_op_vec2_f32(func_8(Struct_4(64643u, vec3<f32>(var_1.x, 1039f, var_1.x), 5620u, u_input.b, vec3<bool>(false, true, false)), u_input.b)).x, _wgslsmith_div_f32(-309f, 1000f))).a.b.wwx));
    let var_3 = Struct_3(func_1(Struct_4(1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(425f, var_1.x, var_2.a.b.x)) - func_5(Struct_4(u_input.a.x, vec3<f32>(1412f, -1852f, -495f), 79652u, -5486i, var_2.c), Struct_3(Struct_1(29585u, vec4<f32>(var_1.x, 1000f, 284f, var_2.a.b.x)), true, vec3<bool>(false, true, true), u_input.c)).b.b.wxy), 4294967295u, 1i, var_2.c), vec4<bool>(false, _wgslsmith_add_u32(u_input.a.x, var_2.a.a) < ~4294967295u, ~var_0.x > (37291i << (u_input.c % 32u)), func_6(Struct_2(vec4<f32>(-651f, var_2.a.b.x, 685f, var_1.x), Struct_1(0u, vec4<f32>(var_1.x, 1006f, -1146f, var_1.x))), vec3<i32>(var_0.x, 8945i, 15281i)).x & (var_2.d <= u_input.a.x)), func_2(firstLeadingBit(max(vec4<u32>(u_input.c, 4294967295u, var_2.d, var_2.d), vec4<u32>(78016u, 0u, 20264u, var_2.a.a))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec4_f32(func_4(-1i, vec4<bool>(var_2.b, var_2.b, var_2.c.x, var_2.b), var_0, true)).wzx, vec3<f32>(1418f, var_1.x, 322f)))).a).a, func_2(select(~(vec4<u32>(71905u, u_input.c, u_input.a.x, 4294967295u) >> (vec4<u32>(4294967295u, var_2.d, 0u, u_input.a.x) % vec4<u32>(32u))), abs(~vec4<u32>(var_2.d, 16455u, u_input.a.x, 1u)), vec4<bool>(false, !var_2.b, !var_2.b, false)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1963f * var_1.x)), func_5(Struct_4(u_input.c, var_2.a.b.xyz, 1u, var_0.x, vec3<bool>(var_2.b, var_2.c.x, true)), func_1(Struct_4(1u, var_2.a.b.wxy, var_2.d, u_input.b, var_2.c), vec4<bool>(var_2.b, false, var_2.b, var_2.c.x), Struct_1(66314u, var_2.a.b))).b.b.x, _wgslsmith_f_op_f32(min(286f, _wgslsmith_f_op_f32(-var_1.x))))).b, vec3<bool>(!(_wgslsmith_f_op_f32(var_1.x - -456f) >= _wgslsmith_f_op_f32(step(-805f, var_2.a.b.x))), true, true), 53562u ^ var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1666f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.a.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-464f, -457f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(563f)), _wgslsmith_div_f32(-1797f, -1166f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-316f, var_2.a.b.x))) * _wgslsmith_f_op_vec2_f32(var_3.a.b.yw - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1632f, var_3.a.b.x))))), countOneBits(countOneBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(31390u, 51850u, 89999u, 0u), abs(vec4<u32>(29507u, var_3.d, var_3.a.a, 0u)), ~vec4<u32>(12120u, 10883u, 1u, u_input.a.x)))));
}

