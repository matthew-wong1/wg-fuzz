struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -385f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> vec4<u32> {
    global0 = 1480f;
    var var_0 = Struct_1(31569i, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-994f)), _wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_f_op_f32(ceil(218f)), _wgslsmith_f_op_f32(f32(-1f) * -818f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 296f, -945f, 621f), vec4<f32>(1023f, 1763f, -1000f, -1140f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1058f, 1366f, 1745f, -702f), vec4<f32>(-1739f, -647f, 1632f, 1548f), arg_0)), false))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-172f, 258f, _wgslsmith_f_op_f32(max(-1446f, -687f)), -227f)))));
    var var_1 = all(vec4<bool>(min(_wgslsmith_div_i32(1i, u_input.d.x), min(-31119i, u_input.d.x)) >= -var_0.a, true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.x))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(255f - 1670f)), any(vec3<bool>(any(vec4<bool>(var_0.b, arg_0.x, true, true)), all(vec2<bool>(true, arg_1)), any(arg_0)))));
    return ~vec4<u32>(1u, max(40323u, ~(~u_input.b)), ~(~firstTrailingBit(26551u)), ~(~_wgslsmith_clamp_u32(u_input.b, u_input.a, u_input.a)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: vec2<bool>) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(u_input.d.x, 0i))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), ~u_input.d.x), 2147483647i, (-1i ^ u_input.d.x) ^ 1i), select(~vec4<i32>(35924i, 46168i, u_input.d.x, u_input.d.x) ^ abs(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -21738i)), min(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -2887i), countOneBits(vec4<i32>(u_input.d.x, -2147483647i, -2147483647i, u_input.d.x))), vec4<bool>(arg_3.x, true != arg_3.x, u_input.d.x < 2147483647i, false))), !(select(false, false, true) & !any(arg_3)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -542f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -308f)), _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 1000f, 1000f, -1410f), vec4<f32>(arg_0.x, arg_0.x, -375f, 1763f), arg_3.x)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, -1000f, -350f, 279f))))))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_0 = Struct_1(var_0.a, !any(!vec3<bool>(false, var_0.b, false)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), -543f, arg_0.x, 1230f))))));
    global0 = var_0.c.x;
    let var_1 = abs(vec4<i32>(u_input.d.x, ~(-u_input.d.x), u_input.d.x, var_0.a) >> (select(_wgslsmith_sub_vec4_u32(func_3(vec4<bool>(arg_3.x, var_0.b, false, false), arg_3.x), arg_1 & arg_1), vec4<u32>(_wgslsmith_mult_u32(25046u, u_input.b), 25997u, reverseBits(u_input.a), 7410u), false) % vec4<u32>(32u)));
    return vec4<u32>(u_input.c.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(~1u, arg_2.x), u_input.c.x), ~(~_wgslsmith_sub_u32(~arg_2.x, select(arg_2.x, 1u, false))), 0u & _wgslsmith_dot_vec3_u32(~(~arg_1.wyw), ~(~vec3<u32>(0u, 38180u, u_input.b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>) -> Struct_1 {
    global0 = 1660f;
    global0 = _wgslsmith_f_op_f32(max(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.c.x, arg_0.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(578f + arg_0.c.x), 893f)))));
    var var_0 = arg_0;
    var var_1 = ~func_4(vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(sign(arg_0.c.x)))), func_3(select(vec4<bool>(arg_1.x, true, var_0.b, false), select(vec4<bool>(false, false, var_0.b, false), vec4<bool>(arg_1.x, false, arg_1.x, arg_0.b), vec4<bool>(false, true, arg_1.x, true)), true), false), arg_2.zxy, arg_1.zx);
    var var_2 = arg_0;
    return Struct_1(1i, any(arg_1.xzz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1218f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(862f * -293f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_0.c.x)), arg_0.c.x)), _wgslsmith_f_op_f32(arg_0.c.x * -511f))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> bool {
    var var_0 = arg_2;
    var var_1 = func_2(arg_2, vec4<bool>(arg_2.b, true, all(!vec3<bool>(arg_0.x, false, false)), false), _wgslsmith_add_vec4_u32(~(func_3(vec4<bool>(true, false, var_0.b, arg_0.x), arg_2.b) << (abs(vec4<u32>(u_input.a, u_input.a, 0u, u_input.c.x)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, u_input.b, 1u) | vec4<u32>(u_input.b, u_input.b, 0u, 44867u), vec4<u32>(18651u, 1u, u_input.b, 32315u)) | vec4<u32>(~u_input.c.x, ~23670u, ~35305u, firstLeadingBit(1u))));
    let var_2 = Struct_1(25688i, !var_1.b, var_1.c);
    global0 = var_0.c.x;
    var var_3 = vec3<u32>(_wgslsmith_mult_u32(1u, max(19139u, 1u)), u_input.b, u_input.b);
    return all(arg_0);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(-2147483647i, func_5(select(vec2<bool>(true, u_input.b != u_input.c.x), vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(true, false)))), _wgslsmith_div_vec4_f32(vec4<f32>(146f, 282f, -357f, 1000f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-235f, -897f, 752f, 831f) - vec4<f32>(669f, -1381f, -736f, 1000f)), vec4<f32>(1421f, 1593f, -381f, 198f))), func_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 846i, -562i, u_input.d.x), vec4<i32>(-1i, u_input.d.x, u_input.d.x, u_input.d.x)), any(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1401f, 356f, -1134f, -105f), vec4<f32>(592f, -1103f, 1314f, -339f)))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), true)), ~reverseBits(vec4<u32>(u_input.a, 92116u, 55731u, u_input.a)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -985f, -1025f, -624f) - vec4<f32>(1610f, -566f, 370f, -1221f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-566f, -308f, -776f, -418f)))))))));
    var var_1 = var_0.c.x;
    global0 = _wgslsmith_div_f32(var_0.c.x, -311f);
    let var_2 = 8355u;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-939f * 1183f) * var_0.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.c.x, -962f, all(vec2<bool>(true, false)) & true)))), var_0.c.x, var_0.c.x);
    return Struct_1(~(~u_input.d.x), true, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - -611f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-280f))), -383f, var_0.c.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.x, var_3.x, var_0.c.x, var_0.c.x), vec4<f32>(var_0.c.x, var_3.x, -1305f, 711f), vec4<bool>(true, var_0.b, true, var_0.b))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.x, -627f, 217f, -2002f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_0.c.x, var_0.c.x, var_0.c.x))), vec4<bool>(true, !var_0.b, var_0.b, !var_0.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(-u_input.d.x > (_wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(u_input.d.xx, u_input.d.xy)) << (u_input.a % 32u)));
    var var_1 = func_1();
    var_0 = !func_2(func_1(), !select(vec4<bool>(false, true, false, var_1.b), select(vec4<bool>(var_1.b, false, var_1.b, false), vec4<bool>(var_1.b, true, var_1.b, false), var_1.b), var_1.b), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c.x, 47616u, u_input.a, 1u) >> ((vec4<u32>(u_input.b, 0u, u_input.a, u_input.a) & vec4<u32>(0u, u_input.a, u_input.b, u_input.a)) % vec4<u32>(32u)), firstLeadingBit(~vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.c.x)))).b;
    var var_2 = _wgslsmith_dot_vec4_i32(~reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(64894i, u_input.d.x, u_input.d.x, var_1.a), vec4<i32>(u_input.d.x, -35595i, 0i, u_input.d.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_1.a, u_input.d.x, u_input.d.x), vec4<i32>(1i, -7249i, 1i, 0i)), ~vec4<i32>(-33222i, -2147483647i, 0i, u_input.d.x))), vec4<i32>(~var_1.a, 1i, func_1().a, 2147483647i));
    let var_3 = func_1().c.yy;
    let var_4 = func_2(Struct_1(i32(-1i) * -2147483647i, var_1.b, _wgslsmith_f_op_vec4_f32(floor(var_1.c))), vec4<bool>(var_1.b, var_1.b, func_2(func_2(Struct_1(u_input.d.x, var_1.b, var_1.c), select(vec4<bool>(var_1.b, true, var_1.b, var_1.b), vec4<bool>(true, false, var_1.b, false), vec4<bool>(false, true, var_1.b, var_1.b)), vec4<u32>(u_input.a, u_input.b, u_input.c.x, 36706u)), vec4<bool>(true, var_1.b || false, true, var_1.b), ~func_4(var_1.c.xw, vec4<u32>(u_input.a, 69603u, u_input.c.x, u_input.c.x), vec3<u32>(30902u, 53298u, u_input.c.x), vec2<bool>(var_1.b, true))).b, all(!vec4<bool>(var_1.b, true, true, var_1.b))), vec4<u32>(30396u, (_wgslsmith_mult_u32(u_input.c.x, u_input.b) | 0u) << (1u % 32u), abs(max(_wgslsmith_dot_vec4_u32(vec4<u32>(28086u, u_input.a, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, 0u, 24923u, 4294967295u)), u_input.a)), reverseBits(0u)));
    global0 = -1021f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_4.c.x, var_1.c.x));
}

