struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<i32>(-26592i, -1384i), 0i, 4126i, vec2<f32>(1000f, 2082f)), Struct_1(vec2<i32>(-50155i, 1739i), 32417i, -1i, vec2<f32>(302f, 739f)), Struct_1(vec2<i32>(-1i, 7521i), 7303i, 1i, vec2<f32>(1149f, -952f)), Struct_1(vec2<i32>(2147483647i, 2147483647i), -87922i, 8411i, vec2<f32>(-1929f, -116f)), Struct_1(vec2<i32>(0i, -1i), 1i, -13471i, vec2<f32>(-1680f, -624f)), Struct_1(vec2<i32>(0i, -1i), 0i, 21750i, vec2<f32>(-640f, 888f)), Struct_1(vec2<i32>(-16890i, -46653i), -9815i, -20906i, vec2<f32>(-617f, 877f)), Struct_1(vec2<i32>(7789i, 26019i), 14707i, -52839i, vec2<f32>(156f, 878f)), Struct_1(vec2<i32>(27056i, 1i), -18084i, -14265i, vec2<f32>(1488f, -140f)), Struct_1(vec2<i32>(-20025i, 2147483647i), 0i, -9166i, vec2<f32>(-3271f, 886f)), Struct_1(vec2<i32>(-1i, 0i), 2147483647i, 40262i, vec2<f32>(-954f, 189f)), Struct_1(vec2<i32>(-13317i, 0i), -26134i, -26110i, vec2<f32>(-130f, -1000f)), Struct_1(vec2<i32>(1i, i32(-2147483648)), 2147483647i, -7134i, vec2<f32>(-1584f, 152f)), Struct_1(vec2<i32>(509i, -1i), 0i, -1i, vec2<f32>(-315f, -990f)), Struct_1(vec2<i32>(31273i, 1i), 1i, -1i, vec2<f32>(695f, -534f)), Struct_1(vec2<i32>(-9710i, 1i), -36110i, 1i, vec2<f32>(1007f, 456f)), Struct_1(vec2<i32>(-73853i, -22877i), -1i, 2292i, vec2<f32>(914f, 296f)), Struct_1(vec2<i32>(1779i, 0i), 1i, -1i, vec2<f32>(1000f, 1084f)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = ~abs(abs(-78214i));
    var var_1 = Struct_2(arg_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, -1967f))), arg_0.a.d.x))), _wgslsmith_sub_u32(countOneBits(~arg_1.c), arg_1.c) ^ ~1u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, var_1.a.d.x, 519f) + vec3<f32>(_wgslsmith_f_op_f32(var_1.a.d.x - 1339f), _wgslsmith_f_op_f32(f32(-1f) * -1575f), _wgslsmith_f_op_f32(-180f * arg_1.a.d.x)))));
    var_1 = Struct_2(Struct_1(arg_1.a.a, 0i, arg_0.a.a.x, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2137f))), -1630f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.d.x)), var_1.c);
    var_1 = arg_1;
    return !vec4<bool>(arg_2.x, arg_3.x <= reverseBits(~var_1.c), true, true);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_2) -> vec2<bool> {
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    let var_0 = _wgslsmith_div_u32(1u, ~39180u);
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    return func_3(arg_2, arg_2, select(!func_3(arg_2, Struct_2(arg_2.a, 774f, 58516u), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec2<u32>(arg_2.c, u_input.b)).yxy, vec3<bool>(arg_1.x, true, arg_0.x <= abs(0i)), vec3<bool>(arg_1.x, arg_1.x, true)), ~(~(~vec2<u32>(arg_2.c, var_0) >> (vec2<u32>(arg_2.c, u_input.b) % vec2<u32>(32u))))).yw;
}

fn func_2() -> Struct_1 {
    let var_0 = -48151i;
    var var_1 = 4294967295u & _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(u_input.b, 658u)), vec2<u32>(u_input.b, 0u) << (~vec2<u32>(u_input.b, 34701u) % vec2<u32>(32u))), 48033u);
    global0 = array<Struct_1, 18>();
    var var_2 = func_4(firstTrailingBit(-u_input.a.zzz) & reverseBits(_wgslsmith_clamp_vec3_i32(u_input.a.ywx, vec3<i32>(-51916i, -14889i, -26486i), reverseBits(u_input.a.xxx))), select(vec4<bool>(true, false, all(func_3(Struct_2(Struct_1(vec2<i32>(var_0, var_0), 19297i, u_input.a.x, vec2<f32>(-914f, 1421f)), 401f, u_input.b), Struct_2(global0[_wgslsmith_index_u32(1u, 18u)], -470f, u_input.b), vec3<bool>(true, true, false), vec2<u32>(u_input.b, 26996u))), !func_3(Struct_2(Struct_1(vec2<i32>(-1i, 2147483647i), -2147483647i, u_input.a.x, vec2<f32>(655f, 798f)), -906f, u_input.b), Struct_2(Struct_1(u_input.a.xz, u_input.a.x, var_0, vec2<f32>(-632f, 225f)), -565f, 0u), vec3<bool>(true, false, false), vec2<u32>(4294967295u, u_input.b)).x), vec4<bool>(!all(vec2<bool>(true, true)), true, func_3(Struct_2(Struct_1(u_input.a.xz, var_0, u_input.a.x, vec2<f32>(-1159f, 1788f)), -624f, 4294967295u), Struct_2(Struct_1(u_input.a.yy, var_0, 0i, vec2<f32>(150f, 981f)), -301f, u_input.b), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec2<u32>(u_input.b, 0u)).x, true), vec4<bool>(all(vec3<bool>(false, false, false)), -2147483647i <= u_input.a.x, false, func_3(Struct_2(global0[_wgslsmith_index_u32(26538u, 18u)], -416f, u_input.b), Struct_2(Struct_1(u_input.a.ww, var_0, var_0, vec2<f32>(952f, -2030f)), -404f, 45678u), vec3<bool>(true, true, true), ~vec2<u32>(1u, u_input.b)).x)), Struct_2(global0[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(u_input.b)), 18u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1142f + 2287f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), countOneBits(_wgslsmith_mod_u32(u_input.b, 4294967295u))));
    var var_3 = ~(-18672i);
    return Struct_1(u_input.a.wy, _wgslsmith_div_i32(-1i, firstLeadingBit(_wgslsmith_mult_i32(u_input.a.x, var_0))), _wgslsmith_div_i32(_wgslsmith_add_i32(var_0 | -7598i, ~u_input.a.x), var_0) << (1u % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1429f, 744f), vec2<f32>(-1840f, -1725f), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-434f, -333f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-288f, -855f) - vec2<f32>(-1206f, -838f)))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    let var_0 = abs(~(~arg_0.xx));
    return Struct_2(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-761f)) - _wgslsmith_f_op_f32(sign(-1272f))))), 4294967295u);
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> vec4<u32> {
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    var var_0 = func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(~(~arg_1.c), firstTrailingBit(26866u), 29737u, countOneBits(~arg_1.c)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 29540u, 17459u, 61939u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b, 4294967295u, 4294967295u), vec4<u32>(arg_1.c, 0u, 7265u, u_input.b) & vec4<u32>(2195u, arg_1.c, 8392u, 23543u)), max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, arg_1.c, 1635u, u_input.b), vec4<u32>(1u, 10002u, u_input.b, 4294967295u)), ~vec4<u32>(arg_1.c, 10620u, 40060u, arg_1.c)))));
    let var_1 = vec2<bool>(false, !(!func_4(u_input.a.wzw, vec4<bool>(arg_0, true, false, true), arg_1).x));
    global0 = array<Struct_1, 18>();
    return max(~vec4<u32>(1u, var_0.c, arg_1.c, _wgslsmith_mod_u32(49401u, 3434u)), ~(~vec4<u32>(0u, 4294967295u, arg_1.c, 81686u)) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 43125u, var_0.c, var_0.c), vec4<u32>(u_input.b, 22818u, 1u, u_input.b)) % vec4<u32>(32u))) << (~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(5918u, 63776u, var_0.c, 0u), vec4<u32>(1u, 136123u, 26228u, u_input.b)))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), vec4<u32>(u_input.b, 0u, 8843u, u_input.b)), func_5(any(vec4<bool>(true, true, false, true)), func_1(vec4<u32>(u_input.b, u_input.b, u_input.b, 3017u)))), ~(~vec4<u32>(u_input.b, 8963u, u_input.b, u_input.b) << (~vec4<u32>(1u, u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u))));
    var var_1 = !(-(i32(-1i) * -u_input.a.x) >= -u_input.a.x);
    var_1 = (_wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(var_0.xww, vec3<u32>(var_0.x, 4294967295u, u_input.b))), var_0.xxx) >= ~4294967295u) && func_3(func_1(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 20421u, u_input.b), vec4<u32>(var_0.x, 1u, 0u, var_0.x))), func_1(abs(vec4<u32>(u_input.b, 0u, u_input.b, var_0.x)) & vec4<u32>(u_input.b, var_0.x, 36212u, u_input.b)), func_3(Struct_2(global0[_wgslsmith_index_u32(~u_input.b, 18u)], 852f, var_0.x << (30294u % 32u)), Struct_2(Struct_1(vec2<i32>(-1727i, -38471i), u_input.a.x, 0i, vec2<f32>(939f, 1118f)), -1352f, u_input.b << (1u % 32u)), vec3<bool>(true, all(vec4<bool>(false, false, true, false)), true), ~(~vec2<u32>(1u, 4294967295u))).wzy, ~(~var_0.yz) | ~vec2<u32>(u_input.b, var_0.x)).x;
    var_0 = ~_wgslsmith_add_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, var_0.x), ~vec4<u32>(var_0.x, u_input.b, 28674u, var_0.x), vec4<u32>(var_0.x, 0u, 68163u, 1u) & vec4<u32>(1u, var_0.x, var_0.x, 0u))), ~(~(~vec4<u32>(var_0.x, u_input.b, u_input.b, 52788u))));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-305f)), func_1(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 116018u, 26440u), vec4<u32>(1u, 15452u, var_0.x, var_0.x)), ~vec4<u32>(var_0.x, var_0.x, u_input.b, var_0.x))).a.d.x, -115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-555f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(795f)), _wgslsmith_f_op_f32(-157f * -253f), -1339f, 351f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-234f, -857f, 814f, -924f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(var_2.xxz)), var_2.zwy, select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), func_3(func_1(vec4<u32>(0u, u_input.b, u_input.b, var_0.x)), Struct_2(Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), -1i, u_input.a.x, vec2<f32>(519f, var_2.x)), -1550f, u_input.b), func_3(Struct_2(global0[_wgslsmith_index_u32(38394u, 18u)], var_2.x, u_input.b), Struct_2(Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), 2147483647i, u_input.a.x, vec2<f32>(var_2.x, var_2.x)), var_2.x, 45007u), vec3<bool>(false, true, false), var_0.wy).zzz, var_0.wx).xwz, true))), 12571u, reverseBits(vec2<u32>(1u, _wgslsmith_sub_u32(var_0.x, _wgslsmith_clamp_u32(u_input.b, 4294967295u, var_0.x)))), _wgslsmith_mod_u32(24938u, u_input.b), _wgslsmith_add_i32(_wgslsmith_add_i32(~abs(u_input.a.x), u_input.a.x), u_input.a.x));
}

