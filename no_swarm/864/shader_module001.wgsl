struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> vec4<f32> {
    let var_0 = vec2<i32>(u_input.a.x, 0i) ^ _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(select(u_input.a.yz, abs(vec2<i32>(-29816i, u_input.a.x)), -2147483647i <= u_input.a.x), -(vec2<i32>(u_input.a.x, u_input.a.x) << (vec2<u32>(45162u, 7898u) % vec2<u32>(32u)))), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.a.x) ^ u_input.a.zz, reverseBits(vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.zz), _wgslsmith_mult_vec2_i32(-u_input.a.yz, u_input.a.zz)));
    var var_1 = select(firstTrailingBit(max(max(vec3<i32>(u_input.a.x, u_input.a.x, 0i), u_input.a), select(vec3<i32>(u_input.a.x, -1i, 26002i), vec3<i32>(1i, -1i, u_input.a.x), arg_0)) >> (max(vec3<u32>(23808u, 12915u, 19118u), vec3<u32>(16124u, 51855u, 4294967295u)) % vec3<u32>(32u))), -select(u_input.a, abs(u_input.a), any(arg_1.zyz)), arg_1.x);
    let var_2 = !arg_1;
    let var_3 = ~_wgslsmith_sub_i32(i32(-1i) * -var_0.x, u_input.a.x);
    var_1 = u_input.a;
    return vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1654f, _wgslsmith_f_op_f32(floor(-1141f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-397f)), _wgslsmith_f_op_f32(196f + 2410f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-104f - -790f)))))), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-237f, -1610f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-832f, -790f)) * _wgslsmith_f_op_f32(921f - 1128f)), true))));
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -996f) + _wgslsmith_f_op_f32(ceil(1550f))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-361f * _wgslsmith_f_op_f32(f32(-1f) * -1329f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-423f, 120f, true)))))) - _wgslsmith_f_op_vec4_f32(func_3(true, vec4<bool>(true, true, true, true))));
    var var_1 = var_0.x;
    var var_2 = abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(46612u, 4294967295u), max(15174u, 4294967295u), 4294967295u, ~1u), min(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(vec4<u32>(1u, 43455u, 4294967295u, 4294967295u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(34567u, 35235u, 1u, 54052u), vec4<u32>(1u, 1u, 60714u, 13325u)), 0u, 1u, firstLeadingBit(6579u)))));
    let var_3 = Struct_1(~u_input.a.x, select(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(false, true, false, false)), !(30577u > var_2.x)), vec4<bool>(any(vec3<bool>(true, true, true)), -556f > var_0.x, true, true), vec4<bool>(abs(1u) > var_2.x, any(vec3<bool>(true, true, true)), true, any(vec2<bool>(true, true)))), vec4<u32>(max(4294967295u | var_2.x, ~var_2.x), select(~122183u, ~38615u, true), 0u, ~var_2.x) & (abs(vec4<u32>(9325u, 7992u, 0u, var_2.x)) ^ max(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), countOneBits(vec4<u32>(var_2.x, var_2.x, 10433u, var_2.x)))), true, u_input.a.x);
    let var_4 = Struct_2(var_3.c.yx, reverseBits(_wgslsmith_clamp_vec4_u32(var_3.c, ~vec4<u32>(var_3.c.x, var_2.x, 1u, var_2.x) >> (vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x) % vec4<u32>(32u)), var_3.c)), var_3, select(vec3<bool>(false, false, true), var_3.b.xwz, select(vec3<bool>(!var_3.d, true, var_3.d & false), vec3<bool>(var_3.b.x, false, true), true)));
    return _wgslsmith_mod_vec2_u32(var_4.a, _wgslsmith_mod_vec2_u32(abs(vec2<u32>(~1u, var_2.x)), ~var_4.c.c.xw));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = arg_1;
    var var_1 = Struct_2(func_2(), abs(_wgslsmith_mult_vec4_u32(firstLeadingBit(arg_1.c), ~var_0.c | vec4<u32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, var_0.c.x))), var_0, !var_0.b.wxx);
    let var_2 = Struct_3(Struct_2(arg_1.c.xx, var_0.c, Struct_1(_wgslsmith_clamp_i32(var_0.a, 1i, _wgslsmith_add_i32(arg_0.x, -21131i)), arg_1.b, ~firstTrailingBit(vec4<u32>(0u, var_0.c.x, 24908u, 1u)), true, _wgslsmith_add_i32(countOneBits(arg_0.x), ~var_0.a)), select(!select(vec3<bool>(false, false, var_0.b.x), vec3<bool>(false, var_0.b.x, false), arg_1.b.wyy), var_0.b.wxz, !arg_1.b.x)), Struct_1(-2147483647i, select(!(!vec4<bool>(true, var_0.d, false, true)), !select(var_0.b, arg_1.b, var_1.d.x), !var_0.b), ~var_1.b | vec4<u32>(var_0.c.x, arg_1.c.x, ~var_1.b.x, ~var_1.c.c.x), false, _wgslsmith_clamp_i32(firstTrailingBit(arg_1.a), 30824i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.e, u_input.a.x, arg_0.x, -49934i), vec4<i32>(47230i, u_input.a.x, u_input.a.x, u_input.a.x))) & select(arg_2, ~(-1i), true)), _wgslsmith_sub_vec4_i32(vec4<i32>(~28160i, arg_2 ^ var_1.c.e, i32(-1i) * -38168i, countOneBits(-26939i)) >> (_wgslsmith_div_vec4_u32(~var_0.c, countOneBits(arg_1.c)) % vec4<u32>(32u)), ~vec4<i32>(_wgslsmith_mult_i32(-16406i, -44183i), _wgslsmith_sub_i32(u_input.a.x, -56377i), var_0.e, select(0i, var_1.c.e, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(var_0.b.x, !vec4<bool>(true, var_1.c.b.x, var_1.d.x, var_1.c.b.x))).x, _wgslsmith_f_op_f32(step(arg_3.x, _wgslsmith_f_op_f32(sign(arg_3.x)))), arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 439f))))), Struct_2(vec2<u32>(var_1.a.x, ~(~4294967295u)), reverseBits(~var_1.b) ^ ~(~vec4<u32>(360u, var_1.a.x, var_1.c.c.x, var_0.c.x)), arg_1, !var_1.d));
    var_1 = var_2.a;
    var var_3 = Struct_3(Struct_2(var_0.c.wy, min(~var_2.a.c.c >> (vec4<u32>(var_1.a.x, arg_1.c.x, 917u, 4294967295u) % vec4<u32>(32u)), select(vec4<u32>(4294967295u, 16451u, 19500u, var_0.c.x), min(vec4<u32>(1u, 13774u, arg_1.c.x, 44889u), vec4<u32>(var_2.e.c.c.x, 0u, 0u, var_2.e.b.x)), false && var_1.d.x)), var_0, vec3<bool>(var_1.c.b.x, true, true)), arg_1, ~var_2.c, var_2.d, Struct_2(~(select(vec2<u32>(1u, 426u), var_0.c.zx, arg_1.b.x) | ~var_2.e.a), var_2.e.b, arg_1, var_2.e.c.b.xxw));
    return Struct_3(Struct_2(~vec2<u32>(~var_1.b.x, var_3.e.b.x), vec4<u32>(var_2.b.c.x, var_1.a.x, 0u, _wgslsmith_mult_u32(arg_1.c.x ^ 0u, firstLeadingBit(arg_1.c.x))), var_1.c, select(select(var_2.a.c.b.yzz, arg_1.b.zyw, false), arg_1.b.ywy, var_2.a.d)), Struct_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, 904i) & _wgslsmith_mult_i32(var_2.c.x, 23679i), max(abs(-1i), ~var_0.e)), var_1.c.b, var_0.c, true, var_3.a.c.e), -vec4<i32>(~u_input.a.x, -1i, -8311i << (_wgslsmith_div_u32(5909u, var_0.c.x) % 32u), _wgslsmith_sub_i32(~2147483647i, -98707i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(var_2.d, vec4<f32>(1034f, arg_3.x, arg_3.x, var_2.d.x))), _wgslsmith_f_op_vec4_f32(func_3(var_1.c.b.x, vec4<bool>(true, true, false, false)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_2.d, var_3.d)) * vec4<f32>(arg_3.x, 712f, var_2.d.x, -623f)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_2.d), _wgslsmith_f_op_vec4_f32(var_3.d + var_2.d)))))), Struct_2(~func_2(), var_0.c, Struct_1(~_wgslsmith_sub_i32(var_0.a, -1i), var_2.a.c.b, (var_3.e.b | vec4<u32>(var_0.c.x, var_3.a.c.c.x, 57635u, var_1.c.c.x)) ^ firstLeadingBit(var_0.c), all(!arg_1.b), var_3.e.c.a), var_2.a.d));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<f32>) -> vec3<i32> {
    let var_0 = vec4<bool>(arg_0.c.b.x, arg_0.c.b.x, true, arg_2.b.b.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_2.d.ww);
    var var_2 = _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_vec4_f32(func_3(all(select(var_0.wy, select(arg_0.d.zz, vec2<bool>(arg_0.c.d, true), var_0.x), true)), !arg_2.e.c.b)).x);
    var var_3 = vec4<f32>(arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(any(func_1(arg_2.c.ww, Struct_1(1i, vec4<bool>(arg_0.d.x, false, true, true), vec4<u32>(arg_2.e.b.x, arg_2.e.c.c.x, arg_1.c.x, arg_2.b.c.x), false, arg_2.a.c.e), -22606i, vec2<f32>(arg_2.d.x, -328f)).e.d.zy), arg_0.c.b)).x), 176f, -250f);
    let var_4 = ~countOneBits(982u);
    return vec3<i32>(select(~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.xy, arg_2.c.wz), arg_2.c.ww), 2147483647i, var_4 >= _wgslsmith_mult_u32(1u << (1u % 32u), var_4)), -2147483647i, _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(max(arg_2.c, vec4<i32>(-1i, arg_2.c.x, -9842i, -2147483647i)), abs(vec4<i32>(arg_2.e.c.e, u_input.a.x, arg_2.e.c.a, 12359i)))), arg_2.c));
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_3) -> u32 {
    var var_0 = ~(~(arg_2.e.a.x ^ firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(37101u, arg_2.a.b.x), arg_2.e.b.yx))));
    let var_1 = func_1(arg_1.yx, Struct_1(u_input.a.x >> ((_wgslsmith_add_u32(arg_2.e.a.x, arg_2.b.c.x) << (_wgslsmith_mod_u32(0u, arg_2.a.b.x) % 32u)) % 32u), vec4<bool>(arg_2.e.c.d, false, arg_2.b.b.x, false), abs(~arg_2.b.c), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), arg_2.b.b.yw, arg_2.a.c.b.xz), true)), ~_wgslsmith_add_i32(21234i, -64218i) << (_wgslsmith_dot_vec3_u32(arg_2.e.b.wyz & arg_2.a.c.c.zzx, vec3<u32>(arg_2.e.a.x, arg_2.e.c.c.x, arg_2.a.a.x)) % 32u)), i32(-1i) * -_wgslsmith_mod_i32(abs(arg_0), ~arg_0), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)), 188f)).b;
    let var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(0u, var_1.c.x), 79482u), vec2<u32>(20068u, var_1.c.x));
    var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32((~vec3<u32>(arg_2.b.c.x, 4294967295u, 0u) >> (vec3<u32>(var_1.c.x, arg_2.e.b.x, var_1.c.x) % vec3<u32>(32u))) << (~(arg_2.a.c.c.ywz ^ vec3<u32>(0u, 1u, arg_2.b.c.x)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(var_1.c.wx, vec2<u32>(34016u, var_1.c.x))), var_1.c.x, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~1u, ~(~23489u)), arg_2.b.c.wyz));
    var var_3 = arg_2.a.d.x;
    return func_1(vec2<i32>(-select(1i, -1i, var_1.d), func_1(vec2<i32>(~var_1.e, _wgslsmith_add_i32(1i, u_input.a.x)), Struct_1(-arg_0, select(var_1.b, vec4<bool>(true, arg_2.a.c.b.x, arg_2.b.d, arg_2.b.d), var_1.d), vec4<u32>(var_1.c.x, 4294967295u, var_1.c.x, 34871u), true, 28341i), 2147483647i, arg_2.d.yw).e.c.a), func_1(arg_2.c.zw << (vec2<u32>(arg_2.a.b.x, min(var_1.c.x, arg_2.b.c.x)) % vec2<u32>(32u)), Struct_1(~arg_1.x, !select(var_1.b, vec4<bool>(arg_2.b.d, false, true, true), arg_2.a.d.x), vec4<u32>(var_2, _wgslsmith_mult_u32(0u, 21499u), ~var_1.c.x, ~31018u), all(arg_2.e.d.xz), -(u_input.a.x | 0i)), 2147483647i, vec2<f32>(_wgslsmith_f_op_f32(step(arg_2.d.x, _wgslsmith_f_op_f32(-arg_2.d.x))), arg_2.d.x)).a.c, -1i >> (_wgslsmith_dot_vec4_u32(reverseBits(func_1(arg_1.yy, var_1, var_1.e, arg_2.d.ww).a.b), var_1.c) % 32u), vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3(arg_2.a.c.d, vec4<bool>(true, any(arg_2.e.d), arg_2.e.c.b.x, var_1.b.x || arg_2.e.c.d))).x, 892f)).a.c.c.x;
}

fn func_6(arg_0: u32, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(1i, _wgslsmith_mod_i32(u_input.a.x, -37165i), 1i, 2147483647i), select(vec4<i32>(-1i) * -(vec4<i32>(33748i, u_input.a.x, 1i, -48845i) & vec4<i32>(-2147483647i, 1i, u_input.a.x, 54815i)), (vec4<i32>(1i, u_input.a.x, -6799i, u_input.a.x) >> (vec4<u32>(40185u, arg_0, arg_0, arg_0) % vec4<u32>(32u))) & -(vec4<i32>(13073i, u_input.a.x, 0i, 2042i) >> (vec4<u32>(arg_0, arg_0, arg_0, arg_0) % vec4<u32>(32u))), false));
    let var_1 = all(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), false)) || false;
    var var_2 = Struct_1(func_4(Struct_2(~(~vec2<u32>(0u, 1u)), vec4<u32>(arg_0, 60188u, arg_0, _wgslsmith_mult_u32(64495u, 5566u)), func_1(var_0.zx, func_1(var_0.zw, Struct_1(u_input.a.x, vec4<bool>(var_1, var_1, var_1, var_1), vec4<u32>(arg_0, 187u, 0u, 4294967295u), var_1, u_input.a.x), u_input.a.x, vec2<f32>(arg_1.x, -226f)).a.c, ~(-15400i), arg_1.wy).b, vec3<bool>(4294967295u >= arg_0, !var_1, func_1(vec2<i32>(-2147483647i, -2147483647i), Struct_1(var_0.x, vec4<bool>(true, true, var_1, false), vec4<u32>(4294967295u, 64128u, 1u, 0u), false, 9400i), var_0.x, arg_1.xz).e.c.b.x)), func_1(reverseBits(vec2<i32>(15917i, 1i)), func_1(func_1(vec2<i32>(var_0.x, 0i), Struct_1(u_input.a.x, vec4<bool>(var_1, var_1, var_1, false), vec4<u32>(arg_0, 4294967295u, arg_0, 66248u), true, 2147483647i), 19355i, arg_1.xw).c.xy, Struct_1(-62087i, vec4<bool>(true, var_1, true, true), vec4<u32>(0u, arg_0, arg_0, arg_0), true, var_0.x), var_0.x, vec2<f32>(arg_1.x, 1210f)).e.c, var_0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -116f) + arg_1.yw)).b, func_1(_wgslsmith_div_vec2_i32(-u_input.a.xy, ~vec2<i32>(1i, 36506i)), func_1(u_input.a.yy, Struct_1(var_0.x, vec4<bool>(var_1, false, false, true), vec4<u32>(4294967295u, 0u, 4294967295u, arg_0), var_1, u_input.a.x), u_input.a.x | u_input.a.x, vec2<f32>(arg_1.x, arg_1.x)).b, -1i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1236f, -888f)), _wgslsmith_f_op_vec2_f32(arg_1.zy + vec2<f32>(574f, 1000f)), any(vec2<bool>(true, var_1))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-340f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(round(arg_1.x))) + vec3<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -346f)))).x, vec4<bool>(var_1 != any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, var_1), vec3<bool>(var_1, var_1, false))), var_1, var_1, false || var_1), ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_0, arg_0, arg_0, 1u)), countOneBits(vec4<u32>(27068u, arg_0, arg_0, arg_0))), true, u_input.a.x);
    var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(-var_0.x) & 2147483647i, abs(-firstLeadingBit(1i)), -23912i, 0i), select(vec4<i32>(select(countOneBits(u_input.a.x), var_0.x, all(var_2.b)), -1i, firstTrailingBit(-49775i), var_0.x), ~vec4<i32>(_wgslsmith_mult_i32(2147483647i, u_input.a.x), -38342i, i32(-1i) * -14021i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 24748i, -31592i, var_0.x), vec4<i32>(var_0.x, -12533i, var_0.x, var_0.x))), var_1));
    var var_3 = Struct_1(~(-20547i) | func_4(Struct_2(vec2<u32>(0u, arg_0) | vec2<u32>(4294967295u, arg_0), ~var_2.c, Struct_1(2147483647i, var_2.b, var_2.c, var_1, 27491i), var_2.b.zyw), Struct_1(var_2.a, var_2.b, _wgslsmith_div_vec4_u32(vec4<u32>(57989u, var_2.c.x, 20757u, 1u), vec4<u32>(67424u, 9452u, arg_0, var_2.c.x)), true, u_input.a.x), func_1(~vec2<i32>(0i, -1i), Struct_1(1i, vec4<bool>(var_2.b.x, var_2.d, var_1, var_1), vec4<u32>(var_2.c.x, 25312u, 1u, arg_0), false, var_2.a), max(1i, var_0.x), vec2<f32>(-1000f, -1000f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1588f, 105f, arg_1.x)))).x, !func_1(vec2<i32>(_wgslsmith_add_i32(var_2.a, -2147483647i), i32(-1i) * -2147483647i), Struct_1(var_2.a, var_2.b, vec4<u32>(arg_0, 20996u, 1u, 3734u) | vec4<u32>(1u, var_2.c.x, 4294967295u, arg_0), true, _wgslsmith_dot_vec2_i32(var_0.wy, vec2<i32>(-34535i, 7222i))), ~var_0.x, vec2<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(-1468f - -159f))).b.b, vec4<u32>(~(~(~var_2.c.x)), select(firstTrailingBit(1u), 18916u, !var_2.d), 0u, abs(~(~16375u))), var_1, var_2.e);
    return func_1(var_0.yw, func_1(var_0.xx, Struct_1(var_2.a, var_3.b, ~var_3.c, true, ~(-var_2.a)), i32(-1i) * -(var_0.x | 2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1004f, -383f))))).a.c, u_input.a.x, _wgslsmith_f_op_vec2_f32(-arg_1.zw)).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = func_6(func_5(u_input.a.x >> (1u % 32u), func_4(Struct_2(vec2<u32>(81568u, 0u), ~vec4<u32>(100002u, 2817u, 129799u, 42795u), Struct_1(u_input.a.x, vec4<bool>(true, true, false, true), vec4<u32>(24466u, 4294967295u, 4294967295u, 15458u), true, var_0), vec3<bool>(true, true, true)), Struct_1(var_0, vec4<bool>(true, false, true, false), vec4<u32>(4294967295u, 0u, 42000u, 35093u), true, var_0), func_1(_wgslsmith_sub_vec2_i32(u_input.a.xy, vec2<i32>(var_0, -2147483647i)), Struct_1(u_input.a.x, vec4<bool>(false, false, false, true), vec4<u32>(4294967295u, 2986u, 4294967295u, 16527u), true, u_input.a.x), ~var_0, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1259f, 189f), vec2<f32>(-565f, -326f)))), vec3<f32>(500f, _wgslsmith_f_op_f32(f32(-1f) * -1217f), _wgslsmith_f_op_f32(sign(-560f)))), func_1(min(~vec2<i32>(var_0, -16190i), vec2<i32>(0i, 1i)), func_1(~u_input.a.yy, Struct_1(var_0, vec4<bool>(false, true, false, false), vec4<u32>(1u, 1u, 1u, 4294967295u), false, -1i), u_input.a.x, vec2<f32>(1000f, -790f)).e.c, func_1(-u_input.a.yy, Struct_1(u_input.a.x, vec4<bool>(false, true, false, true), vec4<u32>(1u, 0u, 1u, 4034u), false, -44125i), -1453i, vec2<f32>(356f, -829f)).e.c.a, vec2<f32>(469f, _wgslsmith_f_op_f32(-1323f - 596f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-559f, 1211f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -609f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(819f, 1887f)) - 641f) - _wgslsmith_f_op_f32(369f * _wgslsmith_f_op_f32(f32(-1f) * -230f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, -383f, true)) - 119f)));
    let var_2 = _wgslsmith_mod_i32(var_0, ~(-var_1.c.e) >> (var_1.c.c.x % 32u));
    var var_3 = Struct_2(~var_1.a, var_1.b, func_1(-(select(vec2<i32>(u_input.a.x, -2147483647i), u_input.a.yz, var_1.c.b.wy) << (~var_1.b.wy % vec2<u32>(32u))), Struct_1(func_1(-vec2<i32>(2147483647i, var_0), var_1.c, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_0, -3341i, 1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1730f, 861f) * vec2<f32>(-1000f, -602f))).a.c.e, vec4<bool>(all(vec3<bool>(false, var_1.d.x, true)), false, true, !var_1.d.x), vec4<u32>(var_1.a.x ^ var_1.c.c.x, var_1.b.x, var_1.c.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(21450u, 0u), var_1.c.c.wy)), !(var_1.d.x | true), -var_2), 29143i | (_wgslsmith_mult_i32(var_0, var_2) ^ _wgslsmith_add_i32(29063i, var_1.c.e)), _wgslsmith_f_op_vec4_f32(func_3(var_1.d.x, func_6(var_1.b.x, vec4<f32>(-596f, 279f, -1324f, 213f)).c.b)).zw).e.c, !var_1.c.b.wzw);
    let var_4 = all(vec4<bool>(false, true, any(func_1(firstLeadingBit(u_input.a.xx), Struct_1(35531i, vec4<bool>(var_1.c.b.x, false, false, true), var_1.c.c, var_3.d.x, var_1.c.e), ~(-26555i), _wgslsmith_div_vec2_f32(vec2<f32>(-314f, 1000f), vec2<f32>(830f, 874f))).e.c.b), false));
    var_3 = func_1(abs(u_input.a.xx), func_1(_wgslsmith_sub_vec2_i32(-(vec2<i32>(-1663i, var_3.c.e) >> (vec2<u32>(27858u, 95236u) % vec2<u32>(32u))), func_1(u_input.a.xx ^ u_input.a.zz, var_3.c, _wgslsmith_sub_i32(10080i, var_2), vec2<f32>(-844f, 1999f)).c.ww), Struct_1(-(-1i >> (0u % 32u)), var_3.c.b, ~(~var_1.b), var_4, -22344i), ~func_4(func_1(u_input.a.zx, var_3.c, var_2, vec2<f32>(-1685f, -471f)).e, var_3.c, Struct_3(var_1, var_1.c, vec4<i32>(26492i, var_3.c.e, 8880i, 0i), vec4<f32>(1248f, 107f, 2016f, 2352f), var_1), vec3<f32>(1000f, 940f, -432f)).x, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -1728f) - vec2<f32>(_wgslsmith_f_op_f32(sign(-256f)), _wgslsmith_f_op_f32(select(-200f, -751f, var_3.d.x))))).e.c, var_2, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(282f, 694f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(975f, -1880f) + vec2<f32>(-1000f, 346f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -923f))))))).e;
    let var_5 = 7566u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1223f, -2295f) + _wgslsmith_f_op_f32(max(318f, 1354f))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1112f, -602f))))), -1431f);
}

