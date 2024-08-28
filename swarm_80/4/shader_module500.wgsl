struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: f32) -> vec2<f32> {
    var var_0 = u_input.b << (u_input.d.x % 32u);
    let var_1 = -firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 2147483647i, -2147483647i, -1i), vec4<i32>(1i, u_input.b, -20268i, u_input.b) >> (u_input.d % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, 20875i, -2147483647i, u_input.b)), ~vec4<i32>(2147483647i, 1i, u_input.b, -2147483647i))));
    let var_2 = select(!arg_0.wzx, vec3<bool>(true, _wgslsmith_mod_u32(u_input.d.x | u_input.d.x, ~4294967295u) >= abs(firstLeadingBit(arg_1.x)), select(!arg_0.x | select(false, arg_0.x, true), !(arg_2 < arg_2), true & (u_input.b >= var_1.x))), any(vec4<bool>(any(vec4<bool>(arg_0.x, false, true, arg_0.x)), !arg_0.x, all(arg_0.xy), false || arg_0.x)) | (_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1276f), arg_2) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))));
    var var_3 = ~select(arg_1 << (_wgslsmith_add_vec2_u32(~arg_1, _wgslsmith_mod_vec2_u32(arg_1, u_input.d.yw)) % vec2<u32>(32u)), vec2<u32>(~18350u, arg_1.x), (_wgslsmith_dot_vec4_u32(vec4<u32>(13621u, 86168u, 1u, 0u), vec4<u32>(1u, 28593u, 0u, 8853u)) < u_input.c.x) & arg_0.x);
    let var_4 = Struct_3(var_1.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-723f, 845f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2397f, -1035f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) + vec2<f32>(-813f, -110f)))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-775f, -653f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1116f, 2202f)) + vec2<f32>(-582f, -1017f)))), vec2<f32>(1f, 1f));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x))) * _wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(true, false, true, true), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 47703u), vec2<u32>(u_input.c.x, 1594u)), _wgslsmith_f_op_f32(-1415f * 1000f)))))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(true, true, false, true), max(u_input.c.xy, u_input.c.yz), _wgslsmith_f_op_f32(round(-1000f)))).x), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x)))));
    var var_1 = ~_wgslsmith_div_vec4_u32(max(vec4<u32>(0u, _wgslsmith_sub_u32(arg_0.a.x, u_input.a), arg_0.a.x, ~1u), countOneBits(arg_0.a)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, arg_0.a.x, u_input.a, 0u), arg_0.a ^ vec4<u32>(u_input.a, arg_0.a.x, 155404u, 4294967295u)) | _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_0.a.x, 64080u, 1u), vec4<u32>(75888u, arg_0.a.x, 55020u, u_input.a)));
    var var_2 = arg_1;
    var var_3 = u_input.b;
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> vec3<i32> {
    let var_0 = true;
    let var_1 = vec3<i32>(select(_wgslsmith_mult_i32(0i, u_input.b & arg_0.b.b), 1i, all(select(vec3<bool>(false, var_0, var_0), vec3<bool>(true, false, false), vec3<bool>(false, true, var_0)))), max(min(select(-5798i, 1i, false), arg_0.b.b << (u_input.d.x % 32u)), u_input.b), min(_wgslsmith_sub_i32(u_input.b, func_2(Struct_1(u_input.d, -1i), Struct_3(u_input.b)).b), ~u_input.b)) << (_wgslsmith_clamp_vec3_u32(u_input.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b.a.x >> (u_input.a % 32u), ~u_input.c.x, ~4294967295u), arg_0.b.a.wzy, vec3<u32>(firstTrailingBit(arg_0.c), _wgslsmith_div_u32(u_input.a, u_input.c.x), ~arg_0.b.a.x)), arg_0.b.a.yyw) % vec3<u32>(32u));
    var var_2 = Struct_3(arg_0.b.b);
    let var_3 = ~(~abs(_wgslsmith_mult_vec2_u32(u_input.d.zw, vec2<u32>(arg_0.c, 5543u)) | min(vec2<u32>(u_input.d.x, arg_0.c), vec2<u32>(u_input.c.x, u_input.c.x))));
    let var_4 = Struct_3(-_wgslsmith_clamp_i32(reverseBits(arg_0.b.b), u_input.b, func_2(func_2(arg_0.b, Struct_3(-1i)), Struct_3(arg_0.b.b)).b));
    return reverseBits(_wgslsmith_add_vec3_i32(var_1, firstLeadingBit(var_1)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3) -> u32 {
    let var_0 = min(~(~abs(vec3<i32>(2147483647i, arg_1.a, -1i))), -(~select(vec3<i32>(0i, -43229i, arg_1.a), vec3<i32>(-2147483647i, arg_1.a, u_input.b), vec3<bool>(false, false, false)))) | (vec3<i32>(11165i, 1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(9762i, 55117i, 0i), vec3<i32>(2878i, 39057i, 9865i), true), vec3<i32>(arg_1.a, -53441i, -55480i))) | func_4(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2472f, -742f, -564f, -1238f) + vec4<f32>(-1269f, 168f, -322f, -643f)), func_2(Struct_1(u_input.d, 1i), Struct_3(52846i)), 25516u >> (0u % 32u), -233f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-744f, -890f, 558f, 1167f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1993f, -457f, -739f, -600f), vec4<f32>(-1136f, -473f, 632f, -351f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2369f, -424f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1288f, 207f) - vec2<f32>(1225f, -1482f)))))));
    let var_2 = select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false)), vec4<bool>(false, all(vec3<bool>(true, true, true)), any(vec3<bool>(false, true, false)), true), vec4<bool>(true, any(vec4<bool>(false, true, true, true)), false, any(vec3<bool>(false, true, false)))));
    let var_3 = var_2.x;
    var var_4 = Struct_3(-u_input.b | -15842i);
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(17698i);
    var var_1 = _wgslsmith_sub_u32(~max(u_input.a, func_1(u_input.d.yw, Struct_3(var_0.a))), ~(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 10619u) | ~12464u));
    let var_2 = var_0.a;
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-269f * 272f), _wgslsmith_f_op_f32(1178f + 2506f), 1000f, _wgslsmith_f_op_f32(sign(672f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1000f, -506f, -850f) - vec4<f32>(1074f, -1000f, -345f, 1741f))), vec4<f32>(_wgslsmith_f_op_f32(-845f * 1345f), -1229f, _wgslsmith_f_op_f32(f32(-1f) * -1370f), _wgslsmith_f_op_f32(select(1153f, -1264f, false))))), Struct_1(~_wgslsmith_add_vec4_u32(u_input.d, u_input.d) | _wgslsmith_mult_vec4_u32(u_input.d >> (u_input.d % vec4<u32>(32u)), ~u_input.d), abs(~abs(30824i))), u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -396f));
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -818f), -1070f, var_3.a.x, _wgslsmith_f_op_f32(ceil(var_3.a.x))), _wgslsmith_f_op_vec4_f32(-var_3.a)))), var_3.b, _wgslsmith_dot_vec4_u32(~func_2(var_3.b, Struct_3(var_0.a)).a, vec4<u32>(u_input.a, var_3.c, ~var_3.b.a.x, 4294967295u)), var_3.a.x);
    var var_5 = var_4.b;
    var var_6 = Struct_3(~(-5186i));
    var_6 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, -1i ^ (var_4.b.b & u_input.b), _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, var_0.a), -vec2<i32>(var_6.a, -13343i))), ~(~vec4<i32>(-14813i, var_6.a, var_5.b, var_6.a)) >> (_wgslsmith_mod_vec4_u32(var_4.b.a, _wgslsmith_sub_vec4_u32(var_3.b.a, var_5.a)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(-759f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d * -611f)), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-var_4.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(941f + _wgslsmith_f_op_f32(var_3.d - var_4.a.x)), _wgslsmith_f_op_f32(var_4.d - _wgslsmith_f_op_f32(-var_3.d)))), 1772f), ~firstTrailingBit(firstTrailingBit(2147483647i)) ^ _wgslsmith_clamp_i32(-u_input.b, -min(u_input.b, var_4.b.b), _wgslsmith_add_i32(var_0.a, -27107i) ^ 2968i), vec2<i32>(var_3.b.b, u_input.b), var_5.a);
}

