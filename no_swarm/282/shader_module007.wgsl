struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<i32>(1i, i32(-2147483648), 1i, 0i), vec2<f32>(-132f, 505f), vec4<u32>(4294967295u, 17926u, 69544u, 29946u), -22251i, -282f), Struct_1(vec4<i32>(5549i, 21689i, -1i, i32(-2147483648)), vec2<f32>(282f, -1663f), vec4<u32>(0u, 46700u, 4294967295u, 41139u), 49834i, 1381f), Struct_1(vec4<i32>(2147483647i, 2147483647i, -39907i, i32(-2147483648)), vec2<f32>(1398f, 1000f), vec4<u32>(1u, 10326u, 1u, 1321u), -9964i, 1165f), Struct_1(vec4<i32>(2147483647i, 2147483647i, 33752i, 0i), vec2<f32>(265f, -2046f), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), -1i, 662f), Struct_1(vec4<i32>(-1i, 2147483647i, -1i, -7262i), vec2<f32>(-230f, -113f), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), 2147483647i, 627f), Struct_1(vec4<i32>(-6950i, 1i, 2147483647i, 41548i), vec2<f32>(1814f, -1359f), vec4<u32>(41685u, 27511u, 1u, 25504u), 0i, -2197f), Struct_1(vec4<i32>(2147483647i, 37402i, i32(-2147483648), -1i), vec2<f32>(1000f, 1222f), vec4<u32>(0u, 13772u, 0u, 4294967295u), -32715i, -1233f), Struct_1(vec4<i32>(-57628i, -1i, 0i, -1i), vec2<f32>(-1016f, -1022f), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), -1i, 1791f), Struct_1(vec4<i32>(-1i, -1i, -27235i, -37733i), vec2<f32>(254f, -314f), vec4<u32>(1u, 1u, 51843u, 76501u), 60566i, -1041f), Struct_1(vec4<i32>(31565i, -12136i, 0i, 2147483647i), vec2<f32>(-137f, 321f), vec4<u32>(33501u, 57486u, 46146u, 72606u), 2147483647i, -657f), Struct_1(vec4<i32>(-9609i, 0i, 1i, 0i), vec2<f32>(-202f, -1984f), vec4<u32>(0u, 62424u, 1u, 35665u), 11045i, -1056f), Struct_1(vec4<i32>(0i, -63911i, -1i, -1i), vec2<f32>(1024f, -486f), vec4<u32>(63337u, 4294967295u, 1u, 85028u), -27984i, 382f), Struct_1(vec4<i32>(-29549i, 2147483647i, 7054i, 1i), vec2<f32>(-408f, 963f), vec4<u32>(8802u, 0u, 12004u, 0u), 88580i, 422f), Struct_1(vec4<i32>(4295i, -32118i, 2147483647i, 15056i), vec2<f32>(1796f, -1000f), vec4<u32>(4294967295u, 47113u, 26017u, 116519u), i32(-2147483648), 610f), Struct_1(vec4<i32>(-6307i, 1i, -26927i, -12508i), vec2<f32>(-1000f, 192f), vec4<u32>(0u, 32351u, 4294967295u, 0u), 0i, -371f), Struct_1(vec4<i32>(-7459i, 8507i, -1i, 0i), vec2<f32>(-533f, -419f), vec4<u32>(4294967295u, 4294967295u, 46859u, 1u), 0i, -260f), Struct_1(vec4<i32>(48592i, 29637i, 0i, -36273i), vec2<f32>(1793f, 249f), vec4<u32>(13594u, 58940u, 30686u, 916u), 2257i, -592f), Struct_1(vec4<i32>(2147483647i, -26350i, 1i, 29714i), vec2<f32>(347f, 720f), vec4<u32>(10961u, 130255u, 47679u, 79942u), i32(-2147483648), -1459f), Struct_1(vec4<i32>(2900i, 0i, -22364i, i32(-2147483648)), vec2<f32>(1222f, -891f), vec4<u32>(1u, 0u, 22455u, 10307u), 10650i, 165f), Struct_1(vec4<i32>(47261i, 0i, -47099i, 0i), vec2<f32>(2182f, -283f), vec4<u32>(1u, 1u, 4313u, 13640u), 29260i, -218f), Struct_1(vec4<i32>(22225i, -1i, 1i, 41675i), vec2<f32>(1513f, -579f), vec4<u32>(14021u, 0u, 57593u, 80858u), 6765i, 3389f), Struct_1(vec4<i32>(-22473i, 1i, 5317i, 28483i), vec2<f32>(1000f, 460f), vec4<u32>(4294967295u, 43684u, 30002u, 0u), 2169i, -382f));

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_1) -> vec4<bool> {
    global2 = arg_2;
    global0 = _wgslsmith_f_op_vec2_f32(-arg_0.d.b);
    global0 = arg_1.c.b;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_3.b, _wgslsmith_f_op_vec2_f32(arg_0.c.b * vec2<f32>(arg_3.e, global0.x)), any(vec3<bool>(arg_2.x, false, global2.x)))) + _wgslsmith_f_op_vec2_f32(floor(arg_0.c.b))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(929f)), _wgslsmith_f_op_f32(exp2(arg_0.c.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_1.c.b, arg_0.d.b)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.c.b.x, arg_0.c.b.x)))))));
    global0 = arg_1.c.b;
    return !select(vec4<bool>(global2.x, false, any(!global2.yxx), all(vec2<bool>(false, arg_2.x))), select(vec4<bool>(global2.x, false || global2.x, true, global2.x), !(!arg_2), _wgslsmith_f_op_f32(f32(-1f) * -401f) <= _wgslsmith_f_op_f32(trunc(global0.x))), !vec4<bool>(true, -124894i == arg_3.a.x, true, any(arg_2)));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: bool) -> vec4<f32> {
    global2 = select(select(!(!vec4<bool>(false, true, arg_3, true)), select(select(!vec4<bool>(arg_0, true, true, arg_3), vec4<bool>(arg_0, true, true, global2.x), vec4<bool>(false, arg_0, arg_3, true)), func_3(Struct_2(u_input.a.zz, u_input.b.x, Struct_1(vec4<i32>(-2602i, -1i, u_input.c.x, u_input.c.x), vec2<f32>(-135f, global0.x), u_input.a, u_input.c.x, 116f), Struct_1(vec4<i32>(22890i, 0i, u_input.c.x, u_input.c.x), vec2<f32>(-269f, global0.x), vec4<u32>(0u, 1u, 4294967295u, 1u), 4765i, -1206f), -6860i), Struct_2(vec2<u32>(arg_1, u_input.a.x), arg_2, Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, 14303i, 29689i), vec2<f32>(global0.x, -1147f), vec4<u32>(10463u, u_input.a.x, arg_1, u_input.a.x), u_input.c.x, -1608f), Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, -49700i, 63713i), vec2<f32>(global0.x, -781f), u_input.a, -9142i, global0.x), 8955i), vec4<bool>(true, global2.x, true, global2.x), global1[_wgslsmith_index_u32(~arg_2, 22u)]), all(vec4<bool>(arg_0, true, global2.x, arg_3))), !(!select(vec4<bool>(global2.x, global2.x, arg_0, arg_3), vec4<bool>(global2.x, true, true, arg_0), arg_3))), !(!func_3(Struct_2(u_input.a.zy, 4294967295u, global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(arg_2, 22u)], u_input.c.x), Struct_2(vec2<u32>(arg_2, u_input.b.x), arg_2, Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, -10019i), vec2<f32>(global0.x, -876f), vec4<u32>(u_input.b.x, 32524u, 18193u, 4294967295u), 2147483647i, 940f), global1[_wgslsmith_index_u32(46351u, 22u)], -59573i), vec4<bool>(true, global2.x, arg_3, arg_0), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1, 4294967295u, arg_2), 22u)])), !(!all(select(vec3<bool>(true, true, false), global2.yzz, global2.zxx))));
    var var_0 = u_input.c.xz;
    global2 = vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(563f, 100f)) * global0.x))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(-global0.x))), !global2.x, all(!vec2<bool>(select(false, arg_0, true), global0.x >= global0.x)), arg_0);
    var var_1 = global2.x;
    let var_2 = global1[_wgslsmith_index_u32(arg_2, 22u)];
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(429f, var_2.e) * 274f), _wgslsmith_f_op_f32(-153f + -1762f), _wgslsmith_f_op_f32(-var_2.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1822f, global0.x, true)))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = vec4<i32>(u_input.c.x, ~_wgslsmith_mult_i32(-38240i, arg_0.d), 0i, ~(arg_0.d & -1i));
    global1 = array<Struct_1, 22>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_f32(952f - -289f), _wgslsmith_div_f32(global0.x, arg_0.e), _wgslsmith_f_op_f32(-arg_0.b.x))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_2(true, 1u, abs(arg_0.c.x), global2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1348f, arg_0.e, 1120f, 1000f) * vec4<f32>(767f, -1417f, arg_0.e, -1271f))))))));
    global2 = vec4<bool>(!global2.x, (arg_0.d ^ u_input.c.x) > ~_wgslsmith_mult_i32(1i, u_input.c.x), (((i32(-1i) * -2147483647i) << (~u_input.a.x % 32u)) | var_0.x) <= 0i, true);
    let var_2 = Struct_1(_wgslsmith_div_vec4_i32(arg_0.a, arg_0.a), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -614f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.xx - vec2<f32>(1060f, var_1.x)) * _wgslsmith_f_op_vec2_f32(-var_1.yz))))), ~arg_0.c, select(arg_0.d, 42480i, arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b.x - -556f)))));
    return Struct_1((-vec4<i32>(6267i, -21526i, var_2.d, var_0.x) | reverseBits(arg_0.a)) & min(-arg_0.a, vec4<i32>(-arg_0.d, abs(1i), u_input.c.x >> (51373u % 32u), var_0.x)), arg_0.b, abs(select(arg_0.c, select(_wgslsmith_div_vec4_u32(vec4<u32>(65242u, 4294967295u, 69734u, var_2.c.x), arg_0.c), u_input.a, arg_1), vec4<bool>(true, all(arg_1), arg_1.x, func_3(Struct_2(vec2<u32>(14355u, u_input.a.x), 56563u, Struct_1(vec4<i32>(u_input.c.x, 0i, 14743i, 0i), vec2<f32>(var_2.b.x, -397f), var_2.c, 21810i, arg_0.e), Struct_1(var_2.a, vec2<f32>(-183f, 219f), vec4<u32>(arg_0.c.x, 1u, 1u, 27109u), 79709i, var_1.x), 43999i), Struct_2(vec2<u32>(5833u, 0u), u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 22u)], Struct_1(var_2.a, vec2<f32>(1384f, -1000f), arg_0.c, 0i, 528f), arg_0.a.x), arg_1, Struct_1(var_2.a, arg_0.b, arg_0.c, u_input.c.x, var_1.x)).x))), max(2147483647i, _wgslsmith_mod_i32(1i, u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) + 315f)) * _wgslsmith_f_op_f32(ceil(arg_0.e))));
}

fn func_4(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = vec2<i32>(0i, u_input.c.x);
    let var_1 = ~vec3<u32>(1u, arg_0.d.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, arg_0.d.c.x), ~vec2<u32>(u_input.b.x, arg_0.a.x))) | ~vec3<u32>(u_input.b.x, 62082u, _wgslsmith_add_u32(4294967295u, arg_0.d.c.x));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_2(true, 0u, arg_0.d.c.x, global2.x || true)).x, -773f)));
    let var_2 = u_input.c;
    global0 = arg_0.d.b;
    return arg_0.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, global0.x))), global2.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1362f, -411f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -442f) + vec2<f32>(global0.x, 1342f)))), _wgslsmith_f_op_vec2_f32(func_4(Struct_2(_wgslsmith_mult_vec2_u32(u_input.a.xx, u_input.a.xz), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), Struct_1(vec4<i32>(0i, u_input.c.x, -2147483647i, 0i), vec2<f32>(global0.x, global0.x), u_input.a, u_input.c.x, global0.x), func_1(Struct_1(vec4<i32>(-1i, -39479i, u_input.c.x, u_input.c.x), vec2<f32>(global0.x, global0.x), vec4<u32>(u_input.a.x, u_input.b.x, 4294967295u, u_input.a.x), 1i, global0.x), vec4<bool>(true, global2.x, global2.x, global2.x)), -2147483647i)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, -943f), vec2<f32>(global0.x, global0.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1498f, global0.x) + vec2<f32>(-519f, global0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, -742f))))))));
    var var_0 = -select(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, ~(-1884i << (u_input.b.x % 32u))), vec4<i32>(select(abs(1i), 14253i << (1u % 32u), !global2.x), -(u_input.c.x | 2147483647i), -u_input.c.x >> (~u_input.b.x % 32u), u_input.c.x), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, global2.x), true), !vec4<bool>(true, false, global2.x, global2.x), vec4<bool>(true, true, true, true)), vec4<bool>(true, !global2.x, all(vec2<bool>(false, global2.x)), global2.x), all(!vec3<bool>(global2.x, true, global2.x))));
    global1 = array<Struct_1, 22>();
    var var_1 = _wgslsmith_f_op_f32(round(global0.x));
    let var_2 = Struct_2(~(~vec2<u32>(u_input.a.x, 2326u) >> (~u_input.b % vec2<u32>(32u))), max(max(~u_input.b.x, u_input.a.x), ~abs(countOneBits(0u))), func_1(Struct_1(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, var_0.x, 0i), vec4<i32>(1282i, 2147483647i, -5513i, -11613i), vec4<i32>(12678i, -17714i, -31766i, u_input.c.x))), vec2<f32>(-122f, _wgslsmith_f_op_f32(round(global0.x))), vec4<u32>(~59524u, ~u_input.b.x, ~41008u, min(0u, u_input.b.x)), (u_input.c.x | u_input.c.x) << (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.b.x, 27339u, 67764u, u_input.a.x)) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(exp2(global0.x)))), func_3(Struct_2(abs(u_input.a.yy), ~19882u, func_1(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], vec4<bool>(global2.x, false, false, global2.x)), global1[_wgslsmith_index_u32(1u, 22u)], 1i), Struct_2(vec2<u32>(0u, u_input.a.x), u_input.b.x << (96432u % 32u), global1[_wgslsmith_index_u32(14224u, 22u)], Struct_1(vec4<i32>(var_0.x, 2147483647i, var_0.x, u_input.c.x), vec2<f32>(1316f, global0.x), u_input.a, -1i, global0.x), _wgslsmith_add_i32(36172i, 0i)), func_3(Struct_2(vec2<u32>(24819u, 0u), 36941u, global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)], u_input.c.x), Struct_2(u_input.a.wy, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)], var_0.x), !vec4<bool>(global2.x, true, true, false), global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), Struct_1(func_1(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], vec4<bool>(true, true, false, global2.x)).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-454f, -900f)), vec4<u32>(21685u, u_input.b.x, 26560u, u_input.a.x), var_0.x, _wgslsmith_f_op_f32(-global0.x)))), Struct_1(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.c.x, 0i, 0i, u_input.c.x)), -vec4<i32>(u_input.c.x, -36378i, u_input.c.x, -9515i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-226f, 100f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -598f) - vec2<f32>(-2004f, global0.x))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x))), ~vec4<u32>(u_input.b.x ^ 4294967295u, u_input.b.x, u_input.a.x, ~u_input.b.x), firstLeadingBit(~11190i), global0.x), ~(~(-u_input.c.x) | (1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 0i, 2147483647i, -1i), vec4<i32>(var_0.x, 19537i, 2147483647i, -36814i)))));
    var_0 = vec4<i32>(var_0.x, func_1(var_2.d, func_3(var_2, Struct_2(~vec2<u32>(35465u, 59715u), ~var_2.c.c.x, global1[_wgslsmith_index_u32(1669u, 22u)], Struct_1(var_2.c.a, vec2<f32>(-388f, -984f), vec4<u32>(var_2.d.c.x, var_2.d.c.x, 4294967295u, var_2.b), var_0.x, var_2.c.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), var_0.xz)), select(vec4<bool>(true, false, global2.x, global2.x), !vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, true, true)), Struct_1(abs(var_2.c.a), vec2<f32>(var_2.d.b.x, global0.x), u_input.a, var_0.x, global0.x))).a.x, -2147483647i, ~(-abs(~(-1i))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(var_2.c.e + -876f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-215f, _wgslsmith_f_op_f32(-844f * _wgslsmith_f_op_f32(736f + global0.x))), func_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(13531u, _wgslsmith_dot_vec2_u32(var_2.a, u_input.b)), 22u)], !vec4<bool>(global2.x, true, false, global2.x)).b.x)));
    var_3 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-723f)) - _wgslsmith_f_op_f32(var_2.d.e * global0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1991f))))), _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(-1815f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_f_op_f32(-578f + 481f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.d.c.x, var_2.b), u_input.a.xx) | u_input.b) | vec2<u32>(6800u, u_input.b.x), var_2.c.b, global0.x, reverseBits(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, ~1u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.x)) * var_3.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1227f, -765f)) - _wgslsmith_div_f32(global0.x, var_2.d.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-505f, 1236f, global2.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_2(true, u_input.a.x, 5900u, global2.x)).x))), global0.x));
}

