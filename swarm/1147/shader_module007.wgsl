struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(0u, 0u, vec3<f32>(-1638f, -3150f, 1314f), vec4<i32>(1i, 0i, 1i, 21767i)), i32(-2147483648));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_div_u32(u_input.d, ~(1u & _wgslsmith_sub_u32(global0.a.a, global0.a.a))), _wgslsmith_mult_u32(abs(~(~arg_1.d)), 0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(1000f, arg_1.a.a.c.x)), _wgslsmith_f_op_f32(-799f * global0.a.c.x), 1f) - vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.c.x), _wgslsmith_f_op_f32(global0.a.c.x * arg_1.a.a.c.x), global0.a.c.x)) * arg_1.a.a.c), _wgslsmith_clamp_vec4_i32(max(arg_1.a.a.d, vec4<i32>(~0i, u_input.c.x, -2147483647i, ~arg_1.a.a.d.x)), vec4<i32>(arg_0.c, firstTrailingBit(~global0.b), global0.b, 42152i), vec4<i32>(_wgslsmith_dot_vec2_i32(arg_1.a.a.d.wz, vec2<i32>(26845i, -1623i)), -36519i, 1i, reverseBits(0i)) >> (~(~vec4<u32>(global0.a.a, arg_0.d, arg_0.d, 48229u)) % vec4<u32>(32u))));
    var_0 = arg_1.a.a;
    let var_1 = arg_0;
    global0 = arg_1.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(767f, arg_0.a.a.c.x, global0.a.c.x, -1493f))) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.c.x, 1403f, 430f, var_0.c.x), vec4<f32>(arg_1.a.a.c.x, var_0.c.x, arg_0.a.a.c.x, arg_0.a.a.c.x))))));
    return !vec4<bool>(!arg_1.b.x, arg_1.b.x, arg_0.b.x | arg_0.b.x, true);
}

fn func_2(arg_0: u32, arg_1: Struct_4) -> Struct_4 {
    global0 = arg_1.a;
    var var_0 = arg_1.b.wzy;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(arg_1.a.a.c.x + _wgslsmith_f_op_f32(1000f - -116f)), var_0.zy, arg_1.b.x, ~20203u, global0.a);
    global0 = arg_1.a;
    let var_2 = -1288f;
    return Struct_4(arg_1.a, select(arg_1.b, func_3(arg_1, Struct_4(Struct_2(arg_1.a.a, arg_1.c), select(arg_1.b, vec4<bool>(true, var_1.c, var_0.x, true), var_0.x), var_1.e.d.x & global0.a.d.x, _wgslsmith_mult_u32(27923u, var_1.e.a))), var_1.e.a > ~arg_0), -2147483647i, _wgslsmith_dot_vec3_u32(~max(~vec3<u32>(global0.a.b, var_1.e.a, 0u), ~vec3<u32>(u_input.d, var_1.e.a, arg_1.d)), countOneBits(countOneBits(vec3<u32>(4983u, 50518u, u_input.d) >> (vec3<u32>(global0.a.a, arg_1.a.a.b, global0.a.a) % vec3<u32>(32u))))));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = ~(~global0.a.b & abs(u_input.d));
    var_0 = 70951u;
    global0 = Struct_2(func_2(reverseBits(select(arg_1.a.a.b, 1u, arg_3.x)), func_2(0u, func_2(abs(arg_1.d), Struct_4(arg_1.a, arg_1.b, -11319i, 55751u)))).a.a, -2147483647i);
    return global0.a;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = true;
    var var_1 = func_2(_wgslsmith_clamp_u32(73050u << (func_2(u_input.d, Struct_4(arg_0, arg_3, -2147483647i, global0.a.a)).d % 32u), _wgslsmith_sub_u32(76821u, min(35932u >> (arg_2 % 32u), max(17362u, 27327u))), ~_wgslsmith_mult_u32(0u, 20165u)), Struct_4(func_2(54231u, Struct_4(Struct_2(arg_0.a, -70137i), arg_3, arg_0.b ^ 56842i, ~49294u)).a, arg_3, -firstLeadingBit(global0.b), _wgslsmith_add_u32(abs(select(global0.a.a, 4294967295u, true)), 39559u))).a.a.d.wx;
    var_1 = ~(_wgslsmith_add_vec2_i32(~global0.a.d.wx, vec2<i32>(0i, -2147483647i) << (vec2<u32>(u_input.d, arg_0.a.b) % vec2<u32>(32u))) | (vec2<i32>(29031i, 1i) << (abs(vec2<u32>(arg_0.a.a, 14898u)) % vec2<u32>(32u)))) & select(min(~firstLeadingBit(u_input.a.zy), -max(vec2<i32>(-15012i, 0i), vec2<i32>(-16921i, 35591i))), (~global0.a.d.zw >> ((vec2<u32>(4294967295u, arg_0.a.a) ^ vec2<u32>(15568u, global0.a.a)) % vec2<u32>(32u))) & min(~arg_0.a.d.xx, vec2<i32>(32507i, var_1.x)), vec2<bool>(all(arg_3), true));
    var var_2 = func_2(~(~arg_2), Struct_4(Struct_2(func_4(-var_1.x, func_2(0u, Struct_4(Struct_2(Struct_1(global0.a.b, arg_0.a.b, arg_0.a.c, vec4<i32>(2147483647i, global0.a.d.x, -2147483647i, -1i)), u_input.c.x), arg_3, 57393i, 1u)), ~vec2<u32>(global0.a.a, 857u), arg_3.zyz), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), arg_0.a.d.yy))), vec4<bool>(firstTrailingBit(arg_0.a.d.x) >= var_1.x, arg_1, true, true && (arg_3.x & true)), u_input.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(14212u, arg_0.a.a, arg_0.a.b), vec3<u32>(u_input.d, 0u, 4294967295u)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(99955u, global0.a.b, 7085u), vec3<u32>(global0.a.b, 1u, global0.a.b)) % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.a, arg_2, arg_2), vec3<u32>(21128u, u_input.d, arg_2))))));
    let var_3 = var_2.a.a;
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1645f)), !(!func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.a, 4294967295u, arg_2, 39751u), vec4<u32>(7226u, 42746u, var_2.a.a.a, arg_0.a.b)), func_2(0u, Struct_4(Struct_2(Struct_1(global0.a.b, arg_2, vec3<f32>(var_3.c.x, 393f, var_2.a.a.c.x), var_2.a.a.d), arg_0.b), vec4<bool>(arg_1, false, true, false), var_2.a.b, var_3.a))).b.zw), var_2.b.x, ~arg_0.a.a << (arg_0.a.a % 32u), var_2.a.a);
}

fn func_1(arg_0: bool, arg_1: u32) -> bool {
    let var_0 = func_5(Struct_2(func_4(2147483647i, func_2(arg_1, Struct_4(Struct_2(global0.a, global0.a.d.x), vec4<bool>(false, arg_0, arg_0, true), global0.b, 29499u)), vec2<u32>(_wgslsmith_sub_u32(arg_1, u_input.d), global0.a.a), func_2(~1u, Struct_4(Struct_2(Struct_1(17983u, global0.a.a, vec3<f32>(310f, global0.a.c.x, 1846f), vec4<i32>(u_input.b, 0i, -2147483647i, -10742i)), global0.a.d.x), vec4<bool>(arg_0, true, true, true), -2147483647i, 72832u)).b.yyw), -2147483647i), true, ~(u_input.d & _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.d, 3201u), ~40382u, ~19951u)), vec4<bool>(arg_0, !arg_0, arg_0 | true, _wgslsmith_f_op_f32(-global0.a.c.x) > global0.a.c.x));
    var var_1 = func_2(~global0.a.b, Struct_4(func_2(~16199u >> (arg_1 % 32u), func_2(0u, Struct_4(Struct_2(Struct_1(var_0.e.b, global0.a.a, vec3<f32>(global0.a.c.x, 1436f, global0.a.c.x), var_0.e.d), var_0.e.d.x), vec4<bool>(true, arg_0, arg_0, arg_0), -5882i, u_input.d))).a, vec4<bool>((i32(-1i) * -2147483647i) < global0.a.d.x, 12898i >= global0.a.d.x, any(func_2(u_input.d, Struct_4(Struct_2(Struct_1(u_input.d, arg_1, var_0.e.c, vec4<i32>(2147483647i, var_0.e.d.x, -2147483647i, var_0.e.d.x)), global0.a.d.x), vec4<bool>(var_0.c, var_0.c, var_0.c, true), var_0.e.d.x, arg_1)).b), any(func_3(Struct_4(Struct_2(Struct_1(arg_1, 5128u, var_0.e.c, vec4<i32>(-2415i, global0.a.d.x, global0.b, global0.b)), 1i), vec4<bool>(arg_0, true, var_0.b.x, true), var_0.e.d.x, 79222u), Struct_4(Struct_2(global0.a, var_0.e.d.x), vec4<bool>(true, true, false, arg_0), 50592i, 871u)).xy)), -19521i, ~(~44320u)));
    var var_2 = ~_wgslsmith_div_u32(abs(u_input.d), _wgslsmith_mult_u32(reverseBits(arg_1), var_0.e.a)) & ~reverseBits(27127u);
    let var_3 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, var_1.d, 1u, var_1.d), vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(17329u), global0.a.b, ~4294967295u), ~(~33337u), 61240u, 86375u)), ~(~_wgslsmith_sub_u32(4294967295u, ~26013u)), ~(~_wgslsmith_div_u32(u_input.d, 51286u)) & (var_1.d << (func_5(Struct_2(global0.a, 1i), var_0.b.x, ~arg_1, vec4<bool>(var_1.b.x, false, true, var_0.b.x)).d % 32u)), ~(~((9013u << (arg_1 % 32u)) & 4294967295u)));
    let var_4 = func_2(~_wgslsmith_add_u32(64917u, u_input.d), func_2(max(func_4(var_1.a.b << (35611u % 32u), Struct_4(Struct_2(Struct_1(0u, global0.a.a, vec3<f32>(1128f, 1857f, global0.a.c.x), var_0.e.d), 18198i), var_1.b, 959i, var_1.a.a.b), var_3.yz, vec3<bool>(arg_0, false, false)).a, 0u), func_2(u_input.d, func_2(57242u, func_2(1u, Struct_4(var_1.a, var_1.b, var_1.c, var_0.e.b))))));
    return !(!(func_2(0u, func_2(u_input.d, var_4)).a.a.b > 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_u32(select(~_wgslsmith_mult_vec4_u32(vec4<u32>(27474u, 1u, global0.a.a, 51265u), ~vec4<u32>(u_input.d, global0.a.b, u_input.d, 58005u)), _wgslsmith_mult_vec4_u32((vec4<u32>(1u, 18415u, 1u, u_input.d) | vec4<u32>(global0.a.b, global0.a.a, u_input.d, u_input.d)) << (vec4<u32>(u_input.d, 33241u, u_input.d, 170661u) % vec4<u32>(32u)), reverseBits(vec4<u32>(27943u, u_input.d, u_input.d, 24533u))), vec4<bool>(func_1(any(vec2<bool>(true, true)), _wgslsmith_mult_u32(u_input.d, 6894u)), false, func_2(~global0.a.a, Struct_4(Struct_2(Struct_1(1u, 40216u, global0.a.c, vec4<i32>(global0.a.d.x, 1i, -1i, 13120i)), u_input.c.x), vec4<bool>(false, false, true, false), -12285i, global0.a.b)).b.x, _wgslsmith_f_op_f32(global0.a.c.x - -194f) <= global0.a.c.x)), ~vec4<u32>(1u, _wgslsmith_div_u32(global0.a.a, 1u) & abs(4294967295u), 16595u, ~global0.a.b));
    var_0 = (firstTrailingBit(~vec4<u32>(u_input.d, 1u, 75465u, 9301u) >> (~vec4<u32>(u_input.d, 0u, 1u, u_input.d) % vec4<u32>(32u))) << (~(~(vec4<u32>(u_input.d, u_input.d, global0.a.a, u_input.d) & vec4<u32>(47534u, global0.a.b, 32718u, 52220u))) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(~(~firstTrailingBit(vec4<u32>(var_0.x, var_0.x, 1u, u_input.d))), ~vec4<u32>(global0.a.a, countOneBits(4294967295u), 4294967295u, ~4294967295u)) % vec4<u32>(32u));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(global0.a.c.x)), global0.a.c.x, _wgslsmith_f_op_f32(func_4(u_input.b, Struct_4(Struct_2(Struct_1(var_0.x, 1u, vec3<f32>(132f, 631f, global0.a.c.x), vec4<i32>(u_input.a.x, -33526i, u_input.c.x, -20823i)), 0i), func_2(u_input.d, Struct_4(Struct_2(Struct_1(var_0.x, var_0.x, vec3<f32>(global0.a.c.x, -883f, -1000f), global0.a.d), 0i), vec4<bool>(false, false, false, false), u_input.b, global0.a.b)).b, u_input.a.x | 0i, var_0.x), vec2<u32>(global0.a.a, u_input.d), vec3<bool>(true, true, true)).c.x + global0.a.c.x));
    var var_2 = Struct_3(2061f, select(select(vec2<bool>(true, true), vec2<bool>(select(false, true, true), func_3(Struct_4(Struct_2(Struct_1(u_input.d, 1u, var_1, vec4<i32>(global0.a.d.x, global0.a.d.x, -1i, -16605i)), 0i), vec4<bool>(true, false, true, true), u_input.c.x, 61062u), Struct_4(Struct_2(Struct_1(59380u, u_input.d, global0.a.c, global0.a.d), global0.b), vec4<bool>(true, false, true, false), u_input.c.x, u_input.d)).x), vec2<bool>(false, func_3(Struct_4(Struct_2(Struct_1(var_0.x, 0u, global0.a.c, global0.a.d), -1i), vec4<bool>(false, true, true, false), global0.a.d.x, var_0.x), Struct_4(Struct_2(Struct_1(u_input.d, global0.a.a, vec3<f32>(global0.a.c.x, 1301f, var_1.x), vec4<i32>(global0.b, 1i, 45767i, global0.a.d.x)), 235i), vec4<bool>(true, false, false, true), global0.b, 93907u)).x)), vec2<bool>(false, any(func_2(4294967295u, Struct_4(Struct_2(global0.a, -2147483647i), vec4<bool>(true, false, true, true), -5473i, 0u)).b.zx)), true), !(((u_input.a.x <= global0.a.d.x) || true) & true), func_5(Struct_2(Struct_1(max(var_0.x, global0.a.b), var_0.x ^ u_input.d, var_1, func_2(7240u, Struct_4(Struct_2(Struct_1(var_0.x, var_0.x, var_1, vec4<i32>(global0.b, -58239i, u_input.b, u_input.c.x)), -2147483647i), vec4<bool>(true, false, false, true), u_input.c.x, 1u)).a.a.d), -_wgslsmith_mod_i32(global0.b, u_input.c.x)), func_2(abs(4294967295u | u_input.d), func_2(u_input.d, Struct_4(Struct_2(Struct_1(u_input.d, 29115u, var_1, global0.a.d), 17157i), vec4<bool>(false, true, false, true), global0.b, var_0.x))).b.x, countOneBits(~1u), vec4<bool>(true, true || func_5(Struct_2(Struct_1(1u, var_0.x, global0.a.c, global0.a.d), u_input.b), false, 43834u, vec4<bool>(false, true, false, false)).b.x, true, global0.a.c.x < _wgslsmith_f_op_f32(-var_1.x))).e.a, func_4(-global0.a.d.x, Struct_4(Struct_2(func_2(global0.a.b, Struct_4(Struct_2(Struct_1(u_input.d, global0.a.a, var_1, global0.a.d), -48151i), vec4<bool>(false, false, true, false), u_input.b, 4294967295u)).a.a, _wgslsmith_dot_vec4_i32(global0.a.d, global0.a.d)), vec4<bool>(true, true, true, true), -global0.b & ~(-2147483647i), var_0.x), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, global0.a.a) >> (var_0.xw % vec2<u32>(32u)), ~min(var_0.yw, var_0.wz)), func_3(func_2(_wgslsmith_mult_u32(0u, var_0.x), Struct_4(Struct_2(global0.a, 1i), vec4<bool>(false, false, false, true), -52632i, 4294967295u)), Struct_4(Struct_2(global0.a, u_input.c.x), vec4<bool>(false, true, true, false), u_input.c.x, global0.a.a)).zzx));
    var_2 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), var_2.b, !(!(_wgslsmith_mult_i32(9204i, global0.a.d.x) == func_4(-1i, Struct_4(Struct_2(global0.a, u_input.c.x), vec4<bool>(true, var_2.c, var_2.b.x, var_2.c), u_input.b, 0u), vec2<u32>(u_input.d, 0u), vec3<bool>(true, var_2.b.x, var_2.c)).d.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~var_0.x, 0u), 0u, ~(~4294967295u), firstLeadingBit(u_input.d)), ~_wgslsmith_div_vec4_u32(max(vec4<u32>(4294967295u, 69583u, global0.a.a, 1u), vec4<u32>(var_0.x, 52769u, u_input.d, u_input.d)), vec4<u32>(0u, 30599u, 1u, 1u))), global0.a);
    var var_3 = Struct_1(u_input.d, _wgslsmith_dot_vec2_u32(~var_0.zy, vec2<u32>(select(func_5(Struct_2(var_2.e, u_input.c.x), true, var_0.x, vec4<bool>(var_2.c, true, var_2.c, true)).e.a, max(4294967295u, 6605u), !var_2.c), var_0.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_2.e.c))), global0.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(countOneBits(var_2.e.d.yw), vec2<i32>(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, var_2.e.d.x & var_3.d.x, -var_3.d.x), ~_wgslsmith_div_i32(global0.a.d.x, 1i)), -abs(var_3.d.yw << (vec2<u32>(29118u, var_3.a) % vec2<u32>(32u)))));
}

