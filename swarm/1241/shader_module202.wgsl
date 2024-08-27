struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1638f, 578f);

var<private> global1: i32;

var<private> global2: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(-37466i, 38021i), vec2<i32>(i32(-2147483648), 25148i), vec2<i32>(-28304i, 4754i), vec2<i32>(-1i, -14976i), vec2<i32>(29794i, 3765i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -60682i), vec2<i32>(2147483647i, 44229i), vec2<i32>(2147483647i, -1i), vec2<i32>(9428i, -56737i), vec2<i32>(1i, -2228i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-26503i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, 66231i), vec2<i32>(16012i, 1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, -23656i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, 0i));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> i32 {
    global1 = max(_wgslsmith_clamp_i32(reverseBits(2147483647i & u_input.a), firstLeadingBit(arg_2.d), abs(-72173i)), arg_2.d) ^ _wgslsmith_add_i32(-u_input.a, ~arg_2.c.b.x);
    global1 = arg_2.a.c;
    var var_0 = select(select(select(select(vec2<bool>(false, arg_2.b), !vec2<bool>(arg_2.a.a, false), arg_2.a.a), vec2<bool>(any(vec2<bool>(true, arg_2.c.a)), false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, arg_2.c.a), vec2<bool>(false, arg_2.c.a)), all(vec4<bool>(true, false, false, arg_2.a.a)))), !(!select(vec2<bool>(true, arg_2.b), vec2<bool>(false, arg_2.c.a), true)), vec2<bool>(!arg_2.c.a, arg_2.c.a)), select(vec2<bool>(!(!arg_2.c.a), true), vec2<bool>(arg_2.b, false), vec2<bool>(true, false)), true);
    var var_1 = arg_2;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.e + arg_0.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.c.d)) - _wgslsmith_f_op_f32(min(var_1.a.d, 334f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1090f + 660f) * _wgslsmith_f_op_f32(f32(-1f) * -2117f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(ceil(arg_3)));
    return u_input.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> bool {
    let var_0 = Struct_3(Struct_1(arg_1.d.x, min(max(vec3<i32>(1i, 1i, 1i), min(vec3<i32>(u_input.a, u_input.a, -17927i), vec3<i32>(-29013i, -4306i, -43321i))), vec3<i32>(arg_1.a.x, select(arg_1.a.x, u_input.a, arg_1.d.x), func_3(vec2<f32>(1949f, arg_1.e.x), arg_0.x, Struct_3(Struct_1(arg_1.c.x, vec3<i32>(-1822i, -1i, u_input.b.x), 8763i, global0.x, arg_1.e.x), true, Struct_1(false, vec3<i32>(-25379i, arg_1.a.x, u_input.b.x), -1i, -508f, -2136f), 0i), 1087f))), _wgslsmith_dot_vec2_i32(-(~vec2<i32>(11668i, u_input.b.x)), vec2<i32>(-52745i, max(-45395i, -5118i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.e.x))) + global0.x)), false, Struct_1(false, -(~vec3<i32>(9886i, 2147483647i, -16908i)) ^ firstTrailingBit(reverseBits(vec3<i32>(arg_1.a.x, arg_1.a.x, u_input.b.x))), arg_1.a.x, 166f, _wgslsmith_f_op_f32(select(arg_1.e.x, 1492f, any(arg_1.b)))), -reverseBits(firstTrailingBit(abs(arg_1.a.x))));
    var var_1 = var_0.c;
    let var_2 = _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(arg_0.x, arg_0.x, arg_0.x) | ~vec3<u32>(arg_0.x, u_input.c, u_input.c)), vec3<u32>(4294967295u, _wgslsmith_mod_u32(1u, arg_0.x), u_input.c & u_input.c) >> (~vec3<u32>(4294967295u, 33020u, 0u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(14774u, _wgslsmith_dot_vec4_u32(vec4<u32>(49487u, arg_0.x, u_input.c, 22545u), vec4<u32>(48814u, 0u, u_input.c, 0u)), _wgslsmith_mod_u32(390u, 15082u)), vec3<u32>(arg_0.x, ~arg_0.x, _wgslsmith_add_u32(arg_0.x, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, 0u, arg_0.x) | vec3<u32>(u_input.c, 0u, arg_0.x), vec3<u32>(u_input.c, 1u, arg_0.x)))) | ~countOneBits(min(~vec3<u32>(arg_0.x, u_input.c, u_input.c), countOneBits(vec3<u32>(arg_0.x, 69131u, 1u))));
    var var_3 = Struct_1(all(!vec4<bool>(any(arg_1.c.xw), true, !var_0.b, false)), var_1.b, -(~(-var_1.b.x)), arg_1.e.x, _wgslsmith_f_op_f32(2579f + 705f));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(701f, -1000f, var_0.a.e, global0.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1148f, global0.x, -256f, var_3.d), arg_1.e))))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.e), _wgslsmith_f_op_f32(abs(var_3.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.d)))), 717f));
    return false;
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = Struct_2(vec2<i32>(u_input.a, ~u_input.a), vec2<bool>(true, !arg_0.c.x), !select(vec4<bool>(!arg_0.d.x, arg_0.e.x >= 2615f, func_2(vec2<u32>(0u, u_input.c), Struct_2(vec2<i32>(u_input.a, arg_0.a.x), arg_0.b, arg_0.c, arg_0.c, vec4<f32>(293f, arg_0.e.x, global0.x, arg_0.e.x))), 2147483647i < arg_0.a.x), arg_0.d, true), arg_0.d, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(766f * global0.x), 363f, _wgslsmith_f_op_f32(select(global0.x, 259f, arg_0.d.x)), global0.x) + vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.e.x, global0.x, arg_0.d.x)), global0.x, arg_0.e.x, _wgslsmith_f_op_f32(ceil(1888f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(arg_0.e, arg_0.e)))))));
    let var_1 = Struct_1(var_0.c.x, _wgslsmith_div_vec3_i32(max(~vec3<i32>(-2147483647i, var_0.a.x, var_0.a.x), reverseBits(~vec3<i32>(2147483647i, u_input.b.x, 2147483647i))), firstLeadingBit(vec3<i32>(14764i, -28654i, var_0.a.x))), -61890i, 287f, -456f);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.e.xw, var_0.e.xw))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.e.zy))), vec2<f32>(866f, global0.x)));
    var var_2 = ~(-1i);
    var var_3 = _wgslsmith_div_vec3_i32(countOneBits(abs(vec3<i32>(var_0.a.x, 23495i, i32(-1i) * -2147483647i))), vec3<i32>(reverseBits(arg_0.a.x), var_1.b.x & _wgslsmith_sub_i32(var_1.b.x, -43667i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, var_1.c, arg_0.a.x), vec3<i32>(var_1.b.x, u_input.b.x, var_1.c))) ^ var_1.b);
    return !any(arg_0.d.wzx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-2147483647i, -49315i);
    var var_1 = Struct_1(all(vec3<bool>(any(vec4<bool>(false, true, true, true)), func_1(Struct_2(u_input.b, vec2<bool>(false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<f32>(-293f, -403f, -1174f, -718f))), true)) || all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), any(vec4<bool>(true, false, false, false)))), (vec3<i32>(~u_input.b.x, ~var_0.x, _wgslsmith_clamp_i32(-2147483647i, u_input.a, u_input.a)) ^ vec3<i32>(_wgslsmith_mod_i32(19695i, var_0.x), ~var_0.x, firstLeadingBit(-3082i))) ^ -vec3<i32>(_wgslsmith_div_i32(-34263i, u_input.a), countOneBits(var_0.x), u_input.b.x | 2147483647i), ~max(2690i, 1i), 1380f, 1000f);
    let var_2 = max(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, var_0.x, -7027i) << (~vec4<u32>(u_input.c, u_input.c, 61085u, u_input.c) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.b.zy, vec2<i32>(var_0.x, u_input.b.x)), var_1.b.x, _wgslsmith_add_i32(2147483647i, -2147483647i), -5426i)), -_wgslsmith_div_vec4_i32(vec4<i32>(var_1.b.x, var_0.x, 2147483647i, 21884i), -vec4<i32>(var_0.x, 1i, var_1.c, var_1.c))), -vec4<i32>(i32(-1i) * -53038i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -40629i), vec2<i32>(-9822i, -38282i)) | max(var_0.x, -1i), 1i, _wgslsmith_sub_i32(u_input.b.x, ~u_input.b.x)));
    var var_3 = Struct_2(~u_input.b, !vec2<bool>(true, all(vec3<bool>(true, true, true))), !(!(!vec4<bool>(var_1.a, false, var_1.a, false))), vec4<bool>(func_2(~(~vec2<u32>(u_input.c, 0u)), Struct_2(_wgslsmith_sub_vec2_i32(var_1.b.yx, u_input.b), !vec2<bool>(var_1.a, false), !vec4<bool>(true, false, false, var_1.a), select(vec4<bool>(var_1.a, false, true, true), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, true, true, false)), vec4<f32>(-1000f, global0.x, -2196f, var_1.e))), any(vec3<bool>(!var_1.a, !var_1.a, any(vec3<bool>(var_1.a, var_1.a, var_1.a)))), var_1.a, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - var_1.d)), 1f, global0.x, -1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1170f, 401f, global0.x, 1662f)))))));
    var var_4 = 17470u;
    var_3 = Struct_2(abs(~(max(global2[_wgslsmith_index_u32(u_input.c, 21u)], var_3.a) | vec2<i32>(-38687i, var_2.x))), vec2<bool>(var_1.a | var_1.a, !var_1.a), !(!select(var_3.c, select(var_3.d, var_3.d, vec4<bool>(false, var_3.d.x, true, true)), true)), vec4<bool>(var_1.a, false, false, var_1.a), vec4<f32>(global0.x, var_3.e.x, var_3.e.x, _wgslsmith_f_op_f32(-480f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d + var_3.e.x), _wgslsmith_div_f32(var_3.e.x, -143f)))));
    var var_5 = Struct_3(Struct_1(!(u_input.c == u_input.c), var_1.b, _wgslsmith_add_i32(35863i, select(15337i, u_input.a, var_1.a) & u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), global0.x), 0u != u_input.c, Struct_1(select(var_1.a, firstLeadingBit(var_0.x) >= -16278i, var_3.b.x), -select(vec3<i32>(var_2.x, var_3.a.x, var_3.a.x), -vec3<i32>(-13810i, 0i, var_3.a.x), all(var_3.b)), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(var_3.a.x, -4952i, 2771i) & var_2.x), 961f, _wgslsmith_f_op_f32(floor(var_1.e))), ~_wgslsmith_sub_i32(firstTrailingBit(-2147483647i), _wgslsmith_div_i32(~var_3.a.x, var_2.x ^ -1i)));
    var var_6 = var_5.a;
    let var_7 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c.b.zy, _wgslsmith_f_op_f32(-var_3.e.x), _wgslsmith_div_f32(var_5.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.e.x))))));
}

