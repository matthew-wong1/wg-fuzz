struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = true;
    let var_1 = arg_1;
    var var_2 = Struct_3(vec2<u32>(35815u, 17101u), Struct_1(~(~vec2<u32>(0u, arg_1.a.x) ^ _wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(arg_1.a.x, 0u)))), !vec3<bool>(true, !any(vec4<bool>(var_0, true, var_0, true)), var_0), arg_1, arg_0);
    let var_3 = vec2<bool>(var_2.c.x, !any(!select(vec2<bool>(var_2.c.x, false), var_2.c.yx, false)));
    var var_4 = var_0;
    return 14023u;
}

fn func_3(arg_0: vec2<i32>) -> vec2<u32> {
    let var_0 = Struct_4(!(!vec3<bool>(true, select(false, true, true), true)), -firstTrailingBit(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i)), firstTrailingBit(vec3<i32>(arg_0.x, u_input.b.x, -1i)))), 4294967295u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1198f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1391f, -523f, false)), -1289f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-699f))))), any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)))), select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(true, false, false)), false), select(vec2<bool>(any(vec2<bool>(false, true)), true), select(vec2<bool>(false, true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), !select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true));
    var var_1 = firstLeadingBit(~max(vec4<i32>(arg_0.x, -2338i, var_0.b.x, u_input.b.x), select(vec4<i32>(u_input.b.x, -21979i, 29995i, u_input.b.x), vec4<i32>(1i, arg_0.x, u_input.b.x, -1i), true))) >> (abs(vec4<u32>(~u_input.a, countOneBits(42796u), ~max(83213u, 4294967295u), 1u)) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(max(var_0.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -520f))))));
    let var_3 = Struct_3(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(57734u, 1u), vec2<u32>(var_0.c, var_0.c)), 1u)), _wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(44441u, var_0.c), vec2<u32>(1u, 1u)), ~(vec2<u32>(var_0.c, var_0.c) ^ vec2<u32>(var_0.c, 4294967295u))), ~max(reverseBits(vec2<u32>(30403u, 3920u)), countOneBits(vec2<u32>(1u, var_0.c)))), Struct_1(firstLeadingBit(reverseBits(vec2<u32>(u_input.a, var_0.c)) | ~vec2<u32>(20479u, 4294967295u))), vec3<bool>(true, false, false), Struct_1(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(38722u, u_input.a) >> (vec2<u32>(u_input.a, var_0.c) % vec2<u32>(32u))))), u_input.b.x);
    let var_4 = _wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(var_3.b.a.x, 4294967295u, u_input.a) >> (max(vec3<u32>(u_input.a, 1u, var_0.c), vec3<u32>(4294967295u, var_3.b.a.x, 1u)) % vec3<u32>(32u)))), vec3<u32>(1u, _wgslsmith_div_u32(_wgslsmith_mult_u32(var_3.a.x & 4294967295u, var_0.c), ~12588u >> (u_input.a % 32u)), abs(var_0.c)));
    return vec2<u32>(~_wgslsmith_add_u32(func_2(-27431i, Struct_1(var_3.b.a)), var_3.d.a.x), 106277u >> (_wgslsmith_add_u32(firstLeadingBit(firstTrailingBit(var_4.x)), var_4.x) % 32u));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_2(-30471i, Struct_1(vec2<u32>(~4685u, arg_1.b.a.x ^ u_input.a)), arg_1.c, select(abs(abs(countOneBits(vec3<i32>(2147483647i, 29576i, arg_2.b.x)))), abs(_wgslsmith_clamp_vec3_i32(arg_1.d, arg_2.b, arg_1.d)), !(!any(vec4<bool>(arg_3.x, arg_3.x, arg_2.a.x, true)))), Struct_1(vec2<u32>(func_2(arg_2.b.x, arg_1.c) & (1u << (arg_2.c % 32u)), ~40839u)));
    var var_1 = Struct_2(0i, Struct_1(countOneBits(~(~arg_1.b.a))), Struct_1(~(~var_0.b.a)), vec3<i32>(firstLeadingBit(_wgslsmith_mult_i32(1i, arg_1.d.x & -1i)), 1i, arg_2.b.x << (~(0u >> (0u % 32u)) % 32u)), Struct_1(min(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_2.c), _wgslsmith_mod_vec2_u32(var_0.c.a, vec2<u32>(arg_2.c, 14092u))), func_3(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, arg_2.b.x), vec2<i32>(arg_1.a, 44020i))))));
    let var_2 = _wgslsmith_sub_u32(countOneBits(1u), 1u);
    var var_3 = Struct_1(var_1.c.a);
    var_0 = Struct_2(0i, var_0.e, Struct_1(arg_1.b.a), (firstLeadingBit(arg_2.b) & vec3<i32>(-48044i, _wgslsmith_div_i32(arg_1.d.x, arg_1.d.x), -12210i)) >> (vec3<u32>(1u, ~(~var_2), ~_wgslsmith_clamp_u32(0u, arg_2.c, 33933u)) % vec3<u32>(32u)), arg_1.c);
    return Struct_1(vec2<u32>(arg_2.c, 39086u));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = vec3<f32>(880f, _wgslsmith_div_f32(arg_0.d, arg_3), 599f);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.yy)) - vec2<f32>(1f, -190f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xy), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yy - var_0.zy), var_0.yz)))), arg_0.e.x));
    var var_2 = Struct_2(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-arg_0.b.x, ~22076i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.e, 1i, -2147483647i), vec4<i32>(u_input.b.x, 0i, -1i, arg_1.e)), max(13604i, arg_0.b.x)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(7402i, -34873i, u_input.b.x, arg_0.b.x), vec4<i32>(58370i, 2147483647i, u_input.b.x, 72985i)))), arg_1.e), func_1(_wgslsmith_f_op_vec2_f32(exp2(var_0.xz)), Struct_2(arg_0.b.x, arg_2, func_1(var_1, Struct_2(u_input.b.x, arg_2, Struct_1(vec2<u32>(arg_0.c, arg_0.c)), vec3<i32>(arg_1.e, 23018i, 37616i), Struct_1(vec2<u32>(arg_2.a.x, arg_1.a.x))), arg_0, !vec2<bool>(arg_1.c.x, true)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-13397i, u_input.b.x), u_input.b), -33091i, _wgslsmith_dot_vec3_i32(arg_0.b, vec3<i32>(arg_0.b.x, arg_0.b.x, arg_1.e))), Struct_1(vec2<u32>(u_input.a, arg_2.a.x) >> (arg_1.b.a % vec2<u32>(32u)))), arg_0, vec2<bool>(any(vec3<bool>(false, arg_0.e.x, arg_1.c.x)), arg_1.c.x)), func_1(var_0.xx, Struct_2(i32(-1i) * -arg_1.e, Struct_1(_wgslsmith_add_vec2_u32(arg_2.a, vec2<u32>(4294967295u, arg_2.a.x))), Struct_1(arg_1.a), min(firstTrailingBit(arg_0.b), vec3<i32>(u_input.b.x, arg_1.e, -59760i)), Struct_1(vec2<u32>(arg_0.c, arg_0.c))), arg_0, select(vec2<bool>(u_input.b.x < 2445i, arg_0.e.x), !select(arg_1.c.yx, arg_1.c.zz, arg_1.c.zy), select(arg_0.a.xy, arg_1.c.yz, select(arg_0.a.zy, arg_0.a.yy, true)))), -(~(~firstLeadingBit(arg_0.b))), arg_1.d);
    var var_3 = arg_0.c;
    var_3 = 65890u;
    return var_2.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(944f, arg_1.x, arg_1.x, arg_1.x))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(331f, arg_1.x, -911f, arg_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 802f, arg_1.x, 412f)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false))), all(vec3<bool>(true, false, true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -1613f), vec4<f32>(-707f, arg_1.x, -1284f, -141f)))))));
    let var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(602f)) + _wgslsmith_f_op_f32(round(1027f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1148f))))));
    var var_3 = ~(~1i);
    let var_4 = u_input.b.x;
    return func_4(Struct_4(vec3<bool>(false, true, true), arg_2.wyz, 4294967295u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)), -1000f), select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_4), vec2<i32>(-1571i, arg_2.x)) >= ~(-15726i))), Struct_3(vec2<u32>(arg_0.a.x, abs(u_input.a)), func_4(Struct_4(vec3<bool>(true, true, true), arg_2.xzw, arg_0.a.x, _wgslsmith_f_op_f32(-1211f * var_2.x), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), Struct_3(vec2<u32>(4294967295u, 7528u), Struct_1(vec2<u32>(arg_0.a.x, u_input.a)), vec3<bool>(true, true, true), Struct_1(vec2<u32>(arg_0.a.x, arg_0.a.x)), min(arg_2.x, arg_2.x)), arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(290f))))), vec3<bool>(any(vec2<bool>(false, false)), false, all(vec2<bool>(true, true))), arg_0, _wgslsmith_sub_i32(u_input.b.x, ~arg_2.x | ~u_input.b.x)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - arg_1.x)) - arg_1.x)));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    var var_0 = -1i;
    let var_1 = arg_3;
    var var_2 = -318f;
    var_0 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(arg_3.a, -2147483647i)) | _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), var_1.d.xy), _wgslsmith_mult_vec2_i32(u_input.b ^ var_1.d.xx, min(var_1.d.yx, var_1.d.yy)), vec2<i32>(-1i, 35953i)), vec2<i32>(-var_1.a, max(_wgslsmith_dot_vec3_i32(var_1.d, vec3<i32>(-46125i, 28333i, 8141i)), 34309i)));
    var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -561f))))));
    return Struct_3(func_3(~var_1.d.xx), var_1.e, vec3<bool>(!select(all(vec3<bool>(true, arg_2, arg_2)), all(vec2<bool>(arg_2, arg_2)), false), any(!vec4<bool>(arg_2, true, false, arg_2)), false), func_1(vec2<f32>(505f, 112f), Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.d.x, 24833i, arg_3.d.x, var_1.a), vec4<i32>(2147483647i, 0i, 36075i, arg_3.d.x)) | ~arg_3.d.x, Struct_1(func_1(vec2<f32>(1035f, -1181f), Struct_2(0i, Struct_1(vec2<u32>(var_1.c.a.x, 8768u)), arg_0, vec3<i32>(8080i, arg_3.d.x, -2147483647i), var_1.c), Struct_4(vec3<bool>(false, arg_2, arg_2), vec3<i32>(arg_3.d.x, -1i, u_input.b.x), 4294967295u, -1000f, vec2<bool>(arg_2, arg_2)), vec2<bool>(true, false)).a), func_4(Struct_4(vec3<bool>(arg_2, arg_2, arg_2), arg_3.d, 82218u, 695f, vec2<bool>(arg_2, arg_2)), Struct_3(vec2<u32>(var_1.b.a.x, u_input.a), Struct_1(arg_3.b.a), vec3<bool>(arg_2, arg_2, arg_2), Struct_1(vec2<u32>(arg_0.a.x, arg_3.b.a.x)), u_input.b.x), arg_3.c, _wgslsmith_f_op_f32(sign(937f))), select(-arg_3.d, vec3<i32>(var_1.a, arg_3.d.x, u_input.b.x), !arg_2), func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(125f, -589f), vec2<f32>(782f, -1000f), vec2<bool>(arg_2, false))), Struct_2(arg_3.d.x, Struct_1(var_1.c.a), arg_3.c, arg_3.d, arg_3.e), Struct_4(vec3<bool>(arg_2, arg_2, arg_2), arg_3.d, 8649u, 276f, vec2<bool>(true, false)), select(vec2<bool>(true, arg_2), vec2<bool>(false, true), vec2<bool>(arg_2, arg_2)))), Struct_4(vec3<bool>(arg_2, arg_2 & false, !arg_2), vec3<i32>(-u_input.b.x, -56330i, 2849i), _wgslsmith_mod_u32(u_input.a, arg_1) << (arg_1 % 32u), _wgslsmith_f_op_f32(-1f), select(!vec2<bool>(arg_2, true), select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2)), arg_2)), !vec2<bool>(any(vec3<bool>(arg_2, arg_2, arg_2)), true)), 1i);
}

fn func_7(arg_0: Struct_3) -> bool {
    let var_0 = ~(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(-20027i, 34424i, -2147483647i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(41705i, 0i, u_input.b.x, u_input.b.x), vec4<i32>(arg_0.e, 12865i, arg_0.e, 0i)))));
    var var_1 = arg_0.d.a.x;
    let var_2 = arg_0.c.x;
    let var_3 = Struct_4(!select(select(vec3<bool>(true, var_2, false), !vec3<bool>(var_2, arg_0.c.x, arg_0.c.x), true), arg_0.c, any(select(arg_0.c.zz, arg_0.c.yz, vec2<bool>(true, var_2)))), var_0.yyy, ~_wgslsmith_add_u32(firstTrailingBit(1u), 0u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-450f - 1042f), _wgslsmith_f_op_f32(f32(-1f) * -1041f), 1u >= func_4(Struct_4(arg_0.c, var_0.xzx, 4294967295u, -2011f, vec2<bool>(false, true)), arg_0, func_5(Struct_1(arg_0.a), vec2<f32>(-1816f, 115f), var_0), _wgslsmith_f_op_f32(round(-637f))).a.x)), !arg_0.c.xy);
    return var_3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var var_1 = func_7(func_6(func_5(func_4(Struct_4(vec3<bool>(true, true, true), vec3<i32>(-2147483647i, u_input.b.x, -2147483647i), u_input.a, -1067f, vec2<bool>(false, false)), Struct_3(vec2<u32>(1u, u_input.a), Struct_1(vec2<u32>(88134u, 1u)), vec3<bool>(false, true, false), Struct_1(vec2<u32>(u_input.a, 69971u)), 16047i), func_1(vec2<f32>(771f, 788f), Struct_2(u_input.b.x, Struct_1(vec2<u32>(30374u, u_input.a)), Struct_1(vec2<u32>(u_input.a, 58919u)), vec3<i32>(40732i, -62479i, 0i), Struct_1(vec2<u32>(u_input.a, u_input.a))), Struct_4(vec3<bool>(true, true, false), vec3<i32>(7890i, 61232i, u_input.b.x), u_input.a, -278f, vec2<bool>(true, false)), vec2<bool>(true, false)), _wgslsmith_f_op_f32(-224f * -749f)), vec2<f32>(1f, _wgslsmith_div_f32(857f, 379f)), select(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i), -vec4<i32>(0i, u_input.b.x, 2147483647i, -11890i), vec4<bool>(false, true, true, false))), ~45284u, true, Struct_2(u_input.b.x & ~u_input.b.x, Struct_1(countOneBits(vec2<u32>(1u, u_input.a))), Struct_1(vec2<u32>(31021u, u_input.a)), vec3<i32>(~0i, -14149i, u_input.b.x), func_5(func_1(vec2<f32>(642f, -236f), Struct_2(1i, Struct_1(vec2<u32>(u_input.a, 79956u)), Struct_1(vec2<u32>(u_input.a, u_input.a)), vec3<i32>(-11605i, 1i, -1i), Struct_1(vec2<u32>(u_input.a, u_input.a))), Struct_4(vec3<bool>(false, false, true), vec3<i32>(0i, -2147483647i, u_input.b.x), 1u, -118f, vec2<bool>(true, true)), vec2<bool>(false, true)), vec2<f32>(1000f, 1046f), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<i32>(62648i, 1i, u_input.b.x, -55793i)))));
    var_1 = false;
    let var_2 = Struct_2(u_input.b.x, func_4(Struct_4(func_6(Struct_1(vec2<u32>(0u, 52640u)), ~0u, true, Struct_2(u_input.b.x, Struct_1(vec2<u32>(u_input.a, 0u)), Struct_1(vec2<u32>(1u, 41877u)), vec3<i32>(u_input.b.x, 31577i, 1i), Struct_1(vec2<u32>(0u, 57551u)))).c, vec3<i32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-9525i, -7574i, 1931i), vec3<i32>(u_input.b.x, u_input.b.x, -26072i))), countOneBits(u_input.a), _wgslsmith_f_op_f32(874f * _wgslsmith_f_op_f32(select(-277f, -2675f, true))), func_6(func_5(Struct_1(vec2<u32>(u_input.a, u_input.a)), vec2<f32>(-811f, 785f), vec4<i32>(u_input.b.x, -27865i, -1i, u_input.b.x)), func_3(u_input.b).x, true, Struct_2(u_input.b.x, Struct_1(vec2<u32>(34531u, 4294967295u)), Struct_1(vec2<u32>(4382u, 4294967295u)), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(vec2<u32>(u_input.a, 30175u)))).c.zy), func_6(func_5(func_5(Struct_1(vec2<u32>(u_input.a, 37509u)), vec2<f32>(2361f, 1000f), vec4<i32>(4651i, u_input.b.x, 23347i, 21491i)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1479f, 1000f), vec2<f32>(621f, -322f), true)), vec4<i32>(u_input.b.x, u_input.b.x, 31047i, -22318i) | vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.a, true | any(vec4<bool>(false, false, false, true)), Struct_2(1i, Struct_1(vec2<u32>(35094u, 77247u)), func_6(Struct_1(vec2<u32>(0u, 1u)), 16967u, false, Struct_2(-2147483647i, Struct_1(vec2<u32>(u_input.a, 0u)), Struct_1(vec2<u32>(u_input.a, u_input.a)), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), Struct_1(vec2<u32>(u_input.a, 0u)))).b, vec3<i32>(-1330i, u_input.b.x, u_input.b.x), Struct_1(vec2<u32>(0u, 27026u)))), func_5(func_4(Struct_4(vec3<bool>(false, true, false), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.a, -1000f, vec2<bool>(true, false)), Struct_3(vec2<u32>(u_input.a, u_input.a), Struct_1(vec2<u32>(u_input.a, 4294967295u)), vec3<bool>(false, false, false), Struct_1(vec2<u32>(69348u, u_input.a)), -2147483647i), Struct_1(vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_f_op_f32(floor(-2198f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(743f, 558f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(291f, 285f), vec2<f32>(-164f, -462f), vec2<bool>(false, true))), func_6(Struct_1(vec2<u32>(u_input.a, u_input.a)), 105823u, true, Struct_2(16025i, Struct_1(vec2<u32>(u_input.a, u_input.a)), Struct_1(vec2<u32>(u_input.a, 45450u)), vec3<i32>(55026i, u_input.b.x, 31080i), Struct_1(vec2<u32>(u_input.a, 1u)))).c.yy)), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -22557i, 0i, -1i), vec4<i32>(7265i, u_input.b.x, 0i, 122092i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(766f * -2142f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -939f))))), func_5(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-3083f, 500f), vec2<f32>(840f, 909f))), Struct_2(-28055i & u_input.b.x, func_6(Struct_1(vec2<u32>(u_input.a, u_input.a)), 73655u, false, Struct_2(u_input.b.x, Struct_1(vec2<u32>(70595u, u_input.a)), Struct_1(vec2<u32>(u_input.a, 40999u)), vec3<i32>(u_input.b.x, 17512i, -58450i), Struct_1(vec2<u32>(88736u, u_input.a)))).d, func_5(Struct_1(vec2<u32>(u_input.a, 0u)), vec2<f32>(469f, -486f), vec4<i32>(0i, u_input.b.x, u_input.b.x, 4026i)), vec3<i32>(35761i, -45012i, 1i), Struct_1(vec2<u32>(u_input.a, u_input.a))), Struct_4(vec3<bool>(false, true, false), ~vec3<i32>(-14757i, u_input.b.x, u_input.b.x), firstLeadingBit(u_input.a), -1311f, select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1718f, -1119f), vec2<f32>(-1363f, -2180f)))))), vec4<i32>(-53315i, -3335i, -1i, -2147483647i) >> (~(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) | vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))), vec3<i32>(u_input.b.x, u_input.b.x, 1i), func_5(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1572f, -1000f)), Struct_2(-9885i, Struct_1(vec2<u32>(21502u, u_input.a)), Struct_1(vec2<u32>(u_input.a, 1u)), ~vec3<i32>(u_input.b.x, 561i, 2147483647i), func_5(Struct_1(vec2<u32>(u_input.a, 1u)), vec2<f32>(783f, 792f), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i))), Struct_4(vec3<bool>(true, true, false), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 0i, u_input.b.x), vec3<i32>(-1i, 2147483647i, u_input.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 10664u), vec3<u32>(1u, 51749u, 4294967295u)), _wgslsmith_f_op_f32(abs(289f)), func_6(Struct_1(vec2<u32>(u_input.a, 8396u)), u_input.a, true, Struct_2(u_input.b.x, Struct_1(vec2<u32>(15674u, 1u)), Struct_1(vec2<u32>(u_input.a, 1323u)), vec3<i32>(-1i, u_input.b.x, u_input.b.x), Struct_1(vec2<u32>(u_input.a, u_input.a)))).c.yx), vec2<bool>(u_input.b.x > 10298i, func_6(Struct_1(vec2<u32>(29331u, 31989u)), 19360u, false, Struct_2(-70168i, Struct_1(vec2<u32>(u_input.a, u_input.a)), Struct_1(vec2<u32>(u_input.a, u_input.a)), vec3<i32>(u_input.b.x, -651i, u_input.b.x), Struct_1(vec2<u32>(u_input.a, 4294967295u)))).c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(933f, 1297f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-195f, -663f)))), vec4<i32>(u_input.b.x, ~0i, ~_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1216f, -213f)) - vec2<f32>(-366f, 2327f)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(709f, -1102f) * vec2<f32>(359f, 1000f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -249f) + vec2<f32>(139f, 179f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-731f, 1216f), vec2<f32>(833f, 604f))))))), firstLeadingBit(~firstLeadingBit(-vec4<i32>(0i, u_input.b.x, var_2.a, var_2.a))), func_5(func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(249f, -184f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1653f, 869f))), Struct_2(min(var_2.d.x, 1i), Struct_1(vec2<u32>(62258u, 29793u)), Struct_1(vec2<u32>(var_2.b.a.x, 4294967295u)), vec3<i32>(var_2.d.x, -4388i, 1i), var_2.b), Struct_4(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), ~vec3<i32>(u_input.b.x, -1725i, -2147483647i), var_2.c.a.x, -1724f, vec2<bool>(true, true)), vec2<bool>(true, all(vec2<bool>(true, false)))), vec2<f32>(1f, 1f), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.d.x, 1i, 2147483647i, -24750i), vec4<i32>(-2147483647i, var_2.d.x, var_2.d.x, var_2.a), vec4<i32>(-48755i, 0i, var_2.a, 64227i)) << (~vec4<u32>(4294967295u, var_2.c.a.x, 9692u, 33014u) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_2.a, 10847i, 2147483647i), vec4<i32>(var_2.d.x, -65778i, u_input.b.x, u_input.b.x)))).a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1299f))))), -(~(~(vec4<i32>(u_input.b.x, var_2.a, u_input.b.x, var_2.d.x) | vec4<i32>(0i, var_2.d.x, -1i, 1i)))));
}

