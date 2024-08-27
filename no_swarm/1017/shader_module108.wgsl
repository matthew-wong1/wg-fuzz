struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(39696i, 1i), true, vec2<f32>(-1000f, -783f), 1u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec2<i32> {
    let var_0 = ~select(~max(abs(vec4<u32>(65723u, 1u, global0.e, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(global0.e, global0.e, 0u, 14794u), vec4<u32>(25490u, u_input.a, global0.e, u_input.b))), vec4<u32>(1u, 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(24885u, 4294967295u, u_input.b), min(vec3<u32>(u_input.a, 53937u, 4294967295u), vec3<u32>(global0.e, u_input.a, 1u))), 44250u), vec4<bool>(true, true, true, true));
    var var_1 = Struct_1(vec2<i32>(-(~_wgslsmith_mult_i32(u_input.c, global0.b.x)), -_wgslsmith_sub_i32(-global0.b.x, 37044i)), global0.b, any(vec2<bool>(false, !(global0.d.x < 612f))), global0.d, abs(firstLeadingBit(0u)));
    global0 = Struct_1(global0.b, vec2<i32>(_wgslsmith_sub_i32(-53513i | var_1.b.x, ~2147483647i), u_input.c), select(true, false, select(any(vec3<bool>(global0.c, global0.c, false)), !var_1.c, any(vec2<bool>(true, true))) || (global0.e <= _wgslsmith_mult_u32(var_1.e, var_0.x))), var_1.d, var_1.e);
    var var_2 = Struct_1(_wgslsmith_mult_vec2_i32(-abs(_wgslsmith_clamp_vec2_i32(global0.b, vec2<i32>(-2147483647i, global0.a.x), vec2<i32>(0i, var_1.b.x))), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(var_1.a.x, u_input.c)), -select(var_1.a, global0.b, vec2<bool>(true, false)))), global0.b, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d)), var_1.d, true)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, global0.d.x)) + vec2<f32>(_wgslsmith_f_op_f32(min(var_1.d.x, var_1.d.x)), _wgslsmith_f_op_f32(global0.d.x * -654f)))), u_input.b);
    var var_3 = abs(max(var_1.b.x ^ 0i, _wgslsmith_sub_i32(-1i, -max(var_1.b.x, -8491i))));
    return ~firstLeadingBit(var_2.b);
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> bool {
    var var_0 = arg_2.d;
    let var_1 = -_wgslsmith_sub_i32(arg_2.b.x, _wgslsmith_clamp_i32(arg_0.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, global0.a.x, 17033i, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, -2147483647i, arg_2.b.x, 0i), vec4<i32>(u_input.c, arg_2.a.x, arg_2.b.x, 0i))), _wgslsmith_add_i32(arg_2.a.x >> (21834u % 32u), -1i)));
    let var_2 = arg_2;
    let var_3 = arg_2;
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(sign(-155f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1576f, arg_2.d.x))))))));
    return global0.c | false;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: u32) -> f32 {
    global0 = Struct_1(_wgslsmith_sub_vec2_i32(global0.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(global0.a.x), 7101i), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.b.x, -2147483647i), -vec2<i32>(u_input.c, u_input.c), vec2<i32>(2147483647i, global0.a.x)), vec2<i32>(-1i) * -global0.b)), ~global0.b, func_4(vec2<i32>(-1i) * -min(global0.a, global0.a), arg_1, Struct_1(min(global0.b, func_3()), _wgslsmith_div_vec2_i32(vec2<i32>(global0.b.x, 2147483647i), vec2<i32>(1i, u_input.c) | global0.b), global0.c, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1063f, global0.d.x))), _wgslsmith_add_u32(8961u, ~arg_2))), global0.d, 48146u);
    let var_0 = vec3<u32>(global0.e, ~0u, firstTrailingBit(arg_2));
    return _wgslsmith_f_op_f32(sign(-2077f));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    global0 = Struct_1(global0.b, -vec2<i32>(-_wgslsmith_clamp_i32(2147483647i, 57016i, 12155i), -22097i), global0.c, _wgslsmith_f_op_vec2_f32(-global0.d), u_input.b);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(~(vec3<u32>(1094u, 67814u, global0.e) ^ vec3<u32>(0u, u_input.a, 0u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1007f * 736f))), 61772u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(560f + -873f)), _wgslsmith_f_op_f32(201f + _wgslsmith_f_op_f32(-global0.d.x)), global0.c)))), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x - global0.d.x))), _wgslsmith_f_op_f32(358f * 430f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * 462f));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_1, arg_1))));
    var var_1 = u_input.c;
    var_1 = ~countOneBits(_wgslsmith_dot_vec4_i32(~select(vec4<i32>(25907i, -36581i, global0.b.x, -37124i), vec4<i32>(global0.b.x, global0.b.x, global0.b.x, u_input.c), true), -min(vec4<i32>(global0.a.x, global0.b.x, 2147483647i, 2147483647i), vec4<i32>(global0.b.x, global0.a.x, 7092i, -2147483647i))));
    return Struct_1(~min(global0.a, global0.a), global0.b, any(select(select(vec2<bool>(global0.c, global0.c), select(vec2<bool>(false, global0.c), vec2<bool>(false, global0.c), global0.c), global0.c), select(select(vec2<bool>(global0.c, false), vec2<bool>(false, global0.c), false), !vec2<bool>(global0.c, true), select(vec2<bool>(true, true), vec2<bool>(false, global0.c), vec2<bool>(global0.c, true))), vec2<bool>(62496u >= global0.e, true))), global0.d, 4294967295u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = func_1(_wgslsmith_mult_u32(_wgslsmith_mult_u32(firstLeadingBit(arg_0.e), 4294967295u), ~(~(~22119u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.d.x, 870f, -423f), vec3<f32>(871f, -548f, global0.d.x))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d.x, 1679f, arg_1.d.x), vec3<f32>(arg_1.d.x, -1000f, arg_0.d.x))))));
    var var_0 = reverseBits(~countOneBits((vec4<u32>(arg_1.e, 1u, arg_0.e, 58918u) & vec4<u32>(1u, 1u, u_input.b, 43870u)) ^ vec4<u32>(arg_0.e, u_input.b, 59143u, 0u)));
    global0 = arg_0;
    let var_1 = func_1(_wgslsmith_add_u32(u_input.a, arg_1.e), vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(abs(arg_1.d.x)), _wgslsmith_f_op_f32(-296f + arg_0.d.x)));
    global0 = var_1;
    return func_1(_wgslsmith_dot_vec3_u32((vec3<u32>(global0.e, arg_1.e, 1u) | var_0.zxw) | firstLeadingBit(vec3<u32>(u_input.b, arg_0.e, 0u)), var_0.zwz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(371f, -635f, 1000f)))));
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = arg_0.c;
    return Struct_1(min(func_1(firstLeadingBit(arg_0.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1150f, arg_0.d.x, -189f) - vec3<f32>(global0.d.x, arg_0.d.x, arg_0.d.x))).a, ~min(~vec2<i32>(arg_0.a.x, u_input.c), _wgslsmith_mult_vec2_i32(vec2<i32>(-26217i, arg_0.a.x), vec2<i32>(2147483647i, arg_0.b.x)))), -vec2<i32>(select(global0.a.x, 0i, arg_1), global0.a.x), global0.c || false, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.d)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, _wgslsmith_f_op_f32(select(global0.d.x, arg_0.d.x, true)))))), ~104110u);
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_1(vec2<i32>(u_input.c, ~countOneBits(u_input.c)), arg_1.b, !func_1(0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(796f, 853f, arg_1.d.x))))).c, vec2<f32>(arg_2, _wgslsmith_f_op_f32(func_5(arg_1, func_5(arg_1, Struct_1(vec2<i32>(-1i, 7216i), global0.a, arg_1.c, global0.d, u_input.a))).d.x - _wgslsmith_f_op_f32(f32(-1f) * -428f))), ~(~1u));
    var_0 = func_6(arg_1, !all(arg_0.yw));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.e, func_5(Struct_1(global0.a, var_0.a, true, global0.d, 1u), arg_1).e), vec2<u32>(~var_0.e, arg_1.e << (u_input.b % 32u))) ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.e, 4294967295u), min(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(global0.e, arg_1.e))) | ~u_input.b), ~countOneBits(firstLeadingBit(51965u)), _wgslsmith_dot_vec2_u32(select(~(vec2<u32>(34500u, 6823u) << (vec2<u32>(0u, global0.e) % vec2<u32>(32u))), ~vec2<u32>(u_input.a, 29366u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), false), ~vec2<u32>(_wgslsmith_mod_u32(arg_1.e, global0.e), 4294967295u)));
    var var_2 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.x) | vec2<u32>(4294967295u, 42586u), vec2<u32>(9787u, u_input.a)) & ~var_1.x, var_0.e << ((26202u << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, arg_1.e, var_1.x, var_0.e), vec4<u32>(77844u, 12054u, global0.e, arg_1.e)) % 32u)) % 32u), arg_1.e, ~global0.e);
    let var_3 = select(!vec4<bool>(select(all(arg_0.xy), true & var_0.c, !arg_0.x), arg_1.c, any(select(arg_0.ww, arg_0.wz, global0.c)), func_1(1u, _wgslsmith_div_vec3_f32(vec3<f32>(global0.d.x, -1087f, 386f), vec3<f32>(arg_2, arg_1.d.x, global0.d.x))).c), select(arg_0, !vec4<bool>(arg_1.c, var_0.d.x < 261f, false || global0.c, all(arg_0.yww)), !vec4<bool>(global0.c, false, arg_1.c, true)), arg_0);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(vec4<bool>(global0.c, true, false, global0.c), func_6(func_5(Struct_1(global0.b, global0.a & global0.a, true, _wgslsmith_f_op_vec2_f32(-global0.d), u_input.a & u_input.b), func_1(abs(22523u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, 486f, global0.d.x)))), u_input.c <= 17890i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(round(-1637f))), func_5(Struct_1(global0.b, global0.a, true, global0.d, 49283u), func_1(global0.e, vec3<f32>(global0.d.x, 135f, 906f))).d.x)))));
    let var_0 = global0.c;
    let var_1 = _wgslsmith_clamp_i32(32564i, _wgslsmith_add_i32(~_wgslsmith_clamp_i32(u_input.c, _wgslsmith_mult_i32(32374i, 0i), global0.a.x), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(u_input.c, global0.b.x, 0i)), select(vec3<i32>(2147483647i, u_input.c, u_input.c), abs(vec3<i32>(global0.b.x, 29737i, -2147483647i)), vec3<bool>(global0.c, true, global0.c)))), 2147483647i);
    let var_2 = func_5(Struct_1(global0.b, vec2<i32>(2147483647i, global0.b.x), func_1(_wgslsmith_sub_u32(31773u, global0.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, global0.d.x, -1000f) - vec3<f32>(-1740f, -202f, 441f)))).c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1041f, -1160f)), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, u_input.a, 0u, global0.e), vec4<u32>(global0.e, u_input.b, 67413u, u_input.b), vec4<bool>(true, true, true, global0.c)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.e, 2822u, 1u, 44509u), vec4<u32>(u_input.a, global0.e, global0.e, global0.e), vec4<u32>(global0.e, u_input.a, global0.e, u_input.a)))), Struct_1(global0.a, global0.a, all(select(!vec3<bool>(true, global0.c, false), select(vec3<bool>(global0.c, true, false), vec3<bool>(global0.c, global0.c, global0.c), vec3<bool>(true, false, global0.c)), select(vec3<bool>(false, global0.c, true), vec3<bool>(global0.c, true, true), vec3<bool>(global0.c, false, true)))), func_7(!select(vec4<bool>(global0.c, global0.c, false, global0.c), vec4<bool>(true, global0.c, global0.c, true), global0.c), func_1(~0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.d.x, global0.d.x))), global0.d.x).d, abs(~u_input.b) >> ((_wgslsmith_mod_u32(10393u, 1u) ^ (14638u ^ u_input.b)) % 32u)));
    global0 = Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(var_2.a.x, -12681i), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(2147483647i, var_1)), var_1)), vec2<i32>(abs(var_2.a.x), var_2.a.x)), ~global0.a, 1i >= (max(var_2.b.x, var_2.b.x) >> (func_5(func_5(Struct_1(vec2<i32>(u_input.c, 19951i), vec2<i32>(-32736i, var_2.b.x), global0.c, vec2<f32>(global0.d.x, 2336f), 31981u), var_2), var_2).e % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1234f, _wgslsmith_f_op_f32(var_2.d.x - _wgslsmith_f_op_f32(abs(var_2.d.x))))), _wgslsmith_clamp_u32(select(33568u, 111166u, all(vec3<bool>(var_2.c, var_2.c, var_2.c))) | func_7(vec4<bool>(true, true, false, false), Struct_1(vec2<i32>(-79551i, var_1), global0.b, false, var_2.d, u_input.a), var_2.d.x).e, 4294967295u, firstLeadingBit(~1u)));
    var var_3 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global0.b.x, func_1(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(global0.e, 70437u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(664f, -1696f, global0.d.x)))).b.x, _wgslsmith_mod_i32(global0.a.x & -2147483647i, 18699i), 53837i), firstLeadingBit(vec2<i32>(var_1, var_2.a.x)), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, firstTrailingBit(global0.e), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 70794u, var_2.e, global0.e), vec4<u32>(var_2.e, u_input.a, global0.e, 21604u))), firstTrailingBit(~vec3<u32>(55567u, global0.e, 13918u) & vec3<u32>(var_2.e, 42681u, u_input.b))));
}

