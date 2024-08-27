struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>) -> vec4<u32> {
    let var_0 = vec3<i32>(1i, reverseBits(_wgslsmith_div_i32(~29277i, 17238i) ^ u_input.b), min(u_input.b, _wgslsmith_dot_vec4_i32(min(-vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.b, -2147483647i, u_input.b), vec4<i32>(u_input.b, 0i, u_input.b, 0i), vec4<i32>(68270i, -2147483647i, u_input.b, -29825i))), ~vec4<i32>(-24996i, u_input.b, u_input.b, -964i) | vec4<i32>(u_input.b, 0i, 19774i, 1i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1605f) * vec2<f32>(1972f, 1151f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-468f, 1236f)), vec2<f32>(484f, 394f), true)), arg_0.x))));
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), var_1.x) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(960f)), var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(931f - -194f) - var_1.x)))));
    var var_2 = select(~4294967295u, u_input.a.x, true);
    var var_3 = select(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 1u), var_1.x == -100f);
    return min(vec4<u32>(~1u, ~(~1u), u_input.a.x, ~(~(u_input.a.x & u_input.a.x))), vec4<u32>(u_input.a.x << (~1u % 32u), u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(29545u, 1u, 57723u, u_input.a.x | u_input.a.x), countOneBits(~vec4<u32>(55223u, 4294967295u, u_input.a.x, u_input.a.x))), ~(~u_input.a.x) << (u_input.a.x % 32u)));
}

fn func_2() -> f32 {
    let var_0 = -136f;
    var var_1 = Struct_3(_wgslsmith_div_vec4_u32(~select(abs(vec4<u32>(1u, 1u, 16834u, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(33232u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 69451u, 1u, u_input.a.x)), vec4<bool>(true, true, true, true)), ~(~vec4<u32>(35833u, u_input.a.x, u_input.a.x, 75281u))), Struct_1(_wgslsmith_f_op_f32(-128f - -877f), _wgslsmith_f_op_f32(min(-1038f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1000f, 1841f)))))), ~1i, true), ~_wgslsmith_sub_vec4_u32(~max(vec4<u32>(28053u, 0u, 32228u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, 55688u)), func_3(vec3<bool>(true, false, true)) | ~vec4<u32>(4294967295u, 78691u, 34343u, u_input.a.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(-1227f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(168f - -2395f), _wgslsmith_div_f32(2061f, 233f), any(vec4<bool>(false, true, false, false)))), 1i, true), 434f), Struct_2(Struct_1(_wgslsmith_f_op_f32(-1000f * 1023f), -918f, -1888i, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))))));
    var var_2 = var_1.e.a.b;
    let var_3 = ~(~vec3<i32>(~countOneBits(u_input.b), -1i, _wgslsmith_mod_i32(827i, _wgslsmith_div_i32(var_1.d.a.c, -2147483647i))));
    let var_4 = var_1.d;
    return _wgslsmith_div_f32(var_1.d.a.a, 564f);
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = Struct_4(func_3(!select(vec3<bool>(arg_2.d, false, arg_0), select(vec3<bool>(arg_1.x, false, true), vec3<bool>(arg_1.x, true, arg_2.d), arg_2.d), vec3<bool>(arg_2.d, false, arg_0))).x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(234f - _wgslsmith_f_op_f32(-866f * arg_3)) + _wgslsmith_f_op_f32(round(611f))))), arg_2, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.a, -656f, arg_2.b, -278f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.b, arg_3, arg_3, -592f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, arg_3, arg_2.a, arg_3) - vec4<f32>(arg_2.a, arg_2.b, 220f, -276f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_3, 661f, arg_3, -1913f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.a, arg_3, arg_2.b, arg_2.b), vec4<f32>(arg_2.a, arg_3, arg_2.a, arg_2.b))))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-1292f - 619f), arg_3, 0i, all(vec4<bool>(true, true, false, var_0.c.d)) || !arg_2.d), _wgslsmith_f_op_f32(-1080f + _wgslsmith_f_op_f32(arg_3 - 572f)));
    var var_2 = ~1i;
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a)))), arg_2.b, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.c.c, u_input.b, var_1.a.c), vec3<i32>(9939i, var_1.a.c, u_input.b) << (vec3<u32>(1u, 0u, u_input.a.x) % vec3<u32>(32u))), all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, arg_1.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a.a + arg_3))));
    var var_3 = select(select(max(vec4<u32>(39264u, 4294967295u, u_input.a.x, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(13200u, 7229u, 4294967295u, 1406u), vec4<u32>(u_input.a.x, 32349u, u_input.a.x, 15953u), vec4<u32>(1u, 8514u, 1u, 842u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, 16888u), vec4<u32>(30998u, 64764u, var_0.a, 43761u)), ~0u, ~1u, var_0.a), any(vec2<bool>(arg_2.d, false))), min(vec4<u32>(_wgslsmith_sub_u32(47905u, var_0.a), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.a, u_input.a.x), vec3<u32>(50718u, 1u, 0u)), u_input.a.x, var_0.a), firstLeadingBit(vec4<u32>(1u, var_0.a, var_0.a, u_input.a.x))), vec4<bool>(false, var_1.a.d == all(vec2<bool>(true, false)), true, var_0.c.d)) & ~abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(51675u, 4294967295u, 0u, 1u)));
    return var_1.a.d;
}

fn func_1(arg_0: bool) -> vec2<f32> {
    global0 = select(any(!(!vec3<bool>(false, false, arg_0))) || func_4(arg_0, !(!vec2<bool>(arg_0, false)), Struct_1(-358f, _wgslsmith_div_f32(1519f, 1693f), countOneBits(u_input.b), !arg_0), _wgslsmith_f_op_f32(func_2())), arg_0, all(vec4<bool>(true, !arg_0, select(arg_0, arg_0, arg_0), false)));
    let var_0 = Struct_2(Struct_1(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1796f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(538f - -732f))), u_input.b, arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(567f * 2772f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-971f * 356f) - _wgslsmith_f_op_f32(-1000f * -959f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1390f))))))));
    let var_1 = var_0.a;
    global0 = true;
    var var_2 = select(_wgslsmith_add_i32(countOneBits(var_0.a.c) << ((u_input.a.x | 4294967295u) % 32u), -2147483647i), ~countOneBits(var_1.c), all(select(vec2<bool>(arg_0, true), select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), arg_0), any(vec2<bool>(var_0.a.d, false))))) >> (4294967295u % 32u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1413f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + var_0.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 822f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1106f, var_0.b) - vec2<f32>(-1000f, var_0.a.a)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-628f, -317f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(365f, -615f)))))) + vec2<f32>(_wgslsmith_f_op_f32(round(var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -253f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(any(vec3<bool>(true, false, true)))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1278f, -746f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(856f, -152f)) + _wgslsmith_f_op_f32(f32(-1f) * -1013f)), _wgslsmith_f_op_f32(-1994f - 942f)), vec2<bool>(false | all(vec3<bool>(true, false, true)), true)))));
    global0 = any(select(vec3<bool>(true, true, true), vec3<bool>(select(true, true, true), all(vec3<bool>(true, false, true)), 2768f >= _wgslsmith_f_op_f32(func_2())), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), -238f != _wgslsmith_f_op_f32(-971f * var_0.x))));
    var var_1 = Struct_2(Struct_1(217f, _wgslsmith_f_op_f32(-var_0.x), 1i, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))))), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(floor(-919f)))));
    var var_2 = -vec3<i32>(max(~1i, var_1.a.c), u_input.b, _wgslsmith_mod_i32(var_1.a.c, -17862i));
    global0 = !(var_0.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) - _wgslsmith_f_op_f32(-var_1.b)));
    global0 = _wgslsmith_mod_i32(26383i, var_1.a.c) > -2147483647i;
    var var_3 = ~u_input.a.x >> (1u % 32u);
    let var_4 = reverseBits(vec4<i32>(~_wgslsmith_sub_i32(1i, var_2.x), countOneBits(-28864i), -u_input.b, _wgslsmith_mult_i32(var_1.a.c | var_1.a.c, 45813i)) ^ select(vec4<i32>(2147483647i, 4911i, 23962i, 2147483647i) ^ (vec4<i32>(var_2.x, u_input.b, 82594i, 1592i) << (vec4<u32>(28480u, u_input.a.x, u_input.a.x, 17813u) % vec4<u32>(32u))), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -41743i, var_1.a.c, var_2.x), vec4<i32>(18967i, 0i, 0i, var_1.a.c))), var_1.a.d));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(30901u), 0u, all(vec3<bool>(false, true, true))), vec3<u32>((_wgslsmith_mod_u32(u_input.a.x, 68115u) ^ 111643u) ^ ~u_input.a.x, u_input.a.x, u_input.a.x), 1406f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.a, 1322f, -868f, -363f), vec4<f32>(447f, 705f, var_0.x, var_1.b)))))), var_1.a.c);
}

