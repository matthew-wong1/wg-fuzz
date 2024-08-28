struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec3<bool> {
    var var_0 = ~u_input.a.x;
    var var_1 = u_input.a;
    let var_2 = Struct_2(Struct_1(vec4<bool>(!any(vec4<bool>(false, true, true, true)), false, all(vec4<bool>(true, true, true, true)), true)), vec2<bool>(true, true), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -1i, 1i, abs(-1i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(0i, 0i, -21079i, -2147483647i) << (min(vec4<u32>(1u, u_input.a.x, 72659u, u_input.a.x), vec4<u32>(0u, 1u, var_1.x, var_1.x)) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i)), abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 0i, 0i), vec4<i32>(-2147483647i, 0i, -23486i, -2147483647i)), ~17123i, 12174i, max(-1i, -25781i)))));
    var_0 = var_1.x;
    let var_3 = Struct_3(~(var_1.x >> (var_1.x % 32u)) < u_input.a.x, var_2.a.a);
    return !var_2.a.a.zyx;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(vec4<bool>(true, all(!func_3()), u_input.a.x == (max(29387u, u_input.a.x) & 1u), _wgslsmith_mod_i32(-23715i, -1289i) <= (countOneBits(-23302i) >> ((u_input.a.x << (1u % 32u)) % 32u))));
    var_0 = Struct_1(var_0.a);
    let var_1 = countOneBits(select(vec2<i32>(1i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, _wgslsmith_div_i32(6285i, -1i)), _wgslsmith_div_vec2_i32(abs(vec2<i32>(-1i, -7344i)), select(vec2<i32>(-2147483647i, 1i), vec2<i32>(-33279i, -64438i), var_0.a.x)), vec2<i32>(1i, 1i)), !var_0.a.xy));
    let var_2 = vec2<u32>(47930u, ~min(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, 1u)), _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, u_input.a.x))), 27794u));
    var var_3 = var_0.a.xyy;
    return Struct_2(Struct_1(vec4<bool>(!(false & var_3.x), var_3.x, true, var_0.a.x)), select(var_3.yx, vec2<bool>(var_3.x, !all(var_0.a)), false), select(~vec4<i32>(countOneBits(var_1.x), var_1.x, ~1993i, reverseBits(0i)), firstLeadingBit(vec4<i32>(var_1.x ^ var_1.x, -48077i, -2147483647i, select(-19802i, var_1.x, var_0.a.x))), var_1.x > -21400i));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_4 {
    var var_0 = ~countOneBits(u_input.a.x);
    var var_1 = func_2().a.a;
    let var_2 = func_2().a;
    let var_3 = true;
    let var_4 = func_2().a;
    return Struct_4(var_2, arg_1.x, Struct_3(false, vec4<bool>(!all(vec4<bool>(true, true, true, false)), false, func_2().a.a.x, var_1.x)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-614f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1609f))), -133f)));
    let var_1 = Struct_2(Struct_1(func_2().a.a), arg_1.c.b.yz, arg_0);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)) + arg_2.x);
    var_0 = -1020f;
    var_0 = arg_2.x;
    return arg_1;
}

fn func_1() -> vec3<i32> {
    let var_0 = func_5(abs(select(vec4<i32>(select(24733i, -47215i, false), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 48674i, 2147483647i, 0i), vec4<i32>(2147483647i, 41651i, 16433i, -9787i)), _wgslsmith_add_i32(-30025i, 23283i), 0i), -(~vec4<i32>(1i, -1i, 2147483647i, 1i)), true)), func_4(func_2(), vec3<i32>(15918i, func_2().c.x, abs(abs(0i))), Struct_1(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false))), vec2<bool>(true, false)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f)), 811f, 697f));
    let var_1 = vec2<bool>(var_0.c.a, false && (!var_0.a.a.x || var_0.a.a.x));
    var var_2 = Struct_4(func_2().a, _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(var_0.b, var_0.b, 20732i)), firstTrailingBit(vec3<i32>(var_0.b, 2147483647i, var_0.b)), vec3<i32>(var_0.b, -2147483647i, var_0.b) & vec3<i32>(var_0.b, 27013i, -17981i)), ~(vec3<i32>(-1i) * -vec3<i32>(var_0.b, -53428i, var_0.b))), Struct_3(func_5(-vec4<i32>(var_0.b, var_0.b, 67844i, -6300i) ^ select(vec4<i32>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<i32>(84252i, var_0.b, var_0.b, var_0.b), var_0.c.b), Struct_4(var_0.a, abs(33518i), func_4(Struct_2(var_0.a, var_1, vec4<i32>(var_0.b, var_0.b, var_0.b, 2147483647i)), vec3<i32>(32452i, 11738i, var_0.b), Struct_1(vec4<bool>(var_0.a.a.x, var_0.c.b.x, false, var_0.a.a.x)), var_1).c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2240f, 164f, -431f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -221f, -1386f) + vec3<f32>(298f, -1000f, 880f)))).c.a, select(vec4<bool>(var_0.b > var_0.b, func_4(Struct_2(Struct_1(var_0.c.b), var_1, vec4<i32>(var_0.b, 1i, var_0.b, var_0.b)), vec3<i32>(-12783i, 9407i, var_0.b), var_0.a, vec2<bool>(false, true)).a.a.x, 77027u < u_input.a.x, !var_1.x), var_0.c.b, var_0.c.b)));
    var_2 = func_4(func_2(), -abs(~firstLeadingBit(vec3<i32>(1i, -5307i, 1i))), var_0.a, var_0.a.a.xy);
    let var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.b & (-var_2.b >> (~0u % 32u)), var_0.b, reverseBits(-1i), var_0.b), vec4<i32>(-55836i, -8344i, firstTrailingBit(0i), ~min(-8785i, var_2.b)));
    return vec3<i32>(var_0.b, ~_wgslsmith_mod_i32(-(var_3.x >> (u_input.a.x % 32u)), 0i), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i & max(-43635i, _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 4641i, 24795i), vec3<i32>(-22988i, -31996i, -1i)), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(-2147483647i, -1i, 61879i)), func_1())));
    var_0 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(func_2().c.x, 18921i)), _wgslsmith_mult_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 19699i), ~vec2<i32>(-1i, 4647i)), _wgslsmith_div_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -15891i), vec2<i32>(3881i, 23104i))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-4313i, 6573i), vec2<i32>(-16477i, 2147483647i)), 0i))));
    let var_1 = Struct_2(func_5(select(vec4<i32>(1i, ~2147483647i, -2147483647i, -9606i), vec4<i32>(-3760i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 0i), vec3<i32>(2147483647i, 18638i, 17908i)), -1i, -33553i), func_3().x), func_5(-countOneBits(vec4<i32>(-14283i, -28798i, 18196i, -1i)), func_4(func_2(), min(vec3<i32>(-14781i, -23285i, -1i), vec3<i32>(-16677i, 0i, 2147483647i)), Struct_1(vec4<bool>(true, false, true, false)), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-894f, 1637f, 281f), vec3<f32>(-391f, 559f, 180f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-896f, 1154f, 901f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1091f, 563f, -1000f), vec3<f32>(808f, -1028f, -215f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1146f, 1325f, -541f) - vec3<f32>(-596f, -347f, -325f))) * vec3<f32>(1f, -777f, _wgslsmith_f_op_f32(step(628f, -1000f))))).a, vec2<bool>(true, true), ~(-_wgslsmith_sub_vec4_i32(-vec4<i32>(0i, -1i, -1i, -7582i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 0i, 44129i, 0i), vec4<i32>(-1530i, -3934i, 0i, -47126i)))));
    var_0 = var_1.c.x;
    let var_2 = u_input.a.x;
    var_0 = -2147483647i;
    var_0 = 52791i;
    let x = u_input.a;
    s_output = StorageBuffer(-845f, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(~u_input.a.x, abs(34895u), 1u << (u_input.a.x % 32u))) >> ((79763u | ~firstLeadingBit(var_2)) % 32u));
}

