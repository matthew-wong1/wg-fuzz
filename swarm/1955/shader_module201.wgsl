struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -594f;

var<private> global1: array<u32, 24> = array<u32, 24>(0u, 21429u, 4294967295u, 48891u, 57512u, 0u, 4294967295u, 4294967295u, 55587u, 0u, 0u, 74885u, 4294967295u, 0u, 4294967295u, 1u, 4294967295u, 4294967295u, 0u, 0u, 4294967295u, 49710u, 48589u, 12035u);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_5) -> vec3<u32> {
    var var_0 = 62393i;
    var var_1 = firstTrailingBit(select(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(38945u, 18647u, 22819u), vec3<u32>(arg_0.x, arg_2.b, 1u)) << (abs(vec3<u32>(4294967295u, arg_0.x, 4294967295u)) % vec3<u32>(32u)), vec3<u32>(~arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(~12817u, 24u)]), ~vec3<u32>(arg_2.b, 0u, global1[_wgslsmith_index_u32(arg_2.b, 24u)])), vec3<u32>(firstLeadingBit(83493u), arg_0.x << (arg_0.x % 32u), _wgslsmith_mod_u32(4294967295u << (arg_0.x % 32u), ~27032u)), true));
    var var_2 = any(!select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false))));
    let var_3 = _wgslsmith_f_op_f32(-arg_1);
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-526f, arg_1, arg_1, 1129f)))), vec4<f32>(1847f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(var_3 + var_3)), arg_1, -133f)))));
    return abs(vec3<u32>(firstTrailingBit(~(~5237u)), var_1.x, arg_0.x ^ ~var_1.x));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_mod_vec3_u32(max(vec3<u32>(1u, ~18497u, 83612u ^ global1[_wgslsmith_index_u32(81142u, 24u)]), ~_wgslsmith_add_vec3_u32(vec3<u32>(27824u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12816u, 24u)], 24u)], 17323u), vec3<u32>(38380u, 31100u, 2919u))), _wgslsmith_clamp_vec3_u32(~max(vec3<u32>(1u, global1[_wgslsmith_index_u32(19843u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)]), vec3<u32>(0u, 14963u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18879u, 24u)], 24u)], 24u)])), func_3(~vec2<u32>(global1[_wgslsmith_index_u32(44449u, 24u)], 6851u), _wgslsmith_f_op_f32(2141f * 1504f), Struct_5(25223i, global1[_wgslsmith_index_u32(1u, 24u)])), reverseBits(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50141u, 24u)], 24u)], global1[_wgslsmith_index_u32(1u, 24u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-1344f, 1332f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-513f, 654f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(415f, 216f)))));
    let var_1 = false;
    var var_2 = ~vec2<i32>(arg_0, select(select(-2147483647i, _wgslsmith_clamp_i32(u_input.a.x, arg_0, 2147483647i), true & var_1), -(u_input.a.x & -71524i), var_1));
    let var_3 = vec3<bool>(all(select(!vec4<bool>(var_1, true, false, var_1), vec4<bool>(select(true, false, var_1), var_1, true, false || var_1), vec4<bool>(var_1, !var_1, true, var_1))), true, all(vec3<bool>(true, var_1, true)));
    var_2 = u_input.a;
    return !(!vec2<bool>(false, (var_0.b.x >= var_0.b.x) && any(var_3)));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: u32, arg_3: vec2<bool>) -> vec4<bool> {
    let var_0 = Struct_2(firstTrailingBit(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, 2200i, -1i)) | abs(-2147483647i)), vec4<bool>(false, true, arg_3.x, all(arg_3)));
    var var_1 = _wgslsmith_div_vec3_i32(-(reverseBits(vec3<i32>(0i, -2147483647i, arg_0.x) >> (vec3<u32>(74084u, arg_2, global1[_wgslsmith_index_u32(arg_2, 24u)]) % vec3<u32>(32u))) & vec3<i32>(abs(var_0.a), var_0.a, u_input.a.x)), min(min(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-1i, arg_0.x, u_input.a.x) << (vec3<u32>(422u, 0u, 38638u) % vec3<u32>(32u))) >> (vec3<u32>(global1[_wgslsmith_index_u32(31756u, 24u)] | 4294967295u, 1u & arg_2, ~global1[_wgslsmith_index_u32(17647u, 24u)]) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(-73139i ^ arg_0.x, ~arg_0.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(42063i, 2147483647i), 20192i), _wgslsmith_mult_i32(u_input.a.x, -2147483647i))));
    global1 = array<u32, 24>();
    global1 = array<u32, 24>();
    var var_2 = ~(~(~abs(vec4<u32>(global1[_wgslsmith_index_u32(62968u, 24u)], 52481u, 0u, 4294967295u)))) << (~(((vec4<u32>(global1[_wgslsmith_index_u32(arg_2, 24u)], arg_2, 12815u, arg_2) >> (vec4<u32>(arg_2, global1[_wgslsmith_index_u32(63739u, 24u)], global1[_wgslsmith_index_u32(arg_2, 24u)], arg_2) % vec4<u32>(32u))) | countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(arg_2, 24u)], 2818u, 0u, arg_2))) & (select(vec4<u32>(19022u, arg_2, arg_2, 11310u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2, 24u)], 24u)], 1u, 49203u, 1u), var_0.b) | ~vec4<u32>(61937u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)], global1[_wgslsmith_index_u32(7102u, 24u)]))) % vec4<u32>(32u));
    return select(var_0.b, vec4<bool>(true, func_2(reverseBits(~var_1.x)).x, true, true), !select(!vec4<bool>(arg_1, true, false, var_0.b.x), vec4<bool>(var_2.x == 1u, arg_1, !arg_1, arg_1), vec4<bool>(!var_0.b.x, true, global1[_wgslsmith_index_u32(6384u, 24u)] > 7623u, true)));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = ~5200u;
    global1 = array<u32, 24>();
    let var_1 = func_4(u_input.a, true, abs(max(1u, var_0)), select(select(select(!vec2<bool>(false, arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), false), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), false)), vec2<bool>(select(arg_0, arg_0, false), -2578i <= u_input.a.x), true), func_2(_wgslsmith_add_i32(u_input.a.x, u_input.a.x) ^ min(0i, 2147483647i)), !(true && arg_0)));
    var var_2 = -2147483647i ^ -u_input.a.x;
    let var_3 = Struct_5(u_input.a.x, global1[_wgslsmith_index_u32(~var_0, 24u)]);
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-544f, -1309f, -271f, -1193f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-289f, 1017f, 246f, -1244f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, 600f, 1106f, -513f))))), func_4(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(83595i, 45239i, -42439i, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(47545i, -12019i, 8716i, u_input.a.x), vec4<i32>(-2147483647i, var_3.a, 48058i, var_3.a))), ~firstLeadingBit(var_3.a)), arg_0, ~(~1u), var_1.zw).www, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(451f, 351f), vec2<f32>(-483f, -306f), arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1559f, -452f) * vec2<f32>(-463f, -262f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2172f, 647f) * vec2<f32>(1098f, -208f))), true)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1357f, 667f) * vec2<f32>(479f, 452f)) + vec2<f32>(1000f, 483f)))), abs(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, -16441i), vec3<i32>(32844i, u_input.a.x, u_input.a.x), vec3<i32>(var_3.a, 1i, -60059i)), vec3<i32>(var_3.a, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec3_i32(-vec3<i32>(30718i, 24952i, var_3.a), vec3<i32>(var_3.a, 2147483647i, u_input.a.x)))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> vec3<i32> {
    let var_0 = abs(min(_wgslsmith_dot_vec4_u32(vec4<u32>(80u, 8581u, arg_0.x, 0u), vec4<u32>(arg_0.x, global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(0u, 24u)], 24257u)), arg_0.x >> (arg_0.x % 32u)) & arg_0.x) != global1[_wgslsmith_index_u32(max(~0u, (~arg_0.x << ((7772u >> (0u % 32u)) % 32u)) | countOneBits(global1[_wgslsmith_index_u32(abs(arg_0.x), 24u)])), 24u)];
    let var_1 = arg_1.c.x;
    global0 = _wgslsmith_f_op_f32(-arg_1.a.x);
    var var_2 = Struct_3(arg_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-561f, _wgslsmith_f_op_f32(f32(-1f) * -1371f)))), _wgslsmith_f_op_f32(-arg_1.c.x)));
    var_2 = Struct_3(~var_2.a, vec2<f32>(var_2.b.x, var_2.b.x));
    return ~_wgslsmith_div_vec3_i32(~firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.d.x, arg_1.d.x, u_input.a.x), vec3<i32>(arg_1.d.x, -46520i, -1273i))), vec3<i32>(max(-29218i, 22138i), 1i, -arg_1.d.x) << (vec3<u32>(min(arg_0.x, 4294967295u), arg_0.x, 24102u) % vec3<u32>(32u)));
}

fn func_6(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = 0u;
    let var_1 = true;
    var var_2 = select(!vec2<bool>(any(vec4<bool>(false, true, var_1, var_1)), !func_1(var_1, vec2<u32>(32714u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(77752u, 24u)], 24u)], 24u)], 24u)], 24u)])).b.x), select(func_1(false, reverseBits(vec2<u32>(4294967295u, 1u))).b.yy, vec2<bool>(true, true), var_1), vec2<bool>(var_1, 34883u < ~(global1[_wgslsmith_index_u32(46932u, 24u)] ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)])));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1)))));
    let var_4 = ~(~(~39873u));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -890f, -1714f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1880f, arg_1, 612f, arg_1)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))), arg_1, _wgslsmith_f_op_f32(ceil(-359f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(660f - arg_1) * arg_1))), !select(!vec3<bool>(false, var_2.x, true), select(select(vec3<bool>(var_2.x, true, var_1), vec3<bool>(false, var_1, var_1), false), !vec3<bool>(true, var_1, var_1), !vec3<bool>(var_1, false, var_2.x)), !select(vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, false, true), vec3<bool>(var_2.x, false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 * -1260f)), vec2<f32>(_wgslsmith_f_op_f32(floor(-868f)), _wgslsmith_div_f32(837f, -1030f))))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-613f * -709f), _wgslsmith_f_op_f32(select(-1660f, 1652f, true)), -1552f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1703f, 2275f, _wgslsmith_f_op_f32(205f + 462f)) + vec3<f32>(-876f, _wgslsmith_f_op_f32(trunc(-303f)), -275f))));
    var var_1 = func_6((func_5(_wgslsmith_div_vec3_u32(vec3<u32>(63531u, 4294967295u, 0u), vec3<u32>(19824u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)])), func_1(true, vec2<u32>(5678u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4068u, 24u)], 24u)], 24u)], 24u)])), true) | ~vec3<i32>(-1i, u_input.a.x, u_input.a.x)) << ((vec3<u32>(1u, 32505u & global1[_wgslsmith_index_u32(4111u, 24u)], 4294967295u) & ~(~vec3<u32>(22224u, 39899u, 37918u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 837f)))), u_input.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_0);
    let var_3 = u_input.a.x;
    let var_4 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18643u, 24u)], 24u)]), 24u)], 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(65112u, 24u)], 1u, 4294967295u, global1[_wgslsmith_index_u32(1u, 24u)]), vec4<u32>(53008u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11636u, 24u)], 24u)], 24u)], global1[_wgslsmith_index_u32(1u, 24u)])), min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9398u, 24u)], 24u)], 24u)])), ~(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(78249u, 24u)], 24u)], 24u)], 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)], 2456u))) & ~(~(~(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 4294967295u, 0u, 38172u) ^ vec4<u32>(45131u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(79144u, 24u)], 24u)], 24u)], 24u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-418f)) + 116f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 509f, var_0.x)))), -359f);
}

