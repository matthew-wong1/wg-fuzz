struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    var var_0 = ~(~(~global0.d.x));
    global0 = Struct_1(~vec3<u32>(1u, _wgslsmith_dot_vec2_u32(global0.d, _wgslsmith_sub_vec2_u32(vec2<u32>(global0.d.x, 0u), vec2<u32>(4294967295u, global0.d.x))), ~(~global0.c)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(global0.b, 25244i), u_input.b.x & global0.b, 2319i, _wgslsmith_clamp_i32(u_input.a, global0.b, u_input.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, 0i, 2147483647i), vec4<i32>(0i, 0i, 1i, global0.b) ^ vec4<i32>(1i, 2147483647i, -6984i, u_input.a)), vec4<i32>(-u_input.a, _wgslsmith_div_i32(5096i, global0.b), _wgslsmith_sub_i32(global0.b, 0i), max(66320i, u_input.a))), max(countOneBits(vec4<i32>(1i, u_input.b.x, -2147483647i, 0i)), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(28794i, u_input.a, u_input.a, 1i), vec4<i32>(global0.b, -1i, u_input.b.x, -45594i))))), 9090u, _wgslsmith_mult_vec2_u32(global0.a.yx, ~global0.a.yx));
    var_0 = ~global0.a.x;
    let var_1 = firstLeadingBit(firstTrailingBit(firstLeadingBit(global0.a)));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-230f, -1151f))));
    return var_1.x;
}

fn func_2(arg_0: bool, arg_1: bool) -> vec3<f32> {
    var var_0 = Struct_5(arg_1, select(vec2<bool>(true, !arg_1), vec2<bool>(true, true), select(vec2<bool>(any(vec2<bool>(true, false)), arg_0), !(!vec2<bool>(arg_1, true)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, arg_1), false)))));
    var var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(37765u, global0.a.x, global0.c), ~global0.a, ~reverseBits(vec3<u32>(0u, 58860u, global0.c)));
    var_0 = Struct_5(true, select(select(!var_0.b, !var_0.b, select(select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), vec2<bool>(true, false)), vec2<bool>(false, var_0.b.x), select(var_0.b, var_0.b, vec2<bool>(arg_0, arg_1)))), !(!vec2<bool>(var_0.b.x, arg_1)), select(vec2<bool>(!arg_1, !var_0.b.x), !var_0.b, func_3() <= firstTrailingBit(4294967295u))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -971f, 1248f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-902f, 1391f, -1283f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-926f, 1074f, 1671f), vec3<f32>(-944f, 602f, 133f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-741f, -1115f, 1048f))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(407f, 1313f, 944f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1363f, -1321f, 570f) - vec3<f32>(-983f, -1225f, 620f))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_4) -> Struct_4 {
    global0 = arg_2.b.b;
    global0 = arg_2.b.b;
    var var_0 = 0u;
    var var_1 = !(_wgslsmith_mult_u32(92737u, 19166u | arg_1.b.c) >= 4294967295u) || any(vec2<bool>(true && any(vec2<bool>(true, true)), !all(vec4<bool>(true, true, true, false))));
    return arg_2;
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_4) -> Struct_2 {
    global0 = Struct_1(vec3<u32>(arg_2.b.b.c, 1u, ~1u), _wgslsmith_div_i32(global0.b, u_input.a), max(31616u, _wgslsmith_sub_u32(~(~4294967295u), _wgslsmith_mod_u32(~arg_2.b.b.c, 1u))), _wgslsmith_mult_vec2_u32(arg_2.b.b.d, global0.a.yx));
    var var_0 = _wgslsmith_f_op_f32(-1000f - arg_2.a);
    return Struct_2(vec3<f32>(-1000f, 744f, _wgslsmith_f_op_f32(exp2(arg_2.a))), vec4<i32>(u_input.a, 17510i, _wgslsmith_sub_i32(~(-arg_2.b.b.b), 1i), _wgslsmith_mult_i32(10635i, max(arg_2.b.b.b, arg_2.b.b.b))));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = true;
    var var_1 = 0i;
    var var_2 = -2147483647i;
    let var_3 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_0.a)), true, func_4(_wgslsmith_f_op_vec3_f32(func_2(!var_0, true)), Struct_3(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.c, arg_2.b.b.c), vec2<u32>(63162u, global0.a.x)) & vec2<u32>(arg_1.x, global0.c), Struct_1(_wgslsmith_clamp_vec3_u32(arg_2.b.b.a, arg_1.xxw, arg_0.b.b.a), -22730i, firstLeadingBit(arg_1.x), arg_1.yz)), arg_0));
    var_1 = -21029i;
    return func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, var_3.a.x, var_3.a.x) + var_3.a), var_3.a)))), Struct_3(vec2<u32>(1u, _wgslsmith_clamp_u32(arg_2.b.b.c, arg_1.x, ~0u)), func_4(_wgslsmith_f_op_vec3_f32(-var_3.a), Struct_3(arg_2.b.b.a.zx, func_4(vec3<f32>(arg_2.a, 422f, arg_0.a), arg_0.b, arg_2).b.b), Struct_4(_wgslsmith_f_op_f32(floor(-1358f)), arg_2.b)).b.b), arg_2).b.b;
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(687f, _wgslsmith_f_op_f32(f32(-1f) * -2163f), _wgslsmith_f_op_f32(ceil(func_4(vec3<f32>(-505f, 858f, 1421f), arg_1, Struct_4(-966f, arg_1)).a)))), arg_1, Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1244f * -392f) + _wgslsmith_f_op_f32(620f + -135f))), Struct_3(~vec2<u32>(1u, global0.c), arg_1.b))).a;
    var var_1 = all(arg_2);
    let var_2 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(724f, 126f, -842f))))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-391f, _wgslsmith_f_op_f32(-3468f * 1669f), 404f)))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-230f, -315f, 836f) * vec3<f32>(-587f, -215f, 666f))), Struct_3(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(global0.d.x, global0.d.x)), global0.a.xz, global0.d), Struct_1(vec3<u32>(global0.d.x, global0.c, 111138u), 1i, 4294967295u, func_4(vec3<f32>(-1045f, 831f, -494f), arg_1, Struct_4(-1316f, arg_1)).b.a)), func_4(_wgslsmith_div_vec3_f32(vec3<f32>(-995f, 1000f, 700f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(520f, 773f, 2227f))), Struct_3(global0.d, func_1(Struct_4(387f, arg_1), vec4<u32>(4294967295u, 32441u, 66523u, 50238u), Struct_4(177f, arg_1))), Struct_4(331f, Struct_3(global0.a.yy, arg_1.b)))).b, func_4(vec3<f32>(_wgslsmith_f_op_f32(1234f - -1413f), -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), func_4(vec3<f32>(1f, 1f, 1f), arg_1, func_4(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -279f, 1119f), vec3<f32>(345f, 119f, 322f)), Struct_3(global0.d, arg_1.b), func_4(vec3<f32>(-1000f, 439f, -1328f), Struct_3(vec2<u32>(19890u, global0.d.x), arg_1.b), Struct_4(-1545f, arg_1)))).b, func_4(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1280f, 486f), _wgslsmith_div_vec3_f32(vec3<f32>(-195f, -455f, 834f), vec3<f32>(-723f, 296f, -287f))), arg_1, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(398f, 1000f, 428f)), arg_1, Struct_4(899f, Struct_3(vec2<u32>(global0.c, 11901u), Struct_1(arg_1.b.a, 1i, arg_1.a.x, vec2<u32>(0u, 1u))))))));
    let var_3 = _wgslsmith_clamp_i32(14862i, -firstLeadingBit(-1i), ~firstTrailingBit(_wgslsmith_add_i32(-29300i, arg_1.b.b)) >> (var_2.b.a.x % 32u));
    var var_4 = Struct_5(!(!(3288f < var_2.a) & all(select(arg_2, arg_2, arg_2))), select(!arg_2.yw, !arg_2.zz, arg_2.x));
    return Struct_1(var_2.b.b.a, _wgslsmith_sub_i32(896i, var_3 << (39195u % 32u)), _wgslsmith_mult_u32(reverseBits(arg_1.b.a.x ^ arg_1.b.c), arg_1.b.d.x), func_1(func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_2.a, var_2.a), vec3<f32>(1397f, 1000f, -286f)))), arg_1, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 1536f, var_2.a)), func_4(vec3<f32>(var_2.a, -400f, 991f), arg_1, Struct_4(var_2.a, var_2.b)).b, func_4(vec3<f32>(var_2.a, var_2.a, var_2.a), Struct_3(vec2<u32>(60405u, 19394u), Struct_1(vec3<u32>(global0.c, global0.d.x, global0.a.x), arg_1.b.b, arg_1.b.d.x, var_2.b.b.a.yx)), var_2))), abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.d.x, 4294967295u, arg_1.a.x, 30541u), vec4<u32>(39467u, arg_1.b.d.x, var_2.b.a.x, var_2.b.b.a.x), vec4<u32>(1u, 42354u, 63053u, 68705u))), var_2).a.xz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, _wgslsmith_clamp_i32(max(-max(-2147483647i, 56994i), u_input.a), global0.b, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, u_input.b), ~u_input.b), _wgslsmith_div_i32(1i, -global0.b))), ~(reverseBits(global0.c) << (~global0.a.x % 32u)) >> (81615u % 32u), ~select(vec2<u32>(global0.d.x, _wgslsmith_sub_u32(global0.a.x, global0.a.x)), global0.d | vec2<u32>(global0.a.x, global0.d.x), true));
    var var_0 = Struct_4(970f, Struct_3(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), ~global0.a), 1u), func_6(_wgslsmith_sub_i32(u_input.b.x, ~global0.b), Struct_3(vec2<u32>(65591u, 39985u), func_1(Struct_4(1220f, Struct_3(vec2<u32>(4294967295u, global0.d.x), Struct_1(global0.a, 47560i, global0.d.x, vec2<u32>(global0.d.x, global0.d.x)))), vec4<u32>(global0.c, 14195u, 0u, 24745u), Struct_4(-1714f, Struct_3(vec2<u32>(global0.c, global0.a.x), Struct_1(vec3<u32>(66305u, global0.a.x, 0u), u_input.a, global0.c, vec2<u32>(5733u, global0.d.x)))))), vec4<bool>(true, true, true, true))));
    var var_1 = all(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))));
    var var_2 = func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -1502f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a, 721f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) * vec2<f32>(1437f, var_0.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_2(true, true)).xz)))), false, Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(func_5(vec2<f32>(var_0.a, 297f), false, Struct_4(var_0.a, Struct_3(var_0.b.a, Struct_1(global0.a, 2147483647i, var_0.b.b.c, vec2<u32>(1u, 4040u))))).a.x)) * -614f), var_0.b));
    var var_3 = vec2<bool>(!all(vec2<bool>(true, true)), all(!vec2<bool>(true, any(vec4<bool>(true, false, true, false)))));
    let var_4 = true;
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_2.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, 397f, var_0.a)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-1000f + -653f)), var_0.a, var_0.a))), Struct_3(~var_0.b.b.d, var_0.b.b), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(810f, _wgslsmith_f_op_f32(ceil(-478f)), _wgslsmith_f_op_f32(-204f * var_0.a))), Struct_3(vec2<u32>(~var_0.b.a.x, _wgslsmith_mod_u32(global0.a.x, global0.c)), var_0.b.b), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a))), func_4(var_2.a, func_4(vec3<f32>(753f, var_0.a, 1119f), var_0.b, Struct_4(var_2.a.x, Struct_3(vec2<u32>(1u, global0.a.x), Struct_1(vec3<u32>(71660u, 0u, 0u), var_2.b.x, 4294967295u, vec2<u32>(global0.d.x, global0.a.x))))).b, Struct_4(1000f, var_0.b)).b)));
    var_1 = var_3.x;
    let var_5 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1551f, -268f, 386f)))), func_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(198f, var_0.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2690f, -110f), vec2<f32>(var_2.a.x, -1685f), vec2<bool>(var_4, var_3.x))), var_4)), var_2.a.zx, select(vec2<bool>(var_3.x, true), select(vec2<bool>(false, true), vec2<bool>(var_3.x, var_4), vec2<bool>(var_3.x, true)), all(vec4<bool>(var_3.x, var_4, var_3.x, true))))), true, func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, var_0.a, var_2.a.x)), _wgslsmith_f_op_vec3_f32(abs(var_2.a)))), func_4(var_2.a, var_0.b, Struct_4(var_2.a.x, var_0.b)).b, func_4(vec3<f32>(1285f, var_2.a.x, -591f), Struct_3(var_0.b.b.a.zy, Struct_1(var_0.b.b.a, -1i, 51177u, vec2<u32>(var_0.b.a.x, var_0.b.a.x))), Struct_4(499f, var_0.b)))).b);
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(exp2(var_2.a.x))) - _wgslsmith_f_op_f32(-263f - _wgslsmith_f_op_f32(-142f + 687f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a * 1653f), _wgslsmith_f_op_f32(-var_5.a.x))) - _wgslsmith_f_op_f32(-func_5(vec2<f32>(var_0.a, var_2.a.x), true, Struct_4(-1233f, var_0.b)).a.x))), vec2<f32>(_wgslsmith_f_op_f32(-656f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a.x))), _wgslsmith_f_op_f32(max(var_2.a.x, 238f))));
}

