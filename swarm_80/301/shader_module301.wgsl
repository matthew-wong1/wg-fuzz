struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<bool>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<i32> {
    let var_0 = Struct_1(arg_1.a, arg_1.e, !arg_1.c, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, 30442i, _wgslsmith_add_i32(5960i, 54039i), arg_1.d & -2147483647i), min(~vec4<i32>(0i, -28637i, 2147483647i, -23023i), firstTrailingBit(vec4<i32>(2147483647i, u_input.a, -2147483647i, arg_1.d))) << (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(13255u, 1u, 29316u, 92672u)), reverseBits(vec4<u32>(arg_0, 4294967295u, 1u, 79752u))) % vec4<u32>(32u))), arg_1.a.x);
    var var_1 = var_0;
    var var_2 = ~(~max(select(~vec4<u32>(arg_0, 1u, 82736u, arg_0), ~vec4<u32>(1u, arg_0, 1u, 29829u), vec4<bool>(var_0.e, var_0.a.x, false, true)), firstTrailingBit(vec4<u32>(arg_0, 82551u, 4294967295u, 4294967295u)) << (~vec4<u32>(arg_2.x, arg_0, arg_0, 4294967295u) % vec4<u32>(32u))));
    return vec4<i32>(-1i, -_wgslsmith_div_i32(arg_1.d, 0i), -59784i, var_0.d);
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<u32>) -> u32 {
    return ~0u;
}

fn func_2() -> i32 {
    var var_0 = min(vec2<u32>(~(~_wgslsmith_div_u32(70643u, 4294967295u)), 67834u), ~vec2<u32>(_wgslsmith_div_u32(abs(65981u), 1u), func_4(func_3(0u, Struct_1(vec3<bool>(false, false, false), true, vec2<bool>(true, false), u_input.c, true), vec2<u32>(21351u, 79799u)), _wgslsmith_f_op_f32(130f + -1000f), vec2<u32>(107968u, 25641u))));
    var var_1 = i32(-1i) * -_wgslsmith_add_i32(u_input.c, u_input.a);
    let var_2 = Struct_1(vec3<bool>(false, true, false), true, !vec2<bool>(_wgslsmith_add_i32(u_input.a, 2147483647i) <= (-1i >> (var_0.x % 32u)), true), u_input.c, true);
    return 1i;
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = 0i;
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(4602u, 65589u, ~(~_wgslsmith_div_u32(4608u, 4294967295u)), abs(~1u)), countOneBits(select(vec4<u32>(782u, 1u, 0u, 17667u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), true) << (vec4<u32>(13807u, 10296u, 1u, 33949u) % vec4<u32>(32u))) & vec4<u32>(1u, 1u, 1u, 1u));
    let var_2 = Struct_1(select(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), vec3<bool>(true, true, true), true), !(!all(vec3<bool>(false, true, false))), vec2<bool>(false, true || all(vec2<bool>(false, false))), u_input.c, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)));
    let var_3 = var_1;
    let var_4 = var_2;
    return Struct_1(select(!(!var_2.a), !var_2.a, vec3<bool>(true, true, true)), true, var_2.a.zx, _wgslsmith_add_i32(func_2(), u_input.c), false);
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = func_5(~(~func_3(~arg_0, arg_1, vec2<u32>(90243u, arg_0)).x), vec3<i32>(36903i, _wgslsmith_mult_i32((0i | u_input.b) | u_input.a, u_input.c), arg_1.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-116f, -489f, 539f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1157f, -1000f, -814f)), vec3<bool>(arg_1.a.x, false, true))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1293f, arg_2, 2305f), vec3<f32>(arg_3, 1764f, -346f), arg_1.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1472f, 501f, 2015f)))) + vec3<f32>(arg_3, _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(round(-839f))), -371f)), vec3<i32>(reverseBits(-arg_1.d), arg_1.d, u_input.c ^ arg_1.d) & vec3<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a) >> (~64386u % 32u), u_input.c, select(~19192i, firstLeadingBit(-2282i), arg_1.e)));
    let var_1 = Struct_1(func_5(min(~(-u_input.b), max(arg_1.d, 33854i | arg_1.d)), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(arg_1.d, arg_1.d, var_0.d)), vec3<i32>(-1i) * -vec3<i32>(u_input.c, -9352i, u_input.b)), vec3<f32>(360f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_2)))), arg_2), vec3<i32>(2147483647i, _wgslsmith_mult_i32(var_0.d << (31499u % 32u), 240i), _wgslsmith_div_i32(u_input.c, 2147483647i))).a, !var_0.c.x | !(!arg_1.e), !(!func_5(arg_1.d, ~vec3<i32>(2147483647i, -9576i, arg_1.d), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(108f, -1491f, 582f))), max(vec3<i32>(-2147483647i, var_0.d, u_input.b), vec3<i32>(12124i, 49622i, arg_1.d))).c), firstLeadingBit(0i), false);
    let var_2 = vec2<bool>(var_0.b, any(select(select(vec2<bool>(true, true), vec2<bool>(var_1.c.x, var_1.e), var_1.e), !select(var_1.a.zx, arg_1.c, arg_1.a.zx), vec2<bool>(!arg_1.a.x, any(var_0.c)))));
    var var_3 = var_1.c.x;
    var_3 = true;
    return arg_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1343f)) * _wgslsmith_f_op_f32(-1000f - -188f)))), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(min(arg_1, -843f))));
    var var_1 = arg_0;
    let var_2 = func_6(5728u, func_5(max(_wgslsmith_div_i32(u_input.a, u_input.c), max(reverseBits(-2147483647i), u_input.b)), ~(vec3<i32>(-2147483647i, -1i, -45102i) ^ vec3<i32>(2147483647i, u_input.b, u_input.c)) >> (vec3<u32>(1u, firstTrailingBit(64543u), ~45481u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(107f, -2051f, 1000f), vec3<f32>(var_0.x, -745f, -1000f)) * vec3<f32>(var_1.x, 223f, var_1.x))), -vec3<i32>(u_input.c | u_input.c, ~u_input.c, func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(trunc(arg_1))), -1595f);
    var var_3 = var_2;
    let var_4 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, ~4294967295u, reverseBits(0u)), _wgslsmith_add_u32(countOneBits(0u), abs(7794u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(abs(0u), _wgslsmith_mod_u32(4294967295u, 4294967295u), ~97679u), vec3<u32>(~59795u, 1u, max(0u, 27192u)), vec3<u32>(~97516u, countOneBits(1u), ~37835u))));
    return Struct_1(!var_3.a, true, vec2<bool>(~1i > (countOneBits(var_2.d) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, u_input.c, var_3.d), vec4<i32>(-2147483647i, u_input.b, 1i, u_input.c))), var_3.e), -(func_2() ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d, var_2.d), vec2<i32>(4104i, u_input.c)) & u_input.c)), true);
}

fn func_7(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = vec3<bool>(func_5(-60592i, min(-vec3<i32>(46867i, u_input.b, u_input.a), ~vec3<i32>(-32970i, -31854i, -1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-913f, arg_1.x, 1000f) - vec3<f32>(arg_1.x, arg_1.x, -1698f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, arg_1.x, arg_1.x)))))), firstLeadingBit(select(firstTrailingBit(vec3<i32>(-69139i, -52464i, u_input.c)), vec3<i32>(u_input.a, arg_3.d, arg_3.d) | vec3<i32>(arg_3.d, 2147483647i, -56638i), vec3<bool>(arg_0.x, arg_0.x, arg_2)))).c.x, any(arg_0.yzy), any(vec3<bool>(true, false, false)));
    let var_1 = Struct_1(!select(arg_3.a, !arg_0.yzy, !all(arg_0)), false, !select(var_0.xz, !arg_3.a.zz, true), _wgslsmith_dot_vec2_i32(firstLeadingBit(~vec2<i32>(0i, arg_3.d)), firstTrailingBit(~vec2<i32>(41043i, -17495i))), func_6(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), arg_3, arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_1.x))))).e);
    let var_2 = arg_3;
    let var_3 = vec2<bool>(true, true);
    var var_4 = func_1(_wgslsmith_f_op_vec2_f32(min(arg_1, _wgslsmith_f_op_vec2_f32(-arg_1))), arg_1.x);
    return func_6(~func_4(abs(vec4<i32>(-1i, u_input.a, 1i, var_4.d)), _wgslsmith_f_op_f32(803f * arg_1.x), firstTrailingBit(vec2<u32>(15581u, 4294967295u))) >> (1u % 32u), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -476f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, false))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-823f, -852f)), 460f)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(-1002f));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-358f, 1f), _wgslsmith_f_op_f32(764f - -840f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-833f, 108f))), -509f);
    var var_2 = var_1.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-572f)));
    let var_3 = Struct_1(func_7(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1909f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * vec2<f32>(542f, -1628f)))), true, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1254f, var_1.x), var_1, vec2<bool>(false, true))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-581f, 437f))), var_1.x)), !(!func_6(_wgslsmith_div_u32(4294967295u, 1u), Struct_1(vec3<bool>(true, true, true), false, vec2<bool>(true, false), u_input.b, false), _wgslsmith_f_op_f32(floor(-1000f)), 599f).b), !vec2<bool>(func_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, var_1.x))), 1820f).b, true), 1i, true);
    var_0 = var_1.x;
    let var_4 = 4294967295u != _wgslsmith_dot_vec3_u32(vec3<u32>(1u, abs(101079u), func_4(vec4<i32>(133i, -2147483647i, u_input.a, 26838i), -727f, vec2<u32>(25228u, 4294967295u))) ^ vec3<u32>(~1u, abs(4294967295u), _wgslsmith_clamp_u32(4294967295u, 61649u, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(firstLeadingBit(12513u), 1u, 0u), ~vec3<u32>(31968u, 50131u, 5995u), abs(~vec3<u32>(59051u, 1u, 0u))));
    var var_5 = func_6(1u, Struct_1(select(var_3.a, !(!var_3.a), !(!var_3.a)), true, !var_3.a.xy, -2147483647i, var_3.e), _wgslsmith_div_f32(var_1.x, var_1.x), -328f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 536f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-453f, 1000f, var_1.x), vec3<f32>(362f, -1731f, var_1.x), vec3<bool>(var_5.a.x, true, var_5.e)))))), ~46461u);
}

