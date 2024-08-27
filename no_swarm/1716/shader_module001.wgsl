struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1 = Struct_1(42532i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> vec4<bool> {
    var var_0 = arg_1.x;
    var var_1 = !vec2<bool>(!(u_input.b > ~(-2147483647i)), all(!arg_0.b));
    var_1 = vec2<bool>(!any(arg_0.b.yz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2122f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-741f, 1467f), _wgslsmith_f_op_f32(floor(292f))))));
    let var_2 = arg_0.c;
    var_1 = !select(select(!vec2<bool>(var_1.x, arg_0.b.x), select(vec2<bool>(true, true), select(arg_1.xx, vec2<bool>(var_1.x, false), true), true), any(select(arg_1.wyw, vec3<bool>(arg_0.b.x, true, arg_0.b.x), vec3<bool>(true, var_1.x, true)))), vec2<bool>(!arg_1.x, var_1.x), select(!(!arg_1.zw), !arg_1.yy, !select(arg_1.xy, arg_0.b.yx, arg_1.zy)));
    return arg_0.b;
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = vec3<f32>(496f, 1061f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1386f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-633f)))))));
    var var_1 = Struct_2(Struct_1(arg_0.x), !(!select(vec4<bool>(false, true, true, false), func_3(Struct_2(Struct_1(u_input.b), vec4<bool>(false, false, false, false), vec4<i32>(-1i, u_input.a, arg_0.x, u_input.a), Struct_1(-33592i)), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, false, true))), select(vec4<i32>(~abs(u_input.b), firstLeadingBit(min(u_input.a, 13747i)), -2147483647i, arg_0.x << ((12419u & u_input.c) % 32u)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(arg_0.x, global1.a, arg_0.x, 2147483647i)), ~vec4<i32>(13549i, 25150i, -6320i, 2147483647i)), vec4<i32>(countOneBits(global1.a), -global1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -55i, 2147483647i), vec3<i32>(-1i, 37212i, u_input.b)), -u_input.b)), select(vec4<bool>(true, -533f == var_0.x, arg_0.x <= 2147483647i, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true), true)), Struct_1(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, u_input.a, global1.a), vec3<i32>(1i, u_input.b, arg_0.x)))));
    global1 = Struct_1(2147483647i);
    var var_2 = vec4<bool>(true, true, true, var_1.b.x);
    let var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, 16043i, var_1.d.a, -1i)), vec4<i32>(1i, arg_0.x >> (global0.x % 32u), 19446i, max(var_1.a.a, -9969i)))), var_1.b, vec4<i32>(2147483647i, -33369i, 18740i, reverseBits(u_input.a | arg_0.x) << (((u_input.d | 36503u) << (_wgslsmith_mod_u32(1u, global0.x) % 32u)) % 32u)), var_1.a);
    return Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(29901u, global0.x, max(~0u, u_input.d | global0.x), 52099u), reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(34964u, global0.x, 0u, 1624u), vec4<u32>(global0.x, u_input.e, global0.x, 1u)), select(vec4<u32>(u_input.c, u_input.d, 71574u, 0u), vec4<u32>(u_input.e, u_input.c, 2850u, u_input.d), var_3.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-456f, var_0.x) - var_0.xy))), vec2<f32>(-2210f, _wgslsmith_f_op_f32(exp2(var_0.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, 623f), var_0.zx))))), vec4<i32>(global1.a, _wgslsmith_sub_i32(u_input.a, firstLeadingBit(i32(-1i) * -3178i)), firstTrailingBit(-3654i), -25683i));
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_1(global1.a);
    var var_1 = var_0;
    var var_2 = ~_wgslsmith_mult_vec4_i32(~vec4<i32>(firstTrailingBit(var_1.a), 28802i, _wgslsmith_mult_i32(global1.a, -2147483647i), var_1.a), _wgslsmith_div_vec4_i32(-firstTrailingBit(vec4<i32>(74523i, u_input.a, 19709i, u_input.b)), vec4<i32>(countOneBits(var_1.a), var_0.a, 551i, ~(-1i))));
    var var_3 = all(select(arg_0, arg_0, arg_0));
    var_1 = Struct_1(select(-42328i, ~var_1.a, true));
    return func_2(vec3<i32>(var_2.x, -21770i, -((26598i >> (global0.x % 32u)) << (~global0.x % 32u))));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> i32 {
    global0 = vec2<u32>(arg_1.a, ~arg_1.a);
    let var_0 = arg_1.c;
    let var_1 = _wgslsmith_mod_u32(~_wgslsmith_sub_u32((u_input.c | 0u) | global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 75462u), vec2<u32>(1u, arg_1.a)) | func_1(vec3<bool>(true, true, false)).a), arg_1.a);
    var var_2 = Struct_1(abs(i32(-1i) * -var_0.x));
    var var_3 = -((vec3<i32>(-1i) * -func_1(vec3<bool>(true, false, true)).c.wxy) & (vec3<i32>(arg_1.c.x, i32(-1i) * -5877i, 2147483647i) >> (reverseBits(vec3<u32>(18378u, 13250u, 1u)) % vec3<u32>(32u))));
    return var_2.a;
}

fn func_5(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_4) -> Struct_1 {
    global0 = ~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(4294967295u, 23460u) | abs(vec2<u32>(arg_2.b.a, global0.x))), vec2<u32>(1u, 1u));
    var var_0 = func_2(-(~(firstLeadingBit(vec3<i32>(-2147483647i, -23647i, arg_1.x)) << (vec3<u32>(0u, global0.x, 125963u) % vec3<u32>(32u))))).b.x;
    let var_1 = Struct_2(Struct_1(abs(_wgslsmith_mult_i32(-37774i, 1i))), func_3(Struct_2(Struct_1(arg_1.x), vec4<bool>(func_3(Struct_2(Struct_1(41213i), vec4<bool>(true, true, true, false), vec4<i32>(1i, -2147483647i, 31091i, 1i), Struct_1(27400i)), vec4<bool>(false, true, true, false)).x, true, arg_2.a.x == 1588f, true), arg_1, Struct_1(firstLeadingBit(-6541i))), func_3(Struct_2(Struct_1(u_input.a), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)), ~vec4<i32>(arg_2.b.c.x, global1.a, arg_2.b.c.x, arg_1.x), Struct_1(-56468i)), vec4<bool>(func_3(Struct_2(Struct_1(arg_2.b.c.x), vec4<bool>(false, false, true, false), vec4<i32>(u_input.b, arg_0, u_input.a, arg_1.x), Struct_1(arg_0)), vec4<bool>(false, true, false, true)).x, true, arg_2.b.a <= global0.x, any(vec3<bool>(false, false, true))))), abs(_wgslsmith_add_vec4_i32(arg_2.b.c, vec4<i32>(-20848i, 11731i, 2147483647i, arg_0))), Struct_1(func_2(~vec3<i32>(-1i, arg_1.x, global1.a)).c.x));
    var var_2 = vec3<bool>(var_1.b.x, true, false);
    var var_3 = Struct_4(arg_2.a, arg_2.b);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(-func_4(-81772i, func_1(vec3<bool>(false, false, true))) ^ global1.a, _wgslsmith_mult_vec4_i32(vec4<i32>(global1.a, ~(-2147483647i), _wgslsmith_clamp_i32(~(-1i), 1i, u_input.a & 0i), ~max(global1.a, u_input.a)), vec4<i32>(~(~u_input.a), _wgslsmith_add_i32(global1.a, ~1i), -21432i, firstLeadingBit(u_input.a))), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-744f, -643f, 156f))), func_1(vec3<bool>(true, true, true))));
    global0 = countOneBits(vec2<u32>(~4627u, 0u));
    let var_0 = firstLeadingBit(func_5(func_5(_wgslsmith_mod_i32(-6584i, -1i), ~vec4<i32>(u_input.b, u_input.b, global1.a, u_input.b), Struct_4(vec3<f32>(-1000f, 320f, -1529f), Struct_3(1u, vec2<f32>(-1433f, 1000f), vec4<i32>(-20002i, u_input.a, global1.a, 2147483647i)))).a, _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(26845i, u_input.a, -1i, -1i), vec4<i32>(0i, -1i, global1.a, 2147483647i)), vec4<i32>(u_input.b, -2147483647i, -24169i, -3694i) & vec4<i32>(global1.a, global1.a, global1.a, global1.a)), Struct_4(_wgslsmith_div_vec3_f32(vec3<f32>(-807f, -1491f, -331f), vec3<f32>(-2577f, -1000f, -679f)), func_2(vec3<i32>(global1.a, -2147483647i, 1i)))).a ^ ~countOneBits(global1.a >> (4294967295u % 32u)));
    global0 = _wgslsmith_mult_vec2_u32(max(~(~vec2<u32>(u_input.c, 0u)), vec2<u32>(115148u, func_2(vec3<i32>(global1.a, -5152i, global1.a)).a) ^ abs(vec2<u32>(u_input.d, 1u))), vec2<u32>(~u_input.d, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4294967295u, u_input.c), vec3<u32>(global0.x, 21354u, global0.x) >> (vec3<u32>(6962u, 4294967295u, 4294967295u) % vec3<u32>(32u)))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(198f * 251f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(584f, 1911f, true)) + _wgslsmith_f_op_f32(sign(1000f)))), vec3<f32>(-1097f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-900f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1225f)))), all(vec3<bool>(all(vec4<bool>(false, false, false, false)), true, false)))), func_2(vec3<i32>(_wgslsmith_mod_i32(global1.a << (u_input.c % 32u), reverseBits(-1i)), _wgslsmith_sub_i32(-global1.a, _wgslsmith_sub_i32(u_input.a, u_input.b)), (var_0 >> (7124u % 32u)) << (_wgslsmith_sub_u32(53281u, global0.x) % 32u))));
    var var_2 = 78558i << (var_1.b.a % 32u);
    let var_3 = _wgslsmith_f_op_f32(-var_1.b.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -647f)), var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1172f)) - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -886f)), vec4<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3, var_3)), 1820f, 681f)));
}

