struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    var var_0 = true;
    var_0 = any(select(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, false, false, true)), true), vec2<bool>(all(vec3<bool>(false, false, true)), true)), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), true), vec2<bool>(select(false, true, false), false), false), vec2<bool>(true, true)));
    var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(510f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -330f), 1000f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-978f + -558f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = all(!(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false))));
    return _wgslsmith_sub_vec4_u32(vec4<u32>(24430u, ~(~u_input.b), arg_0, ~4294967295u & _wgslsmith_mod_u32(u_input.c, u_input.b)), ~firstLeadingBit(vec4<u32>(1u, 0u, 5827u, arg_0) << (vec4<u32>(u_input.a.x, arg_0, 4294967295u, u_input.a.x) % vec4<u32>(32u)))) & reverseBits(~min(vec4<u32>(arg_0, u_input.a.x, u_input.a.x, 1u), abs(vec4<u32>(0u, 39820u, u_input.c, u_input.b))));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_5(abs(~vec3<u32>(u_input.b, u_input.a.x, 22918u) ^ _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, u_input.a.x, u_input.a.x), ~vec3<u32>(1u, 51423u, u_input.c))), abs(~(~func_3(u_input.b))), -vec4<i32>(-abs(-1i), 1i, 2147483647i, 1i), Struct_1(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), true, any(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-173f + -1005f), -762f)), ~vec4<u32>(~19711u, ~u_input.a.x, u_input.c << (28262u % 32u), _wgslsmith_mult_u32(u_input.b, u_input.a.x)), ~func_3(~4294967295u)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) << ((vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) & (vec4<u32>(40926u, 53404u, u_input.c, 52991u) & vec4<u32>(42730u, 27801u, 24810u, u_input.a.x))) % vec4<u32>(32u)), firstLeadingBit(min(vec4<i32>(-6992i, 34879i, 10079i, 18595i), vec4<i32>(1i, 1i, 1i, 1i)))));
    let var_1 = Struct_4(var_0.c.ywx);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.d.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - -501f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -927f) * 2079f) * var_0.d.b.x));
    var var_3 = var_0.c.zzw;
    var_3 = var_1.a;
    return var_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4) -> vec3<i32> {
    var var_0 = Struct_1(select(vec3<bool>(!arg_0.x, func_3(u_input.a.x).x < 0u, !arg_0.x), select(arg_0.xyx, arg_0.yyy, !arg_0.xyw), vec3<bool>(false, true, any(arg_0.xx))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-856f, -1909f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -590f), _wgslsmith_f_op_f32(sign(602f)))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-598f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-867f)) - _wgslsmith_f_op_f32(-819f * 1000f)))), _wgslsmith_clamp_vec4_u32(~select(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 1u), vec4<u32>(u_input.c, u_input.a.x, 53718u, u_input.c) ^ vec4<u32>(21397u, 1u, u_input.c, 46638u), !vec4<bool>(false, true, false, arg_0.x)), ~(~countOneBits(vec4<u32>(u_input.a.x, 59145u, 4294967295u, u_input.b))), firstLeadingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 75612u), vec4<u32>(6047u, u_input.c, u_input.c, u_input.c), vec4<u32>(4294967295u, 1u, 1u, 1u)))), vec4<u32>(u_input.b, ~_wgslsmith_div_u32(0u, ~u_input.a.x), firstTrailingBit(select(_wgslsmith_mod_u32(u_input.c, u_input.b), ~1u, arg_0.x)), u_input.b));
    var var_1 = -1i;
    let var_2 = ~(~_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(var_0.d.wyw, vec3<u32>(u_input.a.x, 35058u, var_0.d.x)), var_0.c.yww));
    var_1 = 2147483647i;
    var var_3 = -949f;
    return arg_1.a | vec3<i32>(min(-2147483647i, arg_1.a.x), _wgslsmith_clamp_i32(-arg_1.a.x << ((var_0.d.x >> (97002u % 32u)) % 32u), _wgslsmith_clamp_i32(arg_1.a.x, 2147483647i, arg_1.a.x), 24315i), func_2().a.x);
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<f32>) -> Struct_5 {
    return Struct_5(abs(reverseBits(vec3<u32>(u_input.b, u_input.a.x, _wgslsmith_clamp_u32(u_input.b, 12299u, 0u)))), select(vec4<u32>(4294967295u, ~(u_input.c ^ 28141u), 1u, ~max(u_input.b, 70219u)), reverseBits(select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.b, u_input.c, 4294967295u), vec4<u32>(u_input.b, 0u, u_input.a.x, 1u)), reverseBits(vec4<u32>(u_input.c, 11396u, u_input.b, 49237u)), select(vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), vec4<bool>(true, true, true, false), false))), select(!select(vec4<bool>(false, true, true, arg_2.x), vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true)), vec4<bool>(true, true, true, true), !any(vec2<bool>(true, true)))), vec4<i32>(-(~countOneBits(2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, ~arg_1, abs(-2147483647i)), select(min(vec3<i32>(arg_1, -31154i, 1i), vec3<i32>(arg_1, arg_1, -2147483647i)), countOneBits(vec3<i32>(27345i, -54631i, arg_1)), !vec3<bool>(false, false, arg_2.x))), -73023i, -arg_1), Struct_1(!select(vec3<bool>(false, arg_2.x, true), !vec3<bool>(false, false, arg_2.x), !arg_2.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 - -238f), 899f) * _wgslsmith_f_op_vec2_f32(select(arg_3.zz, _wgslsmith_f_op_vec2_f32(arg_3.xy + vec2<f32>(454f, arg_0)), vec2<bool>(true, arg_2.x)))), vec4<u32>(1u ^ u_input.c, firstLeadingBit(~1u), u_input.c, ~(u_input.c << (u_input.a.x % 32u))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(63951u, 45512u, u_input.a.x, 0u), ~vec4<u32>(u_input.b, u_input.c, 4294967295u, 0u)), min(vec4<u32>(926u, u_input.c, 2267u, 0u), vec4<u32>(u_input.c, u_input.b, 1u, 41141u)))), -16756i);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-1374f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(step(-181f, arg_1.b.x))));
    var var_1 = func_5(_wgslsmith_f_op_f32(floor(arg_1.b.x)), _wgslsmith_dot_vec3_i32(func_4(arg_3, func_2()), abs(vec3<i32>(-1i, -1i, -54863i))) | -63975i, vec2<bool>(all(vec4<bool>(false, true, arg_3.x, arg_3.x)) && arg_1.a.x, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, arg_0, var_0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0, arg_1.b.x, 634f), vec3<f32>(var_0, var_0, arg_0))))));
    var_1 = func_5(var_0, _wgslsmith_mult_i32(var_1.e, -(~(-6189i))), !select(vec2<bool>(true, all(vec3<bool>(false, arg_1.a.x, false))), arg_3.yy, all(vec4<bool>(arg_3.x, var_1.d.a.x, true, false))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1072f, -1351f, _wgslsmith_f_op_f32(-var_1.d.b.x)))));
    var var_2 = Struct_4(-_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, 20201i, 20284i), vec3<i32>(var_1.e, var_1.c.x, -1i)), firstLeadingBit(abs(vec3<i32>(var_1.c.x, var_1.c.x, var_1.e)))));
    var_2 = func_2();
    return !select(select(func_5(arg_0, func_4(arg_3, Struct_4(var_1.c.xxw)).x, !vec2<bool>(var_1.d.a.x, arg_3.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(620f, arg_1.b.x, 266f), vec3<f32>(arg_1.b.x, arg_1.b.x, -574f), vec3<bool>(true, false, var_1.d.a.x)))).d.a, arg_3.xyw, vec3<bool>(arg_3.x, arg_3.x, false)), arg_1.a, select(arg_3.wzw, vec3<bool>(func_5(var_1.d.b.x, 56879i, vec2<bool>(false, false), vec3<f32>(1420f, var_0, arg_1.b.x)).d.a.x, true, arg_1.a.x), select(vec3<bool>(arg_1.a.x, arg_3.x, arg_1.a.x), !arg_3.zyy, arg_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~((vec2<i32>(0i, 0i) << (u_input.a % vec2<u32>(32u))) | ~select(vec2<i32>(31451i, -2147483647i), vec2<i32>(-25382i, 0i), true)));
    var var_1 = Struct_1(func_1(-551f, Struct_1(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1340f, -739f) + vec2<f32>(1364f, 1548f)) + vec2<f32>(-677f, -662f)), vec4<u32>(~101671u, u_input.c ^ 81082u, 4294967295u, u_input.c), ~vec4<u32>(12983u, u_input.c, 0u, u_input.c)), firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.b, u_input.a.x), vec3<u32>(u_input.b, u_input.a.x, 70396u))), vec4<bool>(false, all(vec2<bool>(true, true)), !all(vec4<bool>(false, false, true, false)), false)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(759f - 280f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1316f) + -467f), ~_wgslsmith_clamp_i32(1i, var_0.x, -2147483647i), vec2<bool>(true, any(vec4<bool>(true, false, false, true))), vec3<f32>(_wgslsmith_f_op_f32(366f - 953f), _wgslsmith_f_op_f32(-446f * -605f), _wgslsmith_f_op_f32(f32(-1f) * -101f))).d.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 25883u, u_input.a.x, u_input.b), select(vec4<u32>(u_input.b, 90970u, u_input.c, 4294967295u), vec4<u32>(0u, u_input.c, u_input.b, 40226u) | vec4<u32>(1u, u_input.b, u_input.c, u_input.a.x), true), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, 6857u, 67958u), func_5(748f, 1i, vec2<bool>(true, false), vec3<f32>(-1219f, -971f, 1825f)).b)) | _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 10869u, 4294967295u, 0u), vec4<u32>(u_input.c, u_input.b, 82u, 1u) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 13494u, 1u, u_input.b), vec4<u32>(u_input.a.x, u_input.c, 4294967295u, 40304u))), select(vec4<u32>(0u, u_input.c, 40375u, u_input.b), ~vec4<u32>(80842u, 4294967295u, 0u, u_input.b), vec4<bool>(true, true, true, true))), vec4<u32>(max(~(~u_input.c), 1u), abs(4294967295u), u_input.a.x, u_input.a.x));
    var_1 = Struct_1(vec3<bool>(var_1.a.x, !var_1.a.x != func_5(108f, _wgslsmith_sub_i32(var_0.x, var_0.x), func_1(var_1.b.x, Struct_1(vec3<bool>(var_1.a.x, false, false), var_1.b, var_1.d, var_1.c), var_1.d.x, vec4<bool>(false, var_1.a.x, true, var_1.a.x)).xz, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x)))).d.a.x, !var_1.a.x), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1809f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, -1141f))), ~_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(10018u, var_1.c.x, 47655u, var_1.c.x), vec4<u32>(0u, u_input.b, 37581u, u_input.c)), vec4<u32>(52388u, _wgslsmith_dot_vec2_u32(var_1.c.xx, u_input.a), 4294967295u, 6963u)), ~var_1.d);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-577f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-828f, var_1.b.x))))));
    var_1 = func_5(-264f, countOneBits(_wgslsmith_clamp_i32(~(-var_0.x), _wgslsmith_div_i32(i32(-1i) * -69600i, var_0.x & 5386i), 55285i ^ firstTrailingBit(26738i))), select(vec2<bool>(true, true), select(!var_1.a.xz, func_5(_wgslsmith_f_op_f32(round(-660f)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2002i, var_0.x, 42399i), vec4<i32>(1i, -37667i, var_0.x, var_0.x)), vec2<bool>(var_1.a.x, false), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -454f, var_2)))).d.a.yy, all(vec2<bool>(var_1.a.x, var_1.a.x))), func_5(_wgslsmith_f_op_f32(round(func_5(var_1.b.x, var_0.x, vec2<bool>(true, var_1.a.x), vec3<f32>(-546f, -246f, -513f)).d.b.x)), select(var_0.x >> (u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(25271i, var_0.x, 1i, var_0.x)), false), select(func_5(var_1.b.x, var_0.x, vec2<bool>(false, true), vec3<f32>(2035f, -134f, var_2)).d.a.zz, var_1.a.yz, func_5(-420f, var_0.x, vec2<bool>(false, false), vec3<f32>(var_1.b.x, 314f, 601f)).d.a.x), vec3<f32>(1487f, _wgslsmith_div_f32(var_2, -864f), _wgslsmith_div_f32(var_1.b.x, 1111f))).d.a.yy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2, -1271f, -565f)))))).d;
    var var_3 = vec2<f32>(-332f, -533f);
    var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1109f + -372f)))), 704f);
    let var_4 = vec2<bool>(var_1.a.x, min(0i, _wgslsmith_clamp_i32(32707i, _wgslsmith_add_i32(var_0.x, 0i), var_0.x)) > -2147483647i);
    var var_5 = !(!var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~4294967295u, 1u), _wgslsmith_f_op_f32(f32(-1f) * -528f), ~(~(~vec4<u32>(32484u, 56674u, 0u, var_1.d.x))) >> (~vec4<u32>(6895u, _wgslsmith_add_u32(6442u, var_1.c.x), 0u & var_1.d.x, abs(1989u)) % vec4<u32>(32u)));
}

