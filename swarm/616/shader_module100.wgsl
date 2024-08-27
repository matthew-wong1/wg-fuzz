struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<i32> {
    var var_0 = ~(~select(~_wgslsmith_add_vec4_u32(vec4<u32>(45209u, 0u, 0u, 1u), vec4<u32>(33783u, 1u, 4294967295u, 1u)), ~(~vec4<u32>(36303u, 119485u, 44715u, 0u)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, false, true), true)));
    var_0 = abs(vec4<u32>(8442u, 0u, 1u, reverseBits(31322u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -914f) - _wgslsmith_div_f32(3410f, 670f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2274f, 878f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-430f + -904f) - _wgslsmith_f_op_f32(-524f * -611f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-472f, -502f, true)) * _wgslsmith_f_op_f32(353f - 2122f))))));
    let var_2 = vec3<u32>(~1u, reverseBits(~(~1u)), 58139u);
    let var_3 = reverseBits(~firstTrailingBit(max(1u, var_0.x)));
    return ~reverseBits(select(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), countOneBits(vec3<i32>(20653i, u_input.a, 7144i)), vec3<i32>(9796i, u_input.a, u_input.a) & vec3<i32>(u_input.a, 1i, -48367i)), max(~vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(-1i, u_input.a, -2147483647i) & vec3<i32>(0i, u_input.a, u_input.a)), !any(vec4<bool>(true, true, false, false))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = arg_1.a.a.a;
    var var_1 = Struct_1(-2147483647i, true);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-172f + 1182f)));
    var var_3 = vec3<i32>(_wgslsmith_div_i32(1i, 2147483647i), 22791i, 1i) ^ func_3();
    var_1 = Struct_1(min(_wgslsmith_mult_i32(-2147483647i, -arg_3.a.a), -5551i), -5146i > (_wgslsmith_mod_i32(arg_3.a.a | 2147483647i, arg_2.a << (0u % 32u)) << (arg_3.b.x % 32u)));
    return arg_3;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))) * vec2<f32>(636f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-652f, -756f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-382f, 1000f) - vec2<f32>(1728f, -427f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, -1000f))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-490f, -626f))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_0.x), vec2<f32>(426f, 868f), vec2<bool>(arg_0.a.b, arg_0.a.b))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -698f)))))));
    let var_1 = reverseBits(1u);
    let var_2 = Struct_4(arg_0, ~39236i, -303f);
    var var_3 = 0u;
    return select(!(!(!(!vec3<bool>(false, arg_0.a.b, var_2.a.a.b)))), select(!select(!vec3<bool>(var_2.a.a.b, arg_0.a.b, true), vec3<bool>(arg_0.a.b, arg_0.a.b, true), !vec3<bool>(var_2.a.a.b, arg_0.a.b, true)), vec3<bool>(!var_2.a.a.b, select(true, true, select(var_2.a.a.b, var_2.a.a.b, true)), var_2.a.a.b || arg_0.a.b), true), select(vec3<bool>(var_2.a.a.b, arg_0.a.b, !(false & var_2.a.a.b)), vec3<bool>(107f <= var_0.x, true, true), select(select(select(vec3<bool>(true, arg_0.a.b, true), vec3<bool>(arg_0.a.b, arg_0.a.b, arg_0.a.b), true), vec3<bool>(true, true, true), var_2.a.b.x <= var_1), !(!vec3<bool>(true, arg_0.a.b, true)), true)));
}

fn func_1(arg_0: u32, arg_1: Struct_5) -> vec3<bool> {
    return !select(select(func_4(func_2(vec2<f32>(-931f, 1454f), Struct_4(Struct_2(Struct_1(u_input.a, false), vec3<u32>(1u, 4294967295u, arg_1.a), vec3<u32>(13817u, arg_1.a, 4294967295u)), u_input.a, -1000f), Struct_1(24388i, true), Struct_2(Struct_1(0i, false), vec3<u32>(arg_1.a, arg_0, 4294967295u), vec3<u32>(63971u, arg_0, arg_1.a))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, u_input.a))), vec3<bool>(true, true, select(true, true, true)), true), vec3<bool>(true, true, true), (_wgslsmith_clamp_i32(u_input.a, 24184i, 2147483647i) > u_input.a) != (select(2147483647i, u_input.a, true) > abs(u_input.a)));
}

fn func_5(arg_0: bool) -> Struct_1 {
    let var_0 = false;
    var var_1 = !arg_0 == ((var_0 && any(func_1(32235u, Struct_5(8191u)))) || !(-26280i > _wgslsmith_div_i32(u_input.a, u_input.a)));
    let var_2 = Struct_5(_wgslsmith_mod_u32(0u, countOneBits(abs(38175u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 39564u), vec4<u32>(1u, 1u, 42003u, 23571u)) % 32u))));
    var var_3 = Struct_5(~reverseBits(reverseBits(89941u & var_2.a)));
    var var_4 = 1150f;
    return func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1805f, 1860f) + vec2<f32>(-1110f, -884f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2017f, -459f) + vec2<f32>(-433f, -1337f))) - vec2<f32>(-1011f, _wgslsmith_f_op_f32(abs(-453f))))), Struct_4(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(205f, 1329f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-635f, -1000f))), Struct_4(func_2(vec2<f32>(-317f, 1125f), Struct_4(Struct_2(Struct_1(0i, false), vec3<u32>(3719u, 23578u, 0u), vec3<u32>(var_3.a, 42388u, var_3.a)), -9508i, -719f), Struct_1(33259i, false), Struct_2(Struct_1(-2147483647i, arg_0), vec3<u32>(18015u, var_3.a, 0u), vec3<u32>(var_3.a, var_2.a, var_3.a))), u_input.a, _wgslsmith_div_f32(-687f, -380f)), Struct_1(u_input.a, var_2.a < 75974u), func_2(vec2<f32>(1077f, -943f), Struct_4(Struct_2(Struct_1(u_input.a, arg_0), vec3<u32>(var_3.a, var_2.a, 10472u), vec3<u32>(0u, 41911u, 0u)), u_input.a, -533f), func_2(vec2<f32>(113f, 352f), Struct_4(Struct_2(Struct_1(0i, true), vec3<u32>(75446u, var_3.a, 41807u), vec3<u32>(var_2.a, var_3.a, 0u)), 2147483647i, 372f), Struct_1(-2147483647i, arg_0), Struct_2(Struct_1(-2147483647i, true), vec3<u32>(36241u, 0u, var_2.a), vec3<u32>(4294967295u, 18754u, 88596u))).a, func_2(vec2<f32>(-1398f, -1312f), Struct_4(Struct_2(Struct_1(u_input.a, var_0), vec3<u32>(1u, var_2.a, 1u), vec3<u32>(var_2.a, var_2.a, var_2.a)), u_input.a, -960f), Struct_1(13335i, var_0), Struct_2(Struct_1(u_input.a, false), vec3<u32>(0u, 4294967295u, var_3.a), vec3<u32>(0u, 71695u, 1u))))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-982f, -854f)))))), Struct_1(countOneBits(u_input.a << (1u % 32u)), !var_0), Struct_2(Struct_1(u_input.a, any(vec2<bool>(arg_0, true)) || arg_0), (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 2570u, var_2.a), vec3<u32>(0u, var_2.a, var_2.a)) ^ reverseBits(vec3<u32>(var_3.a, 15047u, 1u))) >> (vec3<u32>(29756u, select(var_2.a, 1u, true), _wgslsmith_dot_vec3_u32(vec3<u32>(58109u, 47189u, var_2.a), vec3<u32>(4294967295u, 127537u, var_2.a))) % vec3<u32>(32u)), vec3<u32>(~firstTrailingBit(var_2.a), var_2.a, ~var_2.a))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a, true);
    var_0 = func_5(any(select(vec3<bool>(true, var_0.b, true), !func_1(57336u, Struct_5(63035u)), true)));
    var var_1 = !var_0.b;
    let var_2 = vec3<f32>(1155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(491f))), _wgslsmith_f_op_f32(ceil(427f)));
    var var_3 = Struct_1(u_input.a, var_0.b);
    var var_4 = countOneBits(min(countOneBits(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(0u, 4294967295u)), vec2<u32>(1u, 1u), vec2<u32>(9440u, 1u))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), 1u)));
    var_0 = func_5(!func_5(all(!vec3<bool>(false, false, var_3.b))).b);
    var_4 = _wgslsmith_clamp_vec2_u32(func_2(vec2<f32>(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(var_2.x + var_2.x)), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(f32(-1f) * -1016f))), Struct_4(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(691f, var_2.x) - vec2<f32>(var_2.x, var_2.x)), Struct_4(Struct_2(Struct_1(var_0.a, var_0.b), vec3<u32>(var_4.x, 0u, var_4.x), vec3<u32>(var_4.x, var_4.x, var_4.x)), var_0.a, 672f), Struct_1(-2147483647i, true), func_2(vec2<f32>(var_2.x, 148f), Struct_4(Struct_2(Struct_1(var_0.a, false), vec3<u32>(120522u, var_4.x, 14274u), vec3<u32>(var_4.x, 0u, var_4.x)), u_input.a, -849f), Struct_1(var_3.a, true), Struct_2(Struct_1(u_input.a, var_0.b), vec3<u32>(var_4.x, 67453u, var_4.x), vec3<u32>(60785u, 4294967295u, 1u)))), 0i, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.x, -1431f), _wgslsmith_f_op_f32(f32(-1f) * -552f)))), func_2(vec2<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(-var_2.x)), Struct_4(Struct_2(Struct_1(var_3.a, true), vec3<u32>(var_4.x, 1u, 86826u), vec3<u32>(var_4.x, var_4.x, var_4.x)), countOneBits(u_input.a), -1148f), func_5(false), Struct_2(Struct_1(u_input.a, var_0.b), ~vec3<u32>(4294967295u, var_4.x, 4323u), _wgslsmith_clamp_vec3_u32(vec3<u32>(47050u, var_4.x, 4294967295u), vec3<u32>(var_4.x, 50550u, 35549u), vec3<u32>(4294967295u, var_4.x, var_4.x)))).a, Struct_2(func_5(true), _wgslsmith_mult_vec3_u32(vec3<u32>(583u, var_4.x, var_4.x) << (vec3<u32>(var_4.x, 0u, var_4.x) % vec3<u32>(32u)), func_2(var_2.xx, Struct_4(Struct_2(Struct_1(-108i, var_3.b), vec3<u32>(12817u, 29478u, 3886u), vec3<u32>(var_4.x, 0u, 1u)), u_input.a, var_2.x), Struct_1(0i, var_0.b), Struct_2(Struct_1(-13921i, false), vec3<u32>(16832u, var_4.x, 1181u), vec3<u32>(1u, var_4.x, var_4.x))).c), ~(~vec3<u32>(var_4.x, var_4.x, var_4.x)))).b.yz, vec2<u32>(var_4.x, ~(~_wgslsmith_sub_u32(var_4.x, 21516u))), vec2<u32>(15155u, 34267u ^ func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -662f)), Struct_4(Struct_2(Struct_1(-28695i, true), vec3<u32>(74183u, var_4.x, 0u), vec3<u32>(var_4.x, var_4.x, 0u)), var_3.a, -1918f), Struct_1(0i, var_0.b), Struct_2(Struct_1(var_3.a, false), vec3<u32>(var_4.x, 35383u, var_4.x), vec3<u32>(var_4.x, var_4.x, var_4.x))).b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(1845u, 5784u)));
}

