struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = 35654u;
    return min(u_input.b.x, var_1 >> (var_1 % 32u));
}

fn func_2() -> i32 {
    let var_0 = true;
    var var_1 = Struct_1(true, 65421i, _wgslsmith_clamp_vec2_i32(-(~vec2<i32>(1i, 52972i) << (_wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, u_input.b.xx) % vec2<u32>(32u))), vec2<i32>(1i, 1i), _wgslsmith_add_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(14619i, 13865i), vec2<i32>(-34602i, 2147483647i)), vec2<i32>(_wgslsmith_add_i32(-1i, -5973i), 1i))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(748f, _wgslsmith_f_op_f32(-806f - 984f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_div_f32(367f, 559f))), 275f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1172f, -1118f, 1000f), vec3<f32>(-1000f, 2100f, -1215f)), vec3<f32>(-331f, -298f, -446f), !vec3<bool>(var_0, var_0, var_0))) * vec3<f32>(-1593f, -1000f, -1050f))), vec4<u32>(func_3(Struct_1(var_0, 10471i, ~vec2<i32>(-1i, -1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1344f, -758f, -728f)), ~u_input.b), countOneBits(2147483647i)), min(_wgslsmith_add_u32(u_input.a.x, 13458u) << (~u_input.a.x % 32u), ~_wgslsmith_add_u32(1489u, 0u)), _wgslsmith_mult_u32(~abs(8735u), ~(u_input.b.x ^ 42271u)), u_input.a.x));
    var_1 = Struct_1(all(!select(select(vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(var_0, var_0, false), true), select(vec3<bool>(false, true, var_0), vec3<bool>(var_1.a, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(var_1.a, var_0, false), vec3<bool>(var_1.a, true, var_1.a)))), var_1.b, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(-var_1.c, var_1.c), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(var_1.c.x, var_1.b)), -var_1.c), var_1.c, max(countOneBits(var_1.c), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.c.x, var_1.c.x), vec2<i32>(-1i, var_1.b))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(233f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x * 181f)), 1080f), var_1.d), max(var_1.e, _wgslsmith_mult_vec4_u32(select(~vec4<u32>(14118u, var_1.e.x, 56316u, 12384u), var_1.e, true), var_1.e)));
    var var_2 = Struct_1(var_1.a, var_1.b, -firstTrailingBit(var_1.c), _wgslsmith_f_op_vec3_f32(var_1.d + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d) + vec3<f32>(var_1.d.x, -454f, var_1.d.x)) + _wgslsmith_f_op_vec3_f32(sign(var_1.d)))), _wgslsmith_add_vec4_u32(~(~(~u_input.b)), ~vec4<u32>(_wgslsmith_mult_u32(0u, u_input.b.x), u_input.b.x, _wgslsmith_mod_u32(4294967295u, var_1.e.x), var_1.e.x)));
    var_1 = Struct_1(var_1.a, ~var_2.c.x, var_1.c >> (u_input.a % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-548f, var_1.d.x, -902f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -597f, 174f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1755f, 573f, -1665f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-977f, var_1.d.x, 1190f))))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 18873u, u_input.a.x, var_2.e.x), var_2.e, vec4<u32>(32589u, var_1.e.x, var_1.e.x, 0u)), var_1.e, vec4<u32>(var_1.e.x, var_2.e.x, var_1.e.x, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, var_2.e.x, u_input.a.x | var_2.e.x)), select(u_input.b, var_1.e, true)));
    return var_2.c.x;
}

fn func_1() -> Struct_1 {
    var var_0 = abs(abs(vec4<i32>(firstTrailingBit(-26804i) | ~26337i, 1i, _wgslsmith_mult_i32(func_2(), max(-57798i, -5399i)), -(~1i))));
    var var_1 = Struct_1(all(select(vec3<bool>(true, any(vec2<bool>(false, false)), true), vec3<bool>(true, true, true), true)), var_0.x, var_0.zw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1432f, 1326f, 1161f)) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -148f), _wgslsmith_f_op_f32(f32(-1f) * -227f)))), u_input.b);
    var_1 = Struct_1(!var_1.a, var_0.x, vec2<i32>(2147483647i, var_0.x), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.x, var_1.d.x)), var_1.d.x), var_1.d), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, ~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(32490u, 86408u, 4294967295u) << (var_1.e.wzy % vec3<u32>(32u)), min(var_1.e.xxz, vec3<u32>(u_input.b.x, 12751u, u_input.a.x))), min(var_1.e.x, _wgslsmith_div_u32(u_input.a.x, 5216u))), vec4<u32>(~(~var_1.e.x), 1u, 0u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b.x, u_input.a.x), firstLeadingBit(var_1.e.x), 89479u))));
    var var_2 = Struct_1(var_1.d.x >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.d.x))), ~var_0.x, ~(-(~var_1.c)), var_1.d, ~var_1.e);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(615f, 1162f)), _wgslsmith_f_op_vec2_f32(var_2.d.xy - vec2<f32>(361f, -395f)), vec2<bool>(true, var_2.e.x != var_2.e.x)))));
    return Struct_1(true, -(i32(-1i) * -1i), var_0.xx, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_2.d.x)), _wgslsmith_f_op_f32(ceil(var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.d.x)))))), ~u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = select(-countOneBits(-vec3<i32>(arg_0.b, -2147483647i, 0i) | abs(vec3<i32>(20242i, 34231i, arg_0.c.x))), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(~(-2147483647i), _wgslsmith_clamp_i32(2147483647i, arg_0.c.x, 1585i), abs(9724i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_0.c.x, arg_0.b), vec3<i32>(arg_0.b, arg_0.c.x, 75590i)), select(arg_0.b, arg_0.b, true), 2147483647i << (arg_1.x % 32u)))), _wgslsmith_f_op_f32(select(166f, _wgslsmith_f_op_f32(150f - _wgslsmith_f_op_f32(345f + arg_0.d.x)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true))))) > arg_0.d.x);
    return Struct_1(select(!(arg_0.d.x < arg_0.d.x) | true, true, arg_0.a && (arg_0.d.x == arg_0.d.x)), var_0.x, firstTrailingBit(-var_0.zx), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x))), arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x))), u_input.b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<u32>) -> vec3<i32> {
    var var_0 = Struct_1(false, firstTrailingBit(-11007i), _wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(arg_1.c, arg_0.c), arg_1.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, -1263f, 835f))), u_input.b);
    var_0 = func_4(func_4(arg_1, u_input.b), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(func_4(arg_1, select(u_input.b, vec4<u32>(1u, 0u, 5831u, 1u), vec4<bool>(arg_0.a, arg_0.a, arg_2.x, false))).e, _wgslsmith_div_vec4_u32(arg_0.e ^ vec4<u32>(0u, arg_0.e.x, 34321u, 4294967295u), abs(vec4<u32>(20520u, arg_0.e.x, var_0.e.x, 7670u)))), arg_0.e));
    let var_1 = ~43721u;
    var_0 = arg_1;
    var_0 = Struct_1(true, ~arg_1.c.x, func_4(Struct_1(true, var_0.b, countOneBits(vec2<i32>(-45791i, arg_0.b)), _wgslsmith_f_op_vec3_f32(arg_0.d - arg_0.d), ~vec4<u32>(arg_3.x, arg_1.e.x, 36716u, var_1)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(arg_3.x, 1u, var_1, arg_1.e.x)), vec4<u32>(1u, u_input.b.x, u_input.b.x, 4294967295u))).c & _wgslsmith_sub_vec2_i32(arg_0.c, var_0.c), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(func_4(func_1(), max(vec4<u32>(108570u, 0u, var_0.e.x, 19084u), u_input.b)).d)))), ~u_input.b);
    return select(vec3<i32>(_wgslsmith_div_i32(-2147483647i, ~37325i), firstLeadingBit(62841i), var_0.b), reverseBits(min(max(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, arg_0.c.x, 2147483647i), vec3<i32>(-63415i, 2147483647i, -2147483647i)), vec3<i32>(arg_0.c.x, var_0.c.x, 5536i)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.c.x, var_0.b, arg_1.b), firstTrailingBit(vec3<i32>(arg_0.c.x, arg_0.b, arg_1.b))))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(), u_input.b), Struct_1(~u_input.a.x == _wgslsmith_add_u32(u_input.b.x, _wgslsmith_div_u32(u_input.a.x, 0u)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)), ~(~vec2<i32>(-19540i, -16999i))), -vec2<i32>(max(2147483647i, -88554i), -37047i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2213f, 899f, 236f) - vec3<f32>(744f, 822f, 324f)))), vec4<u32>(~65642u, u_input.b.x, func_1().e.x, _wgslsmith_add_u32(u_input.a.x, u_input.b.x)) | (_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(u_input.a.x, 1u, u_input.b.x, 4294967295u)) ^ ~vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 40213u))), vec2<bool>(true, true), select(u_input.b.xxy, ~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, 1u), vec3<u32>(u_input.b.x, 0u, u_input.b.x))), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, true)), true)));
    var_0 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_0.yx, vec2<i32>(-9341i, var_0.x) ^ -var_0.yx), var_0.x), ~(~var_0.x), 0i);
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(func_4(func_1(), func_1().e).d.x)), _wgslsmith_div_f32(-1696f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(418f + 784f) - 482f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -628f)))))));
    let var_2 = Struct_1(func_4(Struct_1(false, var_0.x, func_1().c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-346f, 1201f, -518f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2003f, -863f, 1596f))), abs(~u_input.b)), min(vec4<u32>(func_4(Struct_1(true, 11641i, vec2<i32>(var_0.x, 1i), vec3<f32>(113f, 837f, 1289f), u_input.b), u_input.b).e.x, ~33351u, u_input.a.x, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(61105u, 25181u, 0u, 4294967295u), func_4(Struct_1(false, var_0.x, var_0.yz, vec3<f32>(-677f, 1189f, -1000f), u_input.b), vec4<u32>(u_input.b.x, u_input.b.x, 50974u, 69834u)).e))).a, var_0.x, -abs(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.xy, vec2<i32>(var_0.x, -2147483647i), var_0.zx), ~vec2<i32>(-11395i, 19719i))), _wgslsmith_div_vec3_f32(vec3<f32>(func_4(func_1(), reverseBits(vec4<u32>(0u, u_input.b.x, u_input.a.x, 0u))).d.x, 311f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-700f - -1708f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-489f - 148f), 1058f, _wgslsmith_div_f32(-448f, -302f)))), vec4<u32>(abs(~func_3(Struct_1(true, -2147483647i, vec2<i32>(var_0.x, var_0.x), vec3<f32>(-698f, 1133f, -1000f), vec4<u32>(4294967295u, 14787u, u_input.b.x, 37428u)), 1i)), u_input.b.x, reverseBits(~u_input.b.x), u_input.a.x));
    var_1 = var_2.d.x;
    let var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -34549i, ~var_0.x, max(-var_0.x & ~1i, ~(var_2.c.x << (var_2.e.x % 32u)))), -(~(-vec4<i32>(-57428i, 29963i, 27172i, -39641i) | ~vec4<i32>(var_0.x, 10020i, var_2.b, var_2.b))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(max(_wgslsmith_dot_vec3_u32(var_2.e.wxy, var_2.e.zyx & var_2.e.xyy), _wgslsmith_clamp_u32(50903u, 4294967295u, var_2.e.x) << (var_2.e.x % 32u))));
}

