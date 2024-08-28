struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

var<private> global1: array<bool, 32>;

var<private> global2: array<bool, 18> = array<bool, 18>(true, true, false, true, true, false, false, false, true, false, false, true, false, true, false, false, true, true);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: bool) -> bool {
    var var_0 = arg_0.a.x;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(sign(1782f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1454f + -231f), -1149f, _wgslsmith_f_op_f32(-198f - -1168f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-103f, _wgslsmith_f_op_f32(-594f * -607f), _wgslsmith_f_op_f32(floor(623f)))))));
    return select(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(arg_0.a.x, -2147483647i, arg_0.a.x, arg_0.a.x), select(vec4<i32>(arg_0.a.x, 1i, 77006i, -17130i), vec4<i32>(1i, u_input.b, arg_0.a.x, 2147483647i), vec4<bool>(true, arg_2, global2[_wgslsmith_index_u32(10261u, 18u)], arg_2))), vec4<i32>(u_input.b >> (4294967295u % 32u), arg_0.a.x, select(2147483647i, arg_0.a.x, false), u_input.b << (61751u % 32u))), _wgslsmith_mod_i32(-u_input.b & u_input.b, -1i), !(arg_1 & false)) >= u_input.b;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_4, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = true;
    global0 = array<vec2<f32>, 31>();
    var var_1 = ~u_input.a.x;
    global2 = array<bool, 18>();
    global2 = array<bool, 18>();
    return min(abs(countOneBits(_wgslsmith_mult_vec2_u32(arg_0.a, select(arg_3.a, vec2<u32>(u_input.a.x, arg_0.b), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 18u)]))))), u_input.a.xy);
}

fn func_2(arg_0: Struct_5, arg_1: i32) -> u32 {
    var var_0 = Struct_2(Struct_1(~(~vec2<u32>(u_input.c.x, 5639u)), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.a.x), max(arg_0.b, arg_0.b)), ~u_input.a.zz)), Struct_1(select(~(u_input.c & vec2<u32>(24997u, 18410u)), func_4(Struct_1(vec2<u32>(29575u, 1u), arg_0.b), func_3(Struct_5(vec3<i32>(-17486i, u_input.b, arg_0.a.x), u_input.a.x), global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(42626u, 18u)]), Struct_4(891f, vec3<f32>(333f, 1052f, -559f)), Struct_1(u_input.c, arg_0.b)), false | global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), max(_wgslsmith_mod_u32(~29233u, ~arg_0.b), reverseBits(~4294967295u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(354f, -1179f) - 1774f)))));
    var var_1 = u_input.a;
    global1 = array<bool, 32>();
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(304f, -375f, var_0.c)))))));
    return 30431u;
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * _wgslsmith_f_op_f32(max(arg_2, arg_2))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1406f, -297f, arg_2))) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2), vec3<f32>(-1132f, arg_2, arg_2))), vec3<f32>(arg_2, -1734f, -1036f))));
    global2 = array<bool, 18>();
    global2 = array<bool, 18>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.a.x, 1u)), vec2<u32>(_wgslsmith_div_u32(arg_1, 77027u), ~arg_1)), ~u_input.c.x), Struct_1(vec2<u32>(~(arg_1 ^ arg_1), 22242u), firstLeadingBit(_wgslsmith_add_u32(4294967295u, func_2(Struct_5(vec3<i32>(u_input.b, 0i, 577i), 4294967295u), u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1405f))));
    let var_2 = Struct_3(var_1, vec4<u32>(min(arg_1, arg_1), ~(~4294967295u), u_input.a.x, firstLeadingBit(arg_1)));
    return Struct_2(Struct_1(abs(~(~u_input.a.zx)), ~u_input.c.x), Struct_1(var_1.a.a, var_1.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c)))))));
}

fn func_1() -> Struct_5 {
    var var_0 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x ^ 1u, u_input.a.x), firstLeadingBit(~(vec3<u32>(1u, u_input.a.x, 12597u) | u_input.a.zyw) << (~vec3<u32>(26457u, u_input.c.x, 39894u) % vec3<u32>(32u))), vec3<u32>(~u_input.c.x, ~(~(~1u)), ~1u));
    var var_1 = Struct_3(func_5(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x | ~var_0.x, 32u)], !(!global1[_wgslsmith_index_u32(0u, 32u)]), true, true), _wgslsmith_div_u32(func_2(Struct_5(vec3<i32>(u_input.b, -624i, u_input.b), 0u), u_input.b & u_input.b), var_0.x), 403f), vec4<u32>(1u, func_5(vec4<bool>(true, true, true, true), 29146u, _wgslsmith_f_op_f32(566f * -394f)).b.b >> (2495u % 32u), 4294967295u >> (_wgslsmith_div_u32(~var_0.x, u_input.a.x) % 32u), _wgslsmith_clamp_u32(43641u, 4294967295u, ~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(var_0.x, u_input.c.x)))));
    var var_2 = Struct_5(~vec3<i32>(abs(2147483647i >> (var_0.x % 32u)), 63167i, 45598i), var_1.a.b.a.x);
    let var_3 = ~(vec3<i32>(-1i) * -(~vec3<i32>(43966i, var_2.a.x, u_input.b)));
    let var_4 = vec3<bool>(!func_3(Struct_5(var_2.a, 0u), false, !any(vec2<bool>(false, true))), !(!any(vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 18u)], global2[_wgslsmith_index_u32(u_input.c.x, 18u)], global2[_wgslsmith_index_u32(0u, 18u)])) | true), !(!(!any(vec4<bool>(true, global1[_wgslsmith_index_u32(var_2.b, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(u_input.c.x, 18u)])))));
    return Struct_5(var_2.a, max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.a.a.x, 4294967295u), var_1.b.yx & var_1.a.a.a) | u_input.c.x));
}

fn func_6(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_5) -> Struct_1 {
    let var_0 = Struct_4(-371f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-791f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1708f, 1070f))), 1427f)));
    global0 = array<vec2<f32>, 31>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b))), !vec3<bool>(!global2[_wgslsmith_index_u32(arg_0.x, 18u)], true, arg_1.x))));
    global2 = array<bool, 18>();
    var var_2 = Struct_3(func_5(!(!select(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(83240u, 32u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(arg_0.x, 32u)], global2[_wgslsmith_index_u32(arg_2.b, 18u)]), false)), abs(4490u), _wgslsmith_div_f32(_wgslsmith_div_f32(2386f, _wgslsmith_f_op_f32(sign(var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - 788f)))), vec4<u32>(arg_2.b, func_5(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(arg_2.b, 32u)], global1[_wgslsmith_index_u32(arg_0.x, 32u)], true), vec4<bool>(true, true, true, false), global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), !vec4<bool>(true, false, arg_1.x, true), vec4<bool>(true, false, global2[_wgslsmith_index_u32(0u, 18u)], false)), func_2(func_1(), -41873i), var_1.a).b.a.x, func_1().b, 0u));
    return func_5(select(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 32u)] & true, all(vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 32u)], arg_1.x)), arg_1.x, var_1.b.x >= -1012f), select(!vec4<bool>(false, arg_1.x, global2[_wgslsmith_index_u32(u_input.c.x, 18u)], true), !vec4<bool>(global2[_wgslsmith_index_u32(14487u, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)], true, false), all(vec2<bool>(false, false))), vec4<bool>(false, arg_0.x <= 95206u, arg_1.x, var_1.a >= -727f)), select(vec4<bool>(true, false, false, true), select(vec4<bool>(global2[_wgslsmith_index_u32(var_2.a.a.a.x, 18u)], true, arg_1.x, true), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 32u)], arg_1.x, global1[_wgslsmith_index_u32(45274u, 32u)], false), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 18u)], global1[_wgslsmith_index_u32(20307u, 32u)], true, global1[_wgslsmith_index_u32(arg_0.x, 32u)]), arg_1.x), vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 32u)], true, true)), !arg_1.x), vec4<bool>(!(u_input.b != 8733i), global1[_wgslsmith_index_u32(arg_2.b, 32u)], _wgslsmith_f_op_f32(-1000f + 622f) > _wgslsmith_div_f32(var_2.a.c, -767f), false)), u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a)) - _wgslsmith_f_op_f32(exp2(var_0.b.x)))).a;
}

fn func_7(arg_0: Struct_5, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = u_input.b;
    var var_1 = arg_3.x;
    global1 = array<bool, 32>();
    global1 = array<bool, 32>();
    let var_2 = Struct_2(Struct_1(abs(func_6(vec2<u32>(27359u, arg_2), vec3<bool>(global1[_wgslsmith_index_u32(1u, 32u)], false, false), arg_0).a), arg_1.b), func_6(vec2<u32>(select(1u, u_input.c.x << (arg_2 % 32u), var_0 >= var_0), 1u), select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(9298u, 18u)], false, true, global1[_wgslsmith_index_u32(15381u, 32u)])), true, true), select(select(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.b, 32u)], global2[_wgslsmith_index_u32(arg_1.a.x, 18u)], global2[_wgslsmith_index_u32(1u, 18u)]), vec3<bool>(global2[_wgslsmith_index_u32(29031u, 18u)], false, true), true), vec3<bool>(false, false, true), global1[_wgslsmith_index_u32(arg_0.b, 32u)])), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-161f)) * 883f));
    return Struct_2(func_6(_wgslsmith_add_vec2_u32(~vec2<u32>(var_2.b.a.x, 0u), arg_1.a) | vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.wxw, u_input.a.wwz), reverseBits(4294967295u)), vec3<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(arg_2, 32u)], false, false)), !any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(arg_0.b, 32u)], global1[_wgslsmith_index_u32(arg_0.b, 32u)], true)), global2[_wgslsmith_index_u32(arg_2, 18u)]), Struct_5(~vec3<i32>(0i, var_0, 2862i), arg_0.b)), func_5(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 18u)], any(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 32u)])), any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)], true))), _wgslsmith_div_u32(arg_2, arg_2), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(459f, -1887f), _wgslsmith_f_op_f32(492f * func_5(vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0.b, 18u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], false), arg_2, 1046f).c)))).b, 468f);
}

fn func_8(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool, arg_3: vec2<f32>) -> u32 {
    let var_0 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.c)))) >= -862f, any(select(vec3<bool>(false, true, false), vec3<bool>(true, !arg_2, true), arg_2)), !(!(!arg_2)));
    var var_1 = vec4<u32>(firstLeadingBit(18421u), 4294967295u, arg_1.a.b, func_1().b);
    let var_2 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(1i, 1i) | ~vec2<i32>(u_input.b, u_input.b)), select(vec2<i32>(1i, -u_input.b), vec2<i32>(_wgslsmith_mult_i32(u_input.b, -6171i), u_input.b), select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 32u)], select(true, var_0.x, var_0.x)), var_0.zx, var_0.x)), vec2<i32>(_wgslsmith_mult_i32(-u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -61328i), vec2<i32>(1883i, u_input.b))) << (1u % 32u), ~_wgslsmith_mod_i32(~1i, _wgslsmith_div_i32(-2147483647i, 1i))));
    let var_3 = Struct_3(arg_1, vec4<u32>(_wgslsmith_div_u32(countOneBits(arg_1.b.b), ~_wgslsmith_add_u32(11383u, 1u)), u_input.a.x, func_1().b, 42208u));
    let var_4 = func_7(func_1(), arg_1.b, var_3.b.x, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1522f * 930f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(489f, var_3.a.c))), _wgslsmith_f_op_f32(round(var_3.a.c)), _wgslsmith_f_op_f32(-var_3.a.c)));
    return var_3.a.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, ~(~100376u)), 32u)], true, true);
    let var_1 = ~vec2<i32>(~(-59282i), u_input.b);
    let var_2 = Struct_5(-(~(~vec3<i32>(-2147483647i, var_1.x, u_input.b) << (u_input.a.xxz % vec3<u32>(32u)))), func_8(select(select(select(var_0.yx, var_0.zy, vec2<bool>(global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(u_input.c.x, 18u)])), var_0.zz, true), !(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 18u)], true)), !(!var_0.x)), func_7(Struct_5(vec3<i32>(0i, 2147483647i, u_input.b), 0u), func_6(firstTrailingBit(vec2<u32>(u_input.c.x, 85459u)), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)], true, false), var_0, var_0), func_1()), u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-645f, -2065f, 382f) + vec3<f32>(1268f, 1053f, -142f)))), !(true && (51956u == u_input.c.x)), vec2<f32>(_wgslsmith_f_op_f32(func_5(vec4<bool>(var_0.x, false, true, false), u_input.a.x, -515f).c * _wgslsmith_f_op_f32(floor(277f))), _wgslsmith_f_op_f32(-1688f + _wgslsmith_f_op_f32(trunc(725f))))));
    let var_3 = Struct_2(Struct_1(u_input.c, select(_wgslsmith_add_u32(countOneBits(1u), 1u), 0u, true)), Struct_1(vec2<u32>(~(~var_2.b), 24243u), 4294967295u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -411f))), 1109f)));
    var var_4 = var_2.a.x;
    let var_5 = ~min(min(~firstLeadingBit(vec2<i32>(u_input.b, -2147483647i)), select(var_1, vec2<i32>(0i, 30865i) & var_1, global1[_wgslsmith_index_u32(u_input.a.x & var_2.b, 32u)])), -var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(_wgslsmith_mult_i32(var_5.x, var_5.x), reverseBits(var_5.x), ~var_2.a.x, var_5.x)), _wgslsmith_clamp_vec4_i32(firstLeadingBit(-vec4<i32>(var_5.x, var_2.a.x, 39843i, -2147483647i)), firstTrailingBit(vec4<i32>(-3448i, u_input.b, -1i, var_1.x)), select(vec4<i32>(-17825i, var_5.x, -1i, u_input.b) << (vec4<u32>(var_3.b.b, 1u, u_input.c.x, var_3.b.a.x) % vec4<u32>(32u)), -vec4<i32>(var_2.a.x, var_1.x, var_5.x, u_input.b), vec4<bool>(true, global2[_wgslsmith_index_u32(6429u, 18u)], var_0.x, global1[_wgslsmith_index_u32(0u, 32u)])))), 4294967295u, ~var_5, vec4<i32>(u_input.b, min(u_input.b, -_wgslsmith_sub_i32(-2147483647i, var_1.x)), var_2.a.x, 10284i));
}

