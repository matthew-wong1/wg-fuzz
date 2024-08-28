struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_2, 24>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = Struct_4(-48824i, Struct_2(u_input.b), Struct_1(arg_0.b.x, vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), firstLeadingBit(u_input.c.x ^ 4294967295u), reverseBits(u_input.d) | (25045u << (u_input.c.x % 32u)), select(93160u | u_input.c.x, 1u, false & global0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_0.b.xz * arg_0.b.zx))), vec2<f32>(_wgslsmith_f_op_f32(min(-1220f, arg_0.b.x)), 767f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1611f, arg_0.b.x))), Struct_3(Struct_2(-15912i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.b.x)) + _wgslsmith_div_f32(571f, arg_0.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b.x))), -744f)));
    var var_1 = select(vec3<bool>(global0.x, global0.x, global0.x), select(!vec3<bool>(true, true, global0.x), select(!vec3<bool>(false, global0.x, global0.x), !(!vec3<bool>(global0.x, true, global0.x)), !all(vec2<bool>(false, true))), !global0.x), false);
    var var_2 = abs(~var_0.c.b);
    global1 = array<Struct_2, 24>();
    var var_3 = Struct_4(~(i32(-1i) * -arg_0.a.a), var_0.e.a, Struct_1(var_0.d.x, ~_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, u_input.d), _wgslsmith_div_vec4_u32(var_0.c.b, vec4<u32>(var_0.c.b.x, var_0.c.b.x, 73395u, 6523u))), var_0.e.b.yx), vec2<f32>(944f, _wgslsmith_f_op_f32(-var_0.d.x)), var_0.e);
    return select(var_1.yx, !(!(!vec2<bool>(global0.x, true))), var_1.yx);
}

fn func_2() -> Struct_1 {
    global0 = select(!(!(!func_3(Struct_3(Struct_2(2147483647i), vec3<f32>(-825f, -1000f, -202f)), Struct_2(u_input.b)))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), !(!vec2<bool>(global0.x, false)), vec2<bool>(func_3(Struct_3(Struct_2(-2147483647i), vec3<f32>(289f, 2439f, -1676f)), global1[_wgslsmith_index_u32(u_input.d, 24u)]).x, global0.x)), select(!(!vec2<bool>(false, global0.x)), vec2<bool>(global0.x && true, any(vec4<bool>(global0.x, global0.x, true, global0.x))), vec2<bool>(true, true & global0.x))), vec2<bool>(global0.x, select(global0.x, global0.x, true)));
    global0 = vec2<bool>(all(vec2<bool>(all(vec2<bool>(false, global0.x)), !func_3(Struct_3(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], vec3<f32>(779f, 801f, 1000f)), Struct_2(u_input.a)).x)), ~u_input.a <= -2147483647i);
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(min(6039u, 4294967295u), reverseBits(u_input.c.x), abs(0u)) >> (_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(0u, 3188u, u_input.c.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 42541u, u_input.c.x, 1u), ~vec4<u32>(u_input.d, 4294967295u, 51816u, u_input.c.x))) % 32u), 24u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-288f, 654f, -1000f) * vec3<f32>(-833f, -1911f, -811f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(706f, -548f, 466f) + vec3<f32>(-2459f, -1563f, 205f)))))));
    var var_1 = ~0u;
    let var_2 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, firstTrailingBit(abs(~4294967295u))), 24u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -2194f), _wgslsmith_div_f32(var_0.b.x, -694f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.b, vec3<f32>(-436f, 554f, var_0.b.x), global0.x)) - _wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(var_0.b.x, var_0.b.x, 748f)))) - var_0.b));
    return Struct_1(var_0.b.x, min(vec4<u32>(0u, _wgslsmith_mult_u32(countOneBits(u_input.c.x), 0u), min(~64235u, u_input.c.x << (u_input.c.x % 32u)), u_input.d), vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x) & 1u, 1u, _wgslsmith_div_u32(0u << (u_input.d % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 4418u), vec4<u32>(11366u, u_input.d, 1u, u_input.d))), 4294967295u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -456f), var_2.b.x));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = arg_1.e.b.x;
    let var_1 = vec2<i32>(-1i) * -vec2<i32>(firstLeadingBit(-u_input.a), -24933i);
    var_0 = _wgslsmith_f_op_f32(sign(arg_1.d.x));
    var var_2 = ~_wgslsmith_div_vec3_u32((vec3<u32>(4294967295u, arg_1.c.b.x, 4294967295u) ^ (vec3<u32>(0u, u_input.d, arg_1.c.b.x) >> (arg_1.c.b.yzw % vec3<u32>(32u)))) << (select(vec3<u32>(arg_1.c.b.x, 0u, 6021u), ~vec3<u32>(arg_1.c.b.x, 4294967295u, arg_1.c.b.x), vec3<bool>(arg_0.x, arg_0.x, true)) % vec3<u32>(32u)), ~(select(vec3<u32>(28592u, 33411u, 49788u), arg_1.c.b.zyy, global0.x) << (~arg_1.c.b.yzy % vec3<u32>(32u))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.b.x));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1172f, -179f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(415f, _wgslsmith_f_op_f32(-143f * 461f), true))))), select(arg_1.c.b, ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, arg_1.c.b.x), arg_1.c.b), any(select(select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(global0.x, arg_0.x, false), global0.x), vec3<bool>(false, arg_0.x, false), true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(775f - arg_1.d.x)), -1624f) * arg_1.e.b.zz));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(select(vec2<bool>(!all(vec3<bool>(false, global0.x, global0.x)), _wgslsmith_mult_u32(u_input.c.x, 14729u) < _wgslsmith_div_u32(1u, 4294967295u)), !vec2<bool>(true, !global0.x), false || (_wgslsmith_f_op_f32(select(-873f, -1000f, true)) <= _wgslsmith_f_op_f32(1779f + -1178f))), Struct_4(u_input.a, global1[_wgslsmith_index_u32(u_input.d, 24u)], func_2(), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(423f, 1788f), vec2<f32>(647f, 1943f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -991f), vec2<f32>(558f, -1958f)))))), Struct_3(Struct_2(1i), vec3<f32>(_wgslsmith_f_op_f32(1915f + -232f), _wgslsmith_f_op_f32(f32(-1f) * -220f), _wgslsmith_f_op_f32(2177f + 336f)))));
    let var_1 = _wgslsmith_div_vec2_u32(abs(var_0.b.xx), ~vec2<u32>(abs(_wgslsmith_add_u32(57072u, 28501u)), 30690u));
    global0 = select(vec2<bool>(any(vec2<bool>(func_3(Struct_3(Struct_2(-46835i), vec3<f32>(127f, var_0.a, -1047f)), global1[_wgslsmith_index_u32(46409u, 24u)]).x, global0.x)), !(!global0.x) & global0.x), vec2<bool>(1191f >= var_0.c.x, global0.x), true);
    let var_2 = countOneBits(func_4(vec2<bool>(global0.x, !(!global0.x)), Struct_4(-1i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0.b | var_0.b, ~vec4<u32>(var_1.x, 26942u, 35621u, var_0.b.x)), 24u)], Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1530f), ~var_0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(1325f, 1339f) * vec2<f32>(569f, var_0.a))), var_0.c, Struct_3(Struct_2(-1i), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-688f, 424f, var_0.c.x)))))).b.x);
    var var_3 = -_wgslsmith_sub_i32(abs(_wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, u_input.a), u_input.a >> (var_2 % 32u))), min(-4320i, -(u_input.b | u_input.a)));
    return Struct_1(-521f, vec4<u32>(~4294967295u, ~((var_1.x ^ 1u) << (~84960u % 32u)), var_0.b.x, 1u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-649f, 1569f) * _wgslsmith_f_op_vec2_f32(-var_0.c)), var_0.c, select(false, global0.x || global0.x, all(vec3<bool>(global0.x, false, false))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + -343f) + _wgslsmith_f_op_f32(f32(-1f) * -1137f)), func_4(!vec2<bool>(global0.x, global0.x), Struct_4(-23018i, Struct_2(u_input.b), var_0, vec2<f32>(160f, var_0.c.x), Struct_3(Struct_2(u_input.a), vec3<f32>(1674f, 547f, var_0.a)))).a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(-2147483647i, global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.d, 1u, u_input.d), ~0u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 12459u), u_input.c), vec2<u32>(24350u, 31049u)))), 24u)], func_1(), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1040f), Struct_3(Struct_2(u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-569f - -525f), _wgslsmith_f_op_f32(958f + -196f), _wgslsmith_f_op_f32(ceil(319f))))));
    let var_1 = vec3<bool>(select(true, true, global0.x), global0.x, global0.x);
    let var_2 = !var_1.xz;
    var var_3 = select(1u, ~(~min(19935u, 1u)) & min(~var_0.c.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.b.x, 6118u, u_input.c.x, 4294967295u), ~var_0.c.b)), false);
    let var_4 = var_0.e;
    var_3 = ~66213u;
    var var_5 = _wgslsmith_f_op_f32(step(359f, var_0.c.a));
    var var_6 = Struct_2(2147483647i);
    let var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-(~abs(vec3<i32>(1i, var_6.a, var_0.a)) << (var_0.c.b.wzz % vec3<u32>(32u))), _wgslsmith_mod_vec2_u32((min(vec2<u32>(0u, var_0.c.b.x), var_0.c.b.zz) << (u_input.c % vec2<u32>(32u))) & _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(1030u, 4294967295u)), ~((var_0.c.b.wz << (vec2<u32>(2647u, u_input.d) % vec2<u32>(32u))) >> (~vec2<u32>(0u, 1u) % vec2<u32>(32u)))), _wgslsmith_div_vec3_i32(-(~(vec3<i32>(-1809i, 1i, var_4.a.a) & vec3<i32>(u_input.a, var_4.a.a, u_input.b))), vec3<i32>(var_4.a.a, select(1i, 1i, all(var_1.xy)), u_input.b)), ~var_0.c.b, _wgslsmith_f_op_f32(var_4.b.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(329f, -128f))))));
}

