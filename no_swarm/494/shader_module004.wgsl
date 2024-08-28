struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    let var_0 = countOneBits(~(select(reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, 24125u, u_input.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(0u, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 0u, 4294967295u, 0u)), vec4<bool>(true, true, true, true)) & select(select(vec4<u32>(u_input.b.x, u_input.b.x, 20603u, u_input.b.x), vec4<u32>(16596u, 11662u, u_input.b.x, u_input.b.x), true), vec4<u32>(19564u, u_input.b.x, 1u, 115536u), 24757u > u_input.b.x)));
    let var_1 = select(vec4<bool>(!select(false, true, true), false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(286f + -178f))) < _wgslsmith_f_op_f32(trunc(-1473f)), false), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false)), vec4<bool>(false, !all(vec3<bool>(false, true, true)), true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(any(vec4<bool>(true, false, true, true)), true, true, true), vec4<bool>(true, true, true, true), !all(vec3<bool>(false, false, false))));
    var var_2 = -998f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1375f) * _wgslsmith_f_op_f32(step(1763f, 523f))))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2099f, -2578f)) * 411f);
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>) -> vec2<i32> {
    var var_0 = vec2<i32>(u_input.a.x, ~u_input.a.x);
    let var_1 = Struct_2(Struct_1(~vec2<i32>(var_0.x, 2147483647i) ^ reverseBits(vec2<i32>(u_input.a.x, 2147483647i) << (u_input.b % vec2<u32>(32u))), abs(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), u_input.a)), _wgslsmith_mult_u32(u_input.b.x, ~66763u & u_input.b.x), vec2<u32>(u_input.b.x, 1u), vec4<i32>(i32(-1i) * -46322i, 2147483647i, ~(-16212i), firstTrailingBit(var_0.x)) >> (min(select(vec4<u32>(u_input.b.x, 1u, 64070u, u_input.b.x), vec4<u32>(u_input.b.x, 34521u, 1u, 14937u), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(4294967295u, 17019u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 50208u, u_input.b.x))) % vec4<u32>(32u))));
    var_0 = vec2<i32>(_wgslsmith_add_i32(var_0.x, abs(-2147483647i)), max(_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, var_1.a.b.x, 1i, var_0.x), var_1.a.e), var_1.a.e), _wgslsmith_div_i32(u_input.a.x, var_0.x)));
    var_0 = vec2<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(firstLeadingBit(15934i)), var_0.x, var_0.x), abs(_wgslsmith_div_vec3_i32(-vec3<i32>(23287i, u_input.a.x, -52439i), ~u_input.a))));
    var_0 = vec2<i32>(-2147483647i, ~firstTrailingBit(u_input.a.x));
    return ~max(reverseBits(~u_input.a.yz) ^ ~u_input.a.yz, select(~u_input.a.zz, vec2<i32>(2147483647i, 1i), !select(arg_0, vec2<bool>(arg_0.x, arg_0.x), arg_0.x)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_add_vec2_u32(firstTrailingBit(u_input.b), vec2<u32>(~firstLeadingBit(min(arg_0.d.x, 29974u)), ~65773u));
    var var_1 = -1961f;
    let var_2 = func_4(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), true), func_3()), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1901f, 648f, -939f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-748f, 932f, 1373f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1281f, 1000f, 339f)))), vec3<f32>(1000f, 1494f, _wgslsmith_f_op_f32(-628f + _wgslsmith_f_op_f32(step(457f, -452f)))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-707f, 1000f, false)))))) + _wgslsmith_f_op_f32(f32(-1f) * -1258f));
    let var_3 = Struct_1(arg_1.a.b.xy, ~(reverseBits(~vec3<i32>(arg_0.a.x, u_input.a.x, 15023i)) | vec3<i32>(arg_0.b.x, 1i, var_2.x)), reverseBits(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, arg_1.a.c) >> (vec3<u32>(1u, arg_1.a.d.x, 0u) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(arg_2.a.d.x, 16134u, 4294967295u))))), arg_2.a.d | vec2<u32>(1u, ~(~arg_2.a.d.x)), ~_wgslsmith_add_vec4_i32(min(firstLeadingBit(vec4<i32>(arg_0.e.x, arg_2.a.e.x, arg_1.a.a.x, -30400i)), vec4<i32>(12664i, 1i, arg_0.b.x, arg_0.e.x)), _wgslsmith_sub_vec4_i32(arg_2.a.e, ~arg_1.a.e)));
    return vec4<i32>(firstLeadingBit(arg_1.a.a.x) & _wgslsmith_sub_i32(41113i, _wgslsmith_div_i32(var_3.e.x >> (22833u % 32u), arg_0.a.x)), -16909i, -(min(u_input.a.x, 9344i) >> (4294967295u % 32u)) << (max(var_3.c, firstLeadingBit(29181u)) % 32u), arg_2.a.e.x);
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = vec3<u32>(1u, ~(_wgslsmith_sub_u32(~1u, u_input.b.x | arg_2.d.x) << (1u % 32u)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(u_input.b.x), arg_2.c, u_input.b.x, arg_2.c), ~(~vec4<u32>(arg_2.d.x, 34974u, u_input.b.x, 83753u))), ~(arg_2.c | arg_2.d.x)));
    let var_1 = Struct_2(Struct_1(arg_2.e.zz, vec3<i32>(arg_1, -_wgslsmith_mult_i32(u_input.a.x, 0i), firstLeadingBit(-50524i)), 1u, var_0.xy, _wgslsmith_add_vec4_i32(min(~vec4<i32>(u_input.a.x, 16767i, u_input.a.x, u_input.a.x), select(vec4<i32>(arg_2.e.x, 2147483647i, 16982i, 56833i), vec4<i32>(u_input.a.x, arg_2.a.x, 9168i, arg_2.a.x), vec4<bool>(false, true, true, false))), _wgslsmith_add_vec4_i32(~vec4<i32>(arg_1, arg_1, -1i, 0i), vec4<i32>(0i, arg_1, -1i, u_input.a.x) >> (vec4<u32>(u_input.b.x, u_input.b.x, arg_2.d.x, var_0.x) % vec4<u32>(32u))))));
    var_0 = vec3<u32>(430u, 4294967295u, _wgslsmith_dot_vec4_u32(select(firstTrailingBit(vec4<u32>(arg_2.d.x, var_1.a.c, 50455u, 0u)), ~vec4<u32>(0u, var_1.a.c, 1u, 4294967295u), true), (vec4<u32>(1u, 4294967295u, 96u, u_input.b.x) >> (vec4<u32>(var_0.x, arg_2.d.x, 22672u, 78807u) % vec4<u32>(32u))) | ~vec4<u32>(32206u, var_1.a.c, 0u, var_0.x))) | vec3<u32>(var_1.a.c, _wgslsmith_mod_u32(select(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), _wgslsmith_dot_vec2_u32(var_1.a.d, var_1.a.d), true), u_input.b.x), abs(select(_wgslsmith_sub_u32(arg_2.c, 81148u), 19555u >> (u_input.b.x % 32u), true)));
    var var_2 = vec4<i32>(abs(min(-2147483647i, -(-28083i << (1u % 32u)))), 1i, ~_wgslsmith_div_i32(arg_2.a.x, -arg_2.b.x) >> ((4294967295u & _wgslsmith_sub_u32(u_input.b.x, 89195u)) % 32u), arg_1);
    var_0 = _wgslsmith_clamp_vec3_u32(reverseBits(max(_wgslsmith_add_vec3_u32(select(vec3<u32>(1u, 0u, 20833u), vec3<u32>(54835u, 12929u, u_input.b.x), vec3<bool>(true, false, true)), vec3<u32>(u_input.b.x, 1u, var_0.x)), vec3<u32>(arg_2.c, ~1u, ~var_1.a.d.x))), abs(vec3<u32>(29297u, ~1u, var_0.x)) << ((vec3<u32>(var_1.a.c, var_1.a.d.x | var_1.a.c, var_1.a.d.x) | ~(~vec3<u32>(1u, 1u, arg_2.c))) % vec3<u32>(32u)), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(7182u, 56673u, u_input.b.x), min(vec3<u32>(20841u, 42058u, var_1.a.c), vec3<u32>(57237u, var_1.a.d.x, 4294967295u)))));
    return vec3<i32>(-2147483647i, _wgslsmith_mod_i32(abs(~_wgslsmith_dot_vec2_i32(arg_2.a, arg_2.b.xz)), 3936i), select(1i, ~var_2.x, select(false, false, max(54642u, var_0.x) < 1u)));
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_1(u_input.a.zz, func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-802f + 1391f))), firstTrailingBit(2147483647i) >> ((u_input.b.x >> (u_input.b.x % 32u)) % 32u), Struct_1(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(6630i, -14592i, u_input.a.x, u_input.a.x), vec4<i32>(-40459i, 38984i, u_input.a.x, -1i))), abs(u_input.a), u_input.b.x, vec2<u32>(69793u ^ u_input.b.x, u_input.b.x & 4294967295u), vec4<i32>(u_input.a.x, 9366i, 1i, u_input.a.x) ^ func_2(Struct_1(u_input.a.zx, u_input.a, 84412u, u_input.b, vec4<i32>(u_input.a.x, -2526i, u_input.a.x, u_input.a.x)), Struct_2(Struct_1(vec2<i32>(16742i, -2147483647i), vec3<i32>(u_input.a.x, -13121i, 3825i), u_input.b.x, u_input.b, vec4<i32>(u_input.a.x, u_input.a.x, 0i, 40017i))), Struct_2(Struct_1(vec2<i32>(u_input.a.x, -15824i), vec3<i32>(u_input.a.x, u_input.a.x, 0i), u_input.b.x, u_input.b, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))))), abs(u_input.b.x), ~u_input.b, firstTrailingBit(vec4<i32>(-1i) * -(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -34927i) & vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
    return !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), _wgslsmith_f_op_f32(sign(1655f)) < -784f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(true, true, true & all(vec2<bool>(false, false)), true), vec4<bool>(false, false, true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)))), true);
    var_0 = select(!(!(!select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), true))), !select(!vec4<bool>(true, false, true, var_0.x), vec4<bool>(true, true, !var_0.x, var_0.x), select(!vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x), true)), true);
    var var_1 = Struct_1(select(~reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, -42630i), u_input.a.yz, vec2<i32>(-8260i, -54594i))), vec2<i32>(~(~2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-18183i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x))), select(!vec2<bool>(var_0.x, var_0.x), select(var_0.wz, func_1(), all(vec2<bool>(var_0.x, var_0.x))), -1000f > _wgslsmith_f_op_f32(round(-1804f)))), vec3<i32>(~(u_input.a.x | select(-45488i, -2147483647i, true)), 21635i, -u_input.a.x), u_input.b.x, abs(firstLeadingBit(u_input.b) | ~vec2<u32>(35396u, 43372u)) << ((vec2<u32>(max(4294967295u, u_input.b.x), 11195u) << (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u)), vec4<i32>(u_input.a.x, abs(_wgslsmith_sub_i32(-5566i, u_input.a.x)) ^ u_input.a.x, abs(max(0i, ~0i)), _wgslsmith_sub_i32(func_4(!var_0.zw, _wgslsmith_f_op_vec3_f32(vec3<f32>(-717f, -2858f, 473f) + vec3<f32>(-566f, 1685f, 842f))).x, -8416i)));
    var var_2 = Struct_2(Struct_1(abs(firstLeadingBit(func_4(var_0.yy, vec3<f32>(634f, 1408f, -404f)))), countOneBits(~(u_input.a >> (vec3<u32>(u_input.b.x, 1u, var_1.d.x) % vec3<u32>(32u)))), var_1.d.x, vec2<u32>(var_1.d.x, ~u_input.b.x), ~(_wgslsmith_mult_vec4_i32(var_1.e, var_1.e) ^ var_1.e)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(822f - _wgslsmith_f_op_f32(ceil(362f))), 178f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-140f, _wgslsmith_f_op_f32(-2349f * 1289f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-218f, 500f))))));
    var_2 = Struct_2(Struct_1(func_2(var_2.a, Struct_2(Struct_1(vec2<i32>(51018i, var_1.e.x), vec3<i32>(u_input.a.x, var_1.e.x, u_input.a.x), var_1.d.x, var_2.a.d, vec4<i32>(var_1.b.x, var_2.a.b.x, 0i, -2147483647i))), Struct_2(Struct_1(u_input.a.yx, vec3<i32>(2147483647i, var_1.b.x, -31603i), 4294967295u, vec2<u32>(var_2.a.c, 19535u), vec4<i32>(54650i, var_1.e.x, -2147483647i, -2147483647i)))).yz, vec3<i32>(_wgslsmith_add_i32(-var_2.a.b.x, countOneBits(var_1.a.x)), var_2.a.e.x, ~(-1i)), ~max(min(13988u, 56479u), var_2.a.c), max(min(u_input.b | var_1.d, vec2<u32>(u_input.b.x, 1u)), ~vec2<u32>(var_2.a.c, 33741u)), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_2.a.b.x, 20091i), -1i), 32644i, -u_input.a.x, 1i)));
    let var_4 = _wgslsmith_f_op_f32(step(var_3.x, var_3.x));
    var_2 = Struct_2(var_2.a);
    var_0 = !select(vec4<bool>(false, true, true, var_1.d.x > _wgslsmith_mod_u32(4294967295u, u_input.b.x)), vec4<bool>(true, false, var_0.x, !all(vec4<bool>(false, false, true, var_0.x))), !(!var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1437f);
}

