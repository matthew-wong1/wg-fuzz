struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: f32 = -320f;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    global0 = arg_1.x;
    var var_0 = ~(((min(vec4<i32>(arg_1.x, arg_1.x, -32579i, arg_1.x), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 2147483647i)) ^ vec4<i32>(1i, arg_1.x, arg_1.x, arg_1.x)) >> (vec4<u32>(0u, arg_2.b.x << (0u % 32u), ~u_input.a.x, arg_2.b.x & 4294967295u) % vec4<u32>(32u))) ^ ~(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, -1i, arg_1.x, 18997i), vec4<i32>(-60081i, arg_1.x, -64692i, arg_1.x)) << (vec4<u32>(arg_0.b.x, arg_0.a.x, u_input.b, 0u) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(max(_wgslsmith_div_i32(-19866i << (1u % 32u), ~40863i), arg_1.x), 15255i, var_0.x, arg_1.x), vec4<i32>(2017i | ~arg_1.x, select(firstTrailingBit(abs(30128i)), select(2147483647i & var_0.x, -41866i, true), !(!arg_2.c)), -1i, 0i));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -592f);
    var_0 = select(vec4<i32>(-var_1.x, -2147483647i, -2147483647i, _wgslsmith_sub_i32(~(-arg_1.x), select(10124i, ~(-80521i), var_0.x == 1i))), vec4<i32>(-11768i, arg_1.x, _wgslsmith_dot_vec3_i32(var_1.yzy, select(var_1.zww, arg_1 ^ arg_1, vec3<bool>(arg_2.c, true, true))), -12145i), true);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-251f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-280f, 286f)) + _wgslsmith_f_op_f32(floor(448f))))))));
}

fn func_4(arg_0: f32) -> i32 {
    var var_0 = false;
    let var_1 = Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 15030u, u_input.b), u_input.b, reverseBits(u_input.b)), ~vec3<u32>(77402u, u_input.a.x, 1u)), ~(~(vec3<u32>(u_input.b, u_input.a.x, u_input.b) & vec3<u32>(1u, u_input.a.x, u_input.a.x)) & (vec3<u32>(u_input.b, u_input.b, 36922u) << (max(vec3<u32>(u_input.b, 1u, 4294967295u), vec3<u32>(26794u, u_input.b, 1u)) % vec3<u32>(32u)))), true);
    var var_2 = Struct_1(~firstTrailingBit(firstLeadingBit(var_1.b)), _wgslsmith_mult_vec3_u32(~select(var_1.a & var_1.b, ~vec3<u32>(0u, 4294967295u, 4294967295u), select(vec3<bool>(true, var_1.c, false), vec3<bool>(var_1.c, var_1.c, false), var_1.c)), vec3<u32>(4127u, u_input.b, ~var_1.a.x)), !(!all(vec2<bool>(true, true))));
    var_0 = !select(-25429i >= _wgslsmith_clamp_i32(-37738i, _wgslsmith_dot_vec2_i32(vec2<i32>(16422i, -1i), vec2<i32>(-59022i, 24988i)), firstTrailingBit(1i)), true, select(var_1.c, true, false));
    global0 = 0i;
    return -3762i;
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1807f));
    let var_1 = !var_0;
    let var_2 = Struct_1(~(vec3<u32>(~u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.b), u_input.b) ^ firstLeadingBit(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), min(~abs(vec3<u32>(4294967295u, u_input.b, u_input.a.x)) | vec3<u32>(min(1u, u_input.b), ~1u, ~90246u), abs(firstTrailingBit(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)))), var_1);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -904f))), _wgslsmith_div_i32(func_4(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(0u, var_2.a.x, u_input.a.x), var_2.b, true), vec3<i32>(1i, 1i, 1i), var_2))), abs(2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -461f));
    return Struct_2(-958f, i32(-1i) * -(~var_3.b), var_3.a);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> f32 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_div_vec3_i32(~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b, -9796i, -1i), vec3<i32>(var_0.b, 2147483647i, 2147483647i), vec3<i32>(var_0.b, arg_1, -9380i))), reverseBits(~vec3<i32>(arg_1, var_0.b, var_0.b)) & _wgslsmith_add_vec3_i32(-vec3<i32>(0i, 1i, arg_1), max(vec3<i32>(-952i, var_0.b, var_0.b), vec3<i32>(arg_1, 18824i, var_0.b)))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, max(arg_2.b.a.x << (arg_2.b.b.x % 32u), ~4294967295u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(20634u, 43137u), vec2<u32>(41259u, 1u))), select(arg_2.b.a, ~(vec3<u32>(arg_0, 104373u, 25878u) ^ arg_2.b.a), vec3<bool>(any(vec3<bool>(arg_2.a, true, true)), any(vec2<bool>(arg_2.a, false)), arg_2.a))) % vec3<u32>(32u));
    var var_2 = vec3<i32>(countOneBits(var_1.x), 0i, firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_add_i32(~(-1i), min(var_0.b, var_0.b)), var_0.b)));
    var var_3 = vec3<i32>(_wgslsmith_div_i32(0i, _wgslsmith_mult_i32(-45053i, var_1.x) | 0i), min(i32(-1i) * -2147483647i, -51607i), ~arg_1);
    var var_4 = vec4<i32>(_wgslsmith_mult_i32(arg_1, ~var_1.x), firstLeadingBit(~_wgslsmith_dot_vec2_i32(reverseBits(var_2.yy), vec2<i32>(33403i, -8918i))), -32307i, -min(reverseBits(~var_3.x), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_2.x, 12634i), var_3.xx)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.c.x))))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> f32 {
    global1 = -1325f;
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(1393f * func_2().a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().a - _wgslsmith_f_op_f32(-arg_0))) * arg_1));
    global1 = -1632f;
    let var_1 = vec3<i32>(-1i) * -(vec3<i32>(i32(-1i) * -68854i, i32(-1i) * -34701i, 1i) << (arg_2.b % vec3<u32>(32u)));
    var var_2 = all(!(!vec2<bool>(all(vec4<bool>(arg_2.c, true, true, false)), u_input.a.x != 19883u)));
    return 637f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(1f + -1314f), min(-1i, 1i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1108f) - _wgslsmith_f_op_f32(func_5(1586f, _wgslsmith_f_op_f32(func_1(59883u, 31623i, Struct_3(true, Struct_1(vec3<u32>(u_input.a.x, 4294967295u, u_input.b), vec3<u32>(113079u, u_input.a.x, 32935u), false), vec3<f32>(-803f, -1000f, 2727f)))), Struct_1(vec3<u32>(1u, 32371u, u_input.a.x), vec3<u32>(24240u, u_input.b, u_input.a.x), false)))))));
    global1 = _wgslsmith_f_op_f32(ceil(208f));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -213f) - 1285f))));
    var var_3 = !vec4<bool>(var_0.b == min(var_0.b << (u_input.a.x % 32u), 18158i), !(var_1 && true), (u_input.b <= ~1u) || any(vec4<bool>(var_1, var_1, var_1, true)), true);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -104f), _wgslsmith_f_op_f32(f32(-1f) * -1421f), _wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(102f - var_0.c), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(round(-1715f)))), all(vec4<bool>(true, true, any(var_3.xz), var_1)))));
    let var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-9158i, 2147483647i, 0i, ~var_0.b), vec4<i32>(var_0.b, var_0.b, var_0.b, -46813i) ^ abs(vec4<i32>(47637i, -2147483647i, -1i, 2147483647i))), vec4<i32>(-_wgslsmith_mult_i32(46189i, -13568i), min(-var_0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, -2147483647i), vec2<i32>(-52767i, var_0.b))), ~var_0.b >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), u_input.a) % 32u), -var_0.b)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(4294967295u, 4294967295u, u_input.b) << (min(vec3<u32>(0u, 0u, u_input.a.x), vec3<u32>(1u, 80327u, 0u)) % vec3<u32>(32u)), ~(~vec3<u32>(9167u, 1u, var_5))), (firstLeadingBit(vec3<u32>(var_5, var_5, u_input.a.x)) ^ vec3<u32>(0u, u_input.b, var_5)) >> (vec3<u32>(18948u, ~10052u, max(u_input.a.x, 4294967295u)) % vec3<u32>(32u))), vec2<i32>(var_0.b, -_wgslsmith_mod_i32(~var_0.b, var_0.b)));
}

