struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = vec4<i32>(2147483647i, ~abs(firstTrailingBit(-2147483647i)), ~max(max(-1617i, abs(0i)), -reverseBits(-40812i)), (-_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(76799i, 14393i)) | 1i) | (countOneBits(min(-31382i, -2028i)) | firstTrailingBit(~0i)));
    let var_1 = all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)) || all(vec2<bool>(true, true));
    var var_2 = Struct_1(!vec3<bool>(true, !(-11807i <= var_0.x), true), reverseBits(abs(-var_0.x)), all(!(!vec4<bool>(false, var_1, false, var_1))), ~reverseBits(-var_0.zy));
    let var_3 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, ~u_input.a.x >> (~u_input.c % 32u), 4294967295u, ~(~34229u)), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 978u, u_input.d, 1u), firstLeadingBit(vec4<u32>(u_input.d, 0u, u_input.a.x, u_input.b.x))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(824f, 749f, -232f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1238f, -493f, -1000f), vec3<f32>(-198f, 1368f, 2157f))))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -154f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1308f, 1504f))), _wgslsmith_f_op_f32(floor(-1502f)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_4.x), var_4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1517f, -435f)) + _wgslsmith_f_op_f32(var_4.x + var_4.x)) - _wgslsmith_f_op_f32(max(var_4.x, var_4.x))) - -1405f));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1276f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 1047f), arg_0);
    let var_1 = arg_0;
    var_0 = select(!(!(!select(vec2<bool>(var_1, false), vec2<bool>(var_0.x, var_1), vec2<bool>(false, var_0.x)))), select(!select(select(vec2<bool>(arg_0, false), vec2<bool>(true, false), vec2<bool>(false, var_1)), vec2<bool>(false, arg_0), false), !vec2<bool>(true, any(vec2<bool>(arg_0, var_1))), vec2<bool>(false, false)), !select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(var_1, false, true)), !var_1), select(select(vec2<bool>(true, arg_0), vec2<bool>(false, false), vec2<bool>(false, arg_0)), !vec2<bool>(true, arg_0), select(vec2<bool>(var_0.x, true), vec2<bool>(var_1, var_0.x), false))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-462f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-555f * -459f))), min(2147483647i << (_wgslsmith_dot_vec2_u32(u_input.b, u_input.b) % 32u), 33080i) | 2147483647i, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(803f * 1603f) - _wgslsmith_f_op_f32(-147f - 978f)), _wgslsmith_div_f32(-1002f, _wgslsmith_f_op_f32(-327f - -1041f)), -826f, _wgslsmith_f_op_f32(max(1000f, 1f)))));
    var var_3 = var_2.c;
    return Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -632f), var_3.a.x, _wgslsmith_f_op_f32(trunc(-1282f)), 679f)), abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b.x, u_input.a.x, 33481u)), abs(vec3<u32>(57460u, u_input.a.x, 1u))), ~(vec3<u32>(u_input.a.x, u_input.d, 11294u) ^ vec3<u32>(4177u, 1u, 13303u)), vec3<u32>(~u_input.d, ~u_input.b.x, reverseBits(24304u)))), var_2.c, Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(arg_0, true, !arg_0), ~u_input.a.x > abs(56287u)), _wgslsmith_clamp_i32(~_wgslsmith_add_i32(62264i, 20834i), reverseBits(firstTrailingBit(0i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1296i, var_2.b), vec2<i32>(var_2.b, var_2.b))), var_1, vec2<i32>(reverseBits(~(-39533i)), _wgslsmith_clamp_i32(var_2.b, var_2.b, var_2.b) & firstTrailingBit(0i))), firstTrailingBit(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, 4294967295u, 1u), vec4<u32>(u_input.d, u_input.c, u_input.a.x, 4549u)), 0u)));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e.x << (u_input.a.x % 32u), _wgslsmith_mult_u32(0u, arg_0.b.x), 4294967295u, u_input.d << (47449u % 32u)), vec4<u32>(u_input.b.x, arg_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, arg_0.e.x, 5077u), vec4<u32>(u_input.b.x, 4294967295u, 110743u, arg_0.e.x)), _wgslsmith_mult_u32(u_input.a.x, arg_0.e.x))) <= 17321u).c;
    let var_1 = arg_0.d;
    var var_2 = 16763i;
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_3) -> i32 {
    var var_0 = func_4(arg_3);
    var var_1 = vec3<bool>(!func_2(!var_0.d.a.x).d.a.x, true, false);
    var var_2 = Struct_1(arg_2.a, ~(_wgslsmith_mod_i32(arg_3.d.b, reverseBits(arg_3.d.d.x)) << (~28584u % 32u)), arg_1.x != _wgslsmith_f_op_f32(570f - -1000f), (~_wgslsmith_mult_vec2_i32(arg_3.d.d, arg_2.d) >> (vec2<u32>(_wgslsmith_mod_u32(u_input.d, arg_3.e.x), abs(1u)) % vec2<u32>(32u))) | -vec2<i32>(~(-2147483647i), arg_2.d.x));
    var_0 = Struct_3(func_2(true).c, ~(var_0.b | vec3<u32>(arg_0, var_0.b.x, 48436u)) | vec3<u32>(arg_0, 0u, ~(arg_0 | arg_3.e.x)), func_2(var_1.x).a, arg_2, arg_3.e);
    let var_3 = func_2(false).d;
    return 1i;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, true, true, true))), vec3<bool>(true, true, true), false), true), _wgslsmith_div_i32(abs(1i), func_5(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, 47126u), ~0u, arg_0), arg_1.a, Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), ~(-1i), true, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 14201i), vec2<i32>(-17934i, 9931i))), func_4(func_2(false)))), -780f == arg_1.a.x, _wgslsmith_mod_vec2_i32(countOneBits(-_wgslsmith_div_vec2_i32(vec2<i32>(28185i, 0i), vec2<i32>(38471i, 1i))), vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 2147483647i, 54877i), vec4<i32>(18769i, 59493i, 0i, 40876i)), 1i)));
    var var_1 = Struct_1(var_0.a, -12635i, select(true, true, false), firstTrailingBit(~vec2<i32>(-5475i, var_0.b)));
    var_1 = var_0;
    let var_2 = -1i;
    var_1 = Struct_1(select(var_0.a, !select(vec3<bool>(false, var_0.c, false), var_0.a, select(vec3<bool>(false, var_1.c, true), vec3<bool>(true, var_1.c, true), false)), func_2(any(var_1.a)).d.c), var_0.d.x, true, vec2<i32>(abs(i32(-1i) * -14849i), var_2));
    return func_4(Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -311f, arg_1.a.x, -1000f)))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, 42642u), ~21532u, ~0u), min(vec3<u32>(9835u, arg_0, 0u), vec3<u32>(arg_0, u_input.c, 0u)) << (vec3<u32>(4294967295u, 13469u, 4294967295u) % vec3<u32>(32u))), Struct_2(_wgslsmith_f_op_vec4_f32(-func_2(var_0.a.x).a.a)), var_0, countOneBits(select(u_input.b, vec2<u32>(u_input.d, u_input.b.x), vec2<bool>(false, true))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.d, Struct_2(vec4<f32>(1744f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-837f))), -1132f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(495f + -129f) * -143f))));
    var var_1 = func_2(true).d;
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(~abs(u_input.b.x), u_input.a.x) >> (~13997u % 32u), ~reverseBits(firstLeadingBit(u_input.d)));
    var_0 = func_4(func_4(Struct_3(func_2(!var_1.a.x).c, vec3<u32>(firstTrailingBit(u_input.d), func_4(Struct_3(Struct_2(vec4<f32>(-465f, -747f, 736f, var_0.a.x)), vec3<u32>(35567u, u_input.c, u_input.a.x), Struct_2(vec4<f32>(1124f, -1066f, var_0.a.x, -2250f)), Struct_1(vec3<bool>(var_1.c, var_1.c, var_1.a.x), 1i, var_1.c, vec2<i32>(var_1.d.x, -1i)), vec2<u32>(u_input.b.x, 0u))).e.x, u_input.b.x ^ u_input.b.x), func_4(func_2(false)).a, Struct_1(func_4(Struct_3(Struct_2(var_0.a), vec3<u32>(1u, 0u, u_input.d), Struct_2(vec4<f32>(-493f, var_0.a.x, var_0.a.x, var_0.a.x)), Struct_1(vec3<bool>(true, var_1.c, var_1.a.x), var_1.d.x, var_1.a.x, vec2<i32>(var_1.d.x, 1i)), vec2<u32>(u_input.d, u_input.a.x))).d.a, 1i, var_1.c, -var_1.d), ~(~vec2<u32>(4294967295u, u_input.d))))).c;
    let var_3 = Struct_1(!select(vec3<bool>(true, !var_1.a.x, var_1.d.x == 0i), !var_1.a, var_1.c), var_1.d.x, var_1.c, var_1.d);
    var_2 = firstTrailingBit(~(~u_input.c));
    var var_4 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.a.x, -242f), var_0.a.x, -1000f, 381f) - _wgslsmith_f_op_vec4_f32(step(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 408f, var_0.a.x, -822f)))))), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x), abs(vec3<u32>(53781u, 66035u, 4294967295u))), max(vec3<u32>(1u, 1u, u_input.a.x) >> (vec3<u32>(0u, 44005u, 9979u) % vec3<u32>(32u)), vec3<u32>(u_input.c, u_input.b.x, 1u))) | vec3<u32>(u_input.a.x, ~(u_input.a.x & u_input.c), 0u), func_4(func_4(func_4(Struct_3(Struct_2(var_0.a), vec3<u32>(u_input.b.x, 1u, 1u), Struct_2(var_0.a), Struct_1(vec3<bool>(true, true, false), var_3.b, true, var_1.d), vec2<u32>(u_input.c, u_input.c))))).c, Struct_1(func_2(true).d.a, 1i, func_2(select(var_1.a.x, any(vec3<bool>(var_3.a.x, false, var_3.c)), true)).d.c, reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, var_3.d.x), abs(var_3.d)))), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(57721i, vec3<u32>(0u, 1u, ~u_input.b.x), vec2<u32>(min(select(func_4(Struct_3(Struct_2(var_0.a), var_4.b, Struct_2(vec4<f32>(1155f, var_0.a.x, var_0.a.x, var_0.a.x)), Struct_1(vec3<bool>(false, false, var_4.d.a.x), -34415i, var_4.d.a.x, vec2<i32>(var_4.d.d.x, var_1.d.x)), var_4.e)).e.x, func_2(var_4.d.a.x).e.x, true), min(~27731u, func_4(Struct_3(Struct_2(var_4.c.a), vec3<u32>(var_4.e.x, var_4.e.x, 1u), Struct_2(vec4<f32>(var_4.a.a.x, var_4.c.a.x, var_0.a.x, var_4.c.a.x)), Struct_1(var_3.a, -2147483647i, true, vec2<i32>(-9988i, 7712i)), vec2<u32>(1u, var_4.b.x))).e.x)), u_input.b.x));
}

