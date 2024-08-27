struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> i32 {
    var var_0 = Struct_4(u_input.b.xx ^ u_input.b.zy, select(!select(select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, arg_0.d), arg_0.a), !vec2<bool>(arg_0.a, true), vec2<bool>(true, arg_0.d)), vec2<bool>(any(vec3<bool>(true, true, true)), arg_0.d || false), vec2<bool>(!arg_0.a | true, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(~arg_1, firstTrailingBit(arg_1), 1u, u_input.a) ^ reverseBits(firstTrailingBit(vec4<u32>(107u, u_input.a, 4294967295u, 1u))), max(_wgslsmith_sub_vec4_u32(vec4<u32>(17772u, arg_2, 4294967295u, 9095u) << (vec4<u32>(56670u, arg_2, arg_2, 1u) % vec4<u32>(32u)), ~vec4<u32>(arg_2, 33452u, arg_1, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, arg_1, 12121u, arg_1), vec4<u32>(6618u, u_input.a, arg_2, 41393u)) ^ vec4<u32>(1u, 53949u, 4294967295u, u_input.a))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(314f, -1034f) + vec2<f32>(arg_0.b.x, arg_0.b.x)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, arg_0.b.x), arg_0.b))) - vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -241f))), ~firstTrailingBit(u_input.c) ^ _wgslsmith_mod_i32(u_input.c, firstLeadingBit(0i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b.x, -1000f, arg_0.c.x, arg_0.b.x), vec4<f32>(678f, arg_0.c.x, -1348f, -268f)))), vec4<u32>(abs(u_input.b.x & 4294967295u), _wgslsmith_clamp_u32(31234u, ~1u, 4631u), ~_wgslsmith_div_u32(arg_2, arg_1), ~(~1u)), vec2<bool>(true, true)), Struct_2(vec2<f32>(-873f, arg_0.c.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -14019i, u_input.c), vec3<i32>(-2147483647i, u_input.c, 50211i)), arg_0.c, ~reverseBits(vec4<u32>(0u, 1u, arg_1, arg_2)), !select(select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.d, arg_0.a), vec2<bool>(false, true)), select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, true)), select(vec2<bool>(true, arg_0.d), vec2<bool>(arg_0.d, arg_0.a), vec2<bool>(false, true)))));
    var_0 = Struct_4(~u_input.b.zy, !var_0.e.e, ~_wgslsmith_clamp_vec4_u32((vec4<u32>(arg_1, arg_2, arg_1, arg_1) << (var_0.d.d % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(var_0.c, vec4<u32>(arg_2, 1u, u_input.a, var_0.a.x)) % vec4<u32>(32u)), ~var_0.c, ~var_0.d.d), var_0.d, var_0.d);
    var_0 = Struct_4(u_input.b.zy, !select(!var_0.d.e, vec2<bool>(true, true), arg_0.a), ~firstTrailingBit(~firstLeadingBit(var_0.c)), Struct_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.e.a.x, 425f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c.ww) - var_0.e.c.wx))), var_0.d.b, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-906f)), _wgslsmith_f_op_f32(floor(1345f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(974f * -1000f))), -482f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(934f)))), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, u_input.a, 4294967295u, u_input.a)), reverseBits(var_0.d.d)), select(var_0.e.e, !(!var_0.e.e), var_0.e.e)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(exp2(var_0.e.a.x))), -1i, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.e.a.x)))), 1337f, arg_0.c.x, var_0.d.c.x), _wgslsmith_div_vec4_u32((vec4<u32>(0u, u_input.a, 1u, 0u) << (vec4<u32>(u_input.b.x, u_input.a, var_0.d.d.x, arg_2) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_u32(vec4<u32>(48088u, 4294967295u, 48609u, var_0.a.x), var_0.c), vec4<u32>(firstLeadingBit(1u), u_input.a, 20981u, var_0.a.x)), select(!(!vec2<bool>(true, arg_0.d)), !(!vec2<bool>(arg_0.a, var_0.d.e.x)), vec2<bool>(arg_0.d, any(vec4<bool>(var_0.b.x, false, arg_0.d, arg_0.a))))));
    var_0 = Struct_4(vec2<u32>(select(u_input.a, _wgslsmith_mult_u32(var_0.d.d.x, arg_1 >> (arg_1 % 32u)), var_0.e.e.x || (1256u < var_0.c.x)), 19584u), select(vec2<bool>(arg_0.a, var_0.d.e.x), var_0.d.e, all(select(vec2<bool>(var_0.d.e.x, false), vec2<bool>(var_0.d.e.x, false), select(vec2<bool>(false, arg_0.d), vec2<bool>(false, true), false)))), select(var_0.c, ~(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_1, arg_1, 42354u), var_0.c) & (vec4<u32>(0u, u_input.b.x, 1u, var_0.c.x) | vec4<u32>(70347u, u_input.a, var_0.c.x, arg_1))), !(!(!vec4<bool>(false, false, false, var_0.d.e.x)))), var_0.d, var_0.e);
    var var_1 = !vec3<bool>(all(var_0.d.e), true, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.e.a.x, 196f), var_0.e.c.x) == 158f);
    return countOneBits(26354i);
}

fn func_2(arg_0: i32) -> vec4<i32> {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(0i & ((u_input.c << (u_input.b.x % 32u)) ^ ~arg_0), -1i), _wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0, u_input.c, -1i, 0i), vec4<i32>(-1i, u_input.c, 1i, 0i)), _wgslsmith_sub_i32(countOneBits(-25994i), -func_3(Struct_1(true, vec2<f32>(-1480f, -1000f), vec4<f32>(907f, -225f, -820f, 954f), false), u_input.a, u_input.b.x))));
    var_0 = vec2<i32>(-arg_0, u_input.c);
    var_0 = _wgslsmith_mult_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(-arg_0, 0i), max(_wgslsmith_div_vec2_i32(vec2<i32>(-51949i, var_0.x), vec2<i32>(35059i, -2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, arg_0), vec2<i32>(2147483647i, 0i)))), vec2<i32>(var_0.x, (~(-2147483647i) >> ((u_input.b.x & u_input.a) % 32u)) & 13867i));
    var var_1 = Struct_3(1i, true, Struct_1(!any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1164f, _wgslsmith_f_op_f32(abs(405f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1355f, 2838f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f)))), true));
    var_0 = _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(~arg_0, max(i32(-1i) * -48440i, arg_0))), countOneBits(firstTrailingBit(vec2<i32>(0i, 1382i))) >> (vec2<u32>(u_input.b.x, ~u_input.b.x) % vec2<u32>(32u)), -(~min(vec2<i32>(-7948i, u_input.c), vec2<i32>(2147483647i, 0i)) << (vec2<u32>(~u_input.b.x, 20186u >> (u_input.a % 32u)) % vec2<u32>(32u))));
    return -vec4<i32>(~u_input.c, var_0.x, var_1.a, arg_0);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: u32) -> Struct_2 {
    var var_0 = -1000f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), 1000f), _wgslsmith_f_op_f32(f32(-1f) * -791f))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1758f))));
    var var_1 = Struct_3(u_input.c, false, Struct_1(any(!vec4<bool>(arg_2.x, false, true, arg_2.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-151f, 234f))), -884f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1681f, 1055f, 1000f, -1490f)))))), !arg_2.x));
    let var_2 = ~(~4294967295u);
    return Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1973f, var_1.c.b.x) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.c.c.wy)))), _wgslsmith_mult_i32(0i, countOneBits(_wgslsmith_mult_i32(arg_0.x, func_2(var_1.a).x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-847f, var_1.c.b.x, var_1.c.c.x, 2011f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.b.x, var_1.c.c.x, var_1.c.c.x, 997f)))))), select(vec4<u32>(~firstLeadingBit(var_2), select(_wgslsmith_mult_u32(1u, 6518u), 4294967295u, var_1.b), _wgslsmith_add_u32(arg_3, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(arg_3, 0u))), 1997u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 0u, 0u, 46760u), vec4<u32>(u_input.b.x, 4294967295u, 6491u, var_2) & vec4<u32>(0u, 0u, u_input.a, 1u)), select(vec4<bool>(all(vec4<bool>(false, false, arg_2.x, false)), all(arg_2), select(false, var_1.c.a, true), true), arg_2, !arg_2)), vec2<bool>(~(~var_2) <= ((arg_3 & 416u) << (var_2 % 32u)), !(!all(arg_2))));
}

fn func_1() -> vec3<bool> {
    var var_0 = u_input.c;
    var_0 = u_input.c & -13601i;
    var_0 = _wgslsmith_dot_vec2_i32(-(~(~(-vec2<i32>(u_input.c, 13096i)))), _wgslsmith_mod_vec2_i32(min(~(~vec2<i32>(-18996i, u_input.c)), reverseBits(vec2<i32>(-46230i, 0i))), ~abs(countOneBits(vec2<i32>(-1i, u_input.c)))));
    var_0 = ~u_input.c;
    var var_1 = func_4(countOneBits(vec4<i32>(-6861i, u_input.c, _wgslsmith_sub_i32(-57338i, u_input.c), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c, u_input.c), -u_input.c))), -vec4<i32>(~2147483647i, u_input.c, _wgslsmith_div_i32(386i, 2147483647i), 1i & u_input.c) & -(func_2(u_input.c) & vec4<i32>(u_input.c, u_input.c, u_input.c, -10160i)), !(!vec4<bool>(all(vec4<bool>(true, false, false, false)), true, true, true)), ~firstTrailingBit(0u));
    return !(!vec3<bool>(all(var_1.e), 136f >= var_1.a.x, !var_1.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!(!func_1())));
    var var_1 = Struct_4(select(vec2<u32>(~(u_input.b.x | u_input.a), u_input.a), u_input.b.zy, var_0.yx), vec2<bool>((select(-1i, -1i, true) ^ ~(-34619i)) != u_input.c, false), vec4<u32>(u_input.a, reverseBits(34819u) >> (_wgslsmith_mult_u32(1u, 1u) % 32u), ~(~1u), 47692u) | firstLeadingBit(vec4<u32>(1u, countOneBits(u_input.a), countOneBits(17145u), ~u_input.a)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1094f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-331f, -947f), vec2<f32>(822f, 707f), true))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(379f, -457f)))))), abs(~_wgslsmith_add_i32(u_input.c, -23507i)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1307f, -1602f, -1000f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1779f, -1781f, -1317f, -1136f) - vec4<f32>(-1000f, -1000f, -1875f, -1224f))))), _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), _wgslsmith_sub_u32(u_input.b.x, 55947u), ~u_input.b.x, 4294967295u), ~select(vec4<u32>(u_input.a, u_input.b.x, u_input.a, 0u), vec4<u32>(u_input.b.x, u_input.a, 15221u, 4294967295u), var_0.x)), select(!select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), var_0.x), var_0.zx, var_0.yz)), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-414f, -312f) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-516f, -553f), vec2<f32>(-1000f, 787f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1125f, -1225f)), !vec2<bool>(var_0.x, var_0.x)))), -u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1109f, 650f, -1147f, -1532f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(198f, 924f, -800f, -531f), vec4<f32>(1346f, 527f, 1985f, -2425f)))), select(min(~vec4<u32>(1u, u_input.b.x, u_input.a, 1u), func_4(vec4<i32>(1i, u_input.c, 57852i, -8749i), vec4<i32>(-2147483647i, u_input.c, -4133i, -2147483647i), vec4<bool>(var_0.x, false, var_0.x, var_0.x), u_input.a).d), ~vec4<u32>(u_input.a, u_input.a, 1u, 10238u) ^ firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, 1u)), any(var_0)), var_0.yx));
    var var_2 = Struct_4(var_1.c.yy, !(!var_0.yy), ~(~(~vec4<u32>(var_1.c.x, 20185u, 4294967295u, 6336u))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(var_1.e.c.wz, vec2<f32>(-1570f, 1215f))), _wgslsmith_f_op_vec2_f32(select(var_1.d.a, var_1.d.a, var_0.yx)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2737f), var_1.d.a.x)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-26i, 58041i, 42662i, -2879i) & vec4<i32>(-22848i, -1i, -2147483647i, u_input.c), vec4<i32>(var_1.d.b, -2147483647i, 17547i, var_1.d.b)), _wgslsmith_f_op_vec4_f32(var_1.d.c + var_1.e.c), var_1.e.d, var_1.b), func_4(vec4<i32>(36628i, _wgslsmith_mult_i32(0i, ~2147483647i), 2147483647i, u_input.c), -(~(-vec4<i32>(0i, var_1.d.b, var_1.e.b, -2147483647i))), !select(!vec4<bool>(var_0.x, var_0.x, var_0.x, false), !vec4<bool>(true, var_1.d.e.x, false, false), select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(false, var_1.b.x, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x | u_input.b.x, u_input.b.x & 1u, _wgslsmith_div_u32(1u, 113037u)), ~(~var_1.c.wyx))));
    var_2 = Struct_4(firstLeadingBit(select(reverseBits(vec2<u32>(4294967295u, var_2.d.d.x) & vec2<u32>(4294967295u, u_input.a)), min(var_2.c.wx, ~vec2<u32>(25085u, 22493u)), !any(vec4<bool>(var_1.d.e.x, false, true, var_1.e.e.x)))), func_1().xz, vec4<u32>(countOneBits(_wgslsmith_mult_u32(11078u, u_input.b.x)), _wgslsmith_sub_u32(~(~var_2.e.d.x), ~u_input.a), 43675u, _wgslsmith_sub_u32(var_2.d.d.x, ~u_input.b.x)), Struct_2(var_2.d.a, var_2.d.b, _wgslsmith_div_vec4_f32(var_1.d.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_2.d.c)))), vec4<u32>(~var_2.a.x, 0u, ~var_2.d.d.x, _wgslsmith_div_u32(u_input.a, var_1.a.x | 1u)), select(vec2<bool>(true, true), var_1.b, !(-1i > u_input.c))), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e.a.x, -1000f)), vec2<f32>(_wgslsmith_f_op_f32(step(-1910f, var_1.d.a.x)), _wgslsmith_f_op_f32(-var_2.d.c.x))), -8527i, var_2.d.c, var_2.d.d, var_0.xy));
    let var_3 = Struct_4(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~(~vec2<u32>(114338u, var_1.c.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(13546u, 0u), u_input.b.zy, vec2<u32>(1u, u_input.a)) ^ vec2<u32>(0u, 4294967295u)), min(~vec2<u32>(0u, u_input.a), ~vec2<u32>(var_1.e.d.x, var_1.a.x) >> (~u_input.b.yx % vec2<u32>(32u)))), func_4(firstTrailingBit(vec4<i32>(~(-17352i), _wgslsmith_div_i32(-14060i, var_1.e.b), -3960i << (var_1.c.x % 32u), -1i)), ~(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.c, 0i), vec4<i32>(48005i, var_2.d.b, var_1.e.b, -2147483647i), vec4<i32>(-8105i, 30928i, -38881i, var_1.e.b)) << (_wgslsmith_mult_vec4_u32(var_2.d.d, var_1.e.d) % vec4<u32>(32u))), select(!vec4<bool>(true, var_1.d.e.x, false, var_2.b.x), vec4<bool>(var_0.x, all(var_0), !var_0.x, any(var_0)), select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(true, true, var_0.x, false), true)), var_2.e.d.x).e, ~(func_4(vec4<i32>(-43471i, var_2.e.b, -4860i, var_1.e.b), vec4<i32>(var_1.e.b, 29834i, 0i, 8764i), vec4<bool>(true, false, false, false), 46132u).d << (min(var_2.e.d, var_1.d.d) % vec4<u32>(32u))) ^ var_1.c, var_1.e, var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(~func_2(~var_1.e.b).x);
}

