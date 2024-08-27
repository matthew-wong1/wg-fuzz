struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), 0i);

var<private> global1: u32 = 1u;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: f32) -> vec2<i32> {
    var var_0 = Struct_1(-349f, _wgslsmith_clamp_vec3_u32(~vec3<u32>(max(u_input.a, u_input.a), u_input.a << (u_input.c % 32u), _wgslsmith_clamp_u32(36804u, 70698u, 1u)), ~_wgslsmith_mult_vec3_u32(u_input.b.xxz, firstLeadingBit(u_input.b.yxy)), u_input.b.xwz | ~(vec3<u32>(1u, 1u, u_input.d) >> (u_input.b.zxy % vec3<u32>(32u)))), -vec4<i32>(global0.x, -_wgslsmith_mod_i32(-10424i, arg_0), arg_0, abs(i32(-1i) * -20792i)), abs(2147483647i), select(vec3<i32>(firstTrailingBit(-1i), arg_0, abs(i32(-1i) * -15261i)), _wgslsmith_clamp_vec3_i32(min(vec3<i32>(global0.x, 0i, global0.x) << (vec3<u32>(u_input.d, u_input.d, u_input.a) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, -1i, arg_0), vec3<i32>(-2994i, arg_0, 1i))), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, -19742i, 1i), vec3<i32>(global0.x, 1i, 1i)), vec3<i32>(1i, -76932i, global0.x) >> (u_input.b.wzz % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(25874i, -4101i, arg_0), select(vec3<i32>(global0.x, global0.x, 2147483647i), vec3<i32>(44880i, global0.x, global0.x), true), vec3<i32>(-4513i, arg_0, -54438i) & vec3<i32>(-41771i, arg_0, 20270i))), !(!arg_1.yxy)));
    let var_1 = Struct_1(1000f, ~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, 35672u, 22918u), vec4<u32>(var_0.b.x, 4294967295u, 1u, 1u)), select(u_input.d, 24854u, true), 1u), var_0.b), var_0.c, arg_0, var_0.e);
    let var_2 = Struct_2(!vec3<bool>(arg_1.x, _wgslsmith_f_op_f32(-var_1.a) != _wgslsmith_div_f32(var_0.a, var_1.a), true), Struct_1(856f, select(vec3<u32>(var_0.b.x, _wgslsmith_dot_vec2_u32(var_1.b.yy, var_1.b.yx), abs(u_input.c)), var_0.b, true), vec4<i32>(-1i) * -(vec4<i32>(var_1.e.x, var_0.e.x, arg_0, 1i) | vec4<i32>(var_1.d, var_0.e.x, 2147483647i, 1i)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-10688i, global0.x, 46657i, arg_0) | var_1.c, min(vec4<i32>(var_0.e.x, 17082i, var_0.d, var_1.c.x), vec4<i32>(-17259i, 1i, 0i, arg_0))), var_1.d), firstLeadingBit(~var_1.c.zxy) | (~vec3<i32>(31691i, global0.x, arg_0) >> (u_input.b.zwx % vec3<u32>(32u)))), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, ~var_0.b.x, 1u), vec3<u32>(~u_input.c ^ 1u, select(44842u, u_input.b.x, true), 0u)), abs(~(~select(var_0.b.x, 1u, true))));
    global1 = var_1.b.x;
    global1 = var_2.d;
    return firstLeadingBit(vec2<i32>(global0.x, _wgslsmith_mod_i32(41787i, -2147483647i)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>) -> Struct_1 {
    global0 = ~(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, 1i, -2147483647i), vec4<i32>(global0.x, 0i, -1i, global0.x)) >> (~u_input.a % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(27168i, 14331i, global0.x) << (vec3<u32>(u_input.c, 0u, 37841u) % vec3<u32>(32u)), vec3<i32>(global0.x, 8496i, global0.x))));
    var var_0 = countOneBits(abs(func_3(global0.x, select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true), any(vec4<bool>(false, false, false, false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2020f), -1738f, arg_0.x > -1000f)))));
    var var_1 = Struct_2(vec3<bool>(false, true, all(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(arg_1.x * -633f), ~firstTrailingBit(vec3<u32>(u_input.c, 1666u, 0u)), vec4<i32>(var_0.x, 1i, 9534i ^ func_3(42658i, vec4<bool>(true, false, false, true), arg_0.x).x, _wgslsmith_mod_i32(global0.x << (2523u % 32u), -8680i)), global0.x, firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, 14810i, -125i), firstLeadingBit(vec3<i32>(0i, global0.x, global0.x))))), _wgslsmith_mult_u32(~(~27092u & u_input.a), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), 72910u);
    let var_2 = Struct_2(vec3<bool>(-2147483647i >= var_0.x, select(true, any(vec3<bool>(var_1.a.x, true, false)) == false, global0.x > -48539i), true | (var_1.a.x & var_1.a.x)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(389f)) - arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.a) + _wgslsmith_f_op_f32(arg_0.x + arg_1.x))), u_input.b.zww, vec4<i32>(-60613i, firstLeadingBit(-2147483647i), global0.x, 1162i & var_0.x) >> (vec4<u32>(var_1.d >> (var_1.b.b.x % 32u), var_1.b.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_dot_vec4_i32(max(abs(vec4<i32>(var_1.b.d, var_1.b.e.x, var_0.x, 1i)), var_1.b.c), -(vec4<i32>(var_0.x, var_0.x, 0i, var_1.b.c.x) << (u_input.b % vec4<u32>(32u)))), ~_wgslsmith_mod_vec3_i32(abs(var_1.b.c.xyy), firstTrailingBit(vec3<i32>(0i, -1i, -2147483647i)))), 71939u ^ var_1.b.b.x, ~4294967295u);
    let var_3 = Struct_1(1092f, abs(~(vec3<u32>(u_input.d, u_input.b.x, var_2.c) | var_1.b.b)) | vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(u_input.b.zw, vec2<u32>(var_1.c, var_1.b.b.x)) & abs(45284u), 4294967295u), ~(-(~min(vec4<i32>(var_2.b.c.x, 2147483647i, -1i, var_1.b.e.x), vec4<i32>(-1i, var_0.x, var_2.b.d, var_2.b.d)))), 1i, (vec3<i32>(var_2.b.c.x, var_1.b.c.x, -4896i) | abs(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_1.b.e.x, 14822i), vec3<i32>(global0.x, -20836i, var_2.b.c.x)))) & vec3<i32>(global0.x, abs(-2147483647i), -2147483647i));
    return Struct_1(var_3.a, select(vec3<u32>(17428u, 5676u, var_3.b.x), vec3<u32>(~var_3.b.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.b.x, var_2.c, var_2.d), var_2.b.b), 4294967295u, u_input.b.x), firstLeadingBit(0u)), true), vec4<i32>(_wgslsmith_add_i32(global0.x, -_wgslsmith_clamp_i32(2147483647i, 56825i, 2147483647i)), _wgslsmith_dot_vec3_i32(var_1.b.c.xxw, vec3<i32>(1i, ~2147483647i, -60997i)), global0.x, ~_wgslsmith_add_i32(-19283i << (u_input.c % 32u), _wgslsmith_add_i32(var_3.d, -1i))), -var_0.x, _wgslsmith_div_vec3_i32(reverseBits(var_2.b.c.zzx ^ _wgslsmith_div_vec3_i32(var_1.b.e, var_2.b.c.zyx)), var_1.b.c.xwz));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, 1179f, arg_0.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 2107f, arg_0.a, 457f) + vec4<f32>(arg_0.a, arg_0.a, arg_0.a, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_div_f32(arg_0.a, 165f), _wgslsmith_f_op_f32(f32(-1f) * -974f), _wgslsmith_f_op_f32(-arg_0.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-210f, 1113f, 102f, 964f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, -172f, arg_0.a, arg_0.a), vec4<f32>(457f, -1819f, -735f, arg_0.a), vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true))))), vec2<f32>(arg_0.a, -905f));
    var var_1 = u_input.b;
    var_1 = vec4<u32>(var_0.b.x, u_input.d, 70326u, 4294967295u);
    var var_2 = var_0.a;
    var var_3 = firstLeadingBit(firstLeadingBit(~select(-vec4<i32>(global0.x, -4081i, global0.x, var_0.d), -arg_0.c, any(vec2<bool>(false, true)))));
    return arg_0;
}

fn func_1() -> vec3<u32> {
    var var_0 = func_4(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-342f, 353f, -455f, 418f))), vec4<f32>(611f, 428f, 325f, 800f)) - vec4<f32>(_wgslsmith_f_op_f32(trunc(-216f)), _wgslsmith_f_op_f32(1399f * -365f), _wgslsmith_f_op_f32(1000f - 551f), -632f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-452f, -399f), vec2<f32>(-1170f, -525f), vec2<bool>(false, true))))))));
    global1 = ~u_input.a;
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1208f, var_0.a, var_0.a, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-146f, -146f, var_0.a, var_0.a) * vec4<f32>(var_0.a, var_0.a, -1219f, var_0.a))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(489f, var_0.a, var_0.a, var_0.a)))))), vec4<f32>(_wgslsmith_div_f32(-1000f, 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(sign(var_0.a))), func_2(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))).a, -451f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, var_0.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) - vec2<f32>(-1127f, var_0.a))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, var_0.a), vec2<f32>(1228f, var_0.a), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -685f)))))), vec2<f32>(_wgslsmith_f_op_f32(max(1797f, _wgslsmith_div_f32(var_0.a, -1000f))), var_0.a), vec2<bool>(false, true))));
    var var_2 = global0.x;
    var var_3 = true;
    return vec3<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(~var_0.b.x, 1u, 1u)), ~vec3<u32>(var_1.b.x, _wgslsmith_mod_u32(29032u, var_1.b.x), 46025u ^ var_0.b.x)), u_input.a, 4294967295u);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = -func_4(func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1166f, arg_2.a, arg_3.a, arg_3.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-942f, 709f) - vec2<f32>(arg_3.a, 1493f))))).e.xz;
    var var_0 = !select(vec3<bool>(true, true, _wgslsmith_add_u32(4294967295u, arg_0.x) != 1u), !vec3<bool>(true, true, 29350i == global0.x), vec3<bool>(true, true, true));
    var var_1 = 0i;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(763f)), arg_2.a);
    var var_3 = true;
    return _wgslsmith_add_u32(~countOneBits(41094u), ~(~select(~arg_0.x, arg_2.b.x, var_2 < arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1129f, 2049f, -244f, -953f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1495f, 1177f, -195f, -273f), vec4<f32>(1075f, 595f, 320f, 603f), vec4<bool>(true, false, false, false))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-646f, -1115f, 1533f, 374f) - vec4<f32>(458f, 743f, -178f, -1000f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-196f, -1345f, -292f, -358f)))), vec4<f32>(1f, 1f, 1f, 1f)))));
    global1 = _wgslsmith_add_u32(u_input.a, 4294967295u & func_5(func_1(), Struct_1(_wgslsmith_f_op_f32(abs(var_0.x)), ~u_input.b.wzx, vec4<i32>(global0.x, -15262i, global0.x, global0.x) ^ vec4<i32>(-2147483647i, global0.x, global0.x, -2147483647i), _wgslsmith_clamp_i32(-33022i, global0.x, global0.x), func_4(Struct_1(var_0.x, vec3<u32>(u_input.c, u_input.d, 57324u), vec4<i32>(-23986i, global0.x, global0.x, global0.x), global0.x, vec3<i32>(-1i, global0.x, global0.x))).e), func_4(func_4(Struct_1(-830f, u_input.b.zxx, vec4<i32>(20273i, global0.x, 24286i, 0i), global0.x, vec3<i32>(0i, global0.x, 2147483647i)))), Struct_1(var_0.x, abs(vec3<u32>(8786u, 96211u, u_input.c)), func_4(Struct_1(-195f, vec3<u32>(u_input.a, u_input.d, 28639u), vec4<i32>(global0.x, global0.x, 2147483647i, global0.x), 38117i, vec3<i32>(2147483647i, global0.x, -2147483647i))).c, global0.x, func_2(vec4<f32>(var_0.x, var_0.x, -1201f, 594f), vec2<f32>(var_0.x, var_0.x)).c.yxx)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_div_f32(938f, var_0.x), true))) + _wgslsmith_f_op_f32(-550f * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(111f, var_0.x))))), var_0.x, -452f);
    let var_2 = Struct_2(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))), all(vec4<bool>(true, true, true, true))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -243f, -2330f))), _wgslsmith_f_op_vec2_f32(abs(var_1.xx))), ~(countOneBits(45745u) & abs(1u ^ u_input.c)), select(u_input.a, 4294967295u, !any(vec3<bool>(false, true, true))) ^ ~u_input.c);
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.b.a, _wgslsmith_f_op_f32(var_0.x - -1000f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yy) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_2.b.a) - vec2<f32>(var_2.b.a, -2108f)))))))));
    let var_4 = Struct_2(var_2.a, func_4(func_4(func_4(Struct_1(var_2.b.a, vec3<u32>(u_input.a, u_input.d, var_2.d), var_2.b.c, global0.x, var_2.b.c.wxw)))), var_2.d, countOneBits(4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(4294967295u, 0u, ~var_2.c, ~14951u)) << (~u_input.b % vec4<u32>(32u)), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(max(var_4.b.c, var_2.b.c ^ var_2.b.c), var_4.b.c), var_2.b.c.x, min(-(~1i), -22063i << (func_1().x % 32u))));
}

