struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2) -> f32 {
    global0 = Struct_2(Struct_1(arg_2.c.zyy, ~vec4<i32>(1i, arg_0, max(1i, arg_2.b.b.x), ~arg_2.b.b.x)), global0.b, vec4<f32>(_wgslsmith_div_f32(-851f, _wgslsmith_f_op_f32(step(arg_2.a.a.x, arg_2.a.a.x))), arg_2.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b.a.x)))), 458f));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2308f, 500f, arg_2.b.a.x))) + global0.a.a) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(161f, -1412f, 1286f))))), global0.b.b << (countOneBits(vec4<u32>(49501u, 75043u, 4294967295u, 0u) >> (vec4<u32>(1u, 51440u, arg_1.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), global0.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.c.x + 357f), _wgslsmith_f_op_f32(global0.b.a.x + global0.c.x), false))), -542f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-810f + arg_2.c.x) * _wgslsmith_f_op_f32(max(1000f, -302f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2096f + arg_2.b.a.x))), -347f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.c.x)) * 116f);
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> vec4<u32> {
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(1850f)), _wgslsmith_f_op_f32(round(1297f)), _wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(150f, -1000f, global0.a.a.x), vec3<f32>(-243f, -1626f, -844f))))), select(select(vec3<bool>(false, arg_1.d, true), vec3<bool>(false, arg_1.d, false), false), vec3<bool>(arg_1.d, true, false), any(vec3<bool>(arg_1.d, arg_1.d, arg_1.d))))), vec4<i32>(1i, ~(~u_input.a.x), _wgslsmith_sub_i32(52456i, arg_0) | u_input.e.x, -2147483647i)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.c.x, arg_1.b)) - _wgslsmith_f_op_f32(-438f * -655f)), 577f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))), arg_1.e.b), vec4<f32>(1091f, arg_1.b, _wgslsmith_f_op_f32(-global0.c.x), arg_1.b));
    let var_0 = arg_1;
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b.a.x, global0.c.x, 474f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a.x, var_0.a, -1570f) * _wgslsmith_f_op_vec3_f32(-global0.a.a)), (33206i | arg_1.e.b.x) < reverseBits(arg_0))), select(-vec4<i32>(-21069i, 1i, global0.b.b.x, global0.a.b.x), -vec4<i32>(0i, 34131i, 0i, arg_0), vec4<bool>(arg_1.d, true, !var_0.d, var_0.d && true))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b.a), _wgslsmith_f_op_vec3_f32(max(arg_1.e.a, _wgslsmith_f_op_vec3_f32(-var_0.e.a)))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(arg_1.c.b.x, var_0.c.b.x), abs(u_input.a.x), min(global0.b.b.x, u_input.e.x), u_input.e.x), -arg_1.c.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(173f + 684f), _wgslsmith_f_op_f32(-1204f - arg_1.a), var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -385f)))) * global0.c));
    var var_1 = arg_1.d && ((var_0.b == -1015f) || arg_1.d);
    let var_2 = Struct_2(Struct_1(vec3<f32>(var_0.c.a.x, -784f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, var_0.c.a.x) + _wgslsmith_f_op_f32(max(157f, 1490f)))), ~countOneBits(var_0.c.b) | (-vec4<i32>(u_input.a.x, u_input.a.x, global0.a.b.x, u_input.e.x) & arg_1.c.b)), var_0.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.c.a.x, _wgslsmith_f_op_f32(arg_1.c.a.x * -699f), _wgslsmith_f_op_f32(floor(arg_1.c.a.x)), arg_1.c.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, global0.a.a.x, global0.b.a.x, -336f), vec4<f32>(var_0.b, -601f, arg_1.a, arg_1.c.a.x), false))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1190f, -129f, 2179f, 2151f), _wgslsmith_f_op_vec4_f32(global0.c + vec4<f32>(-642f, var_0.a, global0.c.x, var_0.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(global0.c, vec4<f32>(443f, -437f, 448f, 863f)), _wgslsmith_f_op_vec4_f32(global0.c - vec4<f32>(global0.b.a.x, global0.c.x, 558f, arg_1.a)), true)))), vec4<bool>(all(!vec3<bool>(var_0.d, false, true)), true, all(!vec4<bool>(true, true, var_0.d, var_0.d)), _wgslsmith_f_op_f32(abs(global0.a.a.x)) == _wgslsmith_f_op_f32(global0.c.x + var_0.b)))));
    return _wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.b, 49766u, u_input.d), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, 4294967295u, 4294967295u), vec4<u32>(u_input.b, u_input.d, u_input.b, u_input.d))), u_input.c.x, _wgslsmith_add_u32(78657u, u_input.b), ~u_input.b & (u_input.c.x | 28759u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(78468u, ~52705u, _wgslsmith_sub_u32(u_input.c.x, 0u), _wgslsmith_clamp_u32(u_input.c.x, u_input.b, 4294967295u)), abs(vec4<u32>(71474u, 1u, 1095u, 1u))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec2<i32>) -> vec4<i32> {
    let var_0 = func_4(-2147483647i, Struct_3(_wgslsmith_f_op_f32(func_3(-11078i, _wgslsmith_sub_vec3_u32(vec3<u32>(24898u, 37434u, 1u), u_input.c), Struct_2(Struct_1(vec3<f32>(arg_0.x, -536f, global0.c.x), vec4<i32>(-10438i, global0.a.b.x, arg_2.x, global0.b.b.x)), global0.b, vec4<f32>(-1318f, 971f, 682f, arg_0.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1134f), _wgslsmith_f_op_f32(global0.b.a.x * 1076f))), global0.a, !arg_1.x, Struct_1(_wgslsmith_div_vec3_f32(global0.a.a, vec3<f32>(-685f, global0.a.a.x, arg_0.x)), global0.b.b))) | abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(188u, 4294967295u, 46966u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, 4294967295u, 4294967295u), vec4<u32>(3950u, 17907u, 1u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 39883u, u_input.d, 1u), vec4<u32>(u_input.b, 25233u, u_input.d, u_input.c.x))) & min(vec4<u32>(8048u, u_input.b, 1u, u_input.d), ~vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, u_input.b)));
    var var_1 = Struct_3(arg_0.x, -425f, Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.a.a.x)), _wgslsmith_f_op_f32(arg_0.x - global0.b.a.x), _wgslsmith_f_op_f32(449f * arg_0.x)), _wgslsmith_div_vec3_f32(global0.c.zxz, _wgslsmith_f_op_vec3_f32(-arg_0.xxx))), u_input.e), _wgslsmith_f_op_f32(func_3(11302i ^ _wgslsmith_mod_i32(-20968i, arg_2.x), select(vec3<u32>(0u, u_input.d, 1u), vec3<u32>(80823u, u_input.c.x, u_input.d), arg_1.x) | ~var_0.xww, Struct_2(Struct_1(arg_0.wxw, vec4<i32>(0i, 1i, arg_2.x, arg_2.x)), global0.b, _wgslsmith_f_op_vec4_f32(-global0.c)))) <= 493f, Struct_1(vec3<f32>(1869f, global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.x, -208f))), countOneBits(firstLeadingBit(~u_input.e))));
    global0 = Struct_2(var_1.c, global0.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.b, arg_0.x, 124f)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(arg_0.x)), arg_0.x, 582f))), global0.c));
    var_1 = Struct_3(_wgslsmith_f_op_f32(sign(1184f)), -1000f, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(var_1.c.a)), vec4<i32>(_wgslsmith_clamp_i32(30161i, -1i, -19384i & var_1.c.b.x), _wgslsmith_dot_vec2_i32(-vec2<i32>(-20440i, u_input.e.x), global0.a.b.yw), ~u_input.a.x & ~global0.a.b.x, -arg_2.x)), all(!vec3<bool>(true, true, select(arg_1.x, arg_1.x, arg_1.x))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-221f + -550f), global0.b.a.x, 544f), -vec4<i32>(var_1.c.b.x, max(global0.a.b.x, 0i), global0.b.b.x | global0.b.b.x, ~2147483647i)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-29494i, _wgslsmith_mult_vec3_u32(~var_0.xxy, var_0.xww), Struct_2(Struct_1(vec3<f32>(651f, var_1.b, global0.b.a.x), vec4<i32>(arg_2.x, -41824i, var_1.e.b.x, -2147483647i)), var_1.e, arg_0))) - global0.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1056f)), global0.b.a.x)) + var_1.a));
    return ~var_1.e.b & u_input.e;
}

fn func_1() -> Struct_2 {
    global0 = Struct_2(global0.b, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a.x, global0.b.a.x, global0.a.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1362f, -1000f, 2327f)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global0.c.yxy + global0.c.xwy)))), func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global0.c - vec4<f32>(345f, global0.b.a.x, 1000f, global0.b.a.x)))), vec2<bool>(any(vec4<bool>(true, false, true, false)), global0.a.b.x < global0.b.b.x), _wgslsmith_mult_vec2_i32(u_input.e.zw, vec2<i32>(40263i, 2147483647i) >> (u_input.c.yx % vec2<u32>(32u))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0.c))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(884f, global0.c.x, true)) + _wgslsmith_f_op_f32(f32(-1f) * -918f)), _wgslsmith_f_op_f32(ceil(-900f)), 588f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -224f) - global0.c.x))));
    let var_0 = reverseBits(~(reverseBits(vec4<i32>(-18800i, -23124i, u_input.a.x, u_input.e.x)) | vec4<i32>(u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec2_i32(global0.b.b.yz, vec2<i32>(u_input.a.x, u_input.a.x)), global0.a.b.x)));
    var var_1 = vec3<bool>(any(vec4<bool>(83093u <= u_input.c.x, true, any(vec2<bool>(false, true)) || true, !all(vec4<bool>(true, false, false, false)))), all(vec4<bool>(false, false, true, true)), true);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.a.x * -491f) + global0.c.x)), -1625f));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(-global0.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1635f))), 764f) * vec3<f32>(_wgslsmith_f_op_f32(func_3(-global0.a.b.x, select(u_input.c, u_input.c, vec3<bool>(var_1.x, var_1.x, false)), Struct_2(global0.a, Struct_1(global0.a.a, u_input.e), global0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_div_f32(global0.b.a.x, global0.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))), vec4<i32>(1i & ~u_input.e.x, _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2563i, global0.b.b.x, 2147483647i), u_input.e.xyz), -2147483647i), -1i, 30823i));
    return Struct_2(Struct_1(var_3.a, -(~global0.a.b)), global0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(global0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_3.a.x, -1469f, var_2))))) + vec4<f32>(_wgslsmith_f_op_f32(-global0.b.a.x), _wgslsmith_f_op_f32(-1134f + -300f), 1368f, 239f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    var var_1 = ~999u;
    var var_2 = func_1();
    var_2 = func_1();
    global0 = Struct_2(var_2.b, global0.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0.c))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a.x, 548f, var_2.b.a.x, var_2.c.x))))));
    global0 = func_1();
    var_1 = select(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 38581u, var_0, var_0), vec4<u32>(u_input.d, var_0, 1u, u_input.b)), max(0u, 4294967295u), _wgslsmith_sub_u32(101321u, 0u)), _wgslsmith_sub_vec3_u32(firstTrailingBit(u_input.c), vec3<u32>(var_0, var_0, 1u))), ~u_input.c), min(_wgslsmith_div_u32(_wgslsmith_mod_u32(~var_0, ~var_0), 18561u), _wgslsmith_dot_vec2_u32(min(u_input.c.zz, vec2<u32>(48283u, var_0)), vec2<u32>(75672u, var_0) & u_input.c.yx) & ~(~0u)), false);
    var var_3 = vec3<u32>(u_input.d, u_input.b, 47900u);
    let var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.c.x), -1470f, _wgslsmith_div_f32(var_2.a.a.x, -943f)) * vec3<f32>(_wgslsmith_f_op_f32(-global0.b.a.x), 205f, var_2.b.a.x)), _wgslsmith_f_op_vec3_f32(abs(global0.c.xxx)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1317f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_2.a.a)) + vec3<f32>(var_4.x, var_4.x, var_2.a.a.x)))));
}

