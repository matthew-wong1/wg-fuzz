struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-361f, 770f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-911f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-601f + 420f))))));
    let var_0 = select(select(vec4<bool>(true, true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), u_input.a <= 1i), select(vec4<bool>(false, true, true, any(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))), any(vec3<bool>(true, true, true))), select(vec4<bool>(true, u_input.a >= 17891i, true, u_input.b.x != arg_1), vec4<bool>(true, any(vec2<bool>(true, true)), true, any(vec2<bool>(true, false))), vec4<bool>(true, true, true, all(vec3<bool>(true, true, true))))), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), any(vec4<bool>(true, false, false, true)))), -(10676i | _wgslsmith_div_i32(u_input.a, -20939i)) > u_input.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(519f)), _wgslsmith_f_op_f32(ceil(global0.x)), 1000f, _wgslsmith_f_op_f32(global0.x - -1999f))) + vec4<f32>(global0.x, global0.x, global0.x, 262f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1065f, global0.x, global0.x, 1418f) * vec4<f32>(global0.x, -750f, global0.x, global0.x)))), vec4<f32>(_wgslsmith_f_op_f32(select(-329f, global0.x, false)), 1717f, _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1086f))))), !var_0.x));
    global0 = _wgslsmith_f_op_vec2_f32(var_1.xx * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(191f, -434f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-290f, -1672f), var_1.xy, vec2<bool>(var_0.x, var_0.x)))), vec2<f32>(-2266f, global0.x))))));
    global0 = var_1.zz;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -607f)))), -1732f));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-155f, 1004f)), vec2<f32>(-207f, global0.x), select(select(vec2<bool>(false, arg_0), vec2<bool>(false, true), arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), vec2<bool>(arg_0, true)), vec2<bool>(false, arg_0))))) + vec2<f32>(-943f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(862f + -1994f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, global0.x)) - 773f), global0.x), _wgslsmith_f_op_f32(max(-257f, -136f)));
    let var_0 = arg_0;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(u_input.b, ~(~3395u))))));
    return Struct_2(~(~(-25649i)), Struct_1(2147483647i, abs(vec3<u32>(~u_input.b.x, ~23146u, ~37117u))), Struct_1(0i, firstLeadingBit(u_input.b.zxw)), u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2902f));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -166f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(340f))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1516f))))))));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-373f, -232f));
    let var_0 = func_2(!(global0.x <= -251f));
    var var_1 = -249f;
    var var_2 = 2632u;
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = -2147483647i;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2401f))), global0.x) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1596f)), _wgslsmith_f_op_f32(-291f * global0.x))))));
    var var_1 = _wgslsmith_div_u32(~(~(~1u)), abs(5296u << (~(~arg_0.b.x) % 32u)));
    let var_2 = -(~arg_0.a);
    var_1 = 0u;
    return firstLeadingBit(49744u);
}

fn func_5(arg_0: vec4<f32>, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.yy)));
    let var_0 = arg_3;
    var var_1 = func_1(vec4<u32>(arg_2, u_input.b.x, ~(~(~var_0.b.x)), _wgslsmith_dot_vec3_u32(arg_3.b, u_input.b.ywy)), var_0);
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(arg_0.xyw))));
    let var_3 = func_2(false);
    return _wgslsmith_add_u32(var_0.b.x, 1537u);
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(894f * 1000f), global0.x)))), 320f, true)) + _wgslsmith_f_op_f32(-global0.x));
    var var_1 = arg_0;
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(359f, 1f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e, -2142f) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.e, arg_0.e)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-954f, -340f)), vec2<f32>(var_1.e, var_1.e))))));
    var var_2 = Struct_1(reverseBits(max(~(1i >> (var_1.b.b.x % 32u)), _wgslsmith_clamp_i32(u_input.a, abs(arg_0.b.a), _wgslsmith_mod_i32(arg_0.a, 16483i)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.b.x & 4294967295u, 0u, ~9112u), _wgslsmith_mod_vec3_u32(~arg_0.c.b, vec3<u32>(~4294967295u, ~arg_1, func_2(true).d)), vec3<u32>(~0u, reverseBits(9691u), 1u) >> (_wgslsmith_sub_vec3_u32(arg_0.b.b, ~var_1.c.b) % vec3<u32>(32u))));
    var var_3 = Struct_1(~62820i, vec3<u32>(arg_0.d, 5017u, var_2.b.x));
    return 69680u;
}

fn func_7(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_3.e)), _wgslsmith_f_op_f32(arg_3.e * -421f), any(vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_3.b.b, _wgslsmith_mod_vec3_u32(abs(func_1(u_input.b, Struct_1(arg_3.a, u_input.b.wyx)).b), vec3<u32>(88131u, 1u, ~arg_0))), _wgslsmith_mult_u32(countOneBits(~(~arg_2)), u_input.b.x));
    return ~arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(Struct_2(u_input.a, Struct_1(1i, _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), u_input.b.xzw)), Struct_1(_wgslsmith_sub_i32(-2147483647i, u_input.a), vec3<u32>(u_input.b.x, 25757u, u_input.b.x)), u_input.b.x, _wgslsmith_f_op_f32(-global0.x)), func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(618f, -168f, 1677f, global0.x), vec4<f32>(-337f, 1814f, 255f, global0.x))), -u_input.a, func_4(func_1(u_input.b, Struct_1(1i, vec3<u32>(u_input.b.x, u_input.b.x, 51190u)))), Struct_1(u_input.a, ~vec3<u32>(4294967295u, 4294967295u, u_input.b.x)))), 0i, firstTrailingBit(_wgslsmith_mult_u32(min(1u, u_input.b.x), _wgslsmith_add_u32(u_input.b.x, u_input.b.x))) & u_input.b.x, func_2(true));
    var var_1 = Struct_2(~(~max(_wgslsmith_dot_vec3_i32(vec3<i32>(42053i, 2147483647i, 0i), vec3<i32>(32409i, u_input.a, u_input.a)), 17803i)), func_2(1f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) - global0.x)).c, Struct_1(~(-abs(0i)), select(~vec3<u32>(60731u, u_input.b.x, 76858u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 723u, u_input.b.x), u_input.b.zyw), countOneBits(~u_input.b.wxy), all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)))), _wgslsmith_div_u32(u_input.b.x << (func_1(~u_input.b, func_1(vec4<u32>(31918u, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(u_input.a, u_input.b.xyx))).b.x % 32u), ~((u_input.b.x | 1u) >> ((u_input.b.x >> (4294967295u % 32u)) % 32u))), _wgslsmith_f_op_f32(1710f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f)) - _wgslsmith_f_op_f32(-291f + 1000f))));
    var var_2 = var_1.b;
    var_0 = var_2.b.x;
    let var_3 = Struct_1(31493i, ~_wgslsmith_sub_vec3_u32(u_input.b.zwz, var_1.b.b));
    let var_4 = var_3;
    let var_5 = func_2(!(!(true | any(vec3<bool>(false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(~abs(vec2<i32>(-38811i, -1i)))), firstLeadingBit(abs(~reverseBits(var_4.b.x))), ~(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(1758f, global0.x, global0.x, global0.x) * vec4<f32>(221f, global0.x, -694f, var_5.e)), ~0i, _wgslsmith_sub_u32(24431u, var_1.d), var_5.b) & 47064u), ~var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e, 264f, 707f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.e, var_5.e, -1115f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1941f, -240f, -1465f) + vec3<f32>(global0.x, var_1.e, var_5.e)))))));
}

