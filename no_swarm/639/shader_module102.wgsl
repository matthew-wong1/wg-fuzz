struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: i32,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(arg_0, 17424u, 4294967295u, arg_0)), ~vec4<u32>(arg_0, arg_0, arg_0, arg_0)), ~firstTrailingBit(vec4<u32>(arg_0, arg_0, 3394u, 24809u))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), any(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), vec2<bool>(true, -2147483647i > _wgslsmith_mult_i32(u_input.b.x, 2147483647i)), any(vec2<bool>(true, true))));
    var_0 = Struct_1(_wgslsmith_clamp_vec4_u32(max(var_0.a, var_0.a | vec4<u32>(arg_0, 23204u, var_0.a.x, var_0.a.x)), ~(~abs(var_0.a)), vec4<u32>(abs(34030u ^ var_0.a.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), var_0.a.wx), 1u, 55977u)), !select(select(vec2<bool>(var_0.b.x, var_0.b.x), select(var_0.b, var_0.b, vec2<bool>(false, false)), true), !(!var_0.b), 37407u != arg_0));
    var var_1 = firstLeadingBit(~(~_wgslsmith_mult_u32(arg_0, 0u))) >> (arg_0 % 32u);
    var_0 = Struct_1(reverseBits(~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, var_0.a.x, arg_0, 42429u), vec4<u32>(4294967295u, 1u, 21790u, 0u)), ~var_0.a)), var_0.b);
    let var_2 = var_0.b.x;
    return !(min(abs(_wgslsmith_clamp_i32(u_input.b.x, u_input.a, u_input.b.x)), min(u_input.a, u_input.b.x)) >= abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 43700i), firstTrailingBit(vec2<i32>(0i, u_input.a)))));
}

fn func_2() -> bool {
    var var_0 = -1029f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -547f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-302f))))) * 1082f);
    var_0 = u_input.b.x < countOneBits(_wgslsmith_mod_i32(u_input.b.x ^ u_input.a, abs(firstLeadingBit(u_input.a))));
    var var_1 = select(vec3<bool>(func_3(1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 53300u, 73797u, 39205u), vec4<u32>(1u, 76175u, 4294967295u, 81718u))), true, any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), !select(vec3<bool>(all(vec4<bool>(true, false, false, true)), true, any(vec2<bool>(false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), false), !all(vec3<bool>(false, all(vec3<bool>(false, true, false)), true)));
    let var_2 = !(!any(var_1.zx));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 720f), 253f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-136f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -404f)))));
    return !var_1.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> Struct_5 {
    var var_0 = max(-_wgslsmith_add_vec4_i32(-max(vec4<i32>(u_input.a, u_input.a, u_input.b.x, u_input.b.x), u_input.b), u_input.b), u_input.b);
    let var_1 = Struct_5(Struct_4(all(select(arg_0, vec3<bool>(true, arg_0.x, arg_0.x), !arg_0.x)), ~(~1u) >> (countOneBits(arg_1.x) % 32u), -2147483647i, Struct_3(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.wwy, vec3<i32>(13042i, var_0.x, var_0.x), u_input.b.wzw), -var_0.xxy)), 1f));
    let var_2 = vec4<u32>(~40207u, _wgslsmith_mult_u32(~(arg_2.x >> (1u % 32u)) | (min(arg_1.x, 0u) | (30920u | arg_1.x)), 0u), ~arg_2.x, firstLeadingBit(~1u));
    var_0 = _wgslsmith_div_vec4_i32(u_input.b, min(-(_wgslsmith_div_vec4_i32(vec4<i32>(-50744i, var_1.a.c, -11618i, var_0.x), u_input.b) ^ _wgslsmith_div_vec4_i32(u_input.b, u_input.b)), firstTrailingBit((vec4<i32>(var_1.a.d.a.x, u_input.a, -2147483647i, 2147483647i) & vec4<i32>(var_1.a.d.a.x, 1i, -2147483647i, 0i)) & u_input.b)));
    var_0 = vec4<i32>(var_0.x, -23906i, ~58912i, -(_wgslsmith_sub_i32(0i, 6643i) >> (var_2.x % 32u)));
    return var_1;
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = func_4(select(vec3<bool>(true, true || func_2(), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), true), vec3<bool>(true, true, true)), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), ~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 90688u), ~vec2<u32>(2622u, 4294967295u))), vec4<u32>(1u, 1u, 1u, 1u));
    var var_1 = Struct_1(select(vec4<u32>(~var_0.a.b, 21720u >> (1u % 32u), var_0.a.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_0.a.b, var_0.a.b), abs(vec3<u32>(0u, 1906u, var_0.a.b)))), reverseBits(vec4<u32>(_wgslsmith_sub_u32(var_0.a.b, var_0.a.b), _wgslsmith_mod_u32(var_0.a.b, 1u), var_0.a.b << (33745u % 32u), var_0.a.b | 58581u)), vec4<bool>(true, var_0.a.a, false, true || !var_0.a.a)), vec2<bool>(!(!var_0.a.a), var_0.a.a));
    var var_2 = abs(var_1.a.zyw);
    var var_3 = Struct_5(var_0.a);
    var_3 = func_4(select(vec3<bool>(!var_3.a.a, select(false, true, true), !(!var_3.a.a)), select(!(!vec3<bool>(false, var_3.a.a, false)), select(!vec3<bool>(true, var_1.b.x, var_3.a.a), !vec3<bool>(var_3.a.a, var_1.b.x, var_3.a.a), vec3<bool>(false, var_0.a.a, var_1.b.x)), !(!vec3<bool>(var_1.b.x, false, var_0.a.a))), vec3<bool>(true, !(!var_0.a.a), func_2())), var_2.zy, _wgslsmith_mult_vec4_u32(countOneBits(min(min(var_1.a, vec4<u32>(70148u, 65939u, 0u, 43252u)), vec4<u32>(var_1.a.x, 0u, var_0.a.b, var_3.a.b))), vec4<u32>(firstLeadingBit(select(var_0.a.b, 14864u, var_3.a.a)), var_0.a.b, reverseBits(select(var_2.x, var_0.a.b, true)), _wgslsmith_dot_vec2_u32(var_2.zy, countOneBits(var_1.a.yy)))));
    return Struct_3(-vec3<i32>(arg_0, 1i, reverseBits(-2147483647i)));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> vec3<f32> {
    let var_0 = arg_0;
    let var_1 = Struct_2(Struct_1(vec4<u32>(arg_2, ~arg_3, ~11783u, 1u), select(vec2<bool>(false | var_0.a.a, true), vec2<bool>(any(vec3<bool>(var_0.a.a, true, arg_0.a.a)), any(vec3<bool>(false, false, arg_0.a.a))), false)));
    let var_2 = var_1.a.a.x;
    let var_3 = func_4(!select(vec3<bool>(true, arg_0.a.a, true), vec3<bool>(arg_0.a.e >= -2642f, func_4(vec3<bool>(false, true, false), vec2<u32>(14331u, 4294967295u), vec4<u32>(arg_0.a.b, var_2, 1u, arg_3)).a.a, var_1.a.b.x), true), _wgslsmith_sub_vec2_u32(abs((vec2<u32>(1u, var_0.a.b) >> (vec2<u32>(var_1.a.a.x, arg_0.a.b) % vec2<u32>(32u))) | vec2<u32>(0u, var_1.a.a.x)), ~var_1.a.a.yz), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(~var_1.a.a.x, countOneBits(var_2), _wgslsmith_add_u32(8566u, var_2), 6886u)), var_1.a.a)).a;
    var var_4 = func_4(select(select(!vec3<bool>(var_0.a.a, true, var_3.a), !select(vec3<bool>(false, var_3.a, true), vec3<bool>(var_1.a.b.x, var_1.a.b.x, false), vec3<bool>(var_3.a, false, arg_0.a.a)), !(!vec3<bool>(true, var_3.a, var_1.a.b.x))), vec3<bool>(arg_0.a.a, true, true), vec3<bool>(!var_3.a, false, !any(vec4<bool>(var_3.a, false, var_3.a, var_1.a.b.x)))), var_1.a.a.yx, var_1.a.a).a;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.e, _wgslsmith_f_op_f32(max(-684f, var_0.a.e)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(333f, 513f)), arg_0.a.e))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(648f)), _wgslsmith_f_op_f32(-var_3.e), -174f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_5(Struct_5(Struct_4(true, select(4294967295u, 4294967295u, false), -u_input.b.x, Struct_3(vec3<i32>(-1i, u_input.b.x, -4874i)), _wgslsmith_f_op_f32(1001f + 159f))), func_1(u_input.b.x), 1u, firstLeadingBit(abs(79907u)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(245f, -2057f), _wgslsmith_f_op_f32(-1685f - 215f), _wgslsmith_f_op_f32(floor(856f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_f_op_f32(332f - 875f), _wgslsmith_f_op_f32(-2125f * 443f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_5(Struct_4(false, 8981u, -2147483647i, Struct_3(vec3<i32>(1i, 25241i, 1i)), 1000f)), func_4(vec3<bool>(true, false, false), vec2<u32>(33668u, 38416u), vec4<u32>(1u, 46167u, 9390u, 26102u)).a.d, 1u, ~63515u)))), all(vec3<bool>(true, true, true))));
    let var_1 = func_4(vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2122f)) < var_0.x, select(true, true, true) | true), ~vec2<u32>(countOneBits(firstTrailingBit(0u)), 37581u), select(~vec4<u32>(34796u, 1u, select(27283u, 0u, true), _wgslsmith_dot_vec3_u32(vec3<u32>(107743u, 0u, 0u), vec3<u32>(81719u, 4294967295u, 4294967295u))), _wgslsmith_mod_vec4_u32(select(~vec4<u32>(41872u, 29593u, 1u, 0u), abs(vec4<u32>(0u, 1u, 4294967295u, 1u)), vec4<bool>(false, false, false, true)), vec4<u32>(~0u, 0u, ~4294967295u, firstLeadingBit(6079u))), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, 814f >= var_0.x), true)));
    let var_2 = -abs(~(-u_input.b.xxx << (vec3<u32>(var_1.a.b, 80632u, var_1.a.b) % vec3<u32>(32u))));
    let var_3 = var_1.a.b;
    var var_4 = Struct_2(Struct_1(vec4<u32>(var_1.a.b, _wgslsmith_div_u32(_wgslsmith_mod_u32(71163u, var_3), 0u), var_1.a.b, max(4294967295u, 4294967295u) | firstTrailingBit(41576u)), select(vec2<bool>(func_2(), false), !(!vec2<bool>(var_1.a.a, var_1.a.a)), !select(vec2<bool>(var_1.a.a, true), vec2<bool>(var_1.a.a, true), var_1.a.a))));
    var var_5 = vec2<i32>(-2147483647i, -1i);
    var_5 = vec2<i32>(-abs(abs(-47168i >> (1u % 32u))), ~(~40921i));
    var var_6 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.e, 4294967295u, var_2.yz, var_0.x, ~(27905u >> (1u % 32u)));
}

