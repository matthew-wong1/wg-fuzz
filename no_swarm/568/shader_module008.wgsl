struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<bool>(false, false, false), 15318u, vec2<f32>(-186f, -291f)), Struct_1(vec3<bool>(false, true, true), 0u, vec2<f32>(660f, -415f)), Struct_1(vec3<bool>(false, true, true), 41643u, vec2<f32>(-644f, -1846f)), Struct_1(vec3<bool>(false, false, false), 0u, vec2<f32>(-801f, -1363f)), Struct_1(vec3<bool>(true, false, true), 65090u, vec2<f32>(-1652f, 794f)), Struct_1(vec3<bool>(true, true, true), 0u, vec2<f32>(-813f, -387f)), Struct_1(vec3<bool>(false, false, true), 74517u, vec2<f32>(-198f, -338f)), Struct_1(vec3<bool>(true, false, false), 8455u, vec2<f32>(-901f, -763f)), Struct_1(vec3<bool>(false, false, false), 11948u, vec2<f32>(756f, 1194f)), Struct_1(vec3<bool>(true, false, true), 99831u, vec2<f32>(-738f, -560f)), Struct_1(vec3<bool>(false, true, true), 38920u, vec2<f32>(623f, 859f)), Struct_1(vec3<bool>(true, true, true), 19458u, vec2<f32>(-566f, 187f)), Struct_1(vec3<bool>(false, true, true), 1936u, vec2<f32>(-268f, 362f)), Struct_1(vec3<bool>(false, false, true), 4294967295u, vec2<f32>(-1317f, -437f)), Struct_1(vec3<bool>(false, true, false), 1u, vec2<f32>(-815f, 978f)), Struct_1(vec3<bool>(true, true, false), 9210u, vec2<f32>(607f, 1000f)), Struct_1(vec3<bool>(false, false, false), 41595u, vec2<f32>(816f, -413f)), Struct_1(vec3<bool>(false, false, false), 30142u, vec2<f32>(-2124f, 1266f)), Struct_1(vec3<bool>(true, true, false), 0u, vec2<f32>(1554f, 1081f)), Struct_1(vec3<bool>(true, true, false), 65939u, vec2<f32>(-330f, 165f)), Struct_1(vec3<bool>(false, true, true), 13622u, vec2<f32>(-149f, -1347f)), Struct_1(vec3<bool>(true, false, true), 103289u, vec2<f32>(499f, 516f)), Struct_1(vec3<bool>(true, true, true), 4294967295u, vec2<f32>(853f, 1752f)), Struct_1(vec3<bool>(false, true, true), 55533u, vec2<f32>(391f, -1732f)), Struct_1(vec3<bool>(false, false, false), 7459u, vec2<f32>(-349f, 380f)), Struct_1(vec3<bool>(true, false, true), 0u, vec2<f32>(-183f, 1103f)), Struct_1(vec3<bool>(false, true, false), 4294967295u, vec2<f32>(-1224f, 676f)), Struct_1(vec3<bool>(false, false, true), 59832u, vec2<f32>(1285f, -1000f)), Struct_1(vec3<bool>(true, false, true), 33156u, vec2<f32>(-1229f, -289f)));

var<private> global1: vec3<i32>;

var<private> global2: vec3<i32> = vec3<i32>(-1i, -13369i, -1i);

var<private> global3: vec3<f32>;

var<private> global4: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<bool>(true, false, false), 78806u, vec2<f32>(-1606f, 584f)), Struct_1(vec3<bool>(false, false, false), 0u, vec2<f32>(-132f, -805f)), Struct_1(vec3<bool>(true, false, true), 1508u, vec2<f32>(-1413f, 632f)), Struct_1(vec3<bool>(true, false, false), 4294967295u, vec2<f32>(-782f, -128f)), Struct_1(vec3<bool>(false, true, true), 1u, vec2<f32>(-666f, -763f)), Struct_1(vec3<bool>(false, false, false), 4294967295u, vec2<f32>(914f, -832f)), Struct_1(vec3<bool>(false, false, true), 1u, vec2<f32>(386f, -924f)), Struct_1(vec3<bool>(true, true, true), 52591u, vec2<f32>(-1214f, 272f)), Struct_1(vec3<bool>(false, true, true), 1u, vec2<f32>(-1026f, -1592f)), Struct_1(vec3<bool>(false, false, false), 1u, vec2<f32>(-990f, -440f)), Struct_1(vec3<bool>(true, false, false), 4294967295u, vec2<f32>(298f, 1403f)), Struct_1(vec3<bool>(true, false, true), 28114u, vec2<f32>(713f, -100f)), Struct_1(vec3<bool>(true, false, false), 70102u, vec2<f32>(-688f, 1829f)), Struct_1(vec3<bool>(false, true, false), 61925u, vec2<f32>(-469f, 1436f)), Struct_1(vec3<bool>(true, true, false), 29138u, vec2<f32>(-341f, -879f)), Struct_1(vec3<bool>(true, false, true), 0u, vec2<f32>(245f, 904f)), Struct_1(vec3<bool>(true, false, false), 129188u, vec2<f32>(-984f, 561f)), Struct_1(vec3<bool>(false, false, false), 1u, vec2<f32>(-642f, -358f)), Struct_1(vec3<bool>(false, false, false), 4294967295u, vec2<f32>(1870f, -352f)), Struct_1(vec3<bool>(false, true, true), 1u, vec2<f32>(-727f, 1019f)), Struct_1(vec3<bool>(true, true, true), 4294967295u, vec2<f32>(367f, 166f)), Struct_1(vec3<bool>(false, false, true), 0u, vec2<f32>(931f, -986f)), Struct_1(vec3<bool>(true, false, true), 4294967295u, vec2<f32>(-1858f, 1192f)), Struct_1(vec3<bool>(false, true, false), 66684u, vec2<f32>(-1392f, 534f)), Struct_1(vec3<bool>(true, false, false), 58550u, vec2<f32>(-1043f, -728f)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(vec3<bool>(true, true, true), 1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -474f)));
    global0 = array<Struct_1, 29>();
    return 2581i;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = ~u_input.a.x;
    var var_1 = Struct_1(arg_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(48835u, ~countOneBits(u_input.a.x), _wgslsmith_dot_vec2_u32(~u_input.a.zx, ~u_input.a.xz)), _wgslsmith_sub_vec3_u32(min(u_input.a, vec3<u32>(29711u, u_input.a.x, 0u)), vec3<u32>(1u, 50185u, 0u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1.c.x * global3.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.c.x, -695f))))));
    var var_2 = Struct_2(Struct_1(!(!vec3<bool>(true, arg_1.a.x, arg_1.a.x)), _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(var_1.b, 25863u, var_1.b, 11353u)), vec4<u32>(min(u_input.a.x, 8596u), reverseBits(4294967295u), var_1.b, ~4294967295u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1416f, arg_1.c.x)) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -478f)))));
    let var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.xz, vec2<u32>(~(~var_2.a.b), 4294967295u >> (~4294967295u % 32u))), max(reverseBits(u_input.a.zx), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(var_2.a.b, u_input.a.x)), abs(u_input.a.yz ^ vec2<u32>(1u, 17516u)))));
    let var_4 = vec4<u32>(_wgslsmith_dot_vec2_u32(~(~u_input.a.zz) << (var_3 % vec2<u32>(32u)), min(u_input.a.yx, vec2<u32>(var_3.x, var_1.b))), _wgslsmith_mod_u32(0u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.a.b, 55575u, 1u, var_1.b), ~vec4<u32>(u_input.a.x, arg_1.b, var_1.b, 1u))), var_2.a.b, 0u);
    return _wgslsmith_sub_vec3_i32(abs(abs(firstLeadingBit(countOneBits(vec3<i32>(-2147483647i, global1.x, global2.x))))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global2.x, -1i), -vec3<i32>(global2.x, 0i, 2147483647i)) << (0u % 32u), ~(~arg_0), ~reverseBits(firstLeadingBit(2147483647i))));
}

fn func_1() -> vec2<i32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + 495f)), _wgslsmith_f_op_f32(ceil(global3.x)), global3.x);
    global1 = vec3<i32>(~func_2(), abs(global2.x), -29649i) ^ ~_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x ^ 69182i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global2.x, global2.x), vec3<i32>(20407i, 58554i, 1i)), -2147483647i), func_3(func_2(), Struct_1(vec3<bool>(false, true, false), 30007u, vec2<f32>(var_0.x, 949f))));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-639f + global3.x), global3.x, 483f)));
    var var_1 = vec2<u32>(~reverseBits(~0u) | ~min(_wgslsmith_mult_u32(0u, 0u), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, u_input.a.x, u_input.a.x))), _wgslsmith_clamp_u32(0u, ~4294967295u, u_input.a.x));
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, var_0.x, 1647f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-478f, var_0.x, global3.x), vec3<f32>(global3.x, global3.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-518f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), -348f)), -888f, -925f) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(924f, var_0.x, -1000f)))))));
    return global1.yz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec2<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, 143f, global3.x), vec3<f32>(global3.x, var_1.x, -1427f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-694f, global3.x, 1715f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(892f + var_1.x), global3.x, global3.x)));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-152f, -255f, global3.x) * vec3<f32>(var_1.x, 982f, -566f)), vec3<f32>(379f, global3.x, var_1.x)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -2490f, global3.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(311f, -542f, var_1.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, var_1.x, -1513f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1669f, -994f, 404f))))), true)));
    var var_2 = ~1u;
    global2 = -_wgslsmith_div_vec3_i32(vec3<i32>(-7266i, ~global2.x, _wgslsmith_mult_i32(-var_0.x, -1i)), vec3<i32>(i32(-1i) * -global2.x, _wgslsmith_add_i32(-37316i, countOneBits(global1.x)), func_3(-2147483647i, Struct_1(vec3<bool>(true, true, true), 4294967295u, vec2<f32>(-1000f, -3104f))).x));
    global1 = _wgslsmith_mod_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-67681i, var_0.x, -45604i, -24445i), vec4<i32>(global2.x, global1.x, -7090i, -1i)), _wgslsmith_mult_i32(var_0.x, var_0.x), global2.x) << (vec3<u32>(abs(_wgslsmith_add_u32(6663u, 104537u)), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, 8908u), u_input.a.x), _wgslsmith_mod_u32(2846u, 4294967295u)) % vec3<u32>(32u)), -_wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -14514i, 2147483647i, 1i), -(vec3<i32>(29832i, var_0.x, 1i) >> (vec3<u32>(1u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(global3.x, var_1.x), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -992f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2754f, 116f, 904f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(139f, var_1.x, var_1.x) * vec3<f32>(global3.x, global3.x, -1011f))))))) * vec3<f32>(var_1.x, 463f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, 290f), var_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1502f, global3.x)))));
    let var_3 = Struct_1(select(vec3<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), true), vec3<bool>(true, true, true), any(vec3<bool>(any(vec3<bool>(true, false, true)), all(vec2<bool>(true, true)), true))), reverseBits(0u), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(131f - global3.x)))), 648f));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_3.b), u_input.a), 55680u, var_3.a.x) >> (firstLeadingBit(1u) % 32u));
}

