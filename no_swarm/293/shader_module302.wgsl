struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> vec2<i32> {
    var var_0 = arg_0;
    let var_1 = Struct_1(firstTrailingBit(select(~arg_0.b.b, ~vec3<u32>(21889u, 4294967295u, arg_0.b.b.x), vec3<bool>(false, false, true))) & arg_0.b.b);
    var_0 = arg_0;
    var_0 = Struct_3(~(~_wgslsmith_mod_vec2_i32(arg_0.a, vec2<i32>(arg_0.a.x, -1i))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(638f)) + _wgslsmith_f_op_f32(-754f * arg_0.b.a.x)), var_0.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(arg_0.b.a.x + arg_1)), _wgslsmith_f_op_f32(var_0.b.c + _wgslsmith_f_op_f32(arg_0.b.c - -624f))), var_1.a, _wgslsmith_f_op_f32(trunc(arg_1))));
    var_0 = arg_0;
    return vec2<i32>(abs(~arg_0.a.x), arg_0.a.x << (firstTrailingBit(_wgslsmith_add_u32(firstLeadingBit(arg_0.b.b.x), var_1.a.x)) % 32u));
}

fn func_2(arg_0: i32) -> vec2<u32> {
    var var_0 = min(~abs(_wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_0, 19085i), vec2<i32>(-1i, -5415i) << (u_input.a % vec2<u32>(32u)), abs(vec2<i32>(1i, 2147483647i)))), -(-vec2<i32>(arg_0, 0i) ^ _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(-22643i, 0i)), select(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(arg_0, arg_0), true))));
    var_0 = ~(~func_3(Struct_3(abs(vec2<i32>(-1i, arg_0)), Struct_2(vec4<f32>(-1000f, -1840f, -1650f, 722f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), 338f)), -249f));
    var var_1 = Struct_1(min(vec3<u32>(abs(firstLeadingBit(1u)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a.x, 4294967295u, 14160u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(true, false, true)), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), ~(~0u)), (vec3<u32>(4294967295u, 1u, 4294967295u) & (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) | vec3<u32>(u_input.a.x, u_input.a.x, 3764u))) << (select(vec3<u32>(56432u, u_input.a.x, u_input.a.x), vec3<u32>(631u, u_input.a.x, u_input.a.x), true) % vec3<u32>(32u))));
    return u_input.a;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = arg_0.b.b.x;
    var var_1 = arg_3.b;
    let var_2 = vec2<u32>(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.b.x, 181624u, 1u, 0u), vec4<u32>(arg_1.b.x, arg_3.b.b.x, arg_3.b.b.x, var_1.b.x)) & ~(~arg_0.b.b.x)) & abs(func_2(~firstLeadingBit(arg_2.x)));
    var_0 = arg_1.b.x;
    return vec4<bool>(all(vec2<bool>(true, true)), all(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(false, true, false, true), false)), true, select(true, arg_3.a.x > select(arg_0.a.x, -arg_2.x, true), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_3(~_wgslsmith_mod_vec2_i32(~countOneBits(vec2<i32>(arg_2.x, arg_2.x)), abs(vec2<i32>(arg_2.x, 45525i)) >> (firstLeadingBit(arg_1.a.xy) % vec2<u32>(32u))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(350f, -890f, 1600f, 766f))), min(arg_1.a, countOneBits(arg_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(176f - 1f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -950f))))));
    var_0 = Struct_3(-vec2<i32>(~_wgslsmith_add_i32(var_0.a.x, -39085i), arg_2.x), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-301f, 530f, -426f, var_0.b.c)) - vec4<f32>(-1956f, var_0.b.a.x, var_0.b.c, -779f))), arg_1.a & arg_1.a, 1000f));
    let var_1 = vec2<u32>(~_wgslsmith_div_u32(abs(~var_0.b.b.x), func_2(-2147483647i).x ^ 14339u), arg_1.a.x);
    let var_2 = Struct_3(~vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -24114i, ~arg_2.x), arg_2.x), var_0.b);
    var var_3 = Struct_3(vec2<i32>(arg_2.x ^ arg_2.x, ~(-2147483647i)), Struct_2(var_0.b.a, ~(vec3<u32>(var_2.b.b.x, 0u, var_0.b.b.x) ^ vec3<u32>(var_0.b.b.x, var_0.b.b.x, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a.x)))));
    return var_0.b;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = Struct_2(vec4<f32>(arg_0.b.c, _wgslsmith_f_op_f32(633f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x + arg_2.c) + arg_2.a.x)), _wgslsmith_f_op_f32(round(318f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1468f, _wgslsmith_f_op_f32(floor(-1252f)))))), vec3<u32>(1u, arg_2.b.x, _wgslsmith_mod_u32(40299u, arg_3.a.x)), _wgslsmith_f_op_f32(-arg_0.b.c));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a.x, var_0.c, var_0.a.x, arg_0.b.c), arg_0.b.a), _wgslsmith_div_vec4_f32(arg_2.a, arg_2.a))))), _wgslsmith_mult_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(~vec3<u32>(25903u, arg_0.b.b.x, 87652u), var_0.b)), countOneBits(~vec3<u32>(78460u, 21099u, 71279u) & vec3<u32>(27055u, var_0.b.x, arg_0.b.b.x))), 1000f);
    let var_1 = !vec3<bool>(all(vec4<bool>(true, true, true, true)), func_1(arg_0, Struct_2(var_0.a, vec3<u32>(var_0.b.x, 4538u, 94411u), arg_2.c), vec3<i32>(_wgslsmith_mult_i32(arg_0.a.x, arg_0.a.x), arg_0.a.x & arg_1.x, ~arg_1.x), arg_0).x, true);
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_0.b.a, arg_0.b.a))))), _wgslsmith_div_vec3_u32(~vec3<u32>(~var_0.b.x, ~55074u, _wgslsmith_dot_vec2_u32(arg_0.b.b.xz, u_input.a)), _wgslsmith_sub_vec3_u32(~arg_0.b.b, vec3<u32>(60551u, 24379u, 25760u)) | vec3<u32>(var_0.b.x, u_input.a.x | arg_2.b.x, arg_2.b.x)), func_4(select(vec4<bool>(all(vec2<bool>(true, var_1.x)), true, any(vec3<bool>(true, true, true)), var_1.x & var_1.x), !(!vec4<bool>(var_1.x, true, false, true)), var_1.x), Struct_1(func_4(!vec4<bool>(var_1.x, true, true, false), arg_3, vec3<i32>(arg_0.a.x, 0i, 5992i)).b), vec3<i32>(~arg_0.a.x, -arg_0.a.x, ~arg_0.a.x) | arg_1).a.x);
    var var_2 = max(arg_1.zx, _wgslsmith_sub_vec2_i32(-arg_1.yy, vec2<i32>(-1i) * -arg_0.a));
    return var_1.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(_wgslsmith_div_i32(-16045i, ~1i) <= (~(-59477i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 1u, u_input.a.x)) % 32u))), _wgslsmith_add_i32(2147483647i, ~_wgslsmith_sub_i32(-1i, -7598i)) != firstTrailingBit(-2147483647i));
    var_0 = func_5(Struct_3(~abs(~vec2<i32>(-1i, -1i)), func_4(select(vec4<bool>(true, var_0.x, true, true), func_1(Struct_3(vec2<i32>(-21232i, -2147483647i), Struct_2(vec4<f32>(468f, -1732f, 663f, 492f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), 367f)), Struct_2(vec4<f32>(511f, 557f, -1503f, -2017f), vec3<u32>(79995u, 20161u, u_input.a.x), -690f), vec3<i32>(5090i, -46243i, 88054i), Struct_3(vec2<i32>(0i, 2147483647i), Struct_2(vec4<f32>(-492f, -748f, 227f, 314f), vec3<u32>(29599u, 4294967295u, 46201u), 385f))), !vec4<bool>(var_0.x, true, var_0.x, var_0.x)), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 1167u) & vec3<u32>(25115u, 12292u, 31694u)), firstTrailingBit(vec3<i32>(56611i, -27446i, 56102i)))), _wgslsmith_div_vec3_i32(abs(abs(-vec3<i32>(-1i, 26537i, 37012i))), abs(~firstLeadingBit(vec3<i32>(-1i, -559i, -20248i)))), Struct_2(vec4<f32>(1434f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -248f) - -1075f), _wgslsmith_f_op_f32(f32(-1f) * -464f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-613f, 450f, true))))), vec3<u32>(u_input.a.x, 1u, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1000f, 1203f)), 590f, func_1(Struct_3(vec2<i32>(16999i, 2147483647i), Struct_2(vec4<f32>(815f, 2301f, -1243f, 788f), vec3<u32>(45483u, u_input.a.x, u_input.a.x), 1801f)), Struct_2(vec4<f32>(836f, 324f, -179f, -2162f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), 1238f), vec3<i32>(-1i, 83696i, 7121i), Struct_3(vec2<i32>(-18358i, 1i), Struct_2(vec4<f32>(370f, 1000f, -951f, -1000f), vec3<u32>(9452u, 0u, 11709u), 313f))).x)) + -365f)), Struct_1(select(~(~vec3<u32>(0u, u_input.a.x, 48888u)), vec3<u32>(_wgslsmith_div_u32(4294967295u, 9836u), u_input.a.x, ~u_input.a.x), select(func_1(Struct_3(vec2<i32>(-123582i, 47254i), Struct_2(vec4<f32>(620f, 827f, 510f, -661f), vec3<u32>(0u, u_input.a.x, 40856u), -302f)), Struct_2(vec4<f32>(969f, -1037f, -411f, 981f), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), -1000f), vec3<i32>(2147483647i, -13514i, 14303i), Struct_3(vec2<i32>(2147483647i, -33202i), Struct_2(vec4<f32>(-827f, 1533f, -540f, 1741f), vec3<u32>(26307u, 1u, u_input.a.x), -192f))).zyz, !vec3<bool>(true, var_0.x, false), !vec3<bool>(true, var_0.x, var_0.x)))));
    var_0 = vec2<bool>(!(!var_0.x), all(vec3<bool>(true, true, true)));
    var_0 = vec2<bool>(all(vec2<bool>(!var_0.x, !(false & var_0.x))), var_0.x);
    var_0 = !(!(!func_1(Struct_3(vec2<i32>(-1i, 25288i), Struct_2(vec4<f32>(301f, 447f, -1567f, -266f), vec3<u32>(4294967295u, 74969u, 0u), 807f)), Struct_2(vec4<f32>(1617f, 548f, -746f, 337f), vec3<u32>(53089u, 1u, 4294967295u), -2503f), vec3<i32>(40478i, 2147483647i, 28782i), Struct_3(vec2<i32>(10900i, 36183i), Struct_2(vec4<f32>(1162f, 1360f, 749f, 983f), vec3<u32>(u_input.a.x, 1u, 37196u), 629f))).wz));
    let var_1 = Struct_1(vec3<u32>(~_wgslsmith_clamp_u32(28222u, 1u, func_4(vec4<bool>(false, true, var_0.x, false), Struct_1(vec3<u32>(121901u, u_input.a.x, 27579u)), vec3<i32>(-2147483647i, 2147483647i, 2147483647i)).b.x), u_input.a.x, ~(~u_input.a.x ^ 22304u)));
    var var_2 = func_4(select(func_1(Struct_3(~vec2<i32>(2147483647i, 1i), Struct_2(vec4<f32>(-1574f, -898f, -266f, -187f), var_1.a, -1322f)), func_4(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_1, ~vec3<i32>(79287i, 2147483647i, 32283i)), vec3<i32>(1i, 1i, 1i), Struct_3(firstLeadingBit(vec2<i32>(-1i, 23165i)), func_4(vec4<bool>(var_0.x, true, var_0.x, false), var_1, vec3<i32>(0i, -16534i, 2147483647i)))), func_1(Struct_3(-vec2<i32>(14191i, 2147483647i), Struct_2(vec4<f32>(-1000f, 253f, 1388f, -448f), var_1.a, -947f)), func_4(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_1(var_1.a), -vec3<i32>(-2147483647i, -29909i, -3309i)), vec3<i32>(0i, 1i, _wgslsmith_div_i32(-29320i, -1i)), Struct_3(-vec2<i32>(2147483647i, -1i), func_4(vec4<bool>(true, false, true, false), Struct_1(var_1.a), vec3<i32>(2147483647i, 1i, 1i)))), !func_1(Struct_3(vec2<i32>(5032i, -4132i), Struct_2(vec4<f32>(474f, 1000f, -1669f, 222f), vec3<u32>(0u, var_1.a.x, 48192u), 553f)), Struct_2(vec4<f32>(302f, 1043f, 698f, 1000f), var_1.a, -1000f), select(vec3<i32>(47577i, 30914i, 6343i), vec3<i32>(2147483647i, 14292i, 0i), true), Struct_3(vec2<i32>(3786i, 2147483647i), Struct_2(vec4<f32>(576f, 531f, -371f, -1308f), var_1.a, 583f)))), var_1, ~vec3<i32>(-15624i, i32(-1i) * -1i, abs(~12408i)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_2.a.x * var_2.a.x), _wgslsmith_f_op_f32(426f + 1103f), _wgslsmith_f_op_f32(-var_2.a.x), -2105f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(181f, -1168f, 1f, var_2.a.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a.x, var_2.a.x, var_2.c, var_2.c))) - _wgslsmith_f_op_vec4_f32(-var_2.a)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, -2151f, var_2.a.x, -649f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-246f, var_2.a.x, var_2.a.x, var_2.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(func_4(vec4<bool>(true, var_0.x, false, var_0.x), var_1, -vec3<i32>(-18887i, 44714i, -17831i)).b.x, 88885u, ~var_1.a.x, u_input.a.x), vec3<i32>(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(-2147483647i, 8834i, 0i)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -12410i, 15414i), vec3<i32>(2147483647i, -1i, 2147483647i))), ~(~reverseBits(0i)), -43861i), vec3<f32>(_wgslsmith_f_op_f32(step(var_2.c, _wgslsmith_f_op_f32(step(2904f, _wgslsmith_f_op_f32(f32(-1f) * -2825f))))), -1415f, func_4(vec4<bool>(!var_0.x, !var_0.x, !var_0.x, true), Struct_1(~var_2.b), vec3<i32>(firstTrailingBit(-2147483647i), 1i, abs(-2147483647i))).c), vec4<i32>(-50141i, 2826i, -2266i << (1u % 32u), min(24836i, _wgslsmith_mod_i32(~(-2147483647i), max(-1i, -1i)))), _wgslsmith_f_op_f32(abs(var_3.x)));
}

