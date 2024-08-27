struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: Struct_3,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1;

var<private> global2: bool = true;

var<private> global3: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(1i, -20617i, 972f, 1102f), Struct_4(-3085i, -21360i, -354f, -1730f), Struct_4(4853i, -61162i, -1059f, 467f), Struct_4(-34739i, 0i, -1262f, 1000f), Struct_4(1i, -31584i, -189f, -2881f), Struct_4(-59547i, 0i, -2208f, 1000f), Struct_4(2147483647i, -3964i, 1358f, -341f), Struct_4(12764i, -8373i, -1000f, -1187f), Struct_4(-7754i, 2147483647i, -288f, 313f), Struct_4(1i, 20739i, -1000f, -1560f), Struct_4(25894i, 0i, -1754f, -479f), Struct_4(5134i, 42535i, -2139f, 390f), Struct_4(-37780i, 50666i, -134f, 1000f), Struct_4(0i, 25475i, -1000f, -136f), Struct_4(0i, 0i, 240f, -239f), Struct_4(0i, 0i, 1029f, 1000f), Struct_4(-1i, 30321i, -179f, -1277f), Struct_4(1i, 49238i, -216f, 1693f), Struct_4(0i, -80295i, 2690f, -282f), Struct_4(-19047i, -43471i, -392f, 999f), Struct_4(29812i, 0i, -1688f, 2085f), Struct_4(-13200i, 4508i, 901f, 1998f), Struct_4(-43485i, 30717i, 1169f, -1000f), Struct_4(i32(-2147483648), 1i, -480f, 996f), Struct_4(0i, -42370i, -629f, -315f), Struct_4(19776i, 21792i, 106f, -355f), Struct_4(i32(-2147483648), -16764i, 677f, -1225f), Struct_4(2147483647i, i32(-2147483648), 437f, -334f), Struct_4(0i, 18714i, -877f, -1311f));

var<private> global4: array<bool, 19> = array<bool, 19>(true, false, false, true, true, true, false, false, true, true, true, true, true, true, false, false, false, false, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_5) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.a.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, 750f) * _wgslsmith_f_op_f32(322f + 180f)), _wgslsmith_f_op_f32(sign(global0.b.d.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.c.a.a.a.x, global0.a.a.a.x, 1000f, arg_2.c.b.d.a.x))) - vec4<f32>(-701f, global0.a.d.a.x, _wgslsmith_f_op_f32(arg_2.c.a.d.a.x - global1.a.x), global1.a.x)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-980f, 1029f, global1.a.x, global0.a.d.a.x))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b.a.a.x, 1002f, global1.a.x, 1261f))))))), all(select(!(!vec2<bool>(global1.c, true)), vec2<bool>(true, true), select(vec2<bool>(arg_2.c.b.b, false), select(vec2<bool>(false, false), vec2<bool>(arg_2.c.a.d.c, true), vec2<bool>(global4[_wgslsmith_index_u32(arg_1, 19u)], true)), vec2<bool>(true, false))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: bool) -> i32 {
    let var_0 = 418f;
    var var_1 = arg_0;
    let var_2 = Struct_5(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-52831i, 1i), global0.b.c >> (20150u % 32u)), firstLeadingBit(~(u_input.b >> (vec4<u32>(21927u, global1.b.x, global1.d, var_1.d) % vec4<u32>(32u)))) & vec4<u32>(global1.d, ~global1.d << (min(u_input.b.x, 4294967295u) % 32u), ~1u << (_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) % 32u), arg_0.d), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, var_1.a.x, global0.a.d.a.x)), ~global1.b, true, reverseBits(arg_0.d)), !any(arg_1.wzz), 10053i, Struct_1(var_1.a, ~vec3<u32>(global1.b.x, 4294967295u, global1.d), false, ~global0.a.a.d)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(global1.a * arg_2.yyz), vec3<u32>(0u, 1u, 82059u), all(vec2<bool>(global4[_wgslsmith_index_u32(var_1.d, 19u)], arg_3)), ~51050u), false, max(-2147483647i, reverseBits(global0.a.c)), global0.b.a)), 24988i >> (1u % 32u), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(-(~vec4<i32>(global0.a.c, global0.a.c, -61708i, -134i)), vec4<i32>(_wgslsmith_mult_i32(global0.b.c, global0.b.c), 1i, -30831i, 1i)), select(firstTrailingBit(vec4<i32>(-3295i, -36270i, -2147483647i, -36060i)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, global0.a.c, global0.b.c, 1i), vec4<i32>(16149i, -2147483647i, global0.a.c, global0.a.c)), vec4<i32>(2147483647i, global0.b.c, global0.a.c, global0.a.c)), select(arg_1, !vec4<bool>(var_1.c, true, global1.c, var_1.c), false))));
    return 1i;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_5(~(-firstLeadingBit(select(-2147483647i, global0.b.c, global4[_wgslsmith_index_u32(global0.b.a.b.x, 19u)]))), vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(29897u, 4294967295u, global1.d), min(vec3<u32>(global1.d, 66914u, 0u), global0.b.a.b)), global0.a.d.b.x, ~_wgslsmith_add_u32(52069u, 0u)) & _wgslsmith_add_vec4_u32(u_input.b, ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 16287u, 3625u, global1.b.x), u_input.b)), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.zxw), ~vec3<u32>(global0.b.a.d, 0u, 1u), global1.b.x == global0.a.a.d, global1.d & u_input.b.x), arg_0.x, reverseBits(7441i << (1u % 32u)), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-741f, arg_2.x, 273f), vec3<f32>(-898f, arg_2.x, -853f)), vec3<u32>(1u, 44349u, u_input.a.x), global4[_wgslsmith_index_u32(u_input.a.x, 19u)] & false, 1u)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-610f, global0.b.a.a.x, 2099f) * global1.a), ~global0.b.d.b, global1.a.x < 786f, 6083u), true, ~_wgslsmith_div_i32(global0.b.c, -1i), global0.b.d)), func_4(global0.b.a, !vec4<bool>(global0.b.a.c, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(84040u, 1u), 19u)], global0.a.d.d < 4294967295u, true), _wgslsmith_f_op_vec4_f32(func_3(-vec3<i32>(global0.b.c, 0i, 2147483647i), global1.b.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 29757u), vec2<u32>(1u, global0.a.a.d)), Struct_5(max(global0.a.c, 27260i), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.x, 1u, 4294967295u, global0.a.a.d), u_input.b), Struct_3(global0.a, Struct_2(global0.a.a, true, -31020i, global0.b.d)), -2147483647i, ~vec4<i32>(global0.a.c, 2147483647i, 2147483647i, global0.b.c)))), false), ~(~vec4<i32>(0i, global0.b.c, global0.a.c, global0.b.c)) << (select(_wgslsmith_clamp_vec4_u32(countOneBits(u_input.b), vec4<u32>(34405u, u_input.a.x, global1.b.x, 0u), ~u_input.b), u_input.b, true) % vec4<u32>(32u)));
    global2 = !(!(!any(!arg_0.yy)));
    var var_1 = _wgslsmith_mod_i32(~firstTrailingBit(abs(1i)), -_wgslsmith_div_i32(select(var_0.d, 32178i, global0.b.c <= global0.a.c), 71791i));
    global2 = var_0.c.b.b;
    var var_2 = vec3<i32>(var_0.a, _wgslsmith_sub_i32(var_0.e.x, _wgslsmith_dot_vec2_i32(var_0.e.zz, var_0.e.xz) << (~0u % 32u)) >> (~156530u % 32u), 2147483647i);
    return Struct_2(var_0.c.b.a, false, -2147483647i, var_0.c.a.d);
}

fn func_1(arg_0: vec3<bool>) -> vec4<i32> {
    global0 = Struct_3(global0.b, func_2(vec3<bool>(true, global4[_wgslsmith_index_u32(global0.b.a.d, 19u)] && false, global0.a.b), -253f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(866f, -542f, global1.a.x, global1.a.x)) - vec4<f32>(global0.b.d.a.x, -504f, -218f, -731f)))));
    global4 = array<bool, 19>();
    global4 = array<bool, 19>();
    var var_0 = global0.a;
    var var_1 = Struct_5(((-global0.a.c | 2147483647i) ^ var_0.c) >> (_wgslsmith_mod_u32(8972u, 12020u) % 32u), vec4<u32>(u_input.b.x & 119530u, _wgslsmith_div_u32(~4294967295u, countOneBits(~1u)), var_0.a.d, global1.d), Struct_3(Struct_2(var_0.a, arg_0.x, -1i, Struct_1(_wgslsmith_f_op_vec3_f32(round(var_0.a.a)), ~vec3<u32>(32162u, var_0.d.b.x, 1u), !global1.c, global1.d)), global0.b), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(var_0.c, 2147483647i, 2147483647i)), vec3<i32>(1i, -3960i, var_0.c) ^ vec3<i32>(var_0.c, global0.b.c, var_0.c)), 26922i, _wgslsmith_mult_i32(var_0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.c, -7023i, -3263i), vec3<i32>(1i, global0.a.c, var_0.c)))), _wgslsmith_mult_vec4_i32(reverseBits(firstTrailingBit(~vec4<i32>(1i, global0.b.c, 13540i, 288i))), vec4<i32>(~2147483647i, ~global0.a.c, firstLeadingBit(var_0.c), 26965i) & vec4<i32>(i32(-1i) * -1i, 0i, var_0.c, 1i)));
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(-25018i, func_4(global0.a.a, vec4<bool>(true, !var_0.d.c, true, global4[_wgslsmith_index_u32(abs(0u), 19u)]), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.a.x, -672f, global0.a.a.a.x, global1.a.x) - vec4<f32>(-935f, 1603f, 841f, -771f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(457f, var_0.d.a.x, var_0.d.a.x, -883f) + vec4<f32>(982f, 2033f, 1504f, -310f))), global0.b.b), -56874i, 0i), -var_1.e, var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 29>();
    var var_0 = Struct_4(_wgslsmith_dot_vec4_i32(countOneBits(func_1(select(vec3<bool>(false, false, global4[_wgslsmith_index_u32(global0.b.a.d, 19u)]), vec3<bool>(global1.c, global4[_wgslsmith_index_u32(u_input.b.x, 19u)], global1.c), true))), vec4<i32>(5040i, 10727i, -25118i, 4467i) ^ select(-vec4<i32>(global0.a.c, global0.b.c, -1i, 2147483647i), ~vec4<i32>(global0.b.c, global0.b.c, global0.a.c, global0.a.c), select(vec4<bool>(false, false, true, global4[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<bool>(global4[_wgslsmith_index_u32(global1.d, 19u)], global1.c, global4[_wgslsmith_index_u32(54165u, 19u)], true), global0.a.b))), reverseBits(~min(abs(global0.b.c), global0.b.c)), global1.a.x, _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(round(-1000f))));
    let var_1 = global0.a.d.a;
    let var_2 = global1.a;
    var var_3 = global3[_wgslsmith_index_u32(global0.b.a.d, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.d.d << (select(global1.b.x, u_input.b.x, false) % 32u), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(abs(vec3<i32>(global0.a.c, global0.a.c, var_3.a)) >> (_wgslsmith_add_vec3_u32(global1.b, u_input.b.wyy) % vec3<u32>(32u)), ~u_input.b.x | ~u_input.b.x, Struct_5(-33243i, vec4<u32>(u_input.b.x, u_input.c.x, u_input.b.x, 103181u), Struct_3(Struct_2(global0.a.d, false, -4757i, global0.b.d), Struct_2(Struct_1(vec3<f32>(var_1.x, var_2.x, -1000f), vec3<u32>(1u, global1.d, 110157u), false, 39114u), false, 65194i, global0.b.a)), 2147483647i << (global0.b.d.b.x % 32u), vec4<i32>(var_3.a, global0.b.c, var_3.a, 0i) >> (vec4<u32>(global0.a.a.b.x, u_input.b.x, u_input.a.x, global1.d) % vec4<u32>(32u))))).xy)));
}

