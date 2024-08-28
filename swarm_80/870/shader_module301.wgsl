struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = vec4<bool>(true, true, firstTrailingBit(u_input.d << (firstTrailingBit(1u) % 32u)) >= -1173i, all(select(vec4<bool>(true, all(vec3<bool>(true, false, true)), true, true), vec4<bool>(true, true, select(false, false, true), any(vec3<bool>(false, false, false))), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false))))));
    let var_1 = arg_0 & (~_wgslsmith_div_u32(0u, 29197u) << (reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.b, 48358u, u_input.b), ~vec4<u32>(u_input.a, arg_0, 4294967295u, u_input.b))) % 32u));
    var var_2 = Struct_4(Struct_3(false));
    var_2 = Struct_4(var_2.a);
    let var_3 = Struct_1(reverseBits(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(13065u, arg_0, 1u), _wgslsmith_div_u32(~arg_0, ~12920u))), _wgslsmith_mod_vec2_i32(u_input.c, reverseBits(~vec2<i32>(-2147483647i, 1i))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -533f), _wgslsmith_f_op_f32(f32(-1f) * -123f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1250f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1495f)))), var_0.x)), _wgslsmith_f_op_f32(-1236f + _wgslsmith_div_f32(335f, -2156f))), u_input.c.x, var_0.x);
    return true;
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    let var_0 = Struct_1(u_input.a, ~(vec2<i32>(abs(u_input.c.x), _wgslsmith_add_i32(u_input.c.x, u_input.d)) ^ vec2<i32>(abs(u_input.d), -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-988f, 1297f, -1077f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(796f, -426f, 988f), vec3<f32>(-659f, -1000f, -1558f), vec3<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a)))))), u_input.d, func_3(select(u_input.a | firstLeadingBit(4294967295u), 0u, all(vec4<bool>(false, false, true, arg_0.a.a)))));
    let var_1 = Struct_3(u_input.a < ~var_0.a);
    return Struct_3(true);
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1735f), -1836f, _wgslsmith_f_op_f32(-609f + -575f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(239f, 391f))))))));
    var var_1 = -30160i;
    let var_2 = ~(~min(10174u, ~abs(50139u)));
    let var_3 = arg_1;
    var var_4 = (1i <= ~u_input.c.x) || true;
    return true;
}

fn func_1(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = !vec4<bool>(func_4(false, func_2(Struct_4(Struct_3(true)))), true, false, true);
    let var_1 = Struct_3(var_0.x);
    var_0 = !select(!(!(!vec4<bool>(var_0.x, true, true, true))), vec4<bool>(true, !var_1.a, true, var_0.x), vec4<bool>(false, false, true, all(vec3<bool>(true, true, var_0.x))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(531f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(111f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(718f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(330f, -2646f, true)) - _wgslsmith_f_op_f32(1427f - 332f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-586f)))), 977f))));
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(306f))))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1230f, _wgslsmith_f_op_f32(step(1181f, -879f)))) - -524f))));
    return var_1;
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: vec2<f32>, arg_3: f32) -> Struct_2 {
    var var_0 = arg_0.a;
    var_0 = _wgslsmith_mult_u32(~_wgslsmith_mod_u32(select(u_input.a, u_input.b, true), 8293u), firstTrailingBit(u_input.b)) == (u_input.a >> (_wgslsmith_div_u32(~52297u, u_input.b) % 32u));
    var_0 = (select(_wgslsmith_mod_i32(firstLeadingBit(u_input.c.x), arg_1), arg_1, arg_0.a) & (7044i & select(0i, -2147483647i, arg_0.a))) > _wgslsmith_clamp_i32(0i, _wgslsmith_sub_i32(-33887i, 1i) & -(-1i ^ u_input.c.x), 1i);
    let var_1 = ~min(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.b) | (vec3<u32>(28096u, u_input.a, u_input.b) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), vec3<u32>(u_input.b >> (1u % 32u), 1u, 0u)), countOneBits(vec3<u32>(u_input.a, u_input.b, u_input.b)) & vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.a, 0u), vec4<u32>(u_input.b, 45255u, u_input.b, u_input.a)), ~20261u));
    let var_2 = vec2<bool>(any(!(!select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a)))), arg_0.a);
    return Struct_2(vec4<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -36141i, arg_1), vec3<i32>(u_input.d, -29352i, arg_1)))), u_input.c.x, 1i, select(i32(-1i) * -2147483647i, select(arg_1, ~u_input.d, true), 0i != arg_1)));
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), -489f, _wgslsmith_f_op_f32(abs(1759f)), _wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-100f, arg_0, -1464f, -2208f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, arg_0, -2497f, arg_0))), all(vec4<bool>(false, true, false, false))))))));
    var var_1 = Struct_1(_wgslsmith_mult_u32(~arg_2, max(~(~0u), reverseBits(73688u))), firstTrailingBit(vec2<i32>(~(~42763i), _wgslsmith_sub_i32(min(65683i, u_input.d), -10516i))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -1693f) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-857f, -1423f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2269f), 109f)), _wgslsmith_f_op_f32(sign(var_0.x))))), ~func_5(func_1(vec3<u32>(1u, arg_2, 56434u) & vec3<u32>(0u, 1u, 13217u)), ~38094i & (u_input.c.x & arg_1.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zw * var_0.yy)), var_0.x).a.x, func_2(Struct_4(func_2(Struct_4(Struct_3(true))))).a);
    var var_2 = _wgslsmith_mult_vec4_u32(abs(~abs(abs(vec4<u32>(arg_2, u_input.a, u_input.a, 4294967295u)))), ~abs(vec4<u32>(_wgslsmith_add_u32(var_1.a, arg_2), 4294967295u, 4294967295u, var_1.a | arg_2)));
    var var_3 = Struct_2(_wgslsmith_div_vec4_i32(arg_1.a, vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_1.a.wzw, vec3<i32>(arg_1.a.x, -23787i, 7633i)), 1i), u_input.d << (_wgslsmith_mod_u32(4294967295u, 35764u) % 32u), 2147483647i & arg_1.a.x, ~(u_input.c.x ^ var_1.d))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(max(var_1.c.x, _wgslsmith_f_op_f32(ceil(var_1.c.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - 1236f))), -1286f, _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(324f - 743f)))))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))))) >= _wgslsmith_f_op_f32(step(1984f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-493f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(func_6(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1493f, -671f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -385f) + _wgslsmith_f_op_f32(-1253f + 448f)))), func_5(func_1(vec3<u32>(u_input.a, 0u, 0u)), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, -45828i, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.d, 2385i), vec3<i32>(u_input.d, -18557i, -13735i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-699f, -841f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1903f, -579f) * vec2<f32>(582f, 478f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-845f, 263f)) + _wgslsmith_f_op_f32(f32(-1f) * -752f))), _wgslsmith_sub_u32(~max(7423u, 1u), 1u)), true, all(vec4<bool>(true, true, true, true)));
    let var_1 = vec4<u32>(4294967295u, ~max(_wgslsmith_div_u32(~4448u, u_input.b << (31525u % 32u)), ~firstTrailingBit(1u)), ~(~max(_wgslsmith_add_u32(5873u, u_input.b), u_input.a)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, _wgslsmith_clamp_u32(48154u, u_input.b, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(24740u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, 95517u, 83714u, u_input.a))), vec3<u32>(u_input.b, 1u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b, 4294967295u), 4294967295u, reverseBits(48106u)))));
    var var_2 = ~5415u;
    var_2 = 4294967295u;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(-590f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-322f - _wgslsmith_f_op_f32(f32(-1f) * -537f))), 1f);
    var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(434f, -660f, var_3.x, -1857f), vec4<f32>(var_3.x, 1244f, 1000f, 618f))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(421f * 1000f), _wgslsmith_f_op_f32(max(-764f, -1239f)), _wgslsmith_f_op_f32(max(var_3.x, var_3.x)), _wgslsmith_f_op_f32(-var_3.x))))), ~var_1, 23023i, var_3.x);
}

