struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> bool {
    var var_0 = arg_3.a;
    let var_1 = Struct_2(arg_1, select(!vec4<bool>(!arg_3.a.x, false, -114f <= arg_3.b.x, any(arg_3.a)), !vec4<bool>(false, 4294967295u >= arg_2, true, false & var_0.x), true));
    var var_2 = arg_3;
    let var_3 = 23399u;
    var_0 = !vec3<bool>(false, arg_3.a.x, 27540u <= _wgslsmith_add_u32(var_3 & arg_0, arg_2));
    return all(vec4<bool>(!select(false, false, !var_1.b.x), false, arg_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.b.x, var_2.b.x)) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.b.x + var_2.b.x)))));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1530f, arg_0, arg_0, 191f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1211f, arg_0, arg_0, arg_0)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 148f, -994f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, arg_0, 1111f, -1272f))))))));
    var var_2 = vec3<u32>(u_input.d, 57118u, 0u);
    var var_3 = var_2.x;
    var var_4 = ~1u;
    return !(!vec4<bool>(true, any(vec2<bool>(false, arg_1.b.x)), func_3(46918u, u_input.a ^ var_0.a, var_2.x, Struct_1(var_0.b.xyx, vec4<f32>(arg_0, var_1.x, -506f, 367f))), !(arg_1.b.x && true)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = select(u_input.d, ~(reverseBits(~u_input.d) | u_input.d), false);
    var var_1 = Struct_1(arg_0.b.ywy, _wgslsmith_f_op_vec4_f32(round(arg_1)));
    var var_2 = _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(~4294967295u, 32662u, firstLeadingBit(u_input.d))), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(select(abs(vec3<u32>(4294967295u, 0u, u_input.d)), countOneBits(vec3<u32>(37978u, u_input.d, u_input.d)), select(arg_0.b.yyy, arg_0.b.wyy, var_1.a)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.d, u_input.d, 1u), ~vec3<u32>(0u, u_input.d, 1u)), reverseBits(~vec3<u32>(u_input.d, u_input.d, 55067u))), firstLeadingBit(vec3<u32>(~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(46267u, u_input.d, 0u, u_input.d), vec4<u32>(57764u, u_input.d, u_input.d, u_input.d)), firstLeadingBit(4294967295u)))), vec3<u32>(4294967295u, ~((0u << (u_input.d % 32u)) | u_input.d), _wgslsmith_mult_u32(0u, u_input.d)));
    let var_3 = max(~_wgslsmith_add_i32(arg_3.x, ~(-25010i) << (u_input.d % 32u)), 1i);
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    let var_0 = u_input.d == arg_0;
    var var_1 = arg_1.b;
    var var_2 = var_0;
    let var_3 = vec4<i32>(arg_3.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.wwy, u_input.e), vec3<i32>(_wgslsmith_sub_i32(u_input.b.x, 1i), reverseBits(u_input.a), firstLeadingBit(-8025i))), select(firstTrailingBit(~arg_3.a), ~(-1i ^ u_input.c.x), arg_1.b.x), 0i) | vec4<i32>(_wgslsmith_clamp_i32(2147483647i, 2147483647i, -2147483647i), 2147483647i | _wgslsmith_dot_vec3_i32(~u_input.b.wyy, ~vec3<i32>(arg_1.a, -1i, 47054i)), abs(firstTrailingBit(i32(-1i) * -15373i)), -9328i ^ ~min(arg_1.a, arg_3.a));
    var var_4 = -503f;
    return _wgslsmith_f_op_f32(trunc(785f)) > _wgslsmith_div_f32(-2705f, _wgslsmith_f_op_f32(ceil(-166f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = firstLeadingBit(2147483647i);
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(~(~(-u_input.b.x)), _wgslsmith_mod_i32(arg_0.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-19358i, u_input.e.x, 1915i), ~u_input.b.x))), -46434i);
    let var_2 = firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(abs(u_input.d), ~u_input.d), _wgslsmith_clamp_u32(u_input.d, 0u, u_input.d | u_input.d), ~u_input.d), ~_wgslsmith_add_u32(14083u, ~u_input.d)));
    var var_3 = select(any(vec2<bool>(arg_1.x, any(arg_1.yyx))), arg_1.x, !(!(arg_1.x & arg_1.x)) != arg_1.x);
    var_1 = select(u_input.e.x, ~2147483647i, func_5(_wgslsmith_div_u32(4294967295u, select(u_input.d ^ u_input.d, 1u, arg_1.x | false)), func_4(Struct_2(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), func_2(1390f, Struct_2(17701i, arg_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(393f, -1023f, 189f, -1892f)), false, vec4<i32>(~u_input.c.x, 12829i, arg_0.x, arg_0.x)), Struct_1(!select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(true, true, arg_1.x), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(141f, -495f, -928f, 1106f) + vec4<f32>(-211f, 108f, 496f, -1330f)))), Struct_2(u_input.e.x, arg_1)));
    return Struct_2(~1i, arg_1);
}

fn func_6(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    return i32(-1i) * -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, false, true);
    var var_1 = Struct_2(~(~func_6(vec4<u32>(u_input.d, 0u, u_input.d, u_input.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1130f, -1000f, 291f, 595f)), Struct_2(u_input.c.x, vec4<bool>(false, true, var_0.x, var_0.x)), func_1(vec2<i32>(-539i, 2147483647i), vec4<bool>(true, false, var_0.x, false)))), func_4(func_1(u_input.b.xw, func_2(-259f, Struct_2(u_input.c.x, vec4<bool>(var_0.x, var_0.x, false, var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1210f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1736f)) * _wgslsmith_f_op_f32(217f + -2046f)), _wgslsmith_f_op_f32(-1060f - 368f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -575f, true)))), !select(var_0.x, true, true) && !any(var_0.xy), vec4<i32>(u_input.c.x, countOneBits(u_input.e.x), _wgslsmith_div_i32(29505i, i32(-1i) * -15520i), min(~u_input.b.x, abs(u_input.a)))).b);
    var_0 = func_1(countOneBits(~u_input.b.xw), !vec4<bool>(var_1.b.x, !var_1.b.x, true != func_1(vec2<i32>(u_input.e.x, u_input.b.x), var_1.b).b.x, func_3(reverseBits(48249u), -u_input.c.x, 0u, Struct_1(vec3<bool>(false, true, var_1.b.x), vec4<f32>(-218f, -488f, 2211f, 3509f))))).b;
    var var_2 = Struct_2(firstTrailingBit(_wgslsmith_add_i32(firstTrailingBit(1i), _wgslsmith_mod_i32(16548i, 1i))), select(!select(select(vec4<bool>(var_1.b.x, var_0.x, var_1.b.x, true), vec4<bool>(var_1.b.x, var_0.x, var_0.x, var_1.b.x), var_1.b), func_4(Struct_2(u_input.a, vec4<bool>(true, var_1.b.x, var_0.x, false)), vec4<f32>(835f, 1000f, -1000f, 853f), var_1.b.x, u_input.b).b, false), !vec4<bool>(any(vec4<bool>(true, true, var_0.x, var_0.x)), true, func_2(193f, Struct_2(-52657i, var_1.b)).x, false), false));
    var var_3 = vec4<bool>(false, all(vec2<bool>(func_5(u_input.d, Struct_2(var_1.a, var_1.b), Struct_1(var_0.wzy, vec4<f32>(-870f, -337f, 896f, -1099f)), func_1(u_input.c, vec4<bool>(true, false, false, var_0.x))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -860f), Struct_2(1i, vec4<bool>(var_2.b.x, false, true, var_1.b.x))).x)), !any(var_2.b.zyx), true);
    let var_4 = false;
    var_1 = Struct_2(22866i, var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xwx, vec4<f32>(168f, _wgslsmith_f_op_f32(1306f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 2341f)) * -1117f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(345f)), _wgslsmith_f_op_f32(f32(-1f) * -569f)) - -319f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(237f * -158f) - -1088f) * _wgslsmith_f_op_f32(trunc(1951f)))), var_1.a, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -110f))));
}

