struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: Struct_1) -> bool {
    let var_0 = ~vec2<u32>(~(~u_input.a), max(~abs(u_input.a), u_input.a | _wgslsmith_mod_u32(u_input.a, u_input.a)));
    var var_1 = ~_wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, var_0.x), vec4<u32>(0u, 126301u, 0u, u_input.a)), ~var_0.x, ~u_input.a), vec3<u32>(var_0.x, ~26600u << ((u_input.a & var_0.x) % 32u), u_input.a));
    let var_2 = Struct_2(false, arg_3, _wgslsmith_div_u32(105082u, 20307u));
    var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(53581u, u_input.a, 4294967295u << (var_2.c % 32u))), vec3<u32>(10449u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_2.c, 22195u), vec3<u32>(26163u, var_2.c, var_1.x)), 28698u), ~(~var_2.c))), vec3<u32>(u_input.a, 0u, _wgslsmith_div_u32(firstLeadingBit(u_input.a), ~_wgslsmith_mult_u32(1u, var_1.x))), vec3<u32>(var_0.x, ~abs(u_input.a), ~(~var_2.c)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) - _wgslsmith_f_op_f32(-arg_0))) == _wgslsmith_f_op_f32(-478f - _wgslsmith_f_op_f32(-arg_0)), var_2.b, var_1.x);
    return (2147483647i >> (_wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(4294967295u, 0u, var_3.c)), max(vec3<u32>(4294967295u, 2407u, var_1.x) ^ vec3<u32>(0u, 27333u, 85176u), vec3<u32>(var_0.x, u_input.a, var_0.x))) % 32u)) == _wgslsmith_div_i32(_wgslsmith_add_i32(27156i, arg_3.a.x), ~reverseBits(var_2.b.a.x));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3)));
    return vec4<f32>(673f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 * 312f))) * var_0) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), -952f)), var_0, var_0);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(all(select(vec2<bool>(func_3(1032f, vec2<bool>(false, true), vec3<i32>(-2147483647i, 1589i, -21519i), Struct_1(vec3<i32>(13558i, 1i, 2147483647i))), 0u == u_input.a), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false), any(vec3<bool>(false, true, false))), vec2<bool>(true, true))), Struct_1(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 15598i, 25033i), vec3<i32>(2147483647i, -259i, 2147483647i))), vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, 0u), ~u_input.a), 58013u, ~(~firstTrailingBit(16364u)), _wgslsmith_mult_u32(reverseBits(~1u), _wgslsmith_sub_u32(4748u << (0u % 32u), abs(u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-888f * -1000f) + _wgslsmith_f_op_f32(1207f + 1154f)) + _wgslsmith_f_op_f32(3432f - _wgslsmith_div_f32(314f, 552f))))));
    var var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(select(73978u, 25457u, false), u_input.a << (0u % 32u)), _wgslsmith_add_vec2_u32(min(vec2<u32>(u_input.a, 2812u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, u_input.a)))), vec2<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(u_input.a, 0u)), (vec2<u32>(53239u, u_input.a) ^ vec2<u32>(31448u, 13295u)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(71149u, 0u), vec2<u32>(u_input.a, 0u))), ~u_input.a));
    var var_2 = var_0.yxx;
    var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(select(~u_input.a, var_1.x, any(vec3<bool>(true, true, true))), var_1.x), vec2<u32>(1u, firstTrailingBit(11902u)) | ~vec2<u32>(var_1.x, 12619u)) ^ ~(~countOneBits(vec2<u32>(var_1.x, var_1.x) >> (vec2<u32>(52969u, var_1.x) % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-428f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1221f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_div_f32(1028f, -1000f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(func_4(arg_2, Struct_1(~firstLeadingBit(~vec3<i32>(1i, -2147483647i, -3946i))), vec4<u32>(arg_0.x, ~(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(41758u, 4294967295u, 1u), ~min(arg_0.yyx, arg_0.zwx)), arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(340f)), 447f, false))) * -195f))).x;
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 1346f)) - _wgslsmith_div_f32(-382f, -421f)), 1436f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(264f)) * _wgslsmith_f_op_f32(-1440f + -983f)), -133f, 506f)));
    var var_2 = vec4<i32>(-13617i, 0i, -54778i, max(-1i, ~52712i) << (~_wgslsmith_mod_u32(u_input.a, arg_0.x) % 32u));
    var var_3 = u_input.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(!select(true, false, false) && false, !(!all(vec3<bool>(false, true, true))), false, func_1(countOneBits(vec4<u32>(u_input.a, 66369u, 58922u, 28847u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 43823u), vec2<u32>(u_input.a, 24495u)), true) && true);
    var var_1 = Struct_3(min(-reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(0i, 0i, ~0i, 0i) << (vec4<u32>(~u_input.a, u_input.a >> (5210u % 32u), select(u_input.a, 46852u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a), vec4<u32>(52346u, 4294967295u, u_input.a, u_input.a))) % vec4<u32>(32u))), -1i, Struct_1(-(vec3<i32>(2147483647i, -2147483647i, 51139i) >> (select(vec3<u32>(u_input.a, 9975u, 52607u), vec3<u32>(8249u, u_input.a, 4294967295u), vec3<bool>(var_0.x, true, false)) % vec3<u32>(32u)))));
    let var_2 = vec3<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_4(1774f > _wgslsmith_f_op_f32(floor(-1142f)), Struct_1(vec3<i32>(1i, 1i, 1i)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(6484u, 4294967295u, u_input.a, 0u), vec4<u32>(u_input.a, 3322u, 37486u, u_input.a)), vec4<u32>(51740u, u_input.a, 57579u, 72660u) | vec4<u32>(1u, u_input.a, u_input.a, 0u)), -1185f)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1111f, 1593f))) + _wgslsmith_f_op_f32(-269f + 499f)))), _wgslsmith_f_op_f32(func_2()));
    var_1 = Struct_3(abs(var_1.a), 21204i, var_1.c);
    let var_3 = 9614i;
    let var_4 = min(_wgslsmith_mult_vec2_i32(~(-var_1.a.zz), -abs(vec2<i32>(var_3, -2147483647i))), _wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_mod_i32(2275i, var_1.b), -1i), firstTrailingBit(vec2<i32>(i32(-1i) * -2147483647i, reverseBits(var_1.b)))));
    var_1 = Struct_3(vec4<i32>(-min(_wgslsmith_div_i32(var_3, 9561i), -var_3), var_4.x, ~35322i, (1i >> (~u_input.a % 32u)) & 10446i), ~(((var_4.x << (0u % 32u)) ^ _wgslsmith_mult_i32(-1i, var_4.x)) ^ -1i), Struct_1(vec3<i32>(~(~2147483647i), var_1.b, -_wgslsmith_dot_vec3_i32(var_1.c.a, var_1.c.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xx, _wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(2147483647i, var_4.x)));
}

