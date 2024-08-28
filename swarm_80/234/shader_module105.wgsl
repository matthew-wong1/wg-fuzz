struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec4<f32> {
    global0 = min(vec3<u32>(global0.x, 50911u, ~global0.x), min(_wgslsmith_sub_vec3_u32(u_input.d.yzx, vec3<u32>(u_input.b, u_input.b, 11644u)) | _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1940u, 56879u), vec3<u32>(u_input.b, 68113u, u_input.d.x)), ~reverseBits(u_input.d.wwy)) << (u_input.d.zxx % vec3<u32>(32u)));
    let var_0 = _wgslsmith_clamp_vec4_u32(max(vec4<u32>(1u, u_input.d.x, ~1u, u_input.b), ~_wgslsmith_clamp_vec4_u32(~u_input.d, vec4<u32>(u_input.b, 63606u, u_input.d.x, 4294967295u), _wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(global0.x, 4294967295u, 22381u, u_input.b)))), ~_wgslsmith_clamp_vec4_u32(~max(u_input.d, vec4<u32>(u_input.b, 62203u, u_input.b, 1u)), vec4<u32>(0u, ~u_input.d.x, global0.x, 4294967295u & u_input.b), ~countOneBits(vec4<u32>(58870u, u_input.d.x, 8581u, 12067u))), _wgslsmith_sub_vec4_u32(abs(countOneBits(u_input.d)), (vec4<u32>(29148u, 0u, global0.x, 4294967295u) >> (u_input.d % vec4<u32>(32u))) & vec4<u32>(_wgslsmith_mod_u32(0u, global0.x), 19144u, 5970u, _wgslsmith_mult_u32(1u, u_input.d.x))));
    global0 = ~max(~(~min(vec3<u32>(u_input.d.x, global0.x, var_0.x), u_input.d.ywx)), abs(_wgslsmith_clamp_vec3_u32(select(var_0.xwz, u_input.d.wwz, false), abs(u_input.d.zyw), abs(vec3<u32>(4294967295u, u_input.d.x, var_0.x)))));
    global0 = select(reverseBits(vec3<u32>(select(1u, firstLeadingBit(0u), true), _wgslsmith_mod_u32(33886u, ~1u), ~(~var_0.x))), u_input.d.xxx, !(!vec3<bool>(any(vec2<bool>(false, false)), select(true, true, false), true)));
    global0 = (_wgslsmith_sub_vec3_u32(firstTrailingBit(u_input.d.zzx), var_0.zyy) & ~var_0.xxw) | u_input.d.xyy;
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-326f, -214f, arg_0.a, -1178f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, 592f, arg_0.a, -113f)))))))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: vec3<f32>) -> u32 {
    var var_0 = Struct_2(~reverseBits(u_input.a), Struct_1(~(arg_2 ^ 34592u), _wgslsmith_f_op_vec4_f32(func_3(Struct_3(772f)))), max(max(u_input.c, ~(~vec2<i32>(u_input.c.x, -2147483647i))), vec2<i32>(-1i) * -(~vec2<i32>(u_input.a.x, u_input.c.x))), min(vec4<u32>(~1u, countOneBits(1u), u_input.d.x | firstTrailingBit(78517u), arg_2 ^ ~4294967295u), countOneBits(max(u_input.d, vec4<u32>(21561u, 10212u, global0.x, 0u))) >> (~u_input.d % vec4<u32>(32u))), arg_2);
    var var_1 = Struct_2(u_input.a, Struct_1(select(~_wgslsmith_dot_vec4_u32(var_0.d, vec4<u32>(var_0.b.a, global0.x, 17044u, 4294967295u)), select(2279u, arg_2, true) << (reverseBits(1u) % 32u), true), var_0.b.b), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(10114i, _wgslsmith_clamp_i32(2797i, u_input.c.x, u_input.a.x)), _wgslsmith_clamp_i32(20304i, -u_input.c.x, reverseBits(-1i)), 0i), u_input.a.x), var_0.d, max(0u, var_0.b.a));
    let var_2 = var_1.c.x;
    return 77634u;
}

fn func_1(arg_0: bool) -> vec3<i32> {
    global0 = ~(~vec3<u32>(1u, func_2(-1865f, arg_0, 0u, vec3<f32>(1530f, 844f, 1679f)), abs(5983u)) | ~u_input.d.wwy);
    let var_0 = firstLeadingBit(i32(-1i) * -1i);
    global0 = ~min(vec3<u32>(27001u, _wgslsmith_dot_vec3_u32(u_input.d.wyw, ~u_input.d.ywz), _wgslsmith_mult_u32(11599u, global0.x) & global0.x), vec3<u32>(4294967295u, global0.x, u_input.d.x));
    global0 = u_input.d.wxy;
    global0 = _wgslsmith_mult_vec3_u32(max(abs(u_input.d.xww), vec3<u32>(4294967295u, min(1u, select(1u, global0.x, true)), global0.x)), vec3<u32>(func_2(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(-2040f))).x, arg_0 & (arg_0 & arg_0), _wgslsmith_div_u32(_wgslsmith_add_u32(77742u, u_input.d.x), ~55688u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(667f, -660f, -1399f))))), ~(~(~4294967295u)), 3811u));
    return u_input.a.wyw;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec3<i32>) -> vec3<u32> {
    global0 = u_input.d.zxz;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(417f, 368f, -776f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(309f, 1000f, -1000f))) + vec3<f32>(2049f, 965f, -704f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2512f, 687f, 844f), vec3<f32>(1984f, 580f, 454f))) + vec3<f32>(959f, -1554f, -412f))))));
    var var_1 = Struct_1(arg_1, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + _wgslsmith_f_op_f32(-var_0.x)) * var_0.x), 653f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-782f, var_0.x))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - -187f), -294f)))));
    global0 = vec3<u32>(~arg_1, 1u, 0u);
    var var_2 = Struct_2(~vec4<i32>(0i, -2147483647i, _wgslsmith_mod_i32(-2147483647i, min(40970i, arg_0)), abs(-u_input.c.x)), Struct_1(6083u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -405f, var_0.x, 684f)) * vec4<f32>(-296f, 131f, -219f, -1591f))))), vec2<i32>(-2147483647i, 1i), u_input.d, min(arg_1, ~countOneBits(2076u)));
    return ~max(vec3<u32>(_wgslsmith_div_u32(~var_2.e, 4294967295u), 1u, ~var_1.a), vec3<u32>(1u, ~17547u, ~u_input.d.x) >> ((~vec3<u32>(var_1.a, 29641u, var_1.a) << (_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, arg_1, 14289u), var_2.d.yzy) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(u_input.b, u_input.d.x, _wgslsmith_dot_vec3_u32(func_4(123854i, 19065u, func_1(true)), vec3<u32>(_wgslsmith_add_u32(34789u, u_input.d.x), 1637u, 1u) ^ ~(~u_input.d.zyz)));
    global0 = u_input.d.zxx ^ func_4(u_input.a.x, global0.x, -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, u_input.a.x, u_input.a.x), vec3<i32>(-24222i, u_input.e, 0i)));
    global0 = func_4(1i, global0.x, _wgslsmith_div_vec3_i32(u_input.a.xxx, select(u_input.a.wyy, _wgslsmith_mult_vec3_i32(u_input.a.zzw, u_input.a.wyz), vec3<bool>(true, false, true)))) & u_input.d.zzy;
    var var_0 = reverseBits(u_input.a);
    var var_1 = _wgslsmith_mult_u32(38552u, ~_wgslsmith_mod_u32(~global0.x, u_input.d.x));
    let var_2 = true;
    var var_3 = select(global0.x, ~(14081u & _wgslsmith_div_u32(1u, u_input.d.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~var_0.x, ~var_0.x, reverseBits(max(_wgslsmith_mult_i32(var_0.x, var_0.x), u_input.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1155f, 1000f, 1399f, -1615f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-997f, 1028f, 912f, 166f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1423f), 1739f, 1821f, -229f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -540f), -875f, _wgslsmith_f_op_f32(f32(-1f) * -754f), -241f) - vec4<f32>(1f, 1f, 1f, 1f))), u_input.a.xxz, ~vec3<i32>(var_0.x, _wgslsmith_clamp_i32(-1490i, min(16046i, 0i), abs(3183i)), u_input.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1082f))) - -625f));
}

