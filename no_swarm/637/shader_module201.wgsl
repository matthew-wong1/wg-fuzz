struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<f32>,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: f32;

var<private> global2: i32 = 2147483647i;

var<private> global3: array<i32, 19> = array<i32, 19>(2147483647i, 0i, i32(-2147483648), -16994i, -24270i, 38594i, 0i, -32249i, -74217i, 51890i, -1i, 12885i, -34933i, i32(-2147483648), -1i, -15315i, -31094i, 1i, -1i);

var<private> global4: array<vec3<f32>, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -417f), Struct_3(~(~1u), Struct_2(vec4<bool>(true, true, true, true), true, ~(~vec2<u32>(82594u, 6285u)), Struct_1(all(vec4<bool>(true, false, false, true)), true, -2360f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1101f, global0[_wgslsmith_index_u32(0u, 13u)], -597f, global0[_wgslsmith_index_u32(4294967295u, 13u)])))))), -332f, Struct_2(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), false), false, reverseBits(~u_input.e.zy), Struct_1(false, !(1u == u_input.c.x), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 13u)])))));
    let var_1 = vec4<u32>(~35573u, ~(~u_input.c.x), var_0.e.c.x >> (~(~0u) % 32u), var_0.b.b.c.x);
    return -select(-((u_input.d.wz & u_input.d.yw) << (vec2<u32>(27396u, 68987u) % vec2<u32>(32u))), reverseBits(u_input.d.wz), vec2<bool>(all(vec2<bool>(var_0.b.b.a.x, var_0.e.d.b)), all(var_0.b.b.a.yyx)));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2) -> u32 {
    var var_0 = -2147483647i ^ abs((arg_1.x << ((arg_2.c.x | arg_2.c.x) % 32u)) & -1i);
    global0 = array<f32, 13>();
    let var_1 = -_wgslsmith_mod_vec3_i32(~u_input.d.xxy, vec3<i32>(0i, 2147483647i, (arg_1.x ^ -1i) & arg_1.x));
    global2 = abs(-(~global3[_wgslsmith_index_u32(~u_input.e.x, 19u)])) >> (abs(abs(_wgslsmith_mod_u32(17928u, 1u))) % 32u);
    var_0 = -(firstLeadingBit(global3[_wgslsmith_index_u32(u_input.e.x, 19u)]) & global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(117546u, ~arg_2.c.x), 19u)]);
    return ~u_input.c.x ^ (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, u_input.c.x), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 61590u, arg_2.c.x), vec3<u32>(arg_2.c.x, 1u, 1u))), 7379u) ^ arg_2.c.x);
}

fn func_2(arg_0: Struct_5, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_4(391f, Struct_3(func_4(!arg_0.a.b.b, func_3(), Struct_2(arg_0.a.b.a, false, vec2<u32>(0u, arg_0.b.x), arg_0.a.b.d)) << (u_input.c.x % 32u), Struct_2(vec4<bool>(true, !arg_0.a.b.d.b, u_input.d.x != 7305i, arg_0.a.b.d.a && arg_0.a.b.d.a), true, vec2<u32>(arg_0.b.x, ~4288u), arg_0.a.b.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(759f, -775f, -523f, arg_1.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-384f, global0[_wgslsmith_index_u32(arg_0.b.x, 13u)], arg_1.x, arg_1.x))))), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.e.x, 13u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, 2414f) - global0[_wgslsmith_index_u32(arg_0.a.b.c.x, 13u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(144702u ^ arg_0.a.b.c.x, 13u)] + _wgslsmith_f_op_f32(min(-773f, arg_0.a.b.d.c)))), true)), arg_0.a.b);
    global1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.e.c.x, ~(firstTrailingBit(u_input.c.x) << (min(u_input.c.x, 0u) % 32u))), 13u)]);
    let var_1 = arg_0.a.b.d.c;
    let var_2 = u_input.c.zx;
    var var_3 = Struct_3(var_2.x, Struct_2(select(!select(vec4<bool>(var_0.e.b, false, false, true), vec4<bool>(arg_0.a.b.d.b, var_0.e.a.x, true, var_0.b.b.b), var_0.b.b.d.a), var_0.b.b.a, any(select(vec2<bool>(arg_0.a.b.a.x, false), vec2<bool>(false, false), var_0.e.d.a))), any(vec2<bool>(arg_0.a.b.d.b, true)), vec2<u32>(countOneBits(var_2.x), ~12980u), Struct_1(var_0.e.b, !all(arg_0.a.b.a.yxy), _wgslsmith_f_op_f32(-var_0.b.b.d.c))));
    return arg_0.a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_4 {
    global0 = array<f32, 13>();
    let var_0 = ~70269u;
    var var_1 = func_2(Struct_5(Struct_3(~var_0, Struct_2(!vec4<bool>(true, true, arg_0.b.b, arg_1.b.b.d.a), !arg_0.b.d.b, arg_0.b.c >> (arg_0.b.c % vec2<u32>(32u)), func_2(Struct_5(Struct_3(arg_1.e.c.x, arg_0.b), arg_1.b.b.c), vec3<f32>(arg_1.a, -451f, arg_1.d)).b.d)), vec2<u32>(abs(1u), select(u_input.e.x, u_input.e.x, true)) >> (~func_2(Struct_5(Struct_3(arg_0.b.c.x, arg_0.b), vec2<u32>(23740u, 16860u)), arg_1.c.wxw).b.c % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(1606f, arg_0.b.d.c)), -1000f, -1150f), global4[_wgslsmith_index_u32(func_4(arg_1.b.b.b | arg_0.b.d.a, u_input.d.wz, func_2(Struct_5(arg_0, vec2<u32>(u_input.c.x, u_input.c.x)), vec3<f32>(global0[_wgslsmith_index_u32(1u, 13u)], arg_1.e.d.c, arg_0.b.d.c)).b), 1u)]))))).b.d;
    var var_2 = ~_wgslsmith_clamp_i32(4234i, -2147483647i, abs(15989i << (arg_1.e.c.x % 32u)) << ((arg_0.b.c.x & 1u) % 32u));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 13u)]), Struct_3(44573u, arg_0.b), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-810f * 271f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1764f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -450f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, global0[_wgslsmith_index_u32(var_0, 13u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b.b.d.c + 1008f))))), -401f, arg_1.e);
    return arg_1;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3, arg_2: f32, arg_3: vec2<u32>) -> vec2<u32> {
    var var_0 = select(vec3<bool>((arg_1.b.c.x << (_wgslsmith_div_u32(arg_1.a, 4294967295u) % 32u)) >= arg_1.a, select((true && arg_1.b.d.a) | arg_0.b.b.b, true, u_input.b <= ~(-26244i)), u_input.e.x > (arg_1.b.c.x & ~arg_0.b.b.c.x)), !arg_1.b.a.zwy, any(func_5(Struct_3(firstTrailingBit(19708u), arg_1.b), func_5(arg_0.b, arg_0)).b.b.a.wzz));
    let var_1 = _wgslsmith_mod_vec3_u32(select(reverseBits(u_input.e.xyz), u_input.c, (_wgslsmith_f_op_f32(max(arg_2, -1645f)) >= global0[_wgslsmith_index_u32(~u_input.e.x, 13u)]) && var_0.x), ~min(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, arg_3.x, arg_0.b.a), u_input.c), 22388u, 4294967295u & u_input.c.x), u_input.c));
    var var_2 = ~(u_input.c.x & 4272u);
    let var_3 = -(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.d.x, -1i, u_input.a, u_input.d.x), u_input.d, vec4<i32>(u_input.d.x, global3[_wgslsmith_index_u32(arg_0.b.b.c.x, 19u)], -33068i, global3[_wgslsmith_index_u32(23833u, 19u)])) >> (vec4<u32>(abs(abs(1u)), ~arg_3.x, arg_3.x, 4294967295u) % vec4<u32>(32u)));
    let var_4 = Struct_1(true, true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(678f - -1101f)), _wgslsmith_f_op_f32(541f - arg_2), false)));
    return _wgslsmith_mod_vec2_u32(~u_input.e.ww ^ _wgslsmith_clamp_vec2_u32(arg_1.b.c, vec2<u32>(arg_3.x, arg_0.b.a), arg_1.b.c), func_5(func_2(Struct_5(Struct_3(1u, Struct_2(vec4<bool>(false, arg_0.b.b.d.b, var_4.b, var_4.b), arg_0.e.a.x, vec2<u32>(2435u, arg_1.b.c.x), Struct_1(var_4.a, var_4.b, arg_2))), firstLeadingBit(u_input.e.wx)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1221f, -1570f))))), arg_0).e.c);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_4 {
    var var_0 = u_input.d.zx;
    var var_1 = ~(~4735u);
    var var_2 = _wgslsmith_sub_i32(-4388i, ~min(global3[_wgslsmith_index_u32((u_input.c.x << (u_input.e.x % 32u)) & 25595u, 19u)], (u_input.a >> (u_input.c.x % 32u)) & 2147483647i));
    global2 = firstLeadingBit(firstTrailingBit(0i));
    let var_3 = ~_wgslsmith_mod_vec2_u32(func_6(func_5(func_2(Struct_5(Struct_3(u_input.c.x, Struct_2(vec4<bool>(true, arg_1, arg_0.a, arg_1), true, vec2<u32>(u_input.e.x, u_input.e.x), Struct_1(true, false, 629f))), vec2<u32>(1u, 0u)), global4[_wgslsmith_index_u32(u_input.e.x, 1u)]), Struct_4(151f, Struct_3(0u, Struct_2(vec4<bool>(false, arg_0.a, true, false), false, vec2<u32>(4294967295u, u_input.c.x), arg_0)), vec4<f32>(-1069f, arg_0.c, arg_0.c, -1471f), global0[_wgslsmith_index_u32(0u, 13u)], Struct_2(vec4<bool>(arg_1, true, arg_1, false), false, vec2<u32>(u_input.c.x, 45060u), Struct_1(arg_1, false, -715f)))), func_2(Struct_5(Struct_3(0u, Struct_2(vec4<bool>(arg_0.b, arg_0.b, arg_0.a, arg_1), arg_0.b, vec2<u32>(79810u, u_input.c.x), arg_0)), vec2<u32>(u_input.c.x, u_input.c.x)), vec3<f32>(arg_0.c, global0[_wgslsmith_index_u32(u_input.e.x, 13u)], -688f)), -682f, func_2(Struct_5(Struct_3(u_input.e.x, Struct_2(vec4<bool>(arg_0.b, true, true, true), false, u_input.c.yy, arg_0)), u_input.e.wy), global4[_wgslsmith_index_u32(countOneBits(2237u), 1u)]).b.c), vec2<u32>(u_input.c.x, u_input.c.x));
    return func_5(func_5(Struct_3(firstLeadingBit(1u), Struct_2(!vec4<bool>(arg_0.b, arg_0.a, true, false), arg_0.b, u_input.e.yw, arg_0)), func_5(Struct_3(u_input.c.x, func_2(Struct_5(Struct_3(u_input.c.x, Struct_2(vec4<bool>(arg_1, arg_0.b, true, false), arg_1, u_input.c.zx, Struct_1(true, true, global0[_wgslsmith_index_u32(0u, 13u)]))), vec2<u32>(u_input.e.x, u_input.e.x)), global4[_wgslsmith_index_u32(19559u, 1u)]).b), func_5(Struct_3(54854u, Struct_2(vec4<bool>(arg_1, false, true, arg_1), true, u_input.c.xz, arg_0)), func_5(Struct_3(13898u, Struct_2(vec4<bool>(true, false, arg_1, true), arg_0.a, vec2<u32>(4294967295u, 24034u), arg_0)), Struct_4(-196f, Struct_3(var_3.x, Struct_2(vec4<bool>(arg_0.a, arg_0.b, arg_1, arg_0.a), false, var_3, arg_0)), vec4<f32>(arg_0.c, -1000f, 953f, arg_0.c), global0[_wgslsmith_index_u32(var_3.x, 13u)], Struct_2(vec4<bool>(false, false, false, arg_0.b), arg_1, vec2<u32>(0u, var_3.x), arg_0)))))).b, Struct_4(940f, func_5(func_5(func_5(Struct_3(var_3.x, Struct_2(vec4<bool>(arg_1, true, arg_0.a, arg_0.b), true, u_input.e.xz, Struct_1(true, arg_1, -1537f))), Struct_4(-320f, Struct_3(var_3.x, Struct_2(vec4<bool>(arg_0.a, false, true, arg_1), arg_0.b, var_3, Struct_1(false, true, arg_0.c))), vec4<f32>(arg_0.c, -470f, 576f, -642f), global0[_wgslsmith_index_u32(var_3.x, 13u)], Struct_2(vec4<bool>(true, arg_1, arg_0.a, arg_0.a), false, var_3, arg_0))).b, Struct_4(-1308f, Struct_3(0u, Struct_2(vec4<bool>(arg_1, arg_0.b, true, arg_1), true, u_input.e.xx, Struct_1(false, arg_0.b, global0[_wgslsmith_index_u32(0u, 13u)]))), vec4<f32>(global0[_wgslsmith_index_u32(1u, 13u)], arg_0.c, global0[_wgslsmith_index_u32(1u, 13u)], 1745f), -1412f, Struct_2(vec4<bool>(true, arg_1, arg_0.a, arg_0.b), false, vec2<u32>(46066u, u_input.e.x), arg_0))).b, func_5(func_2(Struct_5(Struct_3(16777u, Struct_2(vec4<bool>(arg_1, arg_0.b, arg_0.b, arg_0.a), true, var_3, arg_0)), var_3), vec3<f32>(arg_0.c, 1000f, arg_0.c)), Struct_4(global0[_wgslsmith_index_u32(0u, 13u)], Struct_3(u_input.e.x, Struct_2(vec4<bool>(false, arg_0.a, false, true), true, vec2<u32>(u_input.e.x, var_3.x), Struct_1(false, true, -743f))), vec4<f32>(1000f, global0[_wgslsmith_index_u32(var_3.x, 13u)], 1000f, global0[_wgslsmith_index_u32(48542u, 13u)]), arg_0.c, Struct_2(vec4<bool>(false, false, arg_0.b, arg_0.a), false, var_3, arg_0)))).b, vec4<f32>(arg_0.c, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~33424u, 1u), 13u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.e, ~vec4<u32>(var_3.x, 45643u, 59016u, 24157u)), 13u)], -202f), func_5(func_2(Struct_5(Struct_3(var_3.x, Struct_2(vec4<bool>(true, false, true, false), true, vec2<u32>(var_3.x, u_input.e.x), arg_0)), vec2<u32>(var_3.x, 0u)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(787f, -1442f, global0[_wgslsmith_index_u32(24008u, 13u)])))), func_5(func_2(Struct_5(Struct_3(u_input.c.x, Struct_2(vec4<bool>(arg_0.a, arg_1, arg_1, arg_0.a), false, var_3, arg_0)), vec2<u32>(31322u, 0u)), global4[_wgslsmith_index_u32(21152u, 1u)]), Struct_4(661f, Struct_3(42062u, Struct_2(vec4<bool>(true, arg_0.a, false, arg_1), false, vec2<u32>(0u, var_3.x), Struct_1(arg_1, true, -1455f))), vec4<f32>(arg_0.c, global0[_wgslsmith_index_u32(20130u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], arg_0.c), -1938f, Struct_2(vec4<bool>(arg_1, arg_0.a, arg_0.b, false), false, var_3, Struct_1(arg_1, true, arg_0.c))))).c.x, Struct_2(vec4<bool>(arg_0.a, false & arg_1, arg_0.a && arg_1, arg_1), 22417u < firstLeadingBit(u_input.e.x), select(u_input.e.xy, vec2<u32>(0u, 0u), vec2<bool>(true, true)), arg_0)));
}

fn func_7(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(arg_1.c.xxw, global4[_wgslsmith_index_u32(arg_3.c.x, 1u)]))) + vec3<f32>(-929f, _wgslsmith_f_op_f32(arg_3.d.c + 515f), 1307f)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -850f, -322f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(2109f, arg_0.x, 1118f), global4[_wgslsmith_index_u32(4294967295u, 1u)])))), func_1(Struct_1(true, arg_3.a.x, 1000f), arg_1.b.b.d.a).c.wxz))));
    global4 = array<vec3<f32>, 1>();
    var var_1 = arg_3.a;
    let var_2 = Struct_1(arg_3.d.b, true, _wgslsmith_f_op_f32(max(-1767f, -1000f)));
    var var_3 = true;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1043f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_3.d.c)), arg_3.d.c));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<f32>, 1>();
    let var_0 = u_input.e.x;
    global1 = 275f;
    let var_1 = _wgslsmith_f_op_f32(func_7(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(u_input.e, ~vec4<u32>(var_0, u_input.e.x, 1u, 38923u)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(11198u, u_input.e.x, 0u, u_input.e.x), vec4<u32>(var_0, var_0, var_0, 1u)), u_input.e, all(vec2<bool>(true, false)))), ~u_input.e), 1u)], func_1(Struct_1(true, false, -513f), !(!all(vec4<bool>(false, false, true, true)))), func_1(func_1(func_5(func_2(Struct_5(Struct_3(0u, Struct_2(vec4<bool>(true, true, false, false), true, vec2<u32>(0u, u_input.c.x), Struct_1(false, false, 245f))), u_input.c.zz), vec3<f32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(var_0, 13u)], 1814f)), func_5(Struct_3(71388u, Struct_2(vec4<bool>(true, false, true, true), true, vec2<u32>(52310u, var_0), Struct_1(false, true, -811f))), Struct_4(-409f, Struct_3(var_0, Struct_2(vec4<bool>(true, false, true, true), true, u_input.c.yy, Struct_1(false, false, global0[_wgslsmith_index_u32(68945u, 13u)]))), vec4<f32>(824f, global0[_wgslsmith_index_u32(67886u, 13u)], 1000f, 864f), global0[_wgslsmith_index_u32(var_0, 13u)], Struct_2(vec4<bool>(false, true, false, false), false, vec2<u32>(4294967295u, 22261u), Struct_1(true, true, global0[_wgslsmith_index_u32(var_0, 13u)]))))).b.b.d, true).e.d, true).e.a.zxw, Struct_2(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false))), !(!all(vec4<bool>(false, false, false, true))), ~max(reverseBits(vec2<u32>(1u, 17403u)), u_input.e.wz ^ u_input.e.ww), func_1(func_2(Struct_5(Struct_3(u_input.e.x, Struct_2(vec4<bool>(false, false, true, false), true, u_input.c.xy, Struct_1(true, true, 126f))), u_input.e.xz), global4[_wgslsmith_index_u32(4294967295u, 1u)]).b.d, false).e.d)));
    global0 = array<f32, 13>();
    let var_2 = !any(vec4<bool>(false, false, any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), false));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.d.wwy), global3[_wgslsmith_index_u32(var_0, 19u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(func_5(func_5(Struct_3(4294967295u, Struct_2(vec4<bool>(var_2, false, var_2, var_2), var_2, u_input.e.xx, Struct_1(false, var_2, global0[_wgslsmith_index_u32(var_0, 13u)]))), Struct_4(global0[_wgslsmith_index_u32(75149u, 13u)], Struct_3(u_input.c.x, Struct_2(vec4<bool>(true, true, false, var_2), var_2, u_input.c.xx, Struct_1(var_2, var_2, var_1))), vec4<f32>(var_1, global0[_wgslsmith_index_u32(u_input.e.x, 13u)], 578f, global0[_wgslsmith_index_u32(32537u, 13u)]), global0[_wgslsmith_index_u32(var_0, 13u)], Struct_2(vec4<bool>(true, true, false, var_2), true, vec2<u32>(var_0, 1u), Struct_1(false, true, var_1)))).b, Struct_4(global0[_wgslsmith_index_u32(1u, 13u)], Struct_3(15947u, Struct_2(vec4<bool>(var_2, false, false, false), var_2, vec2<u32>(46717u, 87169u), Struct_1(var_2, false, global0[_wgslsmith_index_u32(var_0, 13u)]))), vec4<f32>(var_1, global0[_wgslsmith_index_u32(var_0, 13u)], var_1, 560f), 1484f, Struct_2(vec4<bool>(true, var_2, var_2, false), var_2, u_input.e.yy, Struct_1(var_2, var_2, var_1)))).c.yw, vec2<f32>(_wgslsmith_f_op_f32(-1094f - global0[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(var_0, 13u)])))))), u_input.c << (u_input.e.zyz % vec3<u32>(32u)));
}

