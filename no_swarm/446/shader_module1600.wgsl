struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.c))))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(arg_1.b.wzz)), _wgslsmith_div_vec3_f32(vec3<f32>(338f, 357f, arg_1.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.e, -1000f, arg_2.b.e))))), vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.b.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1002f + arg_1.c)))), vec3<bool>(true, false, any(vec3<bool>(false, false, global0.x)) && all(vec4<bool>(true, global0.x, global0.x, arg_1.d))))), false, arg_2.b, _wgslsmith_mult_vec4_u32(vec4<u32>(~arg_2.a, arg_2.a, firstLeadingBit(arg_2.a), ~arg_2.a), u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.b.x, 1908f)) - 2548f));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.b * _wgslsmith_f_op_vec4_f32(vec4<f32>(-514f, arg_1.e, arg_2.b.b.x, 1298f) * _wgslsmith_f_op_vec4_f32(step(arg_2.b.b, vec4<f32>(arg_2.b.b.x, arg_1.e, -218f, var_1.a.x))))) * arg_1.b) - vec4<f32>(-1353f, 1f, _wgslsmith_f_op_f32(max(-291f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, -1038f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.e, arg_2.b.c, any(vec2<bool>(global0.x, var_1.b)))))));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e + _wgslsmith_f_op_f32(arg_1.c + arg_2.b.e)))), var_2.x));
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(-var_2.zxw), var_1.c.d, Struct_1(_wgslsmith_dot_vec3_i32(firstTrailingBit(~vec3<i32>(arg_1.a, -1i, 39348i)), abs(min(vec3<i32>(var_1.c.a, 1i, arg_1.a), vec3<i32>(0i, arg_1.a, -5863i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.b.b) + vec4<f32>(_wgslsmith_f_op_f32(1106f * -1198f), _wgslsmith_div_f32(arg_1.b.x, arg_2.b.e), -860f, _wgslsmith_div_f32(var_1.c.c, var_1.e))), 563f, false, 2106f), max(~u_input.a, select(u_input.a, vec4<u32>(arg_2.a, 1u, 1u, max(u_input.a.x, 1u)), true)), _wgslsmith_f_op_f32(-var_1.e));
    return true;
}

fn func_2() -> i32 {
    global0 = select(!vec4<bool>(true, global0.x, func_3(-1i, Struct_1(0i, vec4<f32>(779f, -326f, 363f, 910f), -396f, false, 653f), Struct_2(46931u, Struct_1(-85058i, vec4<f32>(-992f, 1600f, -398f, 854f), -1853f, true, 902f))), global0.x), !vec4<bool>(!(!global0.x), true | all(global0.wx), global0.x, true), true);
    let var_0 = _wgslsmith_sub_vec3_u32(select(~vec3<u32>(28995u, u_input.a.x, u_input.a.x) & u_input.a.xyx, u_input.a.wwx, true) << (~vec3<u32>(1u, ~u_input.a.x, u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(reverseBits(u_input.a.x), u_input.a.x, countOneBits(~49389u)));
    global0 = vec4<bool>((select(_wgslsmith_dot_vec3_i32(vec3<i32>(-16501i, -2147483647i, 0i), vec3<i32>(45142i, 2650i, -44783i)), 1i, true) ^ reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-25159i, -2147483647i, -50625i, -1i), vec4<i32>(-2147483647i, 29981i, 13269i, 0i)))) <= _wgslsmith_mult_i32(-abs(0i), -7251i), false, any(!global0.yx), any(global0.yw));
    global0 = !(!(!vec4<bool>(false, !global0.x, global0.x, any(vec3<bool>(false, true, true)))));
    var var_1 = Struct_2(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1377u, 67896u, 35353u, u_input.a.x)), vec4<u32>(38707u, 0u, u_input.a.x, u_input.a.x)), 22917u), Struct_1(2147483647i, vec4<f32>(_wgslsmith_f_op_f32(-319f - -808f), 1732f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-199f * -311f), -884f), -1675f), -1106f, false, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1335f - -793f), 1765f)))));
    return 2147483647i;
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_1 {
    global0 = vec4<bool>(false, all(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1105f) <= arg_3.x, global0.x)), global0.x, select(global0.x, !(arg_0 == (-2147483647i | arg_0)), all(select(!arg_2.yx, !arg_2.wy, false))));
    var var_0 = !select(select(vec3<bool>(false, arg_2.x, select(true, arg_2.x, true)), select(global0.zwx, select(vec3<bool>(false, arg_2.x, false), vec3<bool>(global0.x, arg_2.x, arg_2.x), false), arg_2.x), true), vec3<bool>(true, global0.x, true), select(arg_2.x, true, true));
    var var_1 = u_input.a.x;
    let var_2 = Struct_2(_wgslsmith_clamp_u32(select(_wgslsmith_add_u32(4294967295u, u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x >= 22069u) ^ u_input.a.x, 1u, ~55735u), Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(floor(arg_1)), 1f, !((9217i >> (u_input.a.x % 32u)) != (arg_0 | arg_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1301f)), -707f)), _wgslsmith_f_op_f32(971f + _wgslsmith_f_op_f32(f32(-1f) * -763f))))));
    var_0 = global0.yxz;
    return var_2.b;
}

fn func_1() -> Struct_1 {
    let var_0 = 83068u;
    var var_1 = vec2<u32>(var_0, 1u);
    let var_2 = func_4(func_2(), _wgslsmith_f_op_vec4_f32(vec4<f32>(-192f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -639f), -339f)), 412f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -503f) + _wgslsmith_f_op_f32(-1477f * 801f))) * vec4<f32>(-645f, 772f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1260f)), _wgslsmith_div_f32(825f, _wgslsmith_f_op_f32(sign(-449f))))), vec4<bool>(true, !(!global0.x), true, !global0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1431f, -1585f) + vec3<f32>(263f, -1042f, 1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2331f, 1083f, -535f), vec3<f32>(681f, 939f, -515f), global0.x)))));
    let var_3 = func_4(func_2(), vec4<f32>(var_2.c, _wgslsmith_f_op_f32(-func_4(-var_2.a, vec4<f32>(var_2.e, var_2.c, 145f, -238f), !vec4<bool>(true, false, global0.x, global0.x), vec3<f32>(var_2.c, var_2.e, var_2.e)).b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)), _wgslsmith_f_op_f32(795f * var_2.b.x)), !vec4<bool>(_wgslsmith_f_op_f32(sign(593f)) > func_4(-1i, vec4<f32>(-569f, 2020f, var_2.c, var_2.c), vec4<bool>(true, var_2.d, true, var_2.d), var_2.b.wzy).b.x, global0.x, var_2.a < var_2.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, var_2.a, var_2.a), vec3<i32>(59411i, 1i, var_2.a)) <= -1i), vec3<f32>(func_4(func_4(~2147483647i, _wgslsmith_f_op_vec4_f32(-var_2.b), !vec4<bool>(true, global0.x, global0.x, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1203f, 562f, 1000f))).a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, var_2.b.x, 239f, 449f), vec4<f32>(-1000f, -693f, var_2.b.x, var_2.b.x))), vec4<f32>(699f, -1072f, var_2.b.x, -398f), global0.x)), !vec4<bool>(var_2.d, false, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.c, var_2.e, var_2.e), var_2.b.xyy), var_2.b.xww))).e, var_2.c, _wgslsmith_div_f32(var_2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1131f)))));
    var_1 = u_input.a.ww;
    return Struct_1(_wgslsmith_dot_vec4_i32(min(~abs(vec4<i32>(62082i, var_3.a, var_3.a, var_3.a)), vec4<i32>(var_3.a, _wgslsmith_mod_i32(-2147483647i, -21983i), var_3.a, var_2.a)), ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(9810i, var_3.a, var_2.a, 16855i), vec4<i32>(0i, 1i, -2147483647i, var_2.a)))), var_3.b, _wgslsmith_f_op_f32(-var_3.c), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_4(var_3.a, var_2.b, vec4<bool>(true, var_3.d, global0.x, var_2.d), var_3.b.yxz).c, _wgslsmith_f_op_f32(-var_2.c)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.c - -1000f), _wgslsmith_f_op_f32(-var_2.e))) + var_3.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(576f, 811f)), _wgslsmith_f_op_f32(trunc(-1000f)), global0.x))))), -349f, true));
    let var_3 = func_1();
    var var_4 = true;
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(select(~u_input.a, u_input.a, true), -1i);
}

