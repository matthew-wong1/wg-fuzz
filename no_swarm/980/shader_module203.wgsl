struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_3) -> vec3<f32> {
    var var_0 = 0i;
    var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b, max(~u_input.b, ~vec3<i32>(-27256i, u_input.b.x, -1i))) | (vec3<i32>(firstLeadingBit(27591i), min(0i, u_input.c), ~arg_3.c.b.a) | ~(vec3<i32>(8157i, u_input.a.x, u_input.a.x) >> (arg_3.b.yzw % vec3<u32>(32u)))), u_input.b);
    let var_1 = _wgslsmith_sub_u32(~max(arg_3.b.x, _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(70573u, arg_1.x))), _wgslsmith_sub_u32(28462u, _wgslsmith_div_u32(~arg_1.x, abs(max(arg_1.x, 80557u)))));
    var var_2 = 318f;
    var_0 = _wgslsmith_dot_vec2_i32(u_input.b.zz, _wgslsmith_sub_vec2_i32(u_input.a, ~vec2<i32>(14201i, _wgslsmith_div_i32(arg_0.a, arg_3.c.b.a))));
    return _wgslsmith_f_op_vec3_f32(arg_3.a.d * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_2, 117f), _wgslsmith_f_op_f32(f32(-1f) * -1171f), arg_2), arg_0.d) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(875f, -1301f, 546f)))))));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1605f + _wgslsmith_f_op_f32(round(arg_1))), _wgslsmith_f_op_f32(-724f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(416f + 1068f)))));
    var var_1 = Struct_3(arg_0.b, ~countOneBits(vec4<u32>(1u, select(5461u, 0u, arg_0.b.b), 1u, ~4294967295u)), Struct_2(true, Struct_1(_wgslsmith_mod_i32(9051i, firstLeadingBit(u_input.a.x)), !any(vec2<bool>(false, arg_0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.c.x))), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_0.b.a, false, arg_1, arg_0.b.d), vec2<u32>(4294967295u, 0u), arg_1, Struct_3(arg_0.b, vec4<u32>(4191u, 1u, 42676u, 4294967295u), arg_0, arg_0.b.d)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1982f * -610f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1752f) * _wgslsmith_f_op_f32(min(arg_1, var_0))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_0.b.d - vec3<f32>(-1435f, -1542f, arg_1)))))));
    let var_2 = var_1.a;
    let var_3 = Struct_1(arg_0.b.a, !var_2.b, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c.b.d * vec3<f32>(_wgslsmith_f_op_f32(3205f - 294f), _wgslsmith_f_op_f32(select(var_2.c, var_0, var_2.b)), 1038f))));
    var var_4 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(abs(-(~vec2<i32>(-7186i, -2147483647i))), ~_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, arg_0.b.a), u_input.b.xz), u_input.b.yy)), 2147483647i);
    return 1623f;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-902f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-438f)) + -147f)));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(Struct_2(true, Struct_1(19391i, true, var_0, vec3<f32>(var_0, -923f, var_0)), vec2<f32>(var_0, var_0)), _wgslsmith_f_op_f32(ceil(655f)))))) + 1000f), _wgslsmith_f_op_f32(-527f * 1964f)));
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(Struct_2(true, Struct_1(_wgslsmith_div_i32(u_input.a.x, u_input.b.x), true, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(342f, 346f, -114f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -630f), var_0)), 1000f))));
    var var_2 = Struct_1(35153i, all(vec2<bool>(true, true)) & any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), false)), var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(u_input.b.x, false, var_0, vec3<f32>(1899f, 1000f, var_0)), vec2<u32>(15832u, 0u), _wgslsmith_f_op_f32(var_0 + -290f), Struct_3(Struct_1(-40377i, false, var_0, vec3<f32>(-898f, 548f, var_0)), vec4<u32>(4294967295u, 49754u, 1u, 1u), Struct_2(false, Struct_1(-2147483647i, true, var_0, vec3<f32>(var_0, 1826f, -3196f)), vec2<f32>(-1721f, var_0)), vec3<f32>(361f, 617f, var_0)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-419f, var_0, var_0), vec3<f32>(var_0, var_0, var_0))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-200f * var_0) * _wgslsmith_f_op_f32(round(var_0))), 184f, var_0)));
    let var_3 = 48294u;
    return Struct_2(!var_2.b || all(select(vec2<bool>(var_2.b, true), vec2<bool>(var_2.b, false), var_2.b)), Struct_1(var_2.a ^ 0i, false, _wgslsmith_f_op_f32(406f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1937f)))), var_2.d), vec2<f32>(var_2.d.x, var_2.d.x));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_3, arg_3: bool) -> vec3<bool> {
    var var_0 = -(-max(max(vec3<i32>(arg_2.c.b.a, u_input.c, -1i), vec3<i32>(arg_2.a.a, -23853i, 35090i)), u_input.b) << (firstLeadingBit(vec3<u32>(~117615u, countOneBits(arg_1), arg_1)) % vec3<u32>(32u)));
    var var_1 = arg_2.b.x;
    let var_2 = arg_2.a.d.x;
    let var_3 = arg_0 << (_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(~abs(arg_2.b.wzw), _wgslsmith_sub_vec3_u32(arg_2.b.wzw, arg_2.b.zyy)), ~1u) % 32u);
    var_0 = u_input.b;
    return vec3<bool>(true, arg_3, arg_3 || true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = select(vec3<bool>(true, reverseBits(0i | var_0) >= u_input.b.x, all(vec4<bool>(true, true, true, true))), func_4(4294967295u, ~(~(~4294967295u)), Struct_3(Struct_1(-14348i, true, -305f, vec3<f32>(-437f, 326f, -388f)), _wgslsmith_mult_vec4_u32(vec4<u32>(38186u, 32210u, 34327u, 0u), vec4<u32>(1u, 0u, 13692u, 33258u)), func_1(), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-416f, 257f, -654f) + vec3<f32>(-1115f, -1960f, 325f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -474f, 922f))))), all(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))), true);
    var var_2 = Struct_3(Struct_1(0i, var_1.x, -1435f, _wgslsmith_f_op_vec3_f32(func_3(func_1().b, vec2<u32>(~18718u, ~19699u), 380f, Struct_3(func_1().b, firstLeadingBit(vec4<u32>(244u, 3116u, 4294967295u, 92800u)), Struct_2(var_1.x, Struct_1(58052i, false, -191f, vec3<f32>(664f, -260f, -209f)), vec2<f32>(-432f, 1000f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1283f, -506f, 493f))))))), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_mult_u32(4294967295u, min(1u, 1u)), 4294967295u, 0u), vec4<u32>(_wgslsmith_div_u32(~4294967295u, 8597u), firstLeadingBit(45608u), _wgslsmith_dot_vec4_u32(~vec4<u32>(11259u, 0u, 0u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 35983u, 0u, 0u), vec4<u32>(18965u, 4294967295u, 61991u, 4294967295u))), select(1u, _wgslsmith_div_u32(0u, 1u), !var_1.x))), Struct_2(false, Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a.x, var_0), -u_input.b.x, 1i), any(vec2<bool>(var_1.x, false)) && false, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-685f, 430f))), _wgslsmith_f_op_vec3_f32(abs(func_1().b.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-667f, 781f)) - vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-276f, -602f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-206f * 858f), _wgslsmith_f_op_f32(1123f * -477f), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(-2147483647i, true, -537f, vec3<f32>(-840f, -567f, -1338f)), vec2<u32>(6273u, 43700u), 1916f, Struct_3(Struct_1(2147483647i, var_1.x, 1415f, vec3<f32>(907f, 2254f, -1561f)), vec4<u32>(4294967295u, 1u, 1u, 20514u), Struct_2(var_1.x, Struct_1(2902i, var_1.x, -3116f, vec3<f32>(956f, -1150f, -969f)), vec2<f32>(-610f, -846f)), vec3<f32>(-273f, -1826f, -1133f)))).x) * vec3<f32>(1f, 1f, 1f))));
    var_2 = Struct_3(var_2.a, var_2.b, func_1(), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.a.d.x, _wgslsmith_f_op_f32(-437f - _wgslsmith_div_f32(var_2.d.x, var_2.a.d.x)), var_2.a.c), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1232f, -1277f, var_2.a.c) + var_2.c.b.d), var_2.a.d)))));
    let var_3 = var_2.c.b.d.x;
    var var_4 = _wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(2147483647i, var_2.a.a, 2147483647i), u_input.b, vec3<i32>(-2147483647i, var_2.c.b.a, 23289i)), -countOneBits(u_input.b)), ~_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(u_input.c, ~u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_2.a.a, 68829i, 44879i)))), u_input.b >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_2.b.x, 4294967295u) >> (vec3<u32>(59799u, var_2.b.x, var_2.b.x) % vec3<u32>(32u)), ~var_2.b.zzy) % vec3<u32>(32u)));
    let var_5 = var_2.a.d.xx;
    var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.b.d, vec2<f32>(1216f, -456f));
}

