struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 21814u, 1u, 4294967295u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    global0 = vec4<u32>(global0.x, ~(~global0.x), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(~global0.x, countOneBits(global0.x), 1u, 32649u << (0u % 32u)) ^ ((vec4<u32>(global0.x, global0.x, 4294967295u, global0.x) >> (vec4<u32>(global0.x, 38129u, 8129u, global0.x) % vec4<u32>(32u))) & (vec4<u32>(36918u, global0.x, global0.x, 23629u) << (vec4<u32>(18267u, global0.x, 4294967295u, 1u) % vec4<u32>(32u)))), vec4<u32>(countOneBits(~6288u), 0u, 4294967295u << (0u % 32u), _wgslsmith_mod_u32(~global0.x, _wgslsmith_div_u32(4294967295u, global0.x)))));
    global0 = vec4<u32>(_wgslsmith_mult_u32(global0.x, 4294967295u ^ _wgslsmith_div_u32(4294967295u & global0.x, global0.x)), global0.x, 0u, global0.x);
    let var_0 = select(vec3<bool>(true, true, true), select(vec3<bool>(true, any(vec2<bool>(false, true)) || false, all(vec2<bool>(true, true))), !vec3<bool>(any(vec2<bool>(true, false)), true, true), !select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false))), select(false, true, false));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1087f), _wgslsmith_f_op_f32(532f - 109f));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -818f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1147f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(1247f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(228f)))))))));
    return vec4<u32>(~global0.x, global0.x, global0.x, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, abs(68461u), 44722u | global0.x), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, global0.x, 0u), 1577u, global0.x))));
}

fn func_2() -> vec4<u32> {
    var var_0 = global0.zzy;
    global0 = select(~func_3() ^ ~select(vec4<u32>(40856u, global0.x, 32226u, var_0.x), vec4<u32>(20315u, var_0.x, 0u, global0.x), vec4<bool>(true, true, true, true)), ~max(vec4<u32>(countOneBits(0u), reverseBits(1u), ~4294967295u, _wgslsmith_sub_u32(4294967295u, 1u)), ~(~vec4<u32>(71734u, var_0.x, var_0.x, 32514u))), all(vec4<bool>(-6876i < _wgslsmith_mult_i32(u_input.b, u_input.a.x), any(vec4<bool>(true, true, true, false)), any(vec2<bool>(true, false)), true)));
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1717f, 730f), _wgslsmith_f_op_f32(f32(-1f) * -576f)));
    var var_3 = Struct_1(true, countOneBits(_wgslsmith_sub_vec3_u32(global0.zzw, global0.zxx)), _wgslsmith_add_vec2_i32(-(~var_1.xw), var_1.yw), firstTrailingBit((_wgslsmith_sub_u32(0u, var_0.x) | (6871u << (global0.x % 32u))) >> (~(~var_0.x) % 32u)));
    return reverseBits(~(~(~(~vec4<u32>(global0.x, global0.x, 12196u, 4294967295u)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: u32, arg_3: vec2<u32>) -> vec4<u32> {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(arg_1, _wgslsmith_clamp_i32(u_input.a.x, u_input.b, ~1753i) ^ _wgslsmith_sub_i32(0i, u_input.b << (62136u % 32u))), -2147483647i | max(u_input.b, 1i), arg_1);
    global0 = ~((_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 4294967295u, 43342u, global0.x) & vec4<u32>(0u, arg_3.x, arg_2, 1u), func_2()) | ~func_3()) & _wgslsmith_clamp_vec4_u32(~(vec4<u32>(1u, global0.x, arg_3.x, global0.x) & vec4<u32>(0u, 4294967295u, 28374u, arg_3.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, arg_2, global0.x, global0.x), vec4<u32>(global0.x, 1u, 1u, global0.x)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, arg_2, global0.x, 45610u), vec4<u32>(arg_3.x, arg_3.x, 1u, 44425u)), vec4<u32>(32551u, arg_3.x, 30608u, arg_3.x), true)));
    global0 = vec4<u32>(4294967295u | abs(firstLeadingBit(global0.x)), reverseBits(arg_3.x), 1u, ~(~66688u)) | (min(vec4<u32>(arg_3.x ^ arg_3.x, select(arg_2, 1u, true), 1u, 4294967295u), ~firstTrailingBit(vec4<u32>(78270u, arg_2, global0.x, 1u))) >> (min(firstLeadingBit(vec4<u32>(global0.x, global0.x, 31833u, 4294967295u)) | ~vec4<u32>(28695u, arg_3.x, global0.x, arg_2), abs(vec4<u32>(50237u, 66439u, 55456u, 0u))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_mult_vec2_i32(abs(var_0.xx), (u_input.a.zw >> (max(arg_3, arg_3) % vec2<u32>(32u))) << (vec2<u32>(firstLeadingBit(global0.x), arg_2) % vec2<u32>(32u))) << (countOneBits(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 4294967295u, global0.x), ~vec3<u32>(arg_3.x, arg_3.x, 0u)), _wgslsmith_clamp_u32(0u, 0u, firstTrailingBit(1u)))) % vec2<u32>(32u));
    global0 = select(~(~vec4<u32>(38630u, arg_2, 1u << (global0.x % 32u), min(41746u, arg_2))), ~_wgslsmith_sub_vec4_u32((vec4<u32>(1u, arg_2, 10317u, global0.x) | vec4<u32>(arg_2, 92044u, arg_3.x, arg_2)) & vec4<u32>(0u, 49969u, 6047u, global0.x), vec4<u32>(3219u, arg_3.x ^ arg_2, 8204u, ~1u)), true);
    return _wgslsmith_mult_vec4_u32(vec4<u32>((~global0.x | countOneBits(global0.x)) >> (~11890u % 32u), global0.x >> (arg_3.x % 32u), 4294967295u, ~arg_3.x), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(5769u, 4294967295u, arg_3.x, global0.x), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(77024u, arg_2, 4294967295u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(8568u, global0.x, arg_2, arg_3.x), vec4<u32>(arg_2, global0.x, 0u, 0u)))), ~vec4<u32>(arg_2, ~global0.x, arg_2 & 1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(vec4<u32>(global0.x, global0.x, 840u, ~40175u), ~vec4<u32>(abs(~global0.x), global0.x, 46306u, 5729u));
    global0 = _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(abs(global0.x), 0u, ~_wgslsmith_mult_u32(global0.x, 14246u), 50825u)), func_1(vec2<f32>(-233f, _wgslsmith_f_op_f32(floor(-443f))), -abs(0i), ~(~global0.x), vec2<u32>(_wgslsmith_sub_u32(global0.x, global0.x), ~1u)) & vec4<u32>(firstTrailingBit(min(38672u, global0.x)), 1u << (~global0.x % 32u), 1u, 4294967295u));
    global0 = _wgslsmith_clamp_vec4_u32(~func_2(), _wgslsmith_mod_vec4_u32(~reverseBits(~vec4<u32>(global0.x, global0.x, global0.x, global0.x)), ~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(global0.x, 44949u, global0.x, global0.x)), vec4<u32>(global0.x, global0.x, global0.x, global0.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(0u >> (1u % 32u)), global0.x, 4910u, ~global0.x), ~min(vec4<u32>(36178u, global0.x, global0.x, global0.x), vec4<u32>(7061u, global0.x, 0u, global0.x)) & select(min(vec4<u32>(4970u, global0.x, 84258u, global0.x), vec4<u32>(global0.x, 4862u, 12582u, global0.x)), vec4<u32>(global0.x, 24380u, 8820u, global0.x), all(vec4<bool>(true, false, true, false)))));
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(125f, -1140f) + vec2<f32>(206f, 302f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(807f, -480f))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1278f, -332f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(327f, -1613f), vec2<f32>(534f, -1383f)))))), 4913i, global0.x, vec2<u32>(global0.x, 1u)).x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1331f, 672f) * -286f));
    var_0 = _wgslsmith_sub_u32(countOneBits(global0.x) & global0.x, select(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(13048u, 2785u), firstLeadingBit(global0.x)), 4294967295u, false));
    var var_2 = Struct_1(1u == ~(~_wgslsmith_mod_u32(global0.x, global0.x)), global0.zzw, ~u_input.a.yy, ~1u);
    let var_3 = firstTrailingBit(1i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, u_input.a.wyy, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1001f, -518f, 289f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2158f))))));
}

