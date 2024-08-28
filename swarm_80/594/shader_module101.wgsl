struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>) -> vec2<bool> {
    let var_0 = arg_0.e.a.b.x ^ 0u;
    var var_1 = ~min(_wgslsmith_mod_vec4_i32(~vec4<i32>(-2147483647i, 2147483647i, 11704i, -2147483647i), -vec4<i32>(39776i, -4923i, u_input.b.x, -25656i)) | vec4<i32>(-30814i, u_input.b.x, i32(-1i) * -2147483647i, -u_input.b.x), arg_0.a);
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c.x, var_1.x, u_input.b.x, var_1.x) & ~vec4<i32>(u_input.b.x, -arg_0.c.x, var_1.x, firstTrailingBit(-2147483647i)), countOneBits(select(max(abs(vec4<i32>(54191i, u_input.b.x, var_1.x, -70005i)), -vec4<i32>(-1i, -1i, -1i, u_input.e.x)), arg_0.a, !select(arg_0.b, vec4<bool>(true, arg_0.b.x, false, true), vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_0.b.x)))));
    var var_3 = ~arg_0.c.x;
    let var_4 = Struct_1(~4294967295u, vec2<u32>(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, var_0, u_input.a.x), vec3<u32>(128946u, arg_0.e.b.a, 30963u)), u_input.a.x)), 34329u));
    return !vec2<bool>(false, arg_0.b.x);
}

fn func_2() -> Struct_2 {
    var var_0 = !select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), true), func_3(Struct_3(u_input.e, select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), firstLeadingBit(vec2<i32>(74389i, 0i)), 1000f, Struct_2(Struct_1(20836u, vec2<u32>(0u, 0u)), Struct_1(4294967295u, u_input.c))), vec3<bool>(select(false, false, false), true, true)), !select(true, true, false));
    var var_1 = _wgslsmith_div_u32(~51546u, ~(~(~u_input.a.x)) >> (0u % 32u));
    let var_2 = Struct_4(Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, u_input.a.x, 20025u), vec3<u32>(u_input.a.x, 48218u, 27569u), vec3<bool>(true, var_0.x, var_0.x)), select(vec3<u32>(15032u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.a.x, 0u, u_input.a.x), var_0.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~vec2<u32>(u_input.d, 72582u))), Struct_1(u_input.a.x >> (firstTrailingBit(u_input.c.x) % 32u), _wgslsmith_sub_vec2_u32(~u_input.c, u_input.c))), Struct_2(Struct_1(u_input.c.x, _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(u_input.d, u_input.a.x)) & max(u_input.c, u_input.a)), Struct_1(min(_wgslsmith_sub_u32(u_input.d, u_input.a.x), abs(62757u)), vec2<u32>(1u, u_input.d))), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.c.x, 34732u) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 78156u, 4294967295u), vec3<u32>(u_input.c.x, u_input.c.x, 0u), vec3<u32>(63191u, 63872u, 0u)), abs(countOneBits(vec3<u32>(0u, 1u, u_input.d)))), Struct_3(~(-(~u_input.e)), vec4<bool>(!var_0.x, any(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)), true, var_0.x || true), u_input.e.wz, 2009f, Struct_2(Struct_1(reverseBits(50125u), u_input.a), Struct_1(~u_input.c.x, u_input.a))), Struct_3(min(min(u_input.e, u_input.b), vec4<i32>(u_input.b.x, u_input.e.x, -35719i, u_input.b.x)) ^ select(vec4<i32>(-59226i, u_input.b.x, u_input.e.x, u_input.e.x), reverseBits(vec4<i32>(u_input.b.x, u_input.e.x, 34736i, 2147483647i)), !vec4<bool>(var_0.x, false, false, false)), !select(!vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, true, false, true), var_0.x)), vec2<i32>(2147483647i, -u_input.b.x | 0i), _wgslsmith_f_op_f32(936f * -1978f), Struct_2(Struct_1(1u, vec2<u32>(1u, 1u)), Struct_1(1u, u_input.a))));
    var_0 = select(select(select(var_2.d.b.zx, select(func_3(Struct_3(vec4<i32>(27506i, -3613i, 0i, u_input.e.x), vec4<bool>(var_2.e.b.x, var_0.x, var_2.e.b.x, false), u_input.b.yy, var_2.e.d, Struct_2(var_2.e.e.b, var_2.a.a)), var_2.d.b.xzx), !var_2.d.b.wz, var_2.d.b.zz), var_2.e.b.x), select(select(select(var_2.e.b.zx, vec2<bool>(false, var_2.d.b.x), vec2<bool>(false, var_2.e.b.x)), vec2<bool>(var_0.x, var_2.d.b.x), !var_2.d.b.yx), var_2.d.b.xz, (var_2.d.b.x & var_2.d.b.x) || var_0.x), !var_0.x), vec2<bool>(any(vec3<bool>(false, any(var_2.d.b), true)), !(var_0.x & all(vec3<bool>(true, false, var_2.e.b.x)))), any(vec3<bool>(var_0.x, var_0.x, false)));
    return var_2.b;
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_4, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(arg_2.e.e.a, func_2().a), arg_2.a, max(select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.d, 4294967295u), firstLeadingBit(vec3<u32>(82640u, 0u, u_input.c.x))), countOneBits(arg_2.c | arg_2.c), false), ~(~(vec3<u32>(4294967295u, arg_2.e.e.b.b.x, 22093u) & vec3<u32>(arg_2.d.e.b.a, arg_2.d.e.a.b.x, 44039u)))), arg_2.d, Struct_3(arg_2.e.a, arg_2.d.b, arg_0.xx, -332f, Struct_2(func_2().b, Struct_1(u_input.a.x, vec2<u32>(u_input.d, 0u) << (u_input.a % vec2<u32>(32u))))));
    let var_1 = true;
    var_0 = arg_2;
    let var_2 = 4294967295u;
    var var_3 = arg_2;
    return Struct_2(var_3.b.b, Struct_1(61491u, vec2<u32>(27733u, arg_2.d.e.b.b.x)));
}

fn func_1(arg_0: i32) -> vec4<f32> {
    let var_0 = func_4(u_input.b.yxw, false, Struct_4(func_2(), func_2(), select(~select(vec3<u32>(u_input.a.x, u_input.a.x, 61904u), vec3<u32>(2960u, 24206u, u_input.d), false), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(11951u, 0u, 4294967295u)), vec3<u32>(1u, 58928u, 79703u), vec3<u32>(44604u, 75947u, u_input.a.x)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), Struct_3(reverseBits(abs(u_input.b)), vec4<bool>(true, true, true, true), firstTrailingBit(select(u_input.e.zw, vec2<i32>(-2147483647i, u_input.b.x), vec2<bool>(false, false))), -2190f, Struct_2(func_2().a, Struct_1(u_input.d, vec2<u32>(0u, 4294967295u)))), Struct_3(vec4<i32>(-u_input.b.x, arg_0, arg_0, arg_0), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(false, false, false, true), true), vec2<i32>(_wgslsmith_mod_i32(0i, -23699i), 1i), _wgslsmith_f_op_f32(-1315f * _wgslsmith_f_op_f32(min(-1057f, 545f))), func_2())), any(select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(true, true, false, true))), select(func_3(Struct_3(u_input.b, vec4<bool>(true, true, false, false), u_input.e.yy, 686f, Struct_2(Struct_1(23637u, u_input.c), Struct_1(1u, u_input.a))), vec3<bool>(false, true, true)), vec2<bool>(true, false), vec2<bool>(true, true)))));
    let var_1 = ~u_input.a.x;
    var var_2 = var_0;
    var_2 = var_0;
    var var_3 = ~var_0.b.a;
    return _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1023f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1052f)))), 792f, _wgslsmith_div_f32(-807f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(927f)) + -479f)))));
}

fn func_5(arg_0: vec4<f32>) -> u32 {
    let var_0 = Struct_1(func_2().a.a, vec2<u32>(~select(9446u, 0u, true), 0u) >> (u_input.a % vec2<u32>(32u)));
    var var_1 = vec2<bool>(false, true);
    var_1 = vec2<bool>(!var_1.x, all(!select(vec4<bool>(true, true, true, true), !vec4<bool>(var_1.x, var_1.x, var_1.x, false), true)));
    let var_2 = vec3<f32>(arg_0.x, -568f, 1f);
    let var_3 = _wgslsmith_f_op_f32(max(var_2.x, var_2.x));
    return ~var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_1(~17311i))))), ~vec2<u32>(~4294967295u, func_5(vec4<f32>(1074f, -654f, -204f, 728f))) & u_input.a);
    var var_1 = Struct_4(Struct_2(func_4(_wgslsmith_div_vec3_i32(u_input.e.wzx ^ vec3<i32>(-13931i, u_input.e.x, 0i), u_input.e.wzx), true, Struct_4(Struct_2(Struct_1(u_input.a.x, var_0.b), Struct_1(var_0.b.x, vec2<u32>(19782u, 18144u))), Struct_2(Struct_1(var_0.b.x, u_input.c), Struct_1(var_0.b.x, u_input.a)), firstLeadingBit(vec3<u32>(var_0.a, u_input.d, 1u)), Struct_3(u_input.b, vec4<bool>(false, false, true, false), u_input.b.zz, -854f, Struct_2(Struct_1(u_input.a.x, vec2<u32>(400u, u_input.a.x)), Struct_1(0u, vec2<u32>(u_input.a.x, 4294967295u)))), Struct_3(vec4<i32>(u_input.e.x, 23323i, u_input.b.x, 2147483647i), vec4<bool>(true, false, false, false), u_input.b.wz, -1104f, Struct_2(Struct_1(var_0.a, u_input.a), Struct_1(u_input.a.x, u_input.a)))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, u_input.d, u_input.a.x, 3231u), vec4<u32>(u_input.c.x, u_input.a.x, 1u, 51123u)) >= (var_0.b.x & 0u)).a, func_2().b), func_4(~u_input.b.xzx >> (((vec3<u32>(var_0.b.x, var_0.a, var_0.a) & vec3<u32>(4294967295u, 2548u, u_input.a.x)) >> (~vec3<u32>(4294967295u, 1u, var_0.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)), true, Struct_4(func_4(reverseBits(vec3<i32>(-2147483647i, -2558i, -26718i)), true, Struct_4(Struct_2(Struct_1(u_input.a.x, var_0.b), Struct_1(54217u, vec2<u32>(30797u, 1u))), Struct_2(Struct_1(69233u, vec2<u32>(59930u, u_input.a.x)), Struct_1(52561u, vec2<u32>(var_0.a, var_0.a))), vec3<u32>(u_input.d, 114791u, u_input.d), Struct_3(vec4<i32>(u_input.b.x, u_input.e.x, u_input.e.x, 2147483647i), vec4<bool>(false, true, false, false), vec2<i32>(u_input.e.x, 1i), -1000f, Struct_2(Struct_1(u_input.d, u_input.c), Struct_1(u_input.d, vec2<u32>(21656u, u_input.d)))), Struct_3(vec4<i32>(u_input.e.x, u_input.b.x, u_input.b.x, u_input.e.x), vec4<bool>(false, true, true, false), u_input.e.yz, -1000f, Struct_2(Struct_1(0u, var_0.b), Struct_1(var_0.a, u_input.a)))), any(vec2<bool>(true, true))), Struct_2(func_2().a, func_4(u_input.e.yzz, false, Struct_4(Struct_2(Struct_1(17565u, vec2<u32>(29992u, u_input.a.x)), Struct_1(0u, var_0.b)), Struct_2(Struct_1(81244u, var_0.b), Struct_1(var_0.b.x, vec2<u32>(4294967295u, var_0.a))), vec3<u32>(u_input.a.x, 10735u, 0u), Struct_3(vec4<i32>(u_input.e.x, -28408i, 2147483647i, u_input.b.x), vec4<bool>(false, true, false, true), vec2<i32>(u_input.e.x, 1i), -1047f, Struct_2(Struct_1(u_input.a.x, vec2<u32>(1u, u_input.d)), Struct_1(var_0.b.x, var_0.b))), Struct_3(u_input.e, vec4<bool>(false, false, false, false), vec2<i32>(0i, -2147483647i), -1000f, Struct_2(Struct_1(u_input.c.x, vec2<u32>(u_input.a.x, 29042u)), Struct_1(14627u, u_input.c)))), false).b), vec3<u32>(~var_0.a, ~var_0.b.x, u_input.a.x << (17657u % 32u)), Struct_3(firstLeadingBit(vec4<i32>(2147483647i, 0i, u_input.e.x, 0i)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false), ~u_input.b.ww, -303f, func_2()), Struct_3(u_input.b, select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), vec2<i32>(u_input.b.x, u_input.e.x), _wgslsmith_f_op_f32(abs(228f)), func_2())), false), select(~select(~vec3<u32>(26069u, 77363u, 0u), select(vec3<u32>(21635u, u_input.d, 0u), vec3<u32>(u_input.a.x, u_input.c.x, u_input.d), vec3<bool>(true, false, true)), vec3<bool>(false, true, true)), select(vec3<u32>(reverseBits(var_0.a), u_input.d, ~42613u), vec3<u32>(4294967295u, 34795u, 0u) >> (~vec3<u32>(1u, 47679u, u_input.c.x) % vec3<u32>(32u)), true), _wgslsmith_dot_vec4_u32(vec4<u32>(19395u, 56114u, u_input.d, var_0.a), _wgslsmith_mult_vec4_u32(vec4<u32>(14554u, 4294967295u, 0u, 0u), vec4<u32>(var_0.a, u_input.d, 1u, 36802u))) <= ~u_input.c.x), Struct_3(~u_input.e, select(vec4<bool>(true, u_input.a.x != u_input.a.x, 1u >= u_input.a.x, select(true, false, true)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))), _wgslsmith_div_vec2_i32(u_input.e.xy, -vec2<i32>(8681i, u_input.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-421f, -1409f)) + -204f), func_4(vec3<i32>(u_input.b.x, -13499i, 1i), true, Struct_4(Struct_2(Struct_1(var_0.a, vec2<u32>(12013u, 4294967295u)), Struct_1(u_input.a.x, var_0.b)), Struct_2(Struct_1(u_input.c.x, vec2<u32>(983u, 0u)), Struct_1(var_0.b.x, var_0.b)), ~vec3<u32>(0u, 26973u, 7669u), Struct_3(u_input.e, vec4<bool>(true, false, true, false), vec2<i32>(u_input.e.x, u_input.e.x), -490f, Struct_2(Struct_1(0u, var_0.b), Struct_1(var_0.b.x, var_0.b))), Struct_3(u_input.b, vec4<bool>(true, false, true, true), vec2<i32>(u_input.e.x, u_input.b.x), 517f, Struct_2(Struct_1(0u, u_input.a), Struct_1(1u, vec2<u32>(1u, 6608u))))), !any(vec2<bool>(true, true)))), Struct_3(firstTrailingBit(vec4<i32>(~1i, min(33785i, u_input.e.x), _wgslsmith_mod_i32(u_input.b.x, -1i), u_input.e.x)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(select(true, true, true), true, select(false, true, true), true), true), _wgslsmith_mod_vec2_i32(u_input.e.yw, _wgslsmith_sub_vec2_i32(u_input.b.zx, firstTrailingBit(u_input.b.ww))), -1617f, func_4(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(38405i, u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e.x, -41912i, -1i), u_input.b.yzy), ~vec3<i32>(-1i, u_input.b.x, 1i)), any(vec4<bool>(true, true, true, true)), Struct_4(func_4(vec3<i32>(u_input.e.x, u_input.e.x, -1i), true, Struct_4(Struct_2(Struct_1(5283u, u_input.c), Struct_1(4294967295u, u_input.c)), Struct_2(Struct_1(21694u, vec2<u32>(u_input.a.x, u_input.a.x)), Struct_1(46060u, vec2<u32>(4294967295u, u_input.d))), vec3<u32>(u_input.a.x, 1u, 4294967295u), Struct_3(vec4<i32>(u_input.b.x, 0i, u_input.b.x, 49609i), vec4<bool>(true, true, true, false), u_input.b.wy, -1051f, Struct_2(Struct_1(u_input.c.x, u_input.a), Struct_1(86381u, u_input.a))), Struct_3(vec4<i32>(u_input.e.x, u_input.e.x, 2147483647i, 2147483647i), vec4<bool>(false, false, true, false), u_input.e.zy, 3014f, Struct_2(Struct_1(var_0.a, u_input.a), Struct_1(4294967295u, vec2<u32>(u_input.a.x, u_input.a.x))))), false), Struct_2(Struct_1(var_0.a, vec2<u32>(82192u, 1u)), Struct_1(var_0.a, vec2<u32>(1u, var_0.a))), select(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), vec3<u32>(34964u, 52358u, u_input.c.x), vec3<bool>(false, false, false)), Struct_3(vec4<i32>(u_input.b.x, -42953i, 8299i, 16346i), vec4<bool>(false, true, true, true), u_input.e.yw, 651f, Struct_2(Struct_1(var_0.a, var_0.b), Struct_1(1u, var_0.b))), Struct_3(u_input.e, vec4<bool>(true, false, false, false), vec2<i32>(u_input.b.x, -2147483647i), -2164f, Struct_2(Struct_1(var_0.b.x, vec2<u32>(u_input.a.x, 4294967295u)), Struct_1(var_0.b.x, vec2<u32>(var_0.b.x, var_0.b.x))))), _wgslsmith_dot_vec2_u32(u_input.c, u_input.c) != u_input.a.x)));
    var_1 = Struct_4(Struct_2(func_4(~vec3<i32>(u_input.e.x, var_1.d.a.x, u_input.b.x), true, Struct_4(func_2(), var_1.b, var_1.c << (vec3<u32>(1u, var_1.c.x, var_1.b.a.a) % vec3<u32>(32u)), Struct_3(u_input.b, var_1.d.b, u_input.b.ww, -101f, var_1.d.e), var_1.d), true).a, Struct_1(~0u, _wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.a.x, var_0.b.x), vec2<u32>(u_input.d, var_0.a), var_1.d.b.yx), abs(vec2<u32>(4294967295u, var_0.a))))), var_1.a, _wgslsmith_div_vec3_u32(vec3<u32>(~46035u << (var_0.b.x % 32u), var_1.a.b.a, 0u), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 48927u), vec3<u32>(8175u, 55972u, 63988u)))), Struct_3(var_1.d.a, vec4<bool>(var_1.d.b.x, !(!var_1.d.b.x), !(4294967295u >= var_1.c.x), any(select(var_1.e.b.wx, vec2<bool>(var_1.d.b.x, var_1.e.b.x), var_1.e.b.wy))), u_input.b.xy ^ var_1.d.a.wy, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.d.d))), func_2()), var_1.e);
    let var_2 = ~countOneBits(~(~vec2<u32>(var_1.d.e.a.a, var_0.a) ^ func_4(vec3<i32>(u_input.e.x, -1i, -2147483647i), true, Struct_4(Struct_2(Struct_1(var_1.b.b.a, vec2<u32>(58651u, 66878u)), Struct_1(var_0.b.x, vec2<u32>(1u, var_0.b.x))), var_1.a, vec3<u32>(0u, u_input.d, var_1.e.e.a.b.x), var_1.e, Struct_3(vec4<i32>(var_1.d.c.x, u_input.e.x, 8892i, var_1.d.a.x), var_1.d.b, var_1.d.a.ww, -1149f, var_1.a)), true).b.b));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -876f), _wgslsmith_f_op_f32(f32(-1f) * -1379f)));
    let var_4 = Struct_4(func_2(), func_2(), vec3<u32>(~(~var_2.x), 18491u, u_input.d ^ func_4(u_input.b.wwx, var_1.d.b.x, Struct_4(Struct_2(Struct_1(4294967295u, vec2<u32>(36942u, var_0.a)), Struct_1(4294967295u, u_input.c)), Struct_2(Struct_1(u_input.d, vec2<u32>(var_0.b.x, var_2.x)), var_1.e.e.b), vec3<u32>(var_0.b.x, u_input.d, u_input.c.x), Struct_3(vec4<i32>(9305i, var_1.e.a.x, u_input.b.x, 1i), var_1.e.b, vec2<i32>(var_1.e.a.x, 0i), var_1.e.d, Struct_2(var_1.a.a, var_1.b.b)), Struct_3(vec4<i32>(1i, 1i, -1i, u_input.b.x), vec4<bool>(var_1.e.b.x, false, var_1.e.b.x, true), var_1.d.c, var_3, var_1.e.e)), false).a.b.x) >> (~(vec3<u32>(4432u, var_2.x, 12285u) | _wgslsmith_clamp_vec3_u32(var_1.c, vec3<u32>(64745u, var_2.x, 4294967295u), vec3<u32>(0u, 4294967295u, 4294967295u))) % vec3<u32>(32u)), Struct_3(-var_1.e.a, select(select(select(var_1.d.b, vec4<bool>(true, true, var_1.e.b.x, var_1.e.b.x), vec4<bool>(var_1.e.b.x, var_1.e.b.x, false, var_1.e.b.x)), select(vec4<bool>(false, false, var_1.e.b.x, var_1.e.b.x), vec4<bool>(true, false, true, var_1.d.b.x), var_1.e.b.x), var_1.e.b), vec4<bool>(var_1.d.b.x, true, true, var_3 == 550f), any(select(var_1.d.b, vec4<bool>(var_1.d.b.x, false, false, var_1.d.b.x), vec4<bool>(var_1.e.b.x, var_1.e.b.x, var_1.d.b.x, false)))), var_1.d.a.yx, _wgslsmith_f_op_f32(716f * -1092f), func_4(-countOneBits(var_1.d.a.yzy), all(select(var_1.d.b, var_1.d.b, vec4<bool>(true, false, true, true))), Struct_4(func_4(vec3<i32>(1i, var_1.d.a.x, 0i), true, Struct_4(var_1.e.e, Struct_2(Struct_1(u_input.d, var_1.e.e.b.b), Struct_1(var_2.x, var_0.b)), var_1.c, Struct_3(vec4<i32>(41193i, 32907i, var_1.d.c.x, var_1.d.a.x), vec4<bool>(true, true, false, var_1.e.b.x), vec2<i32>(var_1.d.a.x, u_input.b.x), 407f, var_1.d.e), var_1.d), var_1.d.b.x), var_1.b, ~var_1.c, var_1.e, Struct_3(vec4<i32>(2147483647i, -45634i, u_input.b.x, u_input.b.x), var_1.d.b, vec2<i32>(6335i, -1i), var_1.d.d, var_1.e.e)), var_1.d.b.x)), var_1.d);
    var var_5 = _wgslsmith_sub_u32(~(~_wgslsmith_sub_u32(~0u, _wgslsmith_sub_u32(var_4.c.x, 1u))), 1u);
    var var_6 = Struct_3(vec4<i32>(var_1.d.a.x >> (_wgslsmith_clamp_u32(abs(var_2.x), firstTrailingBit(var_0.a), select(28655u, var_1.d.e.b.b.x, false)) % 32u), abs(2147483647i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_4.e.c.x, -var_4.e.a.x), u_input.b.x), 0i), vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_3, var_1.e.d))) < 285f, !(!all(vec3<bool>(false, false, true))), var_4.d.b.x, (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 32453u), var_2) << (18877u % 32u)) <= ~(~var_1.e.e.a.a)), abs(-var_4.e.a.xw), var_3, var_4.d.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-672f, -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1886f, -1054f, var_1.e.b.x)), _wgslsmith_f_op_f32(var_3 * 1096f), _wgslsmith_f_op_f32(exp2(var_4.e.d)), -1012f) + vec4<f32>(-1062f, var_6.d, _wgslsmith_f_op_f32(-766f * -1000f), -226f))));
}

