struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> bool {
    global0 = !select(false, select(true, _wgslsmith_f_op_f32(round(-707f)) != _wgslsmith_f_op_f32(-788f * 213f), true), any(vec4<bool>(true, false, u_input.b.x != -44759i, false)));
    global0 = true;
    global0 = -(countOneBits(u_input.a.x) & u_input.b.x) >= -u_input.b.x;
    let var_0 = Struct_3(Struct_2(any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), Struct_1(abs(~u_input.b), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(722f, 220f))), _wgslsmith_dot_vec3_i32(abs(u_input.b.wyy), u_input.b.xwy)), Struct_1(-vec4<i32>(2147483647i, -23072i, u_input.a.x, -30392i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-454f, 287f)), _wgslsmith_mult_i32(firstLeadingBit(u_input.a.x), 2147483647i)), _wgslsmith_add_i32(2147483647i >> (1u % 32u), -1i), ~1u), ~u_input.b.x);
    global0 = all(vec4<bool>(!select(var_0.a.a, var_0.a.a, false), false, true, false)) || !any(!vec4<bool>(var_0.a.a, false, false, var_0.a.a));
    return var_0.a.a;
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_2(any(vec2<bool>(all(vec4<bool>(false, true, false, false)), true)) | true, Struct_1(u_input.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-957f, 342f), vec2<f32>(1624f, -1339f), true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(365f, 377f)))), -1545i ^ ~u_input.b.x), Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-32778i, -2147483647i, 56611i, 21721i)), u_input.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-734f, 1f)), ~u_input.b.x), -_wgslsmith_sub_i32(-u_input.b.x, u_input.a.x), 4294967295u);
    let var_1 = u_input.b;
    var var_2 = Struct_2(var_0.a, Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.b.x, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, var_0.c.c, -2147483647i), vec4<i32>(17851i, var_1.x, u_input.b.x, var_0.b.a.x)), i32(-1i) * -37802i, -4302i), _wgslsmith_div_vec4_i32(u_input.b, ~vec4<i32>(-1i, -46436i, 47281i, -1i)), vec4<i32>(var_0.b.a.x, u_input.a.x, var_1.x, 15991i << (var_0.e % 32u))), _wgslsmith_f_op_vec2_f32(trunc(var_0.b.b)), select(min(var_0.d, u_input.a.x), var_1.x, any(select(vec4<bool>(var_0.a, false, false, false), vec4<bool>(var_0.a, var_0.a, var_0.a, true), true)))), var_0.c, u_input.a.x, ~min(1u, ~_wgslsmith_sub_u32(var_0.e, var_0.e)));
    global0 = all(select(!(!select(vec2<bool>(var_2.a, true), vec2<bool>(var_0.a, true), false)), select(vec2<bool>(var_0.a, var_0.a), select(select(vec2<bool>(false, false), vec2<bool>(var_2.a, var_2.a), var_0.a), vec2<bool>(false, true), vec2<bool>(var_2.a, var_0.a)), vec2<bool>(any(vec3<bool>(var_0.a, true, var_2.a)), any(vec2<bool>(var_2.a, true)))), vec2<bool>(_wgslsmith_div_i32(var_1.x, 2063i) < -var_0.c.c, true)));
    let var_3 = var_2.b;
    return !select(select(select(!vec3<bool>(var_2.a, true, true), vec3<bool>(true, true, true), vec3<bool>(var_0.a, var_2.a, var_2.a)), !select(vec3<bool>(var_2.a, true, false), vec3<bool>(var_0.a, false, false), vec3<bool>(true, var_2.a, var_2.a)), select(select(vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(true, var_2.a, var_0.a), vec3<bool>(var_0.a, false, var_2.a)), vec3<bool>(var_0.a, var_0.a, false), true)), vec3<bool>(true, var_0.a, false), select(select(select(vec3<bool>(var_2.a, var_0.a, var_0.a), vec3<bool>(var_2.a, true, true), vec3<bool>(var_0.a, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(var_2.a, var_2.a, var_2.a), var_0.a), !vec3<bool>(false, var_0.a, true)), !vec3<bool>(var_0.a, false, true), !(!vec3<bool>(var_2.a, true, var_2.a))));
}

fn func_1() -> vec2<f32> {
    global0 = func_2() && true;
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2091f - _wgslsmith_f_op_f32(231f * -440f)), _wgslsmith_f_op_f32(abs(-169f)));
    var var_1 = select(vec3<bool>(true, true, true), vec3<bool>(select(!any(vec4<bool>(false, false, true, false)), u_input.b.x <= u_input.a.x, !any(vec2<bool>(false, true))), select(false, true, true), (~u_input.a.x << (_wgslsmith_mod_u32(65864u, 1561u) % 32u)) <= _wgslsmith_mult_i32(~u_input.b.x, u_input.a.x)), !any(func_3()));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1159f)));
    var var_2 = firstLeadingBit(128843u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(411f, 683f) - vec2<f32>(-1456f, -968f))) + vec2<f32>(-481f, _wgslsmith_f_op_f32(round(-322f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(258f, 1288f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1002f, -1208f)))))) + vec2<f32>(1f, 1f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(reverseBits(1u), 4294967295u, abs(firstLeadingBit(1u))) | ~(~abs(1u)), 61866u);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(742f, 1014f)) + vec2<f32>(1127f, 1022f)) * vec2<f32>(-437f, _wgslsmith_f_op_f32(min(-176f, -162f)))), !func_3().x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-646f, _wgslsmith_f_op_f32(step(442f, 719f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-418f, var_1.x))), vec2<bool>(true, true))))))) - vec2<f32>(var_1.x, var_1.x));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, var_1.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1580f, var_1.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-371f, var_1.x) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, var_1.x), vec2<f32>(1517f, var_1.x))))))));
    let var_2 = _wgslsmith_clamp_vec4_u32(select(select(vec4<u32>(43726u, 12594u, 105739u, var_0), vec4<u32>(var_0, 490u, var_0, var_0), false) & _wgslsmith_add_vec4_u32(vec4<u32>(0u, 13996u, 47679u, 24390u), vec4<u32>(19535u, 7839u, 82660u, var_0)), ~(~vec4<u32>(var_0, var_0, 66385u, var_0)), !all(vec4<bool>(true, true, false, false))) ^ min(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 4294967295u, 0u, 4294967295u), ~vec4<u32>(1u, var_0, var_0, 0u)), vec4<u32>(abs(var_0), ~var_0, 1u, var_0)), ~vec4<u32>(var_0, ~13711u, 4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(var_0, 1u, 31981u))), abs(max(vec4<u32>(abs(0u), ~var_0, ~var_0, _wgslsmith_div_u32(1u, 73983u)), vec4<u32>(0u, abs(var_0), ~var_0, 1u >> (1u % 32u)))));
    global0 = !select(func_3().x, !(-335f <= var_1.x) & true, select(!(4294967295u < var_0), !select(true, true, true), any(vec2<bool>(true, true))));
    var var_3 = Struct_2(true, Struct_1(max(vec4<i32>(u_input.a.x | -16665i, reverseBits(u_input.b.x), u_input.b.x, ~(-60422i)), u_input.b), vec2<f32>(-797f, var_1.x), u_input.a.x), Struct_1(u_input.b, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_1.x, 1275f)), var_1.x)), var_1.x), _wgslsmith_mod_i32(u_input.a.x & -15157i, u_input.a.x)), -_wgslsmith_add_i32(~(-1i), 1i), ~_wgslsmith_dot_vec3_u32(var_2.wyz, vec3<u32>(46822u, var_0, min(4294967295u, var_0))));
    global0 = all(vec2<bool>(true, var_3.a)) && false;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(44366u, ~4294967295u, var_3.e) | ~countOneBits(select(var_2.xzx, var_2.zwx, vec3<bool>(var_3.a, var_3.a, var_3.a))), 2147483647i, _wgslsmith_div_f32(-816f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1525f - -280f), var_3.c.b.x))))), ~max(var_2.zx >> (vec2<u32>(4294967295u, var_3.e) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(104930u, var_2.x), vec2<u32>(0u, var_2.x)) << (var_2.zx % vec2<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(345f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-916f)) * _wgslsmith_f_op_f32(-var_3.c.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1366f)), var_1.x, 1397f));
}

