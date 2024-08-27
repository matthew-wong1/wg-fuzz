struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_3,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_5(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), vec3<bool>(any(vec3<bool>(true, true, true)), true, true)), ~(~(-vec3<i32>(-1i, -1628i, u_input.a.x))), ~u_input.b.x, _wgslsmith_mod_i32(min(_wgslsmith_add_i32(u_input.a.x, global0.x) | firstTrailingBit(global0.x), 0i), _wgslsmith_mult_i32(-14022i & -global0.x, ~(~44453i))));
    global1 = -680f;
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(137f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2652f)))));
    let var_1 = 742f;
    global1 = 153f;
    return _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))) + _wgslsmith_f_op_f32(-var_1)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(~vec3<i32>(_wgslsmith_mod_i32(-1i, 1i), _wgslsmith_dot_vec3_i32(u_input.a, arg_3.a), ~arg_3.a.x), all(select(!arg_2, select(vec4<bool>(false, false, false, true), vec4<bool>(true, arg_2.x, arg_3.b, arg_3.b), false), !arg_2.x)), arg_1.x, vec2<f32>(arg_3.c, _wgslsmith_f_op_f32(trunc(-1000f))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-28118i, -22447i, global0.x, 2147483647i), arg_3.e ^ arg_3.e)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -489f, arg_1.x, 114f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -586f, 1000f)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_0.x, 428f, arg_1.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1094f, arg_0.x, 486f, -384f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1128f, -632f, arg_1.x, arg_0.x), vec4<f32>(arg_3.d.x, arg_1.x, arg_1.x, arg_3.d.x), false))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-847f, -1703f, -1195f, 1216f) - vec4<f32>(-706f, arg_3.d.x, arg_3.d.x, 403f))))), -1i, arg_3.a.x);
    global1 = arg_3.c;
    global0 = vec2<i32>(_wgslsmith_div_i32(1i, arg_3.a.x), ~((global0.x >> (_wgslsmith_clamp_u32(0u, u_input.b.x, u_input.b.x) % 32u)) & u_input.c.x));
    let var_1 = Struct_4(var_0.b, var_0.a.d, Struct_3(Struct_2(Struct_1(vec3<i32>(var_0.a.a.x, global0.x, -2147483647i) << (u_input.b.wyy % vec3<u32>(32u)), select(true, arg_3.b, arg_3.b), _wgslsmith_f_op_f32(-var_0.a.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.c, -1782f)), _wgslsmith_div_vec4_i32(var_0.a.e, vec4<i32>(-2147483647i, 10269i, var_0.c, u_input.c.x))), var_0.b, -28390i, 77084i), Struct_1(_wgslsmith_add_vec3_i32(u_input.a, u_input.c) >> (u_input.b.yzz % vec3<u32>(32u)), !(var_0.a.b || false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x - -259f), arg_1.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-1153f + -555f)), vec4<i32>(5132i, global0.x, arg_3.e.x, -1i) << (vec4<u32>(u_input.b.x, 55033u, 4294967295u, 1101u) % vec4<u32>(32u))), select(select(select(vec2<bool>(false, var_0.a.b), vec2<bool>(arg_2.x, arg_3.b), true), vec2<bool>(false, arg_2.x), !vec2<bool>(arg_2.x, var_0.a.b)), arg_2.zz, arg_2.x), Struct_2(Struct_1(select(vec3<i32>(0i, u_input.c.x, 0i), vec3<i32>(arg_3.a.x, u_input.a.x, 84884i), true), any(arg_2.yy), _wgslsmith_f_op_f32(min(arg_1.x, arg_3.d.x)), var_0.b.xz, abs(vec4<i32>(2147483647i, var_0.c, u_input.a.x, 1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c, 743f, 803f, -1104f) * vec4<f32>(486f, arg_3.d.x, arg_1.x, 352f))), global0.x, min(var_0.d, var_0.a.a.x) >> (select(4294967295u, 15970u, true) % 32u))), Struct_1(select(u_input.a, ~u_input.a, !arg_2.zxx) >> (u_input.b.xyy % vec3<u32>(32u)), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.d.x - _wgslsmith_f_op_f32(var_0.b.x * -665f)), -806f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2165f, _wgslsmith_f_op_f32(f32(-1f) * -1219f)) * arg_0), vec4<i32>(abs(0i), -33621i, _wgslsmith_dot_vec3_i32(~vec3<i32>(50353i, arg_3.e.x, arg_3.a.x), vec3<i32>(-2037i, var_0.d, global0.x)), -1i)), Struct_3(Struct_2(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c, arg_3.c, var_0.a.c, 633f))), -45709i, reverseBits(abs(-42203i))), var_0.a, !vec2<bool>(!arg_3.b, true), Struct_2(arg_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), 0i, _wgslsmith_dot_vec4_i32(arg_3.e, arg_3.e) | _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c.x), vec2<i32>(0i, u_input.c.x)))));
    var var_2 = _wgslsmith_add_vec2_u32(select(~reverseBits(vec2<u32>(u_input.b.x, u_input.b.x)), max(~(~vec2<u32>(0u, u_input.b.x)), ~vec2<u32>(u_input.b.x, u_input.b.x)), arg_0.x > var_0.a.d.x), u_input.b.xx);
    return _wgslsmith_clamp_vec2_i32(u_input.a.yx, vec2<i32>(min(var_1.c.a.a.e.x, 2049i), -(~(-11808i)) ^ _wgslsmith_dot_vec2_i32(arg_3.e.xx, vec2<i32>(-14570i, var_0.d) >> (vec2<u32>(var_2.x, 4294967295u) % vec2<u32>(32u)))), -(var_0.a.e.xx & var_0.a.e.zw));
}

fn func_2() -> i32 {
    global0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_3()), -522f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1066f, -1000f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-537f, _wgslsmith_f_op_f32(round(2120f))))), !select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), Struct_1(u_input.a, false | !any(vec3<bool>(true, false, false)), -1000f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(277f, -419f)), _wgslsmith_f_op_f32(step(-102f, 484f)))), vec4<i32>(20349i, 2844i, u_input.c.x, 10016i)));
    var var_0 = ~vec3<i32>(-2147483647i, u_input.a.x, -(~global0.x));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(-333f, _wgslsmith_f_op_f32(-582f - _wgslsmith_f_op_f32(f32(-1f) * -875f)))));
    var_0 = firstTrailingBit((_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(var_0.x, global0.x, global0.x)), countOneBits(vec3<i32>(var_0.x, u_input.a.x, 0i))) & -u_input.a) | vec3<i32>(u_input.a.x, firstTrailingBit(global0.x), 1i));
    var var_1 = abs(vec2<u32>(~reverseBits(17774u), ~u_input.b.x));
    return -u_input.a.x;
}

fn func_1() -> f32 {
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-571f)), 751f));
    let var_0 = vec4<bool>(!(func_2() >= reverseBits(min(-1i, u_input.a.x))), 25362i < u_input.c.x, any(vec4<bool>(true, true, true, true)) && !any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), true);
    var var_1 = !var_0.xwx;
    let var_2 = Struct_2(Struct_1(vec3<i32>(global0.x, -35429i, ~(-1i)) >> (u_input.b.zwy % vec3<u32>(32u)), any(select(select(var_0, vec4<bool>(var_0.x, true, true, false), var_0), var_0, all(vec2<bool>(true, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(696f, 746f, false))) - _wgslsmith_div_f32(-557f, _wgslsmith_f_op_f32(-1000f + -955f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2296f, -841f), vec2<f32>(-704f, -360f)))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(global0.x, u_input.a.x, global0.x, u_input.a.x), max(vec4<i32>(u_input.a.x, global0.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.c.x, global0.x, 1i, 4385i)), select(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 17303i, -1i, -54260i), vec4<i32>(global0.x, -32436i, u_input.a.x, 1i)), firstLeadingBit(vec4<i32>(14406i, 2147483647i, -2937i, 2147483647i)), var_0.x || var_0.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(f32(-1f) * -190f), _wgslsmith_f_op_f32(f32(-1f) * -1497f), _wgslsmith_f_op_f32(abs(624f))))), ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(39922i, global0.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(0i, global0.x), -1i)), _wgslsmith_clamp_i32(~u_input.a.x, select(~(-2147483647i), -2147483647i, all(vec3<bool>(var_1.x, false, false))), _wgslsmith_sub_i32(1i, -u_input.a.x)) | -1i);
    var var_3 = Struct_1(~u_input.c, any(var_1.zz), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_2.a.c)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.yy), _wgslsmith_div_vec2_f32(var_2.b.xz, _wgslsmith_f_op_vec2_f32(var_2.a.d + vec2<f32>(var_2.a.d.x, var_2.a.c)))))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(var_2.a.e, var_2.a.e), var_2.d) & 8670i, -func_4(var_2.b.ww, var_2.a.d, vec4<bool>(true, var_2.a.b, var_0.x, true), Struct_1(var_2.a.e.xww, var_0.x, var_2.b.x, var_2.b.zy, var_2.a.e)).x, global0.x, countOneBits(~_wgslsmith_clamp_i32(u_input.c.x, 2147483647i, global0.x))));
    return _wgslsmith_f_op_f32(step(846f, var_2.b.x));
}

fn func_5(arg_0: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec4_i32(-arg_0.e.d.a.e, arg_0.c.a.a.e);
    let var_1 = countOneBits(min(~vec4<i32>(1i, var_0.x, u_input.a.x, arg_0.c.b.e.x) >> (u_input.b % vec4<u32>(32u)), firstTrailingBit(arg_0.c.a.a.e) | ((arg_0.d.e & arg_0.e.b.e) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(arg_0.c.d.b.wyz));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.a.a.d.x, arg_0.e.b.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -540f)), var_2.x)), 2825f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_0.e.d.b)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_0.e.d.b)))));
    let var_4 = !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, arg_0.c.c.x), !vec3<bool>(arg_0.e.d.a.b, arg_0.e.d.a.b, arg_0.e.c.x)), !select(vec3<bool>(arg_0.d.b, false, arg_0.c.a.a.b), select(vec3<bool>(arg_0.e.c.x, arg_0.d.b, true), vec3<bool>(true, false, arg_0.d.b), false), vec3<bool>(false, arg_0.c.c.x, false)), vec3<bool>(arg_0.e.d.a.b, arg_0.e.b.b | (var_2.x < var_2.x), true));
    return Struct_3(arg_0.c.d, Struct_1(-u_input.a, !(!(arg_0.e.a.a.b && false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(187f + var_2.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_0.e.a.b.xz, arg_0.d.d), arg_0.d.d, arg_0.c.c)), vec2<f32>(var_2.x, -1000f), !(var_4.x && false))), -(~(var_1 | arg_0.d.e))), vec2<bool>(false, var_4.x), arg_0.e.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(f32(-1f) * -1712f), 489f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -547f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-476f, -347f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1518f, -1122f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(405f, 1028f)), vec2<f32>(1f, 1f))))), Struct_3(Struct_2(Struct_1(vec3<i32>(6530i, u_input.a.x, global0.x), false, -647f, vec2<f32>(-976f, 1050f), vec4<i32>(u_input.c.x, u_input.c.x, global0.x, -25145i)), vec4<f32>(1f, 1f, 1f, 1f), -13075i, _wgslsmith_mult_i32(global0.x, global0.x)), Struct_1(abs(u_input.a), -32436i >= u_input.c.x, _wgslsmith_f_op_f32(ceil(-1000f)), vec2<f32>(-785f, -957f), -vec4<i32>(u_input.a.x, u_input.c.x, 25683i, global0.x)), vec2<bool>(select(true, true, false), true), Struct_2(Struct_1(vec3<i32>(u_input.c.x, global0.x, global0.x), true, -769f, vec2<f32>(-2697f, -680f), vec4<i32>(global0.x, -1i, 6809i, 0i)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -846f, 739f, -499f), vec4<f32>(-1219f, 278f, -1378f, -384f))), ~2147483647i, -396i << (u_input.b.x % 32u))), Struct_1(~vec3<i32>(-2147483647i, u_input.a.x, 1i), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(trunc(587f)), vec2<f32>(_wgslsmith_f_op_f32(step(793f, -125f)), -174f), -(vec4<i32>(0i, u_input.c.x, -1i, -2147483647i) & vec4<i32>(57628i, u_input.c.x, u_input.c.x, global0.x))), Struct_3(Struct_2(Struct_1(u_input.c, true, 437f, vec2<f32>(-127f, 1115f), vec4<i32>(u_input.c.x, 65075i, 1i, global0.x)), vec4<f32>(-262f, 1808f, -615f, 1041f), firstTrailingBit(global0.x), 27900i), Struct_1(-u_input.c, true, _wgslsmith_f_op_f32(round(-454f)), vec2<f32>(113f, -1861f), ~vec4<i32>(global0.x, -41532i, -1i, -1i)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(false, true, true)), Struct_2(Struct_1(u_input.c, true, 322f, vec2<f32>(-1000f, 336f), vec4<i32>(u_input.c.x, 29900i, 4893i, -2147483647i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1379f, 953f, 779f, 494f) - vec4<f32>(2019f, 459f, 160f, -2025f)), firstLeadingBit(u_input.c.x), u_input.c.x))));
    var var_1 = func_5(Struct_4(_wgslsmith_f_op_vec4_f32(-var_0.a.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.c, var_0.b.c) - var_0.b.d), var_0.a.b.zz), func_5(Struct_4(var_0.a.b, _wgslsmith_f_op_vec2_f32(var_0.a.b.wy - var_0.b.d), Struct_3(var_0.d, Struct_1(u_input.c, false, var_0.d.a.d.x, var_0.b.d, var_0.d.a.e), var_0.c, var_0.a), func_5(Struct_4(vec4<f32>(var_0.a.b.x, var_0.b.c, var_0.b.c, var_0.b.d.x), var_0.a.b.zw, var_0, var_0.b, var_0)).a.a, var_0)), Struct_1(vec3<i32>(0i, u_input.a.x, 0i), var_0.d.a.b, var_0.a.b.x, var_0.b.d, var_0.a.a.e), func_5(Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.d.x, -1156f, var_0.d.a.d.x, -791f) - var_0.d.b), _wgslsmith_f_op_vec2_f32(var_0.d.b.xz * var_0.a.b.wz), var_0, var_0.b, var_0))));
    var var_2 = var_0.d.a.b && func_5(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-370f, -1096f, var_1.a.b.x, 1000f))), vec2<f32>(_wgslsmith_f_op_f32(var_0.b.d.x * -1000f), -384f), func_5(Struct_4(var_1.d.b, vec2<f32>(104f, 738f), var_0, Struct_1(var_0.b.a, false, var_1.b.c, vec2<f32>(var_1.b.d.x, -362f), vec4<i32>(var_1.d.c, global0.x, 13577i, 18092i)), Struct_3(Struct_2(var_0.a.a, var_1.a.b, -3848i, var_1.d.a.e.x), Struct_1(var_1.a.a.a, var_1.b.b, var_0.b.d.x, var_0.a.b.zz, vec4<i32>(var_1.d.a.e.x, -2147483647i, 1i, -1i)), vec2<bool>(false, false), Struct_2(Struct_1(vec3<i32>(u_input.a.x, -1i, -6067i), var_0.c.x, 564f, vec2<f32>(-1046f, -1113f), var_0.b.e), vec4<f32>(var_0.d.b.x, var_0.a.b.x, 889f, var_0.d.b.x), var_1.d.a.e.x, var_1.d.d)))), Struct_1(-vec3<i32>(18160i, u_input.a.x, u_input.a.x), all(vec4<bool>(var_0.b.b, var_0.a.a.b, var_1.a.a.b, var_0.d.a.b)), _wgslsmith_f_op_f32(select(-146f, 1123f, var_0.a.a.b)), var_0.d.b.yw, var_1.a.a.e), func_5(Struct_4(vec4<f32>(var_1.d.a.c, var_1.d.b.x, var_1.a.b.x, var_0.b.c), var_1.b.d, var_0, Struct_1(var_1.a.a.a, var_0.b.b, 846f, var_0.b.d, var_1.a.a.e), Struct_3(var_1.d, Struct_1(vec3<i32>(u_input.a.x, -75426i, 0i), var_1.b.b, var_1.b.d.x, var_1.b.d, vec4<i32>(2147483647i, -13628i, var_1.d.a.a.x, 0i)), var_0.c, var_0.a))))).c.x;
    global1 = var_0.a.a.c;
    var_2 = var_1.c.x;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.c)) * func_5(Struct_4(var_1.d.b, var_0.b.d, var_0, var_0.d.a, var_0)).a.b.x) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.d.b.x * _wgslsmith_f_op_f32(floor(1131f)))))), -425f));
    let var_4 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(991f)) * _wgslsmith_div_f32(1000f, var_1.a.b.x))), func_5(Struct_4(vec4<f32>(var_0.b.d.x, -530f, 1485f, var_1.d.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, 421f)), var_0, var_1.a.a, func_5(Struct_4(vec4<f32>(2893f, 1542f, var_0.a.b.x, var_1.d.b.x), vec2<f32>(var_1.d.a.c, var_0.b.c), var_0, var_1.a.a, var_0)))).d.b.x, _wgslsmith_f_op_f32(-226f + _wgslsmith_f_op_f32(var_3 + 513f)), _wgslsmith_f_op_f32(-256f * -530f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1503f))), _wgslsmith_f_op_f32(step(var_0.b.d.x, var_0.b.c)))), var_0, var_1.a.a, func_5(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1159f), -716f, _wgslsmith_f_op_f32(401f + 1214f), -1166f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(var_0.b.d)), func_5(Struct_4(var_0.d.b, vec2<f32>(var_3, 922f), var_0, var_0.d.a, var_0)).a.b.yy, var_0.c)), func_5(Struct_4(var_0.d.b, vec2<f32>(1049f, var_0.d.a.d.x), Struct_3(var_0.d, var_0.b, var_0.c, Struct_2(var_0.a.a, var_1.a.b, var_0.a.c, 657i)), var_0.a.a, Struct_3(var_0.a, var_1.b, var_1.c, var_1.d))), func_5(Struct_4(vec4<f32>(-606f, var_1.a.a.c, var_1.d.b.x, var_1.d.b.x), var_0.b.d, Struct_3(Struct_2(Struct_1(vec3<i32>(37544i, global0.x, var_1.a.d), false, -880f, var_1.a.a.d, vec4<i32>(12302i, 10232i, 7157i, 0i)), vec4<f32>(2615f, var_0.b.d.x, -1882f, var_3), -10759i, global0.x), var_0.b, var_1.c, Struct_2(var_0.b, vec4<f32>(var_0.d.a.c, var_0.b.c, var_1.a.b.x, 303f), 29520i, global0.x)), var_1.b, var_0)).d.a, func_5(Struct_4(vec4<f32>(380f, var_1.a.a.c, var_1.a.b.x, var_3), vec2<f32>(var_1.a.b.x, 133f), var_0, var_0.d.a, Struct_3(var_0.d, var_1.d.a, vec2<bool>(false, var_0.c.x), Struct_2(Struct_1(var_0.b.a, false, var_1.d.a.d.x, var_1.b.d, var_0.d.a.e), var_1.a.b, var_0.b.a.x, -33316i)))))));
    let var_5 = func_5(Struct_4(var_0.a.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.d.a.c, var_1.a.b.x)) + _wgslsmith_f_op_f32(var_1.d.b.x + var_0.d.b.x)), 1271f), Struct_3(Struct_2(Struct_1(vec3<i32>(17353i, -5912i, 0i), false, var_4.d.c, vec2<f32>(var_3, var_4.e.d.b.x), vec4<i32>(0i, var_1.b.e.x, -2147483647i, -19679i)), var_4.e.d.b, -1i, countOneBits(20661i)), var_0.d.a, vec2<bool>(all(vec3<bool>(var_1.c.x, false, var_1.a.a.b)), !var_1.d.a.b), Struct_2(var_0.d.a, _wgslsmith_f_op_vec4_f32(abs(var_4.a)), ~u_input.a.x, var_1.d.c)), var_0.a.a, var_4.e));
    let var_6 = Struct_3(var_1.d, var_1.a.a, vec2<bool>(var_5.d.a.b, true || (-2147483647i < _wgslsmith_dot_vec4_i32(var_4.d.e, var_5.a.a.e))), var_5.d);
    let x = u_input.a;
    s_output = StorageBuffer(-465f, u_input.b.wzw, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_5.b.d.x)), var_1.b.e);
}

