struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: vec2<bool>) -> u32 {
    var var_0 = ~((arg_1.e.zzx | arg_0.b) ^ -max(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 63124i, arg_0.b.x), vec3<i32>(arg_0.b.x, arg_0.b.x, u_input.a), arg_1.a.b), firstTrailingBit(vec3<i32>(-42731i, u_input.a, arg_0.b.x))));
    var var_1 = arg_1.c.c.x;
    let var_2 = Struct_2(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - global1.x)), arg_0, 2732f, vec4<i32>(-reverseBits(-12955i), _wgslsmith_mod_i32(arg_1.a.b.x, arg_1.a.b.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.e.x, -2147483647i), arg_0.b.xy), _wgslsmith_mult_i32(firstTrailingBit(arg_1.a.b.x), select(-124902i, var_0.x, false))) ^ abs(arg_1.e));
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_1.a.c.xw);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + var_2.a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c.x, arg_0.c.x)) * _wgslsmith_f_op_f32(-1000f - -197f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(454f, arg_0.c.x, true)) * _wgslsmith_f_op_f32(ceil(arg_0.c.x))))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - var_2.b)), -779f))));
    return ~151857u;
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = _wgslsmith_add_vec3_u32(select(arg_0.a.wzz, _wgslsmith_add_vec3_u32(u_input.b, arg_0.a.yzz), select(-11084i == arg_0.b.x, true, true) | (~arg_0.a.x <= arg_0.d)), min(vec3<u32>(global0.x, arg_0.a.x, ~(4294967295u ^ u_input.b.x)), vec3<u32>(~45573u, arg_0.d, u_input.b.x << (4294967295u % 32u))));
    let var_0 = global1.x;
    var var_1 = Struct_1(vec4<u32>(85477u, max(12931u, 4294967295u) & arg_0.d, func_3(arg_0, Struct_2(Struct_1(vec4<u32>(u_input.b.x, 1u, 4294967295u, 1u), arg_0.b, arg_0.c, 35746u), global1.x, arg_0, _wgslsmith_f_op_f32(1641f + -1000f), vec4<i32>(-2618i, -1i, 2147483647i, arg_0.b.x)), false, !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), 37566u), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, ~1i, i32(-1i) * -2147483647i), vec3<i32>(-u_input.a, 16548i, 1i)) ^ -(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, -5869i), arg_0.b) ^ -vec3<i32>(2147483647i, arg_0.b.x, u_input.a)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c)))), _wgslsmith_mult_u32(u_input.b.x, ~min(max(u_input.b.x, arg_0.a.x), 48481u)));
    let var_2 = min(-var_1.b.zz, vec2<i32>(abs(~(-15447i)), ~reverseBits(0i)));
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(floor(-162f))))), _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_1.c.wz))));
    return var_1.d;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = false;
    let var_1 = arg_0.e;
    global0 = arg_0.c.a.zzy;
    var var_2 = firstTrailingBit(~arg_0.a.a) << (vec4<u32>(~func_2(arg_0.c), global0.x, abs(func_3(Struct_1(vec4<u32>(global0.x, 51065u, 4294967295u, arg_0.c.a.x), arg_0.c.b, vec4<f32>(909f, 1138f, arg_0.d, 249f), 0u), arg_0, false, vec2<bool>(true, true))) & ((arg_0.c.d | 3510u) | 1u), ~_wgslsmith_dot_vec4_u32(arg_0.c.a, arg_0.a.a) << ((31481u << (firstTrailingBit(global0.x) % 32u)) % 32u)) % vec4<u32>(32u));
    global0 = vec3<u32>(global0.x, firstTrailingBit(~_wgslsmith_mod_u32(var_2.x, global0.x)), 15124u) & _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, arg_0.a.a.wxw, u_input.b) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_2.x, var_2.x, 4294967295u), u_input.b >> (arg_0.a.a.yzz % vec3<u32>(32u)), ~vec3<u32>(global0.x, var_2.x, 33954u)) % vec3<u32>(32u)), var_2.yww, _wgslsmith_clamp_vec3_u32(arg_0.a.a.xyz, _wgslsmith_add_vec3_u32(arg_0.c.a.yzy, vec3<u32>(u_input.b.x, arg_0.c.a.x, 22588u)), abs(vec3<u32>(0u, global0.x, u_input.b.x))));
    return arg_0.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>) -> vec3<i32> {
    let var_0 = arg_0.c.x;
    global0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(func_1(Struct_2(func_1(Struct_2(arg_1.c, -974f, arg_0, -414f, arg_1.e)), _wgslsmith_f_op_f32(-812f - 2153f), func_1(arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1619f), arg_1.e & vec4<i32>(1i, 1i, -26388i, -14246i))).d, firstLeadingBit(countOneBits(~global0.x)), min(_wgslsmith_mod_u32(1689u, _wgslsmith_mod_u32(arg_2.x, 12978u)), 1u)), _wgslsmith_clamp_vec3_u32(arg_2 << (vec3<u32>(arg_0.a.x, arg_1.a.a.x, arg_2.x) % vec3<u32>(32u)), arg_1.c.a.zxx, vec3<u32>(u_input.b.x, max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 4294967295u), arg_0.a.yx)), select(arg_1.c.a.x, abs(global0.x), u_input.b.x >= 23980u))), vec3<u32>(arg_0.a.x, arg_2.x, arg_2.x));
    var var_1 = arg_1;
    let var_2 = select(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(-countOneBits(select(-1i, -38366i, true)), var_1.a.b.x, ~_wgslsmith_clamp_i32(-28810i, i32(-1i) * -51488i, var_1.c.b.x)), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)));
    global0 = u_input.b;
    return reverseBits(select(vec3<i32>(~max(arg_0.b.x, -41274i), -10045i, _wgslsmith_div_i32(u_input.a, arg_0.b.x)), vec3<i32>(arg_1.c.b.x, (u_input.a >> (u_input.b.x % 32u)) ^ -4907i, -_wgslsmith_dot_vec2_i32(var_1.c.b.yy, var_1.a.b.yy)), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true))));
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(413f + func_1(Struct_2(Struct_1(vec4<u32>(93159u, 0u, 1u, 62865u), arg_1, vec4<f32>(1028f, 1413f, -408f, global1.x), 0u), global1.x, arg_2.a, _wgslsmith_f_op_f32(select(407f, global1.x, arg_0)), _wgslsmith_sub_vec4_i32(vec4<i32>(1466i, arg_2.c.b.x, arg_1.x, arg_2.c.b.x), arg_2.e))).c.x) * -1606f);
    var var_1 = Struct_2(arg_2.c, _wgslsmith_f_op_f32(min(global1.x, -573f)), Struct_1(countOneBits(~(arg_2.a.a & vec4<u32>(global0.x, 16829u, 1u, 72113u))), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(arg_2.e, vec4<i32>(-2147483647i, u_input.a, arg_1.x, -3729i)), ~arg_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.c.c - vec4<f32>(-930f, var_0, arg_2.a.c.x, 389f))), ~(~func_2(Struct_1(arg_2.c.a, arg_1, arg_2.a.c, 35136u)))), _wgslsmith_div_f32(arg_2.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-539f - arg_2.c.c.x) * _wgslsmith_f_op_f32(-arg_2.a.c.x))), arg_2.e);
    let var_2 = reverseBits(arg_1.zx);
    return arg_2.a;
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    let var_0 = u_input.b.x;
    global0 = select(_wgslsmith_div_vec3_u32(func_1(Struct_2(arg_0, -531f, arg_0, -215f, vec4<i32>(arg_0.b.x, -2147483647i, arg_0.b.x, 1i))).a.yxw, _wgslsmith_add_vec3_u32(u_input.b, arg_0.a.yyy)) << (u_input.b % vec3<u32>(32u)), ~(~vec3<u32>(~var_0, _wgslsmith_add_u32(0u, 4754u), 23470u)), !select(2812f > arg_0.c.x, true, all(vec4<bool>(false, false, true, true))) | (((u_input.a ^ u_input.a) < ~0i) || true));
    global0 = arg_0.a.wzx;
    let var_1 = Struct_2(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1029f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-113f, 578f)))))), arg_0, 866f, (_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.x, 12901i, 73474i, arg_0.b.x), vec4<i32>(-39378i, 0i, u_input.a, arg_0.b.x)), -vec4<i32>(u_input.a, u_input.a, -1i, 0i)) >> (arg_0.a % vec4<u32>(32u))) >> ((vec4<u32>(48672u, u_input.b.x, global0.x & 0u, 1u) >> (vec4<u32>(arg_0.d, reverseBits(0u), ~arg_0.a.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(19378u, 24981u, 0u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_0.d, u_input.b.x), u_input.b), ~var_1.a.a.yzy), vec3<u32>(~(~var_1.c.a.x), max(~u_input.b.x, select(19863u, 1u, true)), func_3(var_1.c, Struct_2(var_1.a, -1174f, var_1.c, var_1.d, var_1.e), true, select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), vec3<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1.a.a.x), global0.yx), u_input.b.x ^ 74905u), global0.x, arg_0.d)) & arg_0.a.wxz;
    return Struct_2(Struct_1(~vec4<u32>(~0u, func_5(true, vec3<i32>(var_1.e.x, 1i, arg_0.b.x), Struct_2(arg_0, global1.x, var_1.c, -626f, var_1.e)).d, 36483u, u_input.b.x), arg_0.b << (_wgslsmith_div_vec3_u32(func_5(true, vec3<i32>(-1i, u_input.a, var_1.c.b.x), var_1).a.wwz, vec3<u32>(arg_0.a.x, 6252u, arg_0.d)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_1.c.c))), 0u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global1.x, var_1.a.c.x)), 1000f)), func_5(false, func_1(Struct_2(arg_0, 204f, arg_0, -205f, var_1.e)).b & -func_5(true, vec3<i32>(u_input.a, u_input.a, arg_0.b.x), Struct_2(Struct_1(vec4<u32>(var_1.a.a.x, 31599u, 2568u, 1u), vec3<i32>(arg_0.b.x, -100464i, -2147483647i), vec4<f32>(arg_0.c.x, arg_0.c.x, -187f, arg_0.c.x), global0.x), -832f, arg_0, -1063f, var_1.e)).b, var_1), _wgslsmith_f_op_f32(global1.x + var_1.b), vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0.b.zx >> (vec2<u32>(4294967295u, 42867u) % vec2<u32>(32u)), vec2<i32>(arg_0.b.x, -19217i)) ^ abs(_wgslsmith_add_i32(arg_0.b.x, u_input.a)), 2147483647i, 36659i, ~_wgslsmith_mult_i32(~(-59808i), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_i32(~(countOneBits(vec4<i32>(u_input.a, u_input.a, -42374i, u_input.a)) >> ((vec4<u32>(31507u, global0.x, u_input.b.x, 1u) ^ vec4<u32>(u_input.b.x, global0.x, 14610u, u_input.b.x)) % vec4<u32>(32u))), ~(~vec4<i32>(-29889i, u_input.a, u_input.a, u_input.a))) << ((~vec4<u32>(0u, _wgslsmith_div_u32(global0.x, global0.x), 4838u, 3975u) ^ vec4<u32>(global0.x, 1u, 1u, ~(~1u))) % vec4<u32>(32u));
    var var_1 = func_6(func_5(!select(true, true, false), select(func_4(func_1(Struct_2(Struct_1(vec4<u32>(19070u, u_input.b.x, 14025u, 87091u), var_0.wwx, vec4<f32>(global1.x, -763f, global1.x, 422f), 44752u), global1.x, Struct_1(vec4<u32>(u_input.b.x, global0.x, 1u, 43000u), var_0.xyx, vec4<f32>(global1.x, 998f, global1.x, global1.x), 1u), -922f, vec4<i32>(u_input.a, u_input.a, u_input.a, var_0.x))), Struct_2(Struct_1(vec4<u32>(global0.x, global0.x, 13814u, u_input.b.x), vec3<i32>(-2147483647i, 1i, var_0.x), vec4<f32>(global1.x, -1147f, -967f, -713f), 52009u), 1023f, Struct_1(vec4<u32>(21190u, global0.x, 0u, global0.x), var_0.yyz, vec4<f32>(818f, global1.x, global1.x, global1.x), 94337u), -1035f, vec4<i32>(u_input.a, var_0.x, var_0.x, -27173i)), ~u_input.b), vec3<i32>(var_0.x, -25269i, var_0.x), true), Struct_2(Struct_1(~vec4<u32>(global0.x, 10274u, 38317u, global0.x), var_0.xzw, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(586f, global1.x, global1.x, -320f))), 1u), _wgslsmith_f_op_f32(-100f + _wgslsmith_f_op_f32(abs(1141f))), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 0u, global0.x, 0u), vec4<u32>(15870u, global0.x, 90450u, u_input.b.x)), -var_0.xzz, vec4<f32>(391f, 1854f, 502f, -154f), u_input.b.x & u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global1.x) + global1.x), vec4<i32>(i32(-1i) * -13100i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2816i, u_input.a, var_0.x), vec3<i32>(0i, u_input.a, u_input.a)), _wgslsmith_mod_i32(30241i, var_0.x), var_0.x))));
    let var_2 = ~(~(~global0.xy | func_1(Struct_2(var_1.a, 690f, Struct_1(vec4<u32>(4294967295u, global0.x, 1u, 0u), vec3<i32>(-1i, -1i, -35171i), var_1.c.c, 89098u), var_1.d, var_1.e)).a.xy)) & vec2<u32>(~global0.x, 4294967295u);
    let var_3 = select(vec3<bool>(all(vec4<bool>(true, true, true, true)), func_1(Struct_2(Struct_1(vec4<u32>(28711u, u_input.b.x, var_2.x, 1u), vec3<i32>(2147483647i, -16553i, var_0.x), vec4<f32>(-976f, var_1.d, -1410f, global1.x), u_input.b.x), global1.x, var_1.a, -1000f, var_1.e)).b.x == _wgslsmith_div_i32(u_input.a, -var_1.c.b.x), false), select(vec3<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true)), any(vec4<bool>(true, true, true, true)), true), vec3<bool>(all(vec4<bool>(false, true, false, false)), true & all(vec2<bool>(false, true)), !all(vec3<bool>(true, false, false))), select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), vec3<bool>(true, select(false, false, true), false), !(u_input.a <= u_input.a))), select(vec3<bool>(any(vec4<bool>(true, false, true, false)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false)), true), vec3<bool>(false, true, true), vec3<bool>(any(vec2<bool>(true, true)), true, true)));
    var var_4 = Struct_2(var_1.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.d)), var_1.c.c.x)), func_1(Struct_2(Struct_1(var_1.c.a, select(vec3<i32>(var_1.e.x, -2147483647i, 17380i), vec3<i32>(u_input.a, u_input.a, -40974i), var_3), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1424f, 1000f, 1101f) * vec4<f32>(var_1.a.c.x, global1.x, -903f, global1.x)), min(46969u, 0u)), -534f, Struct_1(~var_1.a.a, -var_0.zzw, vec4<f32>(-1000f, var_1.c.c.x, 409f, 358f), global0.x | var_1.c.d), 404f, ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -83479i, -13271i, -2147483647i), vec4<i32>(var_0.x, var_1.e.x, -5683i, 8467i)))), var_1.c.c.x, -vec4<i32>(u_input.a, var_0.x, var_0.x, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

