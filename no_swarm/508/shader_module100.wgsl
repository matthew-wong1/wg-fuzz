struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> f32 {
    var var_0 = -65766i;
    let var_1 = 4294967295u;
    var_0 = ~firstLeadingBit(80602i >> (firstLeadingBit(~var_1) % 32u));
    var_0 = reverseBits(_wgslsmith_mod_i32(u_input.b.x, ~(~u_input.b.x))) | u_input.b.x;
    var_0 = i32(-1i) * -(~u_input.a.x);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-437f, -315f, any(vec4<bool>(true, true, true, true))))));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_1(((_wgslsmith_dot_vec3_u32(vec3<u32>(33024u, 5048u, 16037u), vec3<u32>(20083u, 10260u, 64882u)) != ~1u) && true) || !any(vec3<bool>(true, true, true)), select(vec4<bool>(true != any(vec2<bool>(false, true)), false | select(true, false, true), true, any(vec3<bool>(false, true, true))), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true), !any(vec2<bool>(true, true))));
    var_0 = Struct_1(var_0.b.x, select(vec4<bool>(any(select(vec2<bool>(var_0.a, var_0.a), var_0.b.yy, vec2<bool>(var_0.b.x, var_0.b.x))), !var_0.b.x, any(select(vec4<bool>(true, true, true, var_0.a), vec4<bool>(var_0.a, var_0.b.x, true, var_0.a), var_0.b.x)), !(u_input.b.x != u_input.b.x)), vec4<bool>(!any(var_0.b.xxx), !var_0.a, !var_0.b.x, !var_0.b.x), !(!(!var_0.b))));
    let var_1 = Struct_2(u_input.a.zx << (vec2<u32>(~1094u, ~firstTrailingBit(642u)) % vec2<u32>(32u)), vec2<u32>(1u, 1u), Struct_1(any(var_0.b), select(select(!var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.a, select(true, var_0.b.x, var_0.a), all(var_0.b.xw), var_0.a), var_0.b)), ~_wgslsmith_clamp_u32(~1u, ~34834u, 19464u) >> ((~_wgslsmith_dot_vec2_u32(vec2<u32>(22720u, 4294967295u), vec2<u32>(0u, 12751u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 16117u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 39116u, 4294967295u), vec3<u32>(15337u, 10736u, 4294967295u)))) % 32u), Struct_1(!(!var_0.b.x), select(vec4<bool>(any(vec2<bool>(false, var_0.a)), var_0.b.x, true, true), select(select(var_0.b, var_0.b, var_0.a), !var_0.b, true), vec4<bool>(any(vec4<bool>(var_0.b.x, var_0.a, false, false)), true, var_0.a || false, !var_0.b.x))));
    var_0 = Struct_1((abs(_wgslsmith_add_u32(1u, var_1.d)) | countOneBits(reverseBits(0u))) >= _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d, _wgslsmith_div_u32(var_1.d, 4294967295u)), var_1.b), !(!vec4<bool>(true, any(var_1.e.b), true, !var_0.a)));
    var var_2 = Struct_2(countOneBits(_wgslsmith_clamp_vec2_i32(-u_input.a.yy, vec2<i32>(-1i) * -u_input.b.yz, select(-u_input.a.xx, firstLeadingBit(vec2<i32>(var_1.a.x, u_input.b.x)), vec2<bool>(false, var_0.a)))), vec2<u32>(65355u, abs(~(~1675u))), var_1.c, ~(~(~var_1.d)), var_1.e);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1486f, 672f, 464f, -238f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(683f, 1492f, 787f, 1209f), vec4<f32>(-1000f, 437f, -1131f, -1349f), vec4<bool>(var_1.c.a, false, var_0.a, false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-130f, 658f, -896f, -1000f), vec4<f32>(-453f, 187f, -1120f, 2240f))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1296f, 497f, 342f, -1308f))), _wgslsmith_div_vec4_f32(vec4<f32>(618f, -574f, -1214f, 1302f), vec4<f32>(-1413f, -1325f, -116f, 1882f)))))), vec4<bool>(false, var_2.e.a, false, false)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<bool>) -> u32 {
    var var_0 = vec4<i32>(u_input.b.x, max(u_input.a.x, _wgslsmith_add_i32(-31067i, u_input.b.x | u_input.b.x)) << (countOneBits(~(4294967295u >> (0u % 32u))) % 32u), 1i, 19860i);
    var_0 = ~vec4<i32>(firstLeadingBit(1i) ^ select(1i, 36319i, false & arg_1.a), u_input.b.x, var_0.x, var_0.x);
    var_0 = _wgslsmith_mult_vec4_i32(select(~vec4<i32>(u_input.a.x, -1i, 32751i, u_input.b.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 64805u, 1u, 4294967295u), ~vec4<u32>(0u, 0u, 4592u, 37714u)) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, var_0.x, var_0.x, 0i), vec4<i32>(7799i, var_0.x, u_input.a.x, var_0.x)), select(3802i, u_input.b.x, true) & ~var_0.x, 1i), arg_3.x), (firstTrailingBit(-vec4<i32>(u_input.b.x, -16485i, var_0.x, -26320i)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) >> (vec4<u32>(select(_wgslsmith_mod_u32(14082u, 15820u), _wgslsmith_clamp_u32(21308u, 50964u, 36417u), true), 1u, 0u, 63104u) % vec4<u32>(32u)));
    var_0 = select(max(vec4<i32>(~(-48613i), 5531i, min(var_0.x, var_0.x), reverseBits(-18273i)), vec4<i32>(-firstTrailingBit(23981i), 1i, -2147483647i, -(~(-26302i)))), ~reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, -16453i, var_0.x), vec4<i32>(0i, 1i, 1i, 0i))) | (vec4<i32>(~29175i, min(-2147483647i, var_0.x), firstTrailingBit(var_0.x), 33276i) & select(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, 29739i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, var_0.x, u_input.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -1i, 2147483647i, var_0.x), vec4<i32>(-1i, var_0.x, var_0.x, 24751i)), select(arg_1.b, arg_1.b, vec4<bool>(arg_2.x, true, arg_2.x, true)))), !vec4<bool>(!arg_3.x, arg_3.x, arg_0.x <= _wgslsmith_f_op_f32(ceil(arg_0.x)), arg_1.b.x));
    var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b.x >> (22066u % 32u), select(var_0.x, var_0.x, true), firstTrailingBit(65624i), u_input.a.x ^ 5688i), -max(firstLeadingBit(vec4<i32>(u_input.b.x, var_0.x, 2147483647i, -2147483647i)), ~vec4<i32>(var_0.x, 10231i, 2147483647i, 22006i))), vec4<i32>(-_wgslsmith_div_i32(abs(var_0.x), 2147483647i), u_input.a.x, firstTrailingBit(-(u_input.b.x & 0i)), -84624i));
    return _wgslsmith_add_u32(~countOneBits(52504u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~firstLeadingBit(~vec3<u32>(4294967295u, 383u, 60354u))));
}

fn func_1(arg_0: bool) -> vec3<f32> {
    let var_0 = ~(~firstLeadingBit(vec2<u32>(1u, 1u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(func_2()), 1300f), _wgslsmith_div_vec2_f32(vec2<f32>(-811f, 550f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(101f, 234f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(510f, -603f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1804f, 752f, false)) - _wgslsmith_f_op_f32(min(1184f, 1673f)))), !(!vec2<bool>(arg_0, false)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-2408f, -1000f)), -1757f, any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(1f * -868f))));
    var var_2 = Struct_2(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(-39067i, i32(-1i) * -2147483647i)), _wgslsmith_div_vec2_i32(u_input.a.xy, -vec2<i32>(u_input.a.x, u_input.a.x)) >> (var_0 % vec2<u32>(32u))), vec2<u32>(var_0.x, _wgslsmith_mod_u32(~(~1u), ~20384u)), Struct_1(arg_0, select(!select(vec4<bool>(arg_0, false, false, true), vec4<bool>(false, arg_0, true, false), false), select(!vec4<bool>(arg_0, false, true, true), vec4<bool>(arg_0, arg_0, true, arg_0), true), _wgslsmith_f_op_f32(-var_1.x) == -712f)), countOneBits(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1054f, 1537f, var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, -298f, var_1.x), vec4<bool>(arg_0, false, true, arg_0))) - _wgslsmith_f_op_vec4_f32(func_3())), Struct_1(true, select(vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, false, false, arg_0))), select(vec2<bool>(true, true), !vec2<bool>(false, arg_0), arg_0 || arg_0), vec3<bool>(true, true, true))), Struct_1(arg_0, !(!select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), true))));
    var_2 = Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, var_2.a.x), vec2<i32>(u_input.b.x, _wgslsmith_add_i32(u_input.b.x, u_input.b.x)) >> (vec2<u32>(6747u >> (var_2.d % 32u), var_2.d) % vec2<u32>(32u))), ~firstLeadingBit(reverseBits(max(vec2<u32>(25003u, 79385u), var_2.b))), var_2.c, countOneBits(abs(13985u)), Struct_1(arg_0, var_2.c.b));
    var var_3 = 1i;
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_f_op_f32(var_1.x - -775f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 634f) + vec3<f32>(-1031f, var_1.x, var_1.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x))) - vec3<f32>(var_1.x, -1043f, _wgslsmith_div_f32(227f, 1659f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_1(all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, false))), true))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -479f) * vec3<f32>(-1000f, 565f, var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(931f, var_0.x, -234f)))))), _wgslsmith_f_op_vec3_f32(func_1(true)));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(1647f, var_0.x, var_0.x), false)) * vec3<f32>(1000f, var_0.x, -1452f)) + vec3<f32>(_wgslsmith_f_op_f32(445f - var_0.x), var_0.x, _wgslsmith_f_op_f32(var_0.x - 1774f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(901f, 954f, _wgslsmith_div_f32(433f, -1000f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_3()).zxx - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 984f, 431f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -715f, var_0.x), vec3<f32>(-1089f, var_0.x, var_0.x)))))));
    var var_1 = Struct_1(!any(vec4<bool>(true, true, true, true)), select(!vec4<bool>(true, all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, var_0.x < -328f), vec4<bool>(false, false, any(vec2<bool>(true, true)), false)), vec4<bool>(false, true, true, any(vec3<bool>(true, false, false)))));
    var var_2 = -210f;
    var var_3 = !vec2<bool>(var_1.b.x, var_1.b.x);
    let var_4 = Struct_1(select(var_3.x, true, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(ceil(var_0.x))) != _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x))), !(!select(!vec4<bool>(true, true, var_3.x, var_3.x), var_1.b, !var_1.b)));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1051f * var_0.x))), _wgslsmith_f_op_f32(-var_0.x)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), -211f, -437f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(var_0.x, 595f, 461f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1950f, var_0.x, -1551f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -706f, _wgslsmith_f_op_vec3_f32(func_1(true)).x)))), ~countOneBits(~vec3<u32>(1u, 1u, 1u)), max(_wgslsmith_add_i32(~0i, u_input.a.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-u_input.a, reverseBits(vec3<i32>(u_input.b.x, u_input.a.x, -1i))), u_input.a)), 1f);
}

