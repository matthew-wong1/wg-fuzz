struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = vec2<bool>(true, true);
    let var_1 = arg_0.b;
    var_0 = !vec2<bool>(all(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, true, true, var_0.x), false), vec4<bool>(false, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, false, var_0.x))), true);
    let var_2 = arg_0;
    global0 = array<Struct_2, 19>();
    return !select(select(!select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), true), !select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, false), var_0.x), true), select(vec3<bool>(any(vec3<bool>(false, false, true)), any(vec3<bool>(true, var_0.x, false)), any(vec3<bool>(false, false, true))), vec3<bool>(any(vec2<bool>(false, var_0.x)), false, true), vec3<bool>(var_2.c.a.x == -606f, true, all(vec4<bool>(true, var_0.x, false, false)))), select(vec3<bool>(var_0.x, any(vec3<bool>(true, false, var_0.x)), false), !(!vec3<bool>(var_0.x, true, var_0.x)), false));
}

fn func_2(arg_0: u32) -> vec3<f32> {
    global0 = array<Struct_2, 19>();
    var var_0 = select(select(vec3<bool>(true && (u_input.b > 0u), true, !(u_input.c.x != 3917u)), select(select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), all(vec4<bool>(false, true, false, true))), vec3<bool>(false, all(vec4<bool>(false, true, true, true)), select(true, true, true))), select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), func_3(Struct_3(u_input.b, Struct_2(vec4<f32>(-1978f, 2093f, 165f, 117f), 1i), Struct_2(vec4<f32>(-378f, 1188f, 466f, -718f), 7785i))))), vec3<bool>(true, true, true), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-174f, 1101f, 621f) * vec3<f32>(-1759f, -513f, -1419f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -613f, 1335f))), _wgslsmith_div_vec3_f32(vec3<f32>(192f, 534f, 565f), vec3<f32>(347f, -338f, 336f)), !vec3<bool>(true, false, var_0.x))))) - vec3<f32>(1402f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2700f * -1764f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-119f)))))));
    var var_2 = _wgslsmith_div_u32(~(~0u), arg_0);
    var var_3 = vec3<f32>(570f, 1138f, var_1.x);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.x, var_3.x, var_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 723f, var_3.x)))))));
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = true;
    global0 = array<Struct_2, 19>();
    var var_1 = -u_input.d;
    let var_2 = -742f;
    var var_3 = _wgslsmith_mult_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, u_input.d, 1i, u_input.d), vec4<i32>(-2147483647i, 1i, u_input.d, u_input.d)), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d) | vec4<i32>(u_input.d, 2147483647i, 48121i, u_input.d), !vec4<bool>(var_0, false, true, var_0)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.d, u_input.d, 0i) & vec4<i32>(u_input.d, 33611i, 2147483647i, u_input.d), ~vec4<i32>(u_input.d, u_input.d, u_input.d, 1i)))), abs(reverseBits(vec4<i32>(firstLeadingBit(-2147483647i), _wgslsmith_sub_i32(u_input.d, u_input.d), u_input.d, ~u_input.d))));
    return Struct_1(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_2, arg_0.x, -292f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1262f, var_2, arg_0.x, -1614f) * vec4<f32>(-1453f, 631f, -1365f, -471f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-106f, var_2, var_2, var_2), vec4<f32>(var_2, var_2, 253f, var_2))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, 622f, -716f, arg_0.x), vec4<f32>(arg_0.x, 954f, arg_0.x, -339f), vec4<bool>(var_0, var_0, true, var_0)))))), -16224i, firstTrailingBit(_wgslsmith_mod_u32(~countOneBits(0u), ~u_input.c.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -685f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2(0u)).x)), var_2, _wgslsmith_f_op_f32(196f + 504f)));
}

fn func_1() -> vec4<i32> {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(u_input.b ^ 0u)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -383f), _wgslsmith_f_op_f32(487f + -1131f), 920f)))));
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, u_input.c.x), firstLeadingBit(vec3<u32>(4375u, var_0.d, 50891u) ^ vec3<u32>(0u, 32769u, var_0.d))))));
    var var_1 = Struct_1(var_0.a, var_0.e, -2147483647i, _wgslsmith_mod_u32(select(1u, ~1u, var_0.a), _wgslsmith_div_u32(0u, 829u)), var_0.e);
    return min((max(vec4<i32>(2147483647i, var_1.c, 21683i, var_0.c), vec4<i32>(1i, var_0.c, 35853i, u_input.d)) ^ vec4<i32>(u_input.d, 1i, var_1.c, var_1.c)) ^ vec4<i32>(38879i, var_0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 1i, var_1.c), vec3<i32>(var_0.c, var_1.c, u_input.d)), 48624i & var_0.c), max(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-11098i, -1i), vec2<i32>(-1i, var_1.c)), 18324i, abs(8045i), -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, var_1.c, -2147483647i, 22579i), vec4<i32>(-15621i, u_input.d, var_0.c, var_0.c)) << (~vec4<u32>(1418u, u_input.a, 48608u, var_1.d) % vec4<u32>(32u)))) << (max(abs(vec4<u32>(~var_1.d, _wgslsmith_mult_u32(0u, 1u), 30753u, ~var_1.d)), ~max(min(vec4<u32>(u_input.a, 0u, 0u, 3561u), vec4<u32>(16932u, 112415u, var_0.d, 3961u)), abs(vec4<u32>(var_0.d, 57782u, u_input.a, var_0.d)))) % vec4<u32>(32u));
}

fn func_5(arg_0: i32, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_3(firstTrailingBit(~(~101094u)), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-749f, -418f, 557f, -598f) * vec4<f32>(463f, 458f, -878f, -427f))) * func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -225f, -516f))).e), -2147483647i), global0[_wgslsmith_index_u32(~u_input.e, 19u)]);
    let var_1 = 28563u;
    var var_2 = vec4<u32>(~countOneBits(~43943u), select(~(~(~var_1)), var_1 | var_1, var_1 > 44820u), var_0.a, _wgslsmith_mult_u32(62580u, 1u) >> (u_input.e % 32u));
    global0 = array<Struct_2, 19>();
    let var_3 = vec2<bool>(all(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false), func_3(Struct_3(u_input.c.x, var_0.b, Struct_2(vec4<f32>(var_0.c.a.x, -775f, 323f, -360f), 35621i))).xz))), !(!all(vec3<bool>(true, true, true))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.x, 1485f, 1175f, -538f)))), _wgslsmith_f_op_vec4_f32(var_0.b.a * var_0.b.a), !select(vec4<bool>(false, true, var_3.x, var_3.x), vec4<bool>(true, var_3.x, true, var_3.x), vec4<bool>(var_3.x, false, true, var_3.x)))), _wgslsmith_f_op_vec4_f32(var_0.b.a + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.x, var_0.c.a.x, -1091f, var_0.b.a.x))), var_3.x)), -1i);
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = vec3<bool>((arg_2.x >> (_wgslsmith_div_u32(~1u, u_input.a & 633u) % 32u)) > _wgslsmith_dot_vec3_u32(arg_2.zyz, vec3<u32>(1u, 0u, firstTrailingBit(u_input.c.x))), true, 1040f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(arg_3.a.x, arg_3.a.x))));
    let var_1 = arg_1.b;
    let var_2 = vec2<i32>(~arg_1.b, ~select(-2147483647i >> (countOneBits(23992u) % 32u), _wgslsmith_div_i32(~42635i, abs(-18072i)), func_4(arg_3.a.zzx).d >= 1u));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_1.a - vec4<f32>(-511f, _wgslsmith_f_op_f32(abs(arg_3.a.x)), arg_3.a.x, _wgslsmith_f_op_f32(round(-586f)))))), 1i);
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1024f, -244f, var_3.a.x, arg_1.a.x))))), -1i);
    return Struct_2(func_4(_wgslsmith_f_op_vec3_f32(-arg_1.a.zwx)).e, ~var_2.x);
}

fn func_7(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    global0 = array<Struct_2, 19>();
    var var_0 = _wgslsmith_f_op_f32(arg_2.b.x + arg_2.e.x);
    var var_1 = arg_2;
    var_0 = 175f;
    var var_2 = select(vec4<bool>(_wgslsmith_clamp_u32(u_input.e, 19108u, arg_2.d) < ~u_input.e, !func_4(_wgslsmith_f_op_vec3_f32(select(var_1.e.ywz, vec3<f32>(var_1.b.x, 1043f, arg_3.a.x), vec3<bool>(var_1.a, false, arg_2.a)))).a, u_input.d == func_4(vec3<f32>(arg_3.a.x, -1159f, 958f)).c, var_1.a & arg_2.a), select(!select(vec4<bool>(arg_2.a, false, true, arg_2.a), vec4<bool>(true, false, var_1.a, var_1.a), select(vec4<bool>(arg_2.a, arg_2.a, var_1.a, arg_2.a), vec4<bool>(true, true, false, var_1.a), vec4<bool>(arg_2.a, var_1.a, var_1.a, false))), vec4<bool>(arg_2.a, any(vec4<bool>(false, var_1.a, arg_2.a, true)), all(select(vec3<bool>(arg_2.a, true, true), vec3<bool>(false, false, var_1.a), vec3<bool>(false, true, true))), !arg_2.a), vec4<bool>(!(!var_1.a), arg_2.a, true, true)), select(select(select(!vec4<bool>(false, var_1.a, arg_2.a, true), select(vec4<bool>(var_1.a, arg_2.a, var_1.a, true), vec4<bool>(arg_2.a, false, arg_2.a, true), vec4<bool>(true, true, true, arg_2.a)), !vec4<bool>(true, arg_2.a, true, var_1.a)), vec4<bool>(true, !var_1.a, any(vec3<bool>(false, var_1.a, arg_2.a)), all(vec3<bool>(arg_2.a, arg_2.a, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2.a, true, false, var_1.a), select(vec4<bool>(arg_2.a, arg_2.a, arg_2.a, true), vec4<bool>(var_1.a, arg_2.a, arg_2.a, false), var_1.a))), !vec4<bool>(true, all(vec4<bool>(arg_2.a, var_1.a, true, false)), true, true), var_1.a | true));
    return Struct_3(~max(max(4294967295u, u_input.c.x), _wgslsmith_sub_u32(reverseBits(59208u), u_input.a)), global0[_wgslsmith_index_u32(~1u, 19u)], arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(max(u_input.a, 24657u), 0u), u_input.c), firstLeadingBit(vec2<u32>(u_input.c.x, u_input.a) << (u_input.c % vec2<u32>(32u))) | u_input.c), ~(~vec2<u32>(u_input.b, 63577u)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(-1772f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(109f, -138f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_2 = func_7(func_6(countOneBits(u_input.d), Struct_2(vec4<f32>(var_1, _wgslsmith_f_op_f32(max(-1299f, -428f)), _wgslsmith_div_f32(652f, var_1), _wgslsmith_f_op_f32(1102f * var_1)), u_input.d), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 67470u, var_0.x, 29793u), vec4<u32>(var_0.x, u_input.b, 42528u, u_input.b)) ^ ~select(vec4<u32>(1260u, 4294967295u, var_0.x, 4294967295u), vec4<u32>(4294967295u, 609u, 36490u, 23671u), vec4<bool>(true, false, true, false)), func_5(u_input.d, func_1())), vec4<i32>(-u_input.d, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.d, 1i)), func_6(u_input.d >> (var_0.x % 32u), func_5(u_input.d, vec4<i32>(u_input.d, -1i, u_input.d, u_input.d)), ~vec4<u32>(0u, 0u, u_input.b, var_0.x), func_6(u_input.d, global0[_wgslsmith_index_u32(105114u, 19u)], vec4<u32>(u_input.e, var_0.x, 68467u, u_input.c.x), global0[_wgslsmith_index_u32(u_input.c.x, 19u)])).b), ~2147483647i, u_input.d), Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(-var_1)), -1011f, var_1, _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-159f + -1059f))), ~reverseBits(1i), 4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(677f * var_1), -473f, func_4(vec3<f32>(var_1, 591f, 439f)).e.x, _wgslsmith_f_op_f32(-var_1)))), global0[_wgslsmith_index_u32(func_4(vec3<f32>(var_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), -788f)), var_1)).d, 19u)]);
    let var_3 = abs(firstTrailingBit(firstTrailingBit(func_1().zx)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_4(func_7(var_2.b, _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.c.b, 1i, -40409i, var_3.x), vec4<i32>(2147483647i, u_input.d, u_input.d, 48578i)), Struct_1(true, vec4<f32>(var_1, -1334f, -685f, var_1), u_input.d, var_2.a, var_2.b.a), Struct_2(var_2.b.a, var_2.c.b)).c.a.yyx).c, _wgslsmith_add_i32(var_3.x, 1i) | (var_2.c.b << (countOneBits(var_0.x) % 32u)), var_3.x));
}

