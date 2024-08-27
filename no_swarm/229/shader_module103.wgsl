struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> bool {
    var var_0 = u_input.a.x;
    var_0 = -u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-465f, 209f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-596f, 258f))), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-659f, -328f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(185f, 986f), vec2<f32>(304f, 1068f))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(889f, -370f)))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-652f, -1246f))))));
    return false;
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = select(-abs(vec2<i32>(u_input.a.x, 0i & u_input.a.x)), select(-vec2<i32>(-u_input.a.x, -2147483647i), u_input.a.zw, !(!arg_0.zx)), all(vec4<bool>(arg_0.x, true, all(arg_0), true)));
    let var_1 = Struct_2(vec2<bool>(all(select(vec4<bool>(arg_0.x, false, true, true), arg_0, !arg_0.x)), func_3()), (1u ^ _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), ~u_input.b)) & u_input.b);
    let var_2 = select(vec4<u32>(u_input.b | ~103515u, 47172u, ~(~u_input.b), 15212u) & vec4<u32>(~_wgslsmith_mod_u32(58661u, 1u), 0u, select(u_input.b, var_1.b, var_1.a.x) | ~u_input.b, 4719u), ~_wgslsmith_add_vec4_u32(vec4<u32>(~4294967295u, ~u_input.b, firstTrailingBit(u_input.b), 4294967295u), ~(~vec4<u32>(11048u, 105143u, u_input.b, u_input.b))), arg_0.x);
    var var_3 = var_1;
    var_3 = Struct_2(var_1.a, 4294967295u);
    return Struct_3(Struct_2(!vec2<bool>(all(arg_0.xzx), true), 4294967295u), Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -857f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f))), arg_0), !(!vec2<bool>(any(vec3<bool>(var_3.a.x, var_1.a.x, arg_0.x)), var_1.a.x)), Struct_1(all(select(vec3<bool>(true, true, false), vec3<bool>(false, var_3.a.x, false), arg_0.zyx)) || true, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<f32>(-276f, _wgslsmith_f_op_f32(floor(2046f))))), !arg_0));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2088f, arg_0.d.b.x, 1864f, 1200f) - vec4<f32>(440f, 2630f, arg_0.b.b.x, arg_0.d.b.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-206f, 1000f, arg_0.d.b.x, -748f), vec4<f32>(arg_0.d.b.x, arg_0.b.b.x, 892f, arg_0.d.b.x), arg_0.c.x))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-402f, arg_0.b.b.x, 1693f, arg_0.d.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1234f, arg_0.d.b.x, arg_0.d.b.x, -739f))))), vec4<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(arg_0.b.c.x, arg_0.d.a)) & true, arg_0.c.x, arg_0.d.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-846f, arg_0.d.b.x, arg_0.d.b.x, arg_0.d.b.x) + vec4<f32>(arg_0.d.b.x, 492f, arg_0.d.b.x, arg_0.b.b.x)))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.d.b.x, -1159f, 531f, -522f))))));
    let var_1 = arg_0.b.c.x;
    let var_2 = Struct_2(arg_0.d.c.zx, 18354u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -795f)));
    let var_4 = true;
    return arg_0.d;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = func_4(arg_3).c;
    let var_1 = 1u;
    let var_2 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(u_input.b, 4294967295u, var_1, 0u), vec4<u32>(4294967295u, 61068u, u_input.b, u_input.b)), ~vec4<u32>(4294967295u, u_input.b, u_input.b, arg_3.a.b), vec4<u32>(u_input.b, var_1, 92298u, 0u) ^ vec4<u32>(var_1, arg_3.a.b, var_1, arg_3.a.b)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.b, 0u, u_input.b, var_1), vec4<u32>(12678u, 0u, 4294967295u, var_1)), select(vec4<u32>(var_1, 19816u, var_1, arg_3.a.b), vec4<u32>(4294967295u, arg_3.a.b, var_1, 4294967295u), arg_3.d.c))), ~vec4<u32>(arg_3.a.b, ~1u, var_1, abs(35261u)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -520f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -135f))))), 617f);
    var var_4 = Struct_3(func_2(!(!(!vec4<bool>(true, arg_1.c.x, true, true)))).a, func_4(func_2(func_2(!var_0).d.c)), arg_1.c.yz, func_2(!func_2(func_4(arg_3).c).b.c).d);
    return func_4(arg_3);
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1083f))), _wgslsmith_f_op_f32(f32(-1f) * -1853f));
    let var_1 = abs(~_wgslsmith_div_u32(~1u, _wgslsmith_add_u32(arg_1, u_input.b))) ^ abs(arg_1);
    let var_2 = func_5(abs(u_input.a.yww), Struct_1(arg_0.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -418f)))), !(!select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, false, true, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-602f + _wgslsmith_f_op_f32(var_0 * var_0)) + _wgslsmith_div_f32(-254f, _wgslsmith_f_op_f32(-1170f * var_0))) - 846f), Struct_3(Struct_2(arg_0.a, u_input.b), func_4(func_2(vec4<bool>(true, true, true, true))), vec2<bool>(func_2(!vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x)).c.x, _wgslsmith_f_op_f32(-var_0) == -1039f), func_2(func_4(func_2(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x))).c).d));
    var var_3 = arg_0.a;
    var var_4 = Struct_3(arg_0, Struct_1(all(vec4<bool>(func_3(), func_4(Struct_3(arg_0, var_2, vec2<bool>(false, var_2.a), Struct_1(arg_0.a.x, vec2<f32>(773f, -354f), var_2.c))).c.x, func_2(var_2.c).c.x, u_input.a.x < u_input.a.x)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1000f, var_0), _wgslsmith_div_f32(944f, -810f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 267f))), !func_4(Struct_3(Struct_2(arg_0.a, u_input.b), Struct_1(var_2.c.x, var_2.b, var_2.c), vec2<bool>(arg_0.a.x, var_2.c.x), var_2)).c), vec2<bool>((true & !arg_0.a.x) || arg_0.a.x, true), var_2);
    return _wgslsmith_f_op_f32(func_2(select(var_2.c, func_5(-u_input.a.xzw, var_4.b, 692f, Struct_3(var_4.a, var_4.b, vec2<bool>(false, true), var_4.b)).c, !select(var_4.d.c, vec4<bool>(false, var_2.c.x, var_2.a, arg_0.a.x), var_3.x))).b.b.x - _wgslsmith_f_op_f32(f32(-1f) * -882f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(step(479f, -549f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_2(vec2<bool>(false, false), 1u), ~9756u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -921f))), all(func_4(Struct_3(Struct_2(vec2<bool>(true, false), 101807u), Struct_1(true, vec2<f32>(-904f, 359f), vec4<bool>(false, true, false, false)), vec2<bool>(false, true), Struct_1(false, vec2<f32>(1156f, -462f), vec4<bool>(false, false, false, false)))).c.wyx))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-1456f - var_0.x), var_0.x))));
    var var_1 = func_4(Struct_3(Struct_2(vec2<bool>(true, true), u_input.b), Struct_1(!(0i > u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1189f), 1394f), vec4<bool>(true, true, true, true)), func_5(u_input.a.ywy, Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-556f, var_0.x)), func_2(vec4<bool>(false, true, true, true)).b.c), _wgslsmith_f_op_f32(f32(-1f) * -1832f), Struct_3(func_2(vec4<bool>(true, false, true, false)).a, func_2(vec4<bool>(true, true, true, true)).b, vec2<bool>(true, true), func_4(Struct_3(Struct_2(vec2<bool>(false, false), u_input.b), Struct_1(false, vec2<f32>(-1402f, 264f), vec4<bool>(false, true, false, false)), vec2<bool>(false, false), Struct_1(true, vec2<f32>(var_0.x, var_0.x), vec4<bool>(false, false, false, false)))))).c.xw, Struct_1(!(var_0.x > var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))), func_4(Struct_3(Struct_2(vec2<bool>(false, true), u_input.b), Struct_1(false, vec2<f32>(301f, 650f), vec4<bool>(true, false, true, true)), vec2<bool>(true, true), Struct_1(true, vec2<f32>(302f, var_0.x), vec4<bool>(false, true, false, false)))).c)));
    let var_2 = func_5(~firstTrailingBit(_wgslsmith_mult_vec3_i32(reverseBits(u_input.a.ywy), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.a.x, 0i), u_input.a.xwz))), Struct_1(var_1.a, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_f32(-func_2(var_1.c).d.b.x)), !vec4<bool>(false, any(var_1.c.zx), false, 515f != var_0.x)), -630f, func_2(var_1.c));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.b.x)) + func_2(func_5(u_input.a.xzy, func_4(func_2(vec4<bool>(false, var_2.a, var_2.c.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(479f, var_0.x, var_1.c.x))), func_2(func_2(var_1.c).d.c)).c).d.b.x);
    let var_4 = Struct_1(true, vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_2(var_1.c.zz, 22536u), u_input.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2076f)) * var_1.b.x)))), var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4.b.x, 1000f, -895f, 1000f))), _wgslsmith_f_op_f32(abs(var_1.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(963f, -855f))) - var_1.b)) + func_4(Struct_3(func_2(var_1.c).a, var_2, vec2<bool>(false, var_1.c.x), func_5(u_input.a.xzx, var_4, var_0.x, Struct_3(Struct_2(var_1.c.xz, 61998u), var_4, var_1.c.yy, Struct_1(false, vec2<f32>(315f, var_0.x), var_1.c))))).b));
}

