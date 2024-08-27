struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-44614i, -13631i, 1i);

var<private> global1: bool;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> u32 {
    var var_0 = u_input.c.zx;
    var var_1 = arg_1.d.x;
    var var_2 = arg_1;
    global1 = -_wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(19066i, arg_1.d.x, -2147483647i), firstTrailingBit(-1i), -15593i), 2147483647i) <= 2147483647i;
    return ~(~_wgslsmith_div_u32(0u, var_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: i32) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(abs(arg_0.d.x), abs(var_1.d.x), _wgslsmith_sub_i32(-49861i, _wgslsmith_clamp_i32(var_0.d.x, var_0.d.x, -2956i))), vec3<i32>(-_wgslsmith_mult_i32(-2147483647i, -u_input.b.x), var_0.d.x, var_1.d.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * var_1.c)), -1610f, _wgslsmith_f_op_f32(step(-535f, _wgslsmith_div_f32(var_1.c, -581f))), _wgslsmith_f_op_f32(abs(-1015f)))));
    let var_4 = var_0.c;
    return !select(vec2<bool>(var_1.a, all(vec3<bool>(var_0.a, false, true))), vec2<bool>(var_0.b.x, arg_0.a), var_1.b.x);
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var_0 = true;
    let var_1 = !vec3<bool>(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1820f), -777f, any(vec4<bool>(true, true, false, false)))) < -619f, any(func_4(Struct_1(true, vec2<bool>(true, false), -230f, vec3<i32>(global0.x, -3235i, u_input.b.x)), abs(vec4<u32>(u_input.a, u_input.c.x, u_input.a, u_input.a)), func_3(vec4<bool>(true, true, true, true), Struct_1(false, vec2<bool>(true, false), 999f, vec3<i32>(u_input.b.x, 0i, global0.x)), vec3<f32>(557f, -1378f, -478f), 386f), -40470i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(308f, -480f, 1000f))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1334f * 633f))), 1424f, _wgslsmith_f_op_f32(f32(-1f) * -1877f)), vec3<bool>(var_1.x, var_1.x, _wgslsmith_f_op_f32(round(-2984f)) > _wgslsmith_f_op_f32(min(880f, 380f)))))));
    var var_3 = var_1;
    return Struct_1(!func_4(Struct_1(false, vec2<bool>(var_3.x, var_3.x), var_2.x, abs(vec3<i32>(-31071i, global0.x, global0.x))), ~vec4<u32>(1u, 0u, u_input.a, u_input.a), ~4294967295u, max(firstTrailingBit(1i), global0.x << (1u % 32u))).x, var_3.yz, 100f, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, -1i), vec3<i32>(abs(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, global0.x), vec3<i32>(global0.x, u_input.b.x, -12703i) & vec3<i32>(-12004i, -1i, global0.x)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -23594i), global0.zx))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> bool {
    var var_0 = min(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(-44752i, -1i, -2147483647i, -68535i), vec4<i32>(26934i, global0.x, global0.x, global0.x))) & vec4<i32>(reverseBits(min(-59111i, 45400i)), -2147483647i, -28649i, 0i), abs(vec4<i32>(global0.x & 2147483647i, -(~(-2147483647i)), u_input.b.x, _wgslsmith_dot_vec2_i32(-arg_0.d.xz, _wgslsmith_mult_vec2_i32(u_input.b, u_input.b)))));
    let var_1 = !(!func_4(Struct_1(arg_0.c >= 445f, select(vec2<bool>(false, true), arg_0.b, true), _wgslsmith_f_op_f32(-arg_0.c), arg_0.d >> (u_input.c % vec3<u32>(32u))), vec4<u32>(44647u, abs(arg_2), u_input.c.x, u_input.c.x), u_input.a, arg_0.d.x).x);
    let var_2 = Struct_1(any(!vec4<bool>(true, arg_0.c > 1000f, all(vec3<bool>(true, true, false)), arg_0.a)), vec2<bool>(true, true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0.c)), _wgslsmith_f_op_f32(arg_0.c * arg_0.c), arg_1)))))), countOneBits(vec3<i32>(global0.x, ~global0.x, global0.x) & arg_0.d));
    var var_3 = arg_0;
    global0 = var_0.www;
    return func_4(func_2(), _wgslsmith_mult_vec4_u32(~(~reverseBits(vec4<u32>(u_input.a, 0u, 48203u, arg_2))), ~(~min(vec4<u32>(88434u, 0u, arg_2, 38702u), vec4<u32>(u_input.a, u_input.a, 44329u, u_input.c.x)))), arg_2 >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, u_input.c.x, arg_2, u_input.a) << (~vec4<u32>(arg_2, 108619u, arg_2, 0u) % vec4<u32>(32u)), vec4<u32>(firstLeadingBit(80312u), _wgslsmith_mult_u32(4294967295u, arg_2), countOneBits(0u), ~10659u)) % 32u), _wgslsmith_clamp_i32(var_3.d.x, abs(_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, arg_0.d.x), global0.x)), min(-17004i, var_0.x))).x;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = reverseBits(min(~min(~vec4<u32>(36074u, u_input.c.x, 4294967295u, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, u_input.a), vec4<u32>(arg_1.x, 1u, 8898u, 41429u))), _wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.a, arg_1.x, u_input.c.x, 4294967295u), reverseBits(firstTrailingBit(vec4<u32>(arg_0, arg_0, u_input.a, 4294967295u))))));
    var var_1 = var_0.zyw;
    var var_2 = vec3<bool>(abs(-_wgslsmith_mult_i32(32970i, u_input.b.x)) == (global0.x | 14313i), any(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), !(!all(vec4<bool>(true, false, true, true))));
    var var_3 = true;
    let var_4 = Struct_1(func_5(func_2(), any(vec4<bool>(true, 77612u < arg_1.x, u_input.b.x >= -2147483647i, true)), abs(7892u)), vec2<bool>(var_2.x, all(select(select(vec4<bool>(false, true, true, var_2.x), vec4<bool>(var_2.x, var_2.x, false, false), vec4<bool>(false, false, true, var_2.x)), !vec4<bool>(true, false, true, var_2.x), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -580f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(574f, 347f))))), -reverseBits(-_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b.x, 21940i), vec3<i32>(global0.x, u_input.b.x, u_input.b.x))));
    return var_4;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = -select(vec3<i32>(reverseBits(arg_0.d.x ^ u_input.b.x), _wgslsmith_mult_i32(arg_0.d.x | -2147483647i, 1i), reverseBits(-arg_1.d.x)), vec3<i32>(0i, u_input.b.x, global0.x), false);
    global1 = true;
    global0 = vec3<i32>(select(~select(_wgslsmith_sub_i32(arg_0.d.x, arg_1.d.x), -2147483647i, !arg_0.a), abs(~(~(-1i))), arg_1.a), u_input.b.x, 0i);
    global1 = true;
    let var_0 = true;
    return func_1(4294967295u, firstLeadingBit(~u_input.c.xy));
}

fn func_7(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = !(!vec2<bool>(~0u <= arg_2.x, arg_0.a));
    var var_1 = var_0.x;
    var_1 = !(var_0.x && arg_1.x);
    let var_2 = !(!select(select(!vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, false, false), vec3<bool>(var_0.x, true, arg_0.b.x)), vec3<bool>(true, arg_1.x, var_0.x), select(vec3<bool>(true, true, arg_0.a), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, var_0.x, arg_0.a))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.c, arg_0.c)), -850f));
    return func_2();
}

fn func_8(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> Struct_1 {
    global1 = func_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 121360u, u_input.c.x, u_input.a) | vec4<u32>(60561u, u_input.c.x, 4294967295u, 1u), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 62575u)) | 3466u, 2421u, 70193u), max(vec2<u32>(firstLeadingBit(6282u), 47870u), u_input.c.xz)).a;
    let var_0 = arg_0;
    var var_1 = vec3<u32>(~(~_wgslsmith_div_u32(u_input.c.x, 4294967295u)) ^ ~u_input.a, 4294967295u, firstLeadingBit(func_3(!vec4<bool>(true, arg_0.a, true, var_0.a), func_2(), vec3<f32>(535f, _wgslsmith_f_op_f32(f32(-1f) * -916f), 1454f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -561f) + 312f))));
    global0 = var_0.d;
    global1 = func_4(Struct_1(!arg_0.a, vec2<bool>(!any(vec4<bool>(false, true, true, true)), true), _wgslsmith_f_op_f32(min(293f, -1018f)), vec3<i32>(var_0.d.x, (arg_2 | u_input.b.x) ^ 1i, ~(~var_0.d.x))), ~firstTrailingBit(select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 4294967295u, var_1.x, 35631u), vec4<u32>(var_1.x, var_1.x, u_input.a, var_1.x)), vec4<u32>(u_input.c.x, u_input.a, 4294967295u, 1u), arg_0.b.x)), 4294967295u, global0.x).x;
    return Struct_1(4294967295u >= ~(~var_1.x), vec2<bool>(var_0.b.x, true), arg_0.c, vec3<i32>(~_wgslsmith_add_i32(_wgslsmith_add_i32(arg_2, -65610i), ~6558i), arg_1, countOneBits(_wgslsmith_clamp_i32(~(-1i), -3804i, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(func_7(func_6(Struct_1(true, select(vec2<bool>(false, false), vec2<bool>(false, true), false), 846f, vec3<i32>(-25522i, -2147483647i, global0.x)), func_1(1u, select(vec2<u32>(4294967295u, u_input.a), u_input.c.zy, vec2<bool>(false, false)))), vec2<bool>(true, true), u_input.c), firstTrailingBit(global0.x) & -1i, u_input.b.x);
    var_0 = func_6(Struct_1(all(!var_0.b), !func_1(0u, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.c.x), vec2<u32>(u_input.c.x, 8843u))).b, _wgslsmith_f_op_f32(sign(var_0.c)), abs(vec3<i32>(1i, _wgslsmith_mult_i32(global0.x, u_input.b.x), -38879i))), Struct_1(true, vec2<bool>(var_0.a, any(func_6(Struct_1(var_0.b.x, vec2<bool>(true, var_0.a), var_0.c, vec3<i32>(var_0.d.x, 26530i, 1i)), Struct_1(false, var_0.b, var_0.c, vec3<i32>(global0.x, 0i, 1i))).b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c)))), var_0.d));
    var var_1 = abs(func_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(4212u, 55307u, 47896u, 10477u) >> (vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u) % vec4<u32>(32u)), vec4<u32>(u_input.c.x, 19780u, 4294967295u, 81332u) << (vec4<u32>(1u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), u_input.c.yx).d.x);
    let var_2 = ~(4294967295u ^ u_input.a);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), var_0.c), var_0.c);
    let var_4 = Struct_1(true, var_0.b, var_0.c, ~(-func_1(u_input.a, u_input.c.zx).d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-581f, var_4.c, _wgslsmith_f_op_f32(-func_6(Struct_1(false, vec2<bool>(var_0.a, false), 1026f, vec3<i32>(-31047i, 1i, u_input.b.x)), Struct_1(true, var_4.b, var_3, var_0.d)).c)), -_wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b.x), vec2<i32>(global0.x, u_input.b.x)), -2147483647i));
}

