struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec2<f32>(883f, 337f)), Struct_1(vec4<u32>(69997u, 723u, 1u, 4294967295u), vec2<f32>(144f, 116f)), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 0u), vec2<f32>(-1404f, -1000f)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec2<f32>(997f, -1000f)), Struct_1(vec4<u32>(1314u, 44762u, 0u, 39868u), vec2<f32>(257f, 188f)), Struct_1(vec4<u32>(6353u, 52466u, 63204u, 38722u), vec2<f32>(103f, -1306f)), Struct_1(vec4<u32>(0u, 0u, 2344u, 16763u), vec2<f32>(-1288f, -1000f)), Struct_1(vec4<u32>(1u, 1u, 0u, 4294967295u), vec2<f32>(-1000f, -2076f)), Struct_1(vec4<u32>(1u, 49252u, 78832u, 0u), vec2<f32>(1011f, 119f)), Struct_1(vec4<u32>(6212u, 4294967295u, 3348u, 48636u), vec2<f32>(-732f, 177f)), Struct_1(vec4<u32>(4294967295u, 6602u, 44893u, 53254u), vec2<f32>(557f, 1217f)), Struct_1(vec4<u32>(4294967295u, 17743u, 0u, 0u), vec2<f32>(261f, -387f)), Struct_1(vec4<u32>(79442u, 1523u, 0u, 9055u), vec2<f32>(1009f, 1061f)), Struct_1(vec4<u32>(0u, 51303u, 0u, 4294967295u), vec2<f32>(-987f, 938f)), Struct_1(vec4<u32>(4294967295u, 1u, 54751u, 1u), vec2<f32>(607f, -500f)), Struct_1(vec4<u32>(0u, 1u, 0u, 25151u), vec2<f32>(1398f, 1996f)), Struct_1(vec4<u32>(4294967295u, 51261u, 1u, 1512u), vec2<f32>(-1380f, -1002f)), Struct_1(vec4<u32>(13038u, 21378u, 0u, 1u), vec2<f32>(-146f, -246f)));

var<private> global1: array<vec2<bool>, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec2<u32>) -> vec2<bool> {
    global1 = array<vec2<bool>, 15>();
    let var_0 = ~(~select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 86879u, arg_2.x) | vec3<u32>(u_input.a.x, u_input.b, arg_2.x), u_input.a.yww), vec3<u32>(~arg_2.x, u_input.a.x, arg_2.x), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true))));
    global0 = array<Struct_1, 18>();
    global1 = array<vec2<bool>, 15>();
    global1 = array<vec2<bool>, 15>();
    return !(!vec2<bool>(false, !any(vec4<bool>(false, true, true, true))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global0 = array<Struct_1, 18>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 18u)];
    var_0 = Struct_1(vec4<u32>(1u, 4294967295u, 1u, _wgslsmith_clamp_u32(4294967295u, var_0.a.x, ~var_0.a.x)) ^ vec4<u32>(firstTrailingBit(u_input.b), 4294967295u, ~(~var_0.a.x), _wgslsmith_div_u32(27020u, 4294967295u) >> (var_0.a.x % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-1251f + -977f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(-1906f, var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1437f, var_0.b.x), arg_0.zz))), func_3(-3100i, var_0.b.x, ~vec2<u32>(21033u, 86781u))))));
    let var_1 = reverseBits(~_wgslsmith_mod_u32(~18479u, _wgslsmith_div_u32(38779u, 1u)));
    let var_2 = _wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, var_0.a.x))), var_0.a.zy << (~var_0.a.yy % vec2<u32>(32u))), vec2<u32>(0u, var_1));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.a.www, ~u_input.a.wxz), 18u)];
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = vec2<i32>(reverseBits(-2155i), min(-75901i, _wgslsmith_sub_i32(~select(1i, -1i, false), _wgslsmith_div_i32(select(6057i, -19967i, true), countOneBits(-7522i)))));
    global0 = array<Struct_1, 18>();
    var var_1 = ~(~4294967295u);
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(max(2147483647i, -var_0.x), 0i, var_0.x), vec3<i32>(min(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(-1i, var_0.x))), i32(-1i) * -var_0.x), -9029i, -45171i));
    var var_3 = vec4<i32>(var_0.x, 0i, -19651i >> (arg_1.a.x % 32u), -1i | var_2.x);
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<Struct_1, 18>();
    global1 = array<vec2<bool>, 15>();
    global1 = array<vec2<bool>, 15>();
    global0 = array<Struct_1, 18>();
    var var_0 = vec3<bool>(!(!func_4(u_input.b >> (arg_1.a.x % 32u), func_2(vec3<f32>(531f, arg_0.b.x, -350f)), ~64749u)), !select(39043u <= u_input.b, func_3(14222i, arg_1.b.x, arg_1.a.yy).x, true) && any(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true))), all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))) | true);
    return select(!vec4<bool>(true, true, func_3(abs(4043i), arg_0.b.x, vec2<u32>(arg_1.a.x, arg_0.a.x)).x, !all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), select(!vec4<bool>(true, arg_0.b.x <= 1408f, true, 0u == arg_1.a.x), !(!vec4<bool>(var_0.x, var_0.x, false, true)), false), select(select(select(vec4<bool>(var_0.x, true, false, var_0.x), select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(true, true, false, var_0.x)), select(vec4<bool>(var_0.x, var_0.x, true, false), select(vec4<bool>(var_0.x, false, false, true), vec4<bool>(false, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true)), select(true, true, false)), vec4<bool>(true, true, true, true)), !select(!vec4<bool>(false, true, var_0.x, false), !vec4<bool>(false, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, true)), !select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x), !vec4<bool>(var_0.x, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 1u, ~select(u_input.a.x, u_input.b, false), ~var_0.x << ((var_0.x << (var_0.x % 32u)) % 32u)), select(~(u_input.a << (vec4<u32>(var_0.x, 38551u, 0u, 71529u) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.x, u_input.a.x, 4294967295u), vec4<u32>(0u, u_input.b, u_input.a.x, 2257u)), any(func_1(global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(44446u, 18u)])))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-298f, _wgslsmith_f_op_f32(f32(-1f) * -668f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2741f, 211f) + vec2<f32>(172f, -894f)))))));
    let var_2 = 25220i;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b.x, var_1.b.x, _wgslsmith_sub_u32(u_input.b, 38429u) > 12401u)) + 598f), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -497f, var_1.b.x))).b.x, func_3(var_2, 157f, _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(var_1.a.zy, vec2<u32>(16164u, 1u)), ~u_input.a.zx)).x));
    global1 = array<vec2<bool>, 15>();
    var var_4 = Struct_1(vec4<u32>(~u_input.b, max(1u, ~(var_1.a.x ^ 28035u)), 0u, 1u & var_0.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(2236f * var_1.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, var_1.b.x) - var_1.b)), var_0.x <= 1u)), vec2<f32>(689f, _wgslsmith_f_op_f32(733f + _wgslsmith_div_f32(var_1.b.x, 1081f)))));
    var var_5 = vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_4.b.x), var_4.b.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.x)), any(func_1(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_4.b.x, -912f))), Struct_1(_wgslsmith_clamp_vec4_u32(var_4.a, var_4.a, vec4<u32>(var_0.x, var_1.a.x, 1u, 4294967295u)), var_1.b)).wwy), ~var_1.a.x >= ~(~var_4.a.x), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_2, var_2, var_2, 37790i), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-360f, var_4.b.x, 1000f))) * vec3<f32>(var_1.b.x, 1387f, var_4.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b.x, 1035f, _wgslsmith_f_op_f32(-var_1.b.x))))), vec4<f32>(-1023f, _wgslsmith_f_op_f32(select(var_1.b.x, 316f, func_4(~var_4.a.x, global0[_wgslsmith_index_u32(2120u, 18u)], 18306u >> (var_1.a.x % 32u)))), -293f, var_1.b.x));
}

