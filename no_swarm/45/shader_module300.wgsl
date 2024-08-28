struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_1(vec4<f32>(-1818f, 1075f, 806f, -970f), false), -2278f, vec3<bool>(false, false, true), vec4<bool>(false, false, true, false), vec2<u32>(1u, 30074u)), Struct_3(Struct_1(vec4<f32>(803f, -1912f, 793f, -1408f), true), -229f, vec3<bool>(false, true, true), vec4<bool>(false, false, true, true), vec2<u32>(4294967295u, 3039u)), Struct_3(Struct_1(vec4<f32>(191f, -1304f, -1622f, -523f), false), -1000f, vec3<bool>(false, false, false), vec4<bool>(false, false, false, false), vec2<u32>(6762u, 0u)), Struct_3(Struct_1(vec4<f32>(-1023f, -1000f, -587f, 974f), false), 241f, vec3<bool>(true, true, true), vec4<bool>(true, true, false, false), vec2<u32>(65838u, 0u)), Struct_3(Struct_1(vec4<f32>(2150f, -777f, -785f, 1000f), false), -466f, vec3<bool>(false, false, false), vec4<bool>(false, true, true, false), vec2<u32>(8373u, 0u)), Struct_3(Struct_1(vec4<f32>(1173f, 650f, -1798f, -1026f), false), -1053f, vec3<bool>(false, false, true), vec4<bool>(false, true, false, true), vec2<u32>(0u, 104334u)), Struct_3(Struct_1(vec4<f32>(394f, 645f, -1528f, 1000f), true), -861f, vec3<bool>(true, true, true), vec4<bool>(true, true, false, true), vec2<u32>(70697u, 0u)), Struct_3(Struct_1(vec4<f32>(-294f, 682f, -126f, 212f), true), 377f, vec3<bool>(false, true, true), vec4<bool>(false, false, true, false), vec2<u32>(0u, 1u)), Struct_3(Struct_1(vec4<f32>(-1220f, -1644f, 1896f, -902f), false), -914f, vec3<bool>(true, true, true), vec4<bool>(false, false, false, true), vec2<u32>(30108u, 1u)), Struct_3(Struct_1(vec4<f32>(-614f, 211f, 1235f, -1518f), false), -1000f, vec3<bool>(true, true, true), vec4<bool>(true, false, false, true), vec2<u32>(33323u, 11978u)), Struct_3(Struct_1(vec4<f32>(453f, 520f, 1000f, 1007f), true), -159f, vec3<bool>(false, true, false), vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 4294967295u)), Struct_3(Struct_1(vec4<f32>(1295f, -191f, -1248f, 523f), false), -1179f, vec3<bool>(false, true, false), vec4<bool>(true, true, false, true), vec2<u32>(0u, 12048u)), Struct_3(Struct_1(vec4<f32>(-126f, 458f, -205f, -675f), false), -210f, vec3<bool>(true, true, false), vec4<bool>(false, true, false, true), vec2<u32>(48554u, 1u)), Struct_3(Struct_1(vec4<f32>(2762f, 390f, 1253f, 433f), false), -317f, vec3<bool>(false, true, false), vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 15015u)), Struct_3(Struct_1(vec4<f32>(647f, 474f, -812f, 1832f), false), -667f, vec3<bool>(false, true, true), vec4<bool>(true, true, true, false), vec2<u32>(7639u, 20265u)), Struct_3(Struct_1(vec4<f32>(-117f, -1356f, -1694f, 1000f), false), -481f, vec3<bool>(true, false, false), vec4<bool>(true, true, false, false), vec2<u32>(0u, 0u)), Struct_3(Struct_1(vec4<f32>(-100f, -1852f, -614f, 291f), false), -439f, vec3<bool>(false, true, false), vec4<bool>(false, true, true, false), vec2<u32>(1u, 0u)), Struct_3(Struct_1(vec4<f32>(833f, 1394f, -1656f, 475f), true), 998f, vec3<bool>(true, false, true), vec4<bool>(true, true, false, true), vec2<u32>(5531u, 4294967295u)), Struct_3(Struct_1(vec4<f32>(-1255f, -268f, 1921f, -1719f), true), -2056f, vec3<bool>(true, true, false), vec4<bool>(true, false, true, true), vec2<u32>(33496u, 0u)), Struct_3(Struct_1(vec4<f32>(-103f, -1000f, 1972f, -843f), false), -175f, vec3<bool>(false, true, false), vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 4294967295u)), Struct_3(Struct_1(vec4<f32>(1389f, 586f, -328f, -1187f), true), -414f, vec3<bool>(false, true, true), vec4<bool>(false, false, true, false), vec2<u32>(1u, 0u)), Struct_3(Struct_1(vec4<f32>(-1000f, 1774f, 2677f, 1642f), false), 1252f, vec3<bool>(true, false, true), vec4<bool>(true, true, false, false), vec2<u32>(1u, 0u)), Struct_3(Struct_1(vec4<f32>(-1020f, 372f, 2360f, 553f), true), -583f, vec3<bool>(false, true, true), vec4<bool>(false, true, true, false), vec2<u32>(12764u, 5863u)), Struct_3(Struct_1(vec4<f32>(1000f, 1256f, 2481f, -767f), true), -555f, vec3<bool>(false, false, false), vec4<bool>(false, false, false, false), vec2<u32>(1u, 1u)), Struct_3(Struct_1(vec4<f32>(1329f, -1055f, -1386f, 1341f), false), -1005f, vec3<bool>(false, false, false), vec4<bool>(true, true, false, true), vec2<u32>(25145u, 37582u)), Struct_3(Struct_1(vec4<f32>(419f, 938f, 2326f, -832f), false), -543f, vec3<bool>(false, false, false), vec4<bool>(true, true, true, false), vec2<u32>(30130u, 23011u)), Struct_3(Struct_1(vec4<f32>(-1036f, -404f, -163f, 883f), false), 1225f, vec3<bool>(false, true, false), vec4<bool>(true, true, false, false), vec2<u32>(63621u, 24517u)), Struct_3(Struct_1(vec4<f32>(-1250f, -923f, -1468f, -795f), true), 1090f, vec3<bool>(true, true, true), vec4<bool>(true, true, false, true), vec2<u32>(0u, 21046u)), Struct_3(Struct_1(vec4<f32>(-312f, -828f, 274f, 249f), true), -725f, vec3<bool>(false, true, false), vec4<bool>(true, true, false, true), vec2<u32>(1u, 60159u)), Struct_3(Struct_1(vec4<f32>(1000f, 288f, 1017f, -723f), true), -2687f, vec3<bool>(true, true, true), vec4<bool>(false, true, true, false), vec2<u32>(0u, 0u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    var var_0 = global0[_wgslsmith_index_u32(~((u_input.a >> (69965u % 32u)) << (u_input.a % 32u)), 30u)];
    let var_1 = ~_wgslsmith_clamp_i32(11508i >> (~u_input.d.x % 32u), _wgslsmith_sub_i32(0i, u_input.b.x & 1i) | _wgslsmith_dot_vec2_i32(vec2<i32>(25169i, 0i) << (u_input.d.xx % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(u_input.b.yz, u_input.b.xy)), ~(-1i));
    global0 = array<Struct_3, 30>();
    var var_2 = false;
    var_2 = var_0.a.b;
    return vec4<u32>(~u_input.d.x, var_0.e.x, ~23852u | _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec4_u32(u_input.d, countOneBits(vec4<u32>(51863u, arg_0, 26406u, 15837u)))), u_input.d.x);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.d;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(413f, 388f, 820f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-650f, -768f, -1114f), vec3<f32>(-465f, -429f, -454f), false)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1004f, -1777f, 1404f) + vec3<f32>(1000f, -338f, 1007f)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(step(1000f, -1842f)), _wgslsmith_f_op_f32(361f * -956f), 1694f), vec3<f32>(-1052f, _wgslsmith_f_op_f32(floor(-1160f)), _wgslsmith_f_op_f32(floor(868f)))))));
    var_0 = func_3(max(u_input.d.x << (1u % 32u), var_0.x));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(min(var_1.x, -655f)), _wgslsmith_f_op_f32(-var_1.x), -1000f)), false), max(u_input.b.x, u_input.b.x));
    var var_3 = vec2<i32>(~(1i | _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-43270i, var_2.b), u_input.b.xx), u_input.b.xw)), var_2.b);
    return var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = vec3<bool>(!arg_1.b, _wgslsmith_sub_i32(2147483647i & u_input.b.x, ~_wgslsmith_mult_i32(u_input.c, 17050i)) > (-u_input.c & -20557i), arg_0.b);
    var var_1 = u_input.c;
    global0 = array<Struct_3, 30>();
    let var_2 = 18950u;
    var var_3 = arg_0.a.x;
    return _wgslsmith_f_op_f32(step(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x), _wgslsmith_f_op_f32(-arg_1.a.x))) + arg_1.a.x)));
}

fn func_1(arg_0: vec4<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_4(func_2(), func_2())), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(137f, 1137f) - _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-615f)) * arg_0.x), 591f))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(-887f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-1059f * 457f)) * -721f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1031f + 828f)), _wgslsmith_f_op_f32(arg_0.x * 103f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-521f)))), _wgslsmith_f_op_f32(-arg_0.x))), func_2().a.x);
    var var_1 = false;
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, 655f, _wgslsmith_f_op_f32(-667f + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-767f * 1000f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(909f, -803f, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(vec4<f32>(656f, -1384f, -1000f, arg_0.x) * vec4<f32>(-860f, var_0.x, 273f, arg_0.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(151f, -589f, arg_0.x, 1733f), arg_0)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 476f) + _wgslsmith_div_f32(arg_0.x, var_0.x)), 1931f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1257f + var_0.x)), 308f))));
    return select(abs(u_input.b) << (countOneBits(vec4<u32>(u_input.a, 40648u, u_input.d.x, u_input.d.x)) % vec4<u32>(32u)), -((u_input.b & u_input.b) >> (u_input.d % vec4<u32>(32u))), 18190i == u_input.b.x) & vec4<i32>(_wgslsmith_mod_i32(u_input.c, firstTrailingBit(u_input.c) | 34015i), -38364i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, u_input.c, 2147483647i), select(~vec3<i32>(1i, u_input.c, u_input.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.b.x, 51430i), u_input.b.xzx), true)), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    var var_0 = u_input.d;
    var var_1 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(u_input.b << ((~vec4<u32>(115334u, u_input.a, 0u, var_0.x) ^ ~u_input.d) % vec4<u32>(32u)), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(157f, 1519f, -1916f, -317f))), u_input.b));
    var_1 = u_input.b;
    var_1 = max(vec4<i32>(1i, u_input.c, firstLeadingBit(2147483647i), 0i << (~(~u_input.a) % 32u)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_1.x, -20404i), 1i, ~(-17974i), select(u_input.b.x, -1i, true)), ~u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), 49434u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -250f)) + 1605f));
}

