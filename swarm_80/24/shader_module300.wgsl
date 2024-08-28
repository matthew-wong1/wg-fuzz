struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<i32> {
    global0 = any(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), !all(vec3<bool>(false, true, false))));
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(4294967295u | ~min(u_input.c.x, u_input.c.x), ~1u), _wgslsmith_clamp_u32(~30430u, u_input.c.x, ~1u), u_input.c.x, u_input.c.x);
    var var_1 = 1u;
    var var_2 = Struct_2(select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false)), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), select(true, true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(false, true)), vec2<bool>(true, select(false, true, false)))), 0u);
    global0 = true;
    return vec3<i32>(-1i, abs(u_input.b.x), 1i);
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(!select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true), vec2<bool>(true, true), vec2<bool>(false, true)), 93266u);
    let var_1 = Struct_1(1u, -18052i & min(-_wgslsmith_add_i32(u_input.d, arg_0.x), arg_3.b | 806i), arg_1, arg_3.d);
    let var_2 = Struct_1(~u_input.c.x & 75897u, -(~_wgslsmith_mod_i32(~(-1567i), arg_0.x)), arg_3.d, ~_wgslsmith_add_u32(u_input.c.x, ~_wgslsmith_mult_u32(0u, var_1.d)));
    var var_3 = var_2;
    var_0 = Struct_2(select(vec2<bool>(any(select(vec3<bool>(var_0.a.x, true, true), vec3<bool>(true, true, true), vec3<bool>(false, var_0.a.x, var_0.a.x))), !var_0.a.x), !(!(!vec2<bool>(var_0.a.x, var_0.a.x))), var_0.a.x || (_wgslsmith_f_op_f32(-1423f * arg_2) > -1854f)), ~countOneBits(_wgslsmith_mult_u32(var_0.b, 1u)));
    return vec3<bool>(var_0.a.x | var_0.a.x, false, any(select(vec3<bool>(!var_0.a.x, all(vec4<bool>(var_0.a.x, true, true, true)), !var_0.a.x), select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(true, false, var_0.a.x), var_0.a.x), select(select(vec3<bool>(var_0.a.x, false, var_0.a.x), vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<bool>(true, var_0.a.x, true)), vec3<bool>(var_0.a.x, true, true), select(vec3<bool>(var_0.a.x, false, true), vec3<bool>(true, true, var_0.a.x), false)))));
}

fn func_2() -> Struct_1 {
    global0 = !all(func_4(func_3(), u_input.c.x, 1000f, Struct_1(min(u_input.c.x, 1u), abs(2147483647i), ~63849u, u_input.c.x | u_input.c.x)));
    global0 = false;
    var var_0 = Struct_1(u_input.c.x, u_input.a, 1u, u_input.c.x);
    let var_1 = ~vec3<u32>(~_wgslsmith_mod_u32(var_0.d, u_input.c.x >> (4294967295u % 32u)), reverseBits(~u_input.c.x ^ _wgslsmith_mult_u32(0u, 1u)), 83927u);
    let var_2 = true;
    return Struct_1(var_1.x, u_input.a, var_0.a, firstTrailingBit(_wgslsmith_add_u32(47357u, var_1.x) >> (1u % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    global0 = select(true, select(false, all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true)), false) & true, -arg_0.b <= func_3().x);
    let var_0 = Struct_2(vec2<bool>(true, all(vec2<bool>(true, true))), arg_2.c);
    global0 = true;
    var var_1 = max(~(~2147483647i), -12617i);
    var var_2 = Struct_2(select(!(!vec2<bool>(var_0.a.x, var_0.a.x)), vec2<bool>(true, true), vec2<bool>(true, true)), 29858u);
    return Struct_2(var_2.a, 4294967295u);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = func_2();
    let var_2 = func_2();
    global0 = !((~var_2.a & 14954u) > ~countOneBits(~46417u));
    var_1 = func_2();
    return arg_0;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1182f, -256f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-426f, 1182f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(494f, -1083f))))));
    global0 = arg_2.a.x;
    var var_1 = vec3<u32>(~arg_0.b, ~arg_2.b, ~1u);
    global0 = !arg_2.a.x;
    var var_2 = !func_6(arg_2, vec3<bool>(arg_1.a.x, all(!vec2<bool>(arg_1.a.x, false)), arg_2.a.x && !arg_1.a.x)).a;
    return ~u_input.c;
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = (select(~1u, ~(~arg_0), false) <= ~(countOneBits(arg_0) >> (arg_0 % 32u))) && (u_input.b.x <= firstLeadingBit(u_input.b.x));
    var var_1 = func_7(Struct_2(!select(!vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), select(vec2<bool>(true, true), vec2<bool>(var_0, true), true)), ~firstTrailingBit(0u)), func_6(func_5(func_2(), func_2(), Struct_1(~56654u, 2147483647i, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, 1494u, 73830u), vec4<u32>(u_input.c.x, arg_0, arg_0, 106469u))), ~(~arg_0)), select(!select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, false)), select(func_4(u_input.b, 1u, 330f, Struct_1(31898u, u_input.b.x, 24951u, 37673u)), func_4(u_input.b, u_input.c.x, 173f, Struct_1(18012u, u_input.a, u_input.c.x, arg_0)), !vec3<bool>(var_0, var_0, var_0)), !vec3<bool>(var_0, false, var_0))), func_5(Struct_1(~u_input.c.x, 10209i, _wgslsmith_add_u32(func_2().d, 7831u), _wgslsmith_clamp_u32(firstTrailingBit(18961u), 0u, u_input.c.x >> (u_input.c.x % 32u))), func_2(), func_2(), 15700u));
    let var_2 = Struct_2(vec2<bool>(var_0, -16483i > _wgslsmith_clamp_i32(34657i | u_input.b.x, u_input.b.x, u_input.d)), 0u);
    var var_3 = func_2();
    global0 = -8200i > -countOneBits(var_3.b);
    return 4294967295u;
}

fn func_8(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = func_5(Struct_1(0u, abs(func_2().b), u_input.c.x, min(_wgslsmith_add_u32(select(u_input.c.x, 4294967295u, arg_3.x), abs(0u)), firstTrailingBit(0u))), Struct_1(func_6(Struct_2(vec2<bool>(true, arg_3.x), 6277u), vec3<bool>(any(vec3<bool>(arg_3.x, arg_3.x, true)), arg_3.x, arg_3.x != arg_3.x)).b, 41880i | (2147483647i >> (arg_0 % 32u)), select(arg_1.c, arg_0, true), arg_0), arg_1, 12951u);
    global0 = abs(42399i) <= (max(_wgslsmith_add_i32(~arg_1.b, select(0i, 2147483647i, var_0.a.x)), arg_2.b | firstLeadingBit(-1i)) | ((-1i << (~u_input.c.x % 32u)) >> (~(arg_2.d >> (u_input.c.x % 32u)) % 32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(642f + -126f), 1567f, _wgslsmith_f_op_f32(select(606f, -176f, arg_3.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(679f, 2093f, -1140f) - vec3<f32>(-279f, 137f, -122f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(176f, 313f, 1007f), vec3<f32>(649f, 1000f, -279f)))))))));
    var var_2 = var_0;
    let var_3 = Struct_1(9748u, i32(-1i) * -_wgslsmith_mult_i32(u_input.a, 0i), 22076u, reverseBits(4294967295u));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(12802u, Struct_1(4294967295u, -max(~u_input.d, _wgslsmith_mod_i32(u_input.b.x, u_input.a)), func_1(u_input.c.x), countOneBits(u_input.c.x)), Struct_1(25318u, reverseBits(_wgslsmith_div_i32(1i, ~2147483647i)), u_input.c.x, ~u_input.c.x), !select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), vec3<bool>(true, true, true)));
    let var_1 = func_6(Struct_2(!select(func_6(Struct_2(vec2<bool>(false, true), var_0.a), vec3<bool>(true, true, false)).a, vec2<bool>(true, true), func_5(Struct_1(4294967295u, var_0.b, var_0.c, u_input.c.x), var_0, var_0, var_0.c).a), ~_wgslsmith_div_u32(u_input.c.x, var_0.d) << (_wgslsmith_sub_u32(_wgslsmith_div_u32(50840u, var_0.d), var_0.d | var_0.a) % 32u)), vec3<bool>(true || select(true, 0u != var_0.c, any(vec4<bool>(false, false, true, true))), true, func_6(Struct_2(func_4(u_input.b, var_0.d, 525f, var_0).yy, u_input.c.x), vec3<bool>(true, true, true)).a.x));
    var var_2 = var_1.a;
    global0 = var_2.x;
    global0 = func_6(var_1, select(select(!vec3<bool>(var_2.x, false, false), select(vec3<bool>(true, true, var_2.x), func_4(u_input.b, var_1.b, 357f, var_0), 2147483647i < var_0.b), !select(vec3<bool>(var_1.a.x, false, var_1.a.x), vec3<bool>(false, var_2.x, var_1.a.x), vec3<bool>(var_2.x, var_1.a.x, true))), !select(!vec3<bool>(var_2.x, var_1.a.x, var_2.x), func_4(u_input.b, var_0.d, -953f, Struct_1(u_input.c.x, u_input.a, 1u, 4294967295u)), vec3<bool>(false, false, var_2.x)), func_4(u_input.b, ~(~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(995f, 802f))), func_2()))).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(firstLeadingBit(min(vec4<i32>(u_input.d, var_0.b, u_input.d, u_input.a), -vec4<i32>(-2147483647i, var_0.b, u_input.b.x, var_0.b))), min(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -45853i, var_0.b, u_input.d), vec4<i32>(var_0.b, -9683i, u_input.a, var_0.b))), vec4<i32>(1i, 1i, 1i, 1i) >> (u_input.c % vec4<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(select(-617f, -1067f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-166f * -994f), -181f)) - _wgslsmith_f_op_f32(-360f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -231f), 204f)))), countOneBits(~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, 0u), u_input.c.xxy & vec3<u32>(1u, 1u, u_input.c.x))));
}

