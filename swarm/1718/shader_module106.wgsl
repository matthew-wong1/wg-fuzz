struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: u32, arg_3: f32) -> i32 {
    let var_0 = vec3<bool>(!any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(false, false))), all(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, true, false))), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))) || (any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true))) || all(vec4<bool>(false, false, true, false))));
    global0 = _wgslsmith_clamp_i32(arg_1.x, arg_1.x, _wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(i32(-1i) * -2147483647i, arg_1.x, -1i))) ^ 1i;
    let var_1 = 48759u == u_input.a.x;
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(~1u, _wgslsmith_add_u32(arg_2, _wgslsmith_mult_u32(_wgslsmith_div_u32(2332u, arg_0), _wgslsmith_mod_u32(u_input.b.x, arg_2)))), 0u);
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, 1000f, -810f) * vec3<f32>(854f, 1692f, -1187f)))))));
    return ~_wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, arg_1.x), i32(-1i) * -2931i);
}

fn func_2(arg_0: u32, arg_1: f32) -> u32 {
    global0 = func_3(_wgslsmith_clamp_u32(_wgslsmith_add_u32(firstLeadingBit(u_input.b.x) >> (_wgslsmith_div_u32(18523u, u_input.a.x) % 32u), 1u), u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.b.x << (u_input.a.x % 32u), _wgslsmith_div_u32(arg_0, u_input.b.x)), ~vec3<u32>(0u, 18704u, 4294967295u) >> ((vec3<u32>(u_input.b.x, 1u, arg_0) | u_input.b) % vec3<u32>(32u)))), vec3<i32>(~firstLeadingBit(-7463i), firstLeadingBit(0i), 25500i), firstTrailingBit(arg_0), 2421f);
    global0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(func_3(firstLeadingBit(max(u_input.b.x, 0u)), vec3<i32>(2147483647i, _wgslsmith_sub_i32(6084i, -96461i), -3354i), ~(~4294967295u), _wgslsmith_f_op_f32(exp2(arg_1))), 2147483647i), ~(-22792i));
    global0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-abs(~vec3<i32>(21784i, 1i, -18109i)), min(vec3<i32>(12191i, 1i, _wgslsmith_add_i32(1i, 0i)), vec3<i32>(-29362i, 1i, ~34220i))), min(0i, -29577i));
    global0 = func_3(min(5785u, min(0u, arg_0 ^ u_input.b.x)), select(-vec3<i32>(1i, 1i, 1i), firstLeadingBit(~vec3<i32>(-1i, 539i, 67746i)), vec3<bool>(true, true, true)), arg_0, arg_1) ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-33349i, 0i, -2147483647i, 28268i) << (~vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 0u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-39659i, 1i, 22380i, -21694i), -vec4<i32>(46325i, 2147483647i, 5793i, 1i), -vec4<i32>(-19296i, 39727i, 1i, 1i))), _wgslsmith_add_i32(0i, 28383i));
    var var_0 = all(vec2<bool>(any(vec2<bool>(false, true)), (_wgslsmith_dot_vec3_i32(vec3<i32>(107855i, 26090i, 4756i), vec3<i32>(0i, -54271i, 2147483647i)) <= _wgslsmith_clamp_i32(48777i, -50849i, -2147483647i)) | true));
    return 1u;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: bool, arg_3: i32) -> f32 {
    var var_0 = arg_3 ^ 2147483647i;
    var var_1 = u_input.b.x;
    var_0 = abs(0i);
    var_1 = func_2(u_input.a.x & u_input.b.x, arg_1);
    var var_2 = 4294967295u;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_i32(firstLeadingBit(max(-1i, -8342i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i) >> (min(u_input.a, vec2<u32>(u_input.a.x, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(-86068i, 1i), vec2<i32>(1738i, -2147483647i)) << (u_input.a % vec2<u32>(32u))));
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-411f, -284f, -1880f) - vec3<f32>(718f, -371f, 720f)))), vec3<f32>(_wgslsmith_f_op_f32(-138f - -465f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, false), 895f, true, -1i)), _wgslsmith_f_op_f32(select(-555f, -192f, false))), -184f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1736f, -1453f, -1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(883f, -498f, 1000f))))));
    global0 = _wgslsmith_sub_i32((1i >> ((~u_input.b.x | _wgslsmith_sub_u32(4294967295u, u_input.a.x)) % 32u)) | ~_wgslsmith_dot_vec3_i32(vec3<i32>(-18000i, 41796i, 5014i), vec3<i32>(1i, 1i, 1i)), reverseBits(~abs(2147483647i)));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1352f * var_0.x)), _wgslsmith_f_op_f32(ceil(var_0.x)))), var_0.x, all(vec4<bool>(true, false | any(vec4<bool>(true, false, true, false)), true, true))));
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(-var_0), var_0.x, vec4<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(45240i, 2147483647i)) << (~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(1u, 11744u, 4294967295u)) % 32u), abs(max(_wgslsmith_dot_vec4_i32(vec4<i32>(53555i, 35562i, 59907i, -1i), vec4<i32>(-6992i, 38059i, 1i, 2147483647i)), firstTrailingBit(2147483647i))), abs(-36018i), _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(69978i, -2919i, 1i, 32851i)), _wgslsmith_add_vec4_i32(vec4<i32>(-9801i, -2147483647i, -34769i, 1i) >> (vec4<u32>(33306u, 0u, 47237u, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(-1i, -16090i, -40518i, 0i)))));
    global0 = countOneBits(min(-var_2.c.x, abs(-var_2.c.x)));
    var_1 = 478f;
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b + 546f)))), 576f), var_0.x, !(!(!all(vec3<bool>(true, false, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(1i, var_2.c.x), var_2.c.x, 1061f, vec3<f32>(var_0.x, 557f, var_2.b), vec2<u32>(~u_input.a.x << (~83145u % 32u), _wgslsmith_add_u32(u_input.a.x & 4294967295u, 4294967295u)) << (_wgslsmith_mod_vec2_u32(u_input.a, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(12199u, u_input.a.x) >> (vec2<u32>(0u, 53399u) % vec2<u32>(32u)))) % vec2<u32>(32u)));
}

