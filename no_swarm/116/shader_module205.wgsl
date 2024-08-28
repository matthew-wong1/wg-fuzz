struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> vec2<f32> {
    let var_0 = global0.b;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(227f, arg_1.a, arg_0, arg_1.a), arg_1.b)))))), arg_2.b, reverseBits(-_wgslsmith_sub_i32(~global0.a, arg_3)), ~(~(~(arg_2.b.yz & vec2<u32>(arg_2.e.x, 0u)))), vec2<u32>(abs(1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 9456u), vec2<u32>(0u, ~0u))));
    let var_2 = Struct_1(arg_2.a, vec4<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.e.x, u_input.b, u_input.b, arg_2.b.x), var_1.b)), reverseBits(12692u), reverseBits(u_input.b), min(0u, _wgslsmith_dot_vec2_u32(var_1.e, _wgslsmith_div_vec2_u32(vec2<u32>(var_1.e.x, 58563u), var_1.b.xw)))), _wgslsmith_mult_i32(-arg_2.c, min(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_2.c, u_input.a.x, 1i, arg_3), vec4<i32>(-2147483647i, 0i, -43175i, -2147483647i) << (var_1.b % vec4<u32>(32u))), ~var_1.c)), var_1.e, vec2<u32>(~14237u, u_input.b));
    var var_3 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, arg_3), u_input.a)), u_input.a) >> (vec2<u32>(select(4294967295u, abs(var_1.b.x), global0.c), var_2.b.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(abs(u_input.a << (max(var_1.b.zy, var_1.d) % vec2<u32>(32u))), vec2<i32>(-2147483647i, min(-67350i, u_input.c)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(var_1.c, -12246i), u_input.a)), u_input.a);
    var var_4 = ~(_wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.b, 4294967295u >> (u_input.b % 32u)), abs(reverseBits(vec2<u32>(5961u, 0u)))) ^ min(var_1.d, vec2<u32>(reverseBits(61u), _wgslsmith_mod_u32(u_input.b, 30441u))));
    return vec2<f32>(1288f, arg_1.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>, arg_3: u32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(arg_0.a.wy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(arg_0.a.x, Struct_3(arg_0.a.x, arg_0.a), Struct_1(vec4<f32>(-414f, 2178f, arg_0.a.x, arg_0.a.x), arg_0.b, arg_0.c, arg_0.b.yy, arg_0.e), u_input.a.x)) - _wgslsmith_f_op_vec2_f32(-arg_0.a.xy)), vec2<bool>(all(vec3<bool>(global0.b, false, global0.b)), true))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: bool) -> vec2<bool> {
    var var_0 = ~(~vec3<u32>(~select(4294967295u, 20978u, false), 4294967295u | ~u_input.b, 1u));
    var_0 = ~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(max(u_input.b, 34683u), var_0.x), _wgslsmith_sub_u32(u_input.b, ~var_0.x)), select(~abs(4294967295u), abs(u_input.b), !all(vec3<bool>(global0.b, arg_2, global0.c))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 1u, u_input.b), vec4<u32>(u_input.b, var_0.x, var_0.x, var_0.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, var_0.x, 65863u), vec4<u32>(var_0.x, u_input.b, 1u, 12452u)) % vec4<u32>(32u)), vec4<u32>(40708u, u_input.b, abs(4294967295u), 1u)));
    return !(!vec2<bool>(var_0.x >= 4294967295u, any(select(vec3<bool>(false, false, arg_2), vec3<bool>(false, false, false), vec3<bool>(false, global0.c, true)))));
}

fn func_5(arg_0: bool) -> vec4<bool> {
    global0 = Struct_2(global0.a, false, !(firstTrailingBit(u_input.a.x) <= firstLeadingBit(select(0i, u_input.a.x, false))));
    global0 = Struct_2(-abs(max(~global0.a, u_input.a.x & global0.a)), true || arg_0, arg_0);
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(1915f, Struct_3(-266f, _wgslsmith_div_vec4_f32(vec4<f32>(-1557f, -1039f, -439f, -184f), vec4<f32>(-1311f, 225f, 311f, -267f))), Struct_1(vec4<f32>(278f, -1585f, 767f, -1000f), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, 77091u, 34424u), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)), global0.a, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 2103u)), ~vec2<u32>(4456u, u_input.b)), -select(global0.a, global0.a, true))).x * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-433f - _wgslsmith_f_op_f32(408f + 170f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec4<f32>(-1136f, -725f, 958f, 1543f), vec4<u32>(38551u, u_input.b, 0u, 1u), -10653i, vec2<u32>(u_input.b, 88589u), vec2<u32>(55460u, 0u)), ~u_input.b, -vec4<i32>(global0.a, u_input.a.x, 2147483647i, global0.a), ~6722u)).x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -766f)))))));
    global0 = Struct_2(-48779i, 60400u == ~u_input.b, select(!(1u >= u_input.b), any(!(!vec4<bool>(false, false, global0.b, false))), true));
    var var_1 = var_0;
    return vec4<bool>(false, all(vec2<bool>(true, false)), !global0.b, u_input.b > 0u);
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = select(u_input.a.x, -45215i, false);
    let var_1 = !func_5(any(func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a, -2147483647i, -2147483647i, u_input.a.x), vec4<i32>(var_0, var_0, u_input.c, -5718i)), _wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec4<f32>(756f, -1067f, -1000f, 700f), vec4<u32>(23771u, 8600u, 4294967295u, u_input.b), global0.a, vec2<u32>(u_input.b, 25602u), vec2<u32>(75773u, u_input.b)), arg_0, vec4<i32>(global0.a, var_0, -1i, 0i), 1u)), true)));
    global0 = Struct_2(var_0, true, all(vec4<bool>(true, all(func_5(false).zzy), true, any(func_5(var_1.x).yzx))));
    let var_2 = firstTrailingBit(abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(var_0, var_0, 2147483647i, u_input.a.x), vec4<i32>(global0.a, global0.a, var_0, var_0), var_1.x), ~vec4<i32>(var_0, 37634i, -5468i, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, global0.a, -1i, -21645i), vec4<i32>(u_input.a.x, 1i, -19718i, global0.a)), select(vec4<i32>(56142i, 16557i, u_input.c, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-400i, u_input.c, var_0, 1i), vec4<i32>(global0.a, 0i, 4784i, global0.a), vec4<i32>(-26039i, var_0, var_0, 13055i)), func_4(vec4<i32>(global0.a, 42953i, u_input.a.x, -1i), vec2<f32>(617f, -1559f), var_1.x).x))));
    let var_3 = any(select(vec3<bool>(0i != abs(global0.a), !var_1.x, (0i > var_0) | any(vec2<bool>(global0.b, false))), !select(vec3<bool>(true, false, var_1.x), func_5(var_1.x).xzy, any(var_1.zy)), true));
    return any(!select(select(var_1.yx, var_1.yx, !var_1.xx), !vec2<bool>(var_3, global0.b), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(reverseBits(-_wgslsmith_mod_i32(i32(-1i) * -45575i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.c), vec3<i32>(2147483647i, u_input.c, 0i)))), func_1(~91089u), true);
    let var_0 = _wgslsmith_div_f32(2554f, _wgslsmith_f_op_f32(-442f + -657f));
    var var_1 = var_0;
    let var_2 = Struct_3(-932f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(580f, -1000f, var_0, -995f) + vec4<f32>(var_0, -145f, 1122f, 1000f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1062f, var_0, 803f, var_0))), !func_5(global0.c))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, -1312f, var_0, var_0), vec4<f32>(-1170f, var_0, -696f, -317f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, -1238f)))))));
    var var_3 = Struct_2(u_input.c, !(false && global0.b), global0.c);
    let var_4 = Struct_3(_wgslsmith_f_op_f32(max(var_2.b.x, -310f)), vec4<f32>(182f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-356f))))), 585f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-364f - var_0)) * 286f)));
    var var_5 = var_4;
    var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(1028f, u_input.a.x);
}

