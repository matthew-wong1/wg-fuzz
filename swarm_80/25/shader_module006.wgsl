struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_1) -> bool {
    var var_0 = Struct_2(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(~u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_i32(arg_0.b.a | arg_0.b.a, vec4<i32>(arg_2.a.x, 2147483647i, arg_0.b.a.x, 8805i))), _wgslsmith_sub_i32(firstLeadingBit(arg_2.a.x), 1i), ~arg_0.b.a.x, -_wgslsmith_dot_vec2_i32(abs(u_input.a.yz), vec2<i32>(u_input.a.x, -9043i))));
    var var_1 = Struct_2(vec4<i32>(2147483647i, _wgslsmith_sub_i32(-1i, arg_0.b.a.x >> (906u % 32u)), abs(_wgslsmith_mod_i32(1i, arg_0.d.a.x)), var_0.a.x << (~50160u % 32u)) >> (vec4<u32>(arg_0.c, abs(reverseBits(71236u)), arg_0.c, 4294967295u) % vec4<u32>(32u)));
    let var_2 = abs(arg_0.b.a.x);
    let var_3 = !select(!vec4<bool>(select(false, false, false), arg_0.d.b.x, 15984u < arg_1.x, arg_0.a), vec4<bool>(any(vec2<bool>(true, false)), false, !arg_2.b.x, !select(arg_0.d.b.x, arg_0.d.b.x, false)), true);
    let var_4 = arg_1;
    return (-(~_wgslsmith_dot_vec3_i32(var_0.a.wzw, vec3<i32>(8189i, var_1.a.x, var_2))) >> (~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.c, arg_1.x), vec2<u32>(arg_1.x, arg_0.c)) % 32u)) < 2147483647i;
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<f32>) -> f32 {
    let var_0 = Struct_1(~(arg_1 | vec3<i32>(-u_input.a.x, arg_1.x, -2147483647i)), vec2<bool>(14709i != ~(~u_input.a.x), all(select(vec2<bool>(true, true), !vec2<bool>(arg_0, false), arg_0))));
    let var_1 = min(firstLeadingBit(~_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u) | 4294967295u), 53614u);
    return _wgslsmith_f_op_f32(max(arg_2.x, arg_2.x));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -756f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1046f, -709f))), any(vec2<bool>(false, true)))) - -1126f), _wgslsmith_f_op_f32(func_4(func_3(Struct_3(select(false, false, true), Struct_2(vec4<i32>(0i, 45743i, -2147483647i, -16854i)), reverseBits(6535u), Struct_1(u_input.a, vec2<bool>(false, true))), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 46016u), vec2<u32>(arg_0, 0u)), abs(vec2<u32>(47764u, 3768u))), Struct_1(firstTrailingBit(arg_1), vec2<bool>(false, false))), vec3<i32>(1i, -(~arg_1.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), u_input.a.xy), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, -9557i, arg_1.x, -1i), vec4<i32>(arg_1.x, -2147483647i, -2147483647i, -1i)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(376f, -690f, -877f, 150f), vec4<f32>(-1611f, 269f, 1073f, 1052f))) - vec4<f32>(789f, -200f, 1185f, -624f)))))));
    let var_1 = _wgslsmith_add_i32(17362i, u_input.a.x);
    var var_2 = Struct_1(~arg_1, vec2<bool>(true, true));
    let var_3 = Struct_2(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-arg_1.x, _wgslsmith_add_i32(u_input.a.x, 50467i), arg_1.x, ~var_1), _wgslsmith_div_vec4_i32(-vec4<i32>(-6401i, -13884i, -13615i, var_2.a.x), ~vec4<i32>(33038i, var_1, -2147483647i, 0i)))));
    var_2 = Struct_1(arg_1, vec2<bool>(var_2.b.x, var_2.b.x));
    return Struct_3(true, var_3, 21669u, Struct_1(abs(~vec3<i32>(arg_1.x, -11060i, -1i)), var_2.b));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> u32 {
    let var_0 = arg_0.d;
    var var_1 = arg_0.b;
    var_1 = Struct_2(vec4<i32>(_wgslsmith_mod_i32(4865i, 161i), _wgslsmith_clamp_i32(arg_0.b.a.x, _wgslsmith_mod_i32(-1i, _wgslsmith_sub_i32(0i, 15994i)), _wgslsmith_mod_i32(max(-2147483647i, var_1.a.x), arg_1.a.x)), -10733i, min(~(i32(-1i) * -28928i), -9493i)));
    var var_2 = func_2(arg_0.c, countOneBits(select(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 47405i, -46262i), vec3<i32>(2147483647i, 38284i, arg_1.a.x)) ^ func_2(arg_0.c, vec3<i32>(0i, u_input.a.x, var_0.a.x)).d.a, vec3<i32>(var_1.a.x ^ var_1.a.x, _wgslsmith_mod_i32(arg_3.a.x, 1i), _wgslsmith_dot_vec2_i32(var_0.a.zz, u_input.a.yx)), vec3<bool>(true, true, true)))).b;
    var var_3 = !vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_2.c, 1u), max(vec3<u32>(56644u, arg_2.c, 29238u), vec3<u32>(0u, arg_2.c, arg_0.c))) >= (_wgslsmith_mod_u32(arg_2.c, arg_2.c) | arg_0.c), true);
    return 1u;
}

fn func_6(arg_0: u32, arg_1: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -1000f)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, 958f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(768f, -285f) + vec2<f32>(410f, arg_1))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-278f, 265f), vec2<f32>(arg_1, arg_1)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1174f, -1000f), vec2<f32>(arg_1, -257f), false)))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-186f, 757f)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1087f, -1812f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-643f, arg_1), vec2<f32>(-2425f, -1151f), vec2<bool>(true, false)))))), true)));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_0.x))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(-1160f, -311f)), _wgslsmith_f_op_f32(464f * arg_1), -361f, var_0.x)));
    var var_3 = Struct_3(true, func_2(~46043u, func_2(_wgslsmith_mod_u32(~1u, ~7490u), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -45164i), vec4<i32>(-5892i, -1i, 16075i, -18989i)), 1i, u_input.a.x)).d.a).b, max(_wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(0u, arg_0, 77665u)), vec3<u32>(_wgslsmith_div_u32(63469u, arg_0), arg_0, ~arg_0)), _wgslsmith_div_u32(select(10432u, _wgslsmith_mod_u32(0u, 38463u), true), max(func_5(Struct_3(true, Struct_2(vec4<i32>(23196i, 463i, u_input.a.x, 0i)), 1u, Struct_1(vec3<i32>(8602i, u_input.a.x, 48179i), vec2<bool>(true, false))), Struct_1(vec3<i32>(1i, -2147483647i, u_input.a.x), vec2<bool>(true, false)), Struct_3(true, Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), arg_0, Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, 30120i), vec2<bool>(false, false))), Struct_1(u_input.a, vec2<bool>(false, true))), arg_0 & 1u))), Struct_1(func_2(arg_0, u_input.a << (countOneBits(vec3<u32>(arg_0, arg_0, arg_0)) % vec3<u32>(32u))).b.a.yxw, vec2<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)))));
    let var_4 = ~countOneBits(vec3<u32>(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(9450u, 1u, 29909u), vec3<u32>(arg_0, arg_0, 0u))), ~_wgslsmith_sub_u32(var_3.c, var_3.c), arg_0));
    return func_2(_wgslsmith_mult_u32(1u, ~0u & _wgslsmith_add_u32(4294967295u, var_3.c)), ~(~select(vec3<i32>(var_3.d.a.x, u_input.a.x, -49908i), vec3<i32>(u_input.a.x, var_3.b.a.x, -15874i), vec3<bool>(var_3.d.b.x, var_3.a, var_3.d.b.x)) ^ ~var_3.b.a.xzy)).b;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_3(false & any(vec2<bool>(false, true)), func_6(func_5(func_2(1u, vec3<i32>(u_input.a.x, -1i, 29445i) & vec3<i32>(2147483647i, u_input.a.x, 2147483647i)), Struct_1(_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(-11709i, 2147483647i, u_input.a.x), u_input.a), vec2<bool>(false, false)), Struct_3(any(vec3<bool>(false, true, true)), func_2(36575u, vec3<i32>(u_input.a.x, 0i, u_input.a.x)).b, abs(4294967295u), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -1i), vec2<bool>(false, true))), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), 672f), 1u, func_2(4294967295u, -_wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.a.x), ~u_input.a)).d);
    let var_1 = var_0.d;
    var var_2 = ~(-_wgslsmith_dot_vec3_i32(var_1.a, _wgslsmith_mult_vec3_i32(var_0.d.a, vec3<i32>(u_input.a.x, var_0.b.a.x, var_0.b.a.x)))) << (_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.c, 37548u), countOneBits(min(92701u, 17430u) >> (var_0.c % 32u)), _wgslsmith_dot_vec2_u32(~(vec2<u32>(0u, 90317u) ^ vec2<u32>(22738u, var_0.c)), reverseBits(vec2<u32>(1u, 1u) ^ vec2<u32>(var_0.c, var_0.c)))) % 32u);
    var var_3 = 970f;
    var_2 = -((i32(-1i) * -(i32(-1i) * -29328i)) >> (~func_5(Struct_3(var_0.d.b.x, Struct_2(var_0.b.a), 6400u, var_0.d), func_2(var_0.c, vec3<i32>(var_0.b.a.x, u_input.a.x, var_0.b.a.x)).d, func_2(29685u, vec3<i32>(1i, var_1.a.x, 0i)), func_2(0u, vec3<i32>(var_0.d.a.x, var_1.a.x, -2147483647i)).d) % 32u));
    return func_2(~select(_wgslsmith_mod_u32(~var_0.c, ~0u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.c, var_0.c), _wgslsmith_mult_u32(var_0.c, 0u)), false), vec3<i32>(-1i) * -select(u_input.a, -var_0.b.a.xxy, var_0.a)).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(33531u, _wgslsmith_add_u32(0u, 37852u), ~97328u), 45980u), ~firstTrailingBit(1u));
    var_0 = ~((min(87364u, ~4294967295u) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(8873u, 0u, 1u, 4586u), select(vec4<u32>(0u, 1u, 45099u, 5667u), vec4<u32>(1u, 7091u, 0u, 0u), true))) & (18993u | firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(20379u, 1u), vec2<u32>(92738u, 8373u)))));
    let var_1 = func_1();
    let var_2 = abs(abs(~(~(~1u))));
    var_0 = 20074u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2, 41948u, ~(~var_2)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1591f)) + -354f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(183f)), _wgslsmith_f_op_f32(ceil(-1216f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -193f, -863f))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(-814f)), _wgslsmith_f_op_f32(f32(-1f) * -821f), _wgslsmith_f_op_f32(f32(-1f) * -1949f)))), _wgslsmith_mod_vec2_i32(vec2<i32>(46412i, var_1.a.x), _wgslsmith_mult_vec2_i32(u_input.a.zy, vec2<i32>(~(-1i), _wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(-1i, 0i))))));
}

