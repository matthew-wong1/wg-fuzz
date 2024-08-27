struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(min(-20523i << (u_input.b % 32u), -44743i << (u_input.b % 32u)), 1i, 1i), ~(-26461i));
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-584f, 836f)))), -129f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(313f - -284f) - _wgslsmith_f_op_f32(round(1267f))) + -747f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-976f, _wgslsmith_f_op_f32(407f * 1534f), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -257f))));
    var var_1 = max(vec2<i32>(~_wgslsmith_div_i32(-2147483647i, 2147483647i), -6294i) >> (u_input.c % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(select(select(vec2<i32>(15256i, 0i), vec2<i32>(1i, 1i), true), vec2<i32>(-2147483647i, 0i), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true))), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(1i, -52898i), vec2<i32>(62437i, 15837i), vec2<bool>(true, true)), ~vec2<i32>(2147483647i, -49102i)), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 55858i), vec2<i32>(39907i, -2147483647i), vec2<i32>(-32494i, -21654i)), min(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-7112i, 0i)), vec2<bool>(true, true)))));
    global0 = max(firstLeadingBit(countOneBits(~0i)), _wgslsmith_dot_vec2_i32(reverseBits(max(vec2<i32>(var_1.x, 0i) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), vec2<i32>(-2147483647i, 2147483647i))), vec2<i32>(min(-39939i, var_1.x), select(60566i, -2147483647i, true)) | vec2<i32>(1i, -var_1.x)));
    return 0i;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(0i, -(_wgslsmith_div_i32(select(58169i, 0i, false), ~28495i) | func_3()));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(~(~(~vec4<i32>(-9980i, -21210i, 36646i, -2147483647i))), vec4<i32>(1i, 0i, -29972i, max(~(-39671i), ~1i))), ~max(-2147483647i, ~34915i >> (_wgslsmith_mult_u32(u_input.c.x, 45184u) % 32u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_mod_i32(-1i, -57196i), func_3(), abs(2147483647i))), _wgslsmith_add_i32(-_wgslsmith_sub_i32(77890i, 1i), -_wgslsmith_div_i32(-2147483647i, -24397i))));
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1039f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1389f))));
    var_1 = select(vec3<i32>(max(_wgslsmith_clamp_i32(var_1.x, var_1.x, var_1.x), -2147483647i), 1i, -func_3()), _wgslsmith_mod_vec3_i32(-(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -49106i, var_1.x), vec3<i32>(34024i, 1i, -1i)) >> (abs(vec3<u32>(4294967295u, 3774u, u_input.c.x)) % vec3<u32>(32u))), ~(~(~vec3<i32>(var_1.x, var_1.x, var_1.x)))), select(vec3<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), _wgslsmith_f_op_f32(floor(-723f)) == _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<bool>(true, true, true), _wgslsmith_dot_vec2_i32(firstLeadingBit(var_1.yx), var_1.xx) < firstTrailingBit(_wgslsmith_add_i32(-30047i, var_1.x))));
    return Struct_1(~u_input.c, vec4<bool>(any(vec3<bool>(true, true, true)), !any(vec2<bool>(true, false)), !(!any(vec4<bool>(true, false, false, true))), true), abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, u_input.c.x, u_input.c.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.c.x), vec3<u32>(53214u, 4294967295u, u_input.a))), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.a, 56026u, u_input.a)), ~vec3<u32>(0u, u_input.c.x, 91225u)), vec3<u32>(_wgslsmith_add_u32(0u, u_input.c.x), u_input.b & 55490u, firstTrailingBit(83058u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(667f, _wgslsmith_div_f32(-1000f, 311f))))), 4294967295u);
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = ~u_input.c;
    let var_1 = u_input.c >> ((~(~max(vec2<u32>(0u, 93277u), var_0)) >> (~select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, u_input.c.x), vec2<u32>(arg_0.e, 4294967295u)), reverseBits(vec2<u32>(arg_0.a.x, var_0.x)), arg_0.b.x) % vec2<u32>(32u))) % vec2<u32>(32u));
    global0 = 1i;
    let var_2 = vec3<u32>(arg_0.c.x, ~var_1.x, 1u & u_input.b);
    global0 = reverseBits(1i);
    return ~(~28416u);
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    let var_0 = vec4<u32>(u_input.b, 92817u, ~u_input.a, func_4(func_2()));
    global0 = abs(i32(-1i) * -47821i);
    var var_1 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(4813i, abs(~15621i)), _wgslsmith_dot_vec3_i32(vec3<i32>(~1i, i32(-1i) * -8288i, _wgslsmith_add_i32(-1i, 27778i)), vec3<i32>(1i, 1i, 1i))), min(min(abs(59481i), -2147483647i << (u_input.c.x % 32u)) ^ min(46318i, -92418i), 1i));
    var var_2 = select(!select(!vec3<bool>(arg_0.x, arg_0.x, true), select(vec3<bool>(false, arg_0.x, true), select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, true, true), vec3<bool>(true, arg_0.x, arg_0.x)), arg_0.x), vec3<bool>(!arg_0.x, arg_1 != 1583f, arg_0.x)), !vec3<bool>(arg_1 < arg_1, any(vec4<bool>(true, true, true, true)), !(!arg_0.x)), any(vec3<bool>(false, !(!arg_0.x), any(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)))));
    global0 = -38184i;
    return Struct_1(_wgslsmith_mult_vec2_u32(~(~(vec2<u32>(u_input.c.x, 17230u) >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, _wgslsmith_mod_u32(var_0.x, var_0.x)), vec2<u32>(u_input.b, 3085u) << (~vec2<u32>(28105u, 8741u) % vec2<u32>(32u)), var_0.wy)), vec4<bool>(!var_2.x, arg_0.x, false, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(floor(-1447f))) <= -281f), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(func_2().e, 0u, u_input.b)), _wgslsmith_clamp_vec3_u32(~var_0.zyw, ~max(var_0.zyx, var_0.zxy), _wgslsmith_add_vec3_u32(~var_0.xyw, var_0.xyx))), 315f, _wgslsmith_clamp_u32(~reverseBits(u_input.a << (0u % 32u)), 0u, 0u));
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    global0 = 1i;
    global0 = -1i;
    return Struct_3(_wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -734f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1104f * _wgslsmith_f_op_f32(-arg_0.d))), arg_0.b.xzy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(vec2<bool>(false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-239f + 926f)))));
    global0 = i32(-1i) * -(~firstLeadingBit(1i));
    let var_1 = 68148u;
    global0 = 19548i;
    var var_2 = -countOneBits(vec4<i32>(min(-2147483647i, ~(-1i)), max(func_3(), 965i), -2147483647i, _wgslsmith_sub_i32(~(-6981i), ~0i)));
    global0 = -countOneBits(_wgslsmith_div_i32(abs(-1i), 31i)) & var_2.x;
    let var_3 = Struct_2(Struct_1(countOneBits(~firstLeadingBit(u_input.c)), vec4<bool>(var_0.c.x, false, select(false, !var_0.c.x, var_0.c.x), true), vec3<u32>(var_1, 1u, u_input.c.x), 174f, 0u), ~func_1(var_0.c.xx, var_0.a).c);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_3.a.d)), _wgslsmith_f_op_f32(abs(var_3.a.d)), _wgslsmith_f_op_f32(ceil(-472f)), _wgslsmith_f_op_f32(abs(521f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.b, 410f, -121f) * _wgslsmith_div_vec4_f32(vec4<f32>(281f, var_0.a, var_3.a.d, var_0.a), vec4<f32>(var_0.a, var_0.a, var_0.b, var_3.a.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(438f, 549f, var_3.a.d, -940f) + vec4<f32>(646f, 111f, -339f, 1015f))))));
    global0 = var_2.x >> (var_1 % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~0u, var_3.a.e), 201f, abs(func_3()), ~(~(var_3.a.c.x >> (u_input.a % 32u))), var_3.a.a.x);
}

