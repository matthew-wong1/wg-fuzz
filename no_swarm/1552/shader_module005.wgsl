struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1863f, 112f, 102f) + vec3<f32>(-550f, 1339f, 162f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-189f, -1373f, 517f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(382f, -197f, 117f) + vec3<f32>(1000f, -1000f, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-282f, 208f, -637f) - vec3<f32>(-680f, 122f, -216f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1681f, -295f, 1620f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -800f))))), select(vec3<bool>(true, true, any(!vec3<bool>(arg_0, arg_0, arg_0))), !select(!vec3<bool>(arg_0, true, arg_0), !vec3<bool>(arg_0, arg_0, true), !vec3<bool>(true, true, arg_0)), any(select(select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(arg_0, arg_0, true, false), select(vec4<bool>(arg_0, false, true, false), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, false, false, arg_0))))), abs(vec4<u32>(u_input.c, ~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.b, 0u, 86984u)), u_input.c, max(54968u | u_input.a.x, firstLeadingBit(u_input.c)))), arg_1);
    var_0 = Struct_1(vec3<f32>(1539f, _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), 1350f), var_0.a.x, !vec3<bool>(!(!var_0.c.x), false, any(select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(false, false, false, var_0.c.x), vec4<bool>(arg_0, var_0.c.x, true, false)))), firstLeadingBit(~firstTrailingBit(select(var_0.d, var_0.d, false))), countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, -32847i, arg_1, 1i), countOneBits(vec4<i32>(arg_1, 1i, var_0.e, var_0.e))), vec4<i32>(arg_1 | arg_1, _wgslsmith_mod_i32(arg_1, var_0.e), _wgslsmith_add_i32(40910i, arg_1), -60707i))));
    let var_1 = -firstTrailingBit(vec3<i32>(-(~var_0.e), abs(select(6342i, -15499i, false)), -2147483647i));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(var_0.a.xy, vec2<f32>(_wgslsmith_f_op_f32(1267f * 1267f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_3 = ~_wgslsmith_div_u32(~reverseBits(20425u), _wgslsmith_sub_u32(1u, ~_wgslsmith_add_u32(0u, u_input.b)));
    return !select(select(!select(var_0.c, vec3<bool>(arg_0, var_0.c.x, true), true), select(var_0.c, vec3<bool>(true, true, true), var_0.c), !(!vec3<bool>(var_0.c.x, true, var_0.c.x))), vec3<bool>(arg_1 < ~arg_1, true, var_0.c.x), !var_0.c);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>) -> bool {
    var var_0 = (50328u | _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(u_input.b, arg_0.x, 25514u)), vec3<u32>(26522u, arg_0.x, 88752u)), ~vec3<u32>(4294967295u, arg_0.x, u_input.c))) > (firstLeadingBit(~0u) << (0u % 32u));
    var_0 = !all(!(!func_3(true, -84387i)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -612f) - _wgslsmith_f_op_f32(arg_1.x * 498f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x)))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1509f)) - -1007f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), 864f, arg_1.x)), _wgslsmith_f_op_f32(trunc(arg_1.x)), func_3(true, _wgslsmith_mult_i32(-15827i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(58980i, -1i), countOneBits(1i)))), ~vec4<u32>(max(~arg_0.x, u_input.b >> (arg_0.x % 32u)), 1u, _wgslsmith_mod_u32(u_input.c, abs(9336u)), arg_0.x), 2147483647i);
    let var_2 = 0u;
    return 1i != -min(var_1.e, 3739i ^ select(0i, var_1.e, var_1.c.x));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = vec2<bool>(true, true);
    var var_1 = !vec2<bool>(var_0.x, func_2(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1715f, -1582f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-258f, -708f, -351f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-545f, 220f, -821f), vec3<f32>(_wgslsmith_f_op_f32(step(137f, -1238f)), _wgslsmith_f_op_f32(1060f - -1578f), _wgslsmith_f_op_f32(sign(1337f))))) - vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-106f, _wgslsmith_f_op_f32(select(-1639f, _wgslsmith_f_op_f32(max(784f, -1242f)), !var_1.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -264f)))), !vec3<bool>(!var_0.x, select(false, var_1.x, true), !var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(firstTrailingBit(0u), firstLeadingBit(~33193u), arg_0.x, arg_0.x), ~(vec4<u32>(u_input.a.x, arg_0.x, arg_0.x, 18981u) | firstTrailingBit(vec4<u32>(u_input.b, u_input.c, 2181u, arg_0.x)))), -(~2147483647i));
    let var_3 = vec3<i32>(1i, -1i, _wgslsmith_div_i32(-12259i, abs(abs(var_2.e))));
    let var_4 = min(0i, _wgslsmith_div_i32(countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_3.xx, var_3.yz), var_3.zy)), 1i));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = (~4294967295u >> (countOneBits(_wgslsmith_sub_u32(41504u >> (arg_0.d.x % 32u), _wgslsmith_mult_u32(u_input.b, 0u))) % 32u)) ^ ~_wgslsmith_sub_u32(arg_0.d.x, arg_0.d.x);
    let var_1 = !select(!arg_0.c, vec3<bool>(_wgslsmith_div_f32(-213f, 612f) > arg_0.a.x, arg_0.c.x, false), arg_0.c);
    var var_2 = func_1(~(~arg_0.d.xyw));
    var var_3 = arg_0;
    var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.a + _wgslsmith_f_op_vec3_f32(-arg_0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-413f)))), func_1(firstLeadingBit(~vec3<u32>(var_3.d.x, u_input.c, u_input.a.x))).c, select(firstLeadingBit(var_2.d), var_2.d, _wgslsmith_mod_u32(u_input.a.x, 4294967295u) < ~(1u ^ u_input.b)), var_2.e);
    return func_1(~(vec3<u32>(1u, ~u_input.c, var_0) << (abs(var_2.d.yzz | u_input.a) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(u_input.a), vec2<i32>(1i, firstLeadingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(-7420i, 0i, 1i), vec3<i32>(2147483647i, 1i, 0i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1291f, 447f, -941f, 606f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-811f, -322f, -484f, -804f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(593f, 242f, -458f, -1228f))))));
    let var_1 = var_0.a;
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)), func_4(func_1(max(var_0.d.wxw, vec3<u32>(34776u, 30705u, u_input.c))), firstLeadingBit(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.e, -2147483647i), vec2<i32>(-1i, var_0.e), vec2<i32>(var_0.e, -53808i)))), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1266f + 599f) + _wgslsmith_f_op_f32(floor(-1301f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-128f - var_1.x))), 329f)).a.x, func_4(Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(var_0.a * var_0.a)), _wgslsmith_f_op_f32(-var_1.x), func_4(func_1(vec3<u32>(u_input.b, 35569u, u_input.c)), vec2<i32>(var_0.e, var_0.e), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-176f, var_1.x, -761f, var_1.x), vec4<f32>(var_1.x, var_1.x, var_0.a.x, var_0.a.x)))).c, abs(vec4<u32>(18974u, 4294967295u, u_input.a.x, var_0.d.x)), 1i), _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(8227i, 1i) ^ vec2<i32>(var_0.e, 31860i)), -vec2<i32>(var_0.e, -24229i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1399f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + -334f) - _wgslsmith_f_op_f32(1000f + -668f)), _wgslsmith_f_op_f32(1008f * _wgslsmith_f_op_f32(-var_1.x)))).c, vec4<u32>(u_input.c ^ ~(~var_0.d.x), 21412u, 4294967295u, firstTrailingBit(_wgslsmith_sub_u32(4294967295u, var_0.d.x))), 64164i);
    var_0 = func_1(reverseBits(~countOneBits(var_0.d.wzz)));
    let var_2 = all(!vec4<bool>(all(var_0.c.zx), true, any(vec4<bool>(false, false, var_0.c.x, var_0.c.x)), any(!var_0.c)));
    let var_3 = -800f;
    let var_4 = func_4(Struct_1(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -921f), -592f), -154f, !func_3(func_4(Struct_1(vec3<f32>(var_3, -1000f, -1000f), var_1.x, var_0.c, var_0.d, var_0.e), vec2<i32>(-2147483647i, var_0.e), vec4<f32>(var_0.a.x, var_3, var_0.b, var_0.b)).c.x, reverseBits(0i)), func_4(func_4(Struct_1(vec3<f32>(var_3, var_0.a.x, -214f), 1302f, vec3<bool>(true, true, true), var_0.d, 53829i), vec2<i32>(8448i, 0i), vec4<f32>(706f, -598f, var_0.b, -1732f)), min(vec2<i32>(-1i, var_0.e), vec2<i32>(28697i, 2147483647i)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -1094f, 362f, var_3), vec4<f32>(2158f, 1638f, var_0.a.x, 923f))).d ^ vec4<u32>(var_0.d.x, var_0.d.x << (50016u % 32u), abs(u_input.c), _wgslsmith_div_u32(4294967295u, u_input.b)), var_0.e), vec2<i32>(_wgslsmith_sub_i32(1i, var_0.e), 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_3, var_0.b, var_1.x) * vec4<f32>(-679f, -2115f, var_1.x, 999f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1294f, var_0.b, -641f, var_1.x) + vec4<f32>(var_1.x, var_3, var_3, var_3))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3, var_1.x, var_3, 693f))), vec4<f32>(var_0.b, var_3, -352f, 530f), vec4<bool>(true, var_2, true, var_0.c.x))), true))));
    var_0 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(53787u, max(_wgslsmith_mult_i32(select(2147483647i, ~(-2147483647i), true), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e, var_4.e, -12855i, 1i), vec4<i32>(var_4.e, 24169i, 2147483647i, var_4.e))), firstTrailingBit(_wgslsmith_mult_i32(-2147483647i, var_4.e))), func_1(~abs(var_4.d.wyx) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(var_4.d, vec4<u32>(var_4.d.x, var_0.d.x, var_0.d.x, var_4.d.x)), 25666u, 1u) % vec3<u32>(32u))).d.x);
}

