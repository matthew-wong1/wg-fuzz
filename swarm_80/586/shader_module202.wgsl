struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 4294967295u, 21291u);

var<private> global1: Struct_3 = Struct_3(vec3<bool>(false, true, true), vec4<i32>(20380i, 0i, 23331i, 19858i));

var<private> global2: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-744f, 739f, 1000f), vec3<f32>(878f, 190f, -1000f), vec3<f32>(-709f, -623f, 1934f), vec3<f32>(-1000f, 579f, 1000f), vec3<f32>(-1000f, -492f, 1627f), vec3<f32>(142f, 1000f, 1094f), vec3<f32>(-791f, 128f, 615f), vec3<f32>(1251f, -333f, -746f), vec3<f32>(1978f, 1017f, 1745f), vec3<f32>(-597f, 668f, -156f), vec3<f32>(822f, 350f, -891f), vec3<f32>(-887f, -605f, 690f), vec3<f32>(-280f, -1841f, 1901f), vec3<f32>(-1122f, -508f, 1691f), vec3<f32>(-430f, -476f, 1412f));

var<private> global3: Struct_1;

var<private> global4: u32 = 1143u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> f32 {
    return -130f;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_4) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(4294967295u, vec4<bool>(false, (arg_2.a.x < arg_1.a.x) | false, any(select(global3.b, vec4<bool>(global3.b.x, arg_2.b.a.x, false, arg_2.b.a.x), vec4<bool>(false, arg_1.b.a.x, true, arg_2.b.a.x))), all(select(vec2<bool>(false, global3.b.x), vec2<bool>(arg_1.b.a.x, global3.b.x), vec2<bool>(false, true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1310f, -842f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1538f, -1241f) * vec2<f32>(593f, 1768f)), global3.b.x)) * vec2<f32>(1f, _wgslsmith_f_op_f32(-755f + -255f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1011f) * vec2<f32>(-1100f, -132f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1243f, 2157f) - vec2<f32>(-999f, 1654f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-796f, -893f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-528f, 703f))), select(vec2<bool>(false, arg_1.b.a.x), vec2<bool>(arg_2.b.a.x, arg_1.b.a.x), arg_0.b.a.x))))), Struct_1(23577u, global3.b));
    var var_1 = min(vec3<u32>(max(_wgslsmith_mod_u32(~arg_0.a.x, ~arg_2.a.x), arg_0.a.x | 4294967295u), var_0.a.a, reverseBits(var_0.a.a)), vec3<u32>(~countOneBits(_wgslsmith_mod_u32(10974u, 38287u)), min(var_0.c.a, arg_1.a.x), reverseBits(~(~arg_1.a.x))));
    global2 = array<vec3<f32>, 15>();
    global4 = ~(~_wgslsmith_sub_u32(24555u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 25647u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a, 79382u, 1u), vec3<u32>(26044u, global3.a, 5948u)))));
    var_0 = Struct_2(var_0.c, vec2<f32>(-1986f, -599f), var_0.a);
    return min(~abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(22927u, 0u, 12574u), vec3<u32>(var_1.x, 84903u, arg_0.a.x))), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_1.a, vec2<u32>(8003u, 4294967295u)), min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 10756u, 81783u), vec3<u32>(4294967295u, 9319u, 4294967295u)), _wgslsmith_mod_u32(global0.x, 76537u))), select(26802u, ~1u, arg_1.b.a.x), countOneBits(arg_2.a.x)));
}

fn func_2() -> Struct_4 {
    global1 = Struct_3(vec3<bool>(any(vec2<bool>(1u >= global0.x, all(global3.b))), global3.b.x, true), vec4<i32>(max(firstTrailingBit(-1i), -13508i) | _wgslsmith_mult_i32(-2147483647i << (global0.x % 32u), global1.b.x), _wgslsmith_sub_i32(global1.b.x, global1.b.x), -2147483647i, global1.b.x));
    var var_0 = Struct_4(~vec2<u32>(global3.a, _wgslsmith_sub_u32(~global3.a, 33356u)), Struct_3(!(!global1.a), ~(~(~vec4<i32>(-52961i, -78503i, u_input.a.x, global1.b.x)))), -_wgslsmith_clamp_i32(_wgslsmith_div_i32(~global1.b.x, -76242i), 0i, _wgslsmith_mult_i32(-global1.b.x, -u_input.b.x)));
    var_0 = Struct_4(vec2<u32>(var_0.a.x, ~(~_wgslsmith_clamp_u32(var_0.a.x, 58515u, var_0.a.x))), Struct_3(!global3.b.zxw, abs(~(-global1.b))), ~global1.b.x);
    var var_1 = Struct_1(~(global0.x | var_0.a.x), select(!select(!vec4<bool>(true, true, var_0.b.a.x, false), vec4<bool>(true, true, true, true), all(global3.b)), !vec4<bool>(true, var_0.b.a.x | false, !global3.b.x, var_0.b.a.x), !vec4<bool>(global3.b.x, false, global1.a.x, global1.a.x)));
    var var_2 = ~firstLeadingBit(~(~(vec3<u32>(var_1.a, var_1.a, global0.x) & vec3<u32>(var_1.a, 4294967295u, 27743u))));
    return Struct_4(_wgslsmith_mod_vec2_u32(var_0.a, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.a, 0u) >> (vec3<u32>(global3.a, 23137u, global0.x) % vec3<u32>(32u)), func_3(Struct_4(global0.xy, Struct_3(var_0.b.a, var_0.b.b), global1.b.x), Struct_4(var_0.a, Struct_3(vec3<bool>(false, var_0.b.a.x, true), global1.b), u_input.b.x), Struct_4(vec2<u32>(1u, var_1.a), Struct_3(var_0.b.a, var_0.b.b), 10312i))), 58299u)), var_0.b, _wgslsmith_div_i32(i32(-1i) * -20291i, var_0.c));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_4, arg_3: vec3<i32>) -> Struct_4 {
    let var_0 = Struct_2(Struct_1(~global3.a, select(vec4<bool>(arg_0 <= arg_0, false, true, 111061u == arg_1), global3.b, global3.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2273f, arg_0))), -754f) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -679f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1422f))))), Struct_1(_wgslsmith_mod_u32(global0.x, _wgslsmith_sub_u32(reverseBits(arg_2.a.x), arg_2.a.x)), vec4<bool>(all(vec3<bool>(global1.a.x, false, global1.a.x)), !arg_2.b.a.x, false, false)));
    var var_1 = _wgslsmith_sub_vec3_i32(-(~select(u_input.a, vec3<i32>(arg_2.c, arg_2.b.b.x, -1i), global1.a.x)) >> (vec3<u32>(arg_2.a.x, abs(~13146u), 1u) % vec3<u32>(32u)), reverseBits(arg_3) ^ ~arg_2.b.b.zyy);
    global2 = array<vec3<f32>, 15>();
    var var_2 = Struct_3(vec3<bool>(reverseBits(~arg_3.x) > -abs(-9569i), true, _wgslsmith_f_op_f32(abs(var_0.b.x)) >= _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 23901i, var_1.x) << (select(vec4<u32>(global3.a, 7639u, global0.x, arg_2.a.x), vec4<u32>(global0.x, arg_2.a.x, arg_2.a.x, arg_2.a.x), true) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, arg_2.c, ~53771i, 0i)) ^ -select(arg_2.b.b, vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), func_2().b.a.x));
    var var_3 = _wgslsmith_mult_vec2_u32(global0.yz | _wgslsmith_mult_vec2_u32(min(vec2<u32>(0u, 8093u), arg_2.a), countOneBits(vec2<u32>(1u, 0u))), ~abs(vec2<u32>(4294967295u, global0.x))) | global0.zz;
    return Struct_4(~arg_2.a, func_2().b, _wgslsmith_dot_vec2_i32(~(-arg_2.b.b.yy) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, -6754i), vec2<i32>(arg_3.x, 2147483647i)), firstLeadingBit(global1.b.yw)));
}

fn func_5(arg_0: Struct_4, arg_1: u32) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(1u, global0.x, 30531u), vec3<u32>(19272u, arg_1, 8257u), global1.a), vec3<u32>(firstTrailingBit(11211u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, arg_1, var_0.a.x), vec3<u32>(5905u, 19391u, 48579u)))), select(vec4<bool>(any(global3.b), true, global3.b.x & global3.b.x, global1.a.x), !global3.b, select(vec4<bool>(global3.b.x, var_0.b.a.x, true, false), global3.b, global1.a.x))), vec2<f32>(_wgslsmith_div_f32(1386f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(478f - -460f), _wgslsmith_f_op_f32(1194f - -1464f), true))), _wgslsmith_f_op_f32(ceil(-2099f))), Struct_1(~(_wgslsmith_sub_u32(global3.a, global0.x) ^ 32782u), select(vec4<bool>(73564u < var_0.a.x, true, all(vec3<bool>(global3.b.x, arg_0.b.a.x, false)), true), !(!global3.b), global1.a.x)));
    global0 = ~abs(reverseBits(reverseBits(vec3<u32>(arg_1, global3.a, 18560u))));
    var var_2 = global1.b.x;
    global0 = min(~_wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 24488u, 46169u), vec3<u32>(22124u, arg_1, global0.x)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1, arg_1, var_0.a.x), vec3<u32>(global0.x, global3.a, global3.a))), ~_wgslsmith_sub_vec3_u32(max(vec3<u32>(1u, 79719u, 29337u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)) << ((vec3<u32>(21415u, arg_1, 38868u) << (vec3<u32>(1u, global3.a, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(var_0.a.x, ~8230u, _wgslsmith_mult_u32(arg_1, global3.a))));
    return Struct_2(var_1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-310f, 1970f) + _wgslsmith_f_op_vec2_f32(-var_1.b)), Struct_1(var_1.c.a, global3.b));
}

fn func_6(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    global2 = array<vec3<f32>, 15>();
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global3.b.x, global1.b.x == global1.b.x);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1555f)), _wgslsmith_f_op_f32(step(-1192f, 527f)), true)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-610f, 2244f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-491f)) * _wgslsmith_f_op_f32(min(1657f, 1280f))))))));
    let var_2 = func_6(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-557f))), -488f), false, func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), ~(~global0.x), func_2(), -(vec3<i32>(u_input.b.x, global1.b.x, global1.b.x) >> (vec3<u32>(global0.x, 0u, global0.x) % vec3<u32>(32u)))), func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, -2182f))), 19232u, Struct_4(global0.yz, Struct_3(global3.b.zwy, vec4<i32>(2147483647i, 0i, global1.b.x, -5617i)), max(global1.b.x, global1.b.x)), vec3<i32>(1i, ~(-22540i), u_input.b.x)).a.x));
    let var_3 = vec2<i32>(global1.b.x, ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(global1.b.x ^ global1.b.x, _wgslsmith_dot_vec4_i32(global1.b, vec4<i32>(u_input.a.x, global1.b.x, global1.b.x, -58938i)), i32(-1i) * -30155i), _wgslsmith_div_i32(global1.b.x & u_input.a.x, func_4(-400f, 7202u, Struct_4(global0.yz, Struct_3(var_2.b.xzx, vec4<i32>(-22862i, -2147483647i, 12750i, global1.b.x)), global1.b.x), u_input.a).b.b.x)));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-1803f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1422f, 884f) * _wgslsmith_f_op_f32(186f - -3269f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-755f, -1500f, false)))) - 1741f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(516f * -1328f))) * -2337f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -508f)));
    global0 = ~_wgslsmith_div_vec3_u32(min(vec3<u32>(var_2.a, 1u, ~89702u), vec3<u32>(global3.a, ~global0.x, 22877u)), ~vec3<u32>(_wgslsmith_clamp_u32(global3.a, 1u, 0u), ~var_2.a, var_2.a));
    var_1 = -224f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.a, 64330u, 4294967295u, 1u), abs(vec4<u32>(global3.a, global0.x, 21989u, 39049u)))), min(vec3<u32>(1u, global3.a, _wgslsmith_div_u32(~0u, ~0u)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, global0.x, global3.a), vec3<u32>(4294967295u, 0u, var_2.a))) << (vec3<u32>(1u, 46320u, min(13068u, var_2.a)) % vec3<u32>(32u))), -51353i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_4.x, 980f, false)))))));
}

