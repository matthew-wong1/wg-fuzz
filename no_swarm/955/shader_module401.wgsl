struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(320f, false, vec2<f32>(423f, -852f), -1i), Struct_2(914f, false, vec2<f32>(851f, 933f), i32(-2147483648)), Struct_2(-807f, false, vec2<f32>(460f, -468f), -13251i), Struct_2(-898f, false, vec2<f32>(-161f, -152f), -23988i), Struct_2(862f, false, vec2<f32>(640f, -263f), -23045i), Struct_2(-735f, true, vec2<f32>(1054f, 688f), 12406i), Struct_2(711f, false, vec2<f32>(-1290f, 680f), -23419i), Struct_2(-2038f, true, vec2<f32>(-971f, -178f), 16197i), Struct_2(-332f, false, vec2<f32>(-262f, 618f), 0i), Struct_2(-748f, false, vec2<f32>(3484f, 299f), 0i), Struct_2(-128f, false, vec2<f32>(-304f, 880f), 7731i), Struct_2(-120f, true, vec2<f32>(768f, -677f), 0i), Struct_2(-904f, true, vec2<f32>(1375f, -1000f), 18271i), Struct_2(689f, false, vec2<f32>(1000f, 1000f), 0i), Struct_2(-1857f, true, vec2<f32>(1102f, -762f), -27343i), Struct_2(-1817f, true, vec2<f32>(-512f, -310f), -31225i), Struct_2(-1420f, false, vec2<f32>(459f, -2809f), 7207i), Struct_2(127f, true, vec2<f32>(-1630f, 1000f), -30284i), Struct_2(-983f, true, vec2<f32>(-249f, 839f), 52344i), Struct_2(204f, false, vec2<f32>(-1016f, -1760f), 17328i), Struct_2(525f, false, vec2<f32>(-608f, -1000f), 32982i), Struct_2(-223f, true, vec2<f32>(-1496f, 354f), 2470i), Struct_2(837f, true, vec2<f32>(236f, -849f), 9201i), Struct_2(1540f, false, vec2<f32>(-396f, -1257f), -1i), Struct_2(-1560f, true, vec2<f32>(380f, 139f), -1i), Struct_2(-1000f, true, vec2<f32>(1180f, 818f), -1i), Struct_2(1328f, true, vec2<f32>(-1152f, 715f), i32(-2147483648)), Struct_2(-1000f, true, vec2<f32>(355f, -865f), i32(-2147483648)), Struct_2(-660f, true, vec2<f32>(-232f, -778f), -39022i), Struct_2(-1462f, false, vec2<f32>(-531f, -678f), 1i), Struct_2(-1653f, false, vec2<f32>(-244f, 132f), i32(-2147483648)), Struct_2(-535f, false, vec2<f32>(851f, -1209f), -29581i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    global1 = array<Struct_2, 32>();
    let var_0 = -888f;
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(u_input.c.x, 32u)], Struct_1(firstLeadingBit(vec3<i32>(~0i, max(u_input.a.x, u_input.a.x), _wgslsmith_clamp_i32(-10213i, u_input.a.x, -7602i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, var_0, var_0))))), ~min(1u, u_input.c.x << (u_input.b.x % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1582f, -658f, var_0) + vec3<f32>(var_0, -617f, 811f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2331f, var_0, -697f))) + vec3<f32>(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -934f), _wgslsmith_f_op_f32(round(1472f)))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(817f, -319f), _wgslsmith_f_op_f32(1659f * var_0), _wgslsmith_f_op_f32(step(var_0, var_0))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, 502f))))))), -u_input.a.x, Struct_2(676f, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0))), u_input.a.x));
    var_1 = Struct_3(var_1.e, var_1.b, _wgslsmith_f_op_vec3_f32(-var_1.c), _wgslsmith_mult_i32(_wgslsmith_div_i32(~43167i, -u_input.a.x), u_input.a.x) << (72747u % 32u), var_1.a);
    let var_2 = Struct_4(abs(85214u), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1998f) - _wgslsmith_f_op_f32(max(1246f, _wgslsmith_f_op_f32(-1000f * -254f)))), global0.x, vec2<f32>(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2087f)))), max(~u_input.a.x, 1i) ^ max(-16937i, _wgslsmith_mod_i32(var_1.b.a.x, u_input.a.x))), Struct_1(_wgslsmith_clamp_vec3_i32(countOneBits(u_input.a.wwz), -firstLeadingBit(u_input.a.yww), vec3<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a.x), _wgslsmith_add_i32(var_1.d, u_input.a.x), _wgslsmith_sub_i32(var_1.b.a.x, 2147483647i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.c.x, -159f, 888f) - vec3<f32>(-1063f, var_0, 2447f)))), var_1.b.b), arg_0));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.a * _wgslsmith_f_op_f32(-378f + var_1.e.c.x)) - -520f);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    global0 = !select(vec2<bool>(true, true), select(!(!vec2<bool>(false, arg_1.b)), !vec2<bool>(arg_1.b, arg_1.b), arg_0.a.b), !(!select(vec2<bool>(global0.x, arg_1.b), vec2<bool>(global0.x, arg_1.b), false)));
    var var_0 = -_wgslsmith_mult_vec2_i32(u_input.a.zw, arg_0.b.a.zx << (~reverseBits(u_input.c.yx) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, ~(~u_input.b.x), 4294967295u), vec3<u32>(~arg_0.b.c, arg_2.x, min(14750u | (arg_2.x & 0u), ~_wgslsmith_dot_vec2_u32(arg_2.wy, vec2<u32>(u_input.c.x, arg_0.b.c)))), u_input.c);
    let var_2 = arg_0;
    var var_3 = reverseBits(-42038i) >> (var_2.b.c % 32u);
    return var_2.b.c;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(func_4(Struct_3(global1[_wgslsmith_index_u32(25051u, 32u)], Struct_1(-u_input.a.yxy, vec3<f32>(-172f, 786f, -2097f), _wgslsmith_mult_u32(4294967295u, u_input.b.x)), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1308f)), _wgslsmith_f_op_f32(func_3(1u)), _wgslsmith_f_op_f32(step(523f, 530f))), -38919i, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x ^ 3727u, _wgslsmith_clamp_u32(33347u, 13167u, u_input.c.x)), 32u)]), Struct_2(-941f, !(global0.x != true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-258f, 1686f))), ~(~u_input.a.x)), vec4<u32>(u_input.c.x, ~(u_input.c.x | 4036u), 4294967295u, _wgslsmith_mult_u32(firstLeadingBit(u_input.c.x), ~u_input.b.x)), select(~2147483647i, -17515i, any(vec3<bool>(true, true, true)))), 32u)], Struct_1(abs(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.yxx, vec3<i32>(2147483647i, -2147483647i, u_input.a.x)), u_input.a.x >> (4294967295u % 32u), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(703f * -757f) + -831f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2806f - 358f)), 1335f), u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1094f, -1428f, -1354f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-273f, -265f, -1554f))))), u_input.a.x ^ 0i, Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(820f, -463f))), -480f)), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -353f), _wgslsmith_f_op_f32(floor(389f)))), -(~(-1i ^ u_input.a.x))));
    let var_1 = !(!vec3<bool>((1u & u_input.b.x) == (4294967295u >> (0u % 32u)), all(vec3<bool>(global0.x, global0.x, global0.x)) && true, !select(var_0.a.b, global0.x, global0.x)));
    let var_2 = 28025u;
    let var_3 = select(!select(vec3<bool>(var_1.x, select(false, var_0.e.b, true), select(global0.x, false, false)), vec3<bool>(true, true, true), var_1), select(var_1, !select(!var_1, var_1, true), vec3<bool>(var_0.e.b, !all(vec3<bool>(true, false, var_0.e.b)), var_1.x)), select(!select(!var_1, var_1, var_0.e.b), !select(var_1, vec3<bool>(true, false, var_1.x), all(vec3<bool>(true, false, global0.x))), select(vec3<bool>(false | var_1.x, true, true), select(select(vec3<bool>(false, true, false), var_1, vec3<bool>(true, var_1.x, true)), vec3<bool>(var_0.e.b, true, true), var_1), ~29624u >= countOneBits(var_0.b.c))));
    let var_4 = _wgslsmith_f_op_f32(-396f * var_0.e.c.x);
    return var_0.b;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1071f, 802f, 373f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1650f, 194f, 1000f)))))));
    let var_1 = global0.x;
    global1 = array<Struct_2, 32>();
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(-var_0.x))), abs(u_input.a.x), Struct_2(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(trunc(var_0.x)) > 1000f, var_0.yy, _wgslsmith_div_i32(_wgslsmith_mod_i32(reverseBits(u_input.a.x), u_input.a.x << (u_input.b.x % 32u)), firstLeadingBit(-u_input.a.x))));
    var var_3 = var_2.b;
    return -529f;
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.b.x, 61594u), reverseBits(1u), 1u, ~55139u), vec4<u32>(u_input.b.x >> (u_input.b.x % 32u), ~0u, 1u | arg_0.x, _wgslsmith_mult_u32(481u, arg_3.c))), 4294967295u), 32u)], Struct_1(arg_3.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.wyw)), ~_wgslsmith_mult_u32(arg_0.x, arg_0.x)), arg_2.ywx, reverseBits(_wgslsmith_div_i32(u_input.a.x, 24270i) ^ 1i), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(1u), 109096u), 32u)]);
    global1 = array<Struct_2, 32>();
    var var_1 = arg_3;
    let var_2 = Struct_5(var_0.e.d, _wgslsmith_f_op_f32(round(arg_3.b.x)), ~(-u_input.a));
    global1 = array<Struct_2, 32>();
    return vec3<bool>(all(vec4<bool>(true, any(vec4<bool>(true, global0.x, false, var_0.a.b)), all(!vec4<bool>(var_0.e.b, false, global0.x, global0.x)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(4294967295u))) < arg_3.b.x, any(select(vec3<bool>(true, !var_0.a.b, var_0.e.b), !select(vec3<bool>(false, true, var_0.e.b), vec3<bool>(var_0.e.b, global0.x, global0.x), global0.x), !vec3<bool>(false, true, var_0.e.b))));
}

fn func_6(arg_0: bool, arg_1: vec3<bool>, arg_2: vec3<u32>) -> Struct_5 {
    let var_0 = Struct_2(1199f, arg_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_2().b.yz)), _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), -3283i), u_input.a.x));
    global0 = arg_1.xy;
    global0 = arg_1.yy;
    let var_1 = 4294967295u;
    let var_2 = Struct_4(1u, Struct_2(896f, var_0.b, var_0.c, ~(-2147483647i)), Struct_1(u_input.a.wzy, vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-433f, -1256f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * var_0.a))), 70550u));
    return Struct_5(func_2().a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -801f))) * _wgslsmith_f_op_f32(func_1()))), -(u_input.a ^ vec4<i32>(0i, ~u_input.a.x, var_2.b.d, ~(-2147483647i))));
}

fn func_7(arg_0: Struct_5, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f)));
    let var_1 = Struct_3(Struct_2(-1000f, !(var_0 <= var_0), vec2<f32>(_wgslsmith_f_op_f32(-1f), 838f), -1i), Struct_1(~func_6(!global0.x, vec3<bool>(false, true, global0.x), vec3<u32>(58134u, 40258u, u_input.b.x)).c.xzz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, 806f, -478f))))), reverseBits(u_input.c.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(func_6(false, vec3<bool>(global0.x, global0.x, global0.x), u_input.c).b - arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))))), -14655i, global1[_wgslsmith_index_u32(29960u, 32u)]);
    let var_2 = _wgslsmith_add_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(u_input.b, u_input.b)), firstTrailingBit(vec3<u32>(~42378u, ~var_1.b.c, 4294967295u)) ^ u_input.b);
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    return Struct_3(var_1.e, func_2(), _wgslsmith_div_vec3_f32(var_1.b.b, _wgslsmith_f_op_vec3_f32(-var_1.c)), -(~24132i), Struct_2(_wgslsmith_f_op_f32(func_1()), global0.x, vec2<f32>(_wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(557f - 1936f)), 1f), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 32>();
    let var_0 = func_7(func_6(true, func_5(~u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(221f - -841f), _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2353f, -433f, 1762f, -1000f))) + vec4<f32>(1934f, -1751f, -1000f, -1562f)), func_2()), vec3<u32>(u_input.c.x, _wgslsmith_sub_u32(~19286u, u_input.c.x | 4294967295u), u_input.b.x)), -u_input.a.xww);
    let var_1 = u_input.a.wxx;
    var var_2 = vec2<bool>(select(true, ~81800u != _wgslsmith_clamp_u32(u_input.b.x, 1u, u_input.b.x), true) && global0.x, false | all(vec3<bool>(true, true, true)));
    global1 = array<Struct_2, 32>();
    let var_3 = Struct_4(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.c.x, var_0.b.c), 1u), u_input.c.x), func_7(func_6(!any(vec2<bool>(var_0.e.b, true)), select(!vec3<bool>(false, false, var_0.e.b), select(vec3<bool>(var_2.x, false, false), vec3<bool>(true, var_0.a.b, true), vec3<bool>(true, true, var_0.a.b)), var_0.b.b.x != var_0.a.c.x), u_input.b), vec3<i32>(var_0.b.a.x | _wgslsmith_add_i32(var_0.a.d, 35643i), _wgslsmith_mod_i32(~u_input.a.x, u_input.a.x & -2147483647i), u_input.a.x)).a, func_2());
    let var_4 = -vec2<i32>(var_3.c.a.x, 14624i);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.b.xx, ~60538u, vec3<u32>(52711u, max(_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, u_input.b.x), u_input.b.xy, vec2<bool>(var_3.b.b, var_0.e.b)), vec2<u32>(4294967295u, var_0.b.c)), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.c.c, 1u, u_input.b.x), u_input.b))), 0u), _wgslsmith_sub_i32(var_0.a.d & _wgslsmith_dot_vec4_i32(~vec4<i32>(var_4.x, u_input.a.x, -26586i, u_input.a.x), u_input.a), _wgslsmith_mult_i32(firstTrailingBit(25811i), _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.b.a.x, 2147483647i), ~var_4.x))), u_input.b.yx);
}

