struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<u32> = vec2<u32>(3742u, 1u);

var<private> global2: bool = false;

var<private> global3: bool = true;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    global3 = all(vec4<bool>(true, true, true, true)) | !all(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)));
    var var_0 = false;
    var var_1 = select(false, false, all(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, false)), true, true), vec3<bool>(true, true, true))));
    let var_2 = vec4<i32>(countOneBits(firstLeadingBit(_wgslsmith_mod_i32(u_input.a.x, countOneBits(u_input.a.x)))), _wgslsmith_div_i32(u_input.b.x, -34290i >> (reverseBits(~global1.x) % 32u)), min(u_input.a.x, ~63183i), _wgslsmith_sub_i32(u_input.b.x, ~33632i));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(3159f * 480f))) * 343f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-362f))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, 1404f))))));
    return ~select(-1i, _wgslsmith_div_i32(var_2.x, var_2.x), true);
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_i32(max(vec2<i32>(i32(-1i) * -2147483647i, func_3()), u_input.b.wx), ~u_input.b.wy), vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(560f, -174f) * vec2<f32>(1333f, 111f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(198f, -1885f) * vec2<f32>(736f, 277f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-306f - -2238f) - -815f), _wgslsmith_f_op_f32(-669f - -2152f)))), _wgslsmith_clamp_i32(-u_input.a.x, u_input.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(-7583i, 89618i, u_input.a.x, u_input.b.x), ~u_input.b)));
    let var_1 = _wgslsmith_f_op_f32(var_0.c.x * 789f);
    let var_2 = Struct_1(_wgslsmith_mod_vec2_i32(max(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), var_0.a), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b.wyz, u_input.a), _wgslsmith_div_i32(u_input.a.x, 32254i))), u_input.b.xw), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x - -602f), _wgslsmith_f_op_f32(-var_0.b.x)) - var_0.b) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b.x, -2126f))))), vec2<f32>(var_1, _wgslsmith_f_op_f32(min(-1443f, var_0.c.x))), max(~(1i ^ (29319i ^ u_input.b.x)), min(_wgslsmith_sub_i32(countOneBits(0i), 2147483647i << (global1.x % 32u)), abs(-13893i))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b))));
    global1 = ~vec2<u32>(global1.x, 1u);
    return var_2.c;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    global1 = vec2<u32>(_wgslsmith_sub_u32(4294967295u, ~global1.x), global1.x);
    let var_0 = Struct_1(arg_2.a, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1000f, arg_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -843f)), _wgslsmith_f_op_vec2_f32(arg_2.b + arg_2.c)), _wgslsmith_f_op_vec2_f32(func_2()), -1i);
    var var_1 = Struct_2(1000f, -200f, _wgslsmith_clamp_u32(43382u, ~countOneBits(~global1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, ~global1.x, max(4294967295u, 29844u), max(67406u, global1.x)), vec4<u32>(global1.x, abs(global1.x), ~global1.x, global1.x))), _wgslsmith_add_i32(-1i, ~12928i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(789f - 219f), _wgslsmith_f_op_f32(-var_0.b.x))))));
    let var_2 = true;
    var var_3 = true;
    return Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x) + _wgslsmith_f_op_f32(trunc(-978f))), _wgslsmith_f_op_f32(f32(-1f) * -1188f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_2()).x)))), _wgslsmith_div_u32(42434u, _wgslsmith_div_u32(global1.x, global1.x)), ~_wgslsmith_sub_i32(43366i, abs(reverseBits(23601i))), var_0.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    let var_0 = arg_1;
    global1 = ~(~(~vec2<u32>(global1.x, _wgslsmith_clamp_u32(arg_2.c, arg_0.c, arg_2.c))));
    let var_1 = !(!all(vec2<bool>(any(vec3<bool>(true, true, arg_1)), arg_2.b == 2280f)));
    let var_2 = u_input.b.yzx;
    global2 = true;
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    global1 = vec2<u32>(global1.x, abs(41542u));
    var var_0 = arg_0.d;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_4(arg_0, true, arg_0, arg_0.d).e))) < _wgslsmith_f_op_f32(arg_0.a - 138f);
    let var_1 = vec4<u32>(~arg_0.c, arg_0.c, ~734u, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -397f))), min(1i, min(2147483647i, arg_0.d)), Struct_1(u_input.b.zz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.e)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e, arg_0.a) * vec2<f32>(arg_0.e, arg_0.a)), u_input.b.x)).c << (~abs(global1.x) % 32u));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-func_4(Struct_2(arg_0.a, -124f, arg_0.c, -1i, arg_0.a), arg_1.x, func_4(func_1(vec2<f32>(arg_0.b, arg_0.e), -46572i, Struct_1(u_input.b.wx, vec2<f32>(arg_0.b, 284f), vec2<f32>(arg_0.a, -1451f), u_input.b.x)), var_1.x < arg_0.c, arg_0, -arg_0.d), 34508i).b), _wgslsmith_f_op_f32(1308f * arg_0.e), firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_add_u32(var_1.x, arg_0.c), 0u) & firstTrailingBit(_wgslsmith_dot_vec4_u32(var_1, vec4<u32>(0u, 1u, global1.x, arg_0.c)))), arg_0.d, _wgslsmith_f_op_vec2_f32(func_2()).x);
    return var_2;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_2) -> bool {
    var var_0 = arg_1;
    return !all(select(vec4<bool>(true, true, any(vec4<bool>(true, arg_0.x, false, false)), arg_0.x), select(arg_0, vec4<bool>(true, arg_0.x, false, false), arg_0), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, false, true)), any(vec2<bool>(true, true)), u_input.b.x < u_input.a.x), vec3<bool>(true, false, true))), func_6(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), func_5(func_4(Struct_2(-634f, -788f, 1u, -1i, -904f), false, func_1(vec2<f32>(504f, -107f), 0i, Struct_1(vec2<i32>(28466i, u_input.b.x), vec2<f32>(1000f, -357f), vec2<f32>(283f, 1380f), u_input.a.x)), u_input.a.x), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), true, false);
    var var_1 = global1.x;
    let var_2 = firstTrailingBit(u_input.b.x);
    var var_3 = func_4(func_4(func_4(Struct_2(func_4(Struct_2(2743f, 499f, global1.x, u_input.a.x, -205f), var_0.x, Struct_2(899f, -302f, 4294967295u, 13644i, -105f), 4630i).a, 724f, ~global1.x, func_3(), _wgslsmith_div_f32(-550f, -1586f)), any(select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(true, var_0.x, false, var_0.x), true)), func_4(func_1(vec2<f32>(850f, -1809f), u_input.a.x, Struct_1(vec2<i32>(u_input.a.x, var_2), vec2<f32>(-1424f, -2283f), vec2<f32>(-576f, -1574f), u_input.b.x)), true, func_1(vec2<f32>(770f, 637f), -1i, Struct_1(vec2<i32>(var_2, -2147483647i), vec2<f32>(1000f, -723f), vec2<f32>(419f, -106f), var_2)), firstTrailingBit(var_2)), 2147483647i), true, func_1(vec2<f32>(216f, -2038f), var_2, Struct_1(~u_input.b.zz, _wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1674f, 1098f))), var_2)), _wgslsmith_add_i32(min(func_5(Struct_2(951f, -455f, 16741u, u_input.a.x, -455f), vec2<bool>(var_0.x, false)).d, -18769i), abs(1i) >> (~4294967295u % 32u))), all(vec4<bool>(var_0.x, true, -u_input.a.x >= ~2147483647i, true)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3170f - 1208f) * _wgslsmith_f_op_f32(1852f + -123f))), 1000f, ~204u, var_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(748f + -1382f)), _wgslsmith_f_op_f32(f32(-1f) * -966f)))), -max(u_input.a.x, ~(~u_input.a.x)));
    var var_4 = Struct_2(func_4(Struct_2(_wgslsmith_f_op_f32(ceil(func_1(vec2<f32>(var_3.a, var_3.e), 22652i, Struct_1(vec2<i32>(0i, var_2), vec2<f32>(var_3.e, var_3.e), vec2<f32>(708f, var_3.a), var_3.d)).b)), -1417f, ~(60779u << (var_3.c % 32u)), select(-42230i, var_2, var_0.x) | ~45614i, var_3.a), var_0.x, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(690f + 520f), _wgslsmith_f_op_f32(-var_3.e)), _wgslsmith_f_op_f32(func_1(vec2<f32>(var_3.e, -539f), 10320i, Struct_1(u_input.b.zx, vec2<f32>(var_3.a, 1000f), vec2<f32>(-416f, 431f), -18195i)).a * _wgslsmith_f_op_f32(exp2(var_3.b))), 0u, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2, -1i), -u_input.b.xy), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.e - var_3.a), _wgslsmith_f_op_f32(select(-804f, -175f, var_0.x))))), -reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.d, var_3.d, var_3.d), u_input.b.zww))).b, _wgslsmith_div_f32(var_3.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), var_3.a)), 1u & var_3.c, var_3.d, _wgslsmith_f_op_f32(-var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b, var_3.e, var_3.b), vec3<f32>(1299f, var_4.b, var_4.a), var_0.xzw)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 206f, 877f), vec3<f32>(var_3.e, 1282f, var_3.e)))))), func_4(func_5(func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.b, var_4.e), vec2<f32>(var_4.b, 543f), var_0.ww)), abs(0i), Struct_1(vec2<i32>(0i, var_4.d), vec2<f32>(-1000f, 869f), vec2<f32>(-1283f, var_3.a), var_4.d)), select(var_0.wz, vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x))), true & any(select(var_0.xyx, var_0.xwz, false)), func_5(func_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_4.a, var_4.b), vec2<f32>(-1211f, 889f))), _wgslsmith_sub_i32(-28889i, 1594i), Struct_1(u_input.a.xy, vec2<f32>(var_4.b, var_3.a), vec2<f32>(195f, var_4.a), var_2)), !var_0.yy), min(var_3.d, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_3.d, 1i), -1i, ~(-1i)))).a, _wgslsmith_f_op_f32(var_3.e + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-233f, -387f)), _wgslsmith_f_op_f32(f32(-1f) * -621f))));
}

