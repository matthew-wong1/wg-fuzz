struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: bool = true;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> i32 {
    global1 = !(-15573i == _wgslsmith_add_i32(u_input.b.x, u_input.a.x));
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-108f, -1645f))), firstLeadingBit(countOneBits(vec3<i32>(2147483647i, 1i, 0i))), u_input.a, u_input.c.zzw), Struct_1(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(1523f, 288f)), -(u_input.b | vec3<i32>(u_input.a.x, -15943i, 21783i)), vec4<i32>(2147483647i, 116639i, _wgslsmith_mod_i32(u_input.b.x, u_input.a.x), u_input.b.x), u_input.c.zyw), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(199f, -1404f)))), u_input.b, u_input.a << (u_input.c % vec4<u32>(32u)), vec3<u32>(1u, arg_0 >> (48725u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.d, 11219u), u_input.c.zzz)))));
    var var_1 = !(!vec2<bool>(any(vec2<bool>(true, true)), any(select(vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, false, false), global0.x))));
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(-(~var_0.a.b.c.x), max(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_0.a.c.c.x, u_input.a.x, u_input.a.x)), _wgslsmith_div_i32(-2147483647i, 1650i))), -min(u_input.a.x << (var_0.a.c.d.x % 32u), u_input.a.x)) ^ abs(vec2<i32>(var_0.a.a.c.x, -var_0.a.b.b.x) ^ vec2<i32>(_wgslsmith_add_i32(-1i, -37927i), countOneBits(var_0.a.b.b.x)));
    var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(_wgslsmith_clamp_i32(27626i, var_0.a.a.c.x, var_0.a.a.c.x)), 2147483647i), vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_sub_i32(-1i, u_input.a.x), firstTrailingBit(var_2.x)), u_input.b.zz);
    return select(~89494i, _wgslsmith_sub_i32(-1i, min(var_2.x, select(2147483647i, -18659i, true))), true != !(!(!var_1.x)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_4(Struct_3(Struct_2(arg_0.c, Struct_1(_wgslsmith_f_op_f32(abs(272f)), arg_0.b.b, -u_input.a, ~vec3<u32>(1u, u_input.c.x, 28822u)), arg_0.a)), arg_2, Struct_2(Struct_1(_wgslsmith_f_op_f32(step(arg_0.a.a, arg_0.b.a)), vec3<i32>(0i, _wgslsmith_add_i32(arg_0.c.c.x, -8991i), func_3(71705u)), -vec4<i32>(arg_0.a.b.x, arg_0.c.c.x, 0i, 1i) | vec4<i32>(4929i, 46500i, u_input.a.x, 18020i), u_input.c.wzy), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a)), _wgslsmith_div_vec3_i32(arg_0.a.b >> (vec3<u32>(1u, arg_1.x, 0u) % vec3<u32>(32u)), arg_0.b.b), max(vec4<i32>(arg_0.c.c.x, u_input.b.x, -14533i, u_input.a.x), vec4<i32>(arg_0.a.c.x, 64711i, u_input.a.x, arg_0.c.b.x)) ^ max(vec4<i32>(arg_0.c.c.x, -1i, u_input.b.x, 0i), vec4<i32>(u_input.a.x, arg_0.c.c.x, 1i, arg_0.b.c.x)), countOneBits(select(vec3<u32>(arg_0.b.d.x, arg_2.x, u_input.c.x), u_input.c.yww, vec3<bool>(true, global0.x, false)))), Struct_1(-600f, abs(firstLeadingBit(arg_0.a.c.yyz)), vec4<i32>(arg_0.c.b.x | arg_0.c.c.x, i32(-1i) * -33210i, _wgslsmith_dot_vec2_i32(u_input.a.wx, vec2<i32>(arg_0.c.c.x, -2147483647i)), _wgslsmith_sub_i32(arg_0.a.c.x, arg_0.a.b.x)), ~(~arg_2.zyx))), Struct_3(Struct_2(arg_0.a, arg_0.b, arg_0.c)), global0.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-621f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.a), _wgslsmith_f_op_f32(trunc(-1000f)), var_0.e))), _wgslsmith_f_op_f32(f32(-1f) * -1042f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a, var_0.a.a.a.a, arg_0.a.a, arg_0.a.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1002f, var_0.a.a.c.a, -1165f, -1232f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_0.c.a.a, -849f, 444f))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c.b.a, arg_0.c.a, -112f, 346f)))), vec4<f32>(arg_0.a.a, _wgslsmith_f_op_f32(-arg_0.b.a), -1000f, 1133f)))));
    let var_2 = var_0.e;
    global0 = select(vec2<bool>(_wgslsmith_f_op_f32(-arg_0.a.a) >= _wgslsmith_f_op_f32(-680f * 989f), true), select(select(select(!vec2<bool>(var_2, var_2), !vec2<bool>(var_2, true), all(vec2<bool>(global0.x, global0.x))), select(!vec2<bool>(true, var_0.e), !vec2<bool>(false, var_0.e), true), vec2<bool>(select(var_2, false, false), select(false, true, false))), !vec2<bool>(true, var_2), vec2<bool>(all(!vec4<bool>(var_0.e, var_0.e, true, global0.x)), !select(true, global0.x, global0.x))), vec2<bool>(!(!(!var_2)), !all(vec2<bool>(true, false))));
    var var_3 = arg_1.x;
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -338f), var_0.d.a.a.c.zwx, vec4<i32>(-2147483647i, (47933i | _wgslsmith_mult_i32(-1i, u_input.a.x)) | 1i, ~(~var_0.a.a.b.b.x), max(arg_0.a.c.x, 0i)), max(~(arg_2.zzx & ~vec3<u32>(u_input.e, u_input.e, 1u)), abs(arg_2.wzy)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(419f));
    global1 = true;
    var var_1 = false;
    var_1 = true;
    let var_2 = ~firstTrailingBit(firstTrailingBit(-(~vec4<i32>(15133i, u_input.b.x, -2147483647i, -14632i))));
    return countOneBits(arg_2);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_add_i32(-(_wgslsmith_dot_vec3_i32(u_input.a.zzz, vec3<i32>(u_input.b.x, u_input.b.x, 1i)) ^ u_input.a.x) | u_input.a.x, min(countOneBits(_wgslsmith_clamp_i32(-u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), u_input.a.x)), 2147483647i));
    global1 = any(!arg_0.www);
    global0 = arg_0.zx;
    var var_1 = select(select(select(select(u_input.a, u_input.a, arg_0) << (u_input.c % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), vec4<i32>(1i, u_input.b.x, u_input.a.x, 2147483647i)), _wgslsmith_f_op_f32(arg_1.x - arg_3.x) == _wgslsmith_f_op_f32(floor(-2055f))), ~(-_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(-5006i, 0i, -58232i, u_input.a.x), vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x))), _wgslsmith_add_u32(arg_2.x, u_input.d) < 30814u), countOneBits(vec4<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.zy, ~vec2<i32>(0i, 2147483647i)), _wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.a.xy) & ~(-2147483647i), -30731i >> (max(39217u, arg_2.x) % 32u))), select(arg_0, arg_0, select(!vec4<bool>(true, arg_0.x, global0.x, true), select(arg_0, vec4<bool>(global0.x, global0.x, global0.x, global0.x), all(arg_0)), arg_0.x)));
    global1 = arg_0.x;
    return global0.x;
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>) -> Struct_2 {
    global0 = !arg_2;
    let var_0 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(279f)));
    let var_1 = Struct_3(arg_0);
    global1 = arg_2.x == true;
    global1 = false;
    return Struct_2(arg_0.b, Struct_1(_wgslsmith_f_op_f32(661f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + -911f)))), arg_0.a.b, -_wgslsmith_div_vec4_i32(arg_0.b.c, arg_0.a.c), arg_0.b.d), var_1.a.b);
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> vec4<i32> {
    let var_0 = func_6(arg_2, -_wgslsmith_mult_i32(arg_1, arg_1), vec2<bool>(true, func_5(!vec4<bool>(false, false, global0.x, false), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.a, -1262f, arg_2.a.a)))), func_4(func_2(arg_2, vec2<u32>(u_input.d, 56543u), u_input.c), global0.x, u_input.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(223f, arg_2.a.a, arg_2.a.a))), vec3<f32>(2651f, arg_2.c.a, arg_2.c.a)))));
    var var_1 = Struct_4(Struct_3(Struct_2(var_0.c, arg_2.c, Struct_1(121f, -u_input.a.www, -u_input.a, func_4(Struct_1(-1253f, var_0.b.b, vec4<i32>(var_0.c.c.x, u_input.a.x, -48604i, arg_2.a.c.x), vec3<u32>(u_input.d, u_input.c.x, u_input.c.x)), false, u_input.c).xzy))), u_input.c << (u_input.c % vec4<u32>(32u)), Struct_2(func_2(var_0, vec2<u32>(1u, u_input.c.x) >> (~vec2<u32>(0u, arg_2.c.d.x) % vec2<u32>(32u)), _wgslsmith_clamp_vec4_u32(func_4(arg_2.c, true, vec4<u32>(var_0.c.d.x, 57084u, var_0.a.d.x, 0u)), vec4<u32>(var_0.c.d.x, var_0.c.d.x, 0u, u_input.d), firstTrailingBit(vec4<u32>(0u, var_0.c.d.x, u_input.c.x, 4294967295u)))), func_6(Struct_2(Struct_1(arg_2.b.a, vec3<i32>(680i, -1i, arg_3), vec4<i32>(7181i, 2147483647i, -81259i, u_input.b.x), vec3<u32>(var_0.c.d.x, 38159u, var_0.a.d.x)), Struct_1(336f, vec3<i32>(72201i, 65572i, arg_3), arg_2.b.c, var_0.a.d), var_0.c), select(func_2(var_0, arg_2.c.d.yx, u_input.c).c.x, 2147483647i, false), select(select(vec2<bool>(arg_0.x, true), vec2<bool>(false, arg_0.x), arg_0.yy), vec2<bool>(true, arg_0.x), vec2<bool>(true, true))).c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.a - 677f)), ~(-vec3<i32>(20893i, 874i, var_0.b.b.x)), -vec4<i32>(arg_1, -48189i, -47522i, arg_3), var_0.a.d)), Struct_3(var_0), func_5(select(select(vec4<bool>(arg_0.x, global0.x, false, false), !vec4<bool>(global0.x, true, arg_0.x, global0.x), vec4<bool>(true, false, true, false)), select(!vec4<bool>(global0.x, false, global0.x, global0.x), select(vec4<bool>(global0.x, arg_0.x, false, arg_0.x), vec4<bool>(true, global0.x, false, arg_0.x), vec4<bool>(false, global0.x, global0.x, false)), !arg_0.x), !vec4<bool>(global0.x, false, global0.x, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a, arg_2.a.a, arg_2.c.a)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1726f, arg_2.b.a, -128f))))), ~u_input.c, vec3<f32>(-2489f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.a) - _wgslsmith_f_op_f32(-arg_2.b.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.b.a, -691f)), -360f)))));
    var_1 = Struct_4(Struct_3(Struct_2(func_6(var_0, func_2(arg_2, vec2<u32>(4294967295u, 8715u), u_input.c).b.x, select(arg_0.zz, vec2<bool>(var_1.e, global0.x), vec2<bool>(arg_0.x, global0.x))).b, arg_2.c, func_2(var_0, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, arg_2.a.d.x), vec2<u32>(0u, 0u), vec2<u32>(arg_2.b.d.x, 7419u)), _wgslsmith_add_vec4_u32(u_input.c, var_1.b)))), vec4<u32>(_wgslsmith_clamp_u32(73252u & abs(var_0.a.d.x), var_1.a.a.b.d.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.a.c.d.x, 18775u, 30175u, var_0.c.d.x), vec4<u32>(var_1.a.a.c.d.x, 1u, var_0.c.d.x, 0u))), ~2314u, 1902u, 36846u), func_6(func_6(func_6(var_1.d.a, i32(-1i) * -1i, !arg_0.xx), arg_1, arg_0.yz), i32(-1i) * -41122i, arg_0.xz), Struct_3(Struct_2(var_0.a, func_2(Struct_2(Struct_1(-1000f, vec3<i32>(var_0.c.b.x, 36673i, var_0.a.c.x), vec4<i32>(-7552i, 27330i, arg_1, 14102i), vec3<u32>(var_1.b.x, var_0.c.d.x, 23430u)), Struct_1(var_0.a.a, vec3<i32>(arg_1, var_1.c.c.c.x, 15262i), u_input.a, u_input.c.zwz), var_0.c), ~var_1.c.c.d.zx, vec4<u32>(4567u, arg_2.a.d.x, u_input.d, 8364u)), Struct_1(-338f, ~vec3<i32>(-4730i, 2147483647i, arg_2.c.b.x), _wgslsmith_sub_vec4_i32(var_1.a.a.c.c, var_0.a.c), ~vec3<u32>(arg_2.b.d.x, 1u, 1u)))), arg_0.x);
    var var_2 = 204f;
    var var_3 = vec2<bool>((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a)) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.a - var_1.a.a.c.a)))) | global0.x, !(~_wgslsmith_add_u32(45785u, u_input.d) > 4294967295u));
    return ~min(~vec4<i32>(var_1.d.a.a.b.x, -var_1.a.a.b.b.x, 21010i, _wgslsmith_dot_vec2_i32(vec2<i32>(-26397i, 2147483647i), vec2<i32>(var_0.c.b.x, u_input.b.x))), ~firstTrailingBit(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    global1 = true;
    var var_1 = global0.x;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(-1000f)), ~_wgslsmith_sub_vec3_i32(-u_input.a.wxy, ~u_input.b), firstTrailingBit(func_1(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true), false), u_input.b.x | u_input.b.x, Struct_2(Struct_1(574f, vec3<i32>(u_input.a.x, 33644i, u_input.a.x), u_input.a, u_input.c.yzz), Struct_1(1278f, vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -1i, u_input.b.x, 1i), u_input.c.zxw), Struct_1(154f, vec3<i32>(u_input.b.x, -17367i, u_input.b.x), vec4<i32>(u_input.a.x, -34318i, u_input.b.x, u_input.b.x), u_input.c.xyz)), _wgslsmith_div_i32(37288i, u_input.a.x))), ~vec3<u32>(u_input.c.x, 18028u, 4294967295u) & (u_input.c.zxx & ~vec3<u32>(u_input.e, 20318u, 77169u))), func_2(func_6(func_6(func_6(Struct_2(Struct_1(1000f, u_input.b, vec4<i32>(40985i, u_input.a.x, 19618i, -5046i), vec3<u32>(u_input.e, 29993u, u_input.d)), Struct_1(305f, vec3<i32>(2147483647i, u_input.b.x, -29175i), vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.a.x), u_input.c.ywy), Struct_1(1171f, u_input.b, u_input.a, u_input.c.xzz)), u_input.b.x, vec2<bool>(true, true)), -2147483647i, select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), global0.x)), -2147483647i, vec2<bool>(true, true)), u_input.c.yx | u_input.c.xx, select(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.e, 5110u, u_input.e, u_input.e)), u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 1u), u_input.c ^ select(u_input.c, u_input.c, vec4<bool>(true, false, global0.x, true)), true != (global0.x || true))), func_2(Struct_2(func_2(func_6(Struct_2(Struct_1(1490f, u_input.a.zyz, u_input.a, vec3<u32>(u_input.c.x, 74743u, 0u)), Struct_1(1561f, vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x), u_input.a, vec3<u32>(0u, 4294967295u, 62448u)), Struct_1(796f, u_input.a.yzy, u_input.a, u_input.c.xww)), u_input.b.x, vec2<bool>(false, global0.x)), ~vec2<u32>(1u, 21539u), reverseBits(vec4<u32>(u_input.c.x, u_input.e, 4294967295u, 48375u))), Struct_1(_wgslsmith_f_op_f32(step(1252f, 428f)), u_input.a.zwz << (u_input.c.xxz % vec3<u32>(32u)), u_input.a ^ u_input.a, min(u_input.c.yxz, u_input.c.wyz)), Struct_1(_wgslsmith_f_op_f32(select(-175f, 1589f, global0.x)), vec3<i32>(58898i, u_input.a.x, u_input.a.x), abs(vec4<i32>(-76110i, u_input.a.x, u_input.a.x, -2147483647i)), reverseBits(u_input.c.wzw))), u_input.c.zy, u_input.c));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(f32(-1f) * -2136f))), _wgslsmith_f_op_f32(abs(var_2.a.a))), _wgslsmith_f_op_f32(round(-1292f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(func_6(var_2, -var_2.c.b.x, vec2<bool>(global0.x, global0.x)).c.a, var_2.b.a) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-373f, var_2.a.a), vec2<f32>(var_2.a.a, 627f), vec2<bool>(global0.x, false)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(942f, 797f) - vec2<f32>(var_2.c.a, var_2.b.a))))));
    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(787f, var_3.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(551f, -1057f))), ~firstLeadingBit(u_input.d) < func_4(Struct_1(-460f, var_2.c.c.wzy, var_2.a.c, var_2.b.d), func_5(vec4<bool>(global0.x, true, global0.x, global0.x), vec3<f32>(var_2.c.a, 642f, -464f), vec4<u32>(u_input.e, u_input.e, 72521u, var_2.b.d.x), vec3<f32>(var_3.x, 1308f, 1060f)), _wgslsmith_clamp_vec4_u32(vec4<u32>(43590u, u_input.c.x, 4294967295u, var_2.a.d.x), u_input.c, u_input.c)).x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(981f, 1932f)), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.b.a, var_2.b.a), vec2<f32>(633f, 589f)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-326f, 937f) + vec2<f32>(392f, var_2.c.a)) + vec2<f32>(var_2.b.a, -844f))))));
    let var_4 = vec3<i32>(_wgslsmith_div_i32(max(1i, var_2.a.c.x), countOneBits(-1i)), func_6(var_2, var_2.c.b.x, select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, false), vec2<bool>(global0.x, global0.x)), vec2<bool>(global0.x, global0.x), !global0.x)).a.b.x, var_2.a.b.x) & ((u_input.b | firstTrailingBit(u_input.a.www)) | (vec3<i32>(i32(-1i) * -35169i, reverseBits(u_input.a.x), _wgslsmith_clamp_i32(u_input.b.x, 3888i, -8068i)) | var_2.a.c.wxy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(func_4(var_2.a, all(!vec2<bool>(true, global0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_2.c.d.x, u_input.e, var_2.c.d.x), firstLeadingBit(vec4<u32>(u_input.c.x, u_input.e, var_2.b.d.x, 4294967295u)))), ~vec4<u32>(u_input.e, min(52034u, 0u), u_input.e, 4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.a, 742f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-786f, -356f) - vec2<f32>(171f, var_3.x))))), u_input.c.yzz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.b.a), _wgslsmith_f_op_f32(select(-281f, -423f, global0.x)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1602f, var_2.c.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-452f, var_2.c.a) * vec2<f32>(var_2.b.a, var_2.c.a))), vec2<f32>(_wgslsmith_f_op_f32(398f * -220f), _wgslsmith_f_op_f32(step(var_2.b.a, var_3.x)))))), var_3.x);
}

