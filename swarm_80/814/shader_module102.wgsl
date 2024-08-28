struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    var var_0 = Struct_4(Struct_1(490f), Struct_3(~vec3<u32>(17766u, u_input.b.x, _wgslsmith_mult_u32(34825u, u_input.b.x))), Struct_1(global0.a));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1249f)) + global0.a)) - _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.a)))));
    var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -923f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(969f, var_0.c.a)) + _wgslsmith_f_op_f32(floor(var_0.c.a)))))), Struct_3(var_0.b.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(select(var_0.c.a, var_0.c.a, false))))));
    var_0 = Struct_4(Struct_1(1151f), var_0.b, Struct_1(_wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + 1963f))))));
    var var_2 = any(!vec4<bool>(true, u_input.a == 1i, !any(vec3<bool>(true, true, false)), false));
    return (true && !(1u <= var_0.b.a.x)) || (0u == u_input.b.x);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> bool {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, -606f) * global0.a));
    var var_0 = Struct_3(~(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 53468u), vec3<u32>(u_input.b.x, 0u, 37632u)) << (vec3<u32>(34865u, 1u, u_input.b.x) % vec3<u32>(32u))) & ~(~vec3<u32>(u_input.b.x, u_input.b.x, 74933u)));
    let var_1 = ~vec4<u32>(~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 4795u, u_input.b.x, select(~var_0.a.x, u_input.b.x, func_3(arg_2))) << (vec4<u32>(u_input.b.x, abs(_wgslsmith_div_u32(41984u, var_0.a.x)), ~57672u, ~4294967295u) % vec4<u32>(32u));
    var_0 = Struct_3(var_0.a);
    global0 = Struct_1(_wgslsmith_f_op_f32(ceil(global0.a)));
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = abs(firstLeadingBit(vec4<u32>(~_wgslsmith_sub_u32(u_input.b.x, 52282u), _wgslsmith_mod_u32(abs(u_input.b.x), _wgslsmith_mult_u32(1u, u_input.b.x)), 20365u, u_input.b.x)));
    let var_1 = select(!vec4<bool>(arg_2, false, arg_0 <= _wgslsmith_f_op_f32(min(arg_3.a.a, 597f)), any(vec2<bool>(false, arg_2))), select(!(!select(vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(false, arg_2, arg_2, false))), vec4<bool>(any(select(vec3<bool>(true, arg_2, true), vec3<bool>(true, arg_2, true), vec3<bool>(false, arg_2, true))), arg_2, arg_2, (true | arg_2) == (var_0.x < u_input.b.x)), select(arg_2, arg_2, 37492u < u_input.b.x)), !vec4<bool>(false, func_2(true, _wgslsmith_f_op_f32(step(-892f, arg_3.a.a)), firstLeadingBit(vec2<i32>(u_input.a, u_input.d))), arg_2, false));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.a * global0.a))))) + global0.a));
    global0 = Struct_1(_wgslsmith_f_op_f32(-arg_3.a.a));
    global0 = Struct_1(arg_1.a);
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-469f)) * -540f))), arg_3.a.a, 252f)));
}

fn func_1(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.a, global0.a, 1813f) - vec3<f32>(-806f, global0.a, global0.a))) + _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(-global0.a), Struct_1(1591f), func_2(false, arg_0.a.a, vec2<i32>(-63788i, u_input.a)), Struct_2(arg_0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, global0.a, -708f)))), select(vec3<bool>(global0.a <= 100f, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), true)))));
    var var_1 = ~firstTrailingBit(~min(vec3<u32>(u_input.b.x, 0u, u_input.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 36421u, 16788u), vec3<u32>(u_input.b.x, u_input.b.x, 6555u))));
    var var_2 = vec2<i32>(-_wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(abs(-31632i), -10826i), u_input.c), max(u_input.a, -abs(27586i) | u_input.c));
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_f32(ceil(1f))), Struct_3(~(~(~vec3<u32>(1u, 3303u, u_input.b.x)))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(250f, -1914f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) + 179f), !func_3(vec2<i32>(-15754i, u_input.a))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(823f)), _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -299f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-815f + -434f), select(false, false, false)))) * -936f));
    return vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 1u, var_3.b.a.x, var_1.x), vec4<u32>(var_3.b.a.x, u_input.b.x, var_1.x, var_3.b.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 6500u, 13635u), vec4<u32>(var_3.b.a.x, 1u, 34772u, var_3.b.a.x), vec4<u32>(4294967295u, 90155u, 0u, 0u))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 4294967295u, var_3.b.a.x, var_1.x), vec4<u32>(var_1.x, 14798u, 14915u, 20437u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_3.b.a.x, u_input.b.x, var_1.x, 24728u), vec4<u32>(var_3.b.a.x, 31141u, var_1.x, var_3.b.a.x)))), countOneBits(_wgslsmith_mult_u32(var_1.x, var_1.x))), select(_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(var_3.b.a.x, 1u)) ^ _wgslsmith_mult_u32(~var_1.x, 0u), 27505u, true), _wgslsmith_add_u32(_wgslsmith_add_u32(~u_input.b.x, 3180u) << (max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, var_1.x, 1u), vec4<u32>(49604u, 6209u, var_1.x, var_3.b.a.x))) % 32u), countOneBits(select(_wgslsmith_clamp_u32(u_input.b.x, var_1.x, u_input.b.x), ~u_input.b.x, true))));
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<u32>) -> f32 {
    let var_0 = -1348f != global0.a;
    global0 = Struct_1(global0.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-2114f + _wgslsmith_f_op_f32(f32(-1f) * -187f)), 124f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_0.x, 665f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 1079f, 312f, arg_0.x), vec4<f32>(arg_0.x, global0.a, 869f, 529f), false)))))));
    var var_2 = abs(vec4<u32>(~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), arg_2.x, firstTrailingBit(u_input.b.x), max(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.x, 1u, 67195u), arg_2 & arg_2), ~1u)));
    var var_3 = false;
    return _wgslsmith_f_op_f32(ceil(arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-609f);
    global0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 208f, global0.a)), true, func_1(Struct_2(Struct_1(global0.a))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)) % vec3<u32>(32u)))))));
    var var_0 = Struct_3(~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), ~vec3<u32>(u_input.b.x, 43831u, 0u)) >> (vec3<u32>(u_input.b.x << (reverseBits(u_input.b.x) % 32u), min(23705u, ~u_input.b.x), _wgslsmith_div_u32(u_input.b.x >> (u_input.b.x % 32u), ~u_input.b.x)) % vec3<u32>(32u)));
    var var_1 = -(~_wgslsmith_div_i32(abs(u_input.d), u_input.d) & u_input.d);
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(f32(-1f) * -2498f))))), Struct_3(select(var_0.a, var_0.a, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(step(-846f, -852f))))))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global0.a)))))));
    var var_4 = Struct_4(var_2.a, var_2.b, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a.a, 643f)))))));
    var var_5 = ~select(~min(max(vec4<u32>(var_0.a.x, var_0.a.x, u_input.b.x, u_input.b.x), vec4<u32>(0u, 0u, var_4.b.a.x, 30117u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 41139u, 4294967295u, 4294967295u), vec4<u32>(6094u, var_2.b.a.x, 37906u, 4294967295u), vec4<u32>(var_4.b.a.x, var_2.b.a.x, u_input.b.x, var_0.a.x))), vec4<u32>((var_4.b.a.x & var_2.b.a.x) | ~0u, 20482u, _wgslsmith_mod_u32(10136u, var_2.b.a.x) << (~0u % 32u), (0u << (var_2.b.a.x % 32u)) & ~28243u), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(countOneBits(countOneBits(vec2<i32>(-71497i, u_input.c)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, -13877i), vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.d, -6320i))), ~_wgslsmith_sub_vec2_i32(-vec2<i32>(37773i, 24377i), firstLeadingBit(vec2<i32>(u_input.a, u_input.d)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(658f, -615f)) + _wgslsmith_div_vec2_f32(vec2<f32>(var_2.a.a, global0.a), vec2<f32>(global0.a, 1010f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_4.c.a, var_3.a.a), _wgslsmith_f_op_vec3_f32(func_4(var_2.a.a, var_2.a, false, Struct_2(var_2.a))).yx)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a.a, var_3.a.a))))), _wgslsmith_mod_vec4_i32(min(-vec4<i32>(-1i, -29945i, u_input.c, -1i) << (~vec4<u32>(1u, 4294967295u, var_5.x, 25128u) % vec4<u32>(32u)), ~vec4<i32>(u_input.a, -7869i, u_input.d, 2147483647i) >> (~vec4<u32>(83789u, 0u, var_0.a.x, var_0.a.x) % vec4<u32>(32u))), vec4<i32>(-29027i, 40844i, firstLeadingBit(-u_input.a), ~u_input.c)));
}

