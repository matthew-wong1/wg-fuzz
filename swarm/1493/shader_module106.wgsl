struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(571f, 1033f, 1000f, -172f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_2(~firstLeadingBit(~_wgslsmith_add_u32(u_input.a.x, 0u)));
    let var_1 = vec3<u32>(min(0u, ~abs(~115027u)), var_0.a, 0u);
    var var_2 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 14327u), vec2<u32>(var_1.x, 40693u))), 4294967295u) << (var_1.x % 32u));
    let var_3 = Struct_2(1994u);
    let var_4 = Struct_2(((firstTrailingBit(19996u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, u_input.a.x, var_2.a, 25329u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 118453u)) % 32u)) << (firstTrailingBit(abs(0u)) % 32u)) << (var_2.a % 32u));
    return select(u_input.a.yx, vec2<u32>(_wgslsmith_mod_u32(countOneBits(abs(84232u)), var_3.a), _wgslsmith_add_u32(firstLeadingBit(var_4.a) ^ var_4.a, ~(~0u))), true);
}

fn func_2() -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -327f, -278f, global0.x) * vec4<f32>(1046f, -1430f, 532f, -1000f))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(global0.x - global0.x)), vec4<f32>(global0.x, _wgslsmith_f_op_f32(min(1335f, global0.x)), _wgslsmith_f_op_f32(global0.x + -131f), global0.x)))));
    var var_0 = (u_input.a.yy << (_wgslsmith_mod_vec2_u32(reverseBits(firstLeadingBit(u_input.a.xy)), u_input.a.xy) % vec2<u32>(32u))) & (u_input.a.xz >> (u_input.a.xx % vec2<u32>(32u)));
    var_0 = vec2<u32>(139786u, 0u);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1501f, -1423f, 2352f, -963f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, -1933f, 1591f, 1002f), vec4<f32>(global0.x, global0.x, global0.x, global0.x)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, -839f, -1933f), vec4<f32>(147f, global0.x, global0.x, global0.x))))))));
    var_0 = _wgslsmith_div_vec2_u32(func_3(), _wgslsmith_mod_vec2_u32(firstLeadingBit(~(u_input.a.zx & vec2<u32>(var_0.x, 1u))), ~vec2<u32>(700u, 4294967295u)));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(225f, 1436f, -663f, 1800f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-1088f, 1429f), global0.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -526f), 1492f, global0.x, _wgslsmith_f_op_f32(-global0.x)))), vec4<bool>(true, !all(vec4<bool>(false, false, true, true)), true, true)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: u32) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1203f * -970f), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(abs(global0.x)), global0.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 927f, -1000f, global0.x) - vec4<f32>(451f, -137f, -1000f, -1337f)), vec4<f32>(global0.x, global0.x, -104f, 1807f))) * _wgslsmith_f_op_vec4_f32(func_2())));
    let var_0 = vec3<bool>(true, !(!arg_0.x) & any(arg_0.ywy), any(select(!arg_0, select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), all(arg_0.yw)), arg_0)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(525f, -875f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(315f - 403f), 407f)))), _wgslsmith_div_f32(-1259f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1002f, global0.x))))), global0.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_2()), vec4<f32>(global0.x, 266f, -1380f, global0.x)))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-601f + 1120f), _wgslsmith_f_op_f32(1064f - -238f), _wgslsmith_f_op_f32(f32(-1f) * -138f)) - vec4<f32>(2154f, _wgslsmith_f_op_f32(min(global0.x, 832f)), _wgslsmith_f_op_f32(1165f + 511f), global0.x)) - vec4<f32>(global0.x, _wgslsmith_f_op_f32(abs(807f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + -1255f), _wgslsmith_f_op_f32(765f - _wgslsmith_f_op_f32(round(global0.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(571f, -1000f, 2213f, global0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(169f, 1899f, -344f, global0.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1208f, global0.x, global0.x, -1000f) * vec4<f32>(-2072f, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -123f, global0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-590f, 1970f, 680f, 392f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x))))));
    var var_1 = Struct_2(~_wgslsmith_div_u32(~(arg_1 >> (29628u % 32u)), 1u));
    return Struct_2(arg_2);
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    var var_0 = !(!any(arg_1.xz));
    let var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -659f)));
    var var_3 = Struct_1(arg_1.x, ~(-1i), u_input.a.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -806f))), !all(select(vec4<bool>(false, true, arg_1.x, true), select(vec4<bool>(true, var_1, arg_1.x, arg_3), vec4<bool>(false, var_1, arg_1.x, arg_3), var_1), arg_1.x)));
    var var_4 = -firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(var_3.b, i32(-1i) * -23564i), -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2575i, var_3.b), vec3<i32>(1i, var_3.b, 2147483647i))));
    return Struct_2(1u ^ max(_wgslsmith_add_u32(2518u, firstLeadingBit(0u)), _wgslsmith_mult_u32(arg_2.a, reverseBits(21312u))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = vec3<u32>(reverseBits(countOneBits(~firstLeadingBit(arg_0.a))), arg_1.c.x << (29761u % 32u), firstTrailingBit(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(arg_1.c.x, u_input.a.x)), firstLeadingBit(u_input.a.zx))));
    let var_1 = _wgslsmith_add_i32(select(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), countOneBits(vec2<i32>(arg_1.b, arg_1.b))), !any(vec4<bool>(arg_1.a, arg_1.e, true, arg_1.a))), firstTrailingBit(~arg_1.b) & ~(~(-16257i))) != ~_wgslsmith_dot_vec4_i32(vec4<i32>(~arg_1.b, _wgslsmith_mult_i32(93823i, arg_1.b), arg_1.b | 0i, arg_1.b & -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), -vec4<i32>(arg_1.b, 0i, arg_1.b, 5234i)));
    var var_2 = abs(_wgslsmith_mod_vec2_i32(-(~firstTrailingBit(vec2<i32>(-2147483647i, arg_1.b))), reverseBits(-vec2<i32>(arg_1.b, 2617i))));
    var_2 = abs(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(~min(vec2<i32>(var_2.x, arg_1.b), vec2<i32>(-32205i, -12810i)), -vec2<i32>(arg_1.b, var_2.x)), vec2<i32>(arg_1.b, -15709i), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.b, var_2.x), ~vec2<i32>(var_2.x, 25102i)) >> (_wgslsmith_div_vec2_u32(~arg_1.c, u_input.a.xx) % vec2<u32>(32u))));
    let var_3 = vec4<u32>(abs(_wgslsmith_add_u32(arg_1.c.x, _wgslsmith_mod_u32(0u, ~arg_0.a))), 69427u, ~u_input.a.x, 49963u);
    return var_3.x ^ arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u ^ u_input.a.x;
    var var_1 = Struct_2(func_5(func_4(-184f, vec4<bool>(true, true, true, true), func_1(vec4<bool>(false, true, false, true), ~u_input.a.x, ~var_0), false), Struct_1(all(vec4<bool>(true, true, true, true)), ~_wgslsmith_sub_i32(17312i, 60040i), _wgslsmith_mod_vec2_u32(abs(u_input.a.zx), ~vec2<u32>(var_0, var_0)), global0.zx, true)));
    let var_2 = vec2<u32>(1u, _wgslsmith_add_u32(var_1.a, 1u));
    var var_3 = !(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))));
    var_1 = func_1(select(select(vec4<bool>(any(vec3<bool>(var_3.x, true, var_3.x)), select(false, true, var_3.x), any(vec3<bool>(true, var_3.x, false)), !var_3.x), !select(vec4<bool>(var_3.x, true, var_3.x, var_3.x), vec4<bool>(var_3.x, true, false, true), vec4<bool>(var_3.x, false, false, false)), all(vec4<bool>(true, var_3.x, true, false))), vec4<bool>(true, var_3.x, var_3.x, !(var_1.a == 11185u)), !any(vec3<bool>(var_3.x, var_3.x, var_3.x))), func_4(1734f, !select(select(vec4<bool>(var_3.x, true, false, var_3.x), vec4<bool>(var_3.x, var_3.x, true, var_3.x), vec4<bool>(var_3.x, false, false, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(var_3.x, true, var_3.x, true), vec4<bool>(false, var_3.x, false, false)), var_3.x), func_4(556f, vec4<bool>(var_3.x, !var_3.x, global0.x != -1509f, true), Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(30883u, 0u), vec2<u32>(var_0, 4294967295u))), true), u_input.a.x >= (_wgslsmith_mult_u32(57896u, 13282u) & reverseBits(var_1.a))).a, max(1u, firstLeadingBit(19777u)));
    var var_4 = Struct_1(var_3.x, 1i, var_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(global0.x, global0.x))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(min(global0.x, -1000f))))), false);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~var_4.c.x) << ((_wgslsmith_div_u32(~46210u, ~u_input.a.x) << (56687u % 32u)) % 32u), vec4<f32>(_wgslsmith_f_op_f32(-var_4.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-268f - 639f)))), _wgslsmith_f_op_f32(var_4.d.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1491f, var_4.d.x)), _wgslsmith_f_op_f32(-var_4.d.x), any(vec2<bool>(true, false))))), global0.x), 10479u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d.x, 2565f, global0.x, global0.x)))), -2147483647i);
}

