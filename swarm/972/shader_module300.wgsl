struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(32360i, 8958i);

var<private> global1: Struct_1 = Struct_1(22314i, 1451f, true, 1000f);

var<private> global2: u32 = 7993u;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = 814f;
    global2 = 28234u;
    let var_1 = Struct_1(global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.b + -627f), _wgslsmith_f_op_f32(-global1.b), all(vec2<bool>(global1.c, global1.c)))))), _wgslsmith_div_f32(1064f, 697f)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + _wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(-201f + global1.b))))));
    var var_2 = select(select(!(!vec2<bool>(global1.c, false)), select(select(vec2<bool>(true, var_1.c), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(false, global1.c), vec2<bool>(global1.c, global1.c)), false), firstLeadingBit(-3954i & global0.x) != _wgslsmith_clamp_i32(u_input.a, 8396i, 1i)), !vec2<bool>(global1.c, true), !(!select(select(vec2<bool>(true, false), vec2<bool>(var_1.c, global1.c), var_1.c), select(vec2<bool>(global1.c, false), vec2<bool>(global1.c, var_1.c), global1.c), true)));
    global1 = Struct_1(arg_0.a.x >> (~u_input.c % 32u), 1116f, !(global1.c == (_wgslsmith_dot_vec2_i32(arg_0.a.zx, vec2<i32>(-29996i, -1i)) > -1i)), global1.b);
    return firstTrailingBit(arg_0.a);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    let var_0 = Struct_3(func_3(Struct_3(select(vec4<i32>(arg_3.b.a, 2147483647i, -2147483647i, u_input.a) ^ vec4<i32>(arg_3.b.a, 0i, -52532i, 1i), abs(vec4<i32>(-2147483647i, 2147483647i, global0.x, 2147483647i)), true))));
    global0 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(var_0.a.xy, var_0.a.ww), _wgslsmith_mult_vec2_i32(var_0.a.yx, vec2<i32>(arg_2.a, arg_2.a)), var_0.a.yy), var_0.a.xw);
    global1 = arg_3.b;
    let var_1 = Struct_3((-vec4<i32>(-59258i, -2147483647i, arg_2.a, arg_2.a) ^ _wgslsmith_add_vec4_i32(~var_0.a, -vec4<i32>(2147483647i, global1.a, u_input.a, -25062i))) << (u_input.b % vec4<u32>(32u)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(232f)), _wgslsmith_f_op_f32(-arg_2.d))), Struct_1(~(~(i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(786f)), _wgslsmith_f_op_f32(-arg_1.x)))), !(!arg_0 & true), _wgslsmith_f_op_f32(f32(-1f) * -209f)), arg_1.yy, max(u_input.b.yx, vec2<u32>(~4294967295u << (1u % 32u), 57328u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.yx), vec2<f32>(global1.b, -470f))))));
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, arg_1.d, 2517f) + vec3<f32>(arg_2, arg_2, arg_2)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1298f, 1820f)))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1206f, global1.d, arg_2)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-109f, -1191f, arg_1.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, 1221f, -419f) + vec3<f32>(-229f, arg_1.d, -523f)), vec3<bool>(arg_3.b.c, true, arg_1.c)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b, 144f, global1.b), vec3<f32>(arg_3.b.b, arg_1.d, arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.e.x, arg_1.d, arg_3.a) + vec3<f32>(arg_3.c.x, -813f, arg_1.d)))), global1.c)));
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_3;
    global0 = ~vec2<i32>(2147483647i & select(i32(-1i) * -27368i, -27177i, !var_0.b.c), abs(-(~global1.a)));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-703f, global1.b, global1.b) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(742f, var_0.a, var_0.b.b))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, var_0.e.x, arg_0)))))))));
    let var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(4294967295u), 1u, ~14801u, u_input.c), ~(~vec4<u32>(0u, u_input.c, 0u, var_0.d.x))), 44639u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~u_input.b.ywx, vec3<u32>(29694u, 4294967295u, 4294967295u) >> (u_input.b.xxz % vec3<u32>(32u))), var_0.d.x)), ~(~(~u_input.b.yyw)));
    return func_4(Struct_3(vec4<i32>(_wgslsmith_mod_i32(arg_3.b.a, _wgslsmith_div_i32(-1i, arg_2)), global0.x, func_4(Struct_3(vec4<i32>(2147483647i, global0.x, arg_1, -1i)), Struct_1(-1i, -167f, global1.c, 4111f), global1.d, Struct_2(global1.d, arg_3.b, arg_3.c, vec2<u32>(32327u, u_input.e.x), var_2.zz)).a, -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, 0i, var_0.b.a), vec3<i32>(28061i, -2147483647i, -2147483647i)))), Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(10330i, -33260i, -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_2, u_input.a), vec3<i32>(arg_3.b.a, 2147483647i, -9771i))), func_3(Struct_3(vec4<i32>(-15564i, var_0.b.a, u_input.a, arg_2))).x), _wgslsmith_f_op_f32(-var_0.a), !(!var_0.b.c), _wgslsmith_f_op_f32(-arg_0)), 734f, var_0);
}

fn func_6(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 15266u;
    let var_1 = (_wgslsmith_dot_vec2_u32(vec2<u32>(~46370u, reverseBits(u_input.c)), vec2<u32>(~u_input.d, 34502u)) ^ firstTrailingBit((u_input.c ^ 7694u) >> (~var_0 % 32u))) >> (~1u % 32u);
    var var_2 = ~(~var_0);
    var var_3 = Struct_2(-1000f, func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1037f)), _wgslsmith_f_op_f32(arg_1.b - global1.d)), arg_1.a, u_input.a, Struct_2(global1.d, func_4(Struct_3(vec4<i32>(arg_1.a, global0.x, 52853i, 44767i)), arg_1, -153f, Struct_2(arg_1.b, arg_1, vec2<f32>(global1.d, 1411f), u_input.e, vec2<f32>(1854f, -633f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(137f, 679f) - vec2<f32>(global1.b, arg_1.b))), reverseBits(u_input.b.xy) | u_input.b.ww, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.d, -1000f), vec2<f32>(global1.b, global1.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1001f, 1911f) - vec2<f32>(-467f, arg_1.b)))))), vec2<f32>(func_5(-867f, select(~0i, _wgslsmith_sub_i32(u_input.a, u_input.a), arg_0), 35432i, Struct_2(473f, Struct_1(23756i, arg_1.b, arg_1.c, arg_1.d), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(832f, arg_1.b))), vec2<u32>(var_1, u_input.e.x), vec2<f32>(196f, arg_1.b))).b, _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -139f))))), ~vec2<u32>(var_1 & var_0, 7283u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -208f)) * vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.b, 2351f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.d, arg_1.b)))))));
    var var_4 = select(!vec3<bool>(var_3.b.c, false, all(vec4<bool>(global1.c, arg_1.c, arg_0, var_3.b.c))), select(vec3<bool>(true, true, true), select(!vec3<bool>(var_3.b.c, arg_0, true), vec3<bool>(false | var_3.b.c, global1.c, arg_1.c & true), true), -3366i >= func_3(func_2(arg_1.c, vec3<f32>(var_3.c.x, -679f, -633f), Struct_1(var_3.b.a, arg_1.d, false, -1146f), Struct_2(914f, var_3.b, var_3.e, vec2<u32>(4294967295u, 4294967295u), var_3.c))).x), false);
    return var_3.b;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec2<bool>) -> i32 {
    global2 = 4294967295u;
    let var_0 = func_6(_wgslsmith_f_op_f32(259f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b))), func_5(_wgslsmith_f_op_f32(global1.d * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -402f), _wgslsmith_f_op_f32(global1.b - 1000f))), ~_wgslsmith_clamp_i32(-24577i, _wgslsmith_add_i32(-2147483647i, 4580i), global0.x), min(22988i << ((u_input.d << (u_input.c % 32u)) % 32u), ~abs(global1.a)), Struct_2(_wgslsmith_f_op_f32(sign(global1.b)), func_4(func_2(global1.c, vec3<f32>(-1375f, 1005f, global1.d), Struct_1(global1.a, global1.d, arg_3.x, 566f), Struct_2(global1.d, Struct_1(arg_0.x, global1.b, false, -137f), vec2<f32>(-1410f, global1.d), vec2<u32>(1u, u_input.c), vec2<f32>(-384f, 1741f))), Struct_1(u_input.a, -724f, global1.c, global1.d), -1117f, Struct_2(global1.d, Struct_1(global1.a, -726f, true, global1.b), vec2<f32>(global1.d, global1.b), u_input.b.yw, vec2<f32>(-325f, 2336f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, global1.b)) + _wgslsmith_div_vec2_f32(vec2<f32>(global1.b, global1.b), vec2<f32>(global1.b, global1.d))), select(~vec2<u32>(23258u, u_input.d), vec2<u32>(0u, 51718u) << (u_input.b.xy % vec2<u32>(32u)), vec2<bool>(false, arg_1.x)), vec2<f32>(global1.b, _wgslsmith_f_op_f32(round(-1294f))))));
    let var_1 = func_2(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1299f * global1.b), global1.d, 133f))), var_0, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(629f - global1.b) * 439f)), func_5(2363f, _wgslsmith_div_i32(29153i ^ u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a.x, 2147483647i), vec2<i32>(arg_0.x, global1.a))), -(~2147483647i), Struct_2(717f, var_0, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.d, global1.d), vec2<f32>(516f, global1.b), arg_3)), _wgslsmith_div_vec2_u32(u_input.b.xw, u_input.e), vec2<f32>(1000f, global1.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.d, var_0.d), vec2<f32>(407f, 1200f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, 1812f) + vec2<f32>(-312f, global1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1149f, global1.d) * vec2<f32>(-660f, -905f)), !vec2<bool>(false, global1.c)))), u_input.b.wz, vec2<f32>(212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)))));
    global1 = var_0;
    var var_2 = (i32(-1i) * -var_0.a) | 1i;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(global1.c, global1.c, all(!(!vec4<bool>(true, false, false, global1.c))), global1.c);
    global2 = select(~(~u_input.d), u_input.c, !global1.c);
    global2 = u_input.c;
    global0 = _wgslsmith_div_vec2_i32(-(vec2<i32>(-57497i | global0.x, ~24659i) ^ _wgslsmith_add_vec2_i32(~vec2<i32>(2147483647i, global0.x), vec2<i32>(-2147483647i, global0.x))), vec2<i32>(func_1(vec2<i32>(-1i, u_input.a), select(!var_0.zww, vec3<bool>(var_0.x, true, var_0.x), var_0.wxw), Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, u_input.a, global1.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i))), vec2<bool>(any(vec2<bool>(global1.c, true)), all(vec2<bool>(global1.c, var_0.x)))), 82791i));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(max(-1064f, -1407f)), func_5(global1.b, 36819i, 44552i, Struct_2(global1.d, func_4(func_2(false, vec3<f32>(-399f, -1000f, global1.b), Struct_1(u_input.a, -269f, true, global1.d), Struct_2(global1.d, Struct_1(u_input.a, -601f, true, global1.b), vec2<f32>(1141f, global1.b), u_input.e, vec2<f32>(global1.d, 204f))), Struct_1(1i, global1.b, global1.c, 809f), _wgslsmith_f_op_f32(-global1.b), Struct_2(global1.b, Struct_1(u_input.a, global1.b, var_0.x, -741f), vec2<f32>(global1.b, 1217f), vec2<u32>(u_input.d, u_input.d), vec2<f32>(global1.b, -1000f))), vec2<f32>(160f, _wgslsmith_f_op_f32(global1.b - global1.b)), ~reverseBits(u_input.b.zw), vec2<f32>(_wgslsmith_f_op_f32(-1363f - global1.b), global1.b))), vec2<f32>(585f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1570f + global1.b)), -214f)), firstTrailingBit(vec2<u32>(4294967295u, ~0u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-630f, -225f))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(468f)), global1.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_4(func_2(true, vec3<f32>(-819f, 1000f, -967f), var_1.b, Struct_2(var_1.c.x, var_1.b, vec2<f32>(var_1.c.x, var_1.b.d), var_1.d, var_1.c)), func_5(var_1.c.x, 1i, 49323i, Struct_2(var_1.c.x, Struct_1(global0.x, 1199f, false, var_1.a), var_1.e, vec2<u32>(var_1.d.x, 1u), var_1.e)), global1.b, var_1).b - var_1.e.x), u_input.a, global1.a, u_input.a);
}

