struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32) -> vec3<i32> {
    var var_0 = Struct_1(false);
    let var_1 = Struct_1(false);
    global0 = firstLeadingBit(countOneBits(max(u_input.d, vec4<i32>(-2147483647i, global0.x, 1i, u_input.d.x))) >> (vec4<u32>(u_input.c.x, ~u_input.c.x, abs(71186u), u_input.a.x | u_input.a.x) % vec4<u32>(32u))) ^ -(vec4<i32>(-1i) * -u_input.d);
    var var_2 = vec4<bool>(!(!any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true))), var_0.a, !var_0.a, 1i == global0.x);
    let var_3 = ~reverseBits(_wgslsmith_mod_vec4_u32(select(reverseBits(vec4<u32>(0u, u_input.a.x, 37313u, 50812u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 38420u), vec4<u32>(10266u, 14348u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.c.x)), all(vec4<bool>(var_0.a, var_0.a, var_0.a, false))), ~vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, 0u)));
    return _wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, ~(-21919i << (u_input.c.x % 32u)), global0.x >> (~var_3.x % 32u)), ~(global0.wxz | u_input.d.yyw));
}

fn func_2() -> Struct_1 {
    let var_0 = abs(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1469f, 375f, 369f) + vec3<f32>(617f, 668f, 385f))) - vec3<f32>(_wgslsmith_f_op_f32(904f - -1115f), 417f, -1889f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1228f, _wgslsmith_f_op_f32(360f - -298f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -103f) - -432f))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-103f, -966f))))));
    let var_2 = Struct_1(false);
    var var_3 = vec4<bool>(true, select(true, _wgslsmith_f_op_f32(ceil(-1964f)) >= _wgslsmith_f_op_f32(f32(-1f) * -275f), any(select(select(vec3<bool>(var_2.a, true, true), vec3<bool>(true, var_2.a, false), true), vec3<bool>(var_2.a, true, var_2.a), any(vec4<bool>(var_2.a, true, false, false))))), var_2.a, !all(select(select(vec2<bool>(false, false), vec2<bool>(var_2.a, false), vec2<bool>(var_2.a, var_2.a)), !vec2<bool>(var_2.a, false), var_2.a)));
    var var_4 = ~vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, firstLeadingBit(u_input.c.x)), 44980u, 0u & u_input.c.x, min(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u)), u_input.a.x));
    return var_2;
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = vec3<f32>(1032f, _wgslsmith_div_f32(-162f, _wgslsmith_f_op_f32(ceil(-762f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-850f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-430f - -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1565f)))))));
    return vec3<u32>(~arg_0.x, 73092u, u_input.c.x);
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    global0 = -abs(~u_input.d);
    var var_0 = arg_0 & ~func_4(vec2<u32>(_wgslsmith_sub_u32(arg_0.x, 1u), _wgslsmith_div_u32(26890u, 33716u)), true, Struct_1(true), func_2());
    let var_1 = firstLeadingBit(~37007u | _wgslsmith_mult_u32(abs(~u_input.a.x), u_input.c.x));
    var_0 = firstTrailingBit(~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.x, arg_0.x), u_input.a.x & u_input.c.x), _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, var_0.x, 4294967295u), vec4<u32>(arg_0.x, arg_0.x, var_1, var_0.x))), 25520u));
    var var_2 = arg_0.zy;
    return Struct_1(!all(vec2<bool>(true, true)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = vec4<i32>(-1i) * -(u_input.d & vec4<i32>(1i, -u_input.d.x, -11545i, firstTrailingBit(global0.x)));
    let var_0 = !vec4<bool>(func_2().a, true, !(arg_1.a || !arg_2.a), arg_1.a);
    var var_1 = select(~firstLeadingBit(reverseBits(u_input.a)), select(~_wgslsmith_clamp_vec3_u32(~u_input.c, _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(u_input.a.x, 1u, 29049u)), u_input.a & vec3<u32>(46000u, u_input.c.x, u_input.c.x)), vec3<u32>(52935u, ~97370u ^ (1u | u_input.c.x), abs(min(u_input.a.x, u_input.c.x))), var_0.zzy), (u_input.a.x < 8320u) & arg_2.a);
    var var_2 = 1193f;
    var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, 1u), (vec2<u32>(var_1.x, 21834u) >> (var_1.xx % vec2<u32>(32u))) << (var_1.yz % vec2<u32>(32u))) | 1u, countOneBits(firstLeadingBit(u_input.c.x)), ~select(var_1.x, 1u, var_0.x));
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_1(vec3<u32>((29707u >> ((u_input.c.x << (4294967295u % 32u)) % 32u)) ^ u_input.c.x, ~(~(~arg_1.x)), u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1505f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * -190f)), _wgslsmith_f_op_f32(f32(-1f) * -183f)));
    let var_2 = arg_2;
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-756f)) - 1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-672f, -1263f)), 1f)), 109f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1302f, -1000f, -120f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-192f, 1000f, 135f) * vec3<f32>(-687f, 2287f, 331f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -510f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(872f - -1444f) * 1221f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-755f + -2209f))), select(vec3<bool>(all(vec2<bool>(true, var_0.a)), arg_3.a, select(false, false, false)), vec3<bool>(true, all(vec4<bool>(arg_0.a, arg_3.a, arg_0.a, false)), true), vec3<bool>(var_2.a, var_2.a, all(vec4<bool>(true, false, false, false)))))));
    global0 = vec4<i32>(firstLeadingBit(~(~global0.x)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, -_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(2147483647i, u_input.b.x, u_input.d.x, global0.x))), u_input.d.x), -56210i, 2828i);
    return func_1(select(~(~arg_1.yxw), u_input.a, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(4294967295u != u_input.c.x);
    let var_1 = func_6(Struct_1(false), reverseBits(vec4<u32>(~max(u_input.a.x, 43437u), 67868u, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), ~4294967295u)), func_5(func_1(_wgslsmith_mod_vec3_u32(~u_input.a, vec3<u32>(47127u, 27871u, u_input.a.x))), Struct_1(var_0.a), func_2()), Struct_1(any(!vec2<bool>(var_0.a, var_0.a)) & true));
    let var_2 = _wgslsmith_mult_vec4_u32(abs(vec4<u32>(reverseBits(6913u & u_input.c.x), u_input.a.x, abs(abs(4294967295u)), 3118u)), min(vec4<u32>(~u_input.a.x, abs(12173u), u_input.c.x, u_input.a.x) | (select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(21583u, u_input.a.x, 75736u, 21568u), false) ^ vec4<u32>(4294967295u, 10846u, u_input.c.x, 1u)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(22500u, 4294967295u, 1u, u_input.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(2617u, u_input.c.x, u_input.a.x, u_input.c.x), vec4<u32>(u_input.a.x, u_input.c.x, 50143u, 52540u))))));
    var_0 = func_5(func_6(func_2(), _wgslsmith_add_vec4_u32(~(~var_2), firstLeadingBit(~var_2)), func_6(Struct_1(true), var_2 ^ var_2, func_5(Struct_1(false), func_1(vec3<u32>(var_2.x, 14409u, var_2.x)), Struct_1(false)), func_2()), Struct_1(var_0.a)), var_1, var_1);
    let var_3 = vec2<u32>(82682u, _wgslsmith_dot_vec4_u32(var_2 ^ _wgslsmith_div_vec4_u32(vec4<u32>(42197u, 0u, 20307u, var_2.x) >> (var_2 % vec4<u32>(32u)), ~vec4<u32>(32530u, 94498u, 26636u, var_2.x)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), var_2.zy), _wgslsmith_mult_u32(u_input.c.x, var_2.x), ~4294967295u), firstTrailingBit(~var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2147483647i, 1i, countOneBits(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d)), -36140i >> (_wgslsmith_mod_u32(var_2.x, var_3.x) % 32u)) << (select(~select(vec4<u32>(u_input.c.x, 18803u, var_2.x, 30205u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, 1u), false), abs(vec4<u32>(0u, var_2.x, var_3.x, 33267u)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, var_1.a, true), vec4<bool>(var_0.a, false, var_0.a, var_0.a)), !vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(true, var_1.a, var_1.a, var_0.a))) % vec4<u32>(32u)));
}

