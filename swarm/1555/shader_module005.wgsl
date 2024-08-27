struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(-461f, vec3<i32>(-1i, -7446i, 0i), vec2<bool>(false, true), vec2<i32>(-1i, 25758i)), Struct_3(1400f, vec3<i32>(-62855i, 72545i, 0i), vec2<bool>(true, true), vec2<i32>(30207i, 11358i)), Struct_3(947f, vec3<i32>(-49059i, -52514i, 2147483647i), vec2<bool>(true, false), vec2<i32>(1i, -1i)), Struct_3(730f, vec3<i32>(33895i, -22369i, -14889i), vec2<bool>(true, true), vec2<i32>(11995i, 15541i)), Struct_3(-1000f, vec3<i32>(2147483647i, 1i, -1i), vec2<bool>(false, true), vec2<i32>(1i, 1i)), Struct_3(-296f, vec3<i32>(1i, 1i, -23772i), vec2<bool>(false, true), vec2<i32>(0i, 18184i)), Struct_3(-584f, vec3<i32>(-1i, i32(-2147483648), 20052i), vec2<bool>(false, true), vec2<i32>(0i, -28589i)), Struct_3(1119f, vec3<i32>(-54589i, i32(-2147483648), -26693i), vec2<bool>(true, true), vec2<i32>(-68170i, -4397i)), Struct_3(350f, vec3<i32>(0i, -5521i, 1i), vec2<bool>(false, true), vec2<i32>(67733i, -23408i)), Struct_3(-221f, vec3<i32>(14816i, -36253i, 0i), vec2<bool>(false, true), vec2<i32>(2147483647i, 26149i)), Struct_3(534f, vec3<i32>(1i, i32(-2147483648), -15744i), vec2<bool>(false, true), vec2<i32>(50522i, 0i)), Struct_3(216f, vec3<i32>(0i, -29045i, i32(-2147483648)), vec2<bool>(true, true), vec2<i32>(13279i, -1i)), Struct_3(400f, vec3<i32>(-1i, 1i, 53145i), vec2<bool>(false, true), vec2<i32>(18500i, -1i)), Struct_3(1350f, vec3<i32>(2147483647i, -47624i, -21344i), vec2<bool>(true, false), vec2<i32>(0i, 2147483647i)), Struct_3(-611f, vec3<i32>(-1i, -6483i, -4632i), vec2<bool>(false, true), vec2<i32>(2147483647i, -16662i)), Struct_3(200f, vec3<i32>(-1i, 0i, -35955i), vec2<bool>(false, true), vec2<i32>(-1i, i32(-2147483648))), Struct_3(1272f, vec3<i32>(41732i, 50384i, 1i), vec2<bool>(true, false), vec2<i32>(24311i, -1i)), Struct_3(604f, vec3<i32>(2147483647i, i32(-2147483648), 0i), vec2<bool>(true, true), vec2<i32>(i32(-2147483648), -1i)), Struct_3(-1617f, vec3<i32>(34109i, 58339i, 1i), vec2<bool>(false, false), vec2<i32>(2147483647i, 2147483647i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> vec4<u32> {
    global0 = array<Struct_3, 19>();
    let var_0 = select(vec2<bool>(any(vec2<bool>(true, true)), arg_2.c.x), select(vec2<bool>(arg_2.c.x, any(!vec4<bool>(false, false, arg_2.c.x, arg_2.c.x))), select(arg_2.c, vec2<bool>(false, all(vec2<bool>(arg_2.c.x, false))), !vec2<bool>(false, arg_2.c.x)), arg_2.c), !(!arg_2.c.x));
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    return vec4<u32>(~1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 10580u)) | abs(~5832u), 51388u, 1u) | ~(~vec4<u32>(1u, ~16710u, 87827u, 0u));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    global0 = array<Struct_3, 19>();
    let var_0 = !(!arg_0.c.x);
    let var_1 = global0[_wgslsmith_index_u32((~972u | _wgslsmith_dot_vec4_u32(func_3(arg_0.a, Struct_1(-8015i), Struct_3(-832f, u_input.b, arg_0.c, u_input.c.zy)) | vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(20560u, 0u, 0u, 0u)))) ^ 71317u, 19u)];
    global0 = array<Struct_3, 19>();
    let var_2 = !arg_0.c.x;
    return Struct_2(var_1.a, u_input.a.x, ~_wgslsmith_mod_i32(var_1.b.x, max(select(33663i, 1i, true), 2147483647i)), vec2<u32>(_wgslsmith_clamp_u32(0u, func_3(arg_0.a, arg_1, global0[_wgslsmith_index_u32(62078u, 19u)]).x >> (countOneBits(1u) % 32u), _wgslsmith_sub_u32(40864u, 1u)), ~0u), Struct_1(~1i));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<f32>) -> f32 {
    global0 = array<Struct_3, 19>();
    let var_0 = any(select(vec2<bool>(true, !any(vec2<bool>(false, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), all(vec3<bool>(true, true, true))), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, any(vec3<bool>(false, false, false))), all(vec3<bool>(true, false, false)))));
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    var var_1 = func_2(Struct_3(arg_0.a, ~u_input.c, vec2<bool>(true, !var_0), u_input.a), func_2(global0[_wgslsmith_index_u32(arg_0.d.x, 19u)], func_2(global0[_wgslsmith_index_u32(35965u, 19u)], func_2(Struct_3(arg_1.x, u_input.c, vec2<bool>(true, false), u_input.b.yz), Struct_1(52759i)).e).e).e).e;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(238f * -1975f), arg_0.a) * arg_1.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(func_4(func_2(Struct_3(_wgslsmith_f_op_f32(413f * -245f), -u_input.c, vec2<bool>(true, true), max(u_input.c.yz, vec2<i32>(2147483647i, -32617i))), Struct_1(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-66956i, 8640i, 64000i)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, 1313f, -1604f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1285f, arg_2, 517f), vec3<f32>(3246f, 822f, -908f), vec3<bool>(true, true, false)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a, -1203f, arg_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, 424f) - vec3<f32>(arg_2, -938f, arg_2)))) + vec3<f32>(-382f, func_2(global0[_wgslsmith_index_u32(47788u, 19u)], arg_1).a, _wgslsmith_f_op_f32(724f - 528f))))), abs(~(-u_input.c)), !(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true)), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, arg_0.e.a ^ 36710i), u_input.c.zy), vec2<i32>(arg_0.c, 6660i)));
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    let var_1 = func_2(Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a + 450f))), -2123f)), vec3<i32>(u_input.c.x, ~firstTrailingBit(-2147483647i), -u_input.b.x), !var_0.c, ~select(vec2<i32>(arg_1.a, arg_1.a), abs(vec2<i32>(arg_0.e.a, 7433i)), false)), Struct_1(arg_0.c)).e;
    let var_2 = _wgslsmith_clamp_vec2_u32(arg_0.d, _wgslsmith_clamp_vec2_u32(vec2<u32>(countOneBits(1u), 4294967295u), (vec2<u32>(0u, 21332u) ^ (arg_0.d & arg_0.d)) ^ firstTrailingBit(vec2<u32>(0u, 1u)), ~(func_3(416f, Struct_1(arg_1.a), global0[_wgslsmith_index_u32(25518u, 19u)]).xw & arg_0.d)), vec2<u32>(arg_0.d.x, _wgslsmith_dot_vec2_u32(arg_0.d, vec2<u32>(func_3(arg_2, var_1, Struct_3(-1757f, vec3<i32>(-24576i, arg_1.a, 2147483647i), vec2<bool>(var_0.c.x, false), var_0.d)).x, 5954u))));
    return var_1;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-722f, arg_0)), _wgslsmith_f_op_f32(-281f * arg_2.a), !any(select(vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(false, arg_1, arg_1, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-293f * _wgslsmith_f_op_f32(-arg_0))))));
    var_0 = -3154f;
    var var_1 = func_2(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(floor(-336f))))), min(u_input.c, -u_input.c), !(!(!vec2<bool>(arg_1, arg_1))), u_input.c.xx), arg_3.e);
    let var_2 = 1u;
    let var_3 = func_1(arg_3, Struct_1(_wgslsmith_div_i32(~(-1i), arg_2.c | _wgslsmith_dot_vec2_i32(vec2<i32>(11571i, var_1.b), vec2<i32>(var_1.e.a, -49820i)))), var_1.a);
    return global0[_wgslsmith_index_u32(0u, 19u)];
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = ~0i;
    var var_2 = global0[_wgslsmith_index_u32(~(~33794u), 19u)];
    var var_3 = select(vec4<bool>(true, !((arg_1 >= -1i) && !arg_0.c.x), func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.a + var_2.a))), true, func_2(arg_0, func_2(Struct_3(var_2.a, vec3<i32>(var_2.d.x, 2147483647i, -1i), var_2.c, var_0.b.yx), Struct_1(-33437i)).e), Struct_2(_wgslsmith_f_op_f32(-216f * var_2.a), -var_0.b.x, ~var_1, vec2<u32>(0u, 0u), func_2(Struct_3(var_2.a, arg_0.b, var_2.c, var_0.b.xy), Struct_1(21043i)).e)).c.x, true), arg_2, arg_0.c.x == false);
    let var_4 = func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_2(1096f, -1i, -34344i ^ var_0.d.x, vec2<u32>(0u, 0u), Struct_1(var_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(670f, var_2.a, var_2.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-186f, var_2.a, var_0.a))))), var_0.a), arg_2.x || true, func_2(var_0, Struct_1(-1i)), func_2(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a))), var_3.x, func_2(var_0, Struct_1(16011i)), func_2(var_0, func_1(Struct_2(1299f, 2147483647i, 1i, vec2<u32>(15616u, 59020u), Struct_1(var_0.d.x)), Struct_1(1i), var_0.a))), Struct_1(var_0.b.x)));
    return Struct_1(firstLeadingBit(func_5(var_4.a, true, func_2(func_5(-325f, var_0.c.x, Struct_2(var_0.a, var_4.d.x, arg_0.d.x, vec2<u32>(89529u, 4294967295u), Struct_1(0i)), Struct_2(1414f, 6048i, -16335i, vec2<u32>(4294967295u, 7044u), Struct_1(var_1))), Struct_1(-1i)), Struct_2(_wgslsmith_f_op_f32(-arg_0.a), max(var_4.d.x, arg_0.d.x), arg_1, select(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 64171u), var_4.c.x), Struct_1(arg_1))).b.x));
}

fn func_7(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -523f), false | !(all(vec2<bool>(false, false)) && true), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(377f, arg_0)), firstTrailingBit(u_input.a.x << (4294967295u % 32u)) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(54468u, 4294967295u, 1u, 4294967295u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(23995u, 99133u, 68400u), vec3<u32>(28856u, 37058u, 26709u)) % 32u)) % 32u), arg_1.a, max(~vec2<u32>(8979u, 4294967295u), abs(select(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), false))), arg_1), func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(0u, 3280u), select(31385u, 234u, true) << (~99754u % 32u)), 19u)], arg_1));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(436f, var_0.a) - vec2<f32>(var_0.a, -818f)) * vec2<f32>(var_0.a, 1341f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 190f), vec2<f32>(-289f, -408f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-695f, 489f) * vec2<f32>(var_0.a, var_0.a)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-552f, var_0.a), vec2<f32>(var_0.a, 706f)))))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(global0[_wgslsmith_index_u32(0u, 19u)], arg_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 584f, -1000f) + vec3<f32>(var_1.x, arg_0, -1000f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, var_1.x, var_0.a)))))))), _wgslsmith_clamp_i32(reverseBits(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(arg_1.a, 2147483647i, 1i) | var_0.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(0i, arg_1.a), -vec2<i32>(1i, 1i)), select(max(-27508i, -u_input.a.x), -(~1i), true)), ~var_0.d.x, func_3(arg_0, Struct_1(17494i), global0[_wgslsmith_index_u32(select(~_wgslsmith_clamp_u32(35187u, 0u, 18967u), 1u, !(!var_0.c.x)), 19u)]).wx, func_1(func_2(Struct_3(-1292f, ~vec3<i32>(u_input.c.x, 46222i, -2147483647i), select(vec2<bool>(false, var_0.c.x), vec2<bool>(true, false), var_0.c.x), firstTrailingBit(vec2<i32>(u_input.c.x, 0i))), Struct_1(arg_1.a)), Struct_1(abs(4834i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(var_1.x - var_0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1341f, -110f))))));
    let var_3 = var_2;
    var var_4 = ~(0i << (~(80760u ^ ~var_2.d.x) % 32u));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) * var_1.x)), func_6(Struct_3(arg_0, ~var_0.b, vec2<bool>(true, true), ~vec2<i32>(10079i, var_2.c)), -2147483647i, select(select(select(vec4<bool>(true, var_0.c.x, var_0.c.x, false), vec4<bool>(true, var_0.c.x, var_0.c.x, false), vec4<bool>(var_0.c.x, true, var_0.c.x, false)), vec4<bool>(false, false, false, var_0.c.x), vec4<bool>(true, true, true, true)), !select(vec4<bool>(var_0.c.x, false, true, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, true, true), vec4<bool>(var_0.c.x, true, true, var_0.c.x)), vec4<bool>(any(vec3<bool>(true, var_0.c.x, false)), true, false & var_0.c.x, all(vec2<bool>(true, true))))).a, min(_wgslsmith_sub_i32(-29902i, -var_3.e.a), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(1i, u_input.c.x)), firstLeadingBit(-vec2<i32>(1i, -21434i)))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x - var_1.x)))), arg_1, global0[_wgslsmith_index_u32(func_2(Struct_3(arg_0, -vec3<i32>(6161i, var_2.e.a, 31736i), var_0.c, vec2<i32>(1i, u_input.c.x)), func_6(Struct_3(var_2.a, var_0.b, var_0.c, vec2<i32>(var_0.d.x, 1i)), 1i, vec4<bool>(var_0.c.x, false, true, false))).d.x, 19u)]).xx, Struct_1(var_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(514f)) + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1802f))), func_6(func_5(1f, any(vec2<bool>(true, true)), Struct_2(_wgslsmith_f_op_f32(select(-1180f, 1190f, true)), u_input.c.x, select(u_input.c.x, 0i, true), vec2<u32>(0u, 17611u), func_1(Struct_2(1176f, 1i, 1i, vec2<u32>(4294967295u, 0u), Struct_1(-19137i)), Struct_1(u_input.a.x), 1519f)), func_2(Struct_3(-816f, u_input.c, vec2<bool>(true, false), vec2<i32>(-1i, 0i)), func_2(Struct_3(-1000f, u_input.b, vec2<bool>(false, false), vec2<i32>(u_input.a.x, u_input.b.x)), Struct_1(u_input.c.x)).e)), 6788i, vec4<bool>(any(vec3<bool>(false, false, true)), true, true, !all(vec2<bool>(false, false)))));
    let var_1 = func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_div_f32(1000f, 2299f)) + func_2(global0[_wgslsmith_index_u32(func_2(Struct_3(var_0.a, vec3<i32>(-28713i, var_0.e.a, u_input.b.x), vec2<bool>(false, true), u_input.c.xz), Struct_1(var_0.b)).d.x, 19u)], Struct_1(-13137i)).a) - _wgslsmith_f_op_f32(round(var_0.a))), func_6(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * 2183f)), u_input.c & firstLeadingBit(vec3<i32>(var_0.c, var_0.e.a, var_0.c)), vec2<bool>(all(vec3<bool>(false, false, false)), false), ~reverseBits(vec2<i32>(-707i, var_0.e.a))), u_input.b.x, vec4<bool>(any(vec3<bool>(true, true, true)), true, true, true))).e;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a), var_0.a, true)) * _wgslsmith_f_op_f32(-var_0.a));
    var_2 = var_0.a;
    let var_3 = var_0;
    let var_4 = var_3.a;
    var var_5 = !any(vec2<bool>(true, true));
    let var_6 = u_input.c;
    let var_7 = vec3<bool>(!select(true, true, false) == !(var_4 != func_7(-652f, Struct_1(-12072i)).a), all(vec2<bool>(true, true)), false);
    let x = u_input.a;
    s_output = StorageBuffer(36330u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_4)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(673f * var_0.a)))) - _wgslsmith_f_op_f32(f32(-1f) * -1152f)));
}

