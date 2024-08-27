struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec2<i32> = vec2<i32>(-63432i, 3370i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(any(select(vec2<bool>(global0.x > 0u, any(vec2<bool>(true, false))), vec2<bool>(true, true), vec2<bool>(false, false))));
    global0 = vec4<u32>(~reverseBits(_wgslsmith_dot_vec3_u32(firstTrailingBit(global0.wzw), ~global0.wwx)), ~abs(14826u), 1u, abs((~global0.x << (select(global0.x, global0.x, var_0.a) % 32u)) & ~(~1u)));
    var var_1 = !all(vec2<bool>(_wgslsmith_f_op_f32(-787f - 857f) <= _wgslsmith_f_op_f32(ceil(1178f)), var_0.a));
    let var_2 = var_0;
    global0 = min(~max(firstLeadingBit(vec4<u32>(1u, global0.x, global0.x, 60840u)), vec4<u32>(global0.x, 39485u, global0.x, global0.x)), vec4<u32>(max(0u >> (global0.x % 32u), min(1u, 1u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, global0.x, global0.x, 1u), ~vec4<u32>(4294967295u, 1u, 37880u, 22618u)), _wgslsmith_div_u32(select(global0.x, global0.x, var_0.a), ~global0.x), ~_wgslsmith_mod_u32(global0.x, global0.x))) << (firstLeadingBit(vec4<u32>(91566u, global0.x & 19630u, global0.x >> (4294967295u % 32u), global0.x) << (vec4<u32>(_wgslsmith_mult_u32(global0.x, 8778u), firstLeadingBit(0u), _wgslsmith_sub_u32(4294967295u, global0.x), ~98933u) % vec4<u32>(32u))) % vec4<u32>(32u));
    return _wgslsmith_sub_u32(~abs(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 1u, 1u, 1u), vec4<u32>(global0.x, 33157u, 1u, 46402u)), vec4<u32>(51482u, 4294967295u, global0.x, global0.x))), 51013u);
}

fn func_2() -> vec2<f32> {
    global0 = ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~global0.x, ~7398u, _wgslsmith_mod_u32(global0.x, global0.x), global0.x), vec4<u32>(global0.x, global0.x, 0u, ~global0.x)), vec4<u32>(reverseBits(func_3()), select(max(4294967295u, global0.x), _wgslsmith_mod_u32(22867u, 92310u), any(vec4<bool>(true, false, true, false))), 1u, global0.x));
    let var_0 = (u_input.a & global1.x) << ((min(_wgslsmith_mod_u32(43984u, 31754u), firstTrailingBit(global0.x & 4294967295u)) | 1223u) % 32u);
    let var_1 = Struct_2(Struct_1(all(vec3<bool>(false, true, true))), Struct_1(global0.x <= (1u << (~4294967295u % 32u))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-191f, -464f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1366f, -857f) - vec2<f32>(-381f, -1148f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(617f + 1058f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(2030f, 914f))), !any(!vec4<bool>(var_1.a.a, var_1.a.a, false, true)))));
}

fn func_1() -> u32 {
    var var_0 = !(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), false), vec4<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(false, true, true, true)), true, all(vec4<bool>(true, false, false, true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1127f, 914f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1317f, -757f), vec2<f32>(-473f, 1519f)))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1196f, -768f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1642f, -597f) + vec2<f32>(-462f, 1024f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_2())))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(894f, -262f))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-145f, -447f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-390f, 399f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-2679f, -216f) * vec2<f32>(-119f, 1515f))))))));
    global1 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(reverseBits(u_input.a), _wgslsmith_clamp_i32(global1.x, 50446i, u_input.a)) >> (vec2<u32>(~global0.x, 1u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(global1.x, 1i)) >> (countOneBits(vec2<u32>(global0.x, global0.x)) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(global1.x, global1.x), vec2<i32>(-19894i, u_input.a))), ~countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 44780i), vec2<i32>(global1.x, global1.x)))), select(vec2<i32>(-26376i, u_input.a), vec2<i32>(global1.x, abs(u_input.a)) >> (~vec2<u32>(global0.x, 0u) % vec2<u32>(32u)), true));
    global1 = -(-max(vec2<i32>(35585i, -38447i), vec2<i32>(global1.x, -1i)) ^ vec2<i32>(_wgslsmith_mult_i32(-30160i, 1i), 21862i)) << (global0.zw % vec2<u32>(32u));
    global0 = ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(48500u, 7948u, global0.x, global0.x) << (vec4<u32>(global0.x, 69257u, global0.x, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(0u, 4294967295u, 1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 1u), vec4<u32>(global0.x, global0.x, 4294967295u, 0u), vec4<u32>(1u, 8611u, global0.x, 5721u)))) ^ ~(~(~vec4<u32>(global0.x, global0.x, 4294967295u, global0.x) | (vec4<u32>(global0.x, 9215u, global0.x, global0.x) ^ vec4<u32>(global0.x, global0.x, 34764u, 4294967295u))));
    return reverseBits(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(global0.xy, global0.zx) | 50677u, ~(firstLeadingBit(4294967295u) | firstLeadingBit(global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, 0u, global0.x), vec4<u32>(global0.x, global0.x, 18112u, global0.x)), select(vec4<u32>(4294967295u, global0.x, 69978u, 4294967295u) >> (vec4<u32>(1u, 1u, global0.x, 4294967295u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(1u, global0.x, global0.x, global0.x)), vec4<bool>(true, true, true, true))) ^ min(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 1u, global0.x, 44219u), vec4<u32>(global0.x, global0.x, 36978u, global0.x)) << (min(vec4<u32>(global0.x, global0.x, 25956u, global0.x), vec4<u32>(global0.x, 1u, global0.x, 4294967295u)) % vec4<u32>(32u)), countOneBits(~vec4<u32>(504u, global0.x, global0.x, global0.x))), ~_wgslsmith_mod_vec4_u32((vec4<u32>(31103u, 1u, 4294967295u, 11006u) & vec4<u32>(global0.x, 29331u, 12620u, 63139u)) >> (abs(vec4<u32>(global0.x, global0.x, global0.x, global0.x)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(select(vec4<u32>(60676u, global0.x, 76088u, global0.x), vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<bool>(false, true, true, false)), vec4<u32>(global0.x, global0.x, 41509u, global0.x) & vec4<u32>(global0.x, 17883u, 70792u, 24552u))), ~abs(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 44704u), global0.xw), firstTrailingBit(79192u), func_1())));
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(global0.x, 98288u, 4294967295u, 16589u) << ((vec4<u32>(30179u, global0.x, global0.x, 54782u) & vec4<u32>(1u, 0u, global0.x, global0.x)) % vec4<u32>(32u)), abs(~vec4<u32>(global0.x, 0u, global0.x, global0.x))), vec4<u32>(20474u, 24887u, 4294967295u, _wgslsmith_mult_u32(~4294967295u, func_1())), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(global0.x, global0.x, 25309u, 60111u), vec4<u32>(17915u, global0.x, 8183u, global0.x) ^ vec4<u32>(1u, 48685u, global0.x, global0.x))) & vec4<u32>(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_clamp_u32(15566u, 21524u, global0.x)) >> (~(~global0.x) % 32u), global0.x, global0.x, global0.x);
    global0 = vec4<u32>(min(_wgslsmith_div_u32(~0u, var_0.x) & countOneBits(35266u ^ var_0.x), global0.x), _wgslsmith_sub_u32(1u, var_0.x), 25896u, var_0.x);
    let var_1 = false;
    var var_2 = 1i;
    var var_3 = Struct_1(false);
    var_3 = Struct_1(true);
    let var_4 = Struct_2(Struct_1(true), Struct_1(select(true, true, !all(vec2<bool>(true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

