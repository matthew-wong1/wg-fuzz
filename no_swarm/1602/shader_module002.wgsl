struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global2: vec2<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = max(~(-select(-vec4<i32>(-1874i, 16458i, 2147483647i, u_input.b), select(vec4<i32>(u_input.b, 0i, 1i, -1i), vec4<i32>(9203i, u_input.b, u_input.b, 10295i), vec4<bool>(arg_0, global2.x, global2.x, global2.x)), any(global1[_wgslsmith_index_u32(15187u, 12u)]))), vec4<i32>(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, 2147483647i) << (vec3<u32>(u_input.a.x, 31883u, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(-5356i, 0i, 22689i), vec3<i32>(u_input.b, u_input.b, -46452i)))), -18913i, u_input.b, -2147483647i));
    return Struct_1(_wgslsmith_div_vec2_u32(u_input.a, ~u_input.a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: i32) -> Struct_2 {
    global0 = abs(max(u_input.a.x, ~max(49174u, 4294967295u))) ^ firstLeadingBit(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_div_u32(arg_0.a.x, 25205u), ~arg_0.a.x)));
    let var_0 = _wgslsmith_clamp_vec3_i32(arg_2.zyz, vec3<i32>(~2147483647i, u_input.b, select(u_input.b, _wgslsmith_dot_vec2_i32(arg_2.xw, vec2<i32>(arg_2.x, u_input.b)), !(!global2.x))), -vec3<i32>(-1i, -u_input.b << (u_input.a.x % 32u), arg_3));
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(56076u, 37717u, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a.x, arg_0.a.x, 4294967295u), max(vec3<u32>(u_input.a.x, 70650u, 67219u), vec3<u32>(0u, u_input.a.x, 0u)))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a.x, 50895u, arg_0.a.x), vec3<u32>(u_input.a.x, 4631u, u_input.a.x)), ~vec3<u32>(1u, arg_0.a.x, arg_0.a.x))));
    var var_2 = Struct_1(arg_0.a);
    var var_3 = !select(vec3<bool>(false | select(global2.x, global2.x, global2.x), ~2147483647i < arg_3, global2.x), !select(!vec3<bool>(global2.x, true, global2.x), vec3<bool>(false, true, true), select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, true, true), global2.x)), true);
    return arg_1;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32) -> vec4<i32> {
    global0 = u_input.a.x ^ 1u;
    let var_0 = arg_0;
    global0 = abs(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(select(u_input.a.x, u_input.a.x, true), ~0u, u_input.a.x), u_input.a.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1910f - arg_0.x))))));
    var var_2 = 2147483647i;
    return vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(u_input.b, -27840i))), _wgslsmith_sub_vec2_i32(~vec2<i32>(-42631i, u_input.b), vec2<i32>(12144i, 5501i))), -2147483647i, -2147483647i, abs(-2147483647i)) & vec4<i32>(35393i, 0i, -2147483647i, reverseBits(-6582i));
}

fn func_1(arg_0: i32, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~((vec4<i32>(arg_1, 2147483647i, u_input.b, arg_0) << (vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u) % vec4<u32>(32u))) | firstTrailingBit(vec4<i32>(36189i, -571i, -27624i, -33893i))), func_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(214f, 1164f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 564f) * vec2<f32>(509f, 1086f)))), func_3(func_2(true), Struct_2(634f), max(vec4<i32>(0i, arg_0, u_input.b, 48486i), vec4<i32>(arg_1, -1i, 0i, u_input.b)), firstTrailingBit(-1i)), 1f)), vec4<i32>(_wgslsmith_clamp_i32(i32(-1i) * -arg_0, countOneBits(u_input.b), -1i), ~(arg_1 & 24324i), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-17887i, 2147483647i, 30744i), vec3<i32>(arg_1, arg_1, -44189i))) | 1i, _wgslsmith_sub_i32(arg_0, countOneBits(arg_1))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1590f - -1310f) * _wgslsmith_f_op_f32(292f - -679f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -637f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -899f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(158f, -1246f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1793f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1667f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(251f + 813f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1542f)), _wgslsmith_f_op_f32(f32(-1f) * -156f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2272f, -897f, global2.x)))), 390f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1074f, 461f, -1675f, -1128f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1070f, 216f, 1059f, -901f), vec4<f32>(1118f, -854f, -1977f, 588f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(898f, 975f, 1190f, -949f), vec4<f32>(-764f, -143f, -959f, -148f))) - vec4<f32>(1180f, -360f, 1442f, 1526f)))));
    let var_3 = func_3(func_2(!global2.x), Struct_2(1f), select(~vec4<i32>(-1i, u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(5573i, arg_0, var_0.x, 7510i), vec4<i32>(23370i, arg_1, 2147483647i, var_0.x)), arg_0), -_wgslsmith_add_vec4_i32(vec4<i32>(-13010i, u_input.b, arg_0, 0i) << (vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(arg_1, -2147483647i, -2147483647i, 39396i)), select(vec4<bool>(true, true, true, select(true, false, global2.x)), !vec4<bool>(global2.x, global2.x, global2.x, global2.x), !select(vec4<bool>(global2.x, true, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, global2.x), true))), arg_1).a;
    var var_4 = vec4<i32>(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.wx - var_2.xz)), func_3(func_2(global2.x), Struct_2(var_2.x), -vec4<i32>(-2147483647i, var_0.x, u_input.b, u_input.b), -3014i), _wgslsmith_f_op_f32(var_2.x + var_2.x)).x, reverseBits(-2147483647i), ~_wgslsmith_dot_vec3_i32(-var_0.yxy, var_0.wyy), 23337i) << ((_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x, select(1u, 803u, false), ~u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (select(vec4<u32>(u_input.a.x, 21563u, 4294967295u, 5864u), vec4<u32>(5250u, u_input.a.x, 38180u, u_input.a.x), global2.x) % vec4<u32>(32u))) << (~(~abs(vec4<u32>(u_input.a.x, u_input.a.x, 93784u, u_input.a.x))) % vec4<u32>(32u))) % vec4<u32>(32u));
    return ~min(~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, arg_1, 0i), _wgslsmith_sub_i32(-1i, u_input.b)), i32(-1i) * -_wgslsmith_sub_i32(arg_0, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1764f;
    global2 = !vec2<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-866f * var_0), _wgslsmith_div_f32(var_0, var_0))) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(exp2(var_0)), true)), !(func_1(u_input.b, -51680i) >= _wgslsmith_sub_i32(-11514i, u_input.b)));
    var var_1 = var_0;
    let var_2 = vec4<bool>(global2.x | false, all(select(select(vec2<bool>(global2.x, true), vec2<bool>(false, global2.x), u_input.a.x >= 4294967295u), !(!vec2<bool>(global2.x, global2.x)), any(select(vec2<bool>(global2.x, global2.x), global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)])))), false, global2.x);
    let var_3 = vec2<bool>(true, any(vec2<bool>(!(-751f <= var_0), !global2.x)));
    global2 = select(select(select(vec2<bool>(all(vec3<bool>(global2.x, global2.x, var_3.x)), true), var_2.xz, vec2<bool>(true, true)), vec2<bool>(select(global2.x, var_3.x, var_3.x && true), false), select(!(!vec2<bool>(true, var_2.x)), !(!var_3), !(!global1[_wgslsmith_index_u32(170961u, 12u)]))), var_2.wx, any(vec4<bool>(true, var_3.x, !var_2.x, true)) | (global2.x || false));
    var var_4 = -1055f;
    var_1 = var_0;
    let var_5 = _wgslsmith_mult_vec4_u32(vec4<u32>(func_2(var_2.x).a.x, countOneBits(_wgslsmith_div_u32(1u, func_2(var_2.x).a.x)), 4294967295u, func_2(!all(var_2)).a.x), vec4<u32>(~_wgslsmith_mod_u32(4294967295u, u_input.a.x), _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(4294967295u, u_input.a.x, 12985u, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 32665u, u_input.a.x), countOneBits(vec4<u32>(u_input.a.x, 36642u, u_input.a.x, u_input.a.x)))), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a.x, 5088u, 1u) & vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 0u) ^ vec3<u32>(u_input.a.x, 33343u, u_input.a.x), var_3.x & false), ~(vec3<u32>(u_input.a.x, u_input.a.x, 8892u) & vec3<u32>(0u, u_input.a.x, 14259u))), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-219f * var_0)), -1064f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(207f * var_0), _wgslsmith_div_f32(var_0, var_0)))));
}

