struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec3<u32>, arg_3: bool) -> u32 {
    var var_0 = Struct_1(~select(~vec4<u32>(1u, arg_2.x, arg_2.x, arg_2.x), vec4<u32>(1u, 9853u, arg_2.x, arg_2.x), !vec4<bool>(false, arg_3, arg_3, false)) ^ (countOneBits(select(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 14717u), vec4<u32>(arg_2.x, 78485u, arg_2.x, 0u), vec4<bool>(arg_3, arg_3, arg_3, arg_3))) & (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, 83174u, 30414u), vec4<u32>(4155u, arg_2.x, arg_2.x, arg_2.x), vec4<u32>(1u, arg_2.x, arg_2.x, arg_2.x)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 68954u, arg_2.x, 4262u), vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<u32>(2172u, arg_2.x, 67594u, arg_2.x)))), ~firstLeadingBit(~(arg_2.x & arg_2.x)), _wgslsmith_add_vec3_i32(~select(~vec3<i32>(arg_1, arg_0, 4977i), ~u_input.a, true), -((u_input.a << (arg_2 % vec3<u32>(32u))) | _wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_0, arg_1), u_input.a))));
    let var_1 = Struct_1(~firstTrailingBit(~(vec4<u32>(arg_2.x, 80367u, 82750u, var_0.b) | var_0.a)), _wgslsmith_dot_vec2_u32(~(~(~arg_2.zx)), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(2254u, arg_2.x), var_0.a.wz, ~vec2<u32>(4294967295u, var_0.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.x, var_0.a.x), var_0.a.zy) >> (vec2<u32>(var_0.a.x, 0u) % vec2<u32>(32u)), true)), vec3<i32>(~arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.c.zx, u_input.a.zx), -12021i, arg_1), u_input.a), ~(-1i)));
    let var_2 = Struct_2(!(!select(!vec4<bool>(false, arg_3, arg_3, false), !vec4<bool>(true, arg_3, arg_3, true), select(true, arg_3, true))), _wgslsmith_dot_vec2_u32(~arg_2.xx, vec2<u32>(abs(4294967295u), ~(~5235u))), 363f, Struct_1(countOneBits(firstTrailingBit(~var_1.a)), 0u, vec3<i32>(_wgslsmith_mult_i32(arg_1, 12056i), var_0.c.x, firstLeadingBit(-2147483647i))));
    var var_3 = vec2<bool>(true, true);
    let var_4 = abs(~_wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(arg_2.zz, var_2.d.a.xy), ~vec2<u32>(arg_2.x, 5800u)));
    return ~var_4.x >> (4294967295u % 32u);
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = Struct_3(Struct_1(vec4<u32>(4294967295u, ~4294967295u, func_3(1i, u_input.a.x, vec3<u32>(1u, 1u, 49832u), true), 25007u), 4294967295u, u_input.a));
    var_0 = Struct_3(Struct_1(max(var_0.a.a, var_0.a.a), var_0.a.a.x, u_input.a));
    let var_1 = vec3<bool>(false, any(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true))), true);
    var_0 = Struct_3(Struct_1(abs(var_0.a.a), countOneBits(~firstLeadingBit(0u)), ~firstTrailingBit(min(vec3<i32>(-7346i, 0i, 2147483647i), vec3<i32>(55258i, -29266i, arg_0)))));
    var_0 = Struct_3(Struct_1(~var_0.a.a, firstTrailingBit(var_0.a.a.x), reverseBits(vec3<i32>(-30952i, 0i, -2147483647i))));
    return var_0.a.a.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = any(vec2<bool>(true, any(vec3<bool>(false, true, any(vec2<bool>(false, false))))));
    let var_1 = (~arg_2 << (~_wgslsmith_div_vec4_u32(~arg_2, arg_2 & vec4<u32>(0u, 62293u, arg_3.x, 36962u)) % vec4<u32>(32u))) & arg_2;
    var var_2 = Struct_3(arg_1);
    var var_3 = Struct_3(Struct_1(vec4<u32>(~min(5573u, 10048u), abs(4294967295u), ~min(var_1.x, arg_0.x), ~arg_1.b), 0u, ~_wgslsmith_mod_vec3_i32(~arg_1.c, var_2.a.c)));
    var var_4 = Struct_2(vec4<bool>(all(!select(vec3<bool>(var_0, var_0, true), vec3<bool>(false, true, false), var_0)), any(vec2<bool>(var_0, true)), var_0, all(vec3<bool>(true, any(vec4<bool>(true, var_0, var_0, true)), true))), max(1u, var_2.a.a.x >> (func_2(_wgslsmith_clamp_i32(arg_1.c.x, var_3.a.c.x, 48243i)) % 32u)), 1f, Struct_1(vec4<u32>(var_1.x, var_3.a.b, ~select(102422u, arg_1.b, false), (var_3.a.a.x >> (var_3.a.b % 32u)) | (var_3.a.a.x << (var_1.x % 32u))), func_2(~var_2.a.c.x), vec3<i32>(_wgslsmith_add_i32(1i, u_input.a.x) ^ var_2.a.c.x, 24494i, var_2.a.c.x)));
    return var_3.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, -859f, arg_1), _wgslsmith_f_op_vec3_f32(-arg_0)));
    var var_1 = func_4(~vec3<u32>(1u, ~func_2(u_input.a.x), 1u), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_sub_u32(70912u, 0u), 1u, _wgslsmith_sub_u32(35955u, 30601u)), vec4<u32>(~4294967295u, 0u, ~1u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 102476u, 9299u, 129944u), firstTrailingBit(vec4<u32>(15230u, 4294967295u, 0u, 0u)))), ~0u, vec3<i32>(abs(_wgslsmith_div_i32(u_input.a.x, arg_2)), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, -5397i, arg_2, arg_2), min(vec4<i32>(arg_2, arg_2, u_input.a.x, arg_2), vec4<i32>(1i, u_input.a.x, arg_2, arg_2))), arg_2)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, min(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 62477u), 1u), 1u, ~1u), vec4<u32>(firstTrailingBit(4294967295u), _wgslsmith_mult_u32(~625u, func_2(-1i)), min(~0u, ~72842u), ~(~193u))), vec2<u32>(~1u, ~14473u));
    let var_2 = select(select(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), !(1u > var_1.a.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, select(true, false, false))), !(func_3(u_input.a.x, 1i, var_1.a.wxx, true) == 76191u)), select(vec4<bool>(1i >= reverseBits(var_1.c.x), true, _wgslsmith_f_op_f32(exp2(arg_0.x)) != _wgslsmith_f_op_f32(arg_0.x * arg_0.x), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), all(vec2<bool>(false, true)))), select(vec4<bool>(!(var_0.x < -422f), true, all(vec2<bool>(false, false)), !any(vec4<bool>(true, true, false, true))), !vec4<bool>(all(vec4<bool>(false, true, true, false)), any(vec4<bool>(false, true, false, false)), -2147483647i == arg_2, true), select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), all(vec3<bool>(false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), false)));
    let var_3 = -_wgslsmith_clamp_vec4_i32((_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.c.x, arg_2, arg_2, u_input.a.x), vec4<i32>(-15494i, 13016i, var_1.c.x, 54972i)) & vec4<i32>(u_input.a.x, -13824i, arg_2, var_1.c.x)) ^ vec4<i32>(29771i, 0i, ~0i, arg_2), vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(u_input.a.x, 0i)), -(-2147483647i << (var_1.a.x % 32u)), max(-916i, _wgslsmith_add_i32(var_1.c.x, u_input.a.x)), 0i), -(~vec4<i32>(-52596i, -1i, -43117i, arg_2) | min(vec4<i32>(0i, 97751i, u_input.a.x, 0i), vec4<i32>(arg_2, -1i, 1i, -2147483647i))));
    var_1 = func_4(vec3<u32>(var_1.b, 4294967295u, 82714u), Struct_1(~_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.a.x, var_1.b, var_1.a.x, var_1.b), vec4<u32>(4294967295u, var_1.b, 20174u, 258u)), var_1.a.x ^ 14911u, ~(func_4(var_1.a.yxz, Struct_1(vec4<u32>(var_1.a.x, var_1.b, 48802u, var_1.a.x), var_1.b, var_1.c), var_1.a, vec2<u32>(70778u, var_1.b)).c >> (vec3<u32>(var_1.b, var_1.b, var_1.b) % vec3<u32>(32u)))), vec4<u32>(~4294967295u, var_1.b, ~0u, _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(53967u, 1u, var_1.a.x), vec3<u32>(var_1.b, 8169u, 15338u)), _wgslsmith_add_vec3_u32(~var_1.a.yzy, _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x), var_1.a.zxw)))), max(~max(var_1.a.wx, vec2<u32>(4294967295u, var_1.a.x)) >> (vec2<u32>(firstTrailingBit(var_1.a.x), 0u) % vec2<u32>(32u)), vec2<u32>(~var_1.a.x, _wgslsmith_mod_u32(var_1.b, var_1.b)) | var_1.a.xx));
    return ~var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<u32>(1u, 4294967295u, abs(firstTrailingBit(23157u)), 1u) & _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~21202u, 73956u, _wgslsmith_sub_u32(58111u, 6881u), 91651u)), _wgslsmith_mod_u32(firstTrailingBit(~(~16596u)), 11557u), -u_input.a);
    var_0 = Struct_1(var_0.a, ~abs(~var_0.a.x), firstTrailingBit(reverseBits(u_input.a)));
    var var_1 = Struct_2(vec4<bool>(false & any(vec2<bool>(true, true)), !any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), true, false), 38938u, -1000f, Struct_1(var_0.a << (~(var_0.a & var_0.a) % vec4<u32>(32u)), _wgslsmith_clamp_u32(var_0.a.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), abs(vec2<u32>(15015u, var_0.b))), var_0.a.x), ~vec3<i32>(-1i, countOneBits(2147483647i), -var_0.c.x)));
    let var_2 = vec3<bool>(var_1.a.x, !var_1.a.x, false);
    let var_3 = firstLeadingBit(firstTrailingBit(~var_1.d.a.x)) | ~(~func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-150f, var_1.c, var_1.c) - vec3<f32>(var_1.c, var_1.c, -947f)), _wgslsmith_f_op_f32(-var_1.c), var_1.d.c.x));
    var var_4 = Struct_3(Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x, func_2(0i), var_1.b, ~var_3), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.a, var_0.a), ~var_0.a)), _wgslsmith_sub_u32(var_3, ~var_0.a.x) & var_3, var_1.d.c));
    var var_5 = func_4(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, ~2466u, 1u), var_1.d.a.zzw)), var_4.a, var_4.a.a, var_0.a.wy | var_4.a.a.xy);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(var_3, _wgslsmith_dot_vec4_u32(var_4.a.a, var_0.a), 1u, abs(64500u)) & func_4(select(var_4.a.a.yyw, var_1.d.a.wwx, var_1.a.zxw), Struct_1(var_0.a, 0u, var_4.a.c), vec4<u32>(0u, 0u, var_4.a.a.x, var_0.b), vec2<u32>(68616u, var_5.b) >> (vec2<u32>(72407u, 32004u) % vec2<u32>(32u))).a, var_5.a, !any(vec4<bool>(var_1.a.x, var_1.a.x, var_2.x, var_2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, 519f)))), u_input.a.x);
}

