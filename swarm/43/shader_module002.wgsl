struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-525f, _wgslsmith_f_op_f32(f32(-1f) * -1637f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1647f, 991f), vec2<f32>(-1851f, 119f))))))));
    let var_1 = Struct_2(abs(~vec4<u32>(u_input.c, 4294967295u, u_input.c, 13608u) << (~vec4<u32>(u_input.c, 4294967295u, 1u, 0u) % vec4<u32>(32u))) | select(max(~vec4<u32>(u_input.c, 1u, 1u, u_input.d.x), _wgslsmith_add_vec4_u32(vec4<u32>(3494u, u_input.d.x, 4294967295u, 17163u), vec4<u32>(136973u, 4358u, u_input.b, 48436u))), ~vec4<u32>(0u, u_input.d.x, u_input.b, u_input.c) ^ vec4<u32>(0u, u_input.d.x, 0u, 0u), true), _wgslsmith_add_u32(4294967295u ^ max(u_input.c, u_input.b), reverseBits(~u_input.c)), Struct_1(select(arg_1, !(!vec3<bool>(arg_1.x, true, arg_0.x)), true || any(vec4<bool>(true, false, arg_1.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(371f, var_0.x, -1505f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2624f, -2307f, var_0.x), vec3<f32>(1529f, -1000f, var_0.x))))), arg_1.x));
    var var_2 = vec3<bool>(any(select(select(vec4<bool>(false, false, arg_0.x, var_1.c.a.x), select(vec4<bool>(false, false, arg_1.x, arg_1.x), vec4<bool>(false, arg_0.x, false, arg_1.x), true), !vec4<bool>(arg_1.x, false, false, false)), select(vec4<bool>(arg_1.x, true, true, arg_0.x), vec4<bool>(var_1.c.c, true, false, false), !vec4<bool>(true, arg_0.x, true, arg_1.x)), !(-1699f > var_0.x))), false, false);
    let var_3 = any(select(arg_1.xx, select(vec2<bool>(false, true), arg_1.zy, arg_1.zy), select(select(!var_2.zy, select(arg_0.zz, vec2<bool>(true, var_1.c.c), false), true), arg_1.xy, !select(var_1.c.a.xz, vec2<bool>(var_2.x, true), arg_1.zz))));
    var var_4 = true;
    return vec2<i32>(u_input.a, u_input.e);
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, u_input.e, -16529i), vec4<i32>(-53860i, u_input.e, u_input.a, u_input.a)) >> (_wgslsmith_sub_u32(4294967295u, u_input.c) % 32u), 46943i), ~(~(-46209i))), ~firstTrailingBit(func_3(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec2<i32>(u_input.e, u_input.e))) >> (_wgslsmith_div_vec2_u32(u_input.d.zz, vec2<u32>(u_input.b | 60184u, 88540u)) % vec2<u32>(32u)));
    let var_1 = 672f;
    let var_2 = Struct_1(select(vec3<bool>(12387i == ~u_input.e, 175u <= u_input.b, true || all(vec2<bool>(true, true))), select(vec3<bool>(select(false, true, false), u_input.b <= 1u, all(vec4<bool>(false, true, false, true))), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), abs(2147483647i) > u_input.a), true), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1644f), var_1, var_1), all(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))));
    let var_3 = Struct_2(min(_wgslsmith_add_vec4_u32(vec4<u32>(~4294967295u, u_input.c, ~18526u, u_input.c), (vec4<u32>(u_input.c, u_input.b, u_input.d.x, 4294967295u) << (vec4<u32>(u_input.b, 7222u, 1u, u_input.b) % vec4<u32>(32u))) | vec4<u32>(11335u, u_input.c, 29095u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.d.x, u_input.b, 88825u), min(14829u, 1u), 36240u, _wgslsmith_sub_u32(u_input.b, u_input.d.x)), max(vec4<u32>(134183u, 87633u, u_input.b, u_input.c), vec4<u32>(4294967295u, 1u, 0u, u_input.d.x) >> (vec4<u32>(93029u, 69309u, 2458u, u_input.d.x) % vec4<u32>(32u))))), ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), reverseBits(vec2<u32>(21807u, 4294967295u)))), Struct_1(!vec3<bool>(true, true, true || var_2.c), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b + vec3<f32>(var_1, var_1, 399f))))), !var_2.a.x));
    var var_4 = vec2<f32>(var_1, var_2.b.x);
    return _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(1u, u_input.d.x, var_3.a.x))), vec3<u32>(~u_input.d.x, u_input.c, var_3.a.x) << (select(abs(vec3<u32>(u_input.c, u_input.d.x, 37589u)), vec3<u32>(80517u, var_3.b, 4294967295u), var_3.c.c || var_2.c) % vec3<u32>(32u))) > 1u;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<bool>) -> vec3<i32> {
    var var_0 = Struct_1(vec3<bool>(arg_3.x, any(vec2<bool>(func_2(), arg_0.x == -387f)), -974f >= _wgslsmith_f_op_f32(-349f - arg_0.x)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-516f + 596f))), arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-arg_2))), -1000f), !arg_3.x);
    let var_1 = Struct_2(min(~vec4<u32>(max(u_input.c, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, 18364u, 4294967295u), vec4<u32>(u_input.b, 77621u, u_input.d.x, 1u)), 70638u, ~0u), vec4<u32>(u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d.yy, u_input.d.zy), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 52297u), u_input.d.zy)), u_input.b, firstLeadingBit(u_input.d.x))), _wgslsmith_clamp_u32(select(~u_input.c, u_input.b & u_input.c, true) >> ((_wgslsmith_clamp_u32(u_input.d.x, u_input.c, 97136u) | ~67913u) % 32u), ~42292u, 80670u), arg_1);
    let var_2 = firstTrailingBit(~vec2<u32>(max(73645u, var_1.b), max(1u, u_input.c))) & vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(45840u, 36815u)), 19181u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, var_1.b, 4294967295u), var_1.a.wxy) | var_1.a.x, u_input.d.x), 93944u);
    let var_3 = vec4<bool>(arg_1.a.x, true, true, all(select(!(!var_1.c.a.zy), select(var_1.c.a.yy, vec2<bool>(arg_3.x, arg_1.a.x), var_1.c.a.x), !vec2<bool>(var_0.a.x, false))));
    var var_4 = var_3.x;
    return _wgslsmith_div_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(2253i, u_input.e, -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a))) & -vec3<i32>(u_input.e, 1i, u_input.e), ((vec3<i32>(0i, u_input.a, u_input.a) << (u_input.d % vec3<u32>(32u))) & vec3<i32>(u_input.a, u_input.a, -1i)) | min(-vec3<i32>(u_input.e, 58323i, u_input.e), vec3<i32>(-14411i, 39343i, 0i))) >> (_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(var_1.a.yzy, ~(~vec3<u32>(var_2.x, 52918u, 48372u))), min(~(u_input.d | vec3<u32>(22399u, var_2.x, 0u)), firstLeadingBit(vec3<u32>(u_input.d.x, 87923u, 6224u)))) % vec3<u32>(32u));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = ~1u;
    var var_1 = _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(var_0, var_0), ~17637u), vec2<u32>(select(50923u, arg_1.a.b, arg_1.d.x), arg_1.c.x)), vec2<u32>(~u_input.b, firstTrailingBit(_wgslsmith_add_u32(4529u, var_0) << (~0u % 32u))));
    let var_2 = Struct_2(max(arg_1.c, arg_1.a.a), ~min(1441u, _wgslsmith_dot_vec3_u32(~u_input.d, ~arg_1.a.a.wzz)), Struct_1(vec3<bool>(all(select(vec3<bool>(arg_1.d.x, false, false), vec3<bool>(arg_1.a.c.a.x, arg_1.a.c.c, arg_1.a.c.a.x), true)), arg_1.a.c.a.x, all(select(vec4<bool>(true, arg_1.d.x, arg_1.d.x, true), vec4<bool>(true, arg_1.d.x, arg_1.a.c.a.x, true), vec4<bool>(arg_1.d.x, true, false, arg_1.a.c.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.a.c.b.x - arg_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.a.c.b.x)), -608f)), false));
    var var_3 = vec2<i32>(-1i, 64670i);
    var_3 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(~vec4<i32>(u_input.e, arg_0, 1i, var_3.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_3.x, u_input.a, -1i, -1i), vec4<i32>(38471i, -29474i, arg_0, arg_0) | vec4<i32>(arg_0, u_input.e, 44051i, u_input.e))), -select(vec4<i32>(-42099i, var_3.x, arg_0, -1i), vec4<i32>(-42960i, u_input.a, 50578i, 32058i), var_2.c.a.x) >> (~countOneBits(var_2.a) % vec4<u32>(32u))), var_3.x << (~var_2.a.x % 32u));
    return Struct_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(32483u, 53477u, 68584u), _wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(0u, var_2.a.x, arg_1.b))), 9023u, arg_1.c.x), firstTrailingBit(~vec3<u32>(1174u, var_0, 0u)) | vec3<u32>(_wgslsmith_div_u32(u_input.c, 1u), ~37024u, 10520u), ~(~vec3<u32>(var_0, u_input.b, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1031f)), _wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(countOneBits(4294967295u), 0u, arg_1.a.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_mult_i32(69336i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.e, 1841i) | select(vec3<i32>(u_input.e, 24063i, u_input.e), vec3<i32>(u_input.a, u_input.a, u_input.e), true), _wgslsmith_add_vec3_i32(func_1(vec3<f32>(277f, -494f, 562f), Struct_1(vec3<bool>(false, true, true), vec3<f32>(-330f, -1344f, -908f), false), -446f, vec2<bool>(false, true)), select(vec3<i32>(u_input.a, 3220i, u_input.a), vec3<i32>(20027i, u_input.e, u_input.a), vec3<bool>(false, true, true))))), Struct_4(Struct_2(~(~vec4<u32>(44087u, 1u, u_input.c, 19209u)), ~_wgslsmith_sub_u32(u_input.b, u_input.c), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(543f, -793f, 1008f) - vec3<f32>(-999f, -378f, -853f)), true)), firstTrailingBit(abs(u_input.b)), vec4<u32>(~_wgslsmith_add_u32(1u, u_input.d.x), 3283u, 1u, ~_wgslsmith_sub_u32(u_input.c, 1u)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1126f, -1360f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(784f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * vec2<f32>(1f, 1f))));
    let var_1 = Struct_1(select(vec3<bool>(true, !any(vec4<bool>(false, false, false, true)), true), vec3<bool>(true, true, true), vec3<bool>(false, var_0.a.x < u_input.c, !any(vec3<bool>(true, false, false)))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-318f, var_0.b)))), _wgslsmith_f_op_f32(trunc(var_0.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b, -2328f, var_0.b), vec3<f32>(var_0.b, -568f, 539f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b, 1614f, -520f), vec3<f32>(var_0.b, var_0.b, var_0.b))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, 210f))))), select(-80582i != (firstTrailingBit(31168i) << (min(1u, u_input.c) % 32u)), !all(vec2<bool>(false, false)), _wgslsmith_dot_vec2_u32(~u_input.d.zy, ~vec2<u32>(var_0.a.x, u_input.d.x)) < (4294967295u >> (min(var_0.a.x, u_input.b) % 32u))));
    var var_2 = ~vec2<i32>(u_input.e, u_input.a) << ((min(vec2<u32>(4294967295u, ~55395u), var_0.a.zx) & var_0.a.yz) % vec2<u32>(32u));
    var_2 = select(vec2<i32>(~(-5107i), ~1i), firstLeadingBit(func_1(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(-1065f * var_0.b), 1000f), var_1, _wgslsmith_f_op_f32(f32(-1f) * -659f), !(!vec2<bool>(var_1.c, false))).zz), var_1.a.x);
    let var_3 = Struct_3(u_input.d, -1213f, vec3<u32>(4294967295u, (min(40626u, 4294967295u) ^ (5856u & var_0.c.x)) & min(u_input.c & 76935u, var_0.a.x >> (var_0.a.x % 32u)), ~u_input.b));
    let var_4 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1545f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-139f)), _wgslsmith_f_op_f32(f32(-1f) * -678f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3.b - var_3.b), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(ceil(-1136f)), -142f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, -929f, var_3.b, -373f), vec4<f32>(-228f, var_0.b, var_0.b, var_3.b))), vec4<f32>(var_1.b.x, -683f, _wgslsmith_f_op_f32(trunc(var_0.b)), 501f), !vec4<bool>(var_1.a.x, true, var_1.a.x, false)))), 1i, 2147483647i);
}

