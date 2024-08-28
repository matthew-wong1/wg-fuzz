struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(515f, -101f)))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1284f + var_0.x)), 1446f)));
    var var_1 = arg_1;
    var var_2 = Struct_1(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_0.a)), -464f))), arg_1.c, abs(_wgslsmith_sub_vec2_u32(arg_0.d, var_1.d)));
    let var_3 = arg_0.d.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.a)) - _wgslsmith_f_op_f32(-var_0.x));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_div_f32(-1175f, _wgslsmith_f_op_f32(-arg_0.b)), 451f, select(!vec3<bool>(arg_0.c.x, arg_0.c.x, false), select(arg_0.c, vec3<bool>(arg_0.c.x, true, arg_0.c.x), false), select(false, false, false)), arg_0.d), Struct_1(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(trunc(arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(893f))), vec3<bool>(true, true, true), u_input.b), arg_0.c.x, vec2<bool>(!(u_input.b.x <= 3175u), true))) * arg_0.a);
    var var_1 = arg_0;
    let var_2 = arg_0;
    let var_3 = 1u;
    let var_4 = -2147483647i;
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.b - var_2.a))), 326f, select(!(!arg_0.c), !vec3<bool>(true, u_input.a.x == -1i, true), !var_2.c), ~(select(vec2<u32>(arg_0.d.x, 5922u), abs(var_1.d), false) | arg_0.d));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = Struct_1(arg_1.b, arg_0.a, func_2(arg_0).c, arg_1.d);
    let var_1 = vec2<u32>(arg_0.d.x, _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(1u, arg_1.d.x)), vec2<u32>(max(~u_input.b.x, 47285u), 1929u)));
    let var_2 = !arg_1.c.x;
    let var_3 = Struct_1(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1496f - func_2(arg_2).b)), !(!arg_2.c), ~var_0.d);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(f32(-1f) * -979f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_0.b)), -1362f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -254f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -700f))), arg_1.b);
    return ~_wgslsmith_div_vec2_u32(min(abs(~vec2<u32>(1u, var_3.d.x)), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, 35189u), u_input.b)), ~u_input.b);
}

fn func_5(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = ~vec3<u32>(~0u, func_4(func_2(Struct_1(-141f, 950f, vec3<bool>(false, true, true), vec2<u32>(1u, u_input.b.x))), func_2(Struct_1(143f, 726f, vec3<bool>(true, true, true), u_input.b)), Struct_1(-1024f, 394f, vec3<bool>(false, true, true), vec2<u32>(16446u, 4294967295u))).x ^ ~(~24387u), arg_0.x);
    var var_1 = ~var_0;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(913f, -935f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(Struct_1(func_2(Struct_1(-1061f, -776f, vec3<bool>(true, false, false), vec2<u32>(u_input.b.x, 10510u))).b, -286f, select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), func_2(Struct_1(-841f, 1327f, vec3<bool>(false, false, false), u_input.b)).c.x), ~func_4(Struct_1(261f, -805f, vec3<bool>(true, false, true), vec2<u32>(28995u, u_input.b.x)), Struct_1(-1000f, -516f, vec3<bool>(false, false, false), u_input.b), Struct_1(1423f, -189f, vec3<bool>(false, false, false), arg_0)))).c, abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.x, 4294967295u), var_0.yx)));
    let var_3 = var_2.c.x;
    var_1 = var_0;
    return func_2(func_2(var_2));
}

fn func_1() -> i32 {
    var var_0 = 511f;
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(-49809i, ~1i), u_input.a.x, -2147483647i);
    let var_2 = func_5(func_4(func_2(Struct_1(_wgslsmith_f_op_f32(step(-424f, 220f)), 1686f, vec3<bool>(true, true, true), u_input.b)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -320f)), -1642f, func_2(func_2(Struct_1(683f, -1938f, vec3<bool>(true, false, false), vec2<u32>(4294967295u, 15180u)))).c, vec2<u32>(4294967295u, 34908u) ^ reverseBits(vec2<u32>(u_input.b.x, u_input.b.x))), func_2(func_2(Struct_1(373f, -441f, vec3<bool>(false, true, true), vec2<u32>(u_input.b.x, u_input.b.x))))));
    var_0 = var_2.a;
    var_1 = vec3<i32>(-1i) * -firstTrailingBit(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(0i, var_1.x, 48053i)) >> (vec3<u32>(var_2.d.x, 0u, 0u) % vec3<u32>(32u)));
    return ~countOneBits(var_1.x);
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = ~select(vec4<u32>(u_input.b.x, 36472u, _wgslsmith_sub_u32(~arg_1.d.x, max(arg_1.d.x, arg_1.d.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(27u, arg_1.d.x, 768u, u_input.b.x), vec4<u32>(46524u, 16350u, 1u, 4112u))), abs(~(~vec4<u32>(arg_1.d.x, 5835u, 1u, u_input.b.x))), arg_1.c.x);
    let var_1 = Struct_1(_wgslsmith_div_f32(arg_1.a, -753f), _wgslsmith_div_f32(2366f, -231f), arg_1.c, func_4(arg_1, arg_1, arg_1));
    let var_2 = var_1;
    let var_3 = vec4<i32>(i32(-1i) * -func_1(), _wgslsmith_add_i32(max(u_input.a.x, arg_0), -max(select(arg_2, arg_0, true), -arg_2)), 28655i, arg_2);
    var_0 = select(~_wgslsmith_clamp_vec4_u32(select(max(vec4<u32>(1u, 59704u, var_0.x, var_0.x), vec4<u32>(4294967295u, 27888u, arg_1.d.x, u_input.b.x)), vec4<u32>(1531u, var_1.d.x, 2617u, u_input.b.x) << (vec4<u32>(var_1.d.x, 4294967295u, 15852u, 82624u) % vec4<u32>(32u)), false), _wgslsmith_add_vec4_u32(~vec4<u32>(31551u, var_2.d.x, arg_1.d.x, 32971u), countOneBits(vec4<u32>(arg_1.d.x, var_1.d.x, arg_1.d.x, 85361u))), ~(~vec4<u32>(40461u, arg_1.d.x, 37381u, 33685u))), vec4<u32>(select(countOneBits(29035u), min(arg_1.d.x, var_1.d.x), true), _wgslsmith_dot_vec2_u32(firstTrailingBit(arg_1.d), countOneBits(~u_input.b)), 5379u, arg_1.d.x), true);
    return _wgslsmith_f_op_f32(-func_2(var_2).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1068f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(u_input.a.x ^ func_1(), func_5(select(u_input.b, vec2<u32>(1u, u_input.b.x), false)), max(-u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(6447i, u_input.a.x), u_input.a.yx)))) + -805f));
    var var_1 = _wgslsmith_div_vec3_i32(abs(reverseBits(~_wgslsmith_clamp_vec3_i32(vec3<i32>(31205i, u_input.a.x, u_input.a.x), vec3<i32>(11802i, u_input.a.x, -2147483647i), vec3<i32>(-2147483647i, u_input.a.x, -48663i)))), ~u_input.a);
    let var_2 = _wgslsmith_f_op_f32(func_6(-abs(-2147483647i) & _wgslsmith_mod_i32(-u_input.a.x, -1i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1154f, -1709f))), 2287f, !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), ~(~vec2<u32>(u_input.b.x, u_input.b.x)) | u_input.b), u_input.a.x));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * _wgslsmith_f_op_f32(-var_2))) + _wgslsmith_f_op_f32(f32(-1f) * -1494f)), _wgslsmith_f_op_f32(var_2 + -1000f), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), u_input.b.x < (4294967295u << (u_input.b.x % 32u))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), false), false && all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false))), func_5(abs(_wgslsmith_div_vec2_u32(~u_input.b, ~vec2<u32>(4294967295u, u_input.b.x)))).d);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d, _wgslsmith_dot_vec4_i32(abs(max(~vec4<i32>(1i, var_1.x, 7290i, u_input.a.x), vec4<i32>(u_input.a.x, -36699i, 12400i, var_1.x))), abs(countOneBits(reverseBits(vec4<i32>(var_1.x, u_input.a.x, -10811i, 20457i))))), 41999u, vec4<f32>(-1000f, var_3.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -269f), var_2, true)), -1314f), u_input.a);
}

