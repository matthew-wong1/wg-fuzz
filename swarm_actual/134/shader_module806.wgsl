struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(-27436i, 0i, 2147483647i), vec3<i32>(-12613i, -1i, 0i), vec3<i32>(-1i, 2147483647i, -57222i), vec3<i32>(46309i, 3207i, 23070i), vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(15841i, -55703i, -49035i), vec3<i32>(i32(-2147483648), 55960i, -21038i), vec3<i32>(0i, -22079i, -20509i), vec3<i32>(26530i, -16680i, -1i), vec3<i32>(14498i, 2147483647i, -1i), vec3<i32>(-1i, -1i, 14455i), vec3<i32>(2147483647i, 52719i, 8794i), vec3<i32>(-7375i, 35968i, 1i), vec3<i32>(15961i, 47244i, -5416i), vec3<i32>(0i, 2147483647i, -12789i), vec3<i32>(-10432i, -1i, -1i), vec3<i32>(2147483647i, 0i, 0i));

var<private> global1: Struct_1 = Struct_1(1u, -53815i, vec3<i32>(0i, 1i, 1i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> u32 {
    var var_0 = 18364u;
    let var_1 = !(arg_1 || arg_1);
    var var_2 = ~(1u >> (u_input.b % 32u)) & 32563u;
    return 0u;
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b << (0u % 32u), ~4294967295u), min(20224u, u_input.b)), u_input.c, firstLeadingBit(vec3<i32>(~1i, 27935i, _wgslsmith_clamp_i32(-1015i ^ global1.b, ~(-49413i), -11183i))));
    let var_0 = Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(27511u, _wgslsmith_clamp_u32(6642u, 12530u, u_input.a) >> ((31390u | global1.a) % 32u), func_3(max(-9671i, 26262i), true, Struct_2(vec4<u32>(15698u, global1.a, 45599u, global1.a), Struct_1(global1.a, 1i, global0[_wgslsmith_index_u32(u_input.b, 17u)]), vec2<u32>(89842u, 0u))), 1u), firstTrailingBit(select(select(vec4<u32>(51174u, u_input.b, 19635u, 1u), vec4<u32>(global1.a, global1.a, 28896u, u_input.b), true), vec4<u32>(u_input.d.x, u_input.d.x, 12540u, global1.a), vec4<bool>(true, false, false, false)))), Struct_1(global1.a, _wgslsmith_dot_vec2_i32(select(-vec2<i32>(13064i, 1i), ~vec2<i32>(2147483647i, global1.c.x), vec2<bool>(true, true)), vec2<i32>(~2147483647i, -1i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(global1.c ^ global1.c, ~vec3<i32>(-37068i, -1i, u_input.c)), ~max(global1.c, vec3<i32>(u_input.c, -2147483647i, 32425i)), global0[_wgslsmith_index_u32(abs(1u), 17u)])), u_input.d.yy);
    var var_1 = vec3<bool>((u_input.c ^ -var_0.b.b) >= max(countOneBits(u_input.c) | (i32(-1i) * -30447i), 21556i), any(vec3<bool>(true, true, false)) & (~(u_input.a ^ 38146u) == 0u), !all(vec2<bool>(true, true)));
    global0 = array<vec3<i32>, 17>();
    var var_2 = i32(-1i) * -global1.b;
    return var_0.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec4_u32(select(_wgslsmith_clamp_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a, arg_2.a, 1u, arg_0.a.x), vec4<u32>(12915u, arg_1.d.a, arg_2.a, arg_1.a.x)), reverseBits(vec4<u32>(global1.a, 0u, 48392u, arg_2.a)), true), min(vec4<u32>(arg_1.b.a, global1.a, u_input.d.x, 15278u) & vec4<u32>(0u, 1u, 4294967295u, arg_2.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(54325u, 137997u, arg_1.d.a, 70107u), vec4<u32>(arg_0.b.a, 0u, 5565u, 13721u), vec4<u32>(1u, u_input.d.x, u_input.d.x, 79055u))), ~select(vec4<u32>(arg_1.d.a, arg_1.b.a, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, arg_2.a, arg_0.d.a), vec4<bool>(false, true, false, false))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, arg_2.a, 4294967295u) >> (select(vec4<u32>(4976u, arg_2.a, 0u, arg_1.a.x), vec4<u32>(u_input.b, 8202u, 24813u, arg_2.a), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), ~(~vec4<u32>(0u, 49699u, 16120u, global1.a))), !select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true))), abs(vec4<u32>(~arg_0.d.a >> (arg_1.d.a % 32u), countOneBits(_wgslsmith_clamp_u32(85593u, 4294967295u, 28330u)), _wgslsmith_sub_u32(arg_2.a, 0u >> (arg_2.a % 32u)), ~global1.a)));
    var_0 = vec4<u32>(max(~(~(arg_1.a.x ^ 4294967295u)), 28653u), max(_wgslsmith_add_u32(reverseBits(var_0.x), var_0.x), firstLeadingBit(_wgslsmith_clamp_u32(arg_1.b.a, select(var_0.x, arg_1.d.a, true), 2792u))), ~_wgslsmith_mult_u32(firstLeadingBit(func_3(global1.b, true, Struct_2(vec4<u32>(52249u, 53352u, 47116u, 2425u), Struct_1(arg_2.a, arg_1.d.c.x, global1.c), vec2<u32>(arg_0.b.a, arg_0.d.a)))), ~1u), ~(~_wgslsmith_add_u32(23570u, _wgslsmith_add_u32(17725u, arg_2.a))));
    let var_1 = Struct_2(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1893u, u_input.d.x, u_input.b, arg_1.a.x), vec4<u32>(u_input.d.x, 1u, 4294967295u, u_input.b)), 111824u, ~var_0.x, _wgslsmith_clamp_u32(var_0.x, 50398u, arg_2.a)) | vec4<u32>(~arg_0.a.x >> (_wgslsmith_mod_u32(0u, 32679u) % 32u), 0u, _wgslsmith_add_u32(abs(57890u), ~u_input.a), 40494u), arg_2, var_0.yz);
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c, arg_1.c, false)) + _wgslsmith_f_op_f32(-arg_1.c)))), arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -824f))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-752f, -432f, arg_1.c) - vec3<f32>(1170f, arg_0.c, arg_1.c)), vec3<f32>(1000f, 1159f, 1121f)))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-679f)), -1320f, _wgslsmith_f_op_f32(round(148f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, -654f, arg_0.c))) - vec3<f32>(arg_1.c, arg_0.c, -574f))))));
    return func_2();
}

fn func_1() -> Struct_2 {
    global0 = array<vec3<i32>, 17>();
    global0 = array<vec3<i32>, 17>();
    global1 = func_4(Struct_3(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(55535u, 46201u), vec2<u32>(u_input.d.x, global1.a)), (vec2<u32>(global1.a, 11163u) | u_input.d.xy) << (vec2<u32>(58044u, 13676u) % vec2<u32>(32u))), func_2(), _wgslsmith_f_op_f32(-595f * _wgslsmith_f_op_f32(f32(-1f) * -417f)), Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, u_input.d.x, 0u, global1.a), vec4<u32>(41563u, global1.a, 13950u, 4294967295u)), u_input.d.x), i32(-1i) * -70234i, select(_wgslsmith_div_vec3_i32(global0[_wgslsmith_index_u32(7385u, 17u)], global1.c), select(vec3<i32>(-17714i, 14188i, global1.c.x), vec3<i32>(48921i, global1.b, 1i), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))))), Struct_3(u_input.d.zz, func_2(), 1f, func_2()), Struct_1(~global1.a, -26542i, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 19221i, global1.c.x), vec3<i32>(-1i, u_input.c, u_input.c)), 5282i, -2147483647i >> (~global1.a % 32u))));
    let var_0 = Struct_1(u_input.d.x, 1i, vec3<i32>(-countOneBits(50835i), _wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(u_input.c, u_input.c)) << (func_4(Struct_3(u_input.d.yx, Struct_1(u_input.b, 0i, vec3<i32>(1i, u_input.c, 2147483647i)), 1936f, Struct_1(35847u, u_input.c, vec3<i32>(global1.c.x, u_input.c, 9709i))), Struct_3(u_input.d.zx, Struct_1(global1.a, 44224i, vec3<i32>(u_input.c, global1.c.x, 0i)), -216f, Struct_1(global1.a, 1i, vec3<i32>(-24312i, u_input.c, 23895i))), func_2()).a % 32u), select(i32(-1i) * -48867i, -38467i, false)));
    global0 = array<vec3<i32>, 17>();
    return Struct_2(~vec4<u32>((u_input.d.x << (var_0.a % 32u)) ^ _wgslsmith_mod_u32(28969u, var_0.a), 16589u, max(abs(30992u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.a), u_input.d.yy)), u_input.a), func_4(Struct_3(u_input.d.zy, func_2(), -935f, func_4(Struct_3(u_input.d.zz, Struct_1(1u, global1.c.x, global0[_wgslsmith_index_u32(67787u, 17u)]), -745f, var_0), Struct_3(u_input.d.yx, var_0, 1000f, var_0), var_0)), Struct_3(u_input.d.yx, var_0, 1f, Struct_1(1u, -u_input.c, vec3<i32>(16832i, 59661i, -2147483647i))), func_4(Struct_3(vec2<u32>(17013u, var_0.a) & vec2<u32>(525u, var_0.a), Struct_1(5636u, 11102i, vec3<i32>(-34096i, -10432i, global1.b)), _wgslsmith_f_op_f32(sign(-217f)), func_4(Struct_3(vec2<u32>(u_input.d.x, 13298u), Struct_1(u_input.d.x, global1.c.x, vec3<i32>(global1.c.x, 1i, -8510i)), 532f, var_0), Struct_3(vec2<u32>(4294967295u, var_0.a), var_0, -244f, Struct_1(u_input.a, var_0.c.x, var_0.c)), var_0)), Struct_3(~u_input.d.xx, func_2(), _wgslsmith_f_op_f32(ceil(1129f)), func_4(Struct_3(u_input.d.yz, Struct_1(47642u, u_input.c, vec3<i32>(2147483647i, 12943i, -11905i)), -798f, Struct_1(u_input.b, global1.c.x, vec3<i32>(35452i, global1.c.x, 2147483647i))), Struct_3(vec2<u32>(4294967295u, 1u), Struct_1(global1.a, u_input.c, var_0.c), -872f, Struct_1(global1.a, 0i, vec3<i32>(2125i, u_input.c, u_input.c))), var_0)), Struct_1(min(1710u, var_0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -1i, -21632i, var_0.b), vec4<i32>(var_0.c.x, global1.b, -2147483647i, 11876i)), var_0.c))), u_input.d.zy);
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(248f, 266f, 1305f, 1372f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 1218f, 812f, 909f))))))));
    let var_1 = arg_0.b;
    var var_2 = Struct_3(reverseBits(_wgslsmith_div_vec2_u32(arg_0.a.yy, u_input.d.xz)) | _wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(var_1.a), global1.a), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 0u), ~vec2<u32>(arg_1, arg_0.b.a))), func_4(Struct_3(arg_0.c, Struct_1(~var_1.a, _wgslsmith_sub_i32(u_input.c, arg_0.b.c.x), vec3<i32>(var_1.b, 27197i, arg_0.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)), var_1), Struct_3(~arg_0.c, func_2(), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)))), Struct_1(82400u, reverseBits(-50727i), reverseBits(global1.c))), func_1().b), 389f, func_4(Struct_3(~vec2<u32>(7125u, arg_1), arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-534f, var_0.x) + _wgslsmith_f_op_f32(-428f + -1000f)), Struct_1(global1.a, ~(-78837i), ~vec3<i32>(u_input.c, arg_0.b.c.x, 32115i))), Struct_3(~select(arg_0.c, vec2<u32>(u_input.b, 65573u), vec2<bool>(true, false)), Struct_1(var_1.a << (global1.a % 32u), 36156i, vec3<i32>(var_1.b, arg_0.b.b, global1.b)), 561f, func_4(Struct_3(vec2<u32>(4294967295u, 0u), Struct_1(1u, arg_0.b.b, vec3<i32>(global1.b, 2115i, 0i)), var_0.x, arg_0.b), Struct_3(u_input.d.xy, Struct_1(39674u, -54980i, var_1.c), var_0.x, arg_0.b), arg_0.b)), Struct_1(~(~39244u), 2408i, firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-20928i, -2147483647i, u_input.c), arg_0.b.c)))));
    let var_3 = vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(~min(global1.c.yx, vec2<i32>(0i, -30388i)), _wgslsmith_div_vec2_i32(arg_0.b.c.xx, vec2<i32>(21096i, arg_0.b.c.x)));
    var var_4 = select(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1258f), _wgslsmith_f_op_f32(floor(var_0.x)))) <= _wgslsmith_f_op_f32(-700f + _wgslsmith_f_op_f32(min(-175f, -1000f))), 23642i <= _wgslsmith_mult_i32(var_3.x, 0i), 14558i < (global1.b >> (var_2.d.a % 32u))), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(-22991i, var_1.c.x, var_2.d.c.x, u_input.c) ^ vec4<i32>(u_input.c, global1.b, 0i, var_2.b.b), select(vec4<i32>(arg_0.b.b, -15095i, global1.b, u_input.c), vec4<i32>(arg_0.b.c.x, -17581i, 5343i, -1i), true)) <= arg_0.b.c.x, true, any(vec4<bool>(true, true, true, true))));
    return StorageBuffer(func_3(~_wgslsmith_mod_i32(global1.c.x, 1i), !select(var_4.x, var_4.x || var_4.x, any(var_4.yx)), arg_0), vec3<f32>(-1228f, _wgslsmith_f_op_f32(-var_0.x), var_0.x), vec2<u32>(arg_0.a.x, _wgslsmith_add_u32(func_1().b.a, 52246u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(_wgslsmith_add_i32(~global1.c.x, 1i) >= 23203i);
    let x = u_input.a;
    s_output = func_5(func_1(), global1.a);
}

