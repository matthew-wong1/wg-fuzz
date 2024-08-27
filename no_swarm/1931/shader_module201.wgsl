struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(f32(-1f) * -457f), -1618f);
    return countOneBits(~(-18559i));
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = Struct_2(func_3(Struct_1(arg_0.x, ~vec2<u32>(1u, 94338u), select(select(vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(false, arg_0.x, arg_0.x, false), arg_0.x), vec4<bool>(false, true, arg_0.x, true), true))), Struct_1(arg_0.x, select(vec2<u32>(~111854u, 7978u), select(vec2<u32>(0u, 58694u), vec2<u32>(10313u, 48016u), true), arg_0), select(select(select(vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(false, false, arg_0.x, true)), select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, true, true, false), false), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, arg_0.x, arg_0.x), false)), select(select(vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), arg_0.x), !vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), arg_0.x), vec4<bool>(any(arg_0), true, true, true))), -_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(u_input.b, 1280i, 0i, u_input.a.x)), ~vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.b)));
    let var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~33271u, var_0.b.b.x, _wgslsmith_sub_u32(10190u, 10101u) << ((37290u >> (var_0.b.b.x % 32u)) % 32u), var_0.b.b.x), vec4<u32>(var_0.b.b.x, var_0.b.b.x, firstLeadingBit(41163u), 0u));
    var_0 = Struct_2(1i, var_0.b, var_0.c);
    var_0 = Struct_2(var_0.a, Struct_1(var_0.b.c.x, max(var_0.b.b, vec2<u32>(1u, ~12967u)), var_0.b.c), vec4<i32>(_wgslsmith_div_i32(-u_input.a.x, 1i) << (var_1 % 32u), var_0.a, -min(2588i, ~u_input.b), ~u_input.b >> (~4294967295u % 32u)));
    return Struct_3(11495i, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(-299f)), -949f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -835f) + _wgslsmith_f_op_f32(167f * -194f))))));
}

fn func_4(arg_0: Struct_3) -> i32 {
    let var_0 = func_2(vec2<bool>(!any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), select(330f >= _wgslsmith_f_op_f32(ceil(arg_0.b.x)), true, true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(-var_0.b));
    var var_2 = Struct_1(all(select(vec3<bool>(true, true, all(vec2<bool>(true, false))), vec3<bool>(true, true, true), true || all(vec2<bool>(false, true)))), abs(vec2<u32>(1u, 1u) | (vec2<u32>(1u, 1u) ^ select(vec2<u32>(0u, 0u), vec2<u32>(1u, 10267u), vec2<bool>(false, true)))), vec4<bool>(true, select(true, false, any(vec4<bool>(true, true, true, true))), true, all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)))));
    var var_3 = ~var_2.b;
    var var_4 = -((~(-var_0.a) | max(u_input.a.x, _wgslsmith_clamp_i32(-1i, 0i, u_input.b))) & _wgslsmith_mult_i32(-_wgslsmith_sub_i32(u_input.a.x, 8204i), -u_input.b));
    return -1i;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32) -> i32 {
    let var_0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(arg_2 & 4294967295u, select(12102u, 25419u, arg_1.x)), vec2<u32>(32316u, arg_0.b.b.x >> (20203u % 32u))) >> (arg_0.b.b % vec2<u32>(32u));
    let var_1 = firstLeadingBit(_wgslsmith_div_u32(~_wgslsmith_div_u32(arg_0.b.b.x, _wgslsmith_mult_u32(1u, 0u)), ~(~arg_0.b.b.x)));
    var var_2 = arg_0;
    var var_3 = Struct_3(-1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(149f, -1249f, -1071f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(504f, -1000f, -1373f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-405f, 117f, -127f)))))));
    var var_4 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(31147u, ~arg_0.b.b.x) ^ select(_wgslsmith_div_u32(var_1, var_0.x), ~arg_2, false != arg_1.x), var_1, 53470u), arg_2);
    return _wgslsmith_mod_i32(var_2.a, -_wgslsmith_clamp_i32(min(max(-1i, 6342i), u_input.b), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-30589i, -10506i, 0i, 15071i), var_2.c), select(-2147483647i, -1i, arg_1.x)), func_4(func_2(vec2<bool>(false, arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec4_i32(select(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 3641i, u_input.a.x, 1i), vec4<i32>(-2147483647i, u_input.a.x, -1i, 2363i))), vec4<i32>(func_1(Struct_2(u_input.a.x, Struct_1(true, vec2<u32>(30836u, 4294967295u), vec4<bool>(false, true, false, true)), vec4<i32>(u_input.a.x, u_input.b, u_input.b, u_input.b)), vec4<bool>(true, false, false, false), 21042u), -u_input.a.x, ~(-10301i), -u_input.b), vec4<bool>(true, true, true, true)), -min(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 1i, 0i, u_input.b), vec4<i32>(-2147483647i, -10823i, 6889i, u_input.a.x)), vec4<i32>(47816i, 1i, -126871i, u_input.a.x))));
    let var_1 = _wgslsmith_add_u32(10628u, ~_wgslsmith_add_u32(~39236u, 1u)) & ~(~(~select(55402u, 16814u, false)));
    let var_2 = func_2(vec2<bool>(false, true)).b.x;
    let var_3 = vec4<u32>(~_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1, 1u, 8949u), vec3<u32>(var_1, var_1, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1, 4294967295u, var_1), _wgslsmith_mult_vec3_u32(vec3<u32>(41064u, 1u, var_1), vec3<u32>(39765u, 21384u, 0u)))), var_1, 1u, _wgslsmith_mult_u32(1u, ~43816u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_add_vec3_u32(var_3.xzw, abs(var_3.xyz)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(315f, -747f) - vec2<f32>(1937f, 639f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) + vec2<f32>(var_2, 1662f))))))), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(var_1, 31372u), min(~(~76524u), _wgslsmith_mod_u32(countOneBits(var_3.x), var_3.x))));
}

