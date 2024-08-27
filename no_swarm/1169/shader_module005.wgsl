struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32) -> vec3<f32> {
    let var_0 = Struct_2(-_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -6543i), ~(~vec2<i32>(-1i, -63192i))), Struct_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(-72409i, -54705i), vec2<i32>(1i, 1i)) | min(~8579i, _wgslsmith_add_i32(8235i, -2147483647i)), reverseBits(18090u), ~u_input.b.zz, _wgslsmith_sub_u32(19323u, u_input.a)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-760f, -126f)), _wgslsmith_f_op_f32(-2136f + arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2369f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 3424f) * arg_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1718f * 270f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1071f, 307f))))));
    var var_1 = var_0.c;
    let var_2 = var_0.b.c.x;
    var_1 = any(!vec4<bool>(true, var_0.c, var_0.c, select(all(vec4<bool>(false, var_0.c, var_0.c, true)), any(vec3<bool>(var_0.c, false, false)), var_0.c)));
    var_1 = (i32(-1i) * -abs(-var_0.b.a)) > _wgslsmith_add_i32(-6537i, abs(1i));
    return vec3<f32>(_wgslsmith_f_op_f32(1067f * _wgslsmith_f_op_f32(f32(-1f) * -542f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 - -247f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d.x)))))), _wgslsmith_f_op_f32(-var_0.d.x));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>) -> vec2<i32> {
    var var_0 = 1410f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)));
    let var_1 = firstTrailingBit(~4294967295u);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(786f - _wgslsmith_div_f32(-946f, _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(f32(-1f) * -1416f)))))), arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))))).x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1502f) * _wgslsmith_f_op_f32(trunc(arg_1.x))))));
    var_2 = vec4<f32>(arg_0, -1000f, -813f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, 992f, false))) - _wgslsmith_f_op_f32(-377f * _wgslsmith_f_op_f32(f32(-1f) * -1521f)))));
    return _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-34483i, _wgslsmith_div_i32(1i, 4935i)), -10360i >> (min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 4294967295u), vec3<u32>(0u, 21732u, u_input.a)), 54015u) % 32u)), vec2<i32>(~1i ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(-26726i, 2147483647i), vec2<i32>(-41750i, 74679i)) >> (var_1 % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(24572i, 58208i, 20941i), vec3<i32>(17268i, 1i, -25003i)), vec3<i32>(1i, -2147483647i, -2147483647i) >> (u_input.b % vec3<u32>(32u))) >> (~reverseBits(var_1) % 32u)));
}

fn func_2(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = func_4(arg_0, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, arg_1, -958f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -1111f)) - _wgslsmith_f_op_vec3_f32(func_3(arg_1, arg_1)))))));
    let var_1 = 1u;
    var var_2 = Struct_2(~(-(var_0 & max(var_0, var_0))), Struct_1(var_0.x, 4958u, reverseBits(~_wgslsmith_mult_vec2_u32(vec2<u32>(682u, u_input.a), vec2<u32>(var_1, 4294967295u))), 5780u), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_0), arg_1, -2341f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-217f, arg_1, arg_0, arg_0))))) * vec4<f32>(-768f, arg_1, _wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(1000f * arg_0)))));
    var_2 = Struct_2(vec2<i32>(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), var_2.d.ywy).x, 49112i >> (var_2.b.b % 32u)), var_2.b, var_2.c, vec4<f32>(1640f, _wgslsmith_f_op_f32(265f - _wgslsmith_div_f32(var_2.d.x, arg_1)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1560f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1973f * -1948f)))));
    var var_3 = ~1u;
    return max(~u_input.b.x, var_2.b.d);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_mod_i32(-_wgslsmith_add_i32(20550i, -1i), -4068i), 26258u, _wgslsmith_mod_vec2_u32(vec2<u32>(abs(1u), abs(689u)), vec2<u32>(u_input.a | u_input.b.x, func_2(-1367f, 465f))), u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(6963i), 1i, 33282i, 1i), -vec4<i32>(1i, 1i, 1i, 1i)) ^ abs(~_wgslsmith_add_i32(12876i, 0i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-786f, -1218f, -197f))))));
    let var_2 = var_0;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(604f, 429f))), var_1.x);
    let var_4 = Struct_2(vec2<i32>(-58502i, ~func_4(_wgslsmith_f_op_f32(f32(-1f) * -1245f), var_1).x), Struct_1(2147483647i, _wgslsmith_sub_u32(countOneBits(u_input.b.x), var_0.a.d), vec2<u32>(0u, var_2.a.d), ~u_input.a), var_1.x < _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x)), -165f, var_1.x))));
    return var_0.a;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    return _wgslsmith_f_op_vec3_f32(func_3(-1000f, _wgslsmith_f_op_vec3_f32(func_3(1313f, _wgslsmith_f_op_f32(trunc(182f)))).x)).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_5(Struct_3(func_1(), select(1i, -func_1().a, true)), _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(0i >> (u_input.a % 32u), -66253i)), vec2<i32>(func_4(-1597f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-307f, 1150f, 1155f), vec3<f32>(-420f, -1630f, -1023f), true))).x, select(21913i, -1i, false) | ~81961i)), select(vec3<bool>((0i << (u_input.a % 32u)) <= firstTrailingBit(-12656i), 4294967295u == ~u_input.a, true && all(vec3<bool>(true, false, false))), !vec3<bool>(select(true, true, true), true, true), select(vec3<bool>(true, true, any(vec2<bool>(false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(-17977i, 2147483647i), vec2<i32>(1i, 1i)), ~u_input.b.x, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(29028u, u_input.a, u_input.b.x)), ~56394u), reverseBits(firstTrailingBit(abs(4294967295u))))));
    let var_1 = abs(0u);
    var var_2 = ~min(max(~u_input.b, ~u_input.b), u_input.b);
    var_2 = vec3<u32>(var_2.x, var_2.x, 15978u);
    var_2 = ~min(~vec3<u32>(~var_1, var_1, ~var_1), select(u_input.b, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 0u, 1u), vec3<u32>(4294967295u, var_1, var_1) | vec3<u32>(var_1, var_1, var_2.x)), true));
    var var_3 = var_0;
    var_2 = ~_wgslsmith_add_vec3_u32(abs(u_input.b) >> (countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1, 16006u, 13525u), u_input.b, vec3<u32>(1u, var_2.x, 8237u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_clamp_u32(var_1, 0u, 4294967295u)), var_1, ~min(56624u, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(402f, _wgslsmith_f_op_f32(abs(var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2110f * var_0) + -2235f)))), select(~firstTrailingBit(reverseBits(u_input.b)), firstLeadingBit(min(_wgslsmith_div_vec3_u32(u_input.b, u_input.b), firstLeadingBit(u_input.b))), (15088u >> (1u % 32u)) <= max(var_1, max(var_1, 1u))));
}

