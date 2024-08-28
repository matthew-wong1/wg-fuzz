struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = -2147483647i;
    var_0 = -u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(882f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(832f + -1290f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(158f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(676f, 1428f)))));
    return reverseBits(_wgslsmith_dot_vec3_u32(u_input.c.wwz, _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, 26859u), ~vec3<u32>(12684u, u_input.c.x, u_input.c.x))) << (4294967295u % 32u));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = firstTrailingBit(~func_3(Struct_2(vec4<u32>(4294967295u, u_input.c.x, arg_0.x, u_input.c.x), u_input.c.wxz)));
    var var_1 = arg_0.x;
    var_0 = ~reverseBits(reverseBits(~(arg_0.x | u_input.c.x)));
    var var_2 = min(1u, arg_0.x);
    let var_3 = _wgslsmith_mult_u32(max(~u_input.c.x, 7810u), ~51221u);
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -779f) - 809f))), _wgslsmith_f_op_f32(select(-2041f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(776f + 802f)), !any(vec2<bool>(false, false)))), 741f), ~u_input.c.zyw, -2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1424f, 351f)))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> vec2<i32> {
    var var_0 = vec3<bool>(true, !any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), true)), true);
    var var_1 = Struct_2(u_input.c, vec3<u32>(func_2(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), ~vec2<u32>(63911u, 49743u))).b.x, arg_2.b.x, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c.x, 4294967295u), countOneBits(arg_1.b.x))));
    var_1 = Struct_2(max(firstTrailingBit(var_1.a), ~vec4<u32>(u_input.c.x, u_input.c.x, 31177u, 4294967295u)) << (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(0u, 4294967295u, arg_3.x, 129764u)), _wgslsmith_mult_vec4_u32(var_1.a, u_input.c)), ~firstLeadingBit(vec4<u32>(arg_1.b.x, arg_2.b.x, arg_3.x, arg_3.x))) % vec4<u32>(32u)), ~(max(vec3<u32>(1u, 0u, 4294967295u), firstLeadingBit(vec3<u32>(var_1.b.x, 0u, arg_1.b.x))) >> (arg_1.b % vec3<u32>(32u))));
    let var_2 = Struct_4(Struct_2(~(~reverseBits(var_1.a)), u_input.c.wzx), Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(886f, arg_2.a.x, 811f), arg_1.a, vec3<bool>(false, var_0.x, var_0.x))))), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~arg_2.b, vec3<u32>(86408u, arg_1.b.x, 55956u) >> (vec3<u32>(29614u, arg_3.x, arg_2.b.x) % vec3<u32>(32u))), vec3<u32>(max(arg_3.x, 1u), min(var_1.b.x, arg_3.x), 66800u)), 7869i, arg_1.a.xx), _wgslsmith_f_op_f32(floor(489f)), Struct_3(vec4<u32>(_wgslsmith_add_u32(1u, 0u), u_input.c.x, ~func_2(vec2<u32>(1u, 22846u)).b.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, arg_3.x), vec2<u32>(u_input.c.x, 1534u)), _wgslsmith_sub_u32(40498u, var_1.b.x))), _wgslsmith_div_i32(-(i32(-1i) * -1i), reverseBits(16558i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_1.a, vec3<f32>(-1000f, arg_2.a.x, -311f)))), Struct_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_1.b.x, arg_1.b.x, 55306u), var_1.a, u_input.c), vec4<u32>(9511u, arg_3.x, 1u, arg_2.b.x), vec4<u32>(0u, arg_2.b.x, 53778u, 21607u)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(32099u, 24701u, arg_2.b.x), arg_2.b), ~var_1.b)), Struct_2(vec4<u32>(_wgslsmith_mult_u32(0u, arg_1.b.x), arg_3.x, 0u, _wgslsmith_dot_vec2_u32(arg_3, arg_1.b.xy)), arg_2.b & vec3<u32>(arg_1.b.x, 4294967295u, 47320u))), Struct_3(~max(vec4<u32>(arg_2.b.x, 1u, var_1.b.x, u_input.c.x) & u_input.c, select(u_input.c, var_1.a, true)), -27897i, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_2.a)) + _wgslsmith_f_op_vec3_f32(-arg_1.a)))), Struct_2(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.x, 0u, var_1.b.x, arg_2.b.x), vec4<u32>(90119u, 0u, arg_3.x, 2315u))), abs(var_1.b) ^ reverseBits(u_input.c.zww)), Struct_2(~_wgslsmith_mult_vec4_u32(var_1.a, vec4<u32>(1u, 4294967295u, arg_1.b.x, u_input.c.x)), select(arg_2.b, u_input.c.ywz & vec3<u32>(14557u, arg_3.x, var_1.a.x), false))));
    let var_3 = !vec2<bool>(all(!select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x), false)), select(var_0.x, !var_0.x, true));
    return ~vec2<i32>(reverseBits(_wgslsmith_add_i32(29297i, u_input.a)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, 0i, arg_1.c), vec4<i32>(-2147483647i, arg_1.c, arg_0.x, -6238i)), vec4<i32>(-7410i, arg_0.x, var_2.b.c, arg_1.c))) << (~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(7184u, var_1.a.x), vec2<u32>(arg_3.x, arg_3.x)) >> (~vec2<u32>(53258u, 1u) % vec2<u32>(32u)), select(func_2(vec2<u32>(38223u, 71204u)).b.yx, vec2<u32>(var_1.b.x, arg_2.b.x), !var_3.x)) % vec2<u32>(32u));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = arg_3.e.b.x;
    var var_1 = Struct_2(abs(arg_3.d.a), vec3<u32>(25106u, ~arg_0 ^ abs(firstTrailingBit(arg_0)), ~(~4294967295u)));
    let var_2 = countOneBits(select(~u_input.c.xz, var_1.b.zz & ~vec2<u32>(41145u, 0u), true)) & ~countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.a.x, var_0), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.e.a.x, arg_0), vec2<u32>(u_input.c.x, var_1.b.x))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-618f, _wgslsmith_div_f32(1720f, -423f), _wgslsmith_f_op_f32(step(arg_3.c.x, 292f)), _wgslsmith_f_op_f32(sign(arg_3.c.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(129f, arg_3.c.x, -543f, -504f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.c.x, arg_3.c.x, arg_3.c.x, arg_3.c.x))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(270f, 229f, arg_3.c.x, 310f) - vec4<f32>(arg_3.c.x, -2407f, 1505f, arg_3.c.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(158f, 453f, arg_3.c.x, -542f) * vec4<f32>(782f, 272f, 1000f, 535f)))))));
    var_1 = Struct_2(_wgslsmith_sub_vec4_u32(abs(var_1.a), vec4<u32>(func_2(firstTrailingBit(var_1.b.zz)).b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, 22096u, arg_3.a.x), var_1.a) & ~arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 86904u, var_0), vec4<u32>(var_0, 1u, 14196u, 53835u)) >> (1u % 32u), var_1.a.x)), ~(~func_2(var_2).b));
    return Struct_2(arg_3.a ^ firstLeadingBit(~arg_3.d.a), ~max(abs(arg_3.d.b) & u_input.c.wzw, select(~var_1.b, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.e.a.x, arg_3.d.a.x, var_2.x), vec3<u32>(u_input.c.x, var_2.x, arg_3.e.a.x)), select(true, true, false))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = 0i;
    var_0 = (40702i >> (u_input.c.x % 32u)) >> (u_input.c.x % 32u);
    var_0 = firstLeadingBit(u_input.a);
    var_0 = u_input.a;
    var var_1 = Struct_4(func_5(u_input.c.x, 95371i, func_4(abs(-u_input.b), func_2(vec2<u32>(1u, 8192u)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1053f, 1325f)), ~u_input.c.zyz, ~u_input.b.x, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(871f, 203f)))), func_2(vec2<u32>(u_input.c.x, 4294967295u) | vec2<u32>(1u, u_input.c.x)).b.zy), Struct_3(u_input.c, -_wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(23111i, -25816i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 831f, 1843f), vec3<f32>(1226f, 1906f, 1930f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-428f, 326f, arg_0) + vec3<f32>(arg_0, arg_0, 436f))), Struct_2(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 76420u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 2652u), vec3<u32>(3671u, u_input.c.x, u_input.c.x))), Struct_2(u_input.c, firstTrailingBit(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x))))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1316f + 1000f) - arg_0), _wgslsmith_f_op_f32(-781f - _wgslsmith_f_op_f32(arg_0 * arg_0)), -1573f), ~(~countOneBits(vec3<u32>(9512u, 59469u, 0u))), max(-15552i, -2147483647i), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-828f, arg_0)))), arg_0, Struct_3(u_input.c, u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(202f, -371f, arg_0), vec3<f32>(arg_0, -785f, arg_0))), vec3<f32>(2044f, 1143f, arg_0), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false))))), func_5(~firstLeadingBit(u_input.c.x), -reverseBits(-14696i), _wgslsmith_clamp_vec2_i32(-u_input.b.xx, _wgslsmith_div_vec2_i32(vec2<i32>(0i, 1i), u_input.b.zx), firstTrailingBit(u_input.b.zy)), Struct_3(~vec4<u32>(u_input.c.x, 26148u, 7051u, 4294967295u), -92911i, vec3<f32>(arg_0, arg_0, arg_0), Struct_2(vec4<u32>(0u, 1831u, 2484u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), func_5(4294967295u, 2147483647i, vec2<i32>(-31982i, 35717i), Struct_3(u_input.c, -11475i, vec3<f32>(arg_0, 322f, arg_0), Struct_2(u_input.c, vec3<u32>(26360u, u_input.c.x, u_input.c.x)), Struct_2(u_input.c, u_input.c.yxz))))), func_5(u_input.c.x, u_input.a, ~(~vec2<i32>(36036i, -3468i)), Struct_3(u_input.c, ~0i, vec3<f32>(1666f, -648f, arg_0), func_5(4294967295u, 10595i, vec2<i32>(u_input.b.x, 17055i), Struct_3(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), -80094i, vec3<f32>(arg_0, -450f, 829f), Struct_2(vec4<u32>(u_input.c.x, 32014u, 74940u, 4294967295u), vec3<u32>(u_input.c.x, u_input.c.x, 52845u)), Struct_2(vec4<u32>(u_input.c.x, 39620u, u_input.c.x, 1u), vec3<u32>(35432u, 0u, u_input.c.x)))), Struct_2(vec4<u32>(u_input.c.x, u_input.c.x, 19264u, 1613u), u_input.c.wyw)))), Struct_3(u_input.c, (u_input.b.x & firstLeadingBit(1i)) | firstLeadingBit(-1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(225f, -700f, -584f))) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, -830f), vec3<f32>(arg_0, arg_0, arg_0))) * vec3<f32>(_wgslsmith_f_op_f32(867f - arg_0), _wgslsmith_f_op_f32(-arg_0), -1094f)), Struct_2(~vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 1u), ~_wgslsmith_div_vec3_u32(u_input.c.xyy, u_input.c.zyy)), func_5(53985u, u_input.a, u_input.b.yy, Struct_3(u_input.c, max(u_input.b.x, u_input.b.x), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -1180f, arg_0), vec3<f32>(arg_0, arg_0, -129f)), func_5(78449u, -37220i, vec2<i32>(u_input.b.x, -8625i), Struct_3(u_input.c, 33585i, vec3<f32>(264f, arg_0, -450f), Struct_2(vec4<u32>(49899u, u_input.c.x, 27291u, 41256u), vec3<u32>(4294967295u, u_input.c.x, 1u)), Struct_2(u_input.c, u_input.c.wyw))), Struct_2(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, 32326u))))));
    return func_2(u_input.c.zw);
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    var var_0 = u_input.a;
    var_0 = -9234i;
    var_0 = i32(-1i) * -13953i;
    var var_1 = Struct_5(arg_2, 18866u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)) - _wgslsmith_f_op_f32(round(arg_2.d.x))))), select(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, arg_2.c), u_input.b.xz), ~(u_input.b.yy | vec2<i32>(2147483647i, -2147483647i)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(false, true, false)))));
    var_0 = 2147483647i;
    return 5627i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.b.x, firstTrailingBit(func_6(Struct_2(vec4<u32>(u_input.c.x, u_input.c.x, 4630u, u_input.c.x), u_input.c.ywx), 1u, func_1(332f), func_5(u_input.c.x, u_input.b.x, u_input.b.yy, Struct_3(vec4<u32>(7293u, u_input.c.x, 4294967295u, u_input.c.x), u_input.a, vec3<f32>(494f, 1719f, -1225f), Struct_2(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), vec3<u32>(1u, 0u, u_input.c.x)), Struct_2(vec4<u32>(u_input.c.x, 1u, u_input.c.x, 1u), u_input.c.wyz))))), ~_wgslsmith_mod_i32(i32(-1i) * -26389i, -u_input.a)) | abs(u_input.b);
    var_0 = vec3<i32>(reverseBits(-987i), 2147483647i, 1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(var_0.x, var_0.x), u_input.a, u_input.b.x, -u_input.b.x), (vec4<i32>(u_input.a, u_input.b.x, -28414i, var_0.x) << (u_input.c % vec4<u32>(32u))) >> (vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))));
    var var_1 = Struct_5(func_1(859f), _wgslsmith_dot_vec4_u32(~abs(u_input.c), abs(u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2273f - -360f)), vec2<i32>(((var_0.x << (u_input.c.x % 32u)) | -1i) >> (_wgslsmith_dot_vec2_u32(abs(u_input.c.yw), firstTrailingBit(u_input.c.zw)) % 32u), _wgslsmith_clamp_i32(-1454i, _wgslsmith_mod_i32(-57078i, -35131i), -19616i) >> (u_input.c.x % 32u)));
    var_1 = Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -896f), 1000f, _wgslsmith_f_op_f32(830f + -2231f))), vec3<u32>(func_1(_wgslsmith_f_op_f32(633f - var_1.a.a.x)).b.x, u_input.c.x, ~1u), ~u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, -406f)))))), u_input.c.x, 931f, var_0.yx);
    var_1 = Struct_5(var_1.a, 1u, var_1.c, var_1.d);
    var var_2 = Struct_3(firstLeadingBit(u_input.c), var_1.a.c, _wgslsmith_f_op_vec3_f32(-var_1.a.a), Struct_2(reverseBits(~vec4<u32>(87154u, u_input.c.x, u_input.c.x, var_1.a.b.x)), var_1.a.b), Struct_2(~_wgslsmith_clamp_vec4_u32(vec4<u32>(44350u, 44619u, 4294967295u, 0u), ~vec4<u32>(var_1.b, 4294967295u, 13831u, var_1.b), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 88113u, 36384u, 0u), u_input.c)), func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-274f, 370f)))).b));
    var var_3 = select(!select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), any(vec2<bool>(true, false))), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(all(vec4<bool>(true, true, true, true)), -8303i != -_wgslsmith_clamp_i32(-53415i, 7457i, var_0.x)), vec2<bool>(true && (min(var_2.e.a.x, 4294967295u) <= ~89924u), true));
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.b, ~(vec3<i32>(-1i) * -vec3<i32>(var_1.d.x, var_2.b, var_0.x))));
}

