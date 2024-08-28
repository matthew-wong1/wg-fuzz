struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(1i, -38494i, 2147483647i, -84992i);

var<private> global1: bool = false;

var<private> global2: u32 = 49384u;

var<private> global3: f32 = 501f;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(select(u_input.d.zw, vec2<u32>(4294967295u, u_input.d.x), vec2<bool>(false, true)), u_input.d.zz, vec2<u32>(4294967295u, 4294967295u) >> (vec2<u32>(18044u, u_input.c.x) % vec2<u32>(32u))), vec2<u32>(1u, ~u_input.d.x))), 4u)];
    let var_1 = Struct_1(vec2<u32>(reverseBits(1u), ~abs(~63729u)));
    var var_2 = countOneBits(firstLeadingBit(u_input.a));
    var var_3 = Struct_1(~_wgslsmith_mult_vec2_u32(~firstTrailingBit(vec2<u32>(48346u, u_input.b)), ~var_1.a));
    let var_4 = Struct_1(~vec2<u32>(_wgslsmith_clamp_u32(0u, var_3.a.x, 41177u), ~(~2410u)));
    return any(vec4<bool>(!all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), select(true, false, any(vec4<bool>(false, false, true, false))), false, any(vec4<bool>(all(vec3<bool>(false, true, true)), true, any(vec3<bool>(true, false, false)), true))));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<f32> {
    var var_0 = vec3<bool>(true, false, -274f > _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1021f, 1963f))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1072f - -631f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-776f)) * _wgslsmith_f_op_f32(ceil(227f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -362f) - _wgslsmith_f_op_f32(f32(-1f) * -1059f)), _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, -1121f), _wgslsmith_f_op_f32(sign(-1064f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1147f, -1869f, 206f, 672f) + vec4<f32>(293f, -1000f, 847f, -1311f)), vec4<f32>(597f, -199f, 1628f, -1000f), all(vec4<bool>(arg_1.x, false, false, true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1682f, -828f, -551f), vec4<f32>(1000f, -701f, -172f, -366f)))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(501f, 1f), var_1.x)))) < var_1.x;
    var var_3 = !var_0.x;
    global1 = !(var_0.x | select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 0u), 4u)] < reverseBits(-1i), var_0.x, !any(vec4<bool>(arg_1.x, true, arg_1.x, true))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))))));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -399f) + -639f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(648f - 146f), _wgslsmith_f_op_f32(abs(-1594f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -418f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1465f * 948f)))) + _wgslsmith_f_op_vec4_f32(func_4(1u, select(vec3<bool>(true, true, true), vec3<bool>(func_3(), true, true), true), Struct_1(u_input.d.ww), _wgslsmith_mult_vec3_u32(~(u_input.c.zxx | vec3<u32>(u_input.b, 0u, 9482u)), u_input.c.wxy | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 0u, 1u), u_input.c.xwy)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -719f, var_0.x, var_0.x), vec4<f32>(872f, -709f, -318f, var_0.x), false))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1636f, var_0.x, -1701f, var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, var_0.x, var_0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1733f, var_0.x))))))));
    global3 = var_0.x;
    global2 = 17608u >> (select(~abs(~u_input.d.x), _wgslsmith_mod_u32((u_input.d.x << (u_input.c.x % 32u)) | _wgslsmith_mod_u32(17831u, 13075u), 14870u), true) % 32u);
    global0 = array<i32, 4>();
    return reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(97128i, -2147483647i, 26248i), countOneBits(vec3<i32>(u_input.a, 2147483647i, 34110i))) << (0u % 32u)) >> (~_wgslsmith_clamp_u32(firstLeadingBit(1u), u_input.b, abs(u_input.b << (4294967295u % 32u))) % 32u);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = ~max(arg_1, _wgslsmith_div_i32(_wgslsmith_sub_i32(~arg_1, _wgslsmith_add_i32(arg_1, -2147483647i)), u_input.a));
    global1 = any(vec3<bool>(true, true, any(vec3<bool>(true, false, true)) || (u_input.b == u_input.b))) || any(vec2<bool>(all(vec4<bool>(true, false, false, true)), true || any(vec2<bool>(false, true))));
    let var_1 = global0[_wgslsmith_index_u32(u_input.d.x, 4u)];
    let var_2 = vec3<f32>(689f, 510f, 512f);
    global2 = ~u_input.c.x;
    return Struct_2(select(-1170f <= arg_2.x, true, any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))) && !any(vec2<bool>(true, false))), Struct_1(min(vec2<u32>(abs(u_input.b), u_input.b), ~u_input.d.xy)), select(vec4<bool>(all(vec3<bool>(true, true, true)), false, any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, true, false), any(vec2<bool>(false, false)))), !vec4<bool>(true, true, all(vec3<bool>(true, false, false)), true)), vec2<bool>(true, false));
}

fn func_6(arg_0: Struct_2) -> i32 {
    var var_0 = func_5(i32(-1i) * -_wgslsmith_sub_i32(1i, 2147483647i), -1i, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(446f, 492f, 358f, 1238f)), vec4<f32>(191f, _wgslsmith_f_op_f32(f32(-1f) * -663f), 328f, -919f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(826f, -365f, -1239f, -115f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1432f, -350f, -1149f, -233f), vec4<f32>(-389f, 196f, 253f, -443f), true))))))));
    let var_1 = vec3<i32>(select(-69001i, ~global0[_wgslsmith_index_u32(var_0.b.a.x, 4u)], true), -22771i, _wgslsmith_clamp_i32(select(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(arg_0.b.a.x, 4u)] | 0i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], u_input.a)), -2147483647i, !(global0[_wgslsmith_index_u32(43626u, 4u)] < global0[_wgslsmith_index_u32(arg_0.b.a.x, 4u)])), (~global0[_wgslsmith_index_u32(1u, 4u)] << (_wgslsmith_sub_u32(4294967295u, 0u) % 32u)) & min(0i, -21238i), u_input.a));
    global1 = all(vec2<bool>(any(arg_0.c.zxz), var_0.c.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(u_input.c.x, var_0.c.zyw, Struct_1(vec2<u32>(28623u, arg_0.b.a.x)), vec3<u32>(arg_0.b.a.x, 20058u, 4294967295u))).x - _wgslsmith_f_op_f32(1209f * -1000f))))) - 1f);
    global0 = array<i32, 4>();
    return _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(var_0.b.a.x, 4u)], _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(arg_0.b.a.x, 4u)], u_input.a, 3597i), u_input.a), var_1), _wgslsmith_div_i32(0i, -_wgslsmith_clamp_i32(var_1.x, _wgslsmith_mod_i32(u_input.a, 1i), 1i)));
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<i32>(0i, ~(~firstLeadingBit(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(36424u, 4u)], 2286i, u_input.a))), -43689i);
    let var_1 = Struct_1(u_input.c.xx << (u_input.c.zw % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1755f, -392f), vec2<f32>(758f, -974f)) * vec2<f32>(-411f, 661f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1149f, 240f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-835f, 1263f), vec2<f32>(1116f, 882f)))))));
    global3 = var_2.x;
    let var_3 = Struct_2(func_6(func_5(-1i, func_2(), _wgslsmith_f_op_vec4_f32(vec4<f32>(-235f, 1000f, var_2.x, -234f) - vec4<f32>(290f, -730f, -971f, var_2.x)))) <= var_0.x, Struct_1(var_1.a), !select(func_5(global0[_wgslsmith_index_u32(97287u, 4u)] ^ 67207i, ~(-1i), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, -250f, var_2.x), vec4<f32>(var_2.x, var_2.x, var_2.x, -923f))).c, vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), !vec2<bool>(true, all(vec3<bool>(true, true, true))));
    return var_3;
}

fn func_7(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, arg_0.b.a.x), u_input.c.wx));
    var_0 = Struct_1(abs(var_0.a));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_0.a.x, 4u)], u_input.a) & vec2<i32>(17255i, global0[_wgslsmith_index_u32(80348u, 4u)]), vec2<i32>(-3477i, u_input.a)) & global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, 40240u) >> (64888u % 32u), 4u)], u_input.a >> (64179u % 32u), global0[_wgslsmith_index_u32(func_1().b.a.x, 4u)], _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(25412u, firstTrailingBit(arg_0.b.a.x), arg_0.b.a.x), 4u)], _wgslsmith_sub_i32(func_6(Struct_2(false, arg_0.b, arg_0.c, vec2<bool>(false, true))), func_6(Struct_2(arg_0.c.x, arg_0.b, arg_0.c, vec2<bool>(false, arg_0.a)))))) | firstLeadingBit(abs(vec4<i32>(global0[_wgslsmith_index_u32(arg_0.b.a.x, 4u)], u_input.a, 0i, global0[_wgslsmith_index_u32(4294967295u, 4u)])) & (vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.a, u_input.a, 2147483647i)));
    global2 = ~((_wgslsmith_mult_u32(firstTrailingBit(var_0.a.x), func_5(global0[_wgslsmith_index_u32(0u, 4u)], u_input.a, vec4<f32>(-206f, 486f, 234f, 178f)).b.a.x) ^ _wgslsmith_mod_u32(var_0.a.x ^ 0u, 1u)) << (var_0.a.x % 32u));
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-463f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1050f)) * 582f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(674u, vec3<bool>(false, true, false), Struct_1(var_0.a), u_input.d.zww)).x * _wgslsmith_f_op_f32(sign(-409f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-333f, -575f, u_input.c.x >= 1u)), _wgslsmith_f_op_f32(func_7(func_1())))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(1u, vec3<bool>(true, false, true), Struct_1(vec2<u32>(u_input.c.x, u_input.d.x)), vec3<u32>(1u, 1u, 4294967295u))).x)))));
    var var_0 = select(~_wgslsmith_mult_u32(0u, max(1u, 0u)), u_input.b, !(!func_5(-global0[_wgslsmith_index_u32(u_input.b, 4u)], 0i, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(493f, -578f, -345f, -860f), vec4<f32>(-112f, 639f, 678f, -137f)))).d.x));
    global1 = false;
    global0 = array<i32, 4>();
    var var_1 = !func_1().c;
    var var_2 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~4294967295u, u_input.b >> (0u % 32u)), u_input.c.x), vec2<u32>(max(39121u, u_input.b) ^ ~u_input.d.x, ~u_input.c.x)));
    let var_3 = func_5(-2147483647i, -1i, vec4<f32>(1731f, _wgslsmith_f_op_vec4_f32(func_4(4294967295u, vec3<bool>(true & var_1.x, true, true), func_5(firstLeadingBit(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, -2147483647i, u_input.a), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], global0[_wgslsmith_index_u32(var_2.a.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], 19399i)), vec4<f32>(2010f, -444f, -593f, -1986f)).b, u_input.c.xwz)).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1477f, -427f)), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(371f)))))).d.x;
    var_0 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1847f, -202f, -449f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(2124f, 911f, 162f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_4(6295u, var_1.xyx, Struct_1(vec2<u32>(u_input.b, u_input.b)), u_input.d.xyy)).wwy - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-296f, 1000f, -641f))), false)))), vec3<f32>(-982f, 1896f, 1000f), _wgslsmith_div_vec3_f32(vec3<f32>(-281f, _wgslsmith_f_op_f32(1f + 1000f), _wgslsmith_div_f32(1217f, 217f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-860f, _wgslsmith_f_op_f32(f32(-1f) * -515f), _wgslsmith_f_op_f32(188f - -1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1175f, -199f, 343f)))))), _wgslsmith_add_i32(select(_wgslsmith_mod_i32(func_2(), 2147483647i), _wgslsmith_mod_i32(u_input.a, 0i), u_input.a == 13014i), func_2()));
}

