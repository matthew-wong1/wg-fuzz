struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, i32(-2147483648), 9280i);

var<private> global1: array<bool, 30>;

var<private> global2: bool = true;

var<private> global3: array<Struct_2, 5>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    global2 = global1[_wgslsmith_index_u32(min(~1u, ~66569u), 30u)];
    global0 = abs(vec3<i32>(_wgslsmith_dot_vec3_i32(abs(arg_0.c.zyw << (vec3<u32>(arg_0.e.c, arg_0.d.c, 0u) % vec3<u32>(32u))), vec3<i32>(~15249i, ~(-2147483647i), countOneBits(-2147483647i))), arg_0.c.x, global0.x));
    global3 = array<Struct_2, 5>();
    var var_0 = vec3<f32>(-1340f, -151f, arg_0.d.a.x);
    let var_1 = arg_0.d;
    return !select(select(!(!vec4<bool>(arg_0.a.d.x, arg_0.e.b, false, true)), select(!vec4<bool>(true, true, var_1.b, global1[_wgslsmith_index_u32(1u, 30u)]), vec4<bool>(arg_0.b.x, false, false, false), false), false), vec4<bool>(select(true, global1[_wgslsmith_index_u32(35552u, 30u)], true), var_1.d.x, true, any(vec4<bool>(true, var_1.b, true, true))), true);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = Struct_2(arg_1.d, vec2<bool>(global1[_wgslsmith_index_u32(reverseBits(arg_1.a.c), 30u)], any(func_3(Struct_2(arg_1.d, vec2<bool>(global1[_wgslsmith_index_u32(13422u, 30u)], false), u_input.b, arg_1.d, Struct_1(arg_1.d.a, true, 0u, vec3<bool>(true, global1[_wgslsmith_index_u32(arg_1.d.c, 30u)], arg_1.b.x)))))), ~u_input.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.d.a * _wgslsmith_f_op_vec3_f32(-arg_1.e.a))), func_3(global3[_wgslsmith_index_u32(~4294967295u << (arg_1.a.c % 32u), 5u)]).x, select(arg_1.d.c, ~_wgslsmith_mult_u32(arg_1.e.c, 25771u), func_3(Struct_2(Struct_1(vec3<f32>(-752f, arg_1.a.a.x, 275f), false, arg_1.d.c, vec3<bool>(arg_1.e.b, false, true)), arg_1.e.d.yy, vec4<i32>(0i, arg_1.c.x, arg_1.c.x, arg_1.c.x), Struct_1(vec3<f32>(arg_1.a.a.x, -1000f, 735f), arg_1.e.b, 11131u, arg_1.a.d), Struct_1(vec3<f32>(arg_1.d.a.x, -1512f, arg_1.d.a.x), true, 25749u, arg_1.a.d))).x), select(func_3(global3[_wgslsmith_index_u32(1u, 5u)]).zyy, select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 30u)], arg_1.e.d.x, global1[_wgslsmith_index_u32(72271u, 30u)]), select(arg_1.e.d, vec3<bool>(arg_1.e.b, true, arg_1.b.x), vec3<bool>(arg_1.e.b, global1[_wgslsmith_index_u32(5786u, 30u)], arg_1.e.b)), true), func_3(Struct_2(Struct_1(vec3<f32>(arg_1.e.a.x, -1000f, 1346f), arg_1.a.b, 1u, arg_1.e.d), arg_1.a.d.zx, arg_1.c, arg_1.a, Struct_1(vec3<f32>(arg_1.a.a.x, -1000f, 880f), false, 3524u, vec3<bool>(true, false, arg_1.e.d.x)))).yyy)), arg_1.d);
    let var_1 = var_0;
    let var_2 = arg_1.d.a.x;
    var var_3 = var_1;
    global1 = array<bool, 30>();
    return vec3<f32>(var_3.d.a.x, -352f, -1010f);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2, -884f, -144f)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(u_input.c.xx, Struct_2(Struct_1(vec3<f32>(-1198f, arg_2, arg_2), arg_1.x, 4294967295u, arg_1.xzz), arg_1.zz, vec4<i32>(61086i, 1i, -1i, 1i), Struct_1(vec3<f32>(arg_2, arg_2, arg_2), arg_1.x, 1u, vec3<bool>(true, false, true)), Struct_1(vec3<f32>(-250f, arg_2, -2025f), arg_1.x, 1u, vec3<bool>(global1[_wgslsmith_index_u32(4175u, 30u)], global1[_wgslsmith_index_u32(91201u, 30u)], arg_1.x))))), vec3<f32>(-828f, -496f, arg_2), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(58014u, 4294967295u, 1u, 12941u), vec4<u32>(74637u, 28501u, 4294967295u, 4294967295u)), 30u)])), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1903f, arg_2, -1115f) - vec3<f32>(arg_2, 221f, arg_2)), vec3<f32>(1f, 1f, 1f)))), select(!(!arg_1.x), arg_1.x, false), ~1u, vec3<bool>(!arg_1.x, true, any(func_3(Struct_2(Struct_1(vec3<f32>(arg_2, arg_2, -936f), true, 249u, arg_1.xwx), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 30u)]), u_input.b, Struct_1(vec3<f32>(109f, 1468f, arg_2), true, 3612u, vec3<bool>(global1[_wgslsmith_index_u32(1u, 30u)], false, global1[_wgslsmith_index_u32(0u, 30u)])), Struct_1(vec3<f32>(arg_2, 711f, 1941f), arg_1.x, 1u, arg_1.xwx))).yyw)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)) * _wgslsmith_f_op_f32(-1549f * -310f)), var_0.a.x))), var_0.b, _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c, var_0.c, 1u, var_0.c), vec4<u32>(var_0.c, 30612u, 14557u, 4294967295u) << (vec4<u32>(var_0.c, 6970u, 7113u, 39487u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(max(vec4<u32>(var_0.c, var_0.c, 6331u, var_0.c), vec4<u32>(17169u, var_0.c, var_0.c, 0u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.c, var_0.c, 24558u, 61770u), vec4<u32>(4294967295u, 22033u, var_0.c, var_0.c)))), select(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_0.c, 30u)] && arg_1.x), select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.c <= var_0.c, !global1[_wgslsmith_index_u32(var_0.c, 30u)]), !(var_0.d.x && false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1815f, 667f))) <= -1696f));
    var var_2 = _wgslsmith_f_op_f32(-var_1.a.x);
    let var_3 = vec4<u32>(28367u, var_1.c, var_1.c, _wgslsmith_div_u32(9933u, countOneBits(71564u & var_1.c))) ^ vec4<u32>(4294967295u << (abs(var_0.c) % 32u), _wgslsmith_mult_u32(var_0.c, 28001u), ~(~reverseBits(var_1.c)), var_0.c);
    var_0 = var_1;
    return var_1;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    global0 = vec3<i32>(~(-u_input.c.x), -(~abs(22670i)) ^ (-(~u_input.a.x) & firstTrailingBit(~0i)), global0.x);
    let var_0 = global3[_wgslsmith_index_u32(4294967295u, 5u)];
    let var_1 = Struct_2(Struct_1(var_0.d.a, false, ~_wgslsmith_sub_u32(~17684u, 1u), vec3<bool>(any(var_0.a.d.xz), arg_1.b | arg_1.b, !(!global1[_wgslsmith_index_u32(arg_1.c, 30u)]))), arg_1.d.zz, vec4<i32>(2147483647i, -_wgslsmith_dot_vec3_i32(var_0.c.yzy, ~u_input.b.xyx), firstTrailingBit(var_0.c.x), select(~_wgslsmith_mult_i32(-1i, 48760i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, u_input.c.x), var_0.c.x ^ global0.x), any(arg_1.d.zy))), var_0.e, Struct_1(var_0.e.a, (true & var_0.a.b) | !(!global1[_wgslsmith_index_u32(arg_1.c, 30u)]), var_0.a.c, func_3(global3[_wgslsmith_index_u32(~reverseBits(var_0.a.c), 5u)]).xzy));
    var var_2 = var_1;
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(arg_1.a)), vec3<f32>(_wgslsmith_f_op_f32(step(-184f, -458f)), -264f, -1803f))), true, 0u, vec3<bool>(var_0.d.b & true, var_1.b.x, func_1(vec2<i32>(36596i, var_0.c.x), !vec4<bool>(false, var_0.d.d.x, var_1.b.x, true), _wgslsmith_f_op_f32(-267f + arg_0.x)).b)), var_2.a.d.xx, vec4<i32>(-var_2.c.x, -_wgslsmith_sub_i32(~(-1i), u_input.a.x | -43323i), -(~abs(17109i)), _wgslsmith_mod_i32(firstLeadingBit(global0.x), 2147483647i)), var_1.d, Struct_1(var_2.d.a, 4294967295u <= (_wgslsmith_clamp_u32(arg_1.c, var_0.a.c, var_0.a.c) << (arg_1.c % 32u)), arg_1.c, !var_0.e.d));
    return func_1(global0.zx >> ((~vec2<u32>(arg_1.c, 1u) >> (max(select(vec2<u32>(var_2.e.c, 1u), vec2<u32>(var_2.e.c, 4030u), vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.a.c, 30u)])), vec2<u32>(var_1.a.c, var_1.e.c)) % vec2<u32>(32u))) % vec2<u32>(32u)), select(select(vec4<bool>(var_0.b.x, true, !var_2.e.b, 0u != var_0.e.c), vec4<bool>(true, true, true, true), vec4<bool>(select(var_1.b.x, true, var_0.a.b), 10320u > var_2.e.c, var_0.a.d.x, false)), !select(select(vec4<bool>(global1[_wgslsmith_index_u32(var_2.d.c, 30u)], true, var_1.d.b, global1[_wgslsmith_index_u32(var_0.a.c, 30u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 30u)], true, global1[_wgslsmith_index_u32(4294967295u, 30u)], false), true), func_3(global3[_wgslsmith_index_u32(arg_1.c, 5u)]), func_3(global3[_wgslsmith_index_u32(32516u, 5u)])), true), -508f);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = ~arg_0.c;
    global3 = array<Struct_2, 5>();
    global0 = u_input.b.yxz;
    global0 = -firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(select(u_input.c.x, arg_1.x, arg_0.b), u_input.c.x), _wgslsmith_mult_i32(max(1i, -1i), arg_1.x), 38722i));
    global0 = u_input.b.xxz >> (vec3<u32>(~(~countOneBits(6224u)), arg_0.c, _wgslsmith_sub_u32(~41200u, abs(13091u))) % vec3<u32>(32u));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a.x, arg_0.a.x, -406f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-368f, -910f, arg_0.a.x), vec3<f32>(arg_0.a.x, -877f, arg_0.a.x), func_1(u_input.c.zx, vec4<bool>(arg_0.b, global1[_wgslsmith_index_u32(40367u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)], false), 3226f).d)))), !(!all(arg_0.d)), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(52611u, 47051u), countOneBits(_wgslsmith_clamp_u32(18486u, 46848u, arg_0.c))), func_1(vec2<i32>(arg_1.x, -9379i), func_3(Struct_2(arg_0, arg_0.d.zx, u_input.b, arg_0, Struct_1(arg_0.a, arg_0.b, arg_0.c, arg_0.d))), -1711f).d), vec2<bool>(true, true), _wgslsmith_add_vec4_i32(vec4<i32>(1i, max(-80085i, ~global0.x), _wgslsmith_mod_i32(-u_input.a.x, _wgslsmith_mod_i32(global0.x, -35332i)), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(10893i, u_input.c.x), arg_1))), vec4<i32>(max(-1i, -1i), global0.x, ~2147483647i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b))), arg_0, func_4(_wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(-1i) * -vec2<i32>(arg_1.x, arg_1.x), Struct_2(arg_0, vec2<bool>(true, true), abs(vec4<i32>(20944i, u_input.c.x, u_input.c.x, global0.x)), arg_0, Struct_1(arg_0.a, arg_0.b, arg_0.c, arg_0.d)))).yx, func_4(vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.x + -392f), _wgslsmith_f_op_f32(-512f * 135f)), func_1(countOneBits(u_input.c.zy), !vec4<bool>(arg_0.d.x, arg_0.d.x, true, global1[_wgslsmith_index_u32(var_0, 30u)]), arg_0.a.x), vec2<i32>(2147483647i >> (arg_2.x % 32u), max(-2147483647i, arg_1.x))), u_input.c.xy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(714f, -2797f))), func_1(global0.yy, select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(1u, 30u)], false, global1[_wgslsmith_index_u32(34320u, 30u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(47258u, 30u)], false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 30u)], false, global1[_wgslsmith_index_u32(4294967295u, 30u)], false), vec4<bool>(global1[_wgslsmith_index_u32(60587u, 30u)], false, global1[_wgslsmith_index_u32(41430u, 30u)], global1[_wgslsmith_index_u32(1u, 30u)])), !vec4<bool>(false, global1[_wgslsmith_index_u32(34123u, 30u)], global1[_wgslsmith_index_u32(13734u, 30u)], true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1763f * 101f), _wgslsmith_f_op_f32(floor(1000f)))), -countOneBits(u_input.b.zz)), vec2<i32>(countOneBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 9097i, global0.x, -12727i), vec4<i32>(14287i, global0.x, 27106i, u_input.b.x))), 0i), ~select(vec3<u32>(~29570u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u)), ~27698u), ~vec3<u32>(4791u, 117389u, 4294967295u), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(15151u), _wgslsmith_clamp_u32(56051u, 43261u, 4294967295u)), 30u)]));
    var var_1 = var_0.e;
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(203f, 376f, var_1.a.x, var_1.a.x), vec4<f32>(-674f, var_0.e.a.x, var_0.a.a.x, 387f)))))));
    var var_3 = !(!select(all(var_1.d.yx), var_0.d.d.x, true)) | !global1[_wgslsmith_index_u32(firstTrailingBit(var_0.a.c), 30u)];
    let var_4 = Struct_2(Struct_1(var_0.d.a, true, var_1.c, vec3<bool>((var_1.a.x == 1389f) && false, var_1.d.x, func_4(vec2<f32>(var_2.x, 850f), func_1(vec2<i32>(-2147i, var_0.c.x), vec4<bool>(false, false, true, false), -640f), vec2<i32>(-19821i, -12457i)).d.x)), vec2<bool>(true, true), _wgslsmith_div_vec4_i32(select(u_input.b, select(var_0.c, _wgslsmith_sub_vec4_i32(var_0.c, vec4<i32>(global0.x, global0.x, u_input.c.x, 0i)), func_3(Struct_2(Struct_1(var_0.e.a, global1[_wgslsmith_index_u32(0u, 30u)], var_1.c, vec3<bool>(false, true, var_1.b)), var_1.d.yx, var_0.c, var_0.e, Struct_1(vec3<f32>(var_2.x, 1360f, var_2.x), var_1.b, var_1.c, var_1.d)))), !vec4<bool>(global1[_wgslsmith_index_u32(var_0.e.c, 30u)], true, false, true)), reverseBits(_wgslsmith_div_vec4_i32(-vec4<i32>(var_0.c.x, -2147483647i, global0.x, 50772i), vec4<i32>(u_input.c.x, -1i, global0.x, 64735i)))), var_0.e, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2162f, 1291f, var_2.x))), !global1[_wgslsmith_index_u32(var_0.a.c, 30u)], abs(4294967295u), select(!(!vec3<bool>(var_0.d.d.x, true, var_0.a.b)), func_1(vec2<i32>(global0.x, 2147483647i), func_3(Struct_2(Struct_1(vec3<f32>(-747f, -126f, -130f), var_0.e.d.x, 4294967295u, vec3<bool>(global1[_wgslsmith_index_u32(var_0.e.c, 30u)], false, var_0.e.d.x)), var_0.e.d.yy, vec4<i32>(-18837i, -20372i, global0.x, -80724i), Struct_1(var_1.a, var_1.d.x, 0u, vec3<bool>(false, false, false)), Struct_1(vec3<f32>(-1316f, var_0.a.a.x, -263f), false, 63115u, vec3<bool>(false, var_0.a.b, true)))), var_0.e.a.x).d, vec3<bool>(true, false, global1[_wgslsmith_index_u32(1u, 30u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(vec2<u32>(1u, var_0.a.c) | vec2<u32>(0u, 16608u), abs(vec2<u32>(30986u, var_0.a.c)), var_0.d.d.yz)), ~(~var_0.e.c), _wgslsmith_clamp_vec3_u32(abs(min(reverseBits(vec3<u32>(0u, 32731u, 7538u)), vec3<u32>(0u, var_4.d.c, 4294967295u) << (vec3<u32>(var_0.a.c, 0u, var_1.c) % vec3<u32>(32u)))), ~min(vec3<u32>(var_4.d.c, 34878u, var_1.c) ^ vec3<u32>(12482u, var_0.a.c, var_4.d.c), vec3<u32>(var_0.e.c, 0u, var_4.d.c)), ~(~vec3<u32>(19472u, var_4.d.c, 5885u))));
}

