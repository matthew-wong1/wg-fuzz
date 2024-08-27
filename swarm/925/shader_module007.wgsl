struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = arg_3;
    let var_1 = var_0;
    var var_2 = countOneBits(_wgslsmith_mult_vec4_u32(~abs(vec4<u32>(var_0.c.x, 43471u, var_0.c.x, 1u) << (vec4<u32>(u_input.a.x, var_0.c.x, 46653u, var_0.c.x) % vec4<u32>(32u))), firstLeadingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 1u, 30475u, arg_3.c.x), vec4<u32>(var_0.c.x, arg_3.c.x, 4294967295u, 0u)))));
    let var_3 = !(!var_0.b.x);
    var var_4 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.b.x, -_wgslsmith_add_i32(-arg_2.x, -arg_2.x)), -(_wgslsmith_add_i32(-10235i, u_input.b.x) << (arg_3.c.x % 32u)));
    return ~_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(var_0.a, -1786i, 2147483647i, var_1.a), arg_2, var_0.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-3629i, -746i, var_0.a, arg_2.x), arg_2)), ~(-vec4<i32>(15696i, 57086i, arg_2.x, 1i))), select(select(vec4<i32>(var_1.a, -1i, var_0.a, u_input.b.x), reverseBits(vec4<i32>(arg_2.x, 5755i, var_1.a, -19456i)), vec4<bool>(var_1.b.x, false, false, arg_3.b.x)), abs(reverseBits(arg_2)), true));
}

fn func_2(arg_0: Struct_4) -> u32 {
    var var_0 = Struct_1(~u_input.b.x, vec3<bool>(arg_0.a, true, arg_0.a), u_input.a.yy);
    var var_1 = abs(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.b.x, var_0.a) ^ var_0.a, abs(1i), ~(-var_0.a)), var_0.a, 45337i, u_input.b.x));
    var_1 = -_wgslsmith_sub_vec4_i32(func_3(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1132f, 396f, -1000f)))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 41192i, var_0.a), var_1.wzx), _wgslsmith_mult_i32(-19499i, -1i), _wgslsmith_mult_i32(var_1.x, var_1.x), _wgslsmith_clamp_i32(var_1.x, -44989i, -1i)), Struct_1(abs(var_1.x), !var_0.b, countOneBits(u_input.a.yz))), vec4<i32>(u_input.b.x, _wgslsmith_div_i32(max(var_1.x, -32367i), reverseBits(-59379i)), ~(2147483647i ^ var_0.a), u_input.b.x));
    var_1 = abs(firstLeadingBit(vec4<i32>(i32(-1i) * -1i, firstTrailingBit(-2147483647i), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 56i, var_1.x), var_1.xyw)), -abs(-27269i))));
    var var_2 = Struct_1(0i, select(select(vec3<bool>(false, var_0.b.x, arg_0.a), !(!vec3<bool>(var_0.b.x, true, arg_0.a)), select(vec3<bool>(true, var_0.b.x, false), vec3<bool>(arg_0.a, arg_0.a, var_0.b.x), true)), vec3<bool>(all(vec2<bool>(arg_0.a, false)), !var_0.b.x, 1i <= reverseBits(u_input.b.x)), vec3<bool>(false, arg_0.a, var_0.b.x)), vec2<u32>(_wgslsmith_mult_u32(var_0.c.x, _wgslsmith_clamp_u32(var_0.c.x, 74600u ^ var_0.c.x, 38670u)), ~(var_0.c.x ^ var_0.c.x)));
    return _wgslsmith_mod_u32(var_2.c.x, var_0.c.x) | ~firstLeadingBit(u_input.a.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a), ~arg_0.xyz), _wgslsmith_sub_u32(arg_0.x, 4294967295u));
    let var_1 = vec3<i32>(-(_wgslsmith_sub_i32(u_input.b.x >> (arg_0.x % 32u), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(26373i, u_input.b.x, 1i))) | _wgslsmith_dot_vec2_i32(func_3(vec2<f32>(1442f, -768f), vec3<f32>(-1267f, -440f, -1666f), vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x), Struct_1(2147483647i, vec3<bool>(true, true, false), u_input.a.xx)).yw, vec2<i32>(u_input.b.x, 2147483647i) | u_input.b.zy)), reverseBits(u_input.b.x), 1i);
    let var_2 = Struct_3(~(~u_input.a.x), arg_0.x);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1105f), -1000f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-207f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(302f, 448f) - _wgslsmith_f_op_f32(f32(-1f) * -700f)))), _wgslsmith_f_op_f32(ceil(483f)), -313f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_4 = -2147483647i;
    return var_2;
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = func_4(vec4<u32>(reverseBits(abs(126957u)), 28201u, u_input.a.x, ~(~_wgslsmith_div_u32(u_input.a.x, 40885u))), _wgslsmith_div_u32(u_input.a.x, ~min(func_2(Struct_4(true)), abs(u_input.a.x))));
    var var_1 = Struct_3(select(~4294967295u, u_input.a.x, !(arg_1.a.x < _wgslsmith_f_op_f32(floor(-709f)))), u_input.a.x);
    var_1 = func_4(vec4<u32>(1u, _wgslsmith_clamp_u32(~(~var_0.a), 81324u, var_1.b), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 52208u, 1u), ~vec4<u32>(u_input.a.x, 51244u, u_input.a.x, var_1.a)) ^ _wgslsmith_sub_u32(35352u, _wgslsmith_dot_vec3_u32(vec3<u32>(127159u, var_0.b, 4294967295u), vec3<u32>(1u, var_0.b, 1u))), var_1.a), _wgslsmith_sub_u32(select(_wgslsmith_add_u32(u_input.a.x, var_0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(54881u, 1u, 4294967295u, 53576u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, var_1.a, var_1.b, u_input.a.x), vec4<u32>(u_input.a.x, var_1.a, 1u, 1u))), any(select(vec2<bool>(false, true), vec2<bool>(false, true), true))), _wgslsmith_mod_u32(countOneBits(~var_0.b), var_1.b)));
    let var_2 = vec2<bool>(true, true);
    var var_3 = -2897i;
    return _wgslsmith_add_vec4_i32(~(~vec4<i32>(arg_1.b << (9129u % 32u), -10125i, -u_input.b.x, arg_1.b)), -_wgslsmith_sub_vec4_i32(~(vec4<i32>(-14693i, 19777i, arg_1.b, arg_1.b) >> (vec4<u32>(var_1.b, 1u, u_input.a.x, var_0.b) % vec4<u32>(32u))), vec4<i32>(arg_0 << (var_0.a % 32u), firstTrailingBit(-10759i), -1083i, arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-851f, _wgslsmith_f_op_f32(sign(-797f)), -718f, _wgslsmith_f_op_f32(-349f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(748f, -1561f))))));
    var var_1 = select(countOneBits(~max(_wgslsmith_mod_vec4_u32(vec4<u32>(58935u, 4294967295u, 10397u, 1140u), vec4<u32>(u_input.a.x, 46576u, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, 35941u, 15796u, 0u))), ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.a.x, 25218u, 0u, 1u)), reverseBits(select(vec4<u32>(0u, 1u, u_input.a.x, 2925u), vec4<u32>(1u, 4294967295u, 1u, 9493u), vec4<bool>(false, true, true, true)))), true);
    var var_2 = _wgslsmith_add_vec4_i32(func_1(u_input.b.x, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 282f, var_0.x) + vec4<f32>(626f, var_0.x, 354f, var_0.x))), u_input.b.x, ~(-17709i))), vec4<i32>(~(-u_input.b.x), u_input.b.x, -5353i, 1i));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(803f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 476f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-427f, var_3) + _wgslsmith_f_op_f32(step(var_3, var_0.x)))), _wgslsmith_f_op_f32(trunc(var_3)), -2023f));
    var var_5 = _wgslsmith_div_vec2_i32(vec2<i32>(abs(-_wgslsmith_add_i32(-2147483647i, u_input.b.x)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 2142i), u_input.b.yz), vec2<i32>(u_input.b.x, var_2.x)), func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, var_2.x, 22145i), var_2.yzw), Struct_2(vec4<f32>(-118f, 1000f, var_3, var_4.x), 2147483647i, u_input.b.x)).x, countOneBits(~26024i))), vec2<i32>(abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), var_2.yy), u_input.b.x, 1i)), _wgslsmith_div_i32(0i, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(917f + -1122f) + 1566f))), ~(-var_2.x), vec3<f32>(-458f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1076f + var_4.x), var_0.x, true)) - 270f), 853f));
}

