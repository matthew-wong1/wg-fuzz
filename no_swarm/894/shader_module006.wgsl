struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(abs(u_input.a), -32057i), vec2<i32>(1i, ~u_input.a), vec2<i32>(2147483647i, -u_input.a)), vec2<i32>(-20171i, -2147483647i));
    let var_1 = ~max(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(47344u, 35507u, 60313u, 78582u)), abs(vec4<u32>(1u, 1u, 1u, 1u))));
    return -1i;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    var var_0 = u_input.a;
    var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.b | 2147483647i, ~u_input.b), u_input.a, -(u_input.a << (arg_0 % 32u)), min(~0i, _wgslsmith_div_i32(-83098i, u_input.a))), select(vec4<i32>(-u_input.a, u_input.a, func_3(), 16998i), (vec4<i32>(u_input.a, u_input.b, 0i, u_input.b) & vec4<i32>(-36505i, 83946i, u_input.b, u_input.b)) ^ (vec4<i32>(u_input.a, 0i, u_input.a, u_input.b) >> (vec4<u32>(65249u, arg_1.a, arg_1.a, 0u) % vec4<u32>(32u))), reverseBits(1i) != _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -19216i, u_input.a), vec3<i32>(u_input.a, u_input.b, u_input.b))), abs(select(vec4<i32>(5984i, 19003i, -13882i, 2147483647i), vec4<i32>(u_input.b, 2147483647i, -2147483647i, u_input.b), vec4<bool>(true, false, true, true)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 9313u, arg_1.a, arg_1.a), vec4<u32>(4294967295u, 36807u, arg_1.a, 4294967295u), vec4<u32>(arg_1.a, arg_0, arg_1.a, 4294967295u)) % vec4<u32>(32u)))), -(vec4<i32>(u_input.b, ~31726i, -u_input.b, countOneBits(u_input.a)) | reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 11815i, -10088i, u_input.b), vec4<i32>(u_input.b, 1i, -11722i, -3109i)))));
    var var_1 = ~((_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(25924u, 72024u)) << (vec2<u32>(4294967295u, arg_0) % vec2<u32>(32u))) & vec2<u32>(56290u, _wgslsmith_mod_u32(61247u, firstTrailingBit(56184u))));
    let var_2 = Struct_3(vec4<u32>(arg_0, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(39354u, var_1.x, 13445u), vec3<u32>(30790u, arg_1.a, 1u))), _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_sub_u32(arg_0, var_1.x)), _wgslsmith_sub_u32(~11100u, 9249u)), _wgslsmith_div_u32(reverseBits(47943u), firstTrailingBit(countOneBits(79589u)))), _wgslsmith_mult_i32(u_input.b, u_input.a), vec4<bool>(true != all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false)), any(vec2<bool>(true, true)) & false, !all(vec3<bool>(true, false, true)), true), Struct_2(0i, Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(49532u, 42566u, arg_0, 1u), vec4<u32>(0u, var_1.x, arg_1.a, 8225u)) >> (countOneBits(arg_0) % 32u)), max(~30689u, abs(0u)) >> (countOneBits(_wgslsmith_mod_u32(0u, var_1.x)) % 32u)), Struct_2(-48905i, Struct_1(arg_0), arg_1.a));
    var var_3 = var_2.e;
    return Struct_2(max(1i, u_input.a), arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(36597u, ~_wgslsmith_add_u32(var_2.d.b.a, 77746u)), ~vec2<u32>(10321u, ~var_1.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_mult_u32(countOneBits(arg_1.c), arg_1.b.a);
    var var_1 = vec2<u32>(~(arg_1.c >> (abs(arg_1.c) % 32u)), func_2(select(1u, arg_1.c, arg_0), arg_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-500f, 348f)) * _wgslsmith_f_op_f32(step(-1012f, -298f))), 317f)).b.a);
    var_1 = firstTrailingBit(vec2<u32>(4294967295u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.a, var_1.x, 0u), vec3<u32>(4294967295u, 1u, 1u))))) >> (_wgslsmith_sub_vec2_u32(firstLeadingBit(abs(vec2<u32>(85917u, var_1.x)) ^ abs(vec2<u32>(arg_1.b.a, var_0))), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.x, var_0), ~vec2<u32>(var_1.x, var_0))) % vec2<u32>(32u));
    var var_2 = Struct_3(vec4<u32>(func_2(1u, Struct_1(~24283u), -1526f).c, abs(var_0), var_0, firstTrailingBit(firstTrailingBit(arg_1.b.a))), -1i, vec4<bool>(!any(!vec3<bool>(arg_2.x, true, arg_0)), !arg_2.x, arg_2.x, any(!(!vec4<bool>(true, true, arg_0, true)))), Struct_2(~arg_1.a, Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.x, var_1.x, 24886u), ~vec3<u32>(112948u, 1u, arg_1.c))), 16522u), func_2(arg_1.b.a, arg_1.b, -1000f));
    var var_3 = Struct_3(vec4<u32>(0u, var_1.x, min(firstTrailingBit(58162u & arg_1.c), min(6426u, arg_1.b.a)), countOneBits(_wgslsmith_add_u32(var_1.x, 18486u) | 1840u)), var_2.d.a, var_2.c, func_2(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, arg_1.c), ~var_2.a.ww), 5859u << (1u % 32u)), Struct_1(1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-885f - _wgslsmith_div_f32(540f, 952f)) - _wgslsmith_f_op_f32(floor(-212f)))), Struct_2(select(~(-61238i), u_input.a, true), arg_1.b, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(var_2.a.yw, vec2<u32>(var_2.e.b.a, arg_1.b.a)), var_2.a.x | 20473u)));
    return Struct_2(65553i, var_3.d.b, ~arg_1.b.a);
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = func_4(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, arg_0.a), abs(vec2<u32>(4294967295u, 323u))) <= ~1u, func_2(arg_0.a, arg_0, -983f), select(!vec3<bool>(false, true, select(false, true, false)), select(vec3<bool>(true, all(vec2<bool>(false, false)), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))), select(vec3<bool>(true, false, true), vec3<bool>(true, all(vec3<bool>(true, true, false)), select(false, false, false)), select(false, all(vec3<bool>(true, true, true)), true))));
    var var_1 = (~(vec3<i32>(1i, var_0.a, 0i) ^ vec3<i32>(-26559i, var_0.a, 1i)) << (_wgslsmith_div_vec3_u32(~(~vec3<u32>(16558u, 12512u, arg_0.a)), vec3<u32>(_wgslsmith_mod_u32(0u, 32844u), 2378u, 1u << (arg_0.a % 32u))) % vec3<u32>(32u))) & select(_wgslsmith_div_vec3_i32(vec3<i32>(~2147483647i, var_0.a, u_input.a | -50484i), abs(vec3<i32>(2147483647i, 1i, u_input.b)) >> (vec3<u32>(17454u, arg_0.a, 0u) % vec3<u32>(32u))), vec3<i32>(-_wgslsmith_add_i32(u_input.a, u_input.a), 67339i, u_input.b), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false)));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_add_i32(func_3(), 2147483647i), max(min(func_4(true, Struct_2(0i, var_0.b, 4294967295u), vec3<bool>(false, false, true)).a, -18517i) ^ -_wgslsmith_sub_i32(var_0.a, 13904i), -32153i));
    var var_3 = arg_0;
    var var_4 = Struct_1(47984u);
    return 55417i;
}

fn func_5(arg_0: i32) -> Struct_1 {
    return func_4(any(vec3<bool>(true, true, true)), func_4(true, Struct_2(-19319i, func_4(any(vec2<bool>(false, true)), func_4(true, Struct_2(2147483647i, Struct_1(0u), 21060u), vec3<bool>(false, false, true)), vec3<bool>(false, true, false)).b, 643u), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(reverseBits(u_input.b), -u_input.b, -9465i);
    var var_1 = func_5(_wgslsmith_add_i32(abs(_wgslsmith_add_i32(-10121i, -1i)) | ~func_1(Struct_1(12665u)), ~(-(~(-17916i)))));
    var var_2 = Struct_1(func_4(all(vec3<bool>(true, true, true)), func_2(var_1.a, func_2(countOneBits(53982u), Struct_1(4294967295u), _wgslsmith_f_op_f32(-165f * 1000f)).b, _wgslsmith_f_op_f32(448f * -756f)), select(vec3<bool>(true, true, true), vec3<bool>(var_0.x < -36599i, 73672u < var_1.a, false), true)).c);
    var_2 = func_5(var_0.x);
    let var_3 = Struct_2(i32(-1i) * -max(countOneBits(0i), var_0.x ^ u_input.a), Struct_1(var_1.a), var_2.a);
    var_2 = func_2(countOneBits(~43787u), Struct_1(abs(0u | abs(var_3.b.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(777f, 1369f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1159f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(717f)) * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(abs(-666f)))))).b;
    var_1 = Struct_1(0u);
    let var_4 = Struct_3(~vec4<u32>(_wgslsmith_mult_u32(~116293u, func_4(true, Struct_2(-8616i, var_3.b, var_3.b.a), vec3<bool>(false, true, true)).b.a), _wgslsmith_mult_u32(~var_1.a, abs(1u)), func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, 68300u), vec2<u32>(var_3.b.a, var_1.a)), Struct_1(0u), -674f).c, 2071u), _wgslsmith_add_i32(u_input.a, -33774i), select(vec4<bool>(!select(false, false, true), false, any(vec3<bool>(true, true, true)), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(false, false, true, true)), var_2.a >= ~(var_3.b.a >> (var_2.a % 32u))), func_2(var_3.b.a, Struct_1(~45648u | func_4(true, var_3, vec3<bool>(true, false, true)).b.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2355f)) - -1018f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1513f * 559f) - _wgslsmith_f_op_f32(-945f * 929f)))), Struct_2(var_0.x, func_4(all(vec2<bool>(false, false)), var_3, vec3<bool>(true, true, true)).b, ~firstTrailingBit(4294967295u) | _wgslsmith_sub_u32(~var_1.a, 4294967295u)));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1004f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-395f * 822f))))) * -997f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(275f + _wgslsmith_f_op_f32(round(-135f))) * 1f) * _wgslsmith_f_op_f32(abs(-814f)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(~_wgslsmith_sub_vec2_u32(var_4.a.yx, vec2<u32>(1u, 4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.a, var_4.a.x), ~var_4.a.wy), var_4.c.x)));
}

