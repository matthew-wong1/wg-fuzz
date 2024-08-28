struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = vec4<bool>(all(!(!select(arg_0.d, vec2<bool>(arg_0.d.x, arg_0.d.x), false))), arg_0.c <= ~_wgslsmith_div_u32(1u, ~arg_0.b), arg_0.d.x, arg_0.d.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e, global1.a.x, arg_1)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-123f, arg_0.e, arg_0.e)))))));
    global0 = true;
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-153f * arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1758f * global1.a.x) + _wgslsmith_f_op_f32(arg_0.a + -1162f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)), 585f, _wgslsmith_f_op_f32(global1.a.x + -2241f))))), firstLeadingBit(~global1.b));
    var var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b, arg_3.a, _wgslsmith_mod_i32(arg_3.a, -22549i), _wgslsmith_sub_i32(u_input.a, 1i)), -abs(~vec4<i32>(20337i, u_input.b, -27834i, arg_3.a)), _wgslsmith_add_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -7241i, arg_3.a, -1i), vec4<i32>(-1i, -1i, u_input.c.x, -34967i), vec4<i32>(arg_2, arg_3.a, u_input.c.x, -2147483647i)), ~vec4<i32>(10481i, 3717i, -1i, 2147483647i), !vec4<bool>(var_0.x, var_0.x, arg_0.d.x, false)), vec4<i32>(arg_2, countOneBits(arg_2), _wgslsmith_clamp_i32(arg_3.a, 1i, u_input.c.x), ~0i))), vec4<i32>(-44283i, -_wgslsmith_div_i32(firstLeadingBit(u_input.c.x), arg_3.a), arg_3.a, 2147483647i & firstLeadingBit(u_input.a)));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-931f * -1719f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-518f + arg_1) - 1342f), all(!vec4<bool>(false, false, arg_0.d.x, var_0.x)))), _wgslsmith_f_op_f32(-var_1.x)));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, -681f, -1000f) + vec3<f32>(global1.a.x, 701f, -863f))), global1.a) + _wgslsmith_f_op_vec3_f32(func_3(Struct_4(890f, global1.b.x, ~7119u, vec2<bool>(true, false), _wgslsmith_f_op_f32(sign(1418f))), -1274f, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), Struct_2(2147483647i)))), ~abs(countOneBits(~global1.b)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-351f, global1.a.x, var_0.a.x, var_0.a.x), vec4<f32>(global1.a.x, global1.a.x, var_0.a.x, -172f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2068f, global1.a.x, global1.a.x, 687f) * vec4<f32>(1013f, global1.a.x, global1.a.x, 2050f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, -1140f, var_0.a.x, -106f) + vec4<f32>(global1.a.x, 1000f, var_0.a.x, 386f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1807f, -934f, -961f, var_0.a.x) + vec4<f32>(var_0.a.x, -316f, global1.a.x, -608f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.a.x, global1.a.x, var_0.a.x, global1.a.x)))))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~4294967295u, var_0.b.x), _wgslsmith_mult_u32(~4294967295u, ~global1.b.x), 41115u, var_0.b.x), select(~(~vec4<u32>(global1.b.x, 41868u, 1u, 4294967295u)), ~firstTrailingBit(vec4<u32>(1u, var_0.b.x, var_0.b.x, global1.b.x)), false)), -vec2<i32>(abs(1i), _wgslsmith_sub_i32(abs(-1i), 0i)));
    global1 = var_0;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * -1048f))), global1.a)), abs(~firstLeadingBit(~var_1.b.ww)));
    global0 = _wgslsmith_f_op_f32(trunc(var_2.a.x)) != 1003f;
    return Struct_4(global1.a.x, ~firstTrailingBit(select(global1.b.x, global1.b.x, true)), ~_wgslsmith_add_u32(var_0.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, 118294u, var_2.b.x, 6835u), var_1.b), _wgslsmith_mod_vec4_u32(var_1.b, var_1.b))), !vec2<bool>(all(vec3<bool>(false, false, false)), true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(select(-1561f, _wgslsmith_f_op_f32(floor(global1.a.x)), all(vec3<bool>(true, true, true))))))));
}

fn func_1(arg_0: f32) -> bool {
    global0 = false;
    var var_0 = vec3<bool>(true, !(!any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)))), false);
    let var_1 = func_2();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-global1.a), ~(firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 86914u), vec2<u32>(var_1.b, 0u))) << (~firstTrailingBit(vec2<u32>(var_1.b, global1.b.x)) % vec2<u32>(32u))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(global1.a)), ~(vec2<u32>(select(4294967295u, 77818u, var_0.x), var_1.b) ^ var_2.b));
    return !any(func_2().d);
}

fn func_4(arg_0: bool, arg_1: i32) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), firstTrailingBit(~76650u | _wgslsmith_sub_u32(reverseBits(global1.b.x), 61366u)), reverseBits(_wgslsmith_div_u32(global1.b.x, _wgslsmith_mod_u32(firstTrailingBit(global1.b.x), 1u))), !select(!func_2().d, vec2<bool>(any(vec2<bool>(arg_0, false)), false), !select(vec2<bool>(true, arg_0), vec2<bool>(true, false), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1580f - 698f) - global1.a.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(-709f, -1244f)))), global1.a.x));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(global1.a.x, 363f)), func_2().a, -1818f), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(exp2(global1.a.x)), var_0.e), !vec3<bool>(var_0.d.x, false, true)))), min(reverseBits(~global1.b) << (~(~vec2<u32>(global1.b.x, var_0.b)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.b.x, 18004u), vec3<u32>(0u, global1.b.x, var_0.b) | vec3<u32>(global1.b.x, global1.b.x, 1u)), ~firstTrailingBit(var_0.b))));
    var var_2 = ~abs(vec4<u32>(31838u >> (global1.b.x % 32u), 30891u, ~73018u, 1u) & vec4<u32>(_wgslsmith_add_u32(global1.b.x, 0u), var_0.c, ~1u, ~global1.b.x));
    let var_3 = -vec4<i32>(reverseBits(_wgslsmith_mod_i32(u_input.b, u_input.c.x)), _wgslsmith_sub_i32(-arg_1, arg_1), u_input.b, u_input.a) >> ((~(~(vec4<u32>(global1.b.x, 0u, 1u, 0u) ^ vec4<u32>(var_0.c, global1.b.x, 24872u, global1.b.x))) | vec4<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(var_0.c, global1.b.x)), var_2.x, 4490u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, var_2.x, 4294967295u, 34249u), vec4<u32>(53275u, 59972u, 53294u, 46713u)))) % vec4<u32>(32u));
    return Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-206f, 366f, var_1, var_1)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1301f, -321f, var_1, 1450f))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_div_f32(var_0.a, 304f), -1499f, _wgslsmith_div_f32(-714f, 654f)), vec4<f32>(global1.a.x, global1.a.x, _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(ceil(-681f))))), firstLeadingBit(select(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c, var_2.x, global1.b.x, global1.b.x), vec4<u32>(43939u, global1.b.x, 34729u, 4294967295u)), ~vec4<u32>(1u, global1.b.x, 27769u, var_0.c), select(var_0.d.x, false, false) & arg_0)), vec2<i32>(12511i, 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(true, _wgslsmith_clamp_i32(~select(u_input.c.x, u_input.b, func_1(2064f)), _wgslsmith_mult_i32(-1i, ~(~u_input.b)), abs(i32(-1i) * -u_input.c.x)));
    let var_1 = func_4(true, ~_wgslsmith_dot_vec4_i32((vec4<i32>(38746i, var_0.c.x, -42150i, 2147483647i) >> (vec4<u32>(1u, 72174u, 62070u, global1.b.x) % vec4<u32>(32u))) ^ -vec4<i32>(var_0.c.x, -2147483647i, var_0.c.x, 0i), max(-vec4<i32>(17047i, 0i, var_0.c.x, u_input.c.x), min(vec4<i32>(-35117i, 1i, u_input.c.x, 1i), vec4<i32>(24332i, u_input.b, var_0.c.x, -6905i)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.zz) * vec2<f32>(1000f, -513f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_1.a.wz)))))));
    global0 = select(-34098i < var_0.c.x, select(all(vec2<bool>(true, true)), true, true), any(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, false), _wgslsmith_mod_u32(var_0.b.x, var_0.b.x) != abs(var_0.b.x))));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1421f, -648f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))))), var_0.b.xz & reverseBits(var_1.b.xw));
    let var_3 = func_2();
    var var_4 = global1.a;
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-426f, _wgslsmith_div_f32(global1.a.x, var_0.a.x), -378f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.zzw) - global1.a))) - _wgslsmith_f_op_vec3_f32(-global1.a)), ~_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 98377u), _wgslsmith_clamp_vec2_u32(firstLeadingBit(var_0.b.xx), vec2<u32>(var_3.b, var_3.b), ~vec2<u32>(global1.b.x, var_0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, var_3.b), 63979u), vec2<u32>(var_3.b, _wgslsmith_add_u32(max(49767u, 1u), var_0.b.x)));
}

