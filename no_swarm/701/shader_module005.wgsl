struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

var<private> global1: vec3<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec3<f32> {
    var var_0 = firstLeadingBit(select(reverseBits(vec2<i32>(-2147483647i, _wgslsmith_div_i32(u_input.a.x, arg_1))), u_input.a.xz, false));
    global0 = array<vec3<bool>, 17>();
    var var_1 = Struct_2(2601f, select(~vec2<u32>(_wgslsmith_add_u32(4294967295u, 0u), 1u), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(10159u, 11887u), 2568u, ~4294967295u), firstTrailingBit(60581u)), true));
    var var_2 = u_input.a;
    var var_3 = Struct_1(2968i, u_input.a, vec4<u32>(var_1.b.x, ~var_1.b.x, var_1.b.x, var_1.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-520f, 811f, 403f, -1217f) + vec4<f32>(523f, var_1.a, var_1.a, -533f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, global1.x, global1.x, var_1.a)), !(!vec4<bool>(false, arg_0, true, false)))), vec4<f32>(-234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-833f))), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -745f))));
    return var_3.d.zzz;
}

fn func_2() -> bool {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-348f, -556f, global1.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, 322f, 868f), vec3<f32>(global1.x, global1.x, global1.x), global0[_wgslsmith_index_u32(15341u, 17u)])), vec3<f32>(global1.x, global1.x, 346f)), select(select(global0[_wgslsmith_index_u32(4294967295u, 17u)], vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(global0[_wgslsmith_index_u32(38757u, 17u)], vec3<bool>(true, false, false), false), vec3<bool>(false, true, false))))));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(false, -29864i))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(522f, 654f, global1.x))))))))));
    let var_0 = 58573u;
    global1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(trunc(global1.x))), 1000f, _wgslsmith_f_op_f32(-global1.x)) + vec3<f32>(global1.x, global1.x, global1.x))));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1074f, global1.x, 2258f), vec3<f32>(global1.x, 374f, global1.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1389f, global1.x, global1.x), vec3<f32>(global1.x, -666f, global1.x), true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -872f, 1283f)))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, _wgslsmith_f_op_f32(global1.x * -1022f), -1751f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -1168f)))), any(vec2<bool>(false, false))))));
    return false;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec2<f32>, arg_3: bool) -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_div_f32(arg_2.x, global1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -619f))), -2355f) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1481f, global1.x, 387f)), vec3<f32>(-710f, 1342f, 855f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(403f, 1134f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(639f))))));
    return vec2<u32>(_wgslsmith_mult_u32(select(1u, 1u, select(true, 1i <= u_input.a.x, all(vec4<bool>(false, arg_1, false, arg_3)))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(34238u, 52216u, 12396u), vec3<u32>(1u, 4294967295u, 4294967295u))), ~_wgslsmith_mod_u32(select(1u, 1u, false), 28833u) ^ 0u);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(-262f, _wgslsmith_add_vec2_u32(arg_3.b << (vec2<u32>(arg_3.b.x, arg_3.b.x) % vec2<u32>(32u)), func_4(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) ^ 1i, func_2() & true, _wgslsmith_f_op_vec2_f32(vec2<f32>(1799f, arg_3.a) - arg_0.d.yx), false)));
    var var_1 = Struct_1(_wgslsmith_mod_i32(arg_0.b.x, reverseBits(i32(-1i) * -1i)), vec3<i32>(_wgslsmith_sub_i32(0i, abs(_wgslsmith_mod_i32(u_input.a.x, -54127i))), -2147483647i & -(arg_2.x << (4294967295u % 32u)), _wgslsmith_dot_vec4_i32(~vec4<i32>(13295i, -20400i, 0i, arg_0.a), vec4<i32>(20509i, -10411i, ~0i, ~u_input.a.x))), vec4<u32>(4294967295u, ~(~arg_3.b.x), countOneBits(select(~4294967295u, 91242u, true)), 4294967295u), arg_0.d);
    var_1 = Struct_1(arg_2.x, vec3<i32>(_wgslsmith_add_i32(min(0i, u_input.a.x) ^ arg_2.x, max(u_input.a.x | arg_0.a, -47675i)), var_1.a, abs(1i)), min(abs(~arg_0.c << (~var_1.c % vec4<u32>(32u))), ~vec4<u32>(~1u, 24679u, 1u, arg_3.b.x >> (var_1.c.x % 32u))), var_1.d);
    var_1 = arg_0;
    global0 = array<vec3<bool>, 17>();
    return Struct_2(arg_1, min(max(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.c.x, var_0.b.x), var_1.c.zx)), abs(func_4(u_input.a.x, true, var_1.d.wx, false))), ~_wgslsmith_mod_vec2_u32(arg_0.c.xz, firstLeadingBit(vec2<u32>(7317u, arg_0.c.x)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_2) -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3.a, _wgslsmith_f_op_f32(abs(1000f)))) - arg_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1116f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -779f)))))));
    global1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -1435f, arg_3.a), vec3<f32>(-649f, 1569f, 965f)))))) - vec3<f32>(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1504f + 515f)), -673f))));
    let var_0 = arg_3;
    let var_1 = Struct_1(arg_0.x, firstLeadingBit(_wgslsmith_add_vec3_i32(arg_0.zxy, vec3<i32>(u_input.a.x, arg_0.x, arg_0.x) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, 0u, 1u), vec3<u32>(arg_3.b.x, var_0.b.x, arg_3.b.x)) % vec3<u32>(32u)))), vec4<u32>((66894u | var_0.b.x) >> (~arg_3.b.x % 32u), 62082u, 0u, 4294967295u) ^ (vec4<u32>(~arg_2, select(arg_3.b.x, arg_2, true), ~arg_2, var_0.b.x) << ((vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x) >> (~vec4<u32>(arg_2, 1u, arg_2, var_0.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1541f)), _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(360f, -333f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(518f, global1.x))), -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, arg_3.a, var_0.a, global1.x) + vec4<f32>(var_0.a, 1000f, var_0.a, var_0.a))))));
    global1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(var_1.d.wyx, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_1.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a - arg_3.a))), func_1(Struct_1(-1350i, u_input.a, vec4<u32>(4294967295u, 0u, 4294967295u, var_1.c.x), vec4<f32>(-999f, arg_3.a, var_0.a, var_1.d.x)), var_1.d.x, ~var_1.b.xy, func_1(Struct_1(u_input.a.x, arg_0.xzw, vec4<u32>(27085u, 12947u, 4294967295u, arg_2), vec4<f32>(arg_3.a, global1.x, -1349f, 1913f)), 231f, var_1.b.yz, var_0)).a)))));
    return ~abs(select(min(vec2<u32>(arg_2, var_1.c.x), vec2<u32>(1u, 3495u)), ~vec2<u32>(var_1.c.x, 23421u), select(arg_1, arg_1, false)) & ~(arg_3.b ^ var_0.b));
}

fn func_6(arg_0: vec2<u32>, arg_1: vec3<i32>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(global1.x)), ~arg_0);
    global0 = array<vec3<bool>, 17>();
    let var_1 = all(select(vec2<bool>(true || all(vec3<bool>(true, false, false)), select(true, select(true, false, false), all(vec4<bool>(true, false, false, false)))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), any(vec2<bool>(true, true))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - -1241f)) * global1.x), vec2<u32>(arg_0.x, var_0.b.x));
    var_0 = var_2;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_i32(func_6(~func_5(select(vec4<i32>(0i, u_input.a.x, 1i, 1i), vec4<i32>(-18554i, 0i, u_input.a.x, u_input.a.x), true), vec2<bool>(true, true), 1u, func_1(Struct_1(u_input.a.x, vec3<i32>(u_input.a.x, 0i, 9756i), vec4<u32>(0u, 21854u, 24073u, 35887u), vec4<f32>(1317f, global1.x, global1.x, global1.x)), global1.x, u_input.a.zz, Struct_2(1172f, vec2<u32>(5299u, 0u)))), u_input.a), ~min(u_input.a.x, -u_input.a.x), u_input.a.x);
    var var_1 = Struct_1(~(-1i), (vec3<i32>(~var_0, u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -2147483647i, 0i), u_input.a)) | countOneBits(_wgslsmith_add_vec3_i32(u_input.a, u_input.a))) ^ vec3<i32>(min(u_input.a.x, -39362i & u_input.a.x), abs(1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, -31587i, 0i), vec4<i32>(17884i, 19901i, 26436i, -2147483647i))), vec4<u32>(52018u, 1u, (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 21761u), vec3<u32>(3537u, 0u, 0u)) & ~4294967295u) ^ ~firstTrailingBit(4294967295u), _wgslsmith_clamp_u32(min(1u, ~0u), 46490u, 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(abs(634f)), _wgslsmith_f_op_f32(trunc(global1.x))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2379f, -257f, -429f, global1.x), vec4<f32>(global1.x, 976f, global1.x, 887f))), vec4<f32>(1170f, global1.x, global1.x, -284f)))))));
    global1 = var_1.d.wzx;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(f32(-1f) * -1652f)), ~reverseBits(_wgslsmith_div_vec2_u32(abs(var_1.c.xz), _wgslsmith_mult_vec2_u32(var_1.c.zz, var_1.c.xz))));
    let var_3 = vec4<bool>(var_1.a != var_0, true, all(vec3<bool>(36837u >= var_1.c.x, false, true)) || true, any(vec3<bool>(true, u_input.a.x != _wgslsmith_add_i32(1i, -36783i), true && any(vec2<bool>(true, true)))));
    var var_4 = _wgslsmith_div_u32(~var_2.b.x, func_1(Struct_1(~1i, u_input.a, ~var_1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d) + _wgslsmith_f_op_vec4_f32(vec4<f32>(389f, -1389f, var_1.d.x, var_1.d.x) + vec4<f32>(global1.x, global1.x, 1269f, -786f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -691f))), countOneBits(-vec2<i32>(var_0, u_input.a.x)), Struct_2(_wgslsmith_f_op_vec3_f32(func_3(var_3.x, -39032i)).x, vec2<u32>(var_2.b.x, 40414u))).b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(_wgslsmith_add_i32(firstLeadingBit(var_1.a), abs(-2147483647i))), abs(-44011i), select(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a.x, 1i, 1i, u_input.a.x)), vec4<i32>(1i, var_0, var_0, var_0) >> (var_1.c % vec4<u32>(32u))) >> (~min(vec4<u32>(var_2.b.x, 623u, 46398u, var_1.c.x), var_1.c) % vec4<u32>(32u)), ~(~_wgslsmith_div_vec4_i32(vec4<i32>(var_0, 1730i, -1i, var_1.b.x), vec4<i32>(var_1.a, 15199i, -12440i, 1i))), select(var_3, vec4<bool>(select(var_3.x, var_3.x, false), false, -28358i >= var_1.a, var_3.x), !(!var_3))), firstTrailingBit(vec4<u32>(4294967295u >> (var_1.c.x % 32u), var_2.b.x, abs(1u), var_2.b.x)));
}

