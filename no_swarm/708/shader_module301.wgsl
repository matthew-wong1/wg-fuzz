struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<f32>(-230f, 1448f)), Struct_1(vec2<f32>(-183f, -1560f)), Struct_1(vec2<f32>(1287f, -705f)), Struct_1(vec2<f32>(692f, 735f)), Struct_1(vec2<f32>(878f, -1000f)), Struct_1(vec2<f32>(1741f, -116f)), Struct_1(vec2<f32>(-1677f, 457f)), Struct_1(vec2<f32>(-667f, -275f)), Struct_1(vec2<f32>(1332f, -420f)), Struct_1(vec2<f32>(-2525f, -916f)), Struct_1(vec2<f32>(315f, 880f)), Struct_1(vec2<f32>(1000f, -1000f)), Struct_1(vec2<f32>(934f, 187f)), Struct_1(vec2<f32>(1267f, 818f)), Struct_1(vec2<f32>(1578f, 592f)), Struct_1(vec2<f32>(-1000f, -1000f)), Struct_1(vec2<f32>(1382f, 354f)), Struct_1(vec2<f32>(-1000f, -1026f)), Struct_1(vec2<f32>(-2334f, -302f)), Struct_1(vec2<f32>(117f, 190f)), Struct_1(vec2<f32>(-953f, -496f)), Struct_1(vec2<f32>(-1268f, 609f)), Struct_1(vec2<f32>(-653f, -495f)), Struct_1(vec2<f32>(271f, 661f)), Struct_1(vec2<f32>(376f, -557f)), Struct_1(vec2<f32>(-253f, 1660f)), Struct_1(vec2<f32>(-971f, 786f)), Struct_1(vec2<f32>(427f, 917f)), Struct_1(vec2<f32>(267f, 142f)), Struct_1(vec2<f32>(427f, 1065f)));

var<private> global2: array<vec3<i32>, 12>;

var<private> global3: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(arg_1.a, vec2<f32>(_wgslsmith_div_f32(arg_0.a.x, arg_1.a.x), _wgslsmith_f_op_f32(step(1323f, arg_0.a.x)))))));
    global2 = array<vec3<i32>, 12>();
    let var_1 = global1[_wgslsmith_index_u32(u_input.d, 30u)];
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, _wgslsmith_add_u32(arg_2.x, 317u), arg_2.x, u_input.b.x)), ~firstTrailingBit(min(abs(vec4<u32>(u_input.b.x, 7638u, u_input.d, arg_2.x)), vec4<u32>(arg_2.x, arg_2.x, 1u, 84959u)))), 12u)];
    let var_3 = firstLeadingBit(u_input.b.x << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(firstLeadingBit(u_input.b.x), firstLeadingBit(arg_2.x)), arg_2.x, _wgslsmith_mult_u32(0u & u_input.d, u_input.b.x)) % 32u));
    return select(vec2<bool>(false == any(vec2<bool>(false, false)), !all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), vec2<bool>(all(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false))), true), any(vec3<bool>(true, any(vec2<bool>(true, true)), true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<bool>, arg_3: f32) -> u32 {
    return firstTrailingBit(u_input.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global3 = func_4(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true), false), true), false), _wgslsmith_f_op_f32(1761f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.x + arg_0.a.x), _wgslsmith_f_op_f32(min(-1456f, -852f)), false)) - _wgslsmith_f_op_f32(-arg_0.a.x))), !vec4<bool>(true & (u_input.b.x != 1u), true, true, all(func_3(arg_0, Struct_1(vec2<f32>(-549f, -1534f)), u_input.b.xw, -1i))), 586f);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-604f)), 1287f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, arg_1.a.x)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1090f, arg_0.a.x))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-268f, arg_0.a.x), vec2<f32>(arg_1.a.x, -925f)), arg_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a + vec2<f32>(673f, arg_0.a.x)))))));
    global3 = u_input.d;
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = ~(~firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 1u, 4294967295u, 4294967295u), ~u_input.b)));
    global0 = min(func_4(vec4<bool>(arg_3.a.x <= arg_1.x, !any(vec3<bool>(true, true, false)), true, false), _wgslsmith_div_f32(-562f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-396f, arg_2.x) * arg_1.x)), vec4<bool>(1u >= u_input.d, !any(vec2<bool>(true, false)), any(vec2<bool>(true, true)), min(1i, -1i) >= u_input.a.x), arg_3.a.x), _wgslsmith_sub_u32(u_input.b.x, abs(var_0.x)));
    var var_1 = vec2<bool>(any(vec3<bool>(all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), true)), false);
    let var_2 = u_input.b.xw;
    var_0 = _wgslsmith_div_vec4_u32(firstTrailingBit(u_input.b), (vec4<u32>(_wgslsmith_sub_u32(var_0.x, 52252u), _wgslsmith_mult_u32(16562u, 1u), abs(var_0.x), var_2.x) >> (~(~vec4<u32>(36649u, var_0.x, u_input.b.x, 10990u)) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_u32((vec4<u32>(0u, 4294967295u, var_2.x, var_2.x) | vec4<u32>(var_2.x, 38529u, 33952u, u_input.d)) & (vec4<u32>(11218u, u_input.b.x, u_input.b.x, 39738u) >> (vec4<u32>(23357u, var_2.x, var_2.x, var_0.x) % vec4<u32>(32u))), min(firstLeadingBit(u_input.b), vec4<u32>(u_input.b.x, var_2.x, 11311u, u_input.d))));
    return _wgslsmith_dot_vec4_u32((_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d, 46602u, u_input.b.x, 105318u), reverseBits(vec4<u32>(1u, var_0.x, u_input.b.x, var_2.x))) << (((u_input.b | vec4<u32>(4294967295u, var_0.x, var_0.x, 53739u)) << (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u)), select(~reverseBits(~u_input.b), vec4<u32>(firstTrailingBit(select(0u, 1u, false)), u_input.b.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(39043u, u_input.d), vec2<u32>(20481u, 1u)) % 32u), _wgslsmith_dot_vec3_u32(u_input.b.wyw & var_0.wyw, firstLeadingBit(vec3<u32>(u_input.d, 42020u, var_0.x))), ~(~var_0.x)), any(!select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(true, var_1.x, false, false)))));
}

fn func_1() -> f32 {
    let var_0 = true;
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c.x << (1u % 32u), -u_input.a.x, firstTrailingBit(-1i), u_input.a.x), _wgslsmith_add_vec4_i32(abs(min(vec4<i32>(u_input.a.x, u_input.a.x, -30786i, u_input.a.x), vec4<i32>(-37525i, -1i, 25469i, u_input.a.x))), ~(-vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 1i)))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x & u_input.a.x, ~1i, u_input.c.x), global2[_wgslsmith_index_u32(0u, 12u)]), ~(~(u_input.c.x | -39878i)), _wgslsmith_mod_i32(2147483647i, ~u_input.c.x) | 2147483647i, u_input.c.x));
    var var_2 = ~func_5(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(328f, 293f), vec2<f32>(1000f, -571f), vec2<bool>(var_0, true)))), global1[_wgslsmith_index_u32(~1u, 30u)], firstTrailingBit(_wgslsmith_mult_u32(60045u, 1u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1402f, 828f, -256f, -899f)) + vec4<f32>(-654f, 591f, 956f, -915f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(434f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(959f + 825f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-990f * 1041f))), global1[_wgslsmith_index_u32(max(~u_input.b.x << (abs(4294967295u) % 32u), select(u_input.b.x, firstTrailingBit(1u), all(vec4<bool>(false, var_0, true, var_0)))), 30u)]);
    global2 = array<vec3<i32>, 12>();
    var var_3 = !(!(!(!(!vec4<bool>(true, var_0, var_0, true)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1851f, -226f))) * _wgslsmith_f_op_f32(401f * 270f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-509f - 156f) + _wgslsmith_f_op_f32(f32(-1f) * -258f))) + 1193f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2070f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -176f) + 616f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2402f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))) * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1012f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-451f + -1807f), 1686f, true)))) + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(896f - _wgslsmith_f_op_f32(step(-1000f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(507f, 263f))))));
    global0 = abs(select(1u, 1u, true));
    var var_1 = 224f;
    let var_2 = func_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~u_input.b.x), 30u)], Struct_1(var_0.zy), 4948u);
    var var_3 = _wgslsmith_div_i32(1i, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, ~0i), u_input.c.x, u_input.c.x, ~abs(u_input.c.x)), ~1u);
}

