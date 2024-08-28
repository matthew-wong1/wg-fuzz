struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, true, true), 576f, vec2<f32>(774f, 468f), vec3<u32>(18094u, 42963u, 1u), vec4<u32>(50306u, 0u, 66967u, 47992u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(select(-233f, arg_0.x, global1.a.x || global1.a.x)), global1.a.x && any(global1.a.yx))));
    var var_1 = Struct_1(select(global1.a, !(!global1.a), !select(vec3<bool>(global1.a.x, true, false), select(vec3<bool>(global1.a.x, global1.a.x, true), global1.a, global1.a), true)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(floor(global0.x)))), _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x), global0.zy, u_input.b.xxw, firstTrailingBit(~_wgslsmith_sub_vec4_u32(u_input.b, u_input.b) << (global1.e % vec4<u32>(32u))));
    return !vec3<bool>(global1.a.x, all(vec3<bool>(global1.a.x, true, true)), select(!(var_1.e.x >= u_input.b.x), false, all(global1.a)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec4<u32>) -> Struct_1 {
    return Struct_1(select(!(!global1.a), func_3(vec3<f32>(_wgslsmith_f_op_f32(-1949f - -231f), -266f, _wgslsmith_f_op_f32(abs(402f)))), !(!(!global1.a))), _wgslsmith_f_op_f32(-244f - -1030f), _wgslsmith_f_op_vec2_f32(global1.c * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-142f, -535f)))), ~abs(~abs(u_input.b.zzz)), ~arg_2);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = !arg_3.a.yy;
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(~arg_1.x, global1.d.x), 1u) | select(reverseBits(global1.e.xw), abs(arg_3.d.zx), vec2<bool>(true, 0i > _wgslsmith_dot_vec3_i32(vec3<i32>(12976i, arg_0, 38670i), vec3<i32>(arg_0, 1i, -2147483647i))));
    var_1 = vec2<u32>(~(~0u << (0u % 32u)), global1.e.x);
    var var_2 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_2))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(arg_3.c)), vec2<f32>(-854f, -760f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f) + 754f), _wgslsmith_f_op_f32(exp2(arg_3.c.x)), -102f), ~vec4<u32>(firstLeadingBit(arg_1.x), var_1.x, 4294967295u, abs(21724u))).b);
    var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2401f)));
    return !global1.a;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))), 102f)), vec2<f32>(global1.b, global0.x), ~vec3<u32>(min(u_input.b.x, abs(u_input.b.x)), max(51196u, 52036u), abs(61703u) & global1.e.x), global1.e);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1000f)), global0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(318f * var_0.b))))), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), _wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(1000f))))));
    global1 = var_0;
    global1 = Struct_1(vec3<bool>(global1.a.x, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1018f) - _wgslsmith_f_op_f32(-var_0.b)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, var_0.c.x)) + _wgslsmith_f_op_f32(-1000f + 1364f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-312f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-463f, global0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-418f, global1.c.x)))))))), ~(~(~vec3<u32>(4294967295u, var_0.e.x, var_0.e.x))), firstTrailingBit(select(select(select(vec4<u32>(u_input.b.x, 26515u, var_0.d.x, 7900u), u_input.b, vec4<bool>(true, false, false, arg_1.x)), var_0.e, !vec4<bool>(var_0.a.x, global1.a.x, true, false)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), vec4<u32>(var_0.e.x, 69522u, 54816u, 1u), vec4<u32>(var_0.e.x, global1.d.x, var_0.d.x, global1.d.x)), abs(vec4<u32>(20433u, 65948u, var_0.e.x, global1.e.x))), var_0.a.x)));
    let var_1 = Struct_1(func_4(1i, global1.d, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1487f * var_0.c.x))), 748f), Struct_1(!func_2(vec2<f32>(global1.b, var_0.c.x), vec3<f32>(-879f, -686f, global0.x), vec4<u32>(11010u, global1.d.x, global1.e.x, 0u)).a, _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(step(-751f, -841f))), _wgslsmith_f_op_vec2_f32(global0.yw + _wgslsmith_f_op_vec2_f32(-var_0.c)), vec3<u32>(84466u, 4294967295u, u_input.b.x) & ~var_0.d, u_input.b)), -1408f, global1.c, select(vec3<u32>(_wgslsmith_mult_u32(1u, ~var_0.d.x), 85210u, _wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e.x, 0u), global1.e.xz))), vec3<u32>(1u, ~var_0.d.x, ~83922u), !vec3<bool>(all(vec3<bool>(global1.a.x, true, false)), any(vec4<bool>(var_0.a.x, arg_1.x, arg_1.x, var_0.a.x)), false)), reverseBits(var_0.e));
    return var_1;
}

fn func_6(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.wyx)) * global0.wzw);
    var var_1 = vec4<bool>(_wgslsmith_clamp_i32(countOneBits(abs(1i)), u_input.a, -1i) != u_input.a, !(!(false & arg_1)), 1161f >= _wgslsmith_f_op_f32(step(119f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(375f, global1.c.x))))), true);
    var var_2 = ~(~5293u);
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, global1.b, global1.c.x, -1797f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-164f, 1384f, 1212f, global1.b) - vec4<f32>(-1800f, global1.c.x, 1146f, -309f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(998f, 1180f, -1000f, -560f)) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -260f), vec4<f32>(var_0.x, global0.x, -869f, var_0.x))), false)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, _wgslsmith_f_op_f32(global1.c.x * arg_2.c.x), 1000f, _wgslsmith_f_op_f32(global1.b - var_0.x)) + vec4<f32>(_wgslsmith_f_op_f32(global1.c.x * var_0.x), _wgslsmith_f_op_f32(-var_0.x), var_0.x, 761f))));
    let var_4 = func_2(vec2<f32>(var_0.x, -518f), _wgslsmith_f_op_vec3_f32(var_0 - var_0), ~_wgslsmith_add_vec4_u32(~vec4<u32>(global1.e.x, 53345u, u_input.b.x, u_input.b.x), ~countOneBits(arg_2.e)));
    return Struct_1(vec3<bool>(true, true, true), 254f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global1.c))))), ((countOneBits(u_input.b.wxw) & select(vec3<u32>(var_4.d.x, 0u, 13937u), vec3<u32>(0u, global1.d.x, var_4.e.x), var_4.a.x)) << (u_input.b.xzz % vec3<u32>(32u))) << (countOneBits(firstTrailingBit(~global1.e.wyy)) % vec3<u32>(32u)), select(vec4<u32>(func_5(vec3<i32>(arg_0.x, arg_0.x, 724i), var_1.zzx).e.x, arg_2.e.x | _wgslsmith_div_u32(0u, 111003u), global1.d.x, 1u), vec4<u32>(u_input.b.x, 52190u, _wgslsmith_clamp_u32(76188u, 33966u, u_input.b.x), ~u_input.b.x) ^ ~(~global1.e), true));
}

fn func_1() -> Struct_2 {
    global1 = func_6(min(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, ~1i), vec2<i32>(u_input.a, 37274i) >> (u_input.b.yx % vec2<u32>(32u))), abs(vec2<i32>(~u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a)))), false, func_5(vec3<i32>(~u_input.a, reverseBits(-u_input.a), 0i), func_4(-2147483647i, _wgslsmith_div_vec3_u32(vec3<u32>(global1.e.x, global1.d.x, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.e.x, 1u, 0u), vec3<u32>(u_input.b.x, global1.d.x, global1.d.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, global1.c.x)), func_2(vec2<f32>(global0.x, -2042f), vec3<f32>(global1.b, global1.c.x, global0.x), ~vec4<u32>(1u, u_input.b.x, 50036u, global1.d.x)))));
    var var_0 = Struct_2(global1.c.x);
    global1 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-681f + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(global0.wwx)))), _wgslsmith_f_op_vec3_f32(-global0.zzz)), _wgslsmith_div_vec4_u32(u_input.b, ~(~(~u_input.b))));
    let var_1 = _wgslsmith_f_op_f32(-func_5(vec3<i32>(max(_wgslsmith_mult_i32(u_input.a, u_input.a), -u_input.a), _wgslsmith_clamp_i32(abs(1i), u_input.a, _wgslsmith_add_i32(u_input.a, 53778i)), 23839i), vec3<bool>(true, func_6(vec2<i32>(u_input.a, -17489i), !global1.a.x, func_5(vec3<i32>(47561i, 7730i, u_input.a), vec3<bool>(global1.a.x, global1.a.x, global1.a.x))).a.x, true)).b);
    global1 = func_2(global0.zz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, var_0.a)), _wgslsmith_f_op_f32(sign(-628f)), func_6(vec2<i32>(u_input.a, 44267i) ^ vec2<i32>(0i, u_input.a), true, func_2(vec2<f32>(786f, -253f), global0.xwy, u_input.b)).b)), min(u_input.b, vec4<u32>(~firstTrailingBit(global1.d.x), 17392u, func_6(vec2<i32>(-2147483647i, u_input.a), global1.a.x && global1.a.x, func_2(vec2<f32>(var_0.a, global1.b), vec3<f32>(463f, var_1, -913f), global1.e)).e.x, global1.d.x)));
    return Struct_2(-395f);
}

fn func_7(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2(global0.zx, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, var_0.a, var_0.a))), global1.e).b), 835f)));
    let var_2 = func_2(global0.zy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(747f, -2382f, arg_0.a), global0.yyz, global1.a)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1, -233f, -887f))), _wgslsmith_f_op_vec3_f32(-global0.xyz))))), select(~_wgslsmith_add_vec4_u32(firstTrailingBit(u_input.b), u_input.b), func_5(vec3<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), ~2147483647i, countOneBits(21546i)), !vec3<bool>(false, global1.a.x, global1.a.x)).e, select(false, true, false)));
    let var_3 = 361f;
    let var_4 = -_wgslsmith_clamp_vec2_i32(-min(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(21150i, -31407i)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-53171i, u_input.a))), max(-vec2<i32>(-1i, 10996i), vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-1i) * -(~vec2<i32>(u_input.a, u_input.a)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_0.a) * global1.c))) * global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (48251u | global1.e.x) & global1.e.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_7(func_1()))));
    let var_2 = _wgslsmith_clamp_vec4_i32(-select(-abs(vec4<i32>(u_input.a, -1i, u_input.a, -25114i)), vec4<i32>(u_input.a, firstTrailingBit(13282i), min(-52913i, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 39365i, u_input.a), vec3<i32>(u_input.a, 1i, 32661i))), ~1i == u_input.a), -abs(~vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)), (vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 4211i, -6996i, u_input.a), vec4<i32>(u_input.a, 0i, 0i, u_input.a)), ~u_input.a, countOneBits(55600i), 0i << (0u % 32u)) ^ -vec4<i32>(1i, 1i, 31296i, 23338i)) & -firstTrailingBit(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)));
    var_0 = global1.e.x;
    let var_3 = func_1();
    var var_4 = vec4<bool>(!global1.a.x, !(true & func_6(vec2<i32>(0i, 1i) ^ var_2.xw, global1.a.x, func_6(var_2.zw, false, Struct_1(vec3<bool>(global1.a.x, true, global1.a.x), var_1.x, global0.xx, vec3<u32>(16314u, global1.e.x, global1.e.x), u_input.b))).a.x), false, !select(global1.a.x, !global1.a.x, false));
    var var_5 = all(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, false, false, var_4.x), false), vec4<bool>(var_4.x, !var_4.x, any(vec4<bool>(global1.a.x, var_4.x, true, true)) | func_3(global0.yzx).x, !var_4.x), ~abs(33851i) < var_2.x));
    var var_6 = _wgslsmith_f_op_f32(f32(-1f) * -414f);
    let x = u_input.a;
    s_output = StorageBuffer(-871f, vec3<i32>(2147483647i, 18933i, var_2.x), var_2.www, _wgslsmith_div_u32(0u, ~_wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x, ~4294967295u)));
}

