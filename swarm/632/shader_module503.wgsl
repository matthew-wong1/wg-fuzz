struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(vec4<bool>(true, true, false, true), vec3<u32>(58587u, 4294967295u, 3880u), true), Struct_4(vec4<bool>(false, false, false, true), vec3<u32>(16370u, 1u, 4294967295u), false), Struct_4(vec4<bool>(false, false, false, true), vec3<u32>(13495u, 58231u, 3408u), false), Struct_4(vec4<bool>(false, false, true, false), vec3<u32>(1u, 13711u, 54429u), true), Struct_4(vec4<bool>(false, false, false, false), vec3<u32>(4294967295u, 4294967295u, 1u), false), Struct_4(vec4<bool>(true, true, true, true), vec3<u32>(59735u, 24881u, 22575u), false), Struct_4(vec4<bool>(true, false, true, true), vec3<u32>(0u, 0u, 74631u), false), Struct_4(vec4<bool>(true, false, false, true), vec3<u32>(11095u, 0u, 0u), false), Struct_4(vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, 3579u, 4294967295u), true), Struct_4(vec4<bool>(true, true, true, false), vec3<u32>(24676u, 7149u, 15553u), false), Struct_4(vec4<bool>(false, false, true, true), vec3<u32>(28924u, 4294967295u, 80412u), false), Struct_4(vec4<bool>(true, false, true, false), vec3<u32>(4294967295u, 4294967295u, 4294967295u), false), Struct_4(vec4<bool>(true, false, true, false), vec3<u32>(4294967295u, 1u, 0u), false), Struct_4(vec4<bool>(true, true, false, false), vec3<u32>(1u, 28060u, 18892u), true), Struct_4(vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, 13934u, 14421u), true), Struct_4(vec4<bool>(false, true, false, false), vec3<u32>(11100u, 60138u, 0u), true), Struct_4(vec4<bool>(false, false, true, true), vec3<u32>(19688u, 1u, 0u), false), Struct_4(vec4<bool>(true, false, false, false), vec3<u32>(35632u, 0u, 512u), false), Struct_4(vec4<bool>(false, true, false, true), vec3<u32>(10336u, 1u, 20990u), true), Struct_4(vec4<bool>(true, false, true, true), vec3<u32>(84245u, 39347u, 22523u), true), Struct_4(vec4<bool>(false, true, false, false), vec3<u32>(4294967295u, 9313u, 4294967295u), true), Struct_4(vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, 4294967295u, 0u), true), Struct_4(vec4<bool>(true, false, true, true), vec3<u32>(1u, 26173u, 25733u), false));

var<private> global2: array<i32, 25> = array<i32, 25>(26395i, 19822i, 7557i, -1i, -1i, 1i, 1i, 2147483647i, i32(-2147483648), 2147483647i, -9652i, 303i, 43216i, 2147483647i, -9791i, 47890i, 2147483647i, -15536i, -68486i, 9223i, 1i, 8437i, 27578i, -11319i, -6179i);

var<private> global3: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(vec4<bool>(false, false, false, true), vec3<u32>(4144u, 4294967295u, 74942u), false), Struct_4(vec4<bool>(false, false, true, false), vec3<u32>(1u, 7277u, 30803u), false), Struct_4(vec4<bool>(true, true, true, false), vec3<u32>(0u, 2029u, 9062u), false), Struct_4(vec4<bool>(false, false, true, true), vec3<u32>(0u, 4294967295u, 0u), true), Struct_4(vec4<bool>(false, true, false, true), vec3<u32>(212u, 63992u, 1u), true), Struct_4(vec4<bool>(false, false, false, true), vec3<u32>(8069u, 10439u, 47281u), true), Struct_4(vec4<bool>(true, false, true, true), vec3<u32>(64272u, 4294967295u, 80124u), false), Struct_4(vec4<bool>(true, false, false, false), vec3<u32>(34263u, 0u, 4294967295u), true), Struct_4(vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 50626u, 4294967295u), false), Struct_4(vec4<bool>(true, false, true, false), vec3<u32>(0u, 4294967295u, 86844u), true));

var<private> global4: Struct_3;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<f32>) -> vec4<i32> {
    return vec4<i32>(843i, _wgslsmith_add_i32(17577i, global2[_wgslsmith_index_u32(~arg_1.a, 25u)]) << (0u % 32u), _wgslsmith_mod_i32(_wgslsmith_div_i32(-global2[_wgslsmith_index_u32(global4.c, 25u)], -global2[_wgslsmith_index_u32(1u, 25u)]), ~min(~(-33276i), global2[_wgslsmith_index_u32(u_input.a.x, 25u)])), -14516i);
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: vec4<i32>) -> vec4<bool> {
    var var_0 = -328f;
    let var_1 = _wgslsmith_clamp_i32(0i, arg_1.c, _wgslsmith_div_i32(min(firstLeadingBit(13787i), _wgslsmith_mod_i32(arg_2.x, _wgslsmith_add_i32(arg_2.x, -35405i))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, global2[_wgslsmith_index_u32(arg_1.d.a, 25u)], global2[_wgslsmith_index_u32(u_input.a.x, 25u)], arg_2.x), vec4<i32>(global2[_wgslsmith_index_u32(global0.a, 25u)], 76646i, 1i, 7008i)), arg_1.c, -2147483647i, 715i), vec4<i32>(global2[_wgslsmith_index_u32(global4.c & 1u, 25u)], 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c, -1i, 2147483647i), vec3<i32>(global2[_wgslsmith_index_u32(global0.a, 25u)], global2[_wgslsmith_index_u32(49752u, 25u)], arg_2.x)), 0i))));
    var_0 = _wgslsmith_f_op_f32(-global4.e);
    let var_2 = ~(-func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e.x, global4.e, global4.d.x, 849f) - vec4<f32>(global4.d.x, 1534f, 988f, -510f))), Struct_2(~46081u, global0.c, arg_1.a.c), false, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1098f, 207f, 419f) * _wgslsmith_f_op_vec3_f32(-arg_1.e))));
    var_0 = _wgslsmith_f_op_f32(global4.d.x - _wgslsmith_f_op_f32(select(-1683f, global4.e, all(select(vec3<bool>(false, global0.c.a, arg_0), vec3<bool>(arg_1.d.c.a, arg_0, false), arg_1.d.b.a)) != !any(vec2<bool>(global0.c.a, false)))));
    return vec4<bool>(arg_1.a.c.a, global4.a.a, global4.b, true);
}

fn func_4(arg_0: bool) -> Struct_1 {
    global4 = Struct_3(Struct_1(true | func_2(!arg_0, Struct_5(Struct_2(0u, global4.a, global0.c), global4.c, 0i, Struct_2(7336u, global0.b, Struct_1(global0.c.a)), vec3<f32>(global4.d.x, -1287f, global4.d.x)), -vec4<i32>(global2[_wgslsmith_index_u32(6311u, 25u)], -2147483647i, global2[_wgslsmith_index_u32(33143u, 25u)], -1i)).x), !(!select(true, global0.c.a, !global4.a.a)), _wgslsmith_add_u32(u_input.a.x & reverseBits(1u), 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.d)) * global4.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.d.x))), -1474f)) + global4.e));
    var var_0 = 271f;
    let var_1 = reverseBits(~countOneBits(1u));
    var var_2 = min(~4294967295u, select(~var_1 << ((reverseBits(25651u) | u_input.a.x) % 32u), var_1, true));
    var_2 = _wgslsmith_add_u32(~4294967295u, 1u);
    return Struct_1(~1u != (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(41734u, 2800u, 4294967295u, u_input.a.x) >> (vec4<u32>(var_1, 28344u, 7036u, 9388u) % vec4<u32>(32u))) << (~u_input.a.x % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_4(select(func_2(func_2(true, Struct_5(Struct_2(2035u, arg_0, arg_1), global4.c, global2[_wgslsmith_index_u32(65045u, 25u)], Struct_2(u_input.a.x, Struct_1(global0.c.a), Struct_1(global0.b.a)), global4.d), _wgslsmith_add_vec4_i32(vec4<i32>(15139i, 17122i, global2[_wgslsmith_index_u32(arg_2, 25u)], 0i), vec4<i32>(-17336i, 2147483647i, global2[_wgslsmith_index_u32(0u, 25u)], -14857i))).x, Struct_5(Struct_2(global4.c, Struct_1(false), Struct_1(true)), 1u, 1i, Struct_2(1u, Struct_1(global4.b), Struct_1(false)), vec3<f32>(global4.d.x, global4.d.x, global4.e)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(6337u, 25u)], global2[_wgslsmith_index_u32(22018u, 25u)], 13572i, -4527i), vec4<i32>(global2[_wgslsmith_index_u32(38273u, 25u)], global2[_wgslsmith_index_u32(30142u, 25u)], global2[_wgslsmith_index_u32(global0.a, 25u)], -2147483647i)), _wgslsmith_mod_i32(-19387i, 1i), ~0i, _wgslsmith_div_i32(20063i, -10841i))), !select(select(vec4<bool>(true, true, arg_0.a, global4.b), vec4<bool>(false, arg_0.a, global0.b.a, false), arg_0.a), !vec4<bool>(true, false, true, arg_1.a), false), !all(select(vec4<bool>(arg_0.a, global0.c.a, arg_0.a, false), vec4<bool>(true, arg_0.a, global4.a.a, arg_1.a), true))), max(vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 1u, arg_2)), ~u_input.a.zxw), ~global0.a, _wgslsmith_dot_vec2_u32(min(u_input.a.yz, vec2<u32>(73837u, global4.c)), vec2<u32>(u_input.a.x, 0u))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, 46375u, 4294967295u)), ~_wgslsmith_mult_vec3_u32(u_input.a.xyx, u_input.a.xwx))), arg_1.a);
    global4 = Struct_3(func_4(all(!select(var_0.a, vec4<bool>(global0.c.a, arg_1.a, arg_0.a, arg_0.a), vec4<bool>(false, false, global4.a.a, true)))), arg_1.a && var_0.a.x, 29927u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.d)), global4.d.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.e)), _wgslsmith_f_op_f32(exp2(global4.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -162f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1237f, global4.d.x)), _wgslsmith_f_op_f32(abs(global4.e)))), -1374f) + vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.e), -540f)))), _wgslsmith_div_f32(-286f, _wgslsmith_f_op_f32(-754f + global4.e)), global4.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1523f - _wgslsmith_f_op_f32(-global4.d.x)))));
    var var_2 = max(vec3<i32>(min(-(~(-39964i)), -1i), ~(i32(-1i) * -global2[_wgslsmith_index_u32(u_input.a.x, 25u)]), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.a.yz, ~u_input.a.yx), 25u)]), -_wgslsmith_mult_vec3_i32(~min(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(arg_2, 25u)], global2[_wgslsmith_index_u32(1u, 25u)]), vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(var_0.b.x, 25u)], global2[_wgslsmith_index_u32(var_0.b.x, 25u)])), vec3<i32>(1i, global2[_wgslsmith_index_u32(~global4.c, 25u)], 1i)));
    return Struct_2(~var_0.b.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1181f)) <= _wgslsmith_f_op_f32(sign(var_1.x))), func_4(arg_1.a));
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_4, 23>();
    global0 = func_5(func_4(any(func_2(global0.c.a, Struct_5(Struct_2(u_input.a.x, Struct_1(false), global0.b), 1133u, global2[_wgslsmith_index_u32(1u, 25u)], Struct_2(1u, Struct_1(true), Struct_1(global0.b.a)), vec3<f32>(1260f, 1172f, -379f)), ~vec4<i32>(global2[_wgslsmith_index_u32(23403u, 25u)], 374i, 0i, 2147483647i)))), global4.a, reverseBits(1u));
    var var_0 = vec2<i32>(-22612i | global2[_wgslsmith_index_u32(min(0u, 1u), 25u)], reverseBits(-2147483647i));
    global1 = array<Struct_4, 23>();
    let var_1 = Struct_5(Struct_2(u_input.a.x, Struct_1(false), global4.a), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.c, global4.c, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), 1u) << (global4.c % 32u), 26750i, Struct_2(~u_input.a.x, func_4(any(vec2<bool>(false, true))), Struct_1(~1u > ~u_input.a.x)), global4.d);
    return func_5(Struct_1(!func_5(func_4(global0.b.a), global0.c, _wgslsmith_add_u32(global4.c, global4.c)).c.a), Struct_1(false), var_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = func_5(Struct_1(true), func_5(Struct_1(true), global4.a, _wgslsmith_add_u32(func_5(global4.a, Struct_1(true), select(20529u, global0.a, global4.a.a)).a, 1u)).c, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 107942u, global4.c, 0u) << (vec4<u32>(u_input.a.x, 4294967295u, 0u, global4.c) % vec4<u32>(32u)), select(vec4<u32>(0u, 1u, global4.c, 4076u), u_input.a, false)) & ~0u));
    let var_0 = ~_wgslsmith_clamp_vec3_u32(u_input.a.wzz, vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(global4.c, global4.c), vec2<u32>(u_input.a.x, global0.a)), global4.c, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.wxw, u_input.a.xzx), u_input.a.xwx)), ~select(u_input.a.wzx, u_input.a.wzy, vec3<bool>(global0.c.a, global0.c.a, true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(590f, -532f)), 847f, _wgslsmith_f_op_f32(1621f + -717f), 391f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.e, global4.d.x, global4.d.x, -1336f))))))));
    var_1 = vec4<f32>(707f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) - _wgslsmith_f_op_f32(-global4.e)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global4.d.x, 1000f)), -160f)), global4.d.x);
    let var_2 = ~(-vec2<i32>(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -596f, global4.e)), Struct_2(global4.c, global0.b, global0.b), global4.b && true, _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.e, var_1.x, global4.d.x) * global4.d)).x, 0i));
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1386f, 418f) - vec2<f32>(global4.d.x, -121f)))), global4.d.yx));
    let var_4 = true;
    let var_5 = Struct_5(func_5(global4.a, global4.a, _wgslsmith_mult_u32(~max(var_0.x, global4.c), abs(firstLeadingBit(global4.c)))), ~(~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(23u, 0u, 23076u), u_input.a.yww))), -6041i | _wgslsmith_dot_vec2_i32(firstTrailingBit(var_2), vec2<i32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, var_0.x), 25u)], -27671i)), func_5(func_1().c, func_5(func_1().b, Struct_1(global0.b.a), ~var_0.x >> (reverseBits(var_0.x) % 32u)).c, func_5(func_1().b, global0.c, global0.a).a), var_1.xww);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(_wgslsmith_div_i32(0i, global2[_wgslsmith_index_u32(1u, 25u)]), var_2.x, countOneBits(reverseBits(var_2.x)), var_2.x >> (global4.c % 32u)), var_3, _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a | (vec4<u32>(0u, var_5.b, var_5.d.a, 1u) >> (vec4<u32>(u_input.a.x, var_0.x, 13472u, 4294967295u) % vec4<u32>(32u))), u_input.a, _wgslsmith_div_vec4_u32(~u_input.a, reverseBits(u_input.a))), ~u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_5.e.x), -431f, _wgslsmith_f_op_f32(step(global4.d.x, 1505f)), 371f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(843f, 924f, 994f, 1184f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.e, 399f, -542f, var_3.x) * vec4<f32>(var_1.x, var_3.x, var_5.e.x, -310f))))), var_2);
}

