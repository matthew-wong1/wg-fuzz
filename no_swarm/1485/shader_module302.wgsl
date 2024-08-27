struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>, arg_3: i32) -> i32 {
    global0 = array<vec3<bool>, 5>();
    global0 = array<vec3<bool>, 5>();
    var var_0 = vec4<i32>(select(abs(~arg_3), select(-2147483647i, u_input.a.x, any(select(vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(17011u, 5u)]))), true), _wgslsmith_mod_i32(firstLeadingBit(22415i), 2147483647i), select(_wgslsmith_add_i32(countOneBits(max(arg_1, -1i)), -7927i), -abs(abs(1i)), !all(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(firstTrailingBit(u_input.a.x), _wgslsmith_mod_i32(arg_3, 0i)), _wgslsmith_add_i32(-arg_1, firstTrailingBit(-2147483647i))));
    global0 = array<vec3<bool>, 5>();
    var var_1 = Struct_3(Struct_1(0i << (_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 32353u), vec3<u32>(1u, 1u, 1u)) % 32u)), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), _wgslsmith_f_op_f32(arg_0.a.x * 314f)), false)) >= arg_0.a.x, arg_0);
    return ~max(_wgslsmith_dot_vec3_i32(vec3<i32>(24106i, arg_1, var_0.x), ~vec3<i32>(54317i, -23835i, arg_2.x)) ^ arg_2.x, 1i);
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(1i, (~u_input.a.x & abs(u_input.a.x)) & -59706i);
    let var_1 = 0i;
    var var_2 = any(arg_1.xx);
    let var_3 = ~(~(~2147483647i));
    global0 = array<vec3<bool>, 5>();
    return Struct_1(_wgslsmith_mod_i32(~_wgslsmith_mult_i32(arg_3, 19558i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_1, var_3, 2147483647i), -56164i)) ^ _wgslsmith_clamp_i32(func_3(Struct_2(vec2<f32>(-535f, -124f)), u_input.a.x | u_input.a.x, ~u_input.a.zy, 21124i >> (arg_2 % 32u)), _wgslsmith_sub_i32(var_1, -1i) & -arg_3, arg_3 ^ _wgslsmith_div_i32(2147483647i, 2147483647i)));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-127f, arg_1.c.a.x, arg_1.c.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1.c.a.x, arg_1.c.a.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1000f, 337f) - vec3<f32>(arg_1.c.a.x, arg_1.c.a.x, -1000f))))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.a.x + var_0.x))))));
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> vec3<bool> {
    let var_0 = vec3<f32>(-1000f, arg_0.a.x, arg_0.a.x);
    var var_1 = _wgslsmith_mult_i32(1i, ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 1i, u_input.a.x), vec3<i32>(-2147483647i, 0i, u_input.a.x))), countOneBits(1i)));
    var_1 = 64353i;
    var var_2 = vec2<u32>(5286u, abs(arg_1));
    var_2 = min(vec2<u32>(firstLeadingBit(~4294967295u), 1u), max(countOneBits(vec2<u32>(4294967295u, 45650u) ^ vec2<u32>(var_2.x, arg_1)), vec2<u32>(_wgslsmith_mod_u32(arg_1, 4294967295u), _wgslsmith_mod_u32(var_2.x, arg_1))) >> (firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(37028u, arg_1), reverseBits(93922u))) % vec2<u32>(32u)));
    return vec3<bool>(false, 52158u > firstTrailingBit(~(~42184u)), false);
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = 0u;
    var var_1 = func_5(func_4(1f, Struct_3(func_2(14722u, select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), var_0, -1i), true, Struct_2(vec2<f32>(1024f, 729f))), func_2(min(~arg_0.x, 0u), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true))), arg_0.x, u_input.a.x)), 14517u);
    let var_2 = func_5(Struct_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(604f, 525f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(184f, 438f), vec2<f32>(-1507f, 658f))))))), ~var_0);
    let var_3 = Struct_3(func_2(16872u, select(vec4<bool>(var_1.x, true, false, all(vec4<bool>(false, true, true, true))), select(select(vec4<bool>(var_1.x, var_2.x, true, var_1.x), vec4<bool>(true, false, var_1.x, true), vec4<bool>(false, false, var_1.x, var_1.x)), select(vec4<bool>(var_1.x, var_1.x, false, var_2.x), vec4<bool>(var_2.x, var_2.x, var_1.x, var_1.x), true), vec4<bool>(false, var_1.x, false, var_2.x)), false), var_0, -_wgslsmith_sub_i32(u_input.a.x << (18969u % 32u), u_input.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -386f), _wgslsmith_f_op_f32(f32(-1f) * -1069f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1365f - _wgslsmith_f_op_f32(f32(-1f) * -1465f))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(516f, -1247f))), vec2<f32>(-2053f, 1262f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2074f, -996f) + vec2<f32>(325f, -994f))))));
    var var_4 = _wgslsmith_f_op_f32(var_3.c.a.x * _wgslsmith_f_op_f32(-var_3.c.a.x));
    return var_3.a;
}

fn func_6(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_1 {
    global0 = array<vec3<bool>, 5>();
    var var_0 = select(vec4<bool>(false, false, !(!arg_0.b), arg_1.x), select(!vec4<bool>(true, true, arg_0.b, arg_2.b), vec4<bool>(true, !arg_1.x, any(arg_1) | select(arg_0.b, true, arg_2.b), !any(vec2<bool>(arg_1.x, arg_1.x))), select(vec4<bool>(true, true, func_5(arg_2.c, 4294967295u).x, false), select(vec4<bool>(arg_1.x, false, arg_1.x, true), !vec4<bool>(false, arg_1.x, arg_0.b, false), vec4<bool>(arg_0.b, true, arg_1.x, false)), select(false, false, true))), func_5(arg_0.c, ~_wgslsmith_div_u32(~75545u, firstTrailingBit(9593u))).x);
    var_0 = !select(vec4<bool>(true, any(arg_1), true, func_5(Struct_2(vec2<f32>(arg_2.c.a.x, arg_0.c.a.x)), _wgslsmith_mult_u32(62415u, 53672u)).x), vec4<bool>(7775i != arg_2.a.a, arg_2.b, any(vec3<bool>(false, arg_2.b, true)), any(select(vec4<bool>(arg_1.x, false, true, var_0.x), vec4<bool>(false, var_0.x, false, false), vec4<bool>(false, true, false, var_0.x)))), -147f > _wgslsmith_f_op_f32(max(-245f, arg_2.c.a.x)));
    var_0 = select(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, arg_2.b, arg_2.b), vec4<bool>(true, var_0.x, arg_0.b, true), vec4<bool>(arg_1.x, false, false, true)), false)), select(!(!(!vec4<bool>(var_0.x, arg_2.b, true, true))), vec4<bool>(true, false, arg_0.b, all(func_5(arg_2.c, 4294967295u))), !vec4<bool>(true, arg_1.x & false, true, true)), false);
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_2.c.a.x)), arg_0.c.a.x, _wgslsmith_f_op_f32(-arg_2.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1028f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c.a.x, 369f, -615f, -955f), vec4<f32>(arg_0.c.a.x, -693f, -1411f, 1306f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.x, arg_2.c.a.x, arg_2.c.a.x, 936f)))))));
    return arg_0.a;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = array<vec3<bool>, 5>();
    var var_0 = Struct_4(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1745f - -184f))) + 492f), Struct_3(Struct_1(u_input.a.x), select(true, false, false), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-222f, 1376f)))), arg_0).a.x, 531f, select(vec2<bool>(true, select(true, true, true)), select(func_5(func_4(2043f, Struct_3(Struct_1(u_input.a.x), false, Struct_2(vec2<f32>(965f, 422f))), arg_3), 1u).xy, select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -577f), _wgslsmith_div_f32(-305f, 912f), _wgslsmith_div_f32(807f, -459f)))), vec3<u32>(1u, 1u, 1u) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 49592u, 0u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(13203u, 0u, 4294967295u), vec3<u32>(4294967295u, 31011u, 0u)), ~0u, 0u), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)));
    let var_1 = firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.a, 26859i, arg_1.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a, arg_1.a, 0i), vec3<i32>(56079i, arg_2.a, -31124i), vec3<i32>(arg_3.a, -31736i, arg_0.a))), ~(-1i))) | firstTrailingBit(abs(arg_2.a));
    let var_2 = min(vec4<i32>(arg_1.a & firstLeadingBit(25625i), arg_3.a, arg_0.a ^ -9206i, -6233i), _wgslsmith_sub_vec4_i32(-(vec4<i32>(arg_1.a, 1i, -2147483647i, arg_2.a) & -vec4<i32>(arg_1.a, 13598i, -2147483647i, arg_0.a)), select(-_wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_1, arg_3.a, 19978i), vec4<i32>(33366i, -21782i, 0i, 1i)), vec4<i32>(~arg_2.a, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, var_1, u_input.a.x), u_input.a), 2147483647i, _wgslsmith_mult_i32(arg_0.a, arg_2.a)), any(!var_0.c))));
    let var_3 = select(!vec4<bool>(true, all(select(vec3<bool>(var_0.c.x, false, var_0.c.x), global0[_wgslsmith_index_u32(var_0.e.x, 5u)], true)), var_0.c.x, true), vec4<bool>(any(!select(global0[_wgslsmith_index_u32(52018u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], vec3<bool>(var_0.c.x, var_0.c.x, false))), true, true, var_0.c.x), !var_0.c.x != (arg_3.a > 1i));
    return min(2147483647i, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(max(abs(firstTrailingBit(_wgslsmith_sub_i32(-15043i, u_input.a.x))), u_input.a.x), func_7(func_6(Struct_3(func_1(vec2<u32>(1333u, 34858u)), true, Struct_2(vec2<f32>(-279f, 1000f))), func_5(func_4(445f, Struct_3(Struct_1(u_input.a.x), true, Struct_2(vec2<f32>(2631f, -175f))), Struct_1(u_input.a.x)), 4294967295u).yy, Struct_3(Struct_1(u_input.a.x), all(vec4<bool>(false, false, true, true)), func_4(122f, Struct_3(Struct_1(-1i), true, Struct_2(vec2<f32>(-590f, -677f))), Struct_1(-2147483647i)))), Struct_1(20239i), Struct_1(u_input.a.x), func_6(Struct_3(Struct_1(2147483647i), true, func_4(-238f, Struct_3(Struct_1(-2147483647i), false, Struct_2(vec2<f32>(300f, -760f))), Struct_1(u_input.a.x))), vec2<bool>(true, true), Struct_3(func_1(vec2<u32>(28561u, 26120u)), func_5(Struct_2(vec2<f32>(-517f, 906f)), 1u).x, Struct_2(vec2<f32>(1567f, -309f))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1360f, 2063f))), -994f);
    let var_2 = 1740f;
    let var_3 = Struct_1(u_input.a.x);
    global0 = array<vec3<bool>, 5>();
    var var_4 = -1603f;
    var var_5 = ~_wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(129372u, 0u))), _wgslsmith_clamp_vec2_u32(min(vec2<u32>(0u, 0u), abs(vec2<u32>(1u, 4294967295u))), _wgslsmith_div_vec2_u32(max(vec2<u32>(0u, 1u), vec2<u32>(61484u, 13071u)), _wgslsmith_mod_vec2_u32(vec2<u32>(17455u, 17075u), vec2<u32>(27390u, 20767u))), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(1u, 1u))));
    var_5 = _wgslsmith_sub_vec2_u32(~select(~max(vec2<u32>(var_5.x, 1u), vec2<u32>(32623u, var_5.x)), min(vec2<u32>(20805u, var_5.x) & vec2<u32>(var_5.x, var_5.x), vec2<u32>(4294967295u, 49235u)), !select(vec2<bool>(false, true), vec2<bool>(false, false), true)), vec2<u32>(0u >> (~var_5.x % 32u), ~firstTrailingBit(~63865u)));
    let var_6 = func_2(~var_5.x, select(vec4<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), (15067u <= var_5.x) || true, all(func_5(Struct_2(vec2<f32>(366f, -375f)), 1u).yx)), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true))), 1u, func_7(var_3, func_1(~_wgslsmith_mult_vec2_u32(vec2<u32>(94843u, var_5.x), vec2<u32>(4294967295u, 1u))), Struct_1(-u_input.a.x & _wgslsmith_add_i32(24437i, -2420i)), Struct_1(_wgslsmith_add_i32(var_0, ~u_input.a.x)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x);
}

