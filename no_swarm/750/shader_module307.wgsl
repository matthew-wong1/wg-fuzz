struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: i32, arg_3: vec3<bool>) -> u32 {
    let var_0 = u_input.b.yyw;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-813f - -1313f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -156f) - 1f)));
    global0 = -475f;
    global0 = -1284f;
    var var_2 = ~vec3<u32>(26170u, _wgslsmith_dot_vec3_u32(countOneBits(select(var_0, vec3<u32>(25523u, 4294967295u, 79812u), vec3<bool>(arg_3.x, true, arg_0.x))), (u_input.b.yyy & vec3<u32>(u_input.c, var_0.x, var_0.x)) | ~vec3<u32>(u_input.c, 4294967295u, 1793u)), u_input.b.x);
    return countOneBits(25802u);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2) -> f32 {
    let var_0 = arg_2;
    var var_1 = !(-364f == arg_2.d.d.x);
    var var_2 = _wgslsmith_mod_u32(arg_0, ~(~(~func_3(vec4<bool>(arg_2.d.c.x, true, false, var_0.d.c.x), false, -1i, vec3<bool>(var_0.d.c.x, arg_2.d.c.x, true)))));
    let var_3 = arg_2;
    let var_4 = var_0;
    return _wgslsmith_f_op_f32(1218f + arg_2.d.d.x);
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), 500f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-145f, -1290f))) + 247f))));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(u_input.b.x, vec2<f32>(arg_0.a, 1211f), arg_0)), _wgslsmith_f_op_f32(-arg_0.b.x)))) + arg_0.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b)) - vec3<f32>(-1409f, -683f, 627f))), arg_0.c, Struct_1(-arg_0.c, u_input.b.x, vec2<bool>(arg_0.d.c.x, any(vec2<bool>(arg_0.d.c.x, arg_0.d.c.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0.a)), -502f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.b.x, -1051f))))), ~(~_wgslsmith_div_vec2_u32(arg_0.e | vec2<u32>(arg_0.e.x, arg_0.d.b), arg_0.e)));
    var var_1 = firstLeadingBit(~var_0.d.b);
    let var_2 = arg_0.d.d.x;
    var var_3 = ~(-((vec2<i32>(1i, 1i) << (arg_0.e % vec2<u32>(32u))) << (u_input.b.yx % vec2<u32>(32u))));
    return Struct_2(-1324f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.x, -579f, -138f), vec3<f32>(-1323f, 774f, arg_0.b.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, 651f, 1000f), var_0.b, vec3<bool>(arg_0.d.c.x, false, var_0.d.c.x))))))), _wgslsmith_div_i32(firstLeadingBit(firstLeadingBit(arg_0.d.a)), ~(-26942i)), arg_0.d, ~vec2<u32>(~31059u, min(_wgslsmith_mult_u32(var_0.d.b, 0u), countOneBits(0u))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>) -> vec2<u32> {
    global0 = arg_1.b.x;
    var var_0 = func_1(func_1(func_1(Struct_2(-715f, func_1(Struct_2(570f, vec3<f32>(arg_1.d.d.x, -1280f, arg_1.b.x), arg_1.d.a, arg_1.d, vec2<u32>(4294967295u, 0u))).b, -55820i, func_1(arg_1).d, vec2<u32>(4294967295u, 32631u) >> (arg_1.e % vec2<u32>(32u)))))).d;
    let var_1 = Struct_1(2147483647i, 0u, select(!vec2<bool>(false, var_0.c.x), vec2<bool>(arg_1.a >= _wgslsmith_f_op_f32(955f - var_0.d.x), !any(vec2<bool>(var_0.c.x, arg_1.d.c.x))), select(arg_2, select(vec2<bool>(var_0.c.x, false), func_1(Struct_2(arg_1.b.x, arg_1.b, var_0.a, Struct_1(var_0.a, 0u, vec2<bool>(arg_1.d.c.x, false), arg_1.b.zz), vec2<u32>(4294967295u, arg_0))).d.c, true), !(!var_0.c.x))), vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(3046f - -2418f))))));
    global0 = var_1.d.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-754f + _wgslsmith_f_op_f32(step(arg_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1834f)))))));
    return ~arg_1.e;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = vec3<bool>(arg_2.c.x, select(true, all(vec2<bool>(select(true, false, arg_2.c.x), arg_2.c.x)), any(vec3<bool>(all(vec4<bool>(arg_2.c.x, false, arg_2.c.x, true)), arg_2.d.x != arg_2.d.x, arg_2.c.x))), arg_2.c.x);
    var var_1 = Struct_2(-723f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.d.x, -2219f, 965f), vec3<f32>(arg_2.d.x, arg_2.d.x, arg_2.d.x)))) + vec3<f32>(_wgslsmith_f_op_f32(-1278f - arg_2.d.x), _wgslsmith_f_op_f32(sign(161f)), _wgslsmith_f_op_f32(min(arg_2.d.x, arg_2.d.x)))))), 6652i, func_1(func_1(func_1(Struct_2(-625f, vec3<f32>(arg_2.d.x, -780f, -1000f), -8418i, Struct_1(arg_0.x, arg_1.x, arg_2.c, vec2<f32>(-825f, 1000f)), vec2<u32>(arg_1.x, arg_2.b))))).d, _wgslsmith_mod_vec2_u32(min(select(abs(vec2<u32>(arg_1.x, arg_1.x)), countOneBits(vec2<u32>(u_input.b.x, arg_2.b)), !vec2<bool>(var_0.x, false)), func_1(func_1(Struct_2(-191f, vec3<f32>(-196f, arg_2.d.x, -313f), 1i, Struct_1(-43788i, arg_2.b, var_0.zy, vec2<f32>(947f, arg_2.d.x)), u_input.b.zw))).e), vec2<u32>((u_input.c >> (28352u % 32u)) ^ arg_2.b, 86477u)));
    let var_2 = arg_2;
    var_1 = func_1(func_1(func_1(Struct_2(var_2.d.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.x, 1277f, 208f)), firstLeadingBit(u_input.a), arg_2, _wgslsmith_add_vec2_u32(vec2<u32>(28803u, 1u), var_1.e)))));
    var_1 = func_1(func_1(Struct_2(-1879f, var_1.b, 13973i, Struct_1(-var_2.a, var_2.b, select(arg_2.c, vec2<bool>(arg_2.c.x, false), vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.d.x, 2204f)))), u_input.b.zz)));
    return func_1(Struct_2(_wgslsmith_f_op_f32(-var_1.d.d.x), var_1.b, abs(1i), func_1(func_1(func_1(Struct_2(var_1.a, vec3<f32>(390f, var_2.d.x, 747f), var_1.c, Struct_1(0i, var_2.b, var_0.xz, vec2<f32>(466f, -1658f)), vec2<u32>(arg_1.x, 4294967295u))))).d, vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.b.x, arg_2.b, var_2.b), ~vec4<u32>(var_2.b, u_input.b.x, 0u, arg_1.x)), 0u)));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec4<bool>(true, any(vec4<bool>(true, u_input.a <= -1i, true, any(vec3<bool>(false, true, false)))), !(!(u_input.a >= 1i)), all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))))), func_5(~(~(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(u_input.a, 46625i))), ~func_4(_wgslsmith_add_u32(u_input.c, 82006u), func_1(Struct_2(-321f, vec3<f32>(1117f, -1731f, -1172f), u_input.a, Struct_1(u_input.a, 68403u, vec2<bool>(false, true), vec2<f32>(1097f, 205f)), u_input.b.yx)), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), Struct_1(i32(-1i) * -23360i, u_input.b.x, select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), true), false), func_1(func_1(Struct_2(-659f, vec3<f32>(801f, 339f, 320f), -17526i, Struct_1(u_input.a, 1u, vec2<bool>(true, false), vec2<f32>(-329f, 1514f)), u_input.b.wy))).d.d)), func_1(Struct_2(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(105f, -707f)), vec3<f32>(-620f, _wgslsmith_f_op_f32(f32(-1f) * -1518f), _wgslsmith_f_op_f32(f32(-1f) * -1016f)), ~(30482i << (u_input.b.x % 32u)), func_1(Struct_2(1000f, vec3<f32>(-488f, 691f, -590f), -48324i, Struct_1(-2147483647i, u_input.c, vec2<bool>(false, true), vec2<f32>(-1272f, -761f)), u_input.b.wy)).d, func_4(min(u_input.c, u_input.b.x), func_5(vec2<i32>(-41604i, u_input.a), u_input.b.zy, Struct_1(29614i, u_input.c, vec2<bool>(true, true), vec2<f32>(828f, -290f))), vec2<bool>(true, true)))));
    var var_1 = func_6(vec4<bool>(var_0.b.x <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(56383u, vec2<f32>(var_0.b.x, var_0.d.d.x), var_0)), _wgslsmith_f_op_f32(ceil(var_0.d.d.x)))), -23356i > _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, -34760i, -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, 0i, u_input.a), vec3<i32>(var_0.d.a, u_input.a, -2147483647i))), true, var_0.d.c.x), func_6(vec4<bool>(!var_0.d.c.x, true | var_0.d.c.x, true, all(func_6(vec4<bool>(false, false, var_0.d.c.x, true), Struct_2(-474f, vec3<f32>(var_0.d.d.x, -945f, var_0.d.d.x), var_0.c, var_0.d, vec2<u32>(var_0.d.b, u_input.c)), var_0).d.c)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) + _wgslsmith_f_op_f32(var_0.d.d.x - var_0.a)), _wgslsmith_f_op_vec3_f32(floor(var_0.b)), var_0.c, Struct_1(var_0.c, _wgslsmith_div_u32(1u, u_input.b.x), var_0.d.c, vec2<f32>(-1568f, var_0.a)), vec2<u32>(func_5(vec2<i32>(1i, var_0.c), vec2<u32>(1u, var_0.e.x), Struct_1(1664i, var_0.e.x, var_0.d.c, var_0.b.zy)).e.x, 0u)), Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)), 1i, var_0.d, vec2<u32>(~u_input.b.x, ~var_0.e.x))), func_5(-(~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.c, -1i), vec2<i32>(2147483647i, var_0.d.a), vec2<i32>(-2147483647i, var_0.d.a))), ~func_6(!vec4<bool>(var_0.d.c.x, false, var_0.d.c.x, var_0.d.c.x), func_5(vec2<i32>(-22826i, u_input.a), u_input.b.yw, var_0.d), func_1(var_0)).e, Struct_1(firstTrailingBit(func_6(vec4<bool>(var_0.d.c.x, false, false, true), var_0, Struct_2(var_0.b.x, var_0.b, var_0.d.a, var_0.d, var_0.e)).d.a), var_0.d.b, vec2<bool>(var_0.d.c.x | var_0.d.c.x, false), var_0.d.d)));
    var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -654f))), vec3<f32>(-318f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1678f * var_1.a) + -474f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1107f)) - _wgslsmith_f_op_f32(f32(-1f) * -1568f))))), -abs(var_0.c), func_1(var_0).d, ~(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), var_1.e) & var_0.e));
    let x = u_input.a;
    s_output = StorageBuffer(-1i ^ u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.d.x, _wgslsmith_f_op_f32(var_1.b.x + var_0.d.d.x), _wgslsmith_div_f32(var_1.d.d.x, 506f)))), -_wgslsmith_add_vec2_i32(abs(vec2<i32>(-750i, 28886i)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, var_1.c), vec2<i32>(u_input.a, -16856i)), reverseBits(vec2<i32>(2147483647i, -1i)) | _wgslsmith_add_vec2_i32(vec2<i32>(var_1.d.a, -22307i), vec2<i32>(var_0.d.a, var_1.d.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, -724f, var_1.b.x, -974f), vec4<f32>(201f, var_0.a, 1453f, -838f))))), vec4<f32>(925f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b.x))))));
}

