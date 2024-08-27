struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: f32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -272f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>) -> vec2<u32> {
    let var_0 = ~(~1u);
    let var_1 = !(!arg_1);
    let var_2 = ~firstTrailingBit(-((vec4<i32>(16010i, -12876i, u_input.b, 0i) >> (vec4<u32>(u_input.c.x, 1u, 22512u, u_input.c.x) % vec4<u32>(32u))) | ~vec4<i32>(u_input.d.x, 0i, 1i, 1i)));
    let var_3 = 2147483647i;
    var var_4 = firstLeadingBit(var_2.wwx);
    return vec2<u32>(_wgslsmith_mod_u32(4174u, var_0), 39435u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<bool> {
    let var_0 = abs(~4294967295u);
    global0 = _wgslsmith_f_op_f32(arg_1.a + arg_2.x);
    var var_1 = arg_0.a;
    let var_2 = arg_1.c == any(select(vec4<bool>(all(vec4<bool>(arg_1.c, false, true, false)), var_1.a <= 2147483647i, arg_1.c & arg_1.c, any(vec4<bool>(false, false, true, arg_1.c))), select(select(vec4<bool>(arg_1.c, arg_1.c, arg_1.c, true), vec4<bool>(arg_1.c, false, true, true), true), select(vec4<bool>(arg_1.c, false, arg_1.c, arg_1.c), vec4<bool>(arg_1.c, arg_1.c, arg_1.c, arg_1.c), true), false), select(!vec4<bool>(arg_1.c, arg_1.c, arg_1.c, true), select(vec4<bool>(arg_1.c, arg_1.c, arg_1.c, true), vec4<bool>(arg_1.c, arg_1.c, arg_1.c, false), vec4<bool>(true, arg_1.c, arg_1.c, false)), true)));
    let var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(-(~select(vec3<i32>(u_input.b, var_1.b, u_input.b), vec3<i32>(u_input.b, 11854i, u_input.d.x), true)), vec3<i32>(21114i, countOneBits(-arg_0.a.a), -(~(-6779i)))), -vec3<i32>(var_1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, arg_0.a.a, u_input.d.x) << (vec3<u32>(13155u, 109283u, 10227u) % vec3<u32>(32u)), ~vec3<i32>(arg_0.a.b, 13751i, 16009i)), var_1.b));
    return select(select(vec3<bool>(select(!var_2, all(vec3<bool>(arg_1.c, arg_1.c, true)), all(vec4<bool>(var_2, false, false, arg_1.c))), !(!arg_1.c), all(select(vec4<bool>(false, true, var_2, arg_1.c), vec4<bool>(false, false, var_2, var_2), false))), !vec3<bool>(all(vec3<bool>(false, true, var_2)), any(vec4<bool>(false, var_2, arg_1.c, true)), true), !(!select(vec3<bool>(true, false, var_2), vec3<bool>(arg_1.c, var_2, arg_1.c), vec3<bool>(var_2, false, true)))), vec3<bool>(false, (true || (arg_1.a != arg_1.a)) || var_2, all(vec3<bool>(false & arg_1.c, any(vec2<bool>(var_2, arg_1.c)), any(vec2<bool>(true, var_2))))), !(!(!select(vec3<bool>(arg_1.c, var_2, true), vec3<bool>(true, true, arg_1.c), vec3<bool>(true, false, arg_1.c)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: bool, arg_3: vec3<f32>) -> f32 {
    var var_0 = Struct_5(Struct_3(Struct_2(_wgslsmith_clamp_i32(reverseBits(u_input.b), 2147483647i, 21436i), min(2147483647i, _wgslsmith_div_i32(u_input.b, u_input.d.x))), u_input.c.x, ~abs(vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 91710u, 3948u), vec4<u32>(~u_input.a, ~89486u, 14913u, u_input.a & u_input.c.x))));
    global0 = 926f;
    var var_1 = select(any(!arg_0.yz), arg_0.x, (var_0.a.d >> (var_0.a.b % 32u)) < min(_wgslsmith_add_u32(6598u, var_0.a.c.x), ~(var_0.a.b >> (var_0.a.d % 32u))));
    let var_2 = arg_3.x;
    var var_3 = var_0.a.a;
    return 1076f;
}

fn func_2() -> u32 {
    global0 = -941f;
    var var_0 = _wgslsmith_f_op_f32(func_4(select(vec3<bool>(true, max(0u, u_input.c.x) > u_input.a, true), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, false)), false, true)), select(!func_3(Struct_3(Struct_2(u_input.b, u_input.d.x), u_input.a, u_input.c.xz, 0u), Struct_1(370f, 4294967295u, true, u_input.c.zy), vec2<f32>(-508f, -1000f)), func_3(Struct_3(Struct_2(u_input.d.x, -11208i), 4294967295u, vec2<u32>(u_input.c.x, u_input.a), 50645u), Struct_1(-1207f, u_input.a, true, u_input.c.yy), _wgslsmith_div_vec2_f32(vec2<f32>(1100f, -1657f), vec2<f32>(-1000f, 684f))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), countOneBits(u_input.d.x), !((u_input.c.x == u_input.c.x) | true), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-653f, -556f, 558f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-320f, -140f, 596f)), vec3<bool>(true, true, false))) + vec3<f32>(_wgslsmith_div_f32(-1458f, 1292f), _wgslsmith_f_op_f32(step(1583f, 1424f)), -585f))))));
    let var_1 = u_input.b;
    let var_2 = Struct_2(~(~u_input.d.x), u_input.d.x);
    let var_3 = ~abs(1i);
    return _wgslsmith_mod_u32(~15662u, 8233u);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, -2103f) + _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a + -639f)))))));
    let var_0 = Struct_5(Struct_3(arg_2, ~abs(u_input.a), u_input.c.xz, ~arg_1.b));
    var var_1 = vec4<bool>(true, false, all(select(vec4<bool>(u_input.c.x != 35631u, any(vec4<bool>(true, false, arg_1.c, true)), arg_1.c, arg_1.c), !vec4<bool>(true, arg_1.c, true, arg_1.c), arg_1.c | true)), false);
    global0 = -922f;
    let var_2 = Struct_1(427f, u_input.c.x, arg_1.c, ~(~(~select(arg_0, var_0.a.c, true))));
    return Struct_4(!(!select(func_3(Struct_3(var_0.a.a, u_input.c.x, vec2<u32>(81877u, var_0.a.b), var_0.a.c.x), Struct_1(-1512f, 51964u, var_2.c, vec2<u32>(var_0.a.c.x, 66852u)), vec2<f32>(608f, -1000f)).zz, func_3(Struct_3(arg_2, arg_1.d.x, vec2<u32>(arg_1.b, var_2.b), arg_1.d.x), var_2, arg_3.ww).xz, var_1.yw)), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_3(Struct_3(var_0.a.a, 31584u, vec2<u32>(arg_0.x, 129024u), var_2.b), Struct_1(174f, var_0.a.c.x, var_2.c, vec2<u32>(0u, u_input.c.x)), arg_3.zz), arg_2.a | var_0.a.a.b, true, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, arg_1.a, -1181f) * vec3<f32>(arg_3.x, 1227f, -558f))))) * arg_1.a), !vec4<bool>(var_2.c | all(vec3<bool>(var_1.x, true, var_2.c)), var_2.c, any(!vec2<bool>(arg_1.c, arg_1.c)), _wgslsmith_f_op_f32(f32(-1f) * -278f) > arg_1.a), var_2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(!any(vec4<bool>(false, true, true, true)), u_input.c.x < u_input.a), false);
    var var_1 = func_5(~func_1(vec4<u32>(1u, u_input.a, 0u, 1u), !var_0) | ~vec2<u32>(11621u, func_2()), Struct_1(_wgslsmith_f_op_f32(func_4(vec3<bool>(true, all(vec3<bool>(false, true, var_0.x)), all(var_0)), (u_input.d.x | 0i) | reverseBits(-57274i), true == (u_input.d.x > u_input.b), vec3<f32>(-965f, 1f, _wgslsmith_f_op_f32(-421f * 1465f)))), 4294967295u, var_0.x, ~(u_input.c.yx ^ u_input.c.yy)), Struct_2(max(-(1i >> (u_input.c.x % 32u)), 12599i), 34989i), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(110f * 536f))))), -189f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1445f + -2829f) - _wgslsmith_f_op_f32(946f * -905f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-895f, -1000f)), 342f, !var_0.x))), _wgslsmith_f_op_f32(floor(1f))));
    var_1 = func_5(_wgslsmith_clamp_vec2_u32(((vec2<u32>(26064u, u_input.c.x) ^ vec2<u32>(13867u, var_1.b.x)) << (u_input.c.xy % vec2<u32>(32u))) >> (~vec2<u32>(20671u, var_1.e) % vec2<u32>(32u)), ~vec2<u32>(~79514u, 69463u), reverseBits(~vec2<u32>(1u, 27567u))), Struct_1(827f, ~func_1(vec4<u32>(var_1.b.x, 0u, var_1.e, 4294967295u), !var_1.a).x, all(vec2<bool>(!var_1.a.x, var_0.x)), max(var_1.b.yy, _wgslsmith_add_vec2_u32(var_1.b.yx, u_input.c.yx) | _wgslsmith_add_vec2_u32(vec2<u32>(var_1.b.x, 969u), u_input.c.xx))), Struct_2(-1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.d.x), abs(vec3<i32>(19020i, 0i, u_input.b)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_1.c, -489f, false)), _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_div_f32(var_1.c, -529f), var_1.c) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c, var_1.c, -2345f, var_1.c), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, var_1.c, var_1.c, 870f), vec4<f32>(var_1.c, 1268f, var_1.c, var_1.c)), all(var_1.a)))))));
    let var_2 = Struct_3(Struct_2(_wgslsmith_add_i32(~u_input.b, 1i), u_input.b), u_input.c.x, countOneBits(_wgslsmith_mod_vec2_u32(abs(~u_input.c.xx), vec2<u32>(~var_1.b.x, 4294967295u))), var_1.b.x);
    let var_3 = Struct_2(u_input.d.x, countOneBits(abs(var_2.a.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -446f) - _wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1150f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 314f, var_1.c, -553f)), _wgslsmith_div_vec4_f32(vec4<f32>(-993f, var_1.c, var_1.c, var_1.c), vec4<f32>(316f, -1093f, -345f, var_1.c)))))), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.c, -209f)) * var_1.c)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(-var_1.c))));
}

