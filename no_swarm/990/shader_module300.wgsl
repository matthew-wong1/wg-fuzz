struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = ~(-min(~arg_1.x & min(arg_1.x, arg_1.x), _wgslsmith_mod_i32(994i, abs(arg_0.c))));
    let var_1 = arg_0.b.x;
    let var_2 = arg_2;
    let var_3 = Struct_1(-countOneBits(u_input.a), vec4<bool>(!select(!arg_0.b.x, true, arg_0.d > arg_2.d), true, -_wgslsmith_add_i32(arg_0.a, -33664i) >= arg_1.x, 954f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-723f + arg_2.d))), arg_1.x, _wgslsmith_f_op_f32(var_2.d + arg_2.d));
    var_0 = _wgslsmith_sub_i32(arg_2.a, countOneBits(u_input.a)) >> (~_wgslsmith_add_u32(min(727u, abs(22569u)), min(_wgslsmith_sub_u32(4294967295u, 25728u), reverseBits(4294967295u))) % 32u);
    return vec3<u32>(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~reverseBits(vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)), ~vec2<u32>(0u, 1u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 91051u, 1u), vec4<u32>(55658u, 0u, 4294967295u, 102150u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 0u, 18369u), vec4<u32>(4994u, 0u, 52722u, 2313u))), 36923u, _wgslsmith_add_u32(_wgslsmith_mod_u32(~1u, ~16697u), 66228u)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec3_u32(select(_wgslsmith_mod_vec3_u32(func_3(Struct_1(-2147483647i, vec4<bool>(true, true, false, true), arg_0, -717f), ~vec3<i32>(0i, -3166i, -37386i), Struct_1(-54352i, vec4<bool>(true, false, false, true), -1i, 408f)), vec3<u32>(reverseBits(3367u), ~80348u, 62400u)), ~(~(~vec3<u32>(50494u, 43044u, 0u))), vec3<bool>(true, true, true)), ~(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(14942u, 0u, 23216u, 10296u), vec4<u32>(53980u, 1u, 64334u, 4294967295u)), 14710u, 0u) & vec3<u32>(0u, ~0u, ~0u)));
    var_0 = min(vec3<u32>(select(var_0.x, ~var_0.x, true), 1u, 1u), firstLeadingBit(select(_wgslsmith_mult_vec3_u32(vec3<u32>(46571u, 4294967295u, var_0.x), vec3<u32>(90814u, var_0.x, 24481u)), ~vec3<u32>(var_0.x, var_0.x, var_0.x), true))) << ((~vec3<u32>(1u, var_0.x, firstLeadingBit(1u)) >> (vec3<u32>(abs(select(0u, 39431u, false)), ~(~29278u), var_0.x) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_add_u32(0u, ~_wgslsmith_div_u32(19185u, var_0.x));
    var_0 = _wgslsmith_mult_vec3_u32(~reverseBits(reverseBits(~vec3<u32>(54472u, var_1, var_1))), select(~_wgslsmith_add_vec3_u32(~vec3<u32>(var_1, var_1, var_0.x), ~vec3<u32>(var_0.x, 1u, var_1)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, var_0.x, var_0.x) >> (vec3<u32>(var_1, 4294967295u, 4454u) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 0u, 28120u)), reverseBits(~84198u), 7238u), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)))));
    let var_2 = func_3(Struct_1(_wgslsmith_add_i32(~0i, ~arg_0), select(vec4<bool>(true, true, -2147483647i == u_input.a, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), -17029i == min(arg_0, arg_0)), 35816i, 1f), _wgslsmith_clamp_vec3_i32(-countOneBits(min(vec3<i32>(56185i, -7527i, -2147483647i), vec3<i32>(-1747i, arg_0, u_input.a))), -_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, 2147483647i, 13971i) | vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -2147483647i, u_input.a), vec3<i32>(u_input.a, 2375i, -1i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 1i, i32(-1i) * -2147483647i), vec3<i32>(arg_0, _wgslsmith_mult_i32(u_input.a, 0i), select(u_input.a, 0i, true)), ~countOneBits(vec3<i32>(arg_0, arg_0, 0i)))), Struct_1(~(~countOneBits(-15395i)), vec4<bool>(false, true, any(vec2<bool>(true, true)), true), abs(-_wgslsmith_clamp_i32(0i, u_input.a, arg_0)), -344f));
    return Struct_1(firstLeadingBit(-(~_wgslsmith_add_i32(1i, u_input.a))), select(!vec4<bool>(all(vec3<bool>(false, false, true)), true, true, any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, !(1i < u_input.a), !(u_input.a >= -31043i), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false))))), arg_0, 1285f);
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = func_2(39210i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.d, 997f), vec2<f32>(698f, var_0.d)) * vec2<f32>(var_0.d, 1000f))))));
    var var_2 = Struct_1(~_wgslsmith_dot_vec2_i32(~(-vec2<i32>(1i, 11267i)), reverseBits(~vec2<i32>(-4833i, -22994i))), select(var_0.b, !(!var_0.b), any(var_0.b.yy)), abs(u_input.a & var_0.c), var_0.d);
    var var_3 = _wgslsmith_sub_vec4_u32(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(~773u, _wgslsmith_add_u32(67767u, 0u), 1u, _wgslsmith_clamp_u32(4294967295u, 28104u, 369u)), vec4<u32>(_wgslsmith_mod_u32(44642u, 1u), 0u, 3751u, min(1u, 22858u)), vec4<u32>(~16065u, 4294967295u, 1u, ~8707u)), abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 52232u, 1u, 23317u), ~vec4<u32>(2613u, 0u, 4294967295u, 1u), ~vec4<u32>(4699u, 17375u, 11461u, 19589u)))), ~(abs(vec4<u32>(14676u, 29464u, 1u, 4294967295u)) ^ vec4<u32>(1u, 16159u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 12710u, 4294967295u), vec3<u32>(87767u, 1u, 1u)), 1u)));
    let var_4 = func_2(_wgslsmith_dot_vec4_i32(select(-(~vec4<i32>(arg_0, var_0.c, var_2.c, var_0.c)), vec4<i32>(-92644i, _wgslsmith_sub_i32(u_input.a, -2147483647i), 11695i, 1i), var_0.b), _wgslsmith_mult_vec4_i32(select(vec4<i32>(1i, u_input.a, var_2.c, 9139i), vec4<i32>(-1i, u_input.a, -2147483647i, var_2.c), vec4<bool>(var_2.b.x, false, false, var_2.b.x)), select(vec4<i32>(-12570i, var_0.a, 1i, -1i), vec4<i32>(0i, arg_0, arg_0, 0i), vec4<bool>(true, var_0.b.x, var_0.b.x, true))) >> (~min(vec4<u32>(var_3.x, 28267u, var_3.x, 52385u), vec4<u32>(var_3.x, var_3.x, var_3.x, 37421u)) % vec4<u32>(32u)))).b;
    return var_2.b;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1419f)), _wgslsmith_div_f32(-385f, 748f))))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1339f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(2297f, -2780f) - -1384f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -987f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1037f + 1000f) * _wgslsmith_f_op_f32(trunc(513f)))))));
    var var_1 = u_input.a;
    var var_2 = func_2(~abs(-12424i));
    var var_3 = func_2(_wgslsmith_sub_i32(var_2.c, min(_wgslsmith_mult_i32(firstLeadingBit(u_input.a), -var_2.a), _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, -19775i), var_2.c))));
    let var_4 = _wgslsmith_add_vec4_u32(~(~select(vec4<u32>(75456u, arg_2, 4294967295u, 43859u) << (vec4<u32>(119019u, 4294967295u, arg_2, arg_2) % vec4<u32>(32u)), countOneBits(vec4<u32>(1u, arg_2, arg_2, 0u)), true)), vec4<u32>(2464u, arg_2, (10151u >> (arg_2 % 32u)) ^ ~2863u, _wgslsmith_div_u32(select(4294967295u, arg_2, false), 20205u)) | vec4<u32>(arg_2, ~_wgslsmith_clamp_u32(arg_2, arg_2, arg_2), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 54018u, arg_2, arg_2), vec4<u32>(1u, arg_2, arg_2, 1u) ^ vec4<u32>(arg_2, arg_2, arg_2, 1u)), 16598u));
    return Struct_1(var_2.c << (arg_2 % 32u), vec4<bool>(true, false, true, true), _wgslsmith_mod_i32(i32(-1i) * -select(var_2.c, -2147483647i, false), u_input.a), var_2.d);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = vec3<i32>(-1i, 12675i ^ u_input.a, u_input.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.d, 2848f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1342f, arg_1.d) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(918f, arg_1.d), vec2<f32>(-1636f, arg_1.d), true)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-609f, -648f)) * vec2<f32>(2938f, -564f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2178f, arg_1.d)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.d, -238f), vec2<f32>(1170f, arg_1.d), vec2<bool>(arg_1.b.x, arg_1.b.x))))))));
    let var_2 = ~(~(vec3<u32>(1u, 1u, 1u) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(18123u, 4294967295u, 0u), vec3<u32>(10263u, 1u, 24694u)))) & vec3<u32>(1u, 1u, 1u);
    let var_3 = Struct_1(-_wgslsmith_clamp_i32(-19460i, -12184i ^ _wgslsmith_sub_i32(arg_0, 2147483647i), _wgslsmith_dot_vec3_i32(arg_3, vec3<i32>(arg_3.x, -2147483647i, -48355i) & arg_3)), arg_1.b, -6769i, 154f);
    var var_4 = var_3.d;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(reverseBits(_wgslsmith_div_u32(1u, max(10094u, 0u))), 0u, max(1u, ~(~1u)));
    var var_1 = max(firstTrailingBit(var_0.x), var_0.x);
    var var_2 = 0i;
    var var_3 = func_5(min(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(69473i, 30859i), vec2<i32>(u_input.a, -42410i)), vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, u_input.a)) << (var_0.x % 32u), ~(i32(-1i) * -1i)), func_4(func_1(1i), !(!func_2(u_input.a).b.xxx), 51842u), 0i | u_input.a, select(select((vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(-1i, -6591i, 0i)) ^ ~vec3<i32>(0i, 55024i, -1i), ~reverseBits(vec3<i32>(u_input.a, -2147483647i, 30935i)), func_2(-58986i).b.xxx), _wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, select(u_input.a, u_input.a, false), _wgslsmith_sub_i32(0i, 37562i)), vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), u_input.a), firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 1i))), all(vec4<bool>(true, true, true, true))));
    var var_4 = func_4(vec4<bool>(!var_3.b.x, true, var_3.b.x, var_3.b.x), func_1(func_5(_wgslsmith_sub_i32(-48708i, _wgslsmith_add_i32(u_input.a, var_3.a)), Struct_1(var_3.a, !var_3.b, -var_3.a, _wgslsmith_f_op_f32(step(226f, var_3.d))), -1i, -vec3<i32>(var_3.a, 2147483647i, u_input.a)).c).ywx, _wgslsmith_sub_u32(var_0.x, var_0.x));
    var_3 = Struct_1(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_add_i32(-var_4.c, _wgslsmith_clamp_i32(var_3.c, -5705i, 1i))), abs(-2147483647i)), !var_4.b, -2147483647i, func_5(u_input.a, func_2(_wgslsmith_sub_i32(i32(-1i) * -77771i, reverseBits(u_input.a))), _wgslsmith_dot_vec4_i32(vec4<i32>(-11327i, var_4.a, _wgslsmith_add_i32(u_input.a, u_input.a), -2147483647i), -countOneBits(vec4<i32>(-29205i, u_input.a, -16890i, u_input.a))), vec3<i32>(firstLeadingBit(~var_3.a), ~1i, -10321i)).d);
    let var_5 = vec4<i32>(-9251i, max(-36933i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.a, 1i, 2147483647i) ^ vec3<i32>(1i, -2147483647i, u_input.a)), vec3<i32>(-1i) * -vec3<i32>(var_3.a, var_4.a, var_3.c))), -(~1i), var_4.c);
    var var_6 = var_4.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-2459f + var_3.d), var_3.d, 2147483647i, var_0.x >> (30727u % 32u));
}

