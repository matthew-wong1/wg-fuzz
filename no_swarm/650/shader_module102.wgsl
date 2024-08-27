struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = !vec2<bool>(15735u == _wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, u_input.b.x, 0u), vec3<u32>(u_input.a, 35002u, u_input.b.x)), min(vec3<u32>(19832u, u_input.a, u_input.b.x), vec3<u32>(u_input.b.x, u_input.a, 18688u))), false);
    let var_1 = var_0.x && !var_0.x;
    let var_2 = 1u;
    let var_3 = (reverseBits(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(190u, var_2, 4294967295u), vec3<u32>(var_2, var_2, var_2)))) >> (_wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, 4294967295u, 108846u)), abs(abs(vec3<u32>(1u, 13662u, 16530u)))) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_u32(~vec3<u32>(var_2, _wgslsmith_sub_u32(39575u, var_2), 33282u ^ var_2), vec3<u32>(17679u, ~1u, abs(4294967295u)));
    var var_4 = Struct_2(Struct_1(any(vec4<bool>(var_1 & var_1, all(vec2<bool>(false, var_0.x)), true, var_1))));
    return true;
}

fn func_4(arg_0: bool) -> bool {
    var var_0 = Struct_4(Struct_2(Struct_1(true)), u_input.b.x, 63551u << (u_input.a % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_f_op_f32(f32(-1f) * -109f), true)), 1f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-445f + _wgslsmith_f_op_f32(step(773f, 117f))) * 1296f));
    let var_1 = Struct_3(!vec4<bool>(true, true == !var_0.d, arg_0, any(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), var_0.b);
    var var_2 = vec3<i32>(max(-u_input.c.x, 14891i), 1i, _wgslsmith_add_i32(u_input.c.x << (var_1.b % 32u), -1i));
    var var_3 = var_1.a.xxy;
    let var_4 = !select(var_1.a.yw, !select(select(var_3.yx, vec2<bool>(false, var_1.a.x), true), var_3.xy, select(vec2<bool>(true, arg_0), vec2<bool>(false, true), false)), !all(!var_1.a.yz));
    return func_3();
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> bool {
    let var_0 = Struct_3(!(!select(vec4<bool>(true, false, arg_0.x, arg_0.x), select(vec4<bool>(false, true, arg_0.x, true), vec4<bool>(true, false, true, true), arg_0.x), select(vec4<bool>(false, false, true, true), vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(false, arg_0.x, false, arg_0.x)))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.b.x), ~vec4<u32>(u_input.a, 7828u, 134417u, u_input.a))));
    let var_1 = Struct_1(var_0.a.x);
    let var_2 = Struct_4(Struct_2(var_1), u_input.b.x, 30880u ^ ~_wgslsmith_div_u32(1u, ~var_0.b), func_4(select(true, select(var_0.a.x, true, func_3()), true)));
    var var_3 = vec4<u32>(45401u, ~(~var_2.b), ~var_0.b, ~var_0.b);
    var_3 = vec4<u32>(4294967295u, u_input.a, ~1u, 0u);
    return var_0.a.x;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = 613f;
    var var_1 = Struct_4(Struct_2(arg_1), arg_0.b ^ arg_0.b, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.b, ~0u, ~4294967295u)), firstTrailingBit(countOneBits(~vec3<u32>(u_input.a, u_input.a, 1u)))), !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-863f, var_0) * var_0) >= var_0));
    var_1 = Struct_4(arg_2, _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, u_input.b.x), reverseBits(_wgslsmith_div_u32(arg_0.b, 14978u))), var_1.b, _wgslsmith_clamp_u32(4294967295u, (arg_0.b >> (1u % 32u)) >> (_wgslsmith_mod_u32(4294967295u, var_1.c) % 32u), firstTrailingBit(u_input.a)) >= var_1.b);
    let var_2 = u_input.c;
    var var_3 = Struct_4(Struct_2(Struct_1(true | arg_0.a.x)), _wgslsmith_mod_u32(2918u, var_1.b), ~37579u, false);
    return Struct_2(var_1.a.a);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> Struct_4 {
    let var_0 = func_5(Struct_3(vec4<bool>(true, true, true, true), ~countOneBits(countOneBits(0u))), Struct_1((true | func_2(vec2<bool>(true, false), 1000f)) | true), Struct_2(Struct_1(true)));
    var var_1 = -(vec2<i32>(~10368i, u_input.c.x) >> (_wgslsmith_mod_vec2_u32(~(~u_input.b), abs(vec2<u32>(arg_0, arg_0))) % vec2<u32>(32u)));
    var_1 = (max(_wgslsmith_mult_vec2_i32(select(u_input.c, vec2<i32>(var_1.x, 0i), var_0.a.a), u_input.c), ~(~u_input.c)) ^ arg_1) & abs(-max(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-9025i, arg_1.x)), vec2<i32>(1i, 1i)));
    var_1 = (arg_1 << (~firstLeadingBit(u_input.b) % vec2<u32>(32u))) ^ arg_1;
    var var_2 = 845f;
    return Struct_4(func_5(Struct_3(select(select(vec4<bool>(false, true, var_0.a.a, var_0.a.a), vec4<bool>(var_0.a.a, var_0.a.a, true, var_0.a.a), false), vec4<bool>(var_0.a.a, var_0.a.a, var_0.a.a, true), select(false, true, true)), _wgslsmith_add_u32(34031u, 29902u)), var_0.a, var_0), ~28778u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 1u, 0u), firstTrailingBit(vec3<u32>(arg_0, 0u, 0u)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(17764u, 15529u, 41328u), vec3<u32>(u_input.b.x, 29010u, 4294967295u)) % vec3<u32>(32u))), var_0.a.a);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = vec4<u32>(arg_1.b, ~_wgslsmith_dot_vec3_u32(~min(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 75836u, u_input.a)), vec3<u32>(abs(u_input.a), ~u_input.b.x, ~0u)), func_1(arg_1.c, vec2<i32>(-1i) * -vec2<i32>(3419i, -6174i)).b, 6224u);
    let var_1 = -u_input.c.x;
    var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, arg_1.c, u_input.a, u_input.b.x), countOneBits(vec4<u32>(4271u, 4294967295u, 4294967295u, 1u))), vec4<u32>(1u, ~22158u << (var_0.x % 32u), _wgslsmith_sub_u32(arg_1.b, 4294967295u), select(6309u, abs(u_input.b.x), arg_1.d))), ~(vec4<u32>(_wgslsmith_mod_u32(u_input.a, u_input.b.x), ~1u, ~arg_1.b, arg_1.c) << (vec4<u32>(1u, 28648u, var_0.x, _wgslsmith_div_u32(60221u, arg_1.b)) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1237f), _wgslsmith_f_op_f32(1122f - -779f), _wgslsmith_f_op_f32(-130f * -1000f), _wgslsmith_f_op_f32(max(483f, 914f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 530f, -437f, 712f))))) + vec4<f32>(-1228f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-487f - 268f), _wgslsmith_f_op_f32(min(-708f, -334f)))), 147f, 1000f)));
    var var_3 = Struct_3(vec4<bool>(!any(vec3<bool>(arg_1.d, false, false)), arg_1.a.a.a, true, arg_1.d), min(_wgslsmith_add_u32(~u_input.b.x, firstLeadingBit(11034u)), ~var_0.x ^ 68659u));
    return Struct_1(var_3.a.x);
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: Struct_4) -> Struct_3 {
    var var_0 = arg_2.d;
    var_0 = arg_1.a.a;
    let var_1 = _wgslsmith_f_op_f32(select(arg_0, -194f, all(vec4<bool>(func_5(Struct_3(vec4<bool>(arg_1.a.a, true, false, false), 29861u), arg_2.a.a, arg_1).a.a, false, !arg_2.a.a.a, func_2(vec2<bool>(arg_2.d, true), _wgslsmith_f_op_f32(abs(439f)))))));
    var var_2 = func_1(_wgslsmith_mult_u32(~(~u_input.a) & ~abs(0u), arg_2.b), u_input.c).d;
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -652f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_f32(f32(-1f) * -275f)))));
    return Struct_3(select(vec4<bool>(arg_2.a.a.a, func_4(true), arg_1.a.a, true), !vec4<bool>(all(vec4<bool>(true, arg_1.a.a, arg_2.d, false)), -1247f >= var_1, any(vec2<bool>(arg_2.d, arg_2.d)), arg_2.d), !(!vec4<bool>(arg_1.a.a, arg_2.a.a.a, arg_1.a.a, true))), ~_wgslsmith_mod_u32(arg_2.c, ~_wgslsmith_sub_u32(28559u, arg_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(1000f, Struct_2(func_6(_wgslsmith_mod_vec3_i32(~vec3<i32>(-2147483647i, 53403i, u_input.c.x), abs(vec3<i32>(6887i, -31177i, 11139i))), func_1(_wgslsmith_add_u32(u_input.b.x, 8151u), u_input.c))), Struct_4(func_1(3550u, ~u_input.c).a, 1u, ~(1u | firstTrailingBit(u_input.b.x)), !(countOneBits(u_input.c.x) > _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i), vec3<i32>(2147483647i, u_input.c.x, -13447i)))));
    let var_1 = _wgslsmith_f_op_f32(334f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(242f * -884f))), -302f)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -302f);
    var_2 = _wgslsmith_f_op_f32(round(-356f));
    let var_3 = func_5(Struct_3(!var_0.a, 0u), Struct_1(true), Struct_2(Struct_1(var_0.a.x))).a;
    var_2 = _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(619f, 595f))), -750f)));
    var var_4 = firstTrailingBit(countOneBits(vec4<i32>(~(~0i), _wgslsmith_mod_i32(24049i, u_input.c.x), ~(-u_input.c.x), abs(_wgslsmith_add_i32(u_input.c.x, 29153i)))));
    let var_5 = func_5(Struct_3(func_7(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(var_1 + var_1))), func_1(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), -vec2<i32>(var_4.x, -1i)).a, func_1(~0u, var_4.ww)).a, u_input.a), Struct_1(false && var_3.a), func_5(Struct_3(select(func_7(-257f, Struct_2(var_3), Struct_4(Struct_2(Struct_1(true)), u_input.b.x, var_0.b, true)).a, select(var_0.a, var_0.a, var_0.a.x), select(var_0.a, var_0.a, var_0.a)), 1120u), var_3, func_5(func_7(_wgslsmith_f_op_f32(abs(407f)), Struct_2(Struct_1(var_0.a.x)), Struct_4(Struct_2(var_3), 23361u, 21251u, false)), var_3, func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.b.x, var_0.b), vec4<u32>(4294967295u, u_input.b.x, 28627u, 26478u)), vec2<i32>(-1i, var_4.x)).a))).a;
    let var_6 = Struct_3(var_0.a, ~(~_wgslsmith_mult_u32(4294967295u, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(u_input.b, u_input.b));
}

