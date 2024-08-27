struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, -41408i, -8968i, 24081i);

var<private> global1: vec4<i32>;

var<private> global2: vec4<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    var var_0 = Struct_4(1u, select(vec3<i32>(-1i) * -global0.yxw, -vec3<i32>(u_input.a, global0.x, 0i) >> (firstLeadingBit(vec3<u32>(5939u, 70873u, 35898u)) % vec3<u32>(32u)), false) & -global2.yxw, Struct_2(Struct_1(~(~vec4<u32>(25344u, 7760u, 0u, 11516u)), 1u, ~_wgslsmith_mult_i32(-2147483647i, global2.x)), vec4<bool>(true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), true, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-620f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1086f)))));
    var_0 = Struct_4(var_0.c.a.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, global0.x, 1i), -(global0.wxx << (var_0.c.a.a.xyy % vec3<u32>(32u))) & abs(global1.xzw), -_wgslsmith_clamp_vec3_i32(vec3<i32>(27839i, global2.x, global1.x), vec3<i32>(global0.x, global2.x, global1.x), ~vec3<i32>(-1i, 1i, global1.x))), Struct_2(var_0.c.a, !select(select(vec4<bool>(false, var_0.c.b.x, true, var_0.c.b.x), var_0.c.b, vec4<bool>(true, var_0.c.c, var_0.c.b.x, false)), select(vec4<bool>(var_0.c.c, false, var_0.c.b.x, var_0.c.c), vec4<bool>(true, true, true, var_0.c.b.x), var_0.c.b.x), var_0.c.c || true), false));
    global2 = ~vec4<i32>(min(~2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.b.x, global2.x), vec3<i32>(var_0.c.a.c, -18976i, -1i))) & ~(-55264i), global1.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(-4591i, min(global0.x, global0.x)), ~global2.x), -_wgslsmith_add_i32(-51136i, _wgslsmith_mod_i32(-54566i, global1.x)));
    var var_1 = Struct_4(var_0.a, global2.zxy, var_0.c);
    global1 = firstTrailingBit((~(vec4<i32>(var_0.b.x, 34715i, global1.x, -21552i) & vec4<i32>(-5302i, u_input.a, global0.x, 1i)) & (_wgslsmith_mult_vec4_i32(vec4<i32>(-12984i, global0.x, var_1.c.a.c, var_1.b.x), vec4<i32>(-75966i, -2147483647i, 2147483647i, 0i)) | reverseBits(vec4<i32>(global2.x, u_input.a, var_0.c.a.c, global2.x)))) << (var_1.c.a.a % vec4<u32>(32u)));
    return ~var_1.c.a.b;
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    let var_0 = Struct_4(_wgslsmith_div_u32(~(7759u ^ func_3()), ~(~min(42798u, 6354u))), -global1.xxz, Struct_2(Struct_1(~(~vec4<u32>(0u, 1100u, 71943u, 1u)), 4294967295u, 3785i), !vec4<bool>(true, true, false, all(vec4<bool>(false, true, false, false))), any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, false, false))))));
    let var_1 = var_0.c.a;
    global2 = firstLeadingBit(vec4<i32>(firstLeadingBit(-abs(global1.x)), abs(firstTrailingBit(0i)), _wgslsmith_add_i32(-2147483647i, max(-35729i, -arg_0.x)), ~u_input.a));
    let var_2 = var_1.a;
    var var_3 = Struct_3(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a.x, var_2.x, 1u, var_2.x), ~vec4<u32>(0u, 14235u, var_0.a, 1u)) << (countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, 62717u, 29885u, 18599u), vec4<u32>(var_0.c.a.b, 148962u, var_1.a.x, 0u))) % vec4<u32>(32u)), ~67379u, min(-_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, global0.x), var_0.b.xx), min(-9672i, 1i))), vec3<bool>(true, var_0.c.b.x, var_0.c.c), var_1, var_0.c);
    return ~reverseBits(79311u);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_4 {
    global1 = select(~abs(-abs(vec4<i32>(global1.x, global0.x, global2.x, -19866i))), ~(~(~vec4<i32>(51706i, -19296i, u_input.a, 2147483647i))) | _wgslsmith_div_vec4_i32(~(vec4<i32>(arg_2.a.c, global0.x, arg_0.c.c, arg_2.a.c) | vec4<i32>(arg_0.a.c, -35342i, -54150i, u_input.a)), _wgslsmith_mult_vec4_i32(~vec4<i32>(global0.x, global1.x, 31839i, 1i), ~vec4<i32>(global1.x, arg_2.a.c, 6157i, global1.x))), select(select(vec4<bool>(arg_0.b.x, arg_2.a.c == 2147483647i, false, any(arg_2.b)), vec4<bool>(all(vec4<bool>(arg_2.b.x, arg_2.b.x, true, arg_2.c)), all(arg_0.d.b.wyw), all(arg_2.b.zy), arg_3.x > arg_3.x), true), select(select(arg_0.d.b, vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_0.d.b.x), arg_0.d.b), select(vec4<bool>(arg_0.d.b.x, arg_0.b.x, arg_0.b.x, true), select(arg_0.d.b, arg_0.d.b, true), false), (arg_2.a.c | u_input.a) != _wgslsmith_add_i32(global1.x, -6867i)), false));
    let var_0 = Struct_5(arg_0, arg_0.d, ~abs(~arg_2.a.b | max(arg_0.d.a.b, arg_0.a.a.x)));
    let var_1 = ~abs(vec2<i32>(0i, _wgslsmith_mod_i32(1i, 10870i)));
    return Struct_4(~_wgslsmith_sub_u32(~var_0.c, var_0.a.d.a.a.x), abs(global0.yxx), arg_2);
}

fn func_1() -> Struct_5 {
    let var_0 = func_4(Struct_3(Struct_1(countOneBits(vec4<u32>(4294967295u, 4294967295u, 15353u, 50942u)), func_2(_wgslsmith_add_vec2_i32(global2.xx, vec2<i32>(global1.x, global0.x))), 1i), select(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), select(true, true, true)), !all(vec2<bool>(true, true))), Struct_1(min(vec4<u32>(4294967295u, 1u, 36953u, 4294967295u), countOneBits(vec4<u32>(0u, 4409u, 0u, 4103u))), 159039u, firstTrailingBit(-3834i)), Struct_2(Struct_1(vec4<u32>(1u, 1u, 1u, 1u), ~4294967295u, global1.x ^ u_input.a), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-223f))), Struct_2(Struct_1(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(12185u, 0u, 40771u, 90090u), vec4<bool>(true, true, true, true)), _wgslsmith_clamp_u32(~28860u, _wgslsmith_mod_u32(4294967295u, 25244u), 0u), global1.x), vec4<bool>(_wgslsmith_div_f32(308f, -204f) >= _wgslsmith_f_op_f32(trunc(-978f)), any(vec4<bool>(false, false, true, true)), !(global0.x != 2147483647i), any(vec3<bool>(true, true, true))), false), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(556f, 1083f), vec2<f32>(480f, 826f), vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1093f, -318f))), vec2<bool>(false, any(vec2<bool>(true, false))))))));
    global1 = ~(-firstLeadingBit(min(select(vec4<i32>(global1.x, 0i, 59402i, -2147483647i), vec4<i32>(2147483647i, var_0.b.x, 2147483647i, 2147483647i), var_0.c.b.x), vec4<i32>(u_input.a, -10096i, 1i, -6670i))));
    var var_1 = func_4(Struct_3(var_0.c.a, select(vec3<bool>(true, var_0.c.b.x, var_0.c.b.x), var_0.c.b.wyw, var_0.c.b.wzx), func_4(Struct_3(Struct_1(vec4<u32>(var_0.c.a.a.x, var_0.a, var_0.c.a.a.x, var_0.a), 1u, u_input.a), !vec3<bool>(true, var_0.c.b.x, true), var_0.c.a, Struct_2(var_0.c.a, var_0.c.b, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-722f - 190f) - _wgslsmith_div_f32(-932f, 115f)), Struct_2(func_4(Struct_3(var_0.c.a, var_0.c.b.xyw, Struct_1(var_0.c.a.a, 1u, -1i), Struct_2(Struct_1(var_0.c.a.a, 71796u, -2147483647i), vec4<bool>(true, var_0.c.b.x, true, var_0.c.c), var_0.c.c)), -328f, var_0.c, vec2<f32>(-1026f, 220f)).c.a, var_0.c.b, true), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(233f, -1126f) * vec2<f32>(-1172f, -1000f))))).c.a, func_4(Struct_3(var_0.c.a, !vec3<bool>(false, var_0.c.c, var_0.c.c), Struct_1(var_0.c.a.a, 1u, global1.x), func_4(Struct_3(Struct_1(var_0.c.a.a, 4294967295u, var_0.b.x), vec3<bool>(var_0.c.b.x, var_0.c.c, true), var_0.c.a, Struct_2(Struct_1(vec4<u32>(1u, 0u, 1u, 1u), var_0.a, global1.x), var_0.c.b, var_0.c.b.x)), -1000f, var_0.c, vec2<f32>(-1005f, 1000f)).c), _wgslsmith_f_op_f32(round(-240f)), var_0.c, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-395f, 1364f), _wgslsmith_div_vec2_f32(vec2<f32>(1117f, -1626f), vec2<f32>(-1000f, -972f))))).c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-351f * _wgslsmith_div_f32(-2072f, -862f)), -275f))), func_4(Struct_3(func_4(Struct_3(Struct_1(var_0.c.a.a, var_0.a, 2147483647i), vec3<bool>(false, var_0.c.b.x, false), var_0.c.a, var_0.c), -315f, func_4(Struct_3(var_0.c.a, vec3<bool>(false, var_0.c.c, false), var_0.c.a, Struct_2(var_0.c.a, var_0.c.b, var_0.c.b.x)), 1060f, Struct_2(var_0.c.a, var_0.c.b, var_0.c.b.x), vec2<f32>(-1691f, 1000f)).c, _wgslsmith_div_vec2_f32(vec2<f32>(-892f, 1591f), vec2<f32>(-478f, -613f))).c.a, var_0.c.b.xyx, func_4(Struct_3(Struct_1(var_0.c.a.a, 65610u, u_input.a), var_0.c.b.yyy, var_0.c.a, var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -585f), var_0.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-833f, -673f))).c.a, Struct_2(Struct_1(var_0.c.a.a, 23860u, global0.x), !var_0.c.b, true)), -1204f, func_4(Struct_3(func_4(Struct_3(Struct_1(vec4<u32>(var_0.a, 1u, 32909u, 4294967295u), 4294967295u, 16352i), var_0.c.b.ywz, Struct_1(vec4<u32>(var_0.c.a.a.x, var_0.c.a.b, 1u, 35476u), 1u, u_input.a), var_0.c), -1658f, var_0.c, vec2<f32>(-198f, 400f)).c.a, !var_0.c.b.wxz, func_4(Struct_3(Struct_1(var_0.c.a.a, 24514u, -940i), var_0.c.b.yzw, var_0.c.a, Struct_2(var_0.c.a, vec4<bool>(true, false, var_0.c.b.x, var_0.c.b.x), var_0.c.c)), 680f, var_0.c, vec2<f32>(1000f, 401f)).c.a, var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-363f + 379f) * _wgslsmith_f_op_f32(-163f * -2284f)), var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(271f, 448f) - vec2<f32>(-1378f, -161f)))).c, vec2<f32>(1f, -1556f)).c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1741f + -479f))))).c;
    let var_2 = Struct_5(Struct_3(func_4(Struct_3(var_0.c.a, var_1.b.xwy, func_4(Struct_3(var_0.c.a, var_0.c.b.xzy, Struct_1(vec4<u32>(var_0.c.a.a.x, 1u, 1u, 1u), 0u, global2.x), var_0.c), -1288f, var_0.c, vec2<f32>(1659f, 901f)).c.a, var_0.c), 1f, var_0.c, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1510f, -1984f) * vec2<f32>(-895f, 563f))))).c.a, select(select(!vec3<bool>(true, var_0.c.c, var_1.b.x), var_1.b.yyx, true), vec3<bool>(all(var_1.b.wyz), true, true), !vec3<bool>(false, true, var_0.c.b.x)), Struct_1(countOneBits(select(vec4<u32>(var_0.c.a.b, 0u, var_1.a.b, var_1.a.a.x), vec4<u32>(var_0.c.a.a.x, 0u, var_0.c.a.a.x, var_0.a), false)), var_0.c.a.b, 1i), func_4(Struct_3(Struct_1(vec4<u32>(50342u, 35572u, 5196u, 1u), 0u, global2.x), func_4(Struct_3(Struct_1(var_0.c.a.a, var_1.a.a.x, var_1.a.c), vec3<bool>(var_1.c, var_0.c.b.x, var_1.c), Struct_1(var_0.c.a.a, 35364u, -8020i), var_0.c), -1000f, Struct_2(var_0.c.a, var_0.c.b, var_0.c.c), vec2<f32>(867f, -991f)).c.b.xzy, var_1.a, func_4(Struct_3(var_1.a, vec3<bool>(var_1.b.x, var_0.c.c, var_0.c.c), var_0.c.a, Struct_2(var_0.c.a, vec4<bool>(false, false, false, false), true)), -178f, var_0.c, vec2<f32>(-474f, -888f)).c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -578f) - _wgslsmith_f_op_f32(floor(-1623f))), Struct_2(var_0.c.a, !var_0.c.b, true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(176f, 504f)), vec2<f32>(-142f, -846f), true))).c), func_4(Struct_3(var_0.c.a, vec3<bool>(!var_0.c.c, any(var_0.c.b.www), 0u <= var_1.a.a.x), func_4(Struct_3(Struct_1(vec4<u32>(var_0.a, var_0.c.a.a.x, 0u, var_0.c.a.b), 17112u, global0.x), var_0.c.b.zwz, Struct_1(var_1.a.a, 4294967295u, global2.x), var_0.c), 1709f, var_0.c, vec2<f32>(1f, 1f)).c.a, Struct_2(var_1.a, select(var_1.b, var_0.c.b, false), true)), _wgslsmith_f_op_f32(f32(-1f) * -1406f), Struct_2(Struct_1(vec4<u32>(var_1.a.a.x, 4294967295u, var_0.c.a.a.x, var_0.a), var_0.c.a.a.x ^ var_0.c.a.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1734i, global2.x, -10525i, u_input.a), vec4<i32>(-1i, -8594i, u_input.a, global0.x))), vec4<bool>(var_1.c, true, true, var_1.c), true), vec2<f32>(-972f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -713f) + _wgslsmith_f_op_f32(622f * 756f)))).c, ((func_3() ^ _wgslsmith_add_u32(12313u, var_1.a.a.x)) & 0u) << (_wgslsmith_add_u32(_wgslsmith_sub_u32(~120448u, firstLeadingBit(0u)), var_1.a.a.x) % 32u));
    global1 = countOneBits(_wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.a.c, 18946i, 31776i, -54093i), ~vec4<i32>(-6877i, var_0.c.a.c, global0.x, -1i)), -vec4<i32>(_wgslsmith_sub_i32(u_input.a, var_0.b.x), -2147483647i, 1i, ~(-1i)), _wgslsmith_add_vec4_i32(~(vec4<i32>(var_2.a.d.a.c, 19397i, u_input.a, var_0.b.x) >> (vec4<u32>(46254u, var_0.a, 29142u, 0u) % vec4<u32>(32u))), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c.a.c, 0i, global1.x, -1i), vec4<i32>(var_1.a.c, -8075i, global1.x, 0i)))));
    return Struct_5(Struct_3(var_1.a, !(!(!var_2.b.b.yxz)), var_2.a.a, var_2.a.d), var_2.b, ~4294967295u << (0u % 32u));
}

fn func_5(arg_0: Struct_5, arg_1: f32, arg_2: f32, arg_3: bool) -> Struct_1 {
    global1 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-19646i, _wgslsmith_add_i32(global0.x, 34243i), max(global2.x, u_input.a), _wgslsmith_clamp_i32(2147483647i, global2.x, global2.x)), countOneBits(max(vec4<i32>(global1.x, -30488i, u_input.a, -2213i), vec4<i32>(7688i, global0.x, global0.x, global2.x)))) >> ((abs(arg_0.a.c.a) >> ((arg_0.a.a.a >> (vec4<u32>(arg_0.b.a.b, arg_0.b.a.b, arg_0.b.a.a.x, arg_0.a.d.a.b) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), ~abs(~abs(vec4<i32>(2147483647i, u_input.a, global2.x, 42915i))));
    var var_0 = firstLeadingBit(~arg_0.b.a.a.yyw >> (vec3<u32>(func_3(), 31993u, 1u) % vec3<u32>(32u)));
    let var_1 = !vec3<bool>(arg_0.b.b.x, arg_3 & !(true || arg_0.b.b.x), any(func_4(arg_0.a, -606f, Struct_2(arg_0.a.c, arg_0.a.d.b, true), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1766f, arg_2)))).c.b.wzy));
    global1 = -_wgslsmith_mod_vec4_i32(~(-abs(vec4<i32>(global2.x, 0i, global0.x, 33290i))), ~min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 0i, global2.x, 0i), vec4<i32>(global2.x, 30910i, global2.x, -2147483647i)), min(vec4<i32>(24733i, -1i, global0.x, global2.x), vec4<i32>(global0.x, -2147483647i, arg_0.a.d.a.c, arg_0.b.a.c))));
    global1 = vec4<i32>(-23554i, max(-2147483647i, global1.x), 35162i, arg_0.a.d.a.c);
    return func_4(arg_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), -902f)), Struct_2(Struct_1(~abs(arg_0.a.c.a), arg_0.c, global0.x), !arg_0.b.b, global2.x <= (u_input.a << (func_3() % 32u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1451f, arg_2) * vec2<f32>(arg_2, 188f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_2)))))), var_1.x))).c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.wxx;
    let var_1 = ~firstTrailingBit(~(~_wgslsmith_div_vec4_u32(vec4<u32>(76656u, 37186u, 1081u, 70593u), vec4<u32>(33210u, 50781u, 18656u, 1u))));
    var var_2 = func_5(func_1(), _wgslsmith_f_op_f32(abs(559f)), 771f, true);
    let var_3 = vec4<bool>(false, var_1.x <= 0u, true, true);
    var var_4 = var_2.a.x & var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(626f + 604f), _wgslsmith_f_op_f32(step(884f, _wgslsmith_f_op_f32(select(2329f, _wgslsmith_f_op_f32(ceil(-1582f)), global0.x < u_input.a))))), vec3<u32>(var_2.b, ~(var_2.a.x >> (3111u % 32u)), 4294967295u) ^ vec3<u32>(~(17732u ^ var_1.x), _wgslsmith_add_u32(~1u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 34201u, 37347u), vec3<u32>(32753u, var_1.x, var_2.a.x))));
}

