struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_3,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<bool> {
    let var_0 = vec3<f32>(-882f, _wgslsmith_f_op_f32(-789f * -990f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1642f)))));
    let var_1 = Struct_4(all(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), true)), u_input.c.zyy, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, var_0.x))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, 251f), var_0.yy))))), Struct_1(-1i, -u_input.c)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yz)), Struct_1(23972i, vec4<i32>(-3323i, -u_input.c.x, u_input.c.x, -u_input.a.x))), select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(false, true, true))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), !select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), true)));
    var var_2 = var_1.c.b;
    var_2 = Struct_1(firstLeadingBit(2147483647i), -vec4<i32>(2147483647i, ~var_1.d.b.b.x, ~var_1.c.b.a, var_1.d.b.b.x));
    var_2 = var_1.d.b;
    return vec2<bool>(select(true, u_input.d > 1u, true), !var_1.e.x);
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1276f, -1283f) - vec3<f32>(-174f, arg_0, arg_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(324f, 962f, -488f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 667f, 1751f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -404f, arg_0) + vec3<f32>(arg_0, -206f, 558f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(422f, arg_0, arg_0), vec3<f32>(802f, arg_0, 145f), false)))))));
    let var_1 = !any(!select(vec2<bool>(true, true), func_3(), vec2<bool>(true, true)));
    var var_2 = Struct_1(~_wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(u_input.a.x, u_input.a.x, 7904i, u_input.c.x))), u_input.c), vec4<i32>(_wgslsmith_mult_i32(1i, u_input.a.x), -2147483647i, 1i, _wgslsmith_add_i32(i32(-1i) * -24225i, u_input.b)) << (min(~vec4<u32>(33124u, u_input.d, u_input.d, u_input.d) & vec4<u32>(u_input.d, 8597u, u_input.d, 0u), ~(~vec4<u32>(0u, u_input.d, 7013u, u_input.d))) % vec4<u32>(32u)));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1503f));
    var_3 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(126f)))));
    return all(!(!(!vec3<bool>(true, var_1, false))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = !(!(!any(vec3<bool>(false, false, arg_2))));
    var_0 = arg_2;
    var var_1 = ~47082u;
    var_0 = -262f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, -352f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, 871f))));
    var_0 = func_2(1822f);
    return Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-14996i, -32160i, -16020i, -7596i), vec4<i32>(u_input.b, 0i, u_input.b, arg_0.x)), u_input.b, u_input.a.x), firstLeadingBit(u_input.c)), ~u_input.c));
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(select(firstTrailingBit(-u_input.c), ~max(vec4<i32>(1i, 53394i, u_input.c.x, u_input.a.x) >> (vec4<u32>(4294967295u, u_input.d, 1u, u_input.d) % vec4<u32>(32u)), reverseBits(vec4<i32>(2147483647i, u_input.c.x, -53538i, 18353i))), vec4<bool>(true, true, false, _wgslsmith_div_u32(4294967295u, u_input.d) >= reverseBits(29655u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-620f, -134f, 1984f, -820f)))))))), any(select(vec4<bool>(func_2(-683f), true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, u_input.c.x == 0i))), vec2<bool>(all(vec4<bool>(true, true, false, true)), true));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.a))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1208f, -564f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a.x, -2432f)))))))), var_0.b);
    let var_1 = countOneBits(_wgslsmith_add_vec3_u32((select(vec3<u32>(u_input.d, 0u, 25709u), vec3<u32>(49312u, 4294967295u, 8845u), false) | (vec3<u32>(u_input.d, u_input.d, u_input.d) >> (vec3<u32>(u_input.d, u_input.d, 1u) % vec3<u32>(32u)))) ^ select(max(vec3<u32>(1u, u_input.d, u_input.d), vec3<u32>(0u, u_input.d, u_input.d)), vec3<u32>(u_input.d, 15310u, u_input.d) >> (vec3<u32>(6806u, u_input.d, u_input.d) % vec3<u32>(32u)), func_3().x), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 118730u, u_input.d), vec3<u32>(u_input.d, 0u, 43641u)) & (~vec3<u32>(u_input.d, 38111u, 4294967295u) << (min(vec3<u32>(0u, 0u, 8035u), vec3<u32>(u_input.d, 4294967295u, 0u)) % vec3<u32>(32u)))));
    var_0 = func_4(vec4<i32>(var_0.b.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.b | 1i), ~_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(var_0.b.a, u_input.b, var_0.b.a, u_input.b))), _wgslsmith_add_i32(1i, ~44219i), _wgslsmith_div_i32(-41348i, ~43062i)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268f + 404f) - _wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(round(1407f)), 2283f, -123f), (-1i ^ _wgslsmith_mod_i32(-var_0.b.b.x, 2147483647i ^ u_input.c.x)) >= var_0.b.b.x, !(!select(func_3(), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), true)));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1004f)), func_4(_wgslsmith_clamp_vec4_i32(firstTrailingBit(u_input.c << (vec4<u32>(var_1.x, var_1.x, u_input.d, u_input.d) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_add_i32(-2147483647i, var_0.b.a), u_input.c.x, ~(-2147483647i), ~var_0.b.b.x), var_0.b.b), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 923f, 1245f, var_0.a.x) - vec4<f32>(var_0.a.x, -958f, var_0.a.x, 154f)))))), true, !select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, false), vec2<bool>(false, false))).b);
    return func_4(min(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, -67677i, 2147483647i, 0i), u_input.c), _wgslsmith_sub_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -18103i, u_input.c.x, u_input.a.x), vec4<i32>(2147483647i, 28459i, 18644i, 0i)), vec4<i32>(var_0.b.a, u_input.c.x, var_0.b.b.x, u_input.c.x) | vec4<i32>(var_0.b.b.x, u_input.c.x, -1i, 1i), all(vec4<bool>(true, true, false, false))), select(vec4<i32>(u_input.c.x, u_input.a.x, -33209i, -2147483647i) | var_0.b.b, vec4<i32>(u_input.c.x, 0i, -24512i, -2147483647i), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.x, -2036f, 843f, var_0.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, -715f, -716f) * vec4<f32>(var_0.a.x, -333f, var_0.a.x, var_0.a.x)))))), all(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true)), func_3());
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-557f, arg_1.x, -1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_1))))), !select(!(!vec3<bool>(true, arg_2.x, arg_2.x)), select(vec3<bool>(arg_2.x, false, true), !vec3<bool>(arg_2.x, true, false), true), !(!vec3<bool>(arg_2.x, arg_2.x, true)))));
    var var_1 = reverseBits(u_input.d);
    let var_2 = !(~u_input.d < 1u);
    var_1 = ~12424u;
    let var_3 = _wgslsmith_mult_vec2_u32((_wgslsmith_clamp_vec2_u32(max(vec2<u32>(4294967295u, 16660u), vec2<u32>(u_input.d, u_input.d)), _wgslsmith_add_vec2_u32(vec2<u32>(17291u, 0u), vec2<u32>(u_input.d, 7280u)), _wgslsmith_mod_vec2_u32(vec2<u32>(44384u, 0u), vec2<u32>(u_input.d, 4294967295u))) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 0u), ~vec2<u32>(4294967295u, u_input.d)) % vec2<u32>(32u))) ^ _wgslsmith_sub_vec2_u32(~(~vec2<u32>(1u, u_input.d)), vec2<u32>(0u, ~5094u)), select(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.d, u_input.d)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 88249u), vec2<u32>(u_input.d, 28547u), vec2<u32>(u_input.d, 4294967295u))), reverseBits(vec2<u32>(u_input.d, u_input.d))), ~vec2<u32>(u_input.d ^ u_input.d, _wgslsmith_div_u32(71127u, 4294967295u)), !(!(u_input.d < u_input.d))));
    return _wgslsmith_add_vec3_u32(vec3<u32>(reverseBits(max(u_input.d, 62980u)) | min(1u << (var_3.x % 32u), abs(var_3.x)), _wgslsmith_dot_vec3_u32(~select(vec3<u32>(1u, u_input.d, var_3.x), vec3<u32>(u_input.d, 4294967295u, var_3.x), var_2), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 75994u, 4294967295u), ~vec3<u32>(var_3.x, 32260u, u_input.d), reverseBits(vec3<u32>(4294967295u, var_3.x, 4294967295u)))), ~var_3.x), ~(vec3<u32>(~13294u, u_input.d, var_3.x | u_input.d) & vec3<u32>(max(var_3.x, 0u), ~15645u, 1u)));
}

fn func_6(arg_0: vec3<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-356f)))), func_4(~(~(-u_input.c)), vec4<f32>(1f, 1f, 1f, 1f), true, func_3()).a.x);
    var var_1 = u_input.d;
    var_1 = _wgslsmith_div_u32(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.d), vec3<u32>(arg_0.x, u_input.d, arg_0.x)) | arg_0, max(~vec3<u32>(58952u, 56897u, 30456u), vec3<u32>(0u, arg_0.x, u_input.d)))), u_input.d);
    var var_2 = u_input.c.x;
    let var_3 = !((-1495f < _wgslsmith_f_op_f32(-var_0)) & (_wgslsmith_f_op_f32(trunc(var_0)) < _wgslsmith_f_op_f32(sign(-1367f))));
    return vec4<u32>(1u, ~21213u, arg_0.x, abs(u_input.d)) >> (firstLeadingBit(~(~vec4<u32>(55586u, arg_0.x, arg_0.x, arg_0.x) >> (~vec4<u32>(u_input.d, 16895u, 1u, 19632u) % vec4<u32>(32u)))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_6(func_5(-1325f, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-871f, 940f, -696f))), vec2<bool>(true, true), func_1())));
    let var_1 = u_input.a.x ^ -(_wgslsmith_add_i32(u_input.a.x, -706i) >> (~reverseBits(var_0.x) % 32u));
    let var_2 = reverseBits(func_5(_wgslsmith_f_op_f32(119f * _wgslsmith_f_op_f32(f32(-1f) * -960f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1179f * 296f), -1747f, _wgslsmith_f_op_f32(f32(-1f) * -1376f))), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec3<bool>(true, true, false))), func_1()).x);
    var var_3 = u_input.c.x;
    var_0 = vec4<u32>(u_input.d, var_0.x, ~u_input.d, 8471u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1127f, -1776f), vec2<f32>(-746f, 226f)) * vec2<f32>(452f, -323f)))), func_1().a)), vec3<f32>(-695f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1231f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(540f, -378f) - _wgslsmith_f_op_f32(f32(-1f) * -2020f)))), firstTrailingBit(abs(var_0.xzz)) & vec3<u32>(max(37878u, var_0.x), var_2, u_input.d), 1i, -vec4<i32>(~(-var_1), -1i, select(~8912i, ~17479i, any(vec3<bool>(true, false, true))), u_input.b ^ -76613i));
}

