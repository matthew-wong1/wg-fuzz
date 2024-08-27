struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec2<i32> {
    return abs(~(vec2<i32>(-1i) * -(~vec2<i32>(u_input.b.x, u_input.b.x))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.b.a - arg_2.a.c.a), -u_input.b, false), arg_2.a.b << (max(vec4<u32>(arg_0.b.x, 26844u, u_input.a, arg_0.b.x) << (vec4<u32>(1u, 1u, arg_0.b.x, 0u) % vec4<u32>(32u)), ~vec4<u32>(77932u, 0u, 4294967295u, 23426u)) % vec4<u32>(32u)), arg_2.a.a, 2147483647i), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-727f, -104f, arg_1.x))) - _wgslsmith_f_op_vec3_f32(trunc(arg_2.b.a)))), func_3(), all(select(select(vec4<bool>(true, arg_2.b.c, false, arg_2.a.c.c), vec4<bool>(arg_2.a.a.c, arg_2.b.c, arg_2.b.c, true), vec4<bool>(arg_2.b.c, arg_2.b.c, arg_2.b.c, false)), !vec4<bool>(arg_2.b.c, false, false, arg_2.a.a.c), !vec4<bool>(arg_2.b.c, true, true, arg_2.a.a.c)))));
    let var_1 = abs(reverseBits(-(~(-vec3<i32>(1i, -2147483647i, u_input.b.x)))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(171f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a.x) * var_0.b.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.a.x, -1000f))))));
    var var_3 = var_0.b.a.x;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))));
    return arg_2.a.c;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.a, ~(~99872u), ~(~u_input.a), max(u_input.a, 11006u) | 30204u), vec4<u32>(abs(u_input.a), _wgslsmith_mult_u32(u_input.a >> (u_input.a % 32u), _wgslsmith_sub_u32(28075u, u_input.a)), firstLeadingBit(~u_input.a), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(46366u, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, 116552u, 53953u, u_input.a)))), vec4<u32>(u_input.a, 70892u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, 116893u, u_input.a)), u_input.a), vec4<u32>(u_input.a, _wgslsmith_clamp_u32(countOneBits(u_input.a), ~u_input.a, (u_input.a | 15268u) >> (27343u % 32u)), 118789u, _wgslsmith_add_u32(reverseBits(u_input.a), u_input.a)));
    var_0 = abs(vec4<u32>(min(abs(var_0.x), 4294967295u) >> (var_0.x % 32u), select(~0u, u_input.a, arg_1.c) & _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, var_0.x, var_0.x), ~vec4<u32>(u_input.a, 1u, u_input.a, 0u)), 42333u, u_input.a));
    var_0 = countOneBits(~(~(_wgslsmith_add_vec4_u32(vec4<u32>(19255u, 0u, u_input.a, u_input.a), vec4<u32>(1u, 6008u, u_input.a, var_0.x)) ^ ~vec4<u32>(45936u, 0u, u_input.a, var_0.x))));
    return Struct_1(vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(1000f - 1f)), arg_1.b, arg_1.c);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> vec2<f32> {
    var var_0 = !(!vec4<bool>(arg_1.b.c, false, arg_1.a.a.c, u_input.a > ~u_input.a));
    var_0 = !vec4<bool>(any(vec3<bool>(!arg_0.c, !var_0.x, !arg_1.b.c)), any(var_0.zyx), ((arg_0.b.x ^ -10573i) << (1u % 32u)) <= arg_0.b.x, arg_1.a.a.c);
    var_0 = select(select(select(!select(vec4<bool>(arg_0.c, false, arg_0.c, arg_1.a.a.c), vec4<bool>(true, false, true, arg_1.b.c), var_0.x), vec4<bool>(true, true, true, true), select(!vec4<bool>(true, var_0.x, true, false), !vec4<bool>(arg_1.a.a.c, var_0.x, arg_1.a.c.c, arg_0.c), all(vec2<bool>(false, false)))), select(!vec4<bool>(var_0.x, false, arg_0.c, var_0.x), select(select(vec4<bool>(arg_1.a.a.c, true, arg_1.a.a.c, true), vec4<bool>(var_0.x, true, arg_1.b.c, var_0.x), vec4<bool>(var_0.x, false, var_0.x, arg_0.c)), !vec4<bool>(true, var_0.x, arg_0.c, true), true), min(arg_1.b.b.x, -35640i) <= arg_0.b.x), !arg_0.c), !vec4<bool>(arg_0.c, func_2(Struct_3(arg_1.a.b.zzx, vec2<u32>(u_input.a, u_input.a)), vec2<f32>(439f, arg_0.a.x), Struct_4(Struct_2(arg_0, vec4<i32>(10488i, 2147483647i, arg_1.a.d, -20312i), Struct_1(arg_1.a.c.a, arg_0.b, false), u_input.b.x), arg_1.b)).c, false, !(false | arg_1.a.a.c)), vec4<bool>(!arg_1.a.c.c, any(var_0.xw), !(u_input.a == 1u), any(!(!vec3<bool>(var_0.x, arg_1.a.a.c, true)))));
    let var_1 = Struct_3(vec3<i32>(1i, u_input.b.x ^ abs(~arg_1.a.b.x), -_wgslsmith_dot_vec2_i32(firstLeadingBit(arg_1.b.b), vec2<i32>(2147483647i, u_input.b.x))), abs(~(~vec2<u32>(u_input.a, u_input.a)) & ~vec2<u32>(21617u, 0u)));
    var_0 = vec4<bool>(arg_1.b.c, func_4(arg_0.a.zz, arg_1.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2653f + 1675f)), 684f), 2454i).c, arg_1.a.c.c, false);
    return vec2<f32>(333f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a.c.a.x)) * -1010f)));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(func_4(vec2<f32>(1f, _wgslsmith_div_f32(-1000f, -1000f)), func_2(Struct_3(vec3<i32>(u_input.b.x, -16342i, u_input.b.x), vec2<u32>(u_input.a, 66687u)), vec2<f32>(502f, -1000f), Struct_4(Struct_2(Struct_1(vec3<f32>(-604f, -523f, -278f), u_input.b, false), vec4<i32>(u_input.b.x, -1i, 0i, -40720i), Struct_1(vec3<f32>(948f, -1871f, -194f), vec2<i32>(35590i, u_input.b.x), false), u_input.b.x), Struct_1(vec3<f32>(1620f, 2230f, -391f), u_input.b, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -568f) - vec2<f32>(802f, 1630f))), (u_input.b.x | u_input.b.x) << ((82836u ^ u_input.a) % 32u)), Struct_4(Struct_2(Struct_1(vec3<f32>(-1238f, 1254f, -229f), vec2<i32>(u_input.b.x, u_input.b.x), false), reverseBits(vec4<i32>(u_input.b.x, 22888i, u_input.b.x, 2147483647i)), func_2(Struct_3(vec3<i32>(u_input.b.x, u_input.b.x, -28294i), vec2<u32>(u_input.a, 4294967295u)), vec2<f32>(426f, 865f), Struct_4(Struct_2(Struct_1(vec3<f32>(-435f, 393f, 167f), vec2<i32>(1i, 23187i), false), vec4<i32>(u_input.b.x, 27556i, u_input.b.x, -39864i), Struct_1(vec3<f32>(-1266f, 674f, 238f), vec2<i32>(u_input.b.x, u_input.b.x), true), -2147483647i), Struct_1(vec3<f32>(2154f, 1576f, 396f), u_input.b, false))), 33883i), func_4(vec2<f32>(-1000f, -176f), func_4(vec2<f32>(-1351f, -228f), Struct_1(vec3<f32>(563f, -655f, 115f), u_input.b, true), vec2<f32>(539f, 1000f), u_input.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-191f, -1451f) * vec2<f32>(406f, -591f)), 0i)))) - _wgslsmith_f_op_vec2_f32(-func_2(Struct_3(~vec3<i32>(u_input.b.x, u_input.b.x, 1i), select(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 0u), vec2<bool>(true, true))), vec2<f32>(-479f, _wgslsmith_f_op_f32(951f + -935f)), Struct_4(Struct_2(Struct_1(vec3<f32>(-750f, 462f, -1278f), u_input.b, false), vec4<i32>(-1230i, u_input.b.x, u_input.b.x, -9662i), Struct_1(vec3<f32>(1420f, 202f, 1608f), vec2<i32>(-6944i, u_input.b.x), true), 41462i), Struct_1(vec3<f32>(-1000f, -1000f, 638f), vec2<i32>(-1i, 51194i), false))).a.yy));
    let var_1 = u_input.a;
    var var_2 = select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(var_0.x >= var_0.x, false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)))), vec2<bool>(1u >= _wgslsmith_mult_u32(u_input.a, u_input.a), false), true);
    var var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-u_input.b.x, 656i)), i32(-1i) * -26428i, -1i, countOneBits(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x))), vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x ^ func_4(vec2<f32>(var_0.x, 963f), Struct_1(vec3<f32>(-1781f, 919f, 665f), u_input.b, false), vec2<f32>(1000f, var_0.x), u_input.b.x).b.x), ~_wgslsmith_div_i32(u_input.b.x, firstTrailingBit(2147483647i)), u_input.b.x, ~_wgslsmith_mult_i32(2676i, u_input.b.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(max(-8650i, u_input.b.x), u_input.b.x, u_input.b.x, ~30589i), countOneBits(max(vec4<i32>(-2147483647i, -1i, u_input.b.x, u_input.b.x), vec4<i32>(-6185i, u_input.b.x, -2147483647i, u_input.b.x)) | vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -11579i))));
    let var_4 = firstTrailingBit(~(~_wgslsmith_mod_u32(1u, var_1) & ~2589u));
    return var_0.x;
}

fn func_6(arg_0: f32) -> f32 {
    var var_0 = ~vec2<u32>(~(~(~u_input.a)), u_input.a);
    let var_1 = -1i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ((max(_wgslsmith_mult_vec3_u32(vec3<u32>(18582u, 73433u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, 1u)) >> (~vec3<u32>(10289u, u_input.a, u_input.a) % vec3<u32>(32u))) >> (~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(117199u, 1u, 0u), vec3<u32>(u_input.a, 1u, u_input.a))) % vec3<u32>(32u))) | ~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 6082u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) ^ vec3<u32>(0u, ~u_input.a, max(u_input.a, u_input.a)));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-504f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(227f, -530f, -283f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-400f, -247f, 427f) + vec3<f32>(-1353f, -123f, -392f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(729f, 384f, -1000f) - vec3<f32>(938f, 1000f, -500f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1115f, 456f, 806f))))));
    let var_2 = reverseBits(vec2<u32>(u_input.a, var_0.x >> (var_0.x % 32u)));
    var var_3 = func_2(Struct_3(vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x) & u_input.b.x, u_input.b.x, u_input.b.x), vec2<u32>(~_wgslsmith_div_u32(27171u, 11550u), firstLeadingBit(4294967295u))), var_1.yy, Struct_4(Struct_2(func_2(Struct_3(vec3<i32>(-1i, 1i, 1i), vec2<u32>(var_0.x, var_2.x)), _wgslsmith_f_op_vec2_f32(-var_1.zy), Struct_4(Struct_2(Struct_1(vec3<f32>(var_1.x, 706f, -555f), u_input.b, false), vec4<i32>(u_input.b.x, 0i, 0i, u_input.b.x), Struct_1(vec3<f32>(-167f, var_1.x, -1000f), vec2<i32>(u_input.b.x, -65730i), false), u_input.b.x), Struct_1(vec3<f32>(-1350f, var_1.x, var_1.x), vec2<i32>(u_input.b.x, 1i), true))), (vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 2147483647i) ^ vec4<i32>(u_input.b.x, -45654i, u_input.b.x, u_input.b.x)) >> (vec4<u32>(35489u, var_0.x, 57962u, u_input.a) % vec4<u32>(32u)), func_2(Struct_3(vec3<i32>(1i, 9997i, -10814i), var_0.zx), vec2<f32>(var_1.x, var_1.x), Struct_4(Struct_2(Struct_1(vec3<f32>(var_1.x, 1812f, -1164f), vec2<i32>(u_input.b.x, u_input.b.x), false), vec4<i32>(u_input.b.x, u_input.b.x, -1i, -2147483647i), Struct_1(vec3<f32>(-304f, 292f, 177f), u_input.b, true), u_input.b.x), Struct_1(vec3<f32>(1586f, -400f, var_1.x), u_input.b, false))), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), vec2<i32>(-1i, u_input.b.x) >> (var_0.yz % vec2<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -666f, var_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(749f, var_1.x, -1529f)), vec3<bool>(false, true, false))), u_input.b, true)));
    let var_4 = 120f;
    let var_5 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4, _wgslsmith_f_op_f32(round(1f)), _wgslsmith_div_f32(var_4, _wgslsmith_f_op_f32(var_3.a.x + var_1.x)), var_3.a.x))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 2380f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + var_4))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a.x), var_4)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 1874f, _wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(min(1509f, var_4)))))), true));
    var_1 = var_5.zwy;
    var var_6 = var_0;
    let var_7 = Struct_4(Struct_2(func_4(vec2<f32>(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(select(var_3.a.x, 1239f, var_3.c))), func_2(Struct_3(vec3<i32>(1i, 0i, var_3.b.x), var_6.xy), vec2<f32>(var_4, -1158f), Struct_4(Struct_2(Struct_1(vec3<f32>(var_3.a.x, -146f, var_5.x), vec2<i32>(29699i, -4113i), false), vec4<i32>(var_3.b.x, u_input.b.x, 0i, -49208i), Struct_1(vec3<f32>(1344f, -653f, 1819f), vec2<i32>(17607i, 2147483647i), var_3.c), u_input.b.x), Struct_1(var_3.a, var_3.b, var_3.c))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_4, var_4), var_5.zx)), _wgslsmith_mult_i32(-32157i, _wgslsmith_clamp_i32(u_input.b.x, var_3.b.x, -6566i))), ~(~(vec4<i32>(u_input.b.x, -63356i, var_3.b.x, 38459i) >> (vec4<u32>(var_0.x, 1u, 22008u, 260u) % vec4<u32>(32u)))), Struct_1(var_3.a, -vec2<i32>(2147483647i, var_3.b.x), true), firstLeadingBit(2147483647i)), Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.a.x))), 541f), vec2<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, 1i, u_input.b.x)), abs(vec3<i32>(-4273i, u_input.b.x, 2147483647i))), var_3.b.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~var_2.x));
}

