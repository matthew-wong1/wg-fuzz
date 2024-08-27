struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(true, false, true, true, true, true, true, false, true, true, false, true, true, false, false, false, false, false);

var<private> global1: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(-4150i, -39123i), vec2<i32>(i32(-2147483648), -10047i), vec2<i32>(-1i, 2147483647i), vec2<i32>(39523i, -1i), vec2<i32>(2147483647i, -22711i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 16550i), vec2<i32>(17069i, 31005i), vec2<i32>(40094i, 18738i), vec2<i32>(12154i, -32584i), vec2<i32>(-1262i, -1i), vec2<i32>(-1i, 46295i), vec2<i32>(-67726i, 2147483647i), vec2<i32>(3440i, i32(-2147483648)), vec2<i32>(-1i, 13171i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(11017i, -1i), vec2<i32>(63499i, 55963i), vec2<i32>(-19273i, 0i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-2577i, 44642i), vec2<i32>(-14361i, i32(-2147483648)), vec2<i32>(-11969i, -34918i), vec2<i32>(-4164i, i32(-2147483648)), vec2<i32>(2147483647i, -54471i), vec2<i32>(54582i, 20726i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-43162i, 31781i));

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    global2 = Struct_1(-37817i, vec4<bool>(any(global2.b.yxw), !all(vec4<bool>(global0[_wgslsmith_index_u32(19299u, 18u)], true, global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(33544u, 18u)])), true, all(global2.b)));
    var var_0 = false == !(!select(!global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 4294967295u, 1u), vec4<u32>(u_input.b, 42369u, 47047u, 4294967295u)), 18u)], true));
    global2 = Struct_1(arg_0.x, !vec4<bool>(false, true, true, 75919i <= -u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a.x * -2400f) - -1000f) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1.a.a.x, arg_1.a.a.x)))), _wgslsmith_f_op_f32(-arg_2.a.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1083f * arg_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(278f - -817f) + arg_2.a.x)));
    global1 = array<vec2<i32>, 31>();
    return true;
}

fn func_2() -> f32 {
    global1 = array<vec2<i32>, 31>();
    global0 = array<bool, 18>();
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2228f, 633f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1191f, -216f)), false)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-901f, -1360f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-508f, 308f), vec2<f32>(902f, 559f))))))));
    var var_1 = Struct_1(global2.a, !(!vec4<bool>(!global2.b.x, true, global0[_wgslsmith_index_u32(0u, 18u)] && true, true)));
    var var_2 = select(vec2<bool>(func_3(~(-u_input.a), Struct_3(Struct_2(vec4<f32>(626f, var_0.x, var_0.x, -151f))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -721f, -2101f, var_0.x)))), true), !select(select(select(global2.b.xy, global2.b.wy, true), vec2<bool>(true, global2.b.x), select(vec2<bool>(false, global2.b.x), global2.b.zx, vec2<bool>(false, false))), vec2<bool>(var_1.b.x, !global2.b.x), select(vec2<bool>(var_1.b.x, false), select(vec2<bool>(global2.b.x, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true))), select(!vec2<bool>(select(global2.b.x, false, true), u_input.a.x <= global2.a), select(select(select(vec2<bool>(global2.b.x, true), vec2<bool>(global2.b.x, true), var_1.b.yw), var_1.b.xz, all(global2.b)), !select(vec2<bool>(var_1.b.x, global2.b.x), global2.b.zz, vec2<bool>(global2.b.x, false)), !vec2<bool>(var_1.b.x, false)), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(31664u & u_input.b, ~u_input.b), 18u)]));
    return var_0.x;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    global0 = array<bool, 18>();
    let var_0 = vec2<u32>(u_input.b, u_input.b);
    global1 = array<vec2<i32>, 31>();
    var var_1 = vec3<u32>(var_0.x & _wgslsmith_sub_u32(u_input.b, var_0.x), countOneBits(4294967295u), 22u);
    var_1 = vec3<u32>(~abs(var_1.x), 61272u, 45269u) & (vec3<u32>(~var_1.x, 4294967295u, 0u) & firstLeadingBit(~(~vec3<u32>(2992u, var_0.x, var_1.x))));
    return Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(arg_1.a - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_1.a + arg_1.a))))));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    global1 = array<vec2<i32>, 31>();
    let var_0 = arg_1;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(arg_1.a.a))))));
    let var_2 = func_3(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 0i, _wgslsmith_mult_i32(-59475i, -29298i)), vec3<i32>(-u_input.a.x, ~u_input.a.x, ~(-24347i))), ~u_input.a, abs(firstTrailingBit(u_input.a))), Struct_3(func_4(var_0.a.a.x, Struct_2(_wgslsmith_div_vec4_f32(var_0.a.a, vec4<f32>(697f, arg_2.a.x, -1916f, var_0.a.a.x)))).a), arg_1.a);
    var var_3 = arg_1.a.a.xy;
    return func_4(-2358f, func_4(-1736f, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.a)))).a);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: vec3<u32>) -> vec4<f32> {
    let var_0 = func_5(firstLeadingBit(0u), func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * -678f), -1022f)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2295f, 831f, 2053f, -213f))))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-342f, -918f))), Struct_2(vec4<f32>(-366f, _wgslsmith_div_f32(-1132f, -1112f), -772f, _wgslsmith_f_op_f32(f32(-1f) * -1154f)))).a);
    let var_1 = Struct_1(arg_2.x, !select(select(!vec4<bool>(arg_0.x, true, true, global0[_wgslsmith_index_u32(arg_3.x, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_3.x, 18u)], true, false, true), true), !select(global2.b, global2.b, vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 18u)], global0[_wgslsmith_index_u32(49945u, 18u)], global0[_wgslsmith_index_u32(arg_3.x, 18u)], arg_0.x)), vec4<bool>(true, !global0[_wgslsmith_index_u32(arg_3.x, 18u)], true, true)));
    global2 = var_1;
    let var_2 = Struct_3(func_4(_wgslsmith_f_op_f32(func_2()), Struct_2(var_0.a.a)).a);
    global1 = array<vec2<i32>, 31>();
    return _wgslsmith_div_vec4_f32(var_2.a.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(func_4(_wgslsmith_f_op_f32(-var_2.a.a.x), func_5(arg_1.x, var_2, Struct_2(vec4<f32>(var_2.a.a.x, -944f, var_0.a.a.x, var_0.a.a.x))).a).a.a.x, -402f, _wgslsmith_f_op_f32(floor(-1734f)), _wgslsmith_f_op_f32(max(var_0.a.a.x, _wgslsmith_f_op_f32(-216f + 1147f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(true, true, true), select(vec4<u32>(6449u, 1u, u_input.b, 16810u), vec4<u32>(50375u, u_input.b, u_input.b, 4294967295u), false), vec4<i32>(-7663i, -27866i, global2.a, global2.a), min(vec3<u32>(44955u, u_input.b, 13658u), vec3<u32>(9458u, 0u, 4294967295u)))), vec4<f32>(_wgslsmith_f_op_f32(569f + -1114f), _wgslsmith_f_op_f32(f32(-1f) * -2795f), 961f, func_4(1225f, Struct_2(vec4<f32>(1000f, 684f, -1034f, 174f))).a.a.x))));
    global2 = Struct_1(_wgslsmith_mod_i32((i32(-1i) * -3937i) >> (_wgslsmith_add_u32(u_input.b, 0u >> (0u % 32u)) % 32u), u_input.a.x), !vec4<bool>(!global0[_wgslsmith_index_u32(u_input.b & 5243u, 18u)], func_3(~u_input.a, func_4(var_0.x, Struct_2(vec4<f32>(-753f, 922f, -1089f, 981f))), Struct_2(vec4<f32>(-2217f, var_0.x, 109f, var_0.x))), func_3(vec3<i32>(-1749i, 0i, global2.a), func_4(-734f, Struct_2(vec4<f32>(-534f, var_0.x, var_0.x, var_0.x))), Struct_2(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), true));
    let var_1 = u_input.b;
    let var_2 = Struct_1(-(global2.a & reverseBits(2147483647i >> (0u % 32u))), vec4<bool>(func_3(min(u_input.a, vec3<i32>(-14942i, u_input.a.x, u_input.a.x) | u_input.a), func_4(_wgslsmith_f_op_f32(-var_0.x), Struct_2(var_0)), func_4(-562f, func_5(56168u, Struct_3(Struct_2(vec4<f32>(1002f, -2177f, var_0.x, var_0.x))), Struct_2(vec4<f32>(var_0.x, -438f, 608f, 1000f))).a).a), !global2.b.x, true, all(vec2<bool>(true, true))));
    var var_3 = abs(u_input.a.x);
    var var_4 = _wgslsmith_mult_i32(-2147483647i, _wgslsmith_mult_i32(~_wgslsmith_mod_i32(0i, 28913i), _wgslsmith_add_i32(~1i, -max(var_2.a, u_input.a.x))));
    var var_5 = ~(vec4<i32>(_wgslsmith_mult_i32(global2.a, global2.a), -1i, 2147483647i, reverseBits(-43197i)) >> (vec4<u32>(u_input.b, u_input.b << (var_1 % 32u), var_1, abs(0u)) % vec4<u32>(32u))) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(1i), countOneBits(global2.a), -1i), u_input.a), -71346i, _wgslsmith_add_i32(_wgslsmith_div_i32(1i, u_input.a.x) >> ((var_1 | 35121u) % 32u), u_input.a.x), ~(-36247i | -u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, -568i, vec3<i32>(-_wgslsmith_add_i32(var_2.a, var_5.x), var_2.a, ~reverseBits(~(-35183i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_1(select(vec3<bool>(var_2.b.x, global0[_wgslsmith_index_u32(var_1, 18u)], global2.b.x), select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 18u)], false), var_2.b.yxw, var_2.b.wxz), true), _wgslsmith_div_vec4_u32(vec4<u32>(var_1, var_1, 6379u, 19423u), _wgslsmith_mod_vec4_u32(vec4<u32>(32319u, 4294967295u, 1u, u_input.b), vec4<u32>(20104u, 0u, var_1, 4294967295u))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_5.x, -322i, 23164i, u_input.a.x), vec4<i32>(var_5.x, -2159i, 22788i, global2.a), vec4<i32>(2147483647i, 1i, 34857i, var_2.a) ^ vec4<i32>(var_5.x, 38434i, global2.a, var_2.a)), reverseBits(vec3<u32>(12094u, u_input.b, u_input.b)))).zyz - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.yyw, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(159f, var_0.x, var_0.x))), var_2.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.wzy)))));
}

