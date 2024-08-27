struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(-1i, 46393u, -1i, vec3<bool>(false, true, false), vec4<i32>(2147483647i, 1i, 1i, i32(-2147483648))), Struct_1(2147483647i, 0u, -5635i, vec3<bool>(true, false, true), vec4<i32>(4542i, -18513i, 2147483647i, i32(-2147483648))), Struct_1(4930i, 0u, 1i, vec3<bool>(true, false, false), vec4<i32>(-14465i, 0i, 28107i, 7130i)), Struct_1(0i, 4294967295u, i32(-2147483648), vec3<bool>(true, true, true), vec4<i32>(33277i, -79558i, 1i, 27301i)), Struct_1(2147483647i, 83727u, 46670i, vec3<bool>(false, false, false), vec4<i32>(-56147i, 12254i, -46100i, -38851i)), Struct_1(-37395i, 28954u, 36841i, vec3<bool>(false, false, false), vec4<i32>(0i, -1i, 1i, -51631i)), Struct_1(-68585i, 4294967295u, -23799i, vec3<bool>(false, true, true), vec4<i32>(21089i, 1i, i32(-2147483648), -45145i)), Struct_1(i32(-2147483648), 0u, 2147483647i, vec3<bool>(true, true, false), vec4<i32>(i32(-2147483648), 1i, -8492i, -73163i)), Struct_1(-13282i, 4294967295u, 0i, vec3<bool>(false, false, false), vec4<i32>(0i, 2147483647i, -1i, 27116i)), Struct_1(2147483647i, 4294967295u, 85649i, vec3<bool>(false, true, true), vec4<i32>(24053i, 1i, -20711i, -82241i)), Struct_1(-29530i, 96378u, -17382i, vec3<bool>(false, false, true), vec4<i32>(28263i, i32(-2147483648), 38946i, -30232i)), Struct_1(27949i, 4294967295u, 2147483647i, vec3<bool>(true, true, true), vec4<i32>(-1i, 11535i, 21138i, -13994i)), Struct_1(34917i, 27909u, -1i, vec3<bool>(false, false, false), vec4<i32>(48341i, -23213i, 0i, 33061i)), Struct_1(33300i, 0u, -17489i, vec3<bool>(true, true, false), vec4<i32>(0i, 2147483647i, -1i, 40302i)), Struct_1(-18005i, 4294967295u, i32(-2147483648), vec3<bool>(true, false, true), vec4<i32>(2147483647i, -49354i, -35513i, -23151i)), Struct_1(-2173i, 56924u, -51998i, vec3<bool>(true, false, true), vec4<i32>(2147483647i, 12127i, -19981i, -13786i)), Struct_1(8131i, 25408u, 1683i, vec3<bool>(false, true, true), vec4<i32>(-1i, 1372i, 1209i, -1i)), Struct_1(-14401i, 0u, i32(-2147483648), vec3<bool>(false, true, false), vec4<i32>(-63112i, -1i, 37818i, 0i)), Struct_1(33844i, 46782u, -1i, vec3<bool>(true, true, true), vec4<i32>(-55309i, 1i, i32(-2147483648), 2147483647i)), Struct_1(0i, 0u, -32341i, vec3<bool>(false, false, true), vec4<i32>(1342i, 10151i, i32(-2147483648), 2147483647i)), Struct_1(-38866i, 0u, 1i, vec3<bool>(false, true, true), vec4<i32>(2147483647i, -33217i, 66092i, 2147483647i)), Struct_1(-28884i, 4723u, 0i, vec3<bool>(true, false, false), vec4<i32>(0i, 2147483647i, 2147483647i, 0i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = u_input.c;
    global0 = array<Struct_1, 22>();
    var var_1 = select(select(!vec3<bool>(all(vec4<bool>(false, false, false, false)), arg_0 | false, select(arg_0, arg_3.d.x, true)), vec3<bool>(_wgslsmith_mod_u32(arg_3.b, arg_3.b) <= 61084u, true, arg_0), select(!select(arg_3.d, vec3<bool>(arg_0, arg_3.d.x, arg_3.d.x), arg_3.d), !vec3<bool>(arg_0, false, arg_3.d.x), select(arg_3.d, !vec3<bool>(arg_3.d.x, arg_3.d.x, false), !arg_3.d))), vec3<bool>(!(!arg_3.d.x && any(vec4<bool>(true, true, arg_3.d.x, arg_0))), arg_3.d.x, -1i <= arg_2), select(arg_3.d, !select(!vec3<bool>(arg_0, arg_0, arg_3.d.x), !arg_3.d, 4294967295u <= arg_3.b), all(!select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, true, arg_3.d.x, true), vec4<bool>(false, false, arg_0, arg_0)))));
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    return u_input.b;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 22>();
    var var_0 = vec2<bool>(_wgslsmith_sub_i32(u_input.c, _wgslsmith_clamp_i32(-1i, firstTrailingBit(0i), _wgslsmith_mult_i32(-22932i, -1i))) >= firstLeadingBit(firstLeadingBit(0i)), !(arg_1.b <= ~(~arg_1.b)));
    let var_1 = Struct_1(-firstTrailingBit(~2147483647i | _wgslsmith_sub_i32(arg_0, arg_1.c)), 81648u, abs(-func_3(all(vec4<bool>(false, false, false, false)), -590f, min(arg_0, arg_1.c), Struct_1(2147483647i, arg_1.b, arg_1.e.x, arg_1.d, vec4<i32>(u_input.a, arg_0, u_input.a, 2147483647i)))), !arg_1.d, ~arg_1.e);
    let var_2 = ~(~arg_1.b);
    var var_3 = var_1;
    return var_1;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-162f, -258f, 160f) + vec3<f32>(-1000f, 1705f, 972f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1933f, 1000f, 371f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-663f, 1100f, -335f) + vec3<f32>(729f, -2099f, 329f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1257f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1692f))), 690f)));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -309f, var_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -920f), _wgslsmith_f_op_f32(f32(-1f) * -950f), var_0.x) + vec3<f32>(1054f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x - -483f))), -426f)));
    let var_1 = func_2(-17274i, func_2((abs(0i) & (42851i | u_input.b)) ^ max(-46431i, arg_0.e.x), func_2(reverseBits(~arg_0.c), func_2(41013i, Struct_1(1i, arg_0.b, u_input.c, arg_0.d, vec4<i32>(u_input.a, -382i, u_input.a, 2147483647i))))));
    var_0 = vec3<f32>(846f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * 1411f) + var_0.x) * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)))));
    global0 = array<Struct_1, 22>();
    return func_2(~var_1.c, var_1);
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    global0 = array<Struct_1, 22>();
    var var_0 = func_4(func_2(~u_input.b >> (arg_0.x % 32u), Struct_1(-u_input.b, _wgslsmith_clamp_u32(4294967295u >> (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 21744u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), 54291u), -(~20645i), vec3<bool>(u_input.b < 2147483647i, false, arg_0.x <= arg_0.x), ~(vec4<i32>(u_input.b, u_input.c, u_input.a, u_input.b) & vec4<i32>(24092i, -1i, 12639i, u_input.a)))));
    var var_1 = abs(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.x, 4294967295u, var_0.b, var_0.b), vec4<u32>(3944u, 1u, arg_0.x, 4294967295u)), ~(~vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x))) & abs(11432u));
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -373f));
}

fn func_5(arg_0: f32) -> vec2<u32> {
    global0 = array<Struct_1, 22>();
    let var_0 = Struct_1(u_input.b, ~firstLeadingBit(func_4(Struct_1(u_input.a, 73232u, 16212i, vec3<bool>(false, true, false), vec4<i32>(1i, u_input.c, -33637i, u_input.c))).b), u_input.a, func_4(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~64983u), ~1u), 22u)]).d, -select(_wgslsmith_div_vec4_i32(-vec4<i32>(-16067i, 35356i, u_input.a, u_input.a), firstLeadingBit(vec4<i32>(u_input.a, -52998i, 0i, u_input.a))), -(~vec4<i32>(u_input.b, 2147483647i, u_input.c, u_input.c)), true));
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    let var_1 = 24001u;
    return countOneBits(vec2<u32>(var_1, _wgslsmith_sub_u32(max(0u, 43612u), firstLeadingBit(var_0.b))) >> (reverseBits(firstLeadingBit(vec2<u32>(var_0.b, 88929u) & vec2<u32>(4294967295u, var_1))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.c, ~46080u, _wgslsmith_mult_i32(_wgslsmith_mod_i32(select(u_input.c, 74750i, true) << (43064u % 32u), -2147483647i), -(_wgslsmith_sub_i32(32088i, -1i) & -u_input.b)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), -select(vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c), vec4<i32>(u_input.b, 14122i, -1i, 16737i) | vec4<i32>(u_input.a, u_input.c, u_input.c, u_input.b), vec4<bool>(false, all(vec4<bool>(false, false, false, false)), true, select(true, false, true))));
    global0 = array<Struct_1, 22>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(435f, -2079f) * -1437f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-497f, -555f), _wgslsmith_f_op_f32(f32(-1f) * -1137f))) + -1033f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1210f), -860f, !any(vec4<bool>(true, var_0.d.x, var_0.d.x, false)) & (var_0.d.x | var_0.d.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-554f - 179f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(450f, -884f)))))));
    let var_2 = ~_wgslsmith_add_vec2_i32(select(var_0.e.ww << (vec2<u32>(var_0.b, 4294967295u) % vec2<u32>(32u)), vec2<i32>(var_0.c, 2147483647i), true), vec2<i32>(~u_input.a, -2147483647i << (0u % 32u))) << (func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~vec3<u32>(var_0.b, 0u, var_0.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(900f, -1000f)))) % vec2<u32>(32u));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-458f * var_1.x) - 357f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(571f * var_1.x), _wgslsmith_f_op_f32(abs(var_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1417f, var_1.x)), var_1.x)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(319f, -889f, 156f, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1119f, var_1.x, 147f) + vec4<f32>(var_1.x, -639f, -358f, var_1.x)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, var_1.x, 105f)))))))));
    global0 = array<Struct_1, 22>();
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.x, -276f, 1876f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1084f, var_1.x, -117f, 2679f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1200f, var_1.x, var_1.x, 1456f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(sign(var_1.x)), 1f, _wgslsmith_f_op_f32(-var_1.x)))))) + vec4<f32>(var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -405f)))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_1.x)))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(step(-402f, var_1.x))))), var_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1420f - 663f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1055f, -2089f)))), var_1.x, select(!func_2(0i, Struct_1(u_input.c, var_0.b, var_0.a, var_0.d, var_0.e)).d.x, false, _wgslsmith_f_op_f32(round(-230f)) < _wgslsmith_f_op_f32(1772f * var_1.x)))), _wgslsmith_f_op_f32(min(504f, -1222f)));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -666f), vec2<u32>(0u, 4294967295u) >> (~select(vec2<u32>(var_0.b, 0u), vec2<u32>(var_0.b, var_0.b) >> (vec2<u32>(var_0.b, var_0.b) % vec2<u32>(32u)), true) % vec2<u32>(32u)), _wgslsmith_f_op_f32(select(1000f, -414f, false)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x - -681f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_1.x)))) + 460f)), vec3<u32>(~var_0.b ^ ~(~1u), 21054u, reverseBits(~(~var_0.b))));
}

