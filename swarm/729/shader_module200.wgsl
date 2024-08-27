struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_5) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.b.x, 350f, -1226f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, 903f) + arg_2))))), u_input.c, vec4<bool>(true, true, true, true), arg_3.a);
    var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-237f + arg_2.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(2646f + var_0.a.x), _wgslsmith_f_op_f32(arg_3.a.b.x * arg_3.a.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1033f + _wgslsmith_f_op_f32(max(-1000f, arg_2.x))))), arg_3.b.x), -(~vec4<i32>(4072i, _wgslsmith_dot_vec3_i32(var_0.b.zwx, vec3<i32>(-2147483647i, var_0.b.x, 1i)), arg_0, min(12505i, var_0.b.x))), select(select(vec4<bool>(true, true, true, true), select(var_0.c, !var_0.c, var_0.c), true), var_0.c, !(_wgslsmith_mult_i32(1i, arg_0) >= min(var_0.b.x, u_input.b.x))), arg_3.a);
    var var_1 = !(!(!var_0.c));
    var var_2 = var_0.b.x;
    var var_3 = vec4<f32>(var_0.a.x, 908f, -1374f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-643f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1983f * arg_3.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b.x)))));
    return abs(_wgslsmith_add_u32(97157u, select(8216u, ~arg_1, true)));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<bool>) -> vec2<f32> {
    let var_0 = ~(~vec4<u32>(u_input.d, max(arg_1.x, 1u) << (func_3(u_input.c.x, arg_0, vec3<f32>(1000f, 473f, 601f), Struct_5(Struct_1(1u, vec3<f32>(-1699f, -1000f, 1612f)), vec3<f32>(-732f, 402f, -2102f))) % 32u), abs(~0u), u_input.d));
    var var_1 = select(!select(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), select(!vec4<bool>(arg_2.x, true, arg_2.x, false), arg_2, any(arg_2.yx)), !arg_2.x), arg_2, vec4<bool>(arg_2.x, any(vec3<bool>(true, true, true)), arg_2.x, !(_wgslsmith_f_op_f32(f32(-1f) * -848f) != _wgslsmith_f_op_f32(floor(-193f)))));
    var_1 = !select(select(vec4<bool>(true, 23431i >= u_input.b.x, !var_1.x, true), !select(arg_2, arg_2, false), vec4<bool>(any(vec3<bool>(arg_2.x, false, var_1.x)), true, true | arg_2.x, true)), select(select(arg_2, arg_2, arg_2.x), !select(vec4<bool>(false, var_1.x, false, false), arg_2, false), arg_2), ~110660u <= var_0.x);
    var_1 = arg_2;
    let var_2 = false;
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -511f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1158f, 421f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(209f, 1935f) + vec2<f32>(422f, -753f)))))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(1u, vec4<u32>(40896u << (1u % 32u), 4294967295u, func_3(u_input.c.x, u_input.d, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1789f, -1869f, 1597f), vec3<f32>(438f, 870f, 1079f), vec3<bool>(true, false, true))), Struct_5(Struct_1(u_input.d, vec3<f32>(-719f, 475f, 126f)), vec3<f32>(-869f, -353f, 450f))), select(~4294967295u, ~u_input.d, any(vec3<bool>(true, true, true)))), vec4<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), true, true))));
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.d, 1u, u_input.d, 51268u), vec4<u32>(4294967295u, u_input.d, 35977u, u_input.d)), vec4<u32>(u_input.d, u_input.d, 0u, u_input.d) ^ vec4<u32>(136363u, 38357u, 0u, u_input.d)), 1u), u_input.d), u_input.d, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32((vec4<u32>(u_input.d, 40478u, u_input.d, u_input.d) << (vec4<u32>(2713u, 0u, 15932u, u_input.d) % vec4<u32>(32u))) >> (~vec4<u32>(4294967295u, 66654u, 42054u, u_input.d) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(4294967295u, 35346u, u_input.d, 51368u) >> (vec4<u32>(105110u, 110063u, u_input.d, u_input.d) % vec4<u32>(32u)))), 0u));
    var var_2 = Struct_1(firstLeadingBit(u_input.d), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1774f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 212f), var_0.x)))));
    var_2 = Struct_1(var_2.a | func_3(~(-u_input.a), 1u, vec3<f32>(-837f, 913f, -1616f), Struct_5(Struct_1(27029u, var_2.b), _wgslsmith_f_op_vec3_f32(ceil(var_2.b)))), var_2.b);
    var var_3 = vec2<u32>(var_1.x, 0u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)));
}

fn func_1() -> u32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(1u, 33983u, u_input.d, u_input.d)), ~(vec4<u32>(u_input.d, 1u, 0u, 49076u) >> (vec4<u32>(u_input.d, 62641u, 0u, 148193u) % vec4<u32>(32u))))), u_input.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1347f, 435f, 1155f, -873f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1127f, -510f, -1429f, 1003f), vec4<f32>(-871f, -771f, -322f, -1373f))))), vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 408f))), _wgslsmith_f_op_f32(func_2()), true)), _wgslsmith_sub_vec4_i32(vec4<i32>(13502i, -23180i, i32(-1i) * -2147483647i, u_input.c.x) & -u_input.c, vec4<i32>(u_input.c.x, -u_input.c.x, _wgslsmith_mod_i32(1i, -u_input.c.x), ~(-2147483647i))));
    var var_1 = u_input.d;
    var var_2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-298f, var_0.d), 1615f)))), _wgslsmith_f_op_f32(var_0.c.x - -808f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c.x, var_0.c.x))))), -(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(var_0.b, 0i, -7886i, 43032i)), u_input.c) >> (~(~var_0.a.a) % vec4<u32>(32u))), select(vec4<bool>(true, !(-2500f == var_0.c.x), true, (14307u == u_input.d) || true), !vec4<bool>(all(vec2<bool>(false, true)), any(vec3<bool>(true, true, true)), true, true), vec4<bool>(true, true, true, true)), Struct_1(u_input.d, vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.c.x, -1403f))), _wgslsmith_f_op_f32(sign(var_0.d)))));
    var_1 = var_2.d.a;
    var_1 = _wgslsmith_mult_u32(var_2.d.a, u_input.d);
    return ~(~abs(44152u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_5) -> vec4<bool> {
    let var_0 = ~(abs(vec4<u32>(select(arg_1.d.a, 54389u, arg_1.c.x), 1u, ~86696u, _wgslsmith_mult_u32(15230u, arg_2.a.a))) ^ ~(~countOneBits(vec4<u32>(44616u, arg_0.a, 1u, arg_0.a))));
    var var_1 = var_0.xy;
    let var_2 = Struct_3(Struct_2(var_0), 23771i, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, arg_2.a.b.x, 1000f, _wgslsmith_f_op_f32(ceil(arg_2.a.b.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(189f, arg_2.a.b.x, arg_2.b.x, 602f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-240f, arg_2.a.b.x, -2556f, 544f), vec4<f32>(arg_0.b.x, arg_1.a.x, 1000f, 1000f))), arg_1.c)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.b.x, arg_1.a.x, arg_0.b.x, arg_2.b.x) - vec4<f32>(-1000f, arg_0.b.x, 770f, 701f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -425f) - _wgslsmith_div_f32(428f, _wgslsmith_f_op_f32(-1310f * arg_1.d.b.x))))), abs(u_input.c ^ abs(arg_1.b)) << (abs(var_0) % vec4<u32>(32u)));
    var_1 = ~vec2<u32>(var_0.x >> (70074u % 32u), ~_wgslsmith_add_u32(_wgslsmith_div_u32(arg_2.a.a, arg_0.a), ~arg_2.a.a));
    return !(!vec4<bool>(all(!vec4<bool>(true, true, arg_1.c.x, true)), arg_1.c.x, _wgslsmith_div_f32(-1093f, -869f) >= _wgslsmith_f_op_f32(var_2.d - -885f), any(select(vec2<bool>(arg_1.c.x, false), vec2<bool>(true, arg_1.c.x), vec2<bool>(arg_1.c.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = true;
    var var_2 = !func_5(Struct_1(~func_1(), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1193f), 1f, _wgslsmith_div_f32(-1097f, -1694f))), Struct_4(vec3<f32>(-1000f, _wgslsmith_f_op_f32(func_2()), -102f), _wgslsmith_add_vec4_i32(abs(vec4<i32>(0i, 0i, -1i, var_0.x)), u_input.c << (vec4<u32>(u_input.d, u_input.d, 4294967295u, 20909u) % vec4<u32>(32u))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), Struct_1(countOneBits(u_input.d), vec3<f32>(-794f, 1015f, -2940f))), Struct_5(Struct_1(u_input.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(298f, 919f, 269f))), vec3<f32>(1f, 1f, 1f)));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 428f), vec2<f32>(-1302f, -1149f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2360f, -625f) - vec2<f32>(-1526f, 1569f))))))));
    var_1 = all(vec3<bool>(false, true, all(select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_2.x, false, false), false))));
    var var_4 = Struct_5(Struct_1(u_input.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.x, -284f, 1013f)))), vec3<f32>(var_3.x, _wgslsmith_f_op_f32(trunc(1026f)), _wgslsmith_f_op_f32(f32(-1f) * -1369f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(587f, -257f, 1253f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1647f, -1317f, -1021f), vec3<f32>(var_3.x, var_3.x, var_3.x), vec3<bool>(var_2.x, var_2.x, false)))))));
    var var_5 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_4(u_input.d, vec4<u32>(var_4.a.a, u_input.d, 61843u, 1u), vec4<bool>(var_2.x, false, true, true))).x)))))), var_4.a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_div_u32(1u, u_input.d), 4294967295u, ~u_input.d));
}

