struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 0i);

var<private> global1: vec3<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 703f, 521f, -588f), vec4<f32>(-621f, -773f, 973f, -861f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(187f, -1327f, -935f, 732f))))) + vec4<f32>(-387f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -989f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-902f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1017f, _wgslsmith_f_op_f32(-424f + -1365f)) * _wgslsmith_f_op_f32(f32(-1f) * -683f))));
    global1 = !(!(!arg_0));
    let var_1 = select(~max(_wgslsmith_div_vec3_i32(vec3<i32>(-24995i, u_input.c, 51199i), vec3<i32>(0i, global0.x, u_input.c)), ~vec3<i32>(global0.x, global0.x, -19831i)) >> (vec3<u32>(reverseBits(u_input.a.x), abs(u_input.a.x), ~firstTrailingBit(u_input.a.x)) % vec3<u32>(32u)), vec3<i32>(global0.x, 2147483647i, _wgslsmith_add_i32(~(~(-2147483647i)), u_input.c)), var_0.x < _wgslsmith_f_op_f32(-var_0.x));
    var var_2 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a, select(~u_input.a, ~u_input.a, vec2<bool>(true, true))), 56442u);
    global1 = arg_0;
    return var_0.x;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = arg_2.c.x;
    global0 = arg_1.wz;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), -294f, -263f, _wgslsmith_f_op_f32(-825f + 255f));
    var var_2 = !select(global1.xy, !global1.zx, vec2<bool>(true, all(vec3<bool>(global1.x, false, true))));
    global0 = -_wgslsmith_add_vec2_i32(abs(vec2<i32>(arg_1.x, 40532i)), (vec2<i32>(-1i) * -arg_1.xx) | vec2<i32>(~arg_1.x, -2147483647i));
    return var_1;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: f32) -> Struct_2 {
    let var_0 = global0.x;
    let var_1 = Struct_1(~20937i);
    var var_2 = _wgslsmith_f_op_vec4_f32(func_4(Struct_3(vec3<f32>(565f, _wgslsmith_f_op_f32(ceil(-441f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(global1.x, arg_0, false))) * _wgslsmith_div_f32(arg_2, arg_2))), _wgslsmith_f_op_f32(998f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), arg_1))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 33853u, u_input.a.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(37519u, 24280u, 53408u), vec3<u32>(u_input.b, 4294967295u, 15598u), vec3<u32>(u_input.b, u_input.a.x, 1u))) & ~vec3<u32>(4294967295u, u_input.a.x, 4294967295u)), select(vec4<i32>(1i, -13115i, -1i, global0.x), vec4<i32>(u_input.c, var_1.a | u_input.c, _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, global0.x), select(vec2<i32>(var_1.a, global0.x), vec2<i32>(-15410i, -36670i), global1.zx)), _wgslsmith_clamp_i32(var_1.a, ~(-26627i), select(u_input.c, global0.x, true))), !(!vec4<bool>(arg_0, false, true, global1.x))), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_1)) - vec3<f32>(869f, -695f, 308f)), -451f, vec3<u32>(~(u_input.b | u_input.a.x), 1u, 20437u))));
    var var_3 = 0u;
    let var_4 = _wgslsmith_mult_vec3_u32(reverseBits(select(abs(~vec3<u32>(0u, 30876u, u_input.b)), ~vec3<u32>(1u, 15998u, 22333u) | reverseBits(vec3<u32>(41604u, 20434u, u_input.b)), arg_0)), ~abs(vec3<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.b), u_input.a.x, 52276u)));
    return Struct_2(~_wgslsmith_sub_vec2_u32(~var_4.xz, max(abs(u_input.a), vec2<u32>(var_4.x, var_4.x))), var_1, firstLeadingBit(var_4.xx) | ~(~u_input.a), Struct_1(-44551i));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<f32>) -> Struct_1 {
    global0 = _wgslsmith_mult_vec2_i32(select(_wgslsmith_mod_vec2_i32(-vec2<i32>(arg_0.d.a, arg_0.d.a), vec2<i32>(arg_0.d.a, 1i)) & -countOneBits(vec2<i32>(4220i, 1i)), vec2<i32>(-1i, max(76750i, arg_0.d.a) << (~arg_1.x % 32u)), global1.x), _wgslsmith_sub_vec2_i32(firstTrailingBit(firstTrailingBit(vec2<i32>(u_input.c, arg_0.b.a))), vec2<i32>(2147483647i, 0i)));
    let var_0 = global1.x;
    let var_1 = -2393f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(vec3<f32>(-1219f, arg_2.x, 799f), -270f, vec3<u32>(4294967295u, arg_1.x, arg_1.x)), vec4<i32>(global0.x, 1444i, u_input.c, u_input.c) ^ vec4<i32>(u_input.c, -33169i, 21386i, -2147483647i), Struct_3(vec3<f32>(arg_2.x, arg_2.x, arg_2.x), arg_2.x, vec3<u32>(u_input.b, 1u, u_input.b)))).x))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1009f)), 1f, 262f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, -190f, 372f) + vec3<f32>(-1000f, arg_2.x, -1720f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 675f, -959f) + vec3<f32>(arg_2.x, arg_2.x, -267f)), global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), vec3<u32>(u_input.b, ~arg_1.x, ~arg_1.x));
    global1 = vec3<bool>(true && global1.x, any(vec3<bool>(global1.x && global1.x, true, false)), false);
    return arg_0.b;
}

fn func_1(arg_0: u32, arg_1: bool) -> u32 {
    var var_0 = Struct_1(_wgslsmith_clamp_i32(~_wgslsmith_sub_i32(global0.x, -32370i), -2147483647i, global0.x) & u_input.c);
    let var_1 = Struct_2(select(_wgslsmith_add_vec2_u32(reverseBits(firstLeadingBit(vec2<u32>(u_input.a.x, arg_0))), vec2<u32>(_wgslsmith_add_u32(u_input.a.x, 23979u), _wgslsmith_mod_u32(arg_0, arg_0))), vec2<u32>(arg_0, ~arg_0), global1.zz), func_5(func_2(true, 1348f, 2637f), ~(~max(vec4<u32>(arg_0, u_input.b, 4236u, u_input.b), vec4<u32>(27844u, arg_0, 47567u, 4540u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-117f, -1296f), vec2<f32>(-1330f, -787f)))))), vec2<u32>(~arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b, 11732u), ~(~u_input.a))), func_5(func_2(true, _wgslsmith_f_op_f32(-739f * -418f), -1146f), vec4<u32>(~(u_input.b >> (arg_0 % 32u)), 115899u, ~1u, countOneBits(u_input.a.x) | _wgslsmith_sub_u32(63601u, arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2008f, -1683f) - vec2<f32>(-137f, -1000f))))));
    var var_2 = (abs(~32881u) | _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a.x, arg_0, 26012u)), vec3<u32>(u_input.a.x, var_1.c.x, 4452u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_1.c.x, var_1.a.x, arg_0), vec4<u32>(1u, u_input.a.x, u_input.a.x, var_1.a.x)) ^ 1u, _wgslsmith_mult_u32(68826u, 1u))) | ~abs(_wgslsmith_mod_u32(~var_1.a.x, ~105846u));
    global0 = abs(min(abs(vec2<i32>(-1398i, ~34122i)), vec2<i32>(global0.x, -13691i)));
    var_0 = Struct_1(func_5(Struct_2(~select(var_1.a, vec2<u32>(4294967295u, 43693u), true), func_5(var_1, vec4<u32>(6061u, 8178u, u_input.b, 76796u) >> (vec4<u32>(27454u, 12282u, u_input.b, u_input.b) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(551f, -187f))), reverseBits(vec2<u32>(var_1.c.x, 37465u)) ^ vec2<u32>(0u, 14832u), func_2(true, _wgslsmith_f_op_f32(-1000f + 1230f), _wgslsmith_f_op_f32(min(313f, -345f))).b), vec4<u32>(~var_1.a.x, arg_0, 1u, _wgslsmith_sub_u32(var_1.a.x, var_1.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(108f, -626f)) * vec2<f32>(793f, -749f)))).a);
    return 35769u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(select(vec3<bool>(global0.x <= -21452i, true, global1.x), vec3<bool>(any(global1.xy), true, u_input.b <= u_input.b), !(!vec3<bool>(true, global1.x, global1.x))), !vec3<bool>(global1.x && global1.x, !global1.x, !global1.x), vec3<bool>(global1.x, true, !global1.x));
    var var_0 = global1.x;
    var_0 = func_1(u_input.a.x, global1.x) <= ~func_2(global1.x, -1236f, 320f).c.x;
    var_0 = global1.x;
    var var_1 = max(17768u, min(~1u, 54305u));
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(func_5(Struct_2(~u_input.a, func_2(global1.x, -1157f, -1513f).b, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 0u), u_input.a, vec2<u32>(29769u, u_input.b)), func_2(global1.x, -1261f, 1119f).b), ~(~vec4<u32>(0u, u_input.b, u_input.b, 55170u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-262f, 534f) + vec2<f32>(-1161f, -1000f)))).a, global0.x), global0.x, _wgslsmith_div_i32(~(~(u_input.c ^ 15292i)), _wgslsmith_sub_i32(-(u_input.c << (u_input.a.x % 32u)), _wgslsmith_div_i32(-global0.x, global0.x))));
    let var_3 = func_2(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -473f))), -1359f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1130f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(vec3<f32>(1050f, -1287f, 325f), -736f, vec3<u32>(99643u, u_input.a.x, u_input.b)), max(vec4<i32>(1i, global0.x, -49857i, u_input.c), vec4<i32>(var_2.x, u_input.c, var_2.x, -56953i)), Struct_3(vec3<f32>(364f, 898f, 1221f), -860f, vec3<u32>(var_3.a.x, u_input.b, var_3.a.x)))).x, _wgslsmith_f_op_f32(func_3(vec3<bool>(global1.x, global1.x, global1.x)))))), vec2<u32>(u_input.a.x, min(u_input.b, firstTrailingBit(u_input.a.x)) >> (var_3.a.x % 32u)));
}

