struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    let var_0 = select(vec3<bool>((true && !arg_0) != arg_0, select(!arg_0, any(vec2<bool>(arg_0, arg_0)), (arg_0 || arg_0) | true), true), vec3<bool>(false, any(vec3<bool>(arg_0, true, true)), true), arg_0);
    let var_1 = Struct_2(arg_1, _wgslsmith_add_vec3_i32(arg_1.b.zww, arg_1.b.zzx), Struct_1(u_input.a, _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.b.x ^ 1i, _wgslsmith_sub_i32(u_input.b, u_input.b), ~arg_1.b.x, arg_1.b.x << (arg_1.a % 32u)), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), arg_1.b))), Struct_1(1u, -arg_1.b), Struct_1(~abs(_wgslsmith_clamp_u32(4294967295u, global0.x, 63172u)), -firstTrailingBit(_wgslsmith_div_vec4_i32(arg_1.b, arg_1.b))));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(202f, -181f), 762f, _wgslsmith_f_op_f32(529f - 136f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-873f, 106f, -759f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-201f, 100f, 603f))), var_0))))));
    global0 = select(~vec2<u32>(max(~18932u, 77868u), arg_1.a), select(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(arg_1.a, 58096u)), vec2<u32>(~0u, 21888u)), vec2<u32>(1u, 1u), false), var_0.yz);
    var var_3 = !(!vec4<bool>(_wgslsmith_mult_i32(var_1.c.b.x, var_1.b.x) >= abs(1i), !var_0.x, -692f >= var_2.x, !all(var_0)));
    return var_2.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(351f, _wgslsmith_f_op_f32(func_3(true, arg_1))), arg_0, (abs(1u) != ~global0.x) != all(vec3<bool>(true, true, true))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(arg_0, arg_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-420f * arg_0) - 543f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-822f + -611f))))), arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(1000f - -1685f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 + arg_0)))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_0 = 1437f;
    let var_2 = ~1u << (_wgslsmith_dot_vec3_u32(~(firstLeadingBit(vec3<u32>(4294967295u, 53232u, 20057u)) >> (vec3<u32>(780u, global0.x, 1u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2, firstLeadingBit(0u), ~u_input.a), ~vec3<u32>(4294967295u, arg_2, 1u) ^ ~vec3<u32>(global0.x, 4294967295u, 1u), vec3<u32>(select(78172u, 59436u, true), ~global0.x, countOneBits(u_input.a)))) % 32u);
    return Struct_2(Struct_1(arg_2, vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(arg_1.b.xwz, -arg_1.b.yzz), _wgslsmith_dot_vec3_i32(~arg_1.b.wzy, vec3<i32>(-9068i, arg_1.b.x, arg_1.b.x)), ~firstLeadingBit(-16725i))), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(arg_1.b.yxx, arg_1.b.zyw), vec3<i32>(u_input.b, u_input.b, arg_1.b.x)), -_wgslsmith_mod_i32(1i, -37237i), arg_1.b.x), arg_1.b.zzw), Struct_1(~(~(global0.x | arg_1.a)), arg_1.b), arg_1, arg_1);
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    global0 = _wgslsmith_add_vec2_u32(~arg_0.wy, reverseBits(~vec2<u32>(4294967295u, ~global0.x)));
    var var_0 = ((~vec2<i32>(u_input.b, u_input.b) | _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-27983i, u_input.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(-16791i, -1003i), vec2<i32>(73690i, -1i)))) << (min(min(~vec2<u32>(global0.x, 1247u), arg_0.yz), ~select(arg_0.wz, vec2<u32>(global0.x, arg_0.x), true)) % vec2<u32>(32u))) | select(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.b, u_input.b), reverseBits(u_input.b)), -_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, -1477i))), _wgslsmith_div_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -2122i), vec2<i32>(-57808i, -1i)), vec2<i32>(u_input.b, u_input.b)), true);
    global0 = ~select(countOneBits(vec2<u32>(4294967295u, ~45491u)), ~arg_0.xy, select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), true));
    let var_1 = (vec4<i32>(-1i) * -vec4<i32>(var_0.x << (4294967295u % 32u), ~u_input.b, var_0.x, var_0.x)) ^ select(vec4<i32>(~countOneBits(u_input.b), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.x, 0i, -17782i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), i32(-1i) * -u_input.b, ~u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(~56301i, var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(366i, -1i), vec2<i32>(2147483647i, var_0.x)), 31891i >> (arg_0.x % 32u)), vec4<i32>(-u_input.b, ~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, -1i, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), -3708i)), true);
    var var_2 = var_1;
    return func_2(-327f, Struct_1(36347u, var_1), ~6690u);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = Struct_1(51353u, _wgslsmith_div_vec4_i32(arg_1.c.b, vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(-1i), u_input.b), max(~u_input.b, reverseBits(arg_1.a.b.x)), -(~u_input.b), func_2(-825f, arg_1.c, firstTrailingBit(global0.x)).e.b.x)));
    let var_1 = func_1(_wgslsmith_mult_vec4_u32(~min(~vec4<u32>(58909u, 34236u, global0.x, 88512u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, global0.x, 75289u), vec4<u32>(5096u, 4294967295u, 1u, u_input.a))), reverseBits(~(vec4<u32>(4294967295u, 1284u, arg_1.a.a, 4294967295u) << (vec4<u32>(9751u, arg_1.d.a, global0.x, 1u) % vec4<u32>(32u)))))).c;
    var var_2 = _wgslsmith_f_op_f32(ceil(-695f));
    global0 = vec2<u32>(4294967295u, ~var_0.a);
    var var_3 = Struct_2(Struct_1(0u, vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.b.zyx, var_1.b.zww), 1i, ~22982i, -3292i) & var_1.b), vec3<i32>(u_input.b, ~(~(-1i) >> (~4294967295u % 32u)), _wgslsmith_add_i32(firstTrailingBit(2147483647i), _wgslsmith_div_i32(countOneBits(var_1.b.x), _wgslsmith_mult_i32(var_0.b.x, var_0.b.x)))), func_1(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, var_1.a, var_0.a, arg_1.d.a), reverseBits(vec4<u32>(var_1.a, 62244u, 1u, 29596u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(28743u, 14163u, 0u, 4294967295u), vec4<u32>(global0.x, 15182u, var_0.a, var_0.a)) % vec4<u32>(32u)))).a, arg_1.e, Struct_1(arg_1.c.a, firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(var_1.b.x, var_0.b.x), _wgslsmith_dot_vec3_i32(arg_1.a.b.yzx, arg_1.c.b.zwx), -9711i >> (var_0.a % 32u), select(1i, var_0.b.x, false)))));
    return vec2<u32>(0u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec2<u32>(43142u, global0.x);
    global0 = (vec2<u32>(~1u, ~u_input.a) ^ ~(vec2<u32>(1u, global0.x) & select(vec2<u32>(1u, 25495u), vec2<u32>(72388u, 1u), false))) & select(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1047f, 1631f, -880f, 1024f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1027f, 1147f, 104f, 1000f))), func_1(~vec4<u32>(u_input.a, u_input.a, u_input.a, 15960u))), vec2<u32>(firstLeadingBit(u_input.a) | countOneBits(1u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(86335u, 59514u, 2746u, 1u)), ~vec4<u32>(25528u, u_input.a, 0u, 46158u))), ~u_input.b == func_2(_wgslsmith_div_f32(-1128f, 269f), Struct_1(0u, vec4<i32>(59450i, u_input.b, -2147483647i, 0i)), abs(u_input.a)).e.b.x);
    let var_0 = Struct_1(abs(select(~(u_input.a >> (global0.x % 32u)), ~(u_input.a | 4294967295u), true)), vec4<i32>(u_input.b, ~u_input.b << (u_input.a % 32u), 1i, min(_wgslsmith_clamp_i32(-u_input.b, ~2147483647i, 6728i), min(min(u_input.b, u_input.b), 1i))));
    var var_1 = func_1(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.x, global0.x, u_input.a, 4294967295u), ~vec4<u32>(global0.x, global0.x, global0.x, u_input.a)), vec4<u32>(reverseBits(var_0.a), 51711u, 0u, func_1(vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u)).a.a)) >> (~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a, var_0.a), vec4<u32>(4294967295u, 0u, 15530u, 0u)), select(vec4<u32>(global0.x, global0.x, global0.x, 1u), vec4<u32>(44914u, 19504u, global0.x, 0u), vec4<bool>(true, false, true, false))) % vec4<u32>(32u))).a;
    let var_2 = vec4<bool>(!all(!select(vec2<bool>(false, true), vec2<bool>(true, true), false)), true, true, !all(vec3<bool>(all(vec2<bool>(true, false)), true, true)));
    let var_3 = Struct_1(68920u, vec4<i32>(-93812i, -u_input.b, max(0i, 22595i), _wgslsmith_mod_i32(u_input.b, min(var_0.b.x, var_1.b.x))));
    global0 = max(vec2<u32>(countOneBits(func_2(-1188f, var_0, var_0.a).d.a) & abs(0u), u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(1u, abs(min(var_3.a, var_1.a))), vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a, 105281u), vec2<u32>(50837u, 164634u))), firstLeadingBit(~u_input.a))));
    let var_4 = Struct_1(global0.x, _wgslsmith_mult_vec4_i32(var_1.b, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, var_0.b.x, _wgslsmith_dot_vec2_i32(var_3.b.yy, vec2<i32>(0i, var_0.b.x)), var_1.b.x), -var_1.b)));
    let var_5 = func_1(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(var_0.a, var_0.a, var_0.a, 40151u)) | vec4<u32>(_wgslsmith_add_u32(25071u, 22588u), 22196u, var_4.a | 1u, func_2(1735f, Struct_1(var_3.a, vec4<i32>(var_4.b.x, 2147483647i, -6809i, 2147483647i)), var_3.a).a.a), ~vec4<u32>(var_3.a, u_input.a, u_input.a, ~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(var_2.x, var_4)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(827f - 609f)), var_2.x)), _wgslsmith_f_op_f32(-1f)), vec4<u32>(global0.x, var_3.a, 21287u, _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_4.a, var_0.a), vec3<u32>(5774u, 4294967295u, 1400u))), 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1715f)) - 1000f)))), ~(~abs(vec4<i32>(var_1.b.x, var_1.b.x, var_0.b.x, u_input.b))));
}

