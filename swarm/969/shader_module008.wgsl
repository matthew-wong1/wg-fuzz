struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<i32>(1i, 1i, -32134i, -7688i), true, vec2<f32>(-491f, 1000f), vec4<bool>(false, false, true, false)), Struct_1(vec4<i32>(-7079i, 0i, -1i, 2147483647i), false, vec2<f32>(704f, -1878f), vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(-20516i, 1i, 0i, -1i), true, vec2<f32>(-1000f, 1176f), vec4<bool>(true, true, false, true)), Struct_1(vec4<i32>(-12093i, -31928i, -6521i, i32(-2147483648)), true, vec2<f32>(157f, 309f), vec4<bool>(false, false, true, false)), Struct_1(vec4<i32>(61806i, 13186i, i32(-2147483648), -66508i), false, vec2<f32>(-1527f, 472f), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(-55170i, 1i, -12658i, 1i), true, vec2<f32>(1351f, 201f), vec4<bool>(false, true, false, false)), Struct_1(vec4<i32>(-6084i, 45791i, -53418i, i32(-2147483648)), true, vec2<f32>(2281f, 523f), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(-1i, i32(-2147483648), 1i, 0i), true, vec2<f32>(-427f, -1721f), vec4<bool>(false, true, false, false)), Struct_1(vec4<i32>(-1i, 38912i, 9997i, 46108i), true, vec2<f32>(958f, -167f), vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(8316i, 32518i, i32(-2147483648), 46688i), false, vec2<f32>(-1849f, -765f), vec4<bool>(false, false, true, true)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 1i, 1i), false, vec2<f32>(-290f, 851f), vec4<bool>(false, true, false, false)), Struct_1(vec4<i32>(-36160i, 1i, 1i, 1i), false, vec2<f32>(-571f, -704f), vec4<bool>(false, false, false, true)));

var<private> global1: f32;

var<private> global2: vec4<f32>;

var<private> global3: u32 = 1u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: vec4<i32>) -> vec2<bool> {
    let var_0 = arg_1;
    let var_1 = Struct_1(select(abs(firstTrailingBit(firstTrailingBit(arg_0.a))), arg_0.a, all(arg_0.d)), select(all(vec3<bool>(arg_0.d.x && arg_0.d.x, true, false || arg_0.d.x)), any(!arg_0.d.yx) != (arg_0.b || true), all(vec2<bool>(true, arg_0.b))), var_0.xz, vec4<bool>(!arg_0.b, all(select(select(vec2<bool>(false, true), arg_0.d.yy, arg_0.d.zy), arg_0.d.zx, vec2<bool>(arg_0.b, arg_0.b))), true, true));
    global1 = 1511f;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, arg_0.c.x, var_1.c.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.c.x, var_1.c.x, 666f, var_0.x), var_0))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 889f, -266f, arg_1.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, var_0.x, arg_1.x, arg_1.x) + vec4<f32>(var_1.c.x, 590f, var_0.x, 909f)))), vec4<bool>(any(!var_1.d.zzy), !arg_0.d.x, any(vec3<bool>(true, var_1.d.x, var_1.d.x)), arg_2.x < select(4294967295u, arg_2.x, false)))));
    var var_2 = arg_2.x;
    return vec2<bool>(any(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -746f) < _wgslsmith_f_op_f32(min(576f, global2.x)), all(!arg_0.d.zx), all(var_1.d.yy), arg_0.b)), !(_wgslsmith_clamp_u32(~0u, arg_2.x, select(0u, arg_2.x, false)) < (_wgslsmith_div_u32(14878u, arg_2.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(13513u, arg_2.x), vec2<u32>(arg_2.x, 0u)) % 32u))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec2<bool>, arg_3: f32) -> u32 {
    let var_0 = Struct_1(-(~abs(vec4<i32>(2147483647i, -26183i, u_input.a, u_input.a))), all(select(arg_2, func_3(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1, 48963u), 12u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(363f, 203f, -610f, arg_3) * vec4<f32>(-1031f, -671f, arg_3, 1000f)), vec4<u32>(4294967295u, arg_1, arg_1, arg_1), ~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), !vec2<bool>(arg_2.x, arg_2.x))), vec2<f32>(_wgslsmith_f_op_f32(-197f + _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(946f + global2.x))), _wgslsmith_f_op_f32(-global2.x)), !select(select(vec4<bool>(true, arg_0, arg_2.x, arg_0), !vec4<bool>(arg_0, false, arg_2.x, true), vec4<bool>(arg_2.x, false, false, true)), vec4<bool>(arg_0, all(arg_2), arg_0, true), u_input.a == -u_input.a));
    let var_1 = Struct_1(var_0.a, true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - 218f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3, arg_3)))), arg_3), select(!select(vec4<bool>(false, arg_2.x, false, true), vec4<bool>(arg_2.x, false, var_0.d.x, arg_2.x), arg_2.x), select(!select(var_0.d, vec4<bool>(true, var_0.d.x, true, true), vec4<bool>(true, true, arg_0, var_0.b)), vec4<bool>(arg_2.x, arg_2.x, any(var_0.d.zyx), any(var_0.d.yy)), _wgslsmith_div_u32(0u, arg_1) <= (0u >> (arg_1 % 32u))), vec4<bool>(true, !arg_2.x || true, true, all(vec3<bool>(arg_2.x, true, arg_2.x)))));
    var var_2 = global0[_wgslsmith_index_u32(1u, 12u)];
    var var_3 = Struct_1(reverseBits(var_1.a), true, vec2<f32>(var_1.c.x, -1000f), select(vec4<bool>(var_0.b, !(arg_2.x & var_1.b), true, !arg_0), vec4<bool>(false, ~u_input.a >= u_input.a, _wgslsmith_clamp_i32(2147483647i, -7098i, -53821i) == -1i, any(vec2<bool>(false, arg_2.x))), var_0.b));
    var var_4 = any(vec2<bool>(select(!(!var_3.b), true, !any(vec4<bool>(false, false, true, arg_2.x))), !var_2.d.x));
    return 41112u;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = 4294967295u;
    var_0 = firstLeadingBit(arg_0);
    let var_1 = _wgslsmith_clamp_u32(arg_0, arg_0, 26043u) >> (func_2(true, 4294967295u ^ arg_0, vec2<bool>(true && any(vec2<bool>(true, false)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1166f))) % 32u);
    return Struct_1(-(~_wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.a, -2147483647i, -37792i, u_input.a), vec4<i32>(-10017i, 2147483647i, 75154i, -48695i)), max(vec4<i32>(-2996i, -7734i, 0i, 2147483647i), vec4<i32>(1i, 5450i, u_input.a, -1i)))), select(true, true, false), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x))))), select(select(vec4<bool>(false, any(vec4<bool>(false, false, true, false)), true, true), vec4<bool>(true, true, true, func_3(global0[_wgslsmith_index_u32(var_1, 12u)], vec4<f32>(1435f, global2.x, -650f, global2.x), vec4<u32>(27216u, 28400u, 27187u, 4676u), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)).x), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-512f * _wgslsmith_f_op_f32(f32(-1f) * -474f));
    global2 = vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.x, -264f), _wgslsmith_f_op_f32(floor(global2.x)), !arg_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_0.c.x)), arg_0.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-630f)))))));
    let var_1 = vec4<bool>(arg_0.d.x, true, !all(!arg_0.d), arg_0.d.x);
    global0 = array<Struct_1, 12>();
    var var_2 = reverseBits(1u);
    return Struct_1(firstLeadingBit(vec4<i32>(abs(1i), countOneBits(u_input.a), 1i, -max(u_input.a, 0i))), !func_3(func_1(18420u >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, arg_0.c.x, 649f)))), vec4<u32>(1u, countOneBits(20886u), min(22034u, 4294967295u), _wgslsmith_mult_u32(45552u, 51368u)), vec4<i32>(arg_0.a.x, 9090i, _wgslsmith_add_i32(arg_0.a.x, -6799i), -u_input.a)).x, vec2<f32>(_wgslsmith_f_op_f32(func_1(countOneBits(0u)).c.x + _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(-func_1(49721u).c.x))), vec4<bool>(_wgslsmith_add_u32(0u, ~1u) == func_2(func_1(1u).b, 1u, vec2<bool>(arg_0.b, true), _wgslsmith_f_op_f32(-arg_0.c.x)), !func_3(Struct_1(arg_0.a, arg_0.d.x, vec2<f32>(1000f, 957f), vec4<bool>(true, false, false, var_1.x)), vec4<f32>(-831f, arg_0.c.x, -335f, 119f), ~vec4<u32>(41294u, 57482u, 10454u, 4294967295u), arg_0.a).x, func_3(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-249f, 375f, arg_0.c.x, global2.x), vec4<f32>(arg_0.c.x, 382f, arg_0.c.x, global2.x))) * vec4<f32>(684f, 1343f, global2.x, -1314f)), vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(96035u, 113795u, 23526u, 48272u), vec4<u32>(27297u, 43088u, 28746u, 14032u)), ~25767u, ~9937u), _wgslsmith_sub_vec4_i32(vec4<i32>(58555i, u_input.a, -10026i, arg_0.a.x), ~arg_0.a)).x, 4294967295u == _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 43078u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * 885f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -171f))))) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-479f))))));
    var var_1 = func_4(func_1(96699u));
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(select(57889u, ~1u, true) ^ ~(~1u)), 12u)];
    var var_3 = func_1(35228u);
    let var_4 = func_4(Struct_1(~vec4<i32>(1i, -u_input.a, 1i, var_3.a.x & u_input.a), true, _wgslsmith_f_op_vec2_f32(exp2(global2.xy)), func_4(func_1(~141869u)).d));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, -2147483647i, _wgslsmith_add_vec4_u32(~vec4<u32>(~0u, 1u, 1u, 4294967295u), vec4<u32>(~4294967295u, ~4294967295u, func_2(2072f > var_2.c.x, _wgslsmith_div_u32(20576u, 4294967295u), var_4.d.zy, _wgslsmith_f_op_f32(f32(-1f) * -765f)), 7086u)), var_4.c.x);
}

