struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: u32,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_mod_vec4_i32(firstTrailingBit(-(~vec4<i32>(-14409i, 2147483647i, 1i, -2147483647i))), -_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.d.c, 2147483647i, -40459i, arg_0.d.c), vec4<i32>(arg_2.c, arg_0.d.c, arg_0.d.c, 0i) | vec4<i32>(arg_2.c, -2963i, -21720i, 501i)) ^ select(abs(~vec4<i32>(arg_3.d.c, arg_0.e.c, arg_2.c, -13986i)), -_wgslsmith_div_vec4_i32(vec4<i32>(-2316i, arg_0.d.c, 0i, -2147483647i), vec4<i32>(21283i, arg_0.d.c, -9414i, 2147483647i)), !(!vec4<bool>(true, true, true, arg_3.e.b.x))));
    var var_1 = Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(~(~1u), ~(~31570u)), ~(vec2<u32>(1u, 8876u) ^ _wgslsmith_mod_vec2_u32(arg_0.a, arg_0.a))), 294f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1236f + _wgslsmith_f_op_f32(-arg_1.x)) + arg_3.d.a.x), arg_1.x, arg_1.x), arg_2, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x + arg_1.x) * 1160f), _wgslsmith_f_op_f32(round(-829f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(718f, -2386f)), 1090f), arg_0.d.b, select(var_0.x, (-57282i << (u_input.c % 32u)) | min(1i, arg_0.d.c), true)));
    let var_2 = arg_0.d;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.e.a.xz, arg_2.a.yx));
    var_1 = Struct_2(~(~_wgslsmith_mult_vec2_u32(~arg_0.a, ~var_1.a)), -1903f, _wgslsmith_f_op_vec3_f32(arg_3.e.a.xxz + vec3<f32>(-807f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.e.a.x))), var_2.a.x)), Struct_1(arg_3.d.a, select(vec3<bool>(true, select(arg_2.b.x, false, var_1.d.b.x), all(var_1.d.b)), vec3<bool>(select(arg_3.d.b.x, arg_0.d.b.x, arg_3.d.b.x), select(var_1.e.b.x, true, arg_0.d.b.x), all(vec4<bool>(false, var_1.e.b.x, arg_0.d.b.x, true))), min(2147483647i, u_input.b.x) != 2147483647i), max(_wgslsmith_dot_vec2_i32(~var_0.yy, u_input.b), _wgslsmith_dot_vec3_i32(var_0.xyx, var_0.yxw))), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-532f * var_3.x), _wgslsmith_f_op_f32(min(748f, arg_3.e.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1759f), _wgslsmith_div_f32(arg_3.b, arg_1.x)))), !arg_2.b, -_wgslsmith_mod_i32(~1i, min(2147483647i, -1i))));
    return ~u_input.c >> ((945u << (_wgslsmith_mult_u32(firstTrailingBit(abs(0u)), _wgslsmith_div_u32(1u, abs(arg_0.a.x))) % 32u)) % 32u);
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.c, u_input.c, 1u, u_input.c)) ^ vec4<u32>(u_input.c, 6845u, 4294967295u, 32562u), vec4<u32>(u_input.c, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c, 49806u), 0u), func_3(Struct_2(vec2<u32>(63491u, 0u), -1275f, vec3<f32>(-933f, 1000f, -2781f), Struct_1(vec4<f32>(870f, -1116f, -2096f, 1738f), vec3<bool>(false, true, false), -1i), Struct_1(vec4<f32>(-238f, -115f, -1000f, -1000f), vec3<bool>(false, true, false), u_input.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-397f, 694f, 430f, -2629f) * vec4<f32>(419f, -522f, 1932f, 393f)), Struct_1(vec4<f32>(-749f, -1146f, 1059f, -175f), vec3<bool>(true, true, true), u_input.b.x), Struct_2(vec2<u32>(u_input.c, 1u), 2459f, vec3<f32>(-1609f, -1000f, 1000f), Struct_1(vec4<f32>(-949f, -388f, -114f, -1024f), vec3<bool>(false, false, false), u_input.b.x), Struct_1(vec4<f32>(144f, 447f, -357f, 686f), vec3<bool>(true, false, true), u_input.b.x))), u_input.c), vec4<u32>(_wgslsmith_div_u32(0u, reverseBits(42259u)), _wgslsmith_add_u32(u_input.c, reverseBits(4294967295u)), u_input.c, 65101u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 68591u, ~0u), vec4<u32>(~u_input.c, 1u, 4294967295u, ~(~u_input.c)), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 55765u, u_input.c, 4294967295u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))) ^ max(vec4<u32>(53548u, u_input.c, u_input.c, 4294967295u), vec4<u32>(124850u, u_input.c, u_input.c, u_input.c) & vec4<u32>(u_input.c, 4294967295u, 31659u, u_input.c)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-311f, 241f, -869f, -382f), vec4<f32>(-2776f, 877f, -1015f, -738f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(235f, -1164f, -1452f, 1378f)), vec4<bool>(true, false, true, false))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(695f, 595f, -1580f, 1147f) * vec4<f32>(-750f, -1000f, 114f, 2221f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-398f, -1034f, -435f, 383f), vec4<f32>(636f, -279f, 1000f, -927f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-385f, -1295f, -1151f, -1000f), vec4<f32>(-205f, 364f, 1000f, 630f), false))) - vec4<f32>(1000f, 1742f, _wgslsmith_f_op_f32(floor(651f)), _wgslsmith_div_f32(-288f, -564f)))), select(select(vec3<bool>(all(vec2<bool>(true, false)), false, any(vec2<bool>(false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), any(vec4<bool>(true, false, true, false)))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), u_input.b.x);
    let var_2 = select(!(!var_1.b), vec3<bool>(var_1.b.x, any(select(var_1.b, vec3<bool>(var_1.b.x, false, true), vec3<bool>(false, true, true))), !(!var_1.b.x || !var_1.b.x)), var_1.b.x);
    var var_3 = var_0.x & var_0.x;
    var var_4 = Struct_2(_wgslsmith_mod_vec2_u32(var_0.zy, max(vec2<u32>(0u, u_input.c), var_0.zz << (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u))) << (~vec2<u32>(40760u, var_0.x) % vec2<u32>(32u))), var_1.a.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(step(var_1.a.x, 869f)))), _wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x), var_1, var_1);
    return Struct_2(vec2<u32>((func_3(Struct_2(var_0.ww, 279f, vec3<f32>(222f, -420f, 708f), var_4.e, Struct_1(var_4.d.a, var_4.d.b, var_4.e.c)), var_1.a, var_1, Struct_2(vec2<u32>(29517u, var_4.a.x), 236f, var_4.e.a.xzz, Struct_1(vec4<f32>(411f, var_1.a.x, 669f, var_4.c.x), vec3<bool>(false, false, false), u_input.a), var_4.d)) | select(u_input.c, 0u, false)) ^ var_0.x, ~var_0.x), var_4.b, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.a.x)), var_4.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.d.a.x)))))), var_4.e, var_4.d);
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = func_2().d;
    var_0 = arg_2.e;
    var_0 = func_2().d;
    let var_1 = Struct_2(arg_2.a, -428f, var_0.a.wyz, arg_2.e, arg_2.e);
    let var_2 = arg_1;
    return Struct_2(_wgslsmith_clamp_vec2_u32(abs(firstTrailingBit(~var_1.a)), ~countOneBits(vec2<u32>(arg_3, 4294967295u)) & arg_2.a, arg_2.a & vec2<u32>(max(var_1.a.x, arg_1), _wgslsmith_div_u32(4294967295u, arg_2.a.x))), var_1.d.a.x, _wgslsmith_div_vec3_f32(var_0.a.zzz, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-917f, var_1.c.x, _wgslsmith_f_op_f32(step(-420f, arg_2.b)))))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(1000f * arg_2.d.a.x), _wgslsmith_f_op_f32(min(var_0.a.x, 597f)), _wgslsmith_f_op_f32(-var_1.d.a.x), 753f))), vec3<bool>(func_2().d.b.x, var_0.b.x, true), var_0.c & _wgslsmith_mod_i32(arg_2.d.c, 1i)), func_2().d);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>) -> f32 {
    var var_0 = func_4(vec2<u32>(~27270u, ~_wgslsmith_mult_u32(~u_input.c, arg_1.x)), arg_1.x, func_2(), ~1u);
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e.a.x, var_0.d.a.x) * _wgslsmith_f_op_f32(var_0.d.a.x - var_0.d.a.x)) * -715f), var_0.d.a.x, var_0.b, _wgslsmith_f_op_f32(-var_0.b)), vec3<bool>(!all(select(vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, var_0.e.b.x), var_0.e.b.x)), true, !all(!vec4<bool>(false, true, arg_0.x, arg_0.x))), u_input.a);
    let var_2 = var_1;
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1619f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), vec4<u32>(42071u, 35166u, u_input.c, 61847u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1150f * -1588f)), 1453f)), !vec3<bool>(true, false, select(true, true, true)), -10502i);
    let var_1 = var_0.c;
    let var_2 = func_4(_wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, 310u), vec2<u32>(u_input.c, u_input.c)), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(42242u, u_input.c), vec2<u32>(23538u, u_input.c)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 55634u), vec2<u32>(u_input.c, u_input.c))), _wgslsmith_div_vec2_u32(abs(vec2<u32>(0u, 4294967295u)), abs(vec2<u32>(0u, u_input.c))), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(u_input.c, u_input.c)), ~vec2<u32>(34109u, u_input.c), vec2<u32>(24380u, 41523u)))), 4294967295u, Struct_2(countOneBits(vec2<u32>(u_input.c, 1u)), _wgslsmith_f_op_f32(min(454f, _wgslsmith_f_op_f32(f32(-1f) * -579f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -862f), 1596f, _wgslsmith_f_op_f32(min(-1000f, var_0.a.x))), vec3<f32>(_wgslsmith_f_op_f32(abs(600f)), 1000f, 1004f)), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, -319f, var_0.a.x) + vec4<f32>(var_0.a.x, -1000f, -2536f, var_0.a.x)), var_0.a)), !select(var_0.b, var_0.b, var_0.b), -20311i), var_0), 20442u);
    var var_3 = var_2;
    let var_4 = func_2().d;
    var_3 = Struct_2(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, _wgslsmith_add_u32(var_3.a.x, 42922u)), vec2<u32>(~u_input.c, _wgslsmith_add_u32(var_2.a.x, _wgslsmith_sub_u32(u_input.c, 3096u)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_4.a.x, _wgslsmith_f_op_f32(var_2.b + -1612f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1620f, _wgslsmith_f_op_f32(-628f + -547f), -1696f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3.b, 706f, -332f), var_4.a.zxx)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_4.a))), vec3<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(16150u, var_3.a.x, var_3.a.x), vec3<u32>(var_2.a.x, u_input.c, 20432u)) <= var_2.a.x, !var_2.e.b.x, func_4(~vec2<u32>(var_3.a.x, 3838u), var_3.a.x, Struct_2(vec2<u32>(u_input.c, 21364u), 435f, vec3<f32>(var_0.a.x, 253f, -108f), Struct_1(var_4.a, var_2.d.b, 29322i), var_0), u_input.c).e.b.x), _wgslsmith_add_i32(0i, 1i | u_input.a)), func_2().d);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_0.c, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1160f, var_4.a.x, -1283f)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(var_4.a))))), _wgslsmith_div_vec4_f32(var_4.a, vec4<f32>(_wgslsmith_f_op_f32(-1000f + var_2.d.a.x), func_2().b, -1565f, func_4(var_3.a, var_3.a.x, Struct_2(var_3.a, -528f, vec3<f32>(var_2.b, var_4.a.x, var_3.d.a.x), var_0, var_4), var_3.a.x).e.a.x)))), var_2.a, ~(~(0u << (u_input.c % 32u))));
}

