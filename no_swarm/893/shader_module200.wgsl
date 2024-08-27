struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<i32>, arg_3: bool) -> bool {
    return any(vec2<bool>(arg_3, any(vec2<bool>(arg_0, true))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec3<f32>) -> f32 {
    var var_0 = ~(-u_input.b);
    let var_1 = 1i;
    let var_2 = Struct_2(Struct_1(u_input.b, _wgslsmith_mod_u32(_wgslsmith_sub_u32(~37168u, ~u_input.a.x), u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))))), !select(select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true)), !vec3<bool>(false, false, arg_1.x), !select(vec3<bool>(true, true, arg_1.x), vec3<bool>(false, false, true), true)), arg_2.x, Struct_1(~(-(~arg_0.x)), u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, -230f, -660f) + vec4<f32>(-1104f, arg_2.x, 1000f, arg_2.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, -1174f, 440f)) + vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)))), Struct_1(arg_0.x, u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 1000f), vec4<f32>(380f, -2028f, 1119f, arg_2.x), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x))))))));
    let var_3 = Struct_2(Struct_1(~_wgslsmith_mult_i32(var_2.e.a, -var_1), reverseBits(var_2.a.b), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.x)) - _wgslsmith_f_op_f32(min(669f, 718f))), _wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -683f), _wgslsmith_f_op_f32(-930f * -266f))), !(!var_2.b), 949f, Struct_1(-6730i, var_2.e.b, vec4<f32>(_wgslsmith_f_op_f32(var_2.a.c.x * -497f), _wgslsmith_f_op_f32(step(var_2.d.c.x, var_2.d.c.x)), 972f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1093f * -122f))))), Struct_1(var_1, u_input.a.x, var_2.d.c));
    return -341f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> vec3<u32> {
    var var_0 = Struct_2(arg_0, !select(vec3<bool>(false & arg_3, !arg_3, true), !vec3<bool>(false, arg_3, false), !(!vec3<bool>(arg_3, arg_3, arg_3))), arg_1.c.x, arg_1, arg_0);
    var var_1 = vec3<bool>(true, true, arg_3);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(-2147483647i, arg_1.a, arg_0.a)), vec2<bool>(func_3(false, _wgslsmith_div_u32(1u, arg_1.b), vec2<i32>(arg_1.a, u_input.b), all(vec4<bool>(true, arg_3, false, arg_3))), !(!arg_3)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(410f, arg_0.c.x, arg_0.c.x))))))))));
    let var_3 = Struct_1(max(~(abs(1i) >> (1u % 32u)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, u_input.b, arg_0.a, arg_1.a), vec4<i32>(arg_0.a, arg_1.a, 4770i, u_input.b)) & u_input.b)), arg_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_0.c, _wgslsmith_f_op_vec4_f32(arg_0.c - _wgslsmith_f_op_vec4_f32(-arg_0.c))))));
    var var_4 = !vec4<bool>(false, any(vec4<bool>(true, all(var_1.zx), true, false)), func_3(var_3.a >= 2147483647i, var_0.a.b, ~(~vec2<i32>(2147483647i, var_0.a.a)), var_1.x), true);
    return ~_wgslsmith_mod_vec3_u32(~(~u_input.a.zwz), vec3<u32>(var_3.b, _wgslsmith_sub_u32(1u, var_0.a.b), abs(4294967295u)));
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_sub_vec3_u32(~(~u_input.a.xwx), vec3<u32>(~0u, u_input.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(11921u, u_input.a.x), u_input.a.yw, vec2<u32>(4294967295u, u_input.a.x)), firstLeadingBit(vec2<u32>(64137u, 40044u)))) ^ ((vec3<u32>(u_input.a.x, u_input.a.x, 1u) & func_2(Struct_1(u_input.b, u_input.a.x, vec4<f32>(495f, 1759f, 1039f, 1077f)), Struct_1(-5921i, 21170u, vec4<f32>(-215f, 713f, 218f, 1000f)), 0u, false)) << (u_input.a.www % vec3<u32>(32u))));
    var var_1 = Struct_1(select(u_input.b ^ countOneBits(_wgslsmith_add_i32(14467i, u_input.b)), u_input.b, !(true | all(vec2<bool>(false, false)))), ~(~24075u ^ reverseBits(u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-604f, -223f, 242f, -564f) - vec4<f32>(1000f, -113f, -1116f, -1000f)))));
    var var_2 = Struct_2(Struct_1(~u_input.b, 1u, var_1.c), vec3<bool>(true, !any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), !(true || (-23990i >= u_input.b))), _wgslsmith_f_op_f32(-var_1.c.x), Struct_1(select(var_1.a, 71873i, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), _wgslsmith_mult_u32(13844u, abs(abs(var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.c), _wgslsmith_f_op_vec4_f32(abs(var_1.c)), true)) * vec4<f32>(_wgslsmith_f_op_f32(var_1.c.x * var_1.c.x), var_1.c.x, var_1.c.x, _wgslsmith_div_f32(-178f, 542f)))), Struct_1(1i, ~_wgslsmith_add_u32(11086u, abs(36724u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c.x, var_1.c.x, 128f, var_1.c.x))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.c.x, var_1.c.x, -1014f, -191f), vec4<f32>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(floor(-1613f)), _wgslsmith_f_op_f32(f32(-1f) * -1280f), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(var_1.c.x * -621f))))));
    var var_3 = var_1.a;
    let var_4 = Struct_1(43618i, ~max(62352u, abs(var_1.b)), var_2.a.c);
    return !vec2<bool>(true, !var_2.b.x);
}

fn func_5(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = all(select(select(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), arg_0.x), true), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(false, true, true, false), vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, false)), func_1().x), false)) == all(vec2<bool>(func_3(!arg_0.x, 1u, ~vec2<i32>(u_input.b, u_input.b), true), true));
    var var_1 = Struct_1(-2147483647i, ~0u, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-199f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(899f - -253f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(195f + 405f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -400f) + 1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1782f, 764f, 452f, 104f), vec4<f32>(-1000f, -950f, -451f, -1130f), true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(488f, -183f, 541f, 1000f))))));
    var var_2 = vec2<u32>(4294967295u, _wgslsmith_clamp_u32(~(~55695u), 27153u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.wz, u_input.a.xx)), ~var_1.b | ~4294967295u)));
    let var_3 = ~_wgslsmith_sub_vec3_i32(min(-vec3<i32>(55889i, var_1.a, -3993i) ^ max(vec3<i32>(0i, u_input.b, 1i), vec3<i32>(73531i, u_input.b, -1i)), ~(vec3<i32>(-38536i, var_1.a, u_input.b) << (u_input.a.zxx % vec3<u32>(32u)))), abs(_wgslsmith_div_vec3_i32(vec3<i32>(-29009i, 2147483647i, 0i), vec3<i32>(1i, 67991i, -1i)) << (~u_input.a.zzw % vec3<u32>(32u))));
    let var_4 = -120f;
    return Struct_1(~(~(-2147483647i) & _wgslsmith_div_i32(~u_input.b, var_3.x)), ~_wgslsmith_mod_u32(72339u, _wgslsmith_mult_u32(1u, var_1.b)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_4)), _wgslsmith_f_op_f32(var_1.c.x + -481f)), var_4, any(vec4<bool>(var_0, false, var_0, arg_0.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 - _wgslsmith_f_op_f32(var_4 - 1187f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(abs(reverseBits(u_input.b)), -(_wgslsmith_mod_i32(-8856i, select(13238i, -61195i, false)) >> (1u % 32u)));
    var var_1 = Struct_2(func_5(func_1()), vec3<bool>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.xw, vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xw)) == (func_2(Struct_1(var_0, 74133u, vec4<f32>(513f, -382f, 1617f, 979f)), Struct_1(u_input.b, 81329u, vec4<f32>(-2231f, -781f, 1376f, -1000f)), u_input.a.x, false).x ^ ~49650u), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x) < _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 49325u, u_input.a.x), vec3<u32>(68454u, 74955u, 0u))), any(func_1())), -154f, func_5(!vec2<bool>(func_3(false, u_input.a.x, vec2<i32>(4827i, -67720i), false), all(vec2<bool>(false, true)))), Struct_1(2147483647i, _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 67060u), vec2<u32>(0u, u_input.a.x))), ~(~u_input.a.zy)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1422f)) * -601f), 565f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1235f, 2033f) * func_5(vec2<bool>(true, false)).c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-892f - -740f), _wgslsmith_f_op_f32(f32(-1f) * -932f))))));
    var var_2 = func_5(var_1.b.zz);
    var_1 = Struct_2(Struct_1(-42099i, 16126u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.c * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-286f, -1000f, var_1.a.c.x, 1861f))))), var_1.b, 831f, Struct_1(-2147483647i, ~(_wgslsmith_clamp_u32(30326u, u_input.a.x, var_1.d.b) | 0u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(var_2.c, vec4<f32>(var_2.c.x, 1361f, -713f, var_1.a.c.x)))))), var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-1i, -50134i, select(1i, var_1.a.a, false)), _wgslsmith_sub_i32(~var_1.d.a, var_0) | 1i, var_2.c.zw);
}

