struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 12>;

var<private> global2: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(1u, 1u, 82010u), vec3<u32>(31167u, 1078u, 0u), vec3<u32>(4294967295u, 1u, 36037u), vec3<u32>(397u, 34691u, 11276u), vec3<u32>(35127u, 16801u, 0u), vec3<u32>(41894u, 1u, 4294967295u), vec3<u32>(24370u, 1u, 140757u), vec3<u32>(0u, 46648u, 12158u), vec3<u32>(33990u, 20656u, 14797u), vec3<u32>(0u, 106184u, 0u), vec3<u32>(1u, 44550u, 30416u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(107722u, 60041u, 1u), vec3<u32>(2974u, 1u, 4445u), vec3<u32>(49323u, 65580u, 40241u), vec3<u32>(4294967295u, 0u, 52949u), vec3<u32>(5526u, 75253u, 26805u), vec3<u32>(6815u, 4294967295u, 4294967295u), vec3<u32>(16207u, 1u, 0u), vec3<u32>(1u, 1u, 1u), vec3<u32>(8351u, 59534u, 4294967295u), vec3<u32>(1u, 5115u, 57001u), vec3<u32>(1u, 4294967295u, 0u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<i32>) -> Struct_2 {
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.a, 452f, -1140f, _wgslsmith_f_op_f32(-935f * 1018f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1221f, 381f, 114f, arg_0.d.a)))))));
    global1 = array<Struct_2, 12>();
    let var_0 = global1[_wgslsmith_index_u32(~(~(~u_input.e.x)), 12u)];
    return arg_0;
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_2(~(_wgslsmith_mod_vec4_u32(u_input.e, vec4<u32>(4294967295u, 1u, arg_1, arg_3.a.x)) | arg_3.a), ~((_wgslsmith_dot_vec2_u32(u_input.e.zw, arg_3.a.yy) << (min(arg_3.d.b.x, 0u) % 32u)) >> (6460u % 32u)), select(vec4<bool>(all(select(vec2<bool>(false, arg_3.e), vec2<bool>(true, false), vec2<bool>(arg_3.e, arg_3.c.x))), arg_3.e, all(vec3<bool>(true, true, true)) | false, arg_3.c.x == true), vec4<bool>(!arg_3.c.x & func_2(Struct_2(u_input.e, 1u, arg_3.c, arg_3.d, arg_3.e), arg_0, arg_2).e, true, _wgslsmith_f_op_f32(f32(-1f) * -744f) > _wgslsmith_f_op_f32(1000f + global0.x), !arg_3.e), func_2(func_2(func_2(global1[_wgslsmith_index_u32(arg_3.d.b.x, 12u)], arg_2, arg_2), -vec4<i32>(arg_3.d.c, u_input.d.x, arg_3.d.c, 1i), vec4<i32>(26441i, arg_3.d.c, 26648i, 18164i)), -vec4<i32>(u_input.d.x, 2147483647i, arg_2.x, arg_0.x) >> (abs(arg_3.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(arg_2, arg_2)).c), Struct_1(arg_3.d.a, vec3<u32>(arg_1, 1u, 4294967295u), -64142i >> (_wgslsmith_mod_u32(1u, 17044u >> (u_input.e.x % 32u)) % 32u)), !any(!arg_3.c.xw));
    var var_1 = var_0.e;
    var var_2 = select(firstTrailingBit(81610u), 1u, all(select(!var_0.c.xx, select(select(vec2<bool>(var_0.c.x, arg_3.e), vec2<bool>(arg_3.e, false), var_0.c.zx), vec2<bool>(var_0.e, false), all(vec3<bool>(true, true, var_0.c.x))), !vec2<bool>(var_0.c.x, false))));
    var var_3 = select(var_0.e && var_0.c.x, false, ~1i > -_wgslsmith_dot_vec4_i32(max(vec4<i32>(-10317i, -1i, arg_3.d.c, 32221i), vec4<i32>(arg_0.x, 2147483647i, var_0.d.c, 11895i)), min(vec4<i32>(1i, -1i, -52108i, arg_0.x), arg_0)));
    var var_4 = Struct_1(417f, max(vec3<u32>(~_wgslsmith_dot_vec2_u32(arg_3.d.b.xx, u_input.e.xz), var_0.b, 220513u ^ func_2(global1[_wgslsmith_index_u32(0u, 12u)], vec4<i32>(u_input.d.x, u_input.d.x, -48598i, arg_2.x), arg_0).d.b.x), reverseBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 0u, 26518u), vec3<u32>(arg_3.d.b.x, 57813u, u_input.e.x) << (vec3<u32>(u_input.c, var_0.d.b.x, var_0.a.x) % vec3<u32>(32u))))), arg_3.d.c);
    return 1013f;
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = u_input.e.xy | u_input.e.xz;
    let var_1 = func_2(global1[_wgslsmith_index_u32(countOneBits(~var_0.x), 12u)], vec4<i32>(13021i, u_input.d.x, firstLeadingBit(u_input.d.x), _wgslsmith_dot_vec2_i32(min(_wgslsmith_mod_vec2_i32(vec2<i32>(-29897i, -65979i), vec2<i32>(55744i, arg_0.x)), ~u_input.d.yy), u_input.d.xx)), _wgslsmith_sub_vec4_i32(~(~(vec4<i32>(2147483647i, -51299i, 2147483647i, 1i) & vec4<i32>(1i, 31903i, u_input.d.x, arg_0.x))), _wgslsmith_div_vec4_i32(firstTrailingBit(-vec4<i32>(arg_0.x, -11928i, 0i, -1i)), select(-vec4<i32>(arg_0.x, 1i, 2500i, arg_0.x), vec4<i32>(arg_0.x, 6987i, 31951i, u_input.d.x), vec4<bool>(true, true, true, true)))));
    let var_2 = vec4<f32>(606f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(493f, global0.x)))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0 | ~vec4<i32>(-1i, -1i, -1i, var_1.d.c), var_1.b, arg_0, func_2(Struct_2(vec4<u32>(u_input.a, var_0.x, 4294967295u, u_input.b), u_input.c, vec4<bool>(var_1.e, var_1.c.x, false, false), Struct_1(var_1.d.a, vec3<u32>(4294967295u, 30746u, 41864u), 8079i), false), _wgslsmith_mult_vec4_i32(arg_0, vec4<i32>(0i, 1i, -10834i, -2147483647i)), vec4<i32>(2147483647i, var_1.d.c, var_1.d.c, u_input.d.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 1f) + _wgslsmith_div_f32(1000f, var_1.d.a))));
    global0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(722f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-164f, var_1.d.a))), func_2(Struct_2(~var_1.a, _wgslsmith_clamp_u32(0u, 4294967295u, 12163u), select(vec4<bool>(false, var_1.e, true, var_1.e), vec4<bool>(false, var_1.c.x, var_1.c.x, true), false), func_2(global1[_wgslsmith_index_u32(7618u, 12u)], vec4<i32>(arg_0.x, 0i, u_input.d.x, 55922i), vec4<i32>(-2147483647i, arg_0.x, -1i, var_1.d.c)).d, true), firstTrailingBit(vec4<i32>(u_input.d.x, u_input.d.x, var_1.d.c, -17012i)), max(vec4<i32>(30363i, var_1.d.c, var_1.d.c, var_1.d.c), abs(vec4<i32>(u_input.d.x, -31789i, 0i, arg_0.x)))).d.a, global0.x, _wgslsmith_f_op_f32(ceil(883f)))));
    var var_3 = var_1.c.x;
    return func_2(func_2(global1[_wgslsmith_index_u32(var_1.a.x, 12u)], ~firstLeadingBit(arg_0), vec4<i32>(var_1.d.c, firstLeadingBit(1i), abs(~0i), arg_0.x)), vec4<i32>(-arg_0.x, -1i, 34178i, i32(-1i) * -_wgslsmith_clamp_i32(var_1.d.c, 26793i, u_input.d.x)), _wgslsmith_add_vec4_i32(arg_0, ~arg_0));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<i32> {
    var var_0 = arg_1.c.x;
    var var_1 = u_input.b;
    let var_2 = vec4<u32>(~(~arg_2.b.x), 31393u, 21425u >> (arg_1.d.b.x % 32u), arg_1.d.b.x);
    return _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_2.c, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(max(1i, 11665i), u_input.d.x, -arg_2.c, min(u_input.d.x, 34431i))) & abs(~vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, 18758i)), _wgslsmith_mult_vec4_i32(~vec4<i32>(~1i, arg_1.d.c, max(arg_2.c, arg_2.c), _wgslsmith_sub_i32(arg_1.d.c, -38717i)), ~(-vec4<i32>(-25404i, u_input.d.x, -1i, arg_1.d.c))));
}

fn func_5(arg_0: vec4<i32>) -> StorageBuffer {
    var var_0 = func_2(global1[_wgslsmith_index_u32(u_input.e.x, 12u)], vec4<i32>(34807i, abs(-13482i), abs(_wgslsmith_add_i32(-11132i, -8687i >> (1u % 32u))), 1i), arg_0).d;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1475f, 100f, 1036f, 406f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1760f, -363f, var_0.a, var_0.a))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(var_0.a - -1447f), _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-611f * 1345f))))));
    var var_1 = arg_0.x;
    var_1 = 1i;
    global2 = array<vec3<u32>, 24>();
    return StorageBuffer(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(917f)))) + var_0.a), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~abs(0u), u_input.b), 12u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.b.x, 24399u, var_0.b.x), vec3<u32>(u_input.e.x, u_input.e.x, 1u)), ~var_0.c), func_2(Struct_2(vec4<u32>(u_input.a, var_0.b.x, 1u, var_0.b.x), ~3038u, func_1(arg_0).c, func_2(Struct_2(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.c), 1u, vec4<bool>(false, true, false, false), Struct_1(794f, vec3<u32>(u_input.b, 15200u, u_input.a), 49070i), false), vec4<i32>(arg_0.x, 0i, 1i, u_input.d.x), arg_0).d, true), select(vec4<i32>(0i, u_input.d.x, -1i, -27005i), arg_0, u_input.d.x != u_input.d.x), vec4<i32>(0i, var_0.c | -2147483647i, -2147483647i, _wgslsmith_div_i32(55403i, -1i))).a.yzy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, global0.x), vec2<f32>(800f, -712f), vec2<bool>(true, true))), global0.yx) * vec2<f32>(_wgslsmith_f_op_f32(-1425f * var_0.a), global0.x))), arg_0.x, u_input.e.xy >> (_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.x, ~4294967295u), ~var_0.b.zx) % vec2<u32>(32u)), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~(~firstLeadingBit(vec4<i32>(u_input.d.x, -48968i, u_input.d.x, u_input.d.x))));
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2044f, 1029f, global0.x, global0.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(320f, global0.x, global0.x, 796f) * vec4<f32>(global0.x, -1608f, -1631f, global0.x)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, global0.x, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -790f, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -775f, global0.x, 284f)), u_input.b >= u_input.c)), false))))));
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1000f, global0.x, global0.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, 1000f, _wgslsmith_f_op_f32(global0.x + global0.x)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1201f, 892f, global0.x, global0.x)))))));
    global1 = array<Struct_2, 12>();
    let var_1 = !(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, -36749i, ~u_input.d.x) >> (~vec4<u32>(u_input.e.x, 42241u, u_input.a, u_input.e.x) % vec4<u32>(32u)), -func_4(1082f, func_1(vec4<i32>(1i, u_input.d.x, u_input.d.x, -1i)), Struct_1(global0.x, global2[_wgslsmith_index_u32(u_input.c, 24u)], 16926i), global2[_wgslsmith_index_u32(u_input.e.x, 24u)])));
}

