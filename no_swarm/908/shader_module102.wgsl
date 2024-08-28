struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(494f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-342f + -2615f), _wgslsmith_f_op_f32(max(1142f, -1053f)), -486f)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(abs(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -2147483647i, 0i), vec3<i32>(13310i, 12468i, 10437i))), select(_wgslsmith_div_vec3_i32(vec3<i32>(-22433i, 2147483647i, 1i), vec3<i32>(-2147483647i, -2147483647i, 31882i)), vec3<i32>(-51905i, 0i, -89345i), vec3<bool>(false, false, false))), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i << (u_input.c.x % 32u), ~(-9879i), ~2147483647i), ~(vec3<i32>(24529i, 42252i, 0i) << (u_input.a % vec3<u32>(32u))))));
    var var_1 = -_wgslsmith_div_vec4_i32(-abs(~vec4<i32>(30713i, var_0.c, var_0.c, 1i)), reverseBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-18513i, var_0.c, -1i, var_0.c), vec4<i32>(2147483647i, var_0.c, var_0.c, var_0.c), vec4<i32>(var_0.c, var_0.c, -18719i, 2225i))));
    let var_2 = 1u;
    var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-1i, 20859i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(var_1.x, var_1.x), ~var_0.c), var_0.c), -var_1.x, _wgslsmith_div_i32(-40749i, -var_1.x)), vec4<i32>(_wgslsmith_mod_i32(-var_0.c >> (max(u_input.a.x, u_input.c.x) % 32u), var_1.x), _wgslsmith_mult_i32(var_0.c, 0i), abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.x, var_0.c), select(vec2<i32>(1i, -1i), var_1.xz, true))), ~abs(var_1.x)));
    var_1 = -abs(~vec4<i32>(var_0.c, var_1.x, -36029i, var_0.c) ^ vec4<i32>(-var_1.x, ~(-10485i), 32369i, -2147483647i));
    return ~vec2<i32>(var_0.c, countOneBits(~var_0.c) & -2147483647i);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_2) -> f32 {
    let var_0 = ~73322u;
    let var_1 = countOneBits(func_3());
    var var_2 = ~var_0;
    let var_3 = arg_2.x;
    var_2 = ~1u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(699f)) + 440f));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = !(!any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(false, false))));
    var_0 = ((reverseBits(_wgslsmith_sub_i32(arg_1.c, arg_1.c)) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, arg_0.x, 7944u, 1u), vec4<u32>(0u, 6981u, 12182u, u_input.a.x) ^ vec4<u32>(arg_2, arg_2, 13145u, 0u)) % 32u)) & (((arg_1.c ^ arg_1.c) >> (~arg_0.x % 32u)) << (0u % 32u))) <= _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c, _wgslsmith_mod_i32(~(-2147483647i), _wgslsmith_div_i32(-24449i, -20787i))), ~select(vec2<i32>(arg_1.c, -6400i), vec2<i32>(1i, 1i), select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    let var_1 = Struct_2(~(arg_1.c << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_2), arg_0) % 32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -600f))))), select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, false, true), select(true, true, false)), vec3<bool>(true, true, arg_1.c >= arg_1.c)), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)), true));
    var var_2 = arg_2;
    var_0 = var_1.c.x && true;
    return Struct_1(arg_1.b.x, _wgslsmith_f_op_vec3_f32(arg_3.zwx - _wgslsmith_f_op_vec3_f32(-arg_1.b)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_1.a, func_3().x) >> (~(~905u) % 32u), var_1.a, -2147483647i));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = func_4(_wgslsmith_div_vec2_u32(~u_input.c, u_input.a.yx), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.b, 1039f), arg_0.b))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-663f, var_0.b, -2051f) * vec3<f32>(1246f, arg_0.b, 1405f))))), 1i), 88431u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(vec2<i32>(var_0.a, -1i), 2370f, vec3<bool>(arg_0.c.x, arg_1.x, true), Struct_2(var_0.a, var_0.b, arg_1))), _wgslsmith_div_f32(332f, 1238f), _wgslsmith_f_op_f32(ceil(var_0.b)), 333f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1031f, -992f, -1212f))))));
    var var_2 = vec3<bool>(true, false, arg_0.c.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(227f, var_0.b))) + 544f), 1399f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a, arg_0.a), vec2<i32>(var_1.c, 2147483647i), vec2<i32>(41540i, -1i)), _wgslsmith_f_op_f32(step(-1055f, -1725f)), arg_0.c, arg_0)) - 1321f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(160f, 817f, 523f, arg_0.b))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b, -985f, arg_0.b, -187f))), arg_0.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(286f, 1232f, arg_0.b, var_1.b.x) + vec4<f32>(var_1.b.x, var_1.b.x, -233f, var_1.b.x)))))));
    var var_4 = countOneBits(countOneBits(vec4<i32>(-32020i, var_1.c << (u_input.c.x % 32u), ~min(var_1.c, 0i), _wgslsmith_mult_i32(39683i >> (u_input.c.x % 32u), -1i))));
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(530f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), -342f))), 396f, var_2.x)), var_1.b, var_1.c);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(arg_0.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-221f, arg_2, arg_0.b.x) + _wgslsmith_f_op_vec3_f32(-arg_0.b)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2), vec3<f32>(-1625f, 1075f, arg_0.a)))), func_1(arg_1, !arg_1.c, _wgslsmith_clamp_u32(66807u, 28057u, 78414u)).b)), ~(~(-2147483647i)));
    var var_1 = !select(select(select(select(vec4<bool>(false, arg_1.c.x, arg_1.c.x, true), vec4<bool>(true, arg_1.c.x, true, false), true), select(vec4<bool>(true, true, false, arg_1.c.x), vec4<bool>(arg_1.c.x, false, arg_1.c.x, false), vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x)), vec4<bool>(arg_1.c.x, arg_1.c.x, false, arg_1.c.x)), select(vec4<bool>(false, true, true, arg_1.c.x), !vec4<bool>(true, false, false, arg_1.c.x), false), select(select(vec4<bool>(false, false, arg_1.c.x, false), vec4<bool>(false, false, arg_1.c.x, true), vec4<bool>(false, arg_1.c.x, arg_1.c.x, true)), vec4<bool>(true, arg_1.c.x, arg_1.c.x, false), select(vec4<bool>(arg_1.c.x, false, arg_1.c.x, arg_1.c.x), vec4<bool>(arg_1.c.x, arg_1.c.x, true, arg_1.c.x), vec4<bool>(arg_1.c.x, true, arg_1.c.x, false)))), select(vec4<bool>(true, true, false, true), select(vec4<bool>(arg_1.c.x, true, false, arg_1.c.x), !vec4<bool>(true, false, arg_1.c.x, true), vec4<bool>(arg_1.c.x, false, false, true)), arg_1.c.x), arg_1.c.x);
    let var_2 = select(var_1.xy, select(!select(arg_1.c.yz, !vec2<bool>(false, var_1.x), var_1.zw), arg_1.c.yy, vec2<bool>(true, !(!arg_1.c.x))), _wgslsmith_f_op_f32(arg_1.b - 110f) != func_1(Struct_2(-5758i, _wgslsmith_f_op_f32(arg_1.b * var_0.b.x), vec3<bool>(arg_1.c.x, false, false)), !vec3<bool>(var_1.x, arg_1.c.x, false), ~1u).a);
    var var_3 = arg_1;
    var var_4 = !select(select(vec4<bool>(false, var_1.x, false, var_2.x && var_2.x), select(vec4<bool>(arg_1.c.x, false, false, false), select(vec4<bool>(var_2.x, false, false, var_1.x), vec4<bool>(arg_1.c.x, var_1.x, var_1.x, true), vec4<bool>(arg_1.c.x, var_1.x, arg_1.c.x, true)), true), true), !vec4<bool>(true, !var_2.x, true, var_2.x || false), any(vec2<bool>(!var_3.c.x, 5564u != u_input.c.x)));
    return vec3<bool>(!(!var_4.x && !var_3.c.x), var_4.x, var_1.x);
}

fn func_6(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(32645u, 40693u), u_input.c.x, 14806u, 4294967295u) << (vec4<u32>(_wgslsmith_sub_u32(0u, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.c.x), u_input.a), 98850u, ~u_input.c.x) % vec4<u32>(32u)), vec4<u32>(select(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, u_input.c.x, u_input.a.x)), u_input.b, true), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 81567u, 1u, 4907u), vec4<u32>(u_input.a.x, u_input.b, 4294967295u, u_input.a.x)), u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(18633u, 1u), 35377u))), vec4<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 31636u), u_input.a.yx), 73130u, 0u));
    var_0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(40825u, 1u, u_input.a.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(var_0.wx, vec2<u32>(28435u, 4294967295u)))), vec4<u32>(u_input.b, _wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.x, 14292u), firstTrailingBit(var_0.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 30745u, 23212u, u_input.b), vec4<u32>(107800u, u_input.a.x, 4294967295u, 15876u)), 58461u));
    var_0 = vec4<u32>(15994u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(var_0.x, u_input.a.x, 26384u) & vec3<u32>(47613u, 0u, var_0.x)), u_input.a), ~(~select(u_input.c.x, u_input.a.x, arg_0.c.x))), countOneBits(38700u), ~(~u_input.c.x));
    var_0 = ~vec4<u32>(4294967295u, min(_wgslsmith_add_u32(var_0.x, u_input.c.x), 26425u), var_0.x, ~u_input.a.x);
    var_0 = ~(~_wgslsmith_div_vec4_u32(select(~vec4<u32>(1u, 4294967295u, u_input.b, 1u), ~vec4<u32>(41171u, var_0.x, u_input.a.x, 1u), true), vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.zxy, vec3<u32>(u_input.a.x, u_input.b, 35315u)), ~var_0.x, _wgslsmith_clamp_u32(u_input.c.x, 26995u, 14774u), u_input.b & 75579u)));
    return _wgslsmith_add_vec2_u32(vec2<u32>(abs(~_wgslsmith_mod_u32(var_0.x, u_input.a.x)), countOneBits(1u)), var_0.yz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(1i << (~4294967295u % 32u), 327f, func_5(func_1(Struct_2(27534i, 282f, vec3<bool>(false, true, false)), vec3<bool>(true, true, false), u_input.c.x), Struct_2(-10814i, 1324f, vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(-1870f + 807f)))) << (_wgslsmith_add_vec2_u32(~(~select(vec2<u32>(0u, 0u), u_input.c, vec2<bool>(true, false))), u_input.c) % vec2<u32>(32u));
    let var_1 = Struct_2(_wgslsmith_clamp_i32(func_1(Struct_2(firstTrailingBit(-37437i), _wgslsmith_f_op_f32(616f - 469f), func_5(Struct_1(1192f, vec3<f32>(-299f, 573f, -668f), -56418i), Struct_2(4550i, -231f, vec3<bool>(false, false, true)), 1251f)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(false, false, false), all(vec3<bool>(false, true, false))), 0u).c, 25695i, -1i), _wgslsmith_div_f32(530f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1660f), _wgslsmith_div_f32(-1302f, -636f))))), select(!func_5(Struct_1(-340f, vec3<f32>(1641f, 773f, 732f), -1i), Struct_2(-23561i, 1356f, vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(floor(1644f))), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, func_5(Struct_1(1528f, vec3<f32>(-1200f, 589f, -570f), 2147483647i), Struct_2(-11703i, -833f, vec3<bool>(false, true, true)), 429f).x), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), true)));
    var var_2 = ~vec4<u32>(var_0.x, ~12960u, ~_wgslsmith_sub_u32(61833u, 18521u), u_input.b);
    var_0 = _wgslsmith_mult_vec2_u32(~(vec2<u32>(var_2.x, 47419u) | (vec2<u32>(var_0.x, var_0.x) ^ var_2.yw)) << (~vec2<u32>(~1u, u_input.b) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(min(~34585u, u_input.b), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, var_2.x), vec3<u32>(70533u, u_input.c.x, var_2.x)))), vec2<u32>(0u, 0u), vec2<u32>(1u, 33267u)));
    let var_3 = ~(-(~max(-vec4<i32>(38121i, 20619i, -8600i, var_1.a), vec4<i32>(2147483647i, var_1.a, var_1.a, var_1.a) | vec4<i32>(1i, var_1.a, var_1.a, 14358i))));
    var_0 = vec2<u32>(1u, func_6(var_1).x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

