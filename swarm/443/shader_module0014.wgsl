struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = vec4<u32>(arg_1.a, arg_1.a, ~_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, arg_1.a)), vec2<u32>(4294967295u, 50787u))), ~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 34313u, arg_1.a, 24177u), vec4<u32>(arg_1.a, 1u, arg_1.a, arg_1.a)) & 8562u));
    let var_2 = ~(countOneBits(var_1 ^ var_1) << (vec4<u32>(select(~var_1.x, ~4294967295u, select(true, false, false)), ~(~68988u), 0u, 98572u) % vec4<u32>(32u)));
    let var_3 = arg_0.a.x;
    let var_4 = Struct_3(var_1.x, arg_3);
    return Struct_1(arg_3.a | (~arg_0.a ^ select(arg_0.a, arg_1.b.a, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.b.b.x, 175f) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-813f, -1036f), vec2<f32>(var_4.b.b.x, arg_2.x)))))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = !select(vec2<bool>(true, (u_input.d.x != u_input.d.x) == true), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(false, true, false)), -551f >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, 1276f) - _wgslsmith_f_op_f32(arg_0.b.x + -1451f)));
    let var_1 = ~(~_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a, -3247i), u_input.c.yx));
    var var_2 = vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-783f + _wgslsmith_f_op_f32(abs(arg_0.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x)))), _wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x))), var_0.x)))));
    var_0 = !select(vec2<bool>(true, true), select(vec2<bool>(false, all(vec2<bool>(var_0.x, true))), select(vec2<bool>(true, true), vec2<bool>(false, var_0.x), !vec2<bool>(false, var_0.x)), vec2<bool>(false & var_0.x, !var_0.x)), !vec2<bool>(var_2.x < arg_0.b.x, any(vec2<bool>(var_0.x, false))));
    var var_3 = false;
    return 1i;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<u32>) -> u32 {
    let var_0 = vec3<f32>(-1152f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1965f - _wgslsmith_f_op_f32(701f * -495f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -514f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(352f, 708f, true)) - _wgslsmith_f_op_f32(f32(-1f) * -1507f)))), 1924f);
    var var_1 = -u_input.c.x;
    var_1 = select(_wgslsmith_dot_vec3_i32(reverseBits(abs(vec3<i32>(u_input.b.x, -33465i, -17488i))) & _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, -30191i, -33561i), u_input.c), vec3<i32>(1i, 22827i, 0i)), vec3<i32>(_wgslsmith_mod_i32(-58064i, _wgslsmith_add_i32(u_input.d.x, u_input.a)), func_3(func_2(Struct_1(vec4<i32>(-5420i, 1i, 13029i, -172i), var_0.yz), Struct_3(7303u, Struct_1(vec4<i32>(u_input.c.x, -2147483647i, 1i, 2147483647i), var_0.xz)), var_0, Struct_1(vec4<i32>(u_input.b.x, 63010i, u_input.d.x, u_input.c.x), vec2<f32>(-982f, -152f)))), -_wgslsmith_sub_i32(u_input.b.x, -69471i))), u_input.b.x, any(vec4<bool>(false, any(vec4<bool>(true, true, true, false)), all(vec4<bool>(true, true, true, true)), ~0u == _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, arg_0.x, arg_0.x), vec4<u32>(arg_1.x, 68091u, 1u, 0u)))));
    let var_2 = -func_2(Struct_1(-vec4<i32>(-27983i, u_input.d.x, u_input.c.x, 1i), _wgslsmith_f_op_vec2_f32(floor(var_0.zy))), Struct_3(arg_0.x, func_2(Struct_1(vec4<i32>(0i, -1i, 49243i, u_input.a), vec2<f32>(-1000f, var_0.x)), Struct_3(0u, Struct_1(vec4<i32>(u_input.c.x, u_input.b.x, -19923i, u_input.c.x), var_0.xy)), var_0, Struct_1(vec4<i32>(19399i, u_input.d.x, -2147483647i, u_input.c.x), vec2<f32>(-1000f, -699f)))), var_0, func_2(func_2(Struct_1(vec4<i32>(u_input.c.x, u_input.a, 9114i, -20705i), vec2<f32>(var_0.x, var_0.x)), Struct_3(arg_1.x, Struct_1(vec4<i32>(u_input.b.x, u_input.d.x, -2147483647i, u_input.d.x), vec2<f32>(var_0.x, var_0.x))), vec3<f32>(2006f, 1133f, var_0.x), Struct_1(vec4<i32>(u_input.a, u_input.a, 2147483647i, -31431i), var_0.xx)), Struct_3(34580u, Struct_1(vec4<i32>(178i, -15207i, u_input.a, 65485i), var_0.yz)), vec3<f32>(var_0.x, -339f, 1000f), func_2(Struct_1(vec4<i32>(12227i, u_input.c.x, 2147483647i, -3478i), var_0.xz), Struct_3(1u, Struct_1(vec4<i32>(1i, -2147483647i, u_input.c.x, -2147483647i), vec2<f32>(124f, -506f))), var_0, Struct_1(vec4<i32>(-59728i, 2147483647i, u_input.b.x, u_input.a), var_0.yx)))).a.wz & (vec2<i32>(u_input.c.x, u_input.c.x) | _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.d.xy, vec2<i32>(u_input.c.x, u_input.b.x)), -125i), vec2<i32>(firstTrailingBit(15693i), u_input.a)));
    let var_3 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~4294967295u, ~(9797u ^ arg_1.x), 0u), 50942u);
    return ~22923u;
}

fn func_4(arg_0: u32) -> vec2<i32> {
    var var_0 = _wgslsmith_dot_vec2_i32(reverseBits(min(vec2<i32>(u_input.c.x, countOneBits(u_input.a)), u_input.c.yx)), abs(~(vec2<i32>(0i, 256i) & -vec2<i32>(u_input.b.x, -2147483647i))));
    var_0 = _wgslsmith_dot_vec3_i32(u_input.d, abs(u_input.b ^ max(vec3<i32>(0i, 0i, 0i), vec3<i32>(u_input.c.x, u_input.d.x, -47262i) & vec3<i32>(-2147483647i, u_input.a, u_input.d.x))));
    var var_1 = 4294967295u;
    var_1 = 1u;
    var var_2 = Struct_1(vec4<i32>(-abs(~u_input.c.x), ~u_input.a, u_input.a, -22559i), vec2<f32>(835f, _wgslsmith_f_op_f32(-1695f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1204f)), _wgslsmith_f_op_f32(trunc(1000f)))))));
    return func_2(Struct_1(-(var_2.a << (vec4<u32>(0u, arg_0, 0u, 52292u) % vec4<u32>(32u))), _wgslsmith_div_vec2_f32(var_2.b, var_2.b)), Struct_3(10123u, Struct_1(var_2.a, _wgslsmith_f_op_vec2_f32(max(var_2.b, _wgslsmith_f_op_vec2_f32(floor(var_2.b)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(798f, 384f, var_2.b.x), vec3<f32>(315f, var_2.b.x, var_2.b.x)))))), Struct_1(abs(var_2.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * _wgslsmith_f_op_f32(604f - var_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-287f)) - -726f)))).a.yy;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: bool) -> vec3<bool> {
    var var_0 = Struct_1(countOneBits(min(abs(max(vec4<i32>(u_input.d.x, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(22712i, -9708i, arg_0.x, 2117i))), vec4<i32>(-1i) * -vec4<i32>(u_input.a, 1i, 65321i, u_input.d.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2 - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, arg_2.x))), _wgslsmith_f_op_vec2_f32(select(func_2(Struct_1(vec4<i32>(-2147483647i, -12558i, u_input.a, -2147483647i), arg_2), Struct_3(3854u, Struct_1(vec4<i32>(arg_0.x, -1i, u_input.a, -1i), vec2<f32>(-1106f, 825f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, 117f) - vec3<f32>(arg_2.x, arg_2.x, -624f)), Struct_1(vec4<i32>(-3345i, arg_0.x, -70955i, 0i), arg_2)).b, vec2<f32>(901f, _wgslsmith_f_op_f32(abs(1843f))), false)), !(!select(vec2<bool>(arg_3, arg_1.x), vec2<bool>(arg_3, false), false)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), var_0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(sign(876f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(682f, 2354f, var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.x, -736f, -621f), vec3<f32>(var_0.b.x, -1892f, arg_2.x))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f), arg_2.x), _wgslsmith_f_op_f32(exp2(arg_2.x)), 1000f)));
    let var_2 = var_0.a.xw;
    var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-580f, _wgslsmith_div_f32(606f, var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.x, 886f)) + _wgslsmith_f_op_f32(-178f + -1000f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-131f, _wgslsmith_f_op_f32(abs(-458f)), _wgslsmith_f_op_f32(step(938f, -355f))))))));
    return !vec3<bool>(false, arg_3, arg_3 & false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = vec4<i32>(u_input.c.x, abs(-5036i), -1032i, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d.x, 2147483647i, u_input.b.x), abs(u_input.d)) | 46618i);
    let var_2 = !func_5(func_4(func_1(~vec3<u32>(0u, 13728u, 0u), ~vec4<u32>(0u, 4294967295u, 49889u, 0u))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, select(true, true, true)), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))), var_1.x > -14695i);
    var var_3 = func_2(func_2(Struct_1(~firstTrailingBit(vec4<i32>(32583i, var_1.x, u_input.d.x, -1i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1082f, 1324f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(434f, -881f), vec2<f32>(791f, 1165f))))), Struct_3(reverseBits(~19388u), func_2(Struct_1(vec4<i32>(var_1.x, -620i, 1i, 1165i), vec2<f32>(-277f, 940f)), Struct_3(4294967295u, Struct_1(vec4<i32>(var_1.x, -25233i, var_1.x, 0i), vec2<f32>(-475f, -1076f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, 460f, 1259f))), func_2(Struct_1(vec4<i32>(4807i, u_input.b.x, -1i, 69422i), vec2<f32>(1611f, -1923f)), Struct_3(4294967295u, Struct_1(vec4<i32>(0i, -2147483647i, 0i, 0i), vec2<f32>(1000f, -555f))), vec3<f32>(820f, -1000f, 1128f), Struct_1(vec4<i32>(u_input.b.x, var_1.x, 2147483647i, var_1.x), vec2<f32>(-213f, 1737f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1896f, 432f, 552f)))), func_2(Struct_1(-vec4<i32>(-93751i, -39294i, var_1.x, 1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1073f, 212f))), Struct_3(firstTrailingBit(57762u), Struct_1(vec4<i32>(var_1.x, var_1.x, var_1.x, -1i), vec2<f32>(624f, 1493f))), vec3<f32>(1f, 1f, 1f), func_2(Struct_1(vec4<i32>(1i, 7159i, var_1.x, -1i), vec2<f32>(1545f, -553f)), Struct_3(0u, Struct_1(vec4<i32>(u_input.c.x, u_input.a, var_1.x, u_input.c.x), vec2<f32>(152f, 2071f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(491f, 716f, -1000f) - vec3<f32>(447f, 534f, -861f)), Struct_1(vec4<i32>(var_1.x, u_input.a, u_input.a, var_1.x), vec2<f32>(672f, -453f))))), Struct_3(~1u, Struct_1(firstLeadingBit(-vec4<i32>(1i, -2147483647i, -2147483647i, u_input.b.x)), _wgslsmith_div_vec2_f32(vec2<f32>(517f, 681f), vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-1093f, 659f, 220f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(629f, 1010f, -665f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 729f, -1172f) * vec3<f32>(1001f, 1347f, 452f))))))), Struct_1(-(vec4<i32>(u_input.d.x, var_1.x, -3655i, u_input.b.x) | vec4<i32>(0i, u_input.a, var_1.x, var_1.x)) ^ _wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.d.x, var_1.x, 20079i, var_1.x), vec4<i32>(-40917i, -35710i, u_input.d.x, -22315i), var_2.x), vec4<i32>(640i, var_1.x, 0i, u_input.c.x) << (vec4<u32>(0u, 25639u, 14914u, 23332u) % vec4<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-992f + -1714f), _wgslsmith_f_op_f32(1210f * 1067f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(474f, -170f)))))));
    let var_4 = Struct_2(Struct_1(firstTrailingBit(vec4<i32>(-2147483647i, var_1.x & -2147483647i, var_1.x, var_3.a.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, var_3.b.x), vec2<f32>(-423f, var_3.b.x)))))), ~select(vec2<u32>(1u, ~0u), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 39687u), ~vec2<u32>(25878u, 4294967295u)), vec2<bool>(true && var_2.x, any(var_2.yz))));
    let var_5 = countOneBits(_wgslsmith_sub_vec2_i32(func_2(Struct_1(var_3.a, vec2<f32>(-553f, var_3.b.x)), Struct_3(4294967295u, Struct_1(vec4<i32>(-29356i, 56161i, -2147483647i, var_3.a.x), var_3.b)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.b.x, var_4.a.b.x, -1903f))), Struct_1(var_4.a.a, vec2<f32>(var_3.b.x, 1302f))).a.xy | var_4.a.a.wx, vec2<i32>(var_3.a.x, -1i)));
    let var_6 = Struct_3(~(~firstLeadingBit(~1u)), Struct_1(select(var_3.a, func_2(func_2(var_4.a, Struct_3(var_4.b.x, Struct_1(vec4<i32>(u_input.a, var_4.a.a.x, u_input.d.x, -38164i), var_3.b)), vec3<f32>(var_3.b.x, -2442f, var_4.a.b.x), Struct_1(vec4<i32>(-16721i, var_5.x, var_1.x, -1i), var_4.a.b)), Struct_3(var_4.b.x, var_4.a), vec3<f32>(-856f, var_3.b.x, 1674f), func_2(Struct_1(vec4<i32>(-35988i, -27723i, -2147483647i, var_3.a.x), var_3.b), Struct_3(var_4.b.x, Struct_1(var_3.a, var_3.b)), vec3<f32>(-653f, 810f, 1534f), Struct_1(var_3.a, var_4.a.b))).a, var_4.b.x <= 4294967295u), func_2(var_4.a, Struct_3(~4294967295u, var_4.a), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.b.x, var_3.b.x, 361f) + vec3<f32>(-1854f, -2748f, var_4.a.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.x, -852f, -357f)))), Struct_1(vec4<i32>(var_3.a.x, 24906i, var_5.x, -2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.x, var_3.b.x)))).b));
    let x = u_input.a;
    s_output = StorageBuffer(68120u, 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(289f, 636f), vec2<f32>(var_6.b.b.x, -213f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.a.b))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x + 905f)), -215f)));
}

