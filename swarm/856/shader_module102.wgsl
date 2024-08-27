struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_3,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(590f, 686f, -129f, -137f), vec4<f32>(968f, 1000f, 859f, -208f), vec4<f32>(-577f, -533f, 721f, -1000f), vec4<f32>(-272f, -1095f, 1000f, 1011f), vec4<f32>(-457f, -1234f, -678f, 2705f), vec4<f32>(1307f, -1172f, -818f, 218f), vec4<f32>(1256f, -736f, 3124f, -675f), vec4<f32>(-1425f, -980f, 334f, 236f), vec4<f32>(1428f, 1000f, -423f, 787f), vec4<f32>(-705f, 1146f, 1274f, 140f), vec4<f32>(401f, -672f, -468f, 256f), vec4<f32>(1396f, -1123f, 185f, -1669f), vec4<f32>(241f, -659f, 157f, 1220f), vec4<f32>(1972f, 1884f, -1550f, 1292f), vec4<f32>(1650f, 586f, -419f, -897f), vec4<f32>(478f, 346f, 415f, -1000f), vec4<f32>(447f, 610f, 569f, 1059f), vec4<f32>(-1858f, -270f, 785f, -1449f), vec4<f32>(-1702f, 911f, 104f, 889f), vec4<f32>(1206f, -1358f, 250f, -1000f), vec4<f32>(844f, 138f, -1851f, 284f), vec4<f32>(-733f, -1670f, -1362f, 565f), vec4<f32>(-471f, 730f, 330f, -337f), vec4<f32>(-845f, -1175f, 414f, 695f), vec4<f32>(-623f, -1400f, 107f, -639f), vec4<f32>(-494f, -1080f, -323f, -1808f), vec4<f32>(-290f, 1023f, 306f, -554f), vec4<f32>(-210f, -152f, -916f, -1796f), vec4<f32>(2044f, -1284f, 307f, -388f));

var<private> global1: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(42082u, 1u, 54983u), vec3<u32>(4294967295u, 62254u, 1u), vec3<u32>(92943u, 563u, 48846u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(1u, 8621u, 4294967295u), vec3<u32>(1u, 1u, 0u), vec3<u32>(38837u, 28531u, 44319u), vec3<u32>(7061u, 0u, 0u), vec3<u32>(3009u, 23669u, 0u), vec3<u32>(4294967295u, 1u, 37647u), vec3<u32>(79390u, 18456u, 35992u), vec3<u32>(47797u, 53758u, 0u), vec3<u32>(153074u, 0u, 53605u), vec3<u32>(1u, 70013u, 1u), vec3<u32>(0u, 1u, 1u), vec3<u32>(17426u, 89472u, 4294967295u), vec3<u32>(17564u, 44563u, 0u), vec3<u32>(4294967295u, 1u, 20248u), vec3<u32>(805u, 33458u, 11633u), vec3<u32>(17964u, 0u, 55812u), vec3<u32>(45813u, 36517u, 0u), vec3<u32>(0u, 4294967295u, 71791u), vec3<u32>(0u, 16915u, 72525u));

var<private> global2: u32 = 0u;

var<private> global3: vec4<u32> = vec4<u32>(72659u, 19920u, 21908u, 839u);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec2<bool>) -> vec2<f32> {
    global2 = global3.x << (_wgslsmith_mult_u32(_wgslsmith_mult_u32(~1u, global3.x), ~(~4054u | ~global3.x)) % 32u);
    var var_0 = Struct_4(2147483647i, Struct_1(!arg_1 || arg_1, vec3<i32>(-1i) * -min(vec3<i32>(-1i, -2147483647i, 2147483647i), vec3<i32>(1i, 17700i, -2084i))), Struct_3(Struct_2(!arg_2, ~(~vec4<i32>(-32919i, 12175i, 1i, -1i))), Struct_1(arg_2.x, abs(vec3<i32>(1i, 1i, 1i))), vec3<u32>(12386u >> (_wgslsmith_mult_u32(13855u, u_input.b) % 32u), ~11594u, 11106u ^ ~global3.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -1789f), vec2<f32>(1050f, arg_0)) * vec2<f32>(806f, arg_0)))), Struct_2(select(!arg_2, select(vec2<bool>(arg_2.x, true), arg_2, arg_2), arg_2), -_wgslsmith_mod_vec4_i32(vec4<i32>(-58942i, -38370i, -17672i, -2147483647i), vec4<i32>(-1i, 2147483647i, -2147483647i, -1i)))), select(!vec3<bool>(arg_2.x, arg_2.x, all(arg_2)), vec3<bool>(true, true, true), vec3<bool>(4294967295u == global3.x, all(select(vec4<bool>(true, arg_2.x, arg_1, false), vec4<bool>(false, arg_2.x, true, true), true)), false)), vec3<bool>(!(!(0u <= global3.x)), all(!select(vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_2.x, arg_1, true))), arg_2.x));
    var_0 = Struct_4(abs(-40589i), var_0.c.b, Struct_3(var_0.c.e, Struct_1(true, vec3<i32>(-1i) * -var_0.b.b), _wgslsmith_add_vec3_u32(vec3<u32>(~global3.x, 31982u, 1u), ~(~vec3<u32>(30770u, global3.x, u_input.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.c.d.x) + var_0.c.d), vec2<f32>(arg_0, arg_0))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.c.d), vec2<f32>(-636f, arg_0)))), var_0.c.e), var_0.d, vec3<bool>(true, true, all(vec3<bool>(arg_2.x, arg_2.x, var_0.e.x)) || any(arg_2)));
    var var_1 = ~(~select(abs(abs(vec3<i32>(1i, var_0.b.b.x, var_0.b.b.x))), vec3<i32>(var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -27936i), vec2<i32>(2147483647i, -30281i)), 1i), all(vec3<bool>(true, false, arg_2.x))));
    global1 = array<vec3<u32>, 23>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), var_0.c.d, vec2<bool>(arg_2.x, false))) + var_0.c.d)));
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    var var_1 = vec4<bool>(var_0, var_0, any(select(vec2<bool>(false, true), vec2<bool>(var_0, var_0), any(vec3<bool>(true, true, true)))) | var_0, false);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(trunc(1f)), false, !(!var_1.xz))));
    var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2.x)), var_2.x) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1647f), -1000f), vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(639f + var_2.x)))))));
    var var_3 = Struct_4(~(-1i), Struct_1(!((56204u >> (u_input.b % 32u)) == min(global3.x, u_input.a)), select(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-17664i, -10816i), vec2<i32>(0i, 0i)), -1i, abs(-66580i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(0i, -4390i, 0i), max(vec3<i32>(-43176i, 23172i, -21298i), vec3<i32>(0i, -15824i, 1i))), true & var_0)), Struct_3(Struct_2(select(!var_1.yw, vec2<bool>(var_0, var_1.x), true), vec4<i32>(i32(-1i) * -1i, ~23974i, _wgslsmith_mod_i32(-1i, -5447i), _wgslsmith_sub_i32(-60178i, -2147483647i))), Struct_1(false, select(vec3<i32>(-2147483647i, -2147483647i, -2147483647i), vec3<i32>(24632i, 0i, 0i), vec3<bool>(var_0, true, false)) >> (vec3<u32>(4294967295u, global3.x, 11381u) % vec3<u32>(32u))), vec3<u32>(~1u, firstLeadingBit(1u), u_input.a), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.x, var_2.x))), vec2<f32>(var_2.x, var_2.x), !vec2<bool>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(-144f, var_0, vec2<bool>(var_1.x, var_1.x))))))), Struct_2(vec2<bool>(var_1.x, var_0 & false), select(vec4<i32>(44150i, 2147483647i, -1i, -1i), vec4<i32>(-2147483647i, -2147483647i, 2147483647i, 9804i), vec4<bool>(var_0, false, true, var_1.x)))), var_1.xxx, var_1.zyy);
    return Struct_2(select(vec2<bool>(select(true, !var_0, true), var_3.e.x), select(!select(vec2<bool>(var_1.x, var_0), vec2<bool>(var_3.d.x, var_3.d.x), true), !var_1.xx, var_1.yz), vec2<bool>(true, true)), -select(abs(-vec4<i32>(var_3.b.b.x, 80030i, -15847i, 0i)), ~min(vec4<i32>(-1i, 12068i, var_3.c.b.b.x, 21787i), var_3.c.a.b), false));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_5 {
    var var_0 = select(vec4<bool>(all(select(!arg_2.a, !vec2<bool>(false, arg_1.x), select(false, false, arg_1.x))), select(any(vec4<bool>(true, true, true, true)), !(1i < arg_2.b.x), true), arg_3.a.x, true), vec4<bool>(!any(!vec2<bool>(arg_1.x, arg_2.a.x)), all(!vec3<bool>(true, arg_3.a.x, arg_2.a.x)), !(arg_2.a.x && !arg_1.x), true), !select(!(!vec4<bool>(true, arg_3.a.x, arg_1.x, false)), vec4<bool>(true, true, any(vec3<bool>(arg_3.a.x, arg_1.x, arg_1.x)), !arg_2.a.x), false));
    let var_1 = countOneBits(arg_3.b.x);
    global1 = array<vec3<u32>, 23>();
    let var_2 = Struct_1(!arg_2.a.x, _wgslsmith_mod_vec3_i32(arg_3.b.yyw, ~abs(arg_3.b.xyw) << (~(~vec3<u32>(47233u, arg_0.x, 2848u)) % vec3<u32>(32u))));
    let var_3 = 1649f;
    return Struct_5(_wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(min(global3.x, arg_0.x)), _wgslsmith_div_u32(_wgslsmith_mult_u32(68890u, u_input.a), _wgslsmith_div_u32(92261u, global3.x)), firstTrailingBit(1u) & (u_input.b | 1u), _wgslsmith_mod_u32(u_input.a & 4294967295u, 17927u)), arg_0), -1i > ~(~reverseBits(var_1)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: Struct_5) -> u32 {
    var var_0 = arg_2.a.x;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -453f), 1000f);
    var var_2 = _wgslsmith_div_i32(-8602i, -1i);
    var_2 = 1i >> (global3.x % 32u);
    var_2 = -_wgslsmith_dot_vec4_i32(~(~vec4<i32>(-2147483647i, -2147483647i, 0i, -2147483647i)), -(~vec4<i32>(13704i, -3242i, -46952i, 0i))) | 44506i;
    return abs(u_input.a);
}

fn func_6(arg_0: vec4<i32>, arg_1: u32) -> Struct_5 {
    global2 = ~arg_1;
    global2 = ~min(func_4(reverseBits(~vec4<u32>(arg_1, 52291u, global3.x, global3.x)), vec2<bool>(false, true), func_2(), Struct_2(vec2<bool>(false, false), arg_0)).a.x, 0u);
    var var_0 = Struct_3(Struct_2(func_2().a, arg_0 | _wgslsmith_mod_vec4_i32(select(vec4<i32>(13947i, arg_0.x, 0i, 0i), arg_0, false), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), Struct_1(!all(vec4<bool>(true, true, true, true)), vec3<i32>(min(-4386i, _wgslsmith_mult_i32(arg_0.x, arg_0.x)), 26591i, firstTrailingBit(-arg_0.x))), vec3<u32>(abs(_wgslsmith_sub_u32(4294967295u, u_input.a)), 4294967295u, 1u) | ~select(_wgslsmith_sub_vec3_u32(global3.yzz, global1[_wgslsmith_index_u32(0u, 23u)]), ~vec3<u32>(u_input.a, 0u, arg_1), vec3<bool>(false, false, false)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(791f, 174f) + vec2<f32>(1000f, -300f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-866f, -856f))))), Struct_2(select(select(func_2().a, vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), (i32(-1i) * -1i) != arg_0.x), -_wgslsmith_mod_vec4_i32(select(arg_0, vec4<i32>(-49472i, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, true, true)), func_2().b)));
    let var_1 = !vec3<bool>(select(-5577i, var_0.e.b.x, func_2().a.x) < _wgslsmith_dot_vec4_i32(arg_0 << (vec4<u32>(23147u, 1u, global3.x, 45290u) % vec4<u32>(32u)), var_0.e.b & vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 4466i)), var_0.a.a.x, !any(!var_0.a.a));
    let var_2 = !vec2<bool>(!var_1.x, var_1.x);
    return func_4(~vec4<u32>(_wgslsmith_div_u32(min(1u, 33045u), 80952u), ~abs(4294967295u), arg_1, u_input.b), !(!vec2<bool>(var_0.e.a.x, var_1.x)), Struct_2(func_2().a, arg_0), var_0.a);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: u32, arg_3: i32) -> i32 {
    let var_0 = func_6(vec4<i32>(reverseBits(-2147483647i), min(_wgslsmith_div_i32(arg_3, arg_3), ~1i), arg_3, -36455i), func_5(!arg_1.zz, func_4(~vec4<u32>(u_input.b, 63357u, arg_0.x, global3.x) << (vec4<u32>(global3.x, arg_2, 45605u, 57600u) % vec4<u32>(32u)), vec2<bool>(true, true), Struct_2(!vec2<bool>(false, arg_1.x), countOneBits(vec4<i32>(241i, 0i, 2147483647i, arg_3))), func_2()), func_4(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(97125u, 0u, 4294967295u, arg_2), vec4<u32>(15840u, arg_0.x, arg_2, 0u)), ~vec4<u32>(arg_0.x, 15270u, 56767u, arg_0.x)), select(!vec2<bool>(arg_1.x, false), !arg_1.zz, all(vec4<bool>(arg_1.x, false, arg_1.x, false))), func_2(), func_2())));
    let var_1 = Struct_1(var_0.b, firstTrailingBit(select(~vec3<i32>(arg_3, arg_3, -56977i), func_2().b.yzw, vec3<bool>(any(arg_1.yx), !arg_1.x, var_0.b || arg_1.x))));
    global3 = _wgslsmith_mod_vec4_u32(vec4<u32>(~0u, ~_wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(37931u, global3.x, var_0.a.x, var_0.a.x)), ~(~u_input.b), 75662u), var_0.a) ^ countOneBits(var_0.a);
    global0 = array<vec4<f32>, 29>();
    let var_2 = select(vec3<bool>(var_0.b, true, true), vec3<bool>(any(select(select(vec4<bool>(false, arg_1.x, var_0.b, var_1.a), vec4<bool>(true, true, var_0.b, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, var_0.b)), vec4<bool>(true, var_1.a, false, true), select(vec4<bool>(arg_1.x, var_0.b, true, var_1.a), vec4<bool>(false, var_0.b, false, var_1.a), vec4<bool>(var_0.b, false, true, arg_1.x)))), !var_0.b, all(arg_1.xz)), select(!vec3<bool>(false, !var_1.a, true), arg_1, !(all(vec4<bool>(arg_1.x, var_1.a, var_0.b, true)) | var_1.a)));
    return _wgslsmith_mult_i32(~(-15618i) ^ -firstTrailingBit(var_1.b.x), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_div_u32(u_input.b, u_input.a);
    global0 = array<vec4<f32>, 29>();
    global2 = global3.x;
    var var_0 = -(vec4<i32>(-2147483647i, -min(39624i, 2147483647i), i32(-1i) * -2147483647i, func_1(~vec2<u32>(19562u, 0u), vec3<bool>(true, false, true), _wgslsmith_dot_vec2_u32(global3.yx, global3.zz), ~2147483647i)) | vec4<i32>(func_1(vec2<u32>(54696u, global3.x) & global3.wx, vec3<bool>(true, true, true), 90851u, -2147483647i), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, 0i, -2147483647i)), ~vec3<i32>(-1i, -49471i, 1i)), i32(-1i) * -2147483647i, -abs(1i)));
    var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(2147483647i), var_0.x), var_0.x, 12788i ^ var_0.x, _wgslsmith_add_i32(~var_0.x, _wgslsmith_clamp_i32(2147483647i, -46100i, var_0.x))), _wgslsmith_mult_vec4_i32(-(~vec4<i32>(var_0.x, 7049i, var_0.x, var_0.x)), vec4<i32>(var_0.x, 1i, 37712i, -1i) << (vec4<u32>(0u, global3.x, 1u, global3.x) % vec4<u32>(32u)))) >> (_wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.x, u_input.a, global3.x, 4294967295u) & vec4<u32>(u_input.a, u_input.a, 46063u, 30585u), func_6(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), global3.x).a)), reverseBits(vec4<u32>(u_input.b, global3.x, 54847u, 4294967295u)) >> (vec4<u32>(~4294967295u, _wgslsmith_sub_u32(21997u, global3.x), u_input.b >> (global3.x % 32u), 59687u) % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = array<vec4<f32>, 29>();
    let var_1 = countOneBits(~_wgslsmith_sub_u32(~1u, func_5(vec2<bool>(true, true), func_6(vec4<i32>(-1i, -51741i, -5656i, var_0.x), 30912u), func_6(vec4<i32>(1501i, 0i, var_0.x, -2147483647i), 6477u))));
    let var_2 = select(_wgslsmith_dot_vec2_i32(var_0.xx, vec2<i32>(-var_0.x, 1300i) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 54554u), global3.yy) % vec2<u32>(32u))), -82992i, true);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_i32((var_0.zyz ^ vec3<i32>(var_2, -19960i, var_0.x)) | -vec3<i32>(var_2, var_2, var_2), _wgslsmith_div_vec3_i32(vec3<i32>(-38768i, var_2, var_2), _wgslsmith_sub_vec3_i32(vec3<i32>(3904i, var_0.x, -38003i), vec3<i32>(var_0.x, 2147483647i, var_2)))), -251f, _wgslsmith_div_u32(~1u, 49431u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1105f))))))));
}

