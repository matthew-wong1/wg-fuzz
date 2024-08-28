struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = ~_wgslsmith_div_u32(u_input.a.x, ~6456u);
    var var_1 = Struct_1(max(_wgslsmith_add_vec3_i32(min(vec3<i32>(-1i, 36963i, u_input.b), -vec3<i32>(u_input.b, u_input.b, 2147483647i)), vec3<i32>(-2791i, ~u_input.b, u_input.b)), (_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.b, -42408i), vec3<i32>(34220i, u_input.b, 0i)) | _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -2147483647i, 0i), vec3<i32>(47417i, u_input.b, -8045i))) & vec3<i32>(i32(-1i) * -18906i, countOneBits(u_input.b), u_input.b)));
    var var_2 = ~(~(~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.c.x, u_input.c.x)), abs(vec3<u32>(u_input.c.x, u_input.c.x, 0u)))));
    let var_3 = !any(vec4<bool>(var_1.a.x != 0i, true, false, true)) & ((u_input.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, var_2.x, var_2.x) & vec4<u32>(4294967295u, var_2.x, var_2.x, 4294967295u), ~vec4<u32>(u_input.a.x, 56947u, var_0, var_0)) % 32u)) < 30913u);
    var_2 = vec3<u32>(_wgslsmith_mod_u32(22110u, var_0), min(~9789u, _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, var_0), vec3<u32>(var_0, u_input.a.x, var_2.x)), ~var_0)), _wgslsmith_mult_u32(abs(_wgslsmith_mult_u32(50829u, var_0) >> (~var_2.x % 32u)), 4294967295u));
    return -27423i;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(-countOneBits(~vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(abs(7869i), func_3(1000f), -1i) ^ vec3<i32>(5451i, -1i, _wgslsmith_mult_i32(-2147483647i, 0i))), vec3<i32>(u_input.b, _wgslsmith_mult_i32(-_wgslsmith_div_i32(u_input.b, 39775i), u_input.b), firstTrailingBit(-26672i >> (arg_0 % 32u))));
    var var_1 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, _wgslsmith_add_i32(_wgslsmith_div_i32(-13183i, var_0.x), _wgslsmith_div_i32(7391i, -1690i)), countOneBits(var_0.x) << (4294967295u % 32u)), vec3<i32>(u_input.b, u_input.b << (arg_0 % 32u), ~u_input.b) << (reverseBits(~vec3<u32>(u_input.c.x, u_input.a.x, 0u)) % vec3<u32>(32u))));
    let var_2 = !all(vec3<bool>(select(any(vec4<bool>(true, false, false, true)), true, any(vec4<bool>(false, false, true, false))), true, all(vec4<bool>(true, false, true, false))));
    var var_3 = Struct_1(-_wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, 2147483647i, var_0.x) >> ((vec3<u32>(arg_0, arg_0, u_input.c.x) & vec3<u32>(4294967295u, arg_0, u_input.c.x)) % vec3<u32>(32u)), var_0));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1026f, _wgslsmith_f_op_f32(f32(-1f) * -1644f), _wgslsmith_f_op_f32(f32(-1f) * -443f), 886f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1484f, -991f, -1072f, 893f), vec4<f32>(-2706f, 146f, 497f, 232f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1342f, 1903f, 499f, -214f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1108f, -1624f, -927f, -290f) + vec4<f32>(1000f, -749f, 393f, 963f)))), firstLeadingBit(3082i) <= _wgslsmith_clamp_i32(-18605i, var_1.a.x, var_1.a.x)))));
    return Struct_1(vec3<i32>(var_1.a.x, -19860i, -42029i));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = select(!all(vec3<bool>(true, true, true)), true, true);
    return Struct_1(func_2(1u).a);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-421f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-501f)))))));
    var var_1 = abs(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(59555u, u_input.c.x), u_input.c) >> (~u_input.c.x % 32u)) << (u_input.c.x % 32u));
    var var_2 = Struct_1(arg_0.a);
    var var_3 = func_2(u_input.a.x);
    let var_4 = _wgslsmith_f_op_f32(ceil(1701f));
    return _wgslsmith_dot_vec4_u32(abs(min(vec4<u32>(u_input.c.x, 1u, 120317u, 23456u), vec4<u32>(u_input.c.x, 0u, 0u, u_input.a.x)) | _wgslsmith_sub_vec4_u32(vec4<u32>(73053u, 20331u, u_input.c.x, 1u), vec4<u32>(u_input.c.x, u_input.a.x, 4294967295u, 4278u))) & ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(19814u, u_input.c.x), vec2<u32>(9356u, 0u)), _wgslsmith_add_u32(u_input.a.x, 1u), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.c.x), vec4<u32>(40309u, countOneBits(4294967295u), countOneBits(u_input.a.x), 4294967295u));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> i32 {
    let var_0 = _wgslsmith_mod_u32(func_5(func_4(func_2(47765u), _wgslsmith_f_op_f32(select(1040f, arg_1, true)), vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, 61599u) << (vec4<u32>(25060u, 28224u, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(1991u, 0u) % vec2<u32>(32u))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(18508i, -2147483647i, 2147483647i), vec3<i32>(1i, 0i, u_input.b))), Struct_1(vec3<i32>(1i, 1i, -20780i) << (vec3<u32>(1u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(sign(arg_0.x))), ~u_input.a.x) > ~(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x | u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(floor(1134f));
    var_1 = -183f;
    var var_2 = func_2(4294967295u);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f)), _wgslsmith_f_op_f32(f32(-1f) * -348f), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))) + arg_1));
    return _wgslsmith_sub_i32(u_input.b, func_4(func_4(Struct_1(reverseBits(var_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1292f)) + _wgslsmith_f_op_f32(sign(arg_0.x))), select(vec4<u32>(16929u, 4481u, 4294967295u, u_input.c.x), reverseBits(vec4<u32>(u_input.a.x, 1u, 21067u, u_input.a.x)), select(vec4<bool>(var_0, var_0, true, false), vec4<bool>(true, var_0, true, var_0), true)), -var_2.a.zx), -729f, ~(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 105u, 37970u, 1u), vec4<u32>(u_input.c.x, 0u, u_input.a.x, 0u)) & max(vec4<u32>(4294967295u, u_input.c.x, 11621u, u_input.a.x), vec4<u32>(72291u, 0u, u_input.c.x, u_input.c.x))), ~select(vec2<i32>(0i, -36418i), countOneBits(var_2.a.xx), vec2<bool>(false, var_0))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(u_input.b, u_input.b, func_1(vec4<f32>(387f, _wgslsmith_f_op_f32(-678f + -178f), _wgslsmith_div_f32(-1224f, -1747f), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-228f, -1000f))))));
    let var_1 = true && !(!((u_input.a.x != 138277u) | select(true, false, false)));
    let var_2 = -vec4<i32>(~u_input.b, reverseBits(-15785i), -22644i, abs(~max(28584i, var_0.a.x)));
    let var_3 = vec2<u32>(u_input.a.x | (16104u << (u_input.c.x % 32u)), 4294967295u);
    var var_4 = -vec3<i32>(-_wgslsmith_mod_i32(-var_0.a.x, reverseBits(2147483647i)), var_0.a.x, u_input.b);
    let var_5 = u_input.a.x;
    let var_6 = func_4(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-989f - -697f)), _wgslsmith_f_op_f32(817f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), false))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a.x, var_3.x, select(_wgslsmith_add_u32(u_input.a.x, var_5), countOneBits(var_5), true), reverseBits(~4294967295u)), select(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_5, 24635u, 4294967295u), vec4<u32>(0u, var_5, u_input.a.x, 1u)), ~(vec4<u32>(var_3.x, var_5, u_input.c.x, var_3.x) ^ vec4<u32>(var_5, var_3.x, u_input.a.x, 0u)), vec4<bool>(var_1, true, any(vec2<bool>(var_1, var_1)), !var_1)), ~_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(0u, 56682u, 1u, var_3.x)), select(vec4<u32>(1u, var_3.x, u_input.a.x, 21098u), vec4<u32>(var_5, 0u, var_3.x, var_5), vec4<bool>(false, var_1, var_1, var_1)))), var_4.xz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -1i), ~(-vec2<i32>(1i, 2147483647i))), reverseBits(~vec3<u32>(~6299u, firstTrailingBit(var_5), u_input.c.x | 14686u)), 1i);
}

