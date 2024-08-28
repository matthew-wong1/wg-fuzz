struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1016f, 536f, -122f, 414f)))))));
    var var_1 = arg_1;
    var_1 = arg_1;
    var var_2 = -(arg_2.yw ^ arg_2.yz);
    var_1 = Struct_1(~var_1.a, ~firstTrailingBit(_wgslsmith_mult_u32(57326u, 18237u)));
    return 0u;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(~countOneBits(reverseBits(4293u)), firstLeadingBit(countOneBits(_wgslsmith_mult_u32(reverseBits(u_input.d.x), func_3(arg_3.x, Struct_1(53447u, 18171u), vec4<i32>(17980i, 23483i, u_input.c, arg_0))))));
    var_0 = Struct_1(0u, abs((u_input.d.x & ~1u) << (var_0.a % 32u)));
    let var_1 = Struct_1(_wgslsmith_div_u32(u_input.d.x, ~var_0.a & var_0.a), 1u);
    var_0 = var_1;
    var_0 = var_1;
    return var_1;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = arg_2;
    var var_1 = true;
    var_1 = !(any(vec4<bool>(true, true, any(vec2<bool>(true, false)), arg_2.b <= 4294967295u)) && any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), any(vec2<bool>(false, true)))));
    let var_2 = firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(abs(59398u), _wgslsmith_sub_u32(arg_2.b, 82353u)), _wgslsmith_clamp_u32(~u_input.b.x, func_3(false, Struct_1(37160u, 1u), vec4<i32>(u_input.a, 24981i, 2147483647i, arg_0.x)), ~45273u)), _wgslsmith_add_u32(arg_2.a, reverseBits(max(23945u, arg_1.a)))));
    let var_3 = Struct_1(~var_0.b, var_0.b);
    return 0u;
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = firstLeadingBit(firstLeadingBit(_wgslsmith_div_i32(max(39708i, 33402i), min(firstLeadingBit(1i), -u_input.c))));
    var_0 = ~(-(~_wgslsmith_add_i32(u_input.c, u_input.a)));
    let var_1 = vec4<i32>(-1i | -_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(1i, 2147483647i))), _wgslsmith_sub_i32(u_input.c, ~_wgslsmith_add_i32(u_input.c | u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(2147483647i, -74927i)))), min(u_input.a, -13848i), ~17384i);
    var_0 = var_1.x;
    let var_2 = u_input.d.wwx;
    return 1u;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(46202u, _wgslsmith_mod_u32(abs(_wgslsmith_clamp_u32(4294967295u, 10569u, ~u_input.b.x)), ~(17894u ^ _wgslsmith_sub_u32(u_input.b.x, 20357u))));
    let var_1 = Struct_1(var_0.b, func_5(Struct_1(1u, func_4(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, arg_0), vec2<i32>(u_input.c, u_input.c)), Struct_1(4294967295u, var_0.b), func_2(49965i, vec3<f32>(853f, 642f, 2004f), vec3<bool>(false, true, false), vec4<bool>(true, false, false, false)), firstTrailingBit(u_input.c)))));
    let var_2 = var_1;
    var var_3 = ~(~min(~(~60597u), 1u | _wgslsmith_mult_u32(6925u, u_input.b.x)));
    return var_1;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = func_2(max(u_input.a, 40790i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1635f * -118f) + arg_1), -1199f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_1)))))), vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false)), !select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, false, true)), select(true, true, true)));
    var var_2 = arg_0.b;
    let var_3 = var_0;
    let var_4 = func_1(2147483647i);
    return var_4;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = vec3<u32>(func_3(true, Struct_1(0u, arg_1.a << (~arg_0.b % 32u)), ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(-49535i, 0i, 0i, arg_2), vec4<i32>(arg_2, -2147483647i, 8103i, -2147483647i)))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(reverseBits(u_input.b), select(vec2<u32>(arg_1.b, arg_0.b), vec2<u32>(29771u, 39532u), vec2<bool>(false, true))), arg_1.a) | _wgslsmith_add_u32(34656u, 1u), ~u_input.d.x);
    var var_1 = Struct_1(14558u, arg_1.a);
    var var_2 = func_6(func_2(_wgslsmith_div_i32(-u_input.c, ~2147483647i), vec3<f32>(-802f, _wgslsmith_f_op_f32(f32(-1f) * -734f), _wgslsmith_f_op_f32(ceil(-806f))), vec3<bool>(false, select(true, true, true), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)))), !vec4<bool>(true, any(vec2<bool>(false, true)), all(vec2<bool>(false, true)), false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1020f + 1f))), Struct_1(~_wgslsmith_dot_vec2_u32(u_input.d.yy << (u_input.d.yx % vec2<u32>(32u)), abs(var_0.xy)), ~func_1(-15093i).a), vec2<u32>(~1u, min(1u, arg_1.a) ^ _wgslsmith_div_u32(~1u, ~1u)));
    let var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(-select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, arg_2), vec2<i32>(arg_2, arg_2)), ~(-64863i), any(vec4<bool>(false, true, true, true))), 5402i, _wgslsmith_mult_i32(u_input.a, abs(_wgslsmith_mult_i32(-1i, 2147483647i)))), -vec3<i32>(u_input.a, abs(_wgslsmith_sub_i32(-1i, arg_2)), ~_wgslsmith_mult_i32(arg_2, -2147483647i)));
    var var_4 = ~abs(select(u_input.b, ~_wgslsmith_clamp_vec2_u32(var_0.xy, u_input.b, vec2<u32>(u_input.d.x, arg_1.a)), vec2<bool>(true, false)));
    return arg_0;
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = vec4<u32>(24546u, reverseBits(37063u), _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_1.a, 1u, arg_0.a, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_3.a, arg_3.a, arg_3.a) << (u_input.d % vec4<u32>(32u)), vec4<u32>(firstTrailingBit(0u), ~61148u, 50608u, ~u_input.b.x))), arg_2.x);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1373f, -1000f, 1052f, 738f), vec4<f32>(-624f, 258f, 1735f, -735f), true))), vec4<f32>(_wgslsmith_f_op_f32(sign(246f)), _wgslsmith_f_op_f32(929f * 221f), -1633f, _wgslsmith_f_op_f32(f32(-1f) * -792f))))), func_6(arg_3, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2382f, _wgslsmith_f_op_f32(-276f - 527f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(727f - 1204f) + _wgslsmith_f_op_f32(404f + -213f))), Struct_1(firstLeadingBit(1u), _wgslsmith_mod_u32(var_0.x, arg_1.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.b, arg_2.x) << (vec2<u32>(u_input.b.x, 17669u) % vec2<u32>(32u)), max(countOneBits(u_input.d.ww), u_input.d.wz))).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_sub_u32(~u_input.b.x, ~5452u), _wgslsmith_mod_u32(64900u, u_input.b.x));
    let x = u_input.a;
    s_output = func_8(func_7(func_6(func_1(-u_input.a), -1079f, Struct_1(abs(u_input.d.x), 1274u & u_input.b.x), vec2<u32>(14527u, ~1u)), func_6(func_2(u_input.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(290f, -1826f, -834f)), vec3<bool>(true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(667f))), func_2(abs(-1948i), vec3<f32>(-1000f, -1093f, -221f), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false))), ~u_input.d.zw), u_input.a), Struct_1(~_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 35394u), ~u_input.d.x), var_0.b), vec2<u32>(~(u_input.d.x >> (u_input.d.x % 32u)), 59229u), Struct_1(_wgslsmith_div_u32(func_5(func_6(Struct_1(var_0.b, u_input.b.x), 2065f, Struct_1(u_input.d.x, var_0.b), u_input.b)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, u_input.b.x, u_input.d.x, 0u), u_input.d), min(var_0.b, var_0.a))), _wgslsmith_add_u32(~1u, _wgslsmith_mult_u32(var_0.a, reverseBits(var_0.a)))));
}

