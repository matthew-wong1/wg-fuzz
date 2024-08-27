struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(-1i, -1i, -1i, 1i), vec4<i32>(-3323i, -7388i, 24964i, 1i), vec4<i32>(i32(-2147483648), 49852i, -36985i, 2147483647i), vec4<i32>(-1i, 17738i, -15410i, i32(-2147483648)), vec4<i32>(3940i, i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(2021i, -1i, -1i, 2147483647i), vec4<i32>(-1i, -22430i, 3224i, 0i), vec4<i32>(2147483647i, i32(-2147483648), 59502i, i32(-2147483648)), vec4<i32>(-1i, 1i, 20663i, 1i));

var<private> global2: array<Struct_4, 24>;

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<f32>(-886f, 473f, 156f, 910f), 4726u, -450f, -472f), Struct_1(vec4<f32>(-1220f, 1606f, -798f, 1000f), 36535u, -2640f, -608f), Struct_1(vec4<f32>(558f, 517f, 2251f, 837f), 4294967295u, -1911f, 788f), Struct_1(vec4<f32>(854f, 685f, -1015f, -940f), 7526u, -1017f, 544f), Struct_1(vec4<f32>(858f, -1081f, -434f, 1190f), 17925u, 577f, -447f), Struct_1(vec4<f32>(1132f, -1000f, -1074f, 1079f), 54204u, 957f, 120f), Struct_1(vec4<f32>(1484f, -672f, -1075f, 322f), 1u, -243f, -1576f), Struct_1(vec4<f32>(-409f, 1379f, 1000f, 299f), 67317u, 766f, 867f), Struct_1(vec4<f32>(599f, -103f, 465f, 502f), 4294967295u, -943f, -302f), Struct_1(vec4<f32>(370f, -203f, -2588f, -364f), 47883u, 1055f, 958f));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_3(-2147483647i, Struct_2(0u, global3[_wgslsmith_index_u32(arg_2.a.b, 10u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.x - 851f), _wgslsmith_f_op_f32(f32(-1f) * -1791f), _wgslsmith_f_op_f32(f32(-1f) * -256f), arg_2.a.d)), Struct_1(arg_2.a.a, _wgslsmith_dot_vec4_u32(~arg_3, vec4<u32>(arg_2.a.b, 1u, 0u, 4294967295u)), _wgslsmith_f_op_f32(-1353f - _wgslsmith_f_op_f32(abs(634f))), _wgslsmith_f_op_f32(floor(-1000f))), arg_2.a), _wgslsmith_clamp_vec2_u32(arg_0.ww, vec2<u32>(~arg_2.a.b, ~arg_2.a.b) << ((arg_0.zx | vec2<u32>(arg_2.a.b, 66036u)) % vec2<u32>(32u)), max(max(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, arg_3.x), vec2<u32>(105053u, 4294967295u)), firstTrailingBit(arg_3.yw)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_2.a.b), vec2<u32>(arg_3.x, 2946u)))), select(vec3<bool>(true, true, true), vec3<bool>(select(true, true, true), u_input.a != ~u_input.a, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), arg_0.x <= arg_2.a.b), !select(true, false, true))));
    global3 = array<Struct_1, 10>();
    global2 = array<Struct_4, 24>();
    var var_1 = var_0.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1175f, 983f, 1000f, var_1.b.a.x)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 2446f, var_1.c.x, arg_1.x) + var_0.b.c), vec4<f32>(arg_2.a.d, arg_1.x, 1292f, var_0.b.e.c), select(vec4<bool>(var_0.d.x, true, true, var_0.d.x), vec4<bool>(false, var_0.d.x, false, var_0.d.x), vec4<bool>(true, var_0.d.x, false, false))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(507f - var_1.b.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -343f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-710f + var_1.e.c), var_0.b.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -641f))), all(!vec4<bool>(var_0.d.x, true, var_0.d.x, false)))) - var_0.b.d.a);
    return vec4<u32>(arg_3.x, arg_2.a.b, ~0u, _wgslsmith_sub_u32(~var_1.a, arg_0.x));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(10698u >> (0u % 32u), 4294967295u, _wgslsmith_div_u32(5174u, 51969u), ~4294967295u), vec4<u32>(4294967295u, 3490u, 128933u, 45540u) | func_3(vec4<u32>(38994u, 1u, 1u, 68772u), vec2<f32>(-151f, 1179f), global2[_wgslsmith_index_u32(1u, 24u)], vec4<u32>(4294967295u, 16674u, 1u, 39345u)))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1010f, -549f, 309f, 899f))))), 28257u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -718f), -2616f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * 584f))), -954f, true))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1016f, -1000f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1f)), -697f), -1573f, -1338f), global3[_wgslsmith_index_u32(83167u, 10u)], Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(862f, -1000f, -379f, 377f))))), ~(~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-493f - -903f), 1699f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(740f + -160f))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(238f)) * var_0.e.c) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -458f), var_0.d.c)), _wgslsmith_f_op_f32(step(var_0.e.a.x, var_0.e.a.x)), -743f)));
    let var_2 = var_0.e;
    var var_3 = !vec2<bool>(u_input.a < u_input.a, all(vec2<bool>(true, true)));
    let var_4 = global2[_wgslsmith_index_u32(16834u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b | (4893u ^ var_2.b), var_2.b, select(95751u, var_0.e.b, all(vec2<bool>(true, var_3.x))), ~_wgslsmith_mod_u32(1u, 41193u)), vec4<u32>((var_2.b >> (var_2.b % 32u)) << (_wgslsmith_add_u32(26635u, var_2.b) % 32u), 1u, max(var_2.b << (48273u % 32u), var_0.d.b), var_0.d.b)), 24u)];
    return Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.a.d), var_0.b.a.x, var_3.x)), _wgslsmith_f_op_f32(-var_0.d.d), _wgslsmith_f_op_f32(772f * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-296f + _wgslsmith_f_op_f32(f32(-1f) * -654f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(floor(var_2.d)), _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-736f - var_2.c)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(246f, 1463f, 370f, var_1.x) * var_0.c) * vec4<f32>(-1276f, var_0.b.a.x, var_2.a.x, var_0.b.a.x)))), var_2.b, 859f, _wgslsmith_div_f32(897f, 1000f));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(arg_2.c.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_2.d.a.x, 540f)))));
    global1 = array<vec4<i32>, 9>();
    global3 = array<Struct_1, 10>();
    global2 = array<Struct_4, 24>();
    let var_1 = func_3(vec4<u32>(select(_wgslsmith_mult_u32(1u, 1u), abs(0u), !arg_1), _wgslsmith_div_u32(arg_2.e.b, 18200u ^ arg_0.c.x), arg_2.e.b, ~1u) | ~_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2.d.b, arg_0.c.x, arg_2.b.b, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.d.b, 4294967295u, 76376u, arg_2.d.b), vec4<u32>(68864u, arg_0.b.e.b, arg_0.c.x, 4294967295u), vec4<u32>(1u, arg_0.b.d.b, arg_2.e.b, 32667u))), vec2<f32>(_wgslsmith_f_op_f32(abs(488f)), _wgslsmith_f_op_f32(f32(-1f) * -1040f)), Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1567f, 140f, 1121f, -406f), arg_0.b.e.a)), ~arg_2.a, -2224f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1910f) * _wgslsmith_f_op_f32(f32(-1f) * -583f)))), vec4<u32>(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(4294967295u, 72923u, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_2.a, arg_2.b.b, 86724u), vec3<u32>(arg_2.e.b, arg_0.b.d.b, arg_2.a)) >> (~vec3<u32>(arg_2.d.b, arg_2.a, 58532u) % vec3<u32>(32u))), 40808u, 1u, arg_2.a)).x;
    return arg_0.b;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: u32) -> u32 {
    var var_0 = vec3<i32>(-35694i, 2147483647i, max(~(-39367i), -1i));
    let var_1 = vec4<f32>(-951f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-992f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-444f, -1200f) * -340f))), _wgslsmith_f_op_f32(min(314f, 1540f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(671f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(631f + -1000f), -660f))), -704f));
    let var_2 = vec3<u32>(arg_1, ~(~arg_1), arg_2);
    var var_3 = func_4(Struct_3(_wgslsmith_dot_vec4_i32((vec4<i32>(arg_0, arg_0, -1i, var_0.x) >> (vec4<u32>(67930u, 0u, 1u, 1u) % vec4<u32>(32u))) | abs(global1[_wgslsmith_index_u32(arg_1, 9u)]), -global1[_wgslsmith_index_u32(select(72097u, 4294967295u, false), 9u)]), Struct_2(var_2.x, Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 736f, 2148f, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, true, true))), select(var_2.x, 1u, true), _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1586f)), var_1, func_2(), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.x, _wgslsmith_div_u32(var_2.x, arg_1)), 10u)]), ~vec2<u32>(var_2.x, 1u ^ arg_2), select(vec3<bool>(true, true, all(vec2<bool>(false, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(any(vec3<bool>(true, true, true)), true, true), Struct_2(1u, func_2(), _wgslsmith_f_op_vec4_f32(var_1 + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -478f) * var_1))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-449f, var_1.x, var_1.x, 989f)), max(~73728u, _wgslsmith_div_u32(arg_2, 4294967295u)), _wgslsmith_f_op_f32(f32(-1f) * -534f), var_1.x), func_2()), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xy) + vec2<f32>(1538f, var_1.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.wz), _wgslsmith_f_op_vec2_f32(-var_1.xw), true))) - _wgslsmith_f_op_vec2_f32(var_1.wx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-387f, var_1.x))))));
    var var_4 = Struct_3(-abs(u_input.a), func_4(Struct_3(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, -9849i), 2147483647i), func_4(Struct_3(arg_0, Struct_2(32110u, var_3.b, var_1, Struct_1(var_1, 29592u, var_1.x, 1000f), Struct_1(var_3.c, 4294967295u, 534f, var_3.d.d)), vec2<u32>(382u, 1u), vec3<bool>(false, true, false)), true, func_4(Struct_3(var_0.x, Struct_2(121476u, Struct_1(vec4<f32>(var_1.x, var_3.d.d, var_1.x, 1041f), 4294967295u, var_3.c.x, -351f), var_3.e.a, Struct_1(vec4<f32>(var_3.d.c, 438f, var_1.x, var_1.x), arg_1, var_3.e.a.x, var_1.x), Struct_1(var_3.c, var_2.x, var_3.d.d, var_1.x)), vec2<u32>(4294967295u, 32104u), vec3<bool>(true, false, true)), true, Struct_2(0u, Struct_1(vec4<f32>(-273f, var_1.x, var_1.x, var_3.c.x), var_2.x, -324f, 278f), var_1, global3[_wgslsmith_index_u32(arg_1, 10u)], Struct_1(vec4<f32>(var_1.x, var_3.c.x, var_1.x, -216f), 0u, 189f, var_1.x)), vec2<f32>(-210f, -1237f)), var_1.xw), var_2.zy, select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), true, func_4(Struct_3(-1i, func_4(Struct_3(u_input.a, Struct_2(1u, Struct_1(var_3.d.a, 0u, -119f, 671f), vec4<f32>(493f, 431f, -1331f, var_3.e.a.x), Struct_1(var_3.e.a, 38333u, -900f, var_1.x), Struct_1(var_3.d.a, 38793u, -109f, var_3.e.c)), vec2<u32>(var_2.x, 4550u), vec3<bool>(false, true, false)), true, Struct_2(60493u, Struct_1(vec4<f32>(549f, var_3.d.d, -492f, var_3.b.d), 117719u, 557f, var_3.e.c), var_3.d.a, Struct_1(var_1, var_3.e.b, var_1.x, 517f), global3[_wgslsmith_index_u32(arg_1, 10u)]), vec2<f32>(131f, -154f)), var_2.zz, select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), true, Struct_2(_wgslsmith_div_u32(4294967295u, arg_1), func_4(Struct_3(var_0.x, Struct_2(69447u, Struct_1(var_3.e.a, 1u, 1120f, -142f), var_3.d.a, Struct_1(var_3.b.a, 0u, -937f, -2629f), global3[_wgslsmith_index_u32(var_3.e.b, 10u)]), vec2<u32>(var_3.b.b, 85541u), vec3<bool>(false, true, true)), false, Struct_2(var_3.a, var_3.e, var_1, var_3.e, Struct_1(vec4<f32>(-1794f, var_3.d.a.x, var_1.x, var_1.x), 4294967295u, -868f, -1200f)), vec2<f32>(var_3.d.c, var_1.x)).d, _wgslsmith_f_op_vec4_f32(vec4<f32>(1256f, -482f, -2281f, var_3.e.d) - var_3.e.a), func_4(Struct_3(var_0.x, Struct_2(var_3.a, Struct_1(vec4<f32>(var_1.x, 336f, var_3.e.d, 1644f), 0u, 159f, var_3.e.c), vec4<f32>(var_3.c.x, 291f, -1000f, -971f), global3[_wgslsmith_index_u32(arg_1, 10u)], Struct_1(var_1, var_2.x, var_1.x, 873f)), var_2.zx, vec3<bool>(true, true, false)), true, Struct_2(arg_1, var_3.d, var_3.b.a, Struct_1(var_3.b.a, arg_2, var_3.c.x, var_3.b.c), global3[_wgslsmith_index_u32(0u, 10u)]), var_3.b.a.wy).e, global3[_wgslsmith_index_u32(var_2.x, 10u)]), var_3.e.a.xy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2020f, 1158f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.d, var_1.x) * vec2<f32>(var_1.x, -818f)), var_1.yx))), select(var_2.yy, ~vec2<u32>(select(486u, arg_2, false), arg_2), select(vec2<bool>(any(vec2<bool>(true, true)), true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), true), true)), !vec3<bool>(!any(vec3<bool>(false, false, false)), true, true));
    return min(~_wgslsmith_dot_vec2_u32(~var_4.c, ~var_2.zx), _wgslsmith_dot_vec2_u32(countOneBits(var_2.xx), var_4.c)) | var_4.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, select(true, true, true)), true));
    var var_0 = Struct_3(firstTrailingBit(u_input.a & (~23247i << (func_1(2147483647i, 0u, 81099u) % 32u))), Struct_2((firstLeadingBit(1u) >> (func_1(-2147483647i, 48309u, 4294967295u) % 32u)) >> (max(reverseBits(43559u), ~4294967295u) % 32u), global3[_wgslsmith_index_u32(18305u, 10u)], vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-344f, -1144f)), 1442f, _wgslsmith_f_op_f32(-865f - _wgslsmith_f_op_f32(step(-142f, 1000f))), 1000f), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -337f), 1756f, -257f, 473f), 1u, func_4(Struct_3(2147483647i, Struct_2(72116u, global3[_wgslsmith_index_u32(36316u, 10u)], vec4<f32>(1523f, 122f, 546f, -286f), global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(0u, 10u)]), vec2<u32>(4294967295u, 1u), vec3<bool>(true, true, false)), false, Struct_2(1u, global3[_wgslsmith_index_u32(1u, 10u)], vec4<f32>(1314f, 1984f, 752f, -974f), Struct_1(vec4<f32>(-962f, 212f, -972f, -1579f), 4294967295u, 1800f, -1240f), Struct_1(vec4<f32>(-1921f, -1000f, 2046f, -1179f), 92667u, -361f, -759f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(531f, -1000f)))).d.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-518f)))), func_2()), min(firstTrailingBit(vec2<u32>(func_2().b, 28166u)), ~(~firstTrailingBit(vec2<u32>(0u, 31916u)))), select(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, true, true), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), u_input.a > -24849i, true | all(vec3<bool>(true, true, false)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1119f + var_0.b.c.x) - var_0.b.d.d), var_0.b.d.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b.c + var_0.b.b.c) + _wgslsmith_f_op_f32(166f + var_0.b.b.c)))));
    var var_2 = firstLeadingBit(var_0.a);
    var_2 = ~(~var_0.a);
    var_0 = Struct_3(~_wgslsmith_mod_i32(u_input.a, _wgslsmith_mod_i32(-9339i, 0i >> (var_0.c.x % 32u))), var_0.b, ~var_0.c >> (vec2<u32>(firstLeadingBit(45074u & var_0.b.a), var_0.c.x) % vec2<u32>(32u)), select(select(!(!vec3<bool>(true, var_0.d.x, true)), !vec3<bool>(true, var_0.d.x, var_0.d.x), !var_0.d), var_0.d, vec3<bool>(var_0.b.d.c <= _wgslsmith_f_op_f32(var_1.x * -183f), !(!var_0.d.x), false)));
    global2 = array<Struct_4, 24>();
    global2 = array<Struct_4, 24>();
    global2 = array<Struct_4, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~(vec3<i32>(u_input.a, u_input.a, var_0.a) ^ vec3<i32>(-19407i, u_input.a, 35652i))), vec4<i32>(-1i, _wgslsmith_mod_i32(u_input.a, abs(max(var_0.a, u_input.a))), max(_wgslsmith_mod_i32(1i, 27222i) | max(-27910i, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, 18419i, -2147483647i), countOneBits(vec4<i32>(var_0.a, var_0.a, u_input.a, u_input.a)))), 19898i), ~(~_wgslsmith_mult_i32(countOneBits(u_input.a), _wgslsmith_div_i32(-3400i, 2147483647i))), var_1.x, -global1[_wgslsmith_index_u32(0u, 9u)]);
}

