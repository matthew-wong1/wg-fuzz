struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-arg_0);
    let var_1 = ~firstLeadingBit(reverseBits(66656u));
    global0 = -(~vec2<i32>(~_wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.yy), global0.x));
    var var_2 = _wgslsmith_f_op_f32(abs(var_0)) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 1271f) - _wgslsmith_f_op_f32(326f * arg_0)))));
    let var_3 = !all(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    return !(!(!(!(!vec3<bool>(false, var_3, var_3)))));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(Struct_1(select(u_input.b.zww, ~u_input.b.xzx, func_3(123f)), u_input.d & 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -134f) * 279f), vec3<u32>(u_input.c, ~u_input.d, u_input.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1881f)), -452f, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-705f, -1000f) + vec2<f32>(592f, 1569f)))), Struct_1(vec3<i32>(firstLeadingBit(u_input.b.x), global0.x, u_input.a << (u_input.d % 32u)), ~29669u, _wgslsmith_f_op_f32(min(-1000f, -1023f)), ~(vec3<u32>(u_input.d, 4294967295u, 7795u) ^ vec3<u32>(51184u, u_input.d, u_input.c)), -588f), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, 0i, -1i), u_input.b.xwy), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-866f + -598f)), ~firstLeadingBit(vec3<u32>(u_input.c, 69734u, 0u)), 314f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-202f + -315f))))), Struct_1(_wgslsmith_clamp_vec3_i32(countOneBits(-u_input.b.ywx), u_input.b.xyx, firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -2147483647i, 1i), u_input.b.yzy))), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1197f)) - _wgslsmith_f_op_f32(-271f * _wgslsmith_f_op_f32(max(-1532f, 248f)))), abs(~vec3<u32>(u_input.c, 6344u, 45732u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-208f)) - -1259f) + _wgslsmith_f_op_f32(-1424f - _wgslsmith_f_op_f32(1451f * 130f)))));
    let var_1 = -462f;
    global0 = ~(-(firstLeadingBit(var_0.a.c.a.yx) >> (min(vec2<u32>(5069u, var_0.b.d.x) ^ var_0.b.d.xx, _wgslsmith_div_vec2_u32(var_0.b.d.xy, vec2<u32>(1u, 63184u))) % vec2<u32>(32u))));
    global0 = vec2<i32>(~_wgslsmith_div_i32(~u_input.b.x, i32(-1i) * -2533i), 1i) | -vec2<i32>(~(-2147483647i ^ u_input.a), global0.x);
    return Struct_1(var_0.a.c.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d, 1u, 32459u, var_0.b.d.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, var_0.a.d.b, 31233u, 0u), vec4<u32>(var_0.b.b, var_0.a.d.b, var_0.a.a.b, var_0.b.d.x))) << (_wgslsmith_clamp_u32(1u, var_0.a.c.d.x, 1u | var_0.a.d.b) % 32u), var_0.b.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, var_1, arg_0)), 2948f)))), vec3<u32>(~(~u_input.d), 4294967295u, _wgslsmith_div_u32(~var_0.a.d.d.x, 0u)) ^ (~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.a.d.x, 25246u, var_0.b.d.x), var_0.a.a.d) ^ abs(vec3<u32>(4294967295u, 1u, 90518u))), var_0.b.c);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) * _wgslsmith_f_op_f32(f32(-1f) * -349f));
    global0 = -arg_2.a.zx & abs(abs(-firstTrailingBit(arg_2.a.xy)));
    var var_1 = _wgslsmith_add_i32(arg_2.a.x, arg_1.x);
    var var_2 = func_2(arg_0.x, vec4<bool>(!(!arg_0.x), !((587f <= var_0) || false), arg_0.x, arg_0.x));
    return Struct_1(-min(~arg_1.wxx ^ ~u_input.b.xwy, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, var_2.a.x), vec3<i32>(0i, -1i, 1i))), _wgslsmith_mod_u32(~u_input.d, 4294967295u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(var_0 * var_2.c)) * var_2.c), var_2.c, all(!arg_0.xx))), _wgslsmith_add_vec3_u32(~vec3<u32>(~15518u, ~17893u, ~var_2.b), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_2.d, vec3<u32>(var_2.b, 4294967295u, arg_2.d.x)), arg_2.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(26772u, 4294967295u, 4294967295u, 1u), vec4<u32>(arg_2.b, 113083u, 0u, 36758u) << (vec4<u32>(4294967295u, 44576u, 102101u, 22941u) % vec4<u32>(32u))), u_input.d)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(538f + -540f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(112f, 1224f, arg_0.x)), var_2.c)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.e, 1606f, arg_0.x))) * var_0)));
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = arg_0;
    global0 = var_0.a.yz;
    global0 = func_1(vec3<bool>(true, true, true), _wgslsmith_mult_vec4_i32(((vec4<i32>(0i, 12912i, -2147483647i, var_0.a.x) ^ u_input.b) << (vec4<u32>(104670u, 26033u, arg_0.d.x, 33506u) % vec4<u32>(32u))) | ~(vec4<i32>(u_input.b.x, arg_0.a.x, 2147483647i, -41522i) >> (vec4<u32>(arg_0.b, var_0.d.x, 1u, arg_0.b) % vec4<u32>(32u))), -_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(23884i, -1i, var_0.a.x, arg_0.a.x)), u_input.b)), Struct_1(func_2(!all(vec2<bool>(true, false)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))).a, countOneBits(4953u) >> (u_input.c % 32u), _wgslsmith_f_op_f32(min(var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * 895f)))), ~arg_0.d >> (select(reverseBits(var_0.d), _wgslsmith_add_vec3_u32(vec3<u32>(29020u, var_0.b, 1u), vec3<u32>(4294967295u, var_0.d.x, 1u)), all(vec3<bool>(true, true, true))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(661f)), _wgslsmith_f_op_f32(var_0.e * var_0.c))))))).a.zx;
    global0 = -func_2(u_input.d >= ~(~62576u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)).a.xy;
    global0 = min(var_0.a.zy, var_0.a.xz);
    return vec3<u32>(14706u, reverseBits(_wgslsmith_mult_u32(var_0.d.x, max(~var_0.b, arg_0.d.x))), 4294967295u);
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1434f, arg_0.c), vec2<f32>(-119f, 870f))))) - vec2<f32>(-2930f, _wgslsmith_f_op_f32(arg_0.c + arg_0.e))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(791f, 538f) - vec2<f32>(arg_0.c, arg_0.c)))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-199f)))), 476f));
    var var_1 = true;
    var_1 = false & any(select(vec4<bool>(true, true, all(vec2<bool>(false, false)), false), vec4<bool>(true, 8800i < global0.x, select(true, true, false), any(vec3<bool>(true, false, false))), false));
    var var_2 = Struct_2(func_2(~0i >= global0.x, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, -362f))), func_1(select(select(func_3(-486f), func_3(var_0.x), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), arg_0.a.x > (-2147483647i & arg_0.a.x)), u_input.b, arg_0), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(1f))))));
    return StorageBuffer(_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d.a.x, 1471i, i32(-1i) * -2147483647i, ~global0.x), ~min(vec4<i32>(-1i, 6630i, global0.x, u_input.b.x), vec4<i32>(-6350i, var_2.a.a.x, var_2.d.a.x, 2147483647i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(455f, 852f), _wgslsmith_f_op_f32(arg_0.e + -415f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-546f, -1338f) + vec2<f32>(arg_0.e, -502f))), true)) + _wgslsmith_f_op_vec2_f32(max(var_2.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_2.b - vec2<f32>(-463f, var_2.d.c))))))), firstLeadingBit(var_2.d.d.zx) | var_2.d.d.yz, ~max(~(~vec4<u32>(0u, 1u, 4294967295u, u_input.c)), min(~vec4<u32>(arg_1, u_input.d, arg_1, 84764u), vec4<u32>(arg_0.b, var_2.d.b, u_input.c, var_2.a.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_1(vec3<i32>(i32(-1i) * -20019i, _wgslsmith_sub_i32(global0.x, global0.x), 7602i), ~u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -318f) * -507f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1206f + 301f))), firstTrailingBit(func_4(func_1(vec3<bool>(true, false, true), vec4<i32>(global0.x, global0.x, global0.x, 2147483647i), Struct_1(vec3<i32>(global0.x, u_input.a, 2147483647i), u_input.d, 794f, vec3<u32>(u_input.c, u_input.d, 0u), -1564f)))), func_2(!(global0.x <= global0.x), vec4<bool>(func_3(215f).x, true, global0.x == global0.x, all(vec4<bool>(true, true, true, false)))).e), _wgslsmith_clamp_u32(u_input.d, ~(~82527u), 1u));
}

