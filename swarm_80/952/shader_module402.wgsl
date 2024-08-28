struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(493f, arg_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + arg_0.d) * _wgslsmith_f_op_f32(trunc(global0.a))))), ~(-9551i), -410f, arg_1.d);
    var var_1 = Struct_1(-1038f, 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-914f)) + _wgslsmith_f_op_f32(var_0.a + 167f)), -304f);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), 35332i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.c, -1284f)) * 128f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(449f + global0.d))));
    var var_3 = var_2;
    var_3 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a - -1060f), _wgslsmith_f_op_f32(trunc(var_2.a))))))));
}

fn func_2() -> vec3<bool> {
    global0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_f_op_f32(func_3(Struct_1(global0.d, global0.b >> (4294967295u % 32u), _wgslsmith_f_op_f32(-207f * global0.d), _wgslsmith_f_op_f32(sign(global0.c))), Struct_1(global0.c, -32557i, _wgslsmith_f_op_f32(ceil(global0.d)), _wgslsmith_f_op_f32(-global0.a)))))), u_input.a.x, global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(global0.d - 1579f)))));
    global0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a))) - global0.a))), 2147483647i, 2283f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_1(-818f, global0.b, 258f, 1449f), Struct_1(145f, -4980i, global0.c, global0.c))), _wgslsmith_f_op_f32(185f - _wgslsmith_f_op_f32(-global0.a)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a)))));
    global0 = Struct_1(-921f, u_input.a.x | _wgslsmith_sub_i32(_wgslsmith_mod_i32(-345i, u_input.d.x), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-1i, u_input.a.x)) >> (_wgslsmith_clamp_u32(77514u, 28653u, 73553u) % 32u)), _wgslsmith_f_op_f32(global0.a + global0.a), 150f);
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec2_i32(u_input.a, -vec2<i32>(-2147483647i, global0.b)), _wgslsmith_sub_i32(firstTrailingBit(global0.b), u_input.a.x) << (abs(30765u) % 32u)), select(vec2<i32>(_wgslsmith_dot_vec2_i32(max(vec2<i32>(global0.b, 8758i), vec2<i32>(28807i, 0i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(5379i, 2147483647i), vec2<i32>(1i, 31621i), vec2<i32>(-56272i, global0.b))), 1i), vec2<i32>(_wgslsmith_clamp_i32(firstLeadingBit(-41376i), -55167i, -global0.b), u_input.d.x), true));
    let var_1 = Struct_1(113f, reverseBits(1i), -346f, 1238f);
    return vec3<bool>(false, false, true);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(true, true && all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(select(func_2(), vec3<bool>(true, -1i >= u_input.c.x, true), vec3<bool>(true, true, true))), true & any(vec4<bool>(true, true, true, true)));
    global0 = Struct_1(_wgslsmith_f_op_f32(ceil(arg_0.d)), 1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * -828f)), 1037f), 799f);
    let var_1 = -(~min(_wgslsmith_sub_i32(1i, u_input.c.x) << (34603u % 32u), _wgslsmith_mult_i32(arg_3.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-21939i, u_input.a.x, u_input.a.x), vec3<i32>(global0.b, global0.b, -2147483647i)))));
    var var_2 = !(!vec2<bool>(var_0.x | var_0.x, false));
    global0 = arg_3;
    return arg_3;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0;
    let var_0 = ~(~1u);
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(11448u, 14174u), countOneBits(vec2<u32>(110897u, var_0))), firstLeadingBit(~0u), _wgslsmith_add_u32(var_0 ^ var_0, abs(var_0))) | vec4<u32>(~_wgslsmith_clamp_u32(1u, var_0, 2206u), var_0, 1u, countOneBits(var_0)), abs(_wgslsmith_mult_vec4_u32(select(vec4<u32>(var_0, var_0, var_0, var_0), vec4<u32>(25959u, var_0, 1u, 4294967295u), vec4<bool>(false, true, true, false)), vec4<u32>(0u, var_0, var_0, 34674u))) & countOneBits(vec4<u32>(_wgslsmith_add_u32(var_0, var_0), var_0, ~1u, 4294967295u >> (var_0 % 32u))));
    global0 = arg_0;
    var var_2 = !(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), func_2().xz), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), true), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false))));
    return func_1(arg_0, u_input.b.x, _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global0.b, 16753i, global0.b), vec4<i32>(arg_0.b, -2147483647i, arg_0.b, arg_0.b) ^ vec4<i32>(-24623i, 1i, -71597i, global0.b)) | ~max(vec4<i32>(u_input.b.x, 0i, -26220i, 7933i), vec4<i32>(-34240i, 2147483647i, -1i, 0i)), vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(u_input.b.x, 36218i)), -global0.b, 1i, min(-6539i, arg_0.b))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.d - 1000f))) - 790f), max(1i, 2147483647i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_0.c)))), arg_0.c));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global0 = func_1(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 1436f) - -1398f) - func_4(arg_3).a), 2147483647i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -273f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global0.d)), _wgslsmith_f_op_f32(-global0.a))))), 1i, _wgslsmith_sub_vec4_i32(-vec4<i32>(reverseBits(global0.b), 30080i << (arg_1.x % 32u), -2147483647i, max(-15076i, 22054i)), -select(countOneBits(vec4<i32>(-24375i, arg_3.b, global0.b, 41905i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, arg_2, global0.b, 1i), vec4<i32>(arg_2, arg_3.b, 15435i, 31896i)), vec4<bool>(true, true, true, true))), func_1(Struct_1(func_1(Struct_1(arg_3.d, 2147483647i, global0.a, global0.d), u_input.d.x, ~vec4<i32>(2147483647i, 2147483647i, 45124i, -1i), Struct_1(global0.a, global0.b, 1090f, -1115f)).a, arg_3.b, global0.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.d)))), arg_2, firstLeadingBit(vec4<i32>(arg_2 << (arg_1.x % 32u), _wgslsmith_add_i32(u_input.a.x, 0i), -5188i, arg_3.b)), arg_3));
    global0 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.c - global0.c)))), -2147483647i, _wgslsmith_f_op_f32(sign(func_4(Struct_1(865f, 32650i, -1378f, 513f)).a)), _wgslsmith_f_op_f32(f32(-1f) * -1626f)));
    let var_0 = vec3<u32>(min(arg_1.x, _wgslsmith_div_u32(~max(8735u, 25098u), ~1u)), arg_1.x, _wgslsmith_mod_u32(select(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_1.xyx, vec3<u32>(arg_1.x, 1u, 105612u)), vec3<u32>(0u, 4709u, 21503u)), ~0u, any(vec2<bool>(true, true))), abs(~1u)));
    let var_1 = Struct_1(1000f, abs(firstTrailingBit(arg_3.b)), _wgslsmith_f_op_f32(trunc(arg_3.d)), func_1(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-811f * -1693f))), abs(firstLeadingBit(global0.b)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(min(arg_3.d, _wgslsmith_f_op_f32(step(-340f, -280f))))), ~min(_wgslsmith_mult_i32(global0.b, u_input.d.x), _wgslsmith_div_i32(1i, u_input.a.x)), ~(-vec4<i32>(global0.b, 6675i, -46775i, arg_2)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(arg_1, vec4<u32>(var_0.x, arg_1.x, 0u, var_0.x)), select(vec4<u32>(var_0.x, 14973u, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 1u), vec4<bool>(false, false, false, true))) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 1000f)), abs(1i), -946f, 181f)).d);
    var var_2 = true;
    return var_1;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = any(vec2<bool>(all(vec4<bool>(any(vec2<bool>(arg_3.x, arg_3.x)), false, true, arg_1.b < -20436i)), any(func_2().xz)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.c))))) * _wgslsmith_f_op_f32(ceil(global0.d))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-4780i, u_input.d.x, global0.b), u_input.d, select(u_input.d, vec3<i32>(-2147483647i, u_input.a.x, u_input.b.x), arg_3.x)), ~u_input.d), u_input.d), global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2424f))));
    var_0 = global0.b == arg_0.b;
    let var_2 = var_1.a;
    var var_3 = 22366i;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1589f, 1186f)))), ~arg_0.b, _wgslsmith_f_op_f32(-241f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c)))), _wgslsmith_f_op_f32(select(-340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2512f)), any(arg_3) && true)));
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -vec2<i32>(-2147483647i, func_5(vec4<f32>(arg_2.c, _wgslsmith_f_op_f32(-arg_3.a), -367f, arg_0), ~vec4<u32>(1u, 1u, 1u, 1u), ~60331i, func_6(arg_2, Struct_1(652f, -1i, global0.c, 2551f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_1.d, arg_2.d, 238f) + vec4<f32>(arg_3.c, -240f, 573f, 1491f)), vec2<bool>(true, false))).b);
    global0 = func_1(arg_2, 43312i, -(~countOneBits(vec4<i32>(arg_1.b, global0.b, -163i, arg_3.b))), func_4(arg_3));
    let var_1 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-755f + global0.d), _wgslsmith_f_op_f32(max(-723f, arg_2.d)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(func_3(arg_3, arg_2)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a, 2108f, -398f, -293f)))) - vec4<f32>(547f, _wgslsmith_f_op_f32(max(arg_0, -1020f)), _wgslsmith_f_op_f32(func_3(arg_3, Struct_1(arg_2.d, -31437i, arg_2.c, 316f))), _wgslsmith_f_op_f32(abs(arg_2.c))))), ~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, 1u, 1u, 16534u)), vec4<u32>(_wgslsmith_mult_u32(1u, 2215u), firstLeadingBit(4294967295u), 29960u, abs(31967u)), ~abs(vec4<u32>(18643u, 0u, 11810u, 38745u))), ~0i, arg_2);
    var_0 = _wgslsmith_clamp_vec2_i32(countOneBits((-u_input.a | (vec2<i32>(0i, 46012i) | u_input.d.xz)) | u_input.b), min(min(u_input.d.yy, vec2<i32>(_wgslsmith_add_i32(global0.b, arg_1.b), _wgslsmith_mod_i32(6400i, u_input.c.x))), u_input.d.yy), vec2<i32>(2147483647i, ~(arg_3.b ^ global0.b) ^ 5339i));
    var var_2 = Struct_1(-365f, ~_wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, 0i) >> (vec4<u32>(4294967295u, 4294967295u, 22324u, 32155u) % vec4<u32>(32u))), vec4<i32>(-28952i, -51936i, -2147483647i, ~5260i)), _wgslsmith_div_f32(1767f, -431f), arg_0);
    return Struct_1(288f, _wgslsmith_mult_i32(u_input.b.x, -25590i), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2040f, 520f, 1041f, -1153f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -382f, 243f, 297f)))), vec4<u32>(1u, 1u, 1u, 1u), global0.b, Struct_1(1f, _wgslsmith_add_i32(1i, ~var_0.x), 885f, arg_3.d)).d, _wgslsmith_f_op_f32(trunc(-211f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(252f, func_6(func_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.d, global0.d, global0.a)))), ~vec4<u32>(14467u, 0u, 80478u, 6176u), _wgslsmith_mult_i32(-14531i | global0.b, firstTrailingBit(u_input.a.x)), func_4(func_1(Struct_1(global0.c, u_input.c.x, global0.a, -383f), u_input.a.x, vec4<i32>(u_input.c.x, 54389i, -27202i, global0.b), Struct_1(-860f, u_input.b.x, 182f, 1347f)))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a + global0.a), 1000f)), global0.b, _wgslsmith_f_op_f32(-250f - _wgslsmith_div_f32(321f, global0.a)), 903f), _wgslsmith_f_op_vec4_f32(vec4<f32>(func_5(vec4<f32>(global0.a, -725f, global0.a, -1511f), vec4<u32>(1u, 1u, 82u, 17222u), u_input.c.x, Struct_1(-191f, u_input.b.x, -350f, 632f)).c, _wgslsmith_f_op_f32(1067f * -572f), func_1(Struct_1(294f, global0.b, 523f, -1054f), -1i, vec4<i32>(42914i, u_input.a.x, 52303i, -4962i), Struct_1(3061f, global0.b, -214f, global0.a)).d, global0.a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(350f, global0.c, global0.c, 875f)) * vec4<f32>(749f, 1000f, -1295f, 889f))), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), false))), func_4(func_6(func_6(func_5(vec4<f32>(global0.a, 1120f, -617f, global0.a), vec4<u32>(28543u, 37687u, 4294967295u, 1u), 3752i, Struct_1(global0.d, u_input.d.x, global0.c, 1186f)), func_6(Struct_1(-569f, -2147483647i, global0.a, global0.d), Struct_1(global0.d, global0.b, global0.d, global0.d), vec4<f32>(global0.d, -1208f, global0.a, 1293f), vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, global0.c, global0.a, 403f)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), func_1(Struct_1(global0.d, 2147483647i, global0.c, 1129f), max(1920i, 37389i), vec4<i32>(u_input.d.x, u_input.b.x, u_input.b.x, -2147483647i), func_5(vec4<f32>(-1720f, global0.c, 1326f, global0.c), vec4<u32>(41241u, 16734u, 1u, 4294967295u), u_input.a.x, Struct_1(635f, -1i, -259f, -710f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-894f, -225f, global0.a, 1468f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, global0.d, global0.d, -480f))), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true)))), func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1138f - 593f) * 801f), -(-1i & u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global0.a) - 275f), func_4(func_6(Struct_1(-484f, u_input.a.x, global0.d, global0.a), Struct_1(global0.a, -1i, global0.d, global0.d), vec4<f32>(global0.a, 1896f, 1645f, global0.d), vec2<bool>(false, true))).d)));
    var var_0 = func_5(vec4<f32>(global0.c, _wgslsmith_f_op_f32(trunc(-666f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-func_1(Struct_1(-1476f, 1i, -324f, 497f), 2147483647i, vec4<i32>(1i, -1i, global0.b, -2147483647i), Struct_1(global0.c, 0i, -154f, -250f)).a)), global0.c), ~(~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(0u, 0u, 30228u, 38208u), vec4<u32>(0u, 28727u, 4294967295u, 16957u), false), abs(vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), ~vec4<u32>(4294967295u, 21177u, 0u, 1u))), func_1(Struct_1(global0.a, -1i, global0.a, _wgslsmith_f_op_f32(select(global0.a, global0.d, true))), func_6(func_6(Struct_1(global0.a, -1i, global0.c, 640f), Struct_1(518f, global0.b, global0.c, global0.c), vec4<f32>(global0.c, 532f, global0.d, -265f), vec2<bool>(true, false)), Struct_1(1281f, global0.b, global0.d, global0.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, global0.d, -823f, 1645f) - vec4<f32>(1000f, global0.c, global0.d, -1418f)), func_2().zx).b, vec4<i32>(-2147483647i << (0u % 32u), ~global0.b, 1i, select(u_input.d.x, 27742i, true)), func_1(Struct_1(global0.a, -1i, global0.a, global0.d), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, u_input.a.x, 0i), u_input.c), select(vec4<i32>(u_input.a.x, global0.b, 0i, -1i), vec4<i32>(-1i, 2779i, global0.b, global0.b), false), func_1(Struct_1(741f, -1i, -271f, 472f), u_input.c.x, vec4<i32>(-46847i, -2147483647i, 0i, global0.b), Struct_1(253f, 7697i, 187f, global0.d)))).b << ((1u >> (1u % 32u)) % 32u), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a, -1000f, -1000f, 1000f))) * vec4<f32>(-181f, global0.c, global0.d, 326f))), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 8628u, 0u), vec3<u32>(1u, 1u, 48643u)), countOneBits(4294967295u), 9039u, ~4294967295u)), 10440i, Struct_1(func_4(func_1(Struct_1(-284f, global0.b, -951f, global0.c), -11154i, vec4<i32>(-1i, u_input.c.x, 0i, 0i), Struct_1(global0.c, global0.b, -677f, global0.a))).c, 9790i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - 897f) - 1702f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(784f, -1043f))))));
    let var_1 = func_4(func_5(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, global0.c, 1015f, 1000f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a, var_0.a, -1030f, -1491f), vec4<f32>(global0.a, global0.a, global0.a, -1000f), false))), vec4<f32>(_wgslsmith_f_op_f32(min(332f, var_0.d)), _wgslsmith_f_op_f32(-var_0.c), -1223f, var_0.a))), ~select(~vec4<u32>(4294967295u, 16713u, 50788u, 4374u), ~vec4<u32>(0u, 0u, 32905u, 0u), vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec2_i32(~(~u_input.a), select(vec2<i32>(27663i, -13849i) & u_input.a, u_input.d.xz ^ u_input.b, vec2<bool>(false, true))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c * 1606f) + _wgslsmith_div_f32(111f, var_0.d)), u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1542f), -482f)));
    var var_2 = func_4(var_1);
    var var_3 = func_1(Struct_1(func_6(func_7(_wgslsmith_div_f32(1164f, var_0.a), Struct_1(-793f, global0.b, 279f, var_1.a), var_1, var_1), var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 841f, 386f, global0.c))), func_2().xy).a, var_0.b, _wgslsmith_div_f32(func_4(Struct_1(1021f, global0.b, global0.d, -2283f)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1023f + -1088f) + -491f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(vec4<f32>(818f, -1487f, 1000f, var_2.a), vec4<u32>(4294967295u, 4294967295u, 52240u, 4307u), -31242i, Struct_1(var_0.c, var_2.b, var_1.a, -939f)).c - var_2.a) + _wgslsmith_f_op_f32(-var_2.a))), global0.b, _wgslsmith_add_vec4_i32(-firstLeadingBit(~vec4<i32>(var_1.b, u_input.d.x, -2147483647i, -2147483647i)), -((vec4<i32>(-1i, var_2.b, var_2.b, 10455i) | vec4<i32>(16646i, u_input.b.x, 0i, 1i)) << (vec4<u32>(2115u, 1u, 13880u, 58746u) % vec4<u32>(32u)))), func_6(func_7(222f, Struct_1(var_0.c, 4424i, -953f, _wgslsmith_f_op_f32(round(285f))), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1106f, var_0.c, 926f, var_0.c)), vec4<u32>(4294967295u, 0u, 0u, 1969u), _wgslsmith_div_i32(0i, -45437i), var_1), var_1), var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_1.c, 1675f, var_0.d) - vec4<f32>(var_1.c, var_1.d, global0.c, var_1.c)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a, -384f, var_0.c, 486f))))) + vec4<f32>(713f, global0.c, var_2.a, _wgslsmith_f_op_f32(max(-952f, var_2.c)))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), true)));
    var var_4 = -vec3<i32>(~0i, 0i, ~(-var_0.b));
    var var_5 = vec2<bool>(true | any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-620f, _wgslsmith_f_op_f32(-var_0.d), var_0.c))), ~select(~select(vec3<u32>(14117u, 36513u, 50823u), vec3<u32>(1u, 5273u, 0u), var_5.x), vec3<u32>(1u, 1u, 1u), func_2()), vec2<u32>(~(~4294967295u), ~(~_wgslsmith_div_u32(46810u, 29023u))));
}

