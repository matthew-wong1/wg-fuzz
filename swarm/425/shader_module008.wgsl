struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true));

var<private> global1: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    let var_0 = Struct_1(all(select(vec4<bool>(all(vec4<bool>(false, false, arg_0, arg_0)), true, any(vec2<bool>(false, true)), arg_0 && arg_0), select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, true, true, arg_0), arg_0), arg_0 || any(vec2<bool>(false, true)))));
    let var_1 = var_0;
    var var_2 = max(vec3<u32>(_wgslsmith_div_u32(0u, max(1u, arg_2.x)), 85966u, _wgslsmith_dot_vec2_u32(min(u_input.a, vec2<u32>(u_input.c, u_input.a.x)), ~vec2<u32>(0u, arg_2.x))), vec3<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 15470u), ~1u), min(1u, ~arg_2.x))) & min(min(arg_2.xww, _wgslsmith_div_vec3_u32(arg_2.xyw | arg_2.yxx, ~vec3<u32>(4294967295u, u_input.a.x, arg_2.x))), vec3<u32>(reverseBits(u_input.a.x), firstLeadingBit(u_input.a.x ^ u_input.c), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_2.wx, vec2<u32>(4294967295u, 0u)), _wgslsmith_sub_vec2_u32(arg_2.xx, u_input.a))));
    return ~13212u;
}

fn func_2() -> bool {
    let var_0 = vec2<bool>(true, select(reverseBits(4294967295u), 3641u, true) >= ~firstTrailingBit(~u_input.c));
    global0 = array<Struct_1, 24>();
    var var_1 = Struct_1(true);
    var var_2 = global0[_wgslsmith_index_u32(abs(~_wgslsmith_mult_u32(~func_3(false, 2055f, vec4<u32>(4294967295u, 1u, u_input.a.x, 23515u)), 51181u)), 24u)];
    var var_3 = vec2<u32>(firstLeadingBit(~(~4294967295u)) & u_input.c, 0u);
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(all(vec4<bool>(true, !(!arg_1.a), !arg_1.a, arg_0.a)));
    var var_1 = !(!vec3<bool>(!func_2(), true, true));
    let var_2 = reverseBits(-62247i);
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1228f, _wgslsmith_f_op_f32(f32(-1f) * -547f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-985f, -714f, false)), _wgslsmith_f_op_f32(step(-692f, 147f)))) - -1222f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-765f))))))));
    let var_4 = reverseBits(firstTrailingBit(u_input.a));
    return Struct_1(true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    global0 = array<Struct_1, 24>();
    let var_0 = countOneBits(~arg_2.ww);
    global0 = array<Struct_1, 24>();
    let var_1 = Struct_1(true);
    global0 = array<Struct_1, 24>();
    return _wgslsmith_f_op_f32(max(2037f, 2260f));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1233f);
    var var_0 = min(firstLeadingBit(-vec3<i32>(-1i, -2147483647i, 9617i) >> (vec3<u32>(select(12654u, 24005u, arg_2.a), abs(u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) % vec3<u32>(32u))), vec3<i32>(u_input.b, 1i, -5769i << (u_input.a.x % 32u)));
    var var_1 = true;
    let var_2 = (((_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_0.x, 11198i, u_input.b), vec4<i32>(2147483647i, -27193i, u_input.b, var_0.x), vec4<i32>(arg_3.x, var_0.x, var_0.x, var_0.x)) << ((vec4<u32>(u_input.a.x, u_input.c, 2598u, u_input.c) << (vec4<u32>(0u, 33448u, 47018u, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u))) | vec4<i32>(u_input.b, ~27771i, arg_3.x & var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, 0i), vec3<i32>(arg_3.x, arg_3.x, -11886i)))) << (vec4<u32>(40431u, 8850u, ~(~u_input.a.x), u_input.c) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_3.x, u_input.b, -5699i, 41477i), vec4<i32>(u_input.b, -2147483647i, -31823i, arg_3.x)) | countOneBits(vec4<i32>(arg_3.x, u_input.b, 1i, arg_3.x))), _wgslsmith_add_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(36322i, -17156i, 1i, u_input.b), vec4<i32>(25493i, arg_3.x, 0i, 49521i)), -firstTrailingBit(vec4<i32>(arg_3.x, 1i, 1i, arg_3.x))));
    global0 = array<Struct_1, 24>();
    return arg_2;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = func_5(vec4<f32>(775f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -1303f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-466f * 668f))), _wgslsmith_f_op_f32(select(707f, 1f, all(vec3<bool>(true, arg_2.a, arg_2.a))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(1977f, 504f)))), -1728f, 1000f), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(909f, -486f)), _wgslsmith_f_op_f32(1675f * 622f), _wgslsmith_f_op_f32(f32(-1f) * -636f), _wgslsmith_f_op_f32(trunc(295f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(824f, -216f, -1756f) + vec3<f32>(1000f, -1168f, 852f)), vec3<f32>(908f, -1877f, 1000f)))), global0[_wgslsmith_index_u32(abs(~u_input.c) | (_wgslsmith_clamp_u32(u_input.a.x, 18065u, u_input.c) & ~8319u), 24u)], countOneBits(vec2<i32>(-u_input.b, 0i))), vec2<i32>(u_input.b >> (~min(u_input.c, u_input.a.x) % 32u), 1i));
    var var_1 = arg_0;
    var var_2 = !select(vec2<bool>(all(!vec3<bool>(var_0.a, false, var_0.a)), all(!vec4<bool>(true, true, arg_1.a, arg_1.a))), !vec2<bool>(true, func_5(vec4<f32>(-675f, 1000f, 839f, -569f), vec3<f32>(-1000f, -2513f, 439f), arg_2, vec2<i32>(24948i, u_input.b)).a), arg_2.a != (arg_2.a && arg_2.a));
    var var_3 = firstTrailingBit(_wgslsmith_sub_vec3_u32(abs(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 73317u, u_input.c), vec3<u32>(17426u, u_input.a.x, u_input.a.x)))), countOneBits(countOneBits(~vec3<u32>(47908u, u_input.a.x, 1u)))));
    let var_4 = Struct_1(var_0.a);
    return select(min(vec4<i32>(~(-17050i) & _wgslsmith_add_i32(-22902i, u_input.b), 1i, 1i, u_input.b), max(select(vec4<i32>(u_input.b, u_input.b, 1i, 37296i), -vec4<i32>(37689i, u_input.b, u_input.b, u_input.b), true), -firstLeadingBit(vec4<i32>(24084i, -25410i, -1i, 0i)))), ~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(1i, u_input.b, u_input.b, u_input.b) << (vec4<u32>(u_input.a.x, arg_0, 0u, u_input.c) % vec4<u32>(32u))), vec4<i32>(u_input.b | 0i, u_input.b >> (arg_0 % 32u), 0i, 35177i)), func_1(var_4, Struct_1(!(false | var_4.a))).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(min(~34714u, 28539u), global0[_wgslsmith_index_u32(u_input.c, 24u)], func_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-163f, 555f, -2363f, 1000f))))), vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(false), func_1(Struct_1(false), global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec4<u32>(u_input.a.x, 13957u, 298u, 32301u), func_1(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(19604u, 24u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1643f)) * _wgslsmith_f_op_f32(sign(388f))), -1389f), global0[_wgslsmith_index_u32(u_input.c, 24u)], _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.b, u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(-27677i, u_input.b), countOneBits(vec2<i32>(u_input.b, u_input.b))))));
    var var_1 = func_5(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -726f, -1370f, -109f), vec4<f32>(-861f, 442f, -1000f, 439f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(896f, 209f, 564f, 868f)))))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(-1470f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1320f, -769f)))), -936f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(576f, -341f)), _wgslsmith_f_op_f32(734f - -365f), _wgslsmith_f_op_f32(ceil(-595f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, 451f, 846f))))), global0[_wgslsmith_index_u32(~abs(_wgslsmith_clamp_u32(1u, 46638u, 12713u << (u_input.c % 32u))), 24u)], _wgslsmith_div_vec2_i32(func_6(~(~u_input.c), func_5(vec4<f32>(711f, 873f, 1172f, 456f), vec3<f32>(921f, -502f, -1148f), Struct_1(false), reverseBits(var_0.xw)), Struct_1(true)).wy, var_0.xy));
    var var_2 = vec4<f32>(-315f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1217f + -2085f) + _wgslsmith_f_op_f32(925f - -124f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2108f + -957f)))), _wgslsmith_f_op_f32(-1189f + -2069f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-850f - _wgslsmith_f_op_f32(floor(812f)))))));
    var_1 = func_1(global0[_wgslsmith_index_u32(abs(18830u), 24u)], func_1(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -842f, var_2.x, -615f)), vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), 375f, -2221f), func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x) + vec4<f32>(-1897f, var_2.x, -1550f, 471f)), _wgslsmith_div_vec3_f32(var_2.wzz, vec3<f32>(var_2.x, var_2.x, 663f)), Struct_1(var_1.a), var_0.zy), vec2<i32>(~2147483647i, firstLeadingBit(u_input.b))), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 633f, -481f, 175f), vec4<f32>(var_2.x, var_2.x, var_2.x, -443f))), var_2.zzy, Struct_1(19802u == u_input.a.x), ~var_0.zz)));
    let var_3 = (vec2<u32>(u_input.c & u_input.c, ~max(4294967295u, 4294967295u)) ^ u_input.a) | abs(~(~(vec2<u32>(u_input.a.x, u_input.a.x) ^ u_input.a)));
    var_1 = Struct_1(any(!select(vec2<bool>(false, var_1.a), select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(false, false), var_1.a), !vec2<bool>(true, var_1.a))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(trunc(-1231f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1344f, var_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.x, 850f, var_1.a)), 255f)))), -1163f, var_2.x, -1531f);
    global1 = -649f;
    let var_4 = _wgslsmith_f_op_f32(-var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(80306u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4 + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-261f, var_4)), -1150f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2280f))));
}

