struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(1u, 47090u, 4294967295u, 4294967295u, 13617u, 7529u, 4294967295u, 10956u, 0u, 20297u, 17134u, 4294967295u, 41020u, 26101u, 67460u, 38745u, 12525u);

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(true, vec3<bool>(false, true, true), vec3<f32>(1106f, -884f, 1990f), vec3<f32>(1227f, 1000f, 795f)), Struct_1(true, vec3<bool>(false, true, true), vec3<f32>(303f, 517f, -498f), vec3<f32>(2176f, 1000f, 640f)), Struct_1(true, vec3<bool>(true, false, true), vec3<f32>(-328f, 964f, -1000f), vec3<f32>(596f, -296f, 359f)), Struct_1(true, vec3<bool>(false, true, false), vec3<f32>(-1000f, 2016f, 344f), vec3<f32>(-1558f, 660f, -496f)), Struct_1(false, vec3<bool>(false, true, true), vec3<f32>(412f, 1000f, 1000f), vec3<f32>(654f, 1617f, 1499f)), Struct_1(true, vec3<bool>(true, false, false), vec3<f32>(290f, -521f, 541f), vec3<f32>(-761f, 149f, 668f)), Struct_1(false, vec3<bool>(true, true, true), vec3<f32>(1087f, 1000f, 938f), vec3<f32>(766f, 2180f, 745f)), Struct_1(false, vec3<bool>(false, true, false), vec3<f32>(-677f, -437f, 988f), vec3<f32>(1532f, 1673f, -289f)), Struct_1(false, vec3<bool>(true, true, true), vec3<f32>(677f, 472f, -258f), vec3<f32>(788f, 838f, -1752f)), Struct_1(true, vec3<bool>(false, true, false), vec3<f32>(143f, 1619f, -588f), vec3<f32>(-1000f, -909f, -1268f)), Struct_1(true, vec3<bool>(true, false, false), vec3<f32>(174f, 1000f, 1000f), vec3<f32>(278f, 856f, -1000f)), Struct_1(true, vec3<bool>(false, false, true), vec3<f32>(-202f, 712f, 604f), vec3<f32>(254f, -1870f, 453f)));

var<private> global2: bool;

var<private> global3: vec2<i32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: u32) -> u32 {
    var var_0 = ~_wgslsmith_clamp_vec4_i32(min(abs(~vec4<i32>(global3.x, -15720i, 1i, global3.x)), vec4<i32>(7042i, firstTrailingBit(u_input.c), 16457i, ~(-55501i))), firstLeadingBit(vec4<i32>(u_input.d | global3.x, 9640i, global3.x, u_input.c)), -_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global3.x, u_input.b, -24160i, 0i), vec4<i32>(-19301i, global3.x, -1i, u_input.d)), countOneBits(vec4<i32>(-2147483647i, -2147483647i, u_input.d, global3.x)), countOneBits(vec4<i32>(u_input.b, -16986i, global3.x, u_input.d))));
    var var_1 = Struct_1(!arg_1.x, select(!select(select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(false, true, arg_1.x), true), !vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(arg_1.x, true, false)), !vec3<bool>(global3.x == -2147483647i, global0[_wgslsmith_index_u32(arg_2, 17u)] == global0[_wgslsmith_index_u32(1u, 17u)], arg_1.x), any(arg_1)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(-166f, 542f, arg_0)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1577f, arg_0, 1585f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) * vec3<f32>(arg_0, arg_0, -331f)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(arg_0, 833f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0)))))));
    var var_2 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.e, 17u)], 12u)];
    global0 = array<u32, 17>();
    let var_3 = Struct_1(any(vec4<bool>(false, var_1.a, !(!arg_1.x), select(var_2.a, arg_1.x, any(arg_1)))), var_2.b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, -1866f, -279f) * vec3<f32>(-738f, 195f, 143f)), var_1.d, false & !var_2.b.x)), _wgslsmith_f_op_vec3_f32(trunc(var_1.d)))), vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(abs(arg_0)), var_2.d.x));
    return ~19438u;
}

fn func_2() -> f32 {
    global0 = array<u32, 17>();
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(~func_3(_wgslsmith_f_op_f32(669f * 883f), vec2<bool>(true, true), ~5605u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.e, 4294967295u), u_input.a), _wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(global0[_wgslsmith_index_u32(u_input.e, 17u)], 1u, u_input.e))) >> (~_wgslsmith_sub_u32(u_input.a.x, 0u) % 32u), firstTrailingBit(~_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 17u)])))), ~select(u_input.a, vec3<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1538u, 1u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50346u, 17u)], 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)], 17u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], u_input.e, global0[_wgslsmith_index_u32(54529u, 17u)]), vec4<u32>(0u, 26279u, u_input.e, u_input.e)), 17u)]), vec3<bool>(true, true, true)));
    let var_1 = Struct_1(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(false, true, select(false, false, false)), ~global3.x != (u_input.d >> (var_0.x % 32u)))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-156f, 407f, 724f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(531f, 1074f, -1000f), vec3<f32>(652f, -472f, 1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-892f, -216f, 675f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1060f, -1127f, 1000f)) - vec3<f32>(494f, _wgslsmith_f_op_f32(-940f * -430f), 874f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(829f, 2807f, -460f)) * vec3<f32>(425f, -438f, 776f))) + vec3<f32>(1f, 1f, 1f)));
    var var_2 = reverseBits(_wgslsmith_add_u32(abs(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(74406u, 17u)], 0u)), min(_wgslsmith_add_u32(u_input.e, _wgslsmith_add_u32(1u, u_input.e)), (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 17u)], 17u)] & var_0.x) >> (4294967295u % 32u))));
    var var_3 = 1i << (u_input.a.x % 32u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(ceil(var_1.d.x)))));
}

fn func_1(arg_0: u32) -> vec4<i32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -303f))), _wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(-321f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(max(1064f, _wgslsmith_f_op_f32(ceil(1000f)))), !any(vec4<bool>(false, false, false, false))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1135f, -820f) * 1221f));
    let var_1 = ~vec4<u32>(4294967295u, ~(~1u), firstLeadingBit(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)]) << ((reverseBits(u_input.a.x) ^ global0[_wgslsmith_index_u32(~0u, 17u)]) % 32u), reverseBits(min(global0[_wgslsmith_index_u32(4294967295u, 17u)], _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(2497u, 17u)], 4294967295u))));
    var var_2 = all(vec4<bool>(true, true, (-u_input.c & 24153i) == global3.x, ~_wgslsmith_add_u32(var_1.x, 61622u) <= var_1.x));
    let var_3 = !vec3<bool>(false, true || any(vec4<bool>(true, true, true, true)), !all(vec2<bool>(true, true)));
    var var_4 = 1u >> (~_wgslsmith_clamp_u32(var_1.x, func_3(753f, !var_3.xy, ~arg_0), firstTrailingBit(countOneBits(88615u))) % 32u);
    return firstTrailingBit(abs(select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 71605i, -40527i, 52661i), vec4<i32>(u_input.d, 2147483647i, global3.x, u_input.b)), vec4<i32>(u_input.c, u_input.b, 1i, -1i) << (vec4<u32>(6911u, 39569u, u_input.e, 4294967295u) % vec4<u32>(32u)), !vec4<bool>(false, false, var_3.x, false))) ^ -select(vec4<i32>(global3.x, global3.x, global3.x, u_input.d), firstLeadingBit(vec4<i32>(u_input.c, 14585i, -3062i, global3.x)), var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 17>();
    let var_0 = func_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.zx, vec2<u32>(global0[_wgslsmith_index_u32(u_input.e, 17u)], 0u)), _wgslsmith_mult_vec2_u32(~u_input.a.zz, vec2<u32>(1u, 4294967295u))), _wgslsmith_sub_u32(~75528u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63727u, 17u)], 17u)]) | ~abs(62559u)));
    global2 = true;
    let var_1 = Struct_1(true, vec3<bool>(false, true | (true || select(true, false, false)), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1038f, 1101f, -806f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-939f, 899f, 1486f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1172f))), -884f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(286f + 980f), _wgslsmith_f_op_f32(floor(276f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-346f)) + -230f))));
    let var_2 = Struct_1(true, select(var_1.b, !select(!vec3<bool>(var_1.a, true, false), var_1.b, true), select(all(vec4<bool>(false, true, var_1.b.x, var_1.b.x)), any(select(vec4<bool>(false, var_1.a, true, false), vec4<bool>(true, var_1.a, false, false), vec4<bool>(false, true, var_1.a, false))), !any(vec3<bool>(var_1.b.x, var_1.a, var_1.b.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.c.x, -833f, 1478f))))))), var_1.c);
    global1 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(abs(~1078u) | ((101207u >> (global0[_wgslsmith_index_u32(78626u, 17u)] % 32u)) & 25150u), 17u)], ~vec2<u32>(~_wgslsmith_div_u32(34553u, 16765u), ~u_input.e), ~(~u_input.a.zx & u_input.a.zx), ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 1u, 66140u), vec3<u32>(u_input.a.x, 0u, u_input.a.x) ^ vec3<u32>(5480u, 0u, 95997u)), 4294967295u, global0[_wgslsmith_index_u32(~(~1u), 17u)]), max(select(abs(~vec3<i32>(global3.x, -2147483647i, global3.x)), var_0.zwy, !vec3<bool>(var_1.b.x, var_2.a, var_1.a)), vec3<i32>(-2147483647i, var_0.x, -70489i & global3.x)));
}

