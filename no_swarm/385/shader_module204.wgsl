struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    global0 = Struct_1(countOneBits(global0.a));
    let var_0 = Struct_1(firstLeadingBit(-9424i));
    var var_1 = !select(vec3<bool>(arg_0, arg_0, !arg_0), vec3<bool>(arg_0, true, !arg_0), false);
    var var_2 = select(~vec4<u32>(abs(1u), u_input.c, abs(_wgslsmith_clamp_u32(u_input.c, 12962u, u_input.c)), _wgslsmith_add_u32(u_input.c, u_input.c) | max(u_input.c, u_input.c)), ~abs(vec4<u32>(25786u, 5685u, 0u, max(4294967295u, u_input.c))), !select(vec4<bool>(all(vec3<bool>(var_1.x, arg_0, false)), true, !arg_0, false), !vec4<bool>(arg_0, true, arg_0, arg_0), !select(vec4<bool>(arg_0, false, var_1.x, true), vec4<bool>(true, var_1.x, true, true), vec4<bool>(true, true, true, arg_0))));
    var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(104088u, var_2.x, 0u, 4294967295u), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(max(0u, var_2.x), ~u_input.c, var_2.x | 34116u, reverseBits(6174u))), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 12077u, 4294967295u, 0u), vec4<u32>(var_2.x, 25291u, u_input.c, 4294967295u), vec4<u32>(u_input.c, 1u, 24872u, 4294967295u)) | abs(vec4<u32>(var_2.x, var_2.x, u_input.c, 1u)), vec4<u32>(firstLeadingBit(u_input.c), var_2.x >> (u_input.c % 32u), _wgslsmith_sub_u32(60313u, u_input.c), select(37139u, u_input.c, true)), select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, arg_0, var_1.x, true), var_1.x))));
    return vec4<u32>(~(~abs(u_input.c)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(21741u, 1u, ~u_input.c, 60768u), ~(~vec4<u32>(0u, 9884u, 0u, var_2.x))), max(~var_2.x, ~_wgslsmith_mult_u32(31360u, u_input.c)), var_2.x), select(firstTrailingBit(23575u), 4294967295u, true), 187u);
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(abs(~52876u), ~u_input.c, ~(~u_input.c), _wgslsmith_mod_u32(u_input.c, _wgslsmith_sub_u32(firstTrailingBit(20734u), ~14548u))), min(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(func_3(true), vec4<u32>(u_input.c, u_input.c, u_input.c, 1u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), ~vec4<u32>(u_input.c, 6998u, u_input.c, 37411u))), ~vec4<u32>(u_input.c, u_input.c, _wgslsmith_mod_u32(0u, u_input.c), 4294967295u)));
    global0 = Struct_1(countOneBits(~global0.a));
    var var_1 = vec3<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) * arg_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1508f)))))));
    let var_2 = arg_1;
    var var_3 = Struct_1(max(_wgslsmith_mult_i32(~abs(global0.a), -2147483647i), -29813i));
    return any(!(!select(vec4<bool>(true, arg_1, false, arg_1), !vec4<bool>(true, false, false, var_2), vec4<bool>(var_2, arg_1, var_2, false))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec4<i32>, arg_3: vec4<i32>) -> Struct_1 {
    global0 = Struct_1(0i);
    return Struct_1(~(-13221i));
}

fn func_1() -> Struct_1 {
    global0 = func_4(select(true, true, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1243f)), true)), 792f, select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 1i, -11440i, u_input.b.x) ^ select(vec4<i32>(-25321i, 2147483647i, global0.a, global0.a), vec4<i32>(global0.a, global0.a, -2147483647i, -47680i), true), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(global0.a, global0.a, global0.a, -44793i)), select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 28191i), vec4<i32>(1i, 16053i, 0i, -6284i), vec4<bool>(false, true, true, true))), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.a, u_input.b.x, u_input.a.x, u_input.b.x) | vec4<i32>(global0.a, 19167i, 0i, 0i), min(vec4<i32>(22692i, u_input.a.x, u_input.b.x, u_input.a.x), vec4<i32>(38711i, -1i, global0.a, 1i)))), vec4<i32>(firstLeadingBit(u_input.b.x), -2147483647i, global0.a, 15982i), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(724f, -361f))), func_2(_wgslsmith_div_vec2_f32(vec2<f32>(1517f, -972f), vec2<f32>(271f, -1571f)), all(vec2<bool>(true, false))))), vec4<i32>(_wgslsmith_mod_i32(2147483647i, -(~u_input.b.x)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, global0.a, u_input.b.x), u_input.b.x) | _wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_mult_i32(-1i, global0.a)), _wgslsmith_mod_i32(select(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(0i, u_input.a.x, global0.a)), _wgslsmith_div_i32(-2147483647i, u_input.b.x), true), 1i), ~_wgslsmith_mult_i32(~global0.a, u_input.a.x)));
    global0 = func_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-382f * -596f), 1185f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1515f), _wgslsmith_f_op_f32(f32(-1f) * -813f))))), _wgslsmith_clamp_vec4_i32(~max(vec4<i32>(global0.a, 41773i, -27623i, -17050i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-18497i, global0.a, u_input.a.x, global0.a), vec4<i32>(u_input.a.x, global0.a, global0.a, -1i), vec4<i32>(7820i, -4533i, 39888i, 1i))), ~_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-29178i, u_input.b.x, u_input.a.x, global0.a), vec4<i32>(14332i, 1i, -26912i, 18431i)), vec4<i32>(-1i, 1i, 64712i, global0.a)), ~vec4<i32>(~(-1i), global0.a, global0.a, reverseBits(global0.a))), vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.b.x, global0.a, 1i, 57679i), vec4<i32>(-41336i, global0.a, u_input.a.x, 15963i)), vec4<i32>(11168i, u_input.a.x, -39723i, u_input.a.x) & vec4<i32>(53276i, u_input.b.x, 33493i, -8361i)));
    var var_0 = func_4(all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true))) || select(true, !(16852i >= global0.a), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-786f - -281f)))), vec4<i32>(select(2147483647i, ~(~global0.a), true), abs(u_input.b.x), 1i, 5578i), firstLeadingBit(vec4<i32>(global0.a, u_input.b.x, abs(u_input.b.x), -global0.a >> (1u % 32u))));
    return Struct_1(_wgslsmith_mult_i32(-1617i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = func_4(!(!((u_input.c & u_input.c) <= 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1058f, _wgslsmith_f_op_f32(f32(-1f) * -1819f))) - _wgslsmith_f_op_f32(ceil(1f))), ~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-25760i, global0.a, u_input.a.x, 2147483647i), vec4<i32>(36058i, var_0.a, var_0.a, var_0.a)), vec4<i32>(u_input.b.x, -u_input.a.x, ~var_0.a, ~(-2147483647i))), countOneBits(select(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 23769i), vec4<i32>(var_0.a, -2147483647i, u_input.b.x, -6122i)), -vec4<i32>(-10912i, 14131i, 1i, u_input.a.x) | ~vec4<i32>(var_0.a, u_input.b.x, 1i, global0.a), vec4<bool>(true, true, true, true))));
    let var_1 = vec2<i32>(-49043i, ~_wgslsmith_add_i32(-83851i, u_input.a.x));
    let var_2 = !select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), all(vec3<bool>(true, true, true))));
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(147f * -921f), _wgslsmith_f_op_f32(min(-1000f, -1000f)), 1123f, -693f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 881f, 390f, 1000f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1050f), 480f), func_3(true).x, func_3((max(4103u, 34245u) < (20348u ^ u_input.c)) | false).x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1010f, 1486f, -2082f, -251f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(151f, -1228f, -1070f, -2102f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-225f, 150f, 636f, 810f) - vec4<f32>(-741f, 205f, 535f, 614f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-963f, -876f, -1000f, -388f)))))))));
}

