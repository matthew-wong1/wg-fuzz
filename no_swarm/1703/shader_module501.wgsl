struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = Struct_2(arg_2.a.a.yy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), 1414f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1507f) - arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1479f))))), arg_0.a, 0i);
    var var_1 = u_input.b.x;
    let var_2 = arg_2;
    var_0 = Struct_2(vec2<bool>(arg_0.a.c, any(vec2<bool>(false, true))), var_0.b, arg_0.a, _wgslsmith_sub_i32(_wgslsmith_mod_i32(firstTrailingBit(i32(-1i) * -1i), 9415i), ~arg_0.a.b.x));
    let var_3 = u_input.c.wzz;
    return Struct_2(arg_0.a.a.zx, vec4<f32>(1000f, _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-894f + -1646f), -1432f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(step(arg_1, var_0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1189f * arg_1) - arg_1) * var_0.b.x)), Struct_1(var_2.a.a, arg_0.a.b, any(!select(arg_2.a.a, arg_2.a.a, arg_2.a.a)), arg_2.a.d << (1u % 32u)), reverseBits(u_input.b.x));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> vec2<i32> {
    let var_0 = (_wgslsmith_div_f32(-1199f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-419f)))) == _wgslsmith_div_f32(func_2(Struct_3(Struct_1(vec3<bool>(arg_1.c, arg_0.x, arg_0.x), vec3<i32>(-1i, -4255i, arg_1.d), arg_1.c, 0i)), _wgslsmith_f_op_f32(1006f + -360f), Struct_3(Struct_1(vec3<bool>(arg_0.x, arg_1.c, arg_1.a.x), u_input.a.xwz, arg_0.x, u_input.a.x))).b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(449f)), _wgslsmith_f_op_f32(select(-307f, 1644f, false)), arg_0.x)))) == false;
    global0 = ~1u;
    var var_1 = func_2(Struct_3(Struct_1(vec3<bool>(any(vec2<bool>(arg_1.c, true)), var_0, var_0), -select(u_input.a.zzx, u_input.e.wxy, true), arg_0.x, u_input.e.x)), -1000f, Struct_3(func_2(Struct_3(Struct_1(arg_0.yzx, u_input.a.xwy, false, -30673i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-144f))), Struct_3(Struct_1(vec3<bool>(false, false, var_0), arg_1.b, arg_1.a.x, arg_1.d))).c)).c.a;
    var_1 = func_2(Struct_3(Struct_1(!vec3<bool>(var_1.x, false, true), ~u_input.e.xwz << (~u_input.c.wyy % vec3<u32>(32u)), false, countOneBits(_wgslsmith_div_i32(9665i, u_input.e.x)))), _wgslsmith_f_op_f32(1647f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-456f)) - 1201f)), Struct_3(Struct_1(arg_0.wyz, vec3<i32>(44022i, u_input.b.x, -36274i) | _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.d, 18937i, u_input.a.x), arg_1.b), arg_0.x, 2147483647i))).c.a;
    var_1 = select(!(!vec3<bool>(true, arg_1.a.x && var_0, var_1.x)), !(!select(arg_0.wyz, arg_0.wxw, any(arg_0))), var_1.x);
    return abs(arg_1.b.yx);
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = func_2(Struct_3(Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), _wgslsmith_mult_vec3_i32(u_input.a.wzx, vec3<i32>(1i, 42744i, 2147483647i)), true, select(2147483647i, 0i, true))), -182f, Struct_3(Struct_1(vec3<bool>(true, true, any(vec2<bool>(true, false))), -vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), true, u_input.e.x << (~u_input.d % 32u))));
    let var_1 = _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)))));
    var var_2 = var_0.b;
    var var_3 = -_wgslsmith_clamp_vec2_i32(func_3(vec4<bool>(var_0.a.x, true, u_input.c.x < arg_0, 44124u == u_input.d), func_2(Struct_3(Struct_1(vec3<bool>(false, var_0.a.x, false), var_0.c.b, true, var_0.c.b.x)), -553f, Struct_3(Struct_1(var_0.c.a, vec3<i32>(-1i, -15119i, -36469i), var_0.c.a.x, var_0.d))).c, u_input.c.x, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, arg_0), max(vec2<u32>(0u, u_input.d), u_input.c.yx))), _wgslsmith_add_vec2_i32(var_0.c.b.yx, vec2<i32>(u_input.a.x, -27672i)), -vec2<i32>(min(-1i, u_input.a.x), -13746i));
    var_2 = _wgslsmith_f_op_vec4_f32(select(var_0.b, var_0.b, !(!select(!vec4<bool>(false, var_0.a.x, false, true), select(vec4<bool>(false, false, var_0.c.c, true), vec4<bool>(true, var_0.c.a.x, var_0.a.x, true), true), select(vec4<bool>(var_0.c.a.x, true, false, var_0.a.x), vec4<bool>(false, var_0.a.x, true, false), var_0.a.x)))));
    return !(!select(false, false, true));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = abs(~arg_2.x);
    let var_1 = func_2(arg_0, arg_3.x, arg_0);
    let var_2 = Struct_3(func_2(Struct_3(func_2(Struct_3(var_1.c), _wgslsmith_div_f32(arg_3.x, arg_3.x), Struct_3(Struct_1(vec3<bool>(false, false, arg_1.x), var_1.c.b, arg_0.a.c, arg_2.x))).c), var_1.b.x, Struct_3(func_2(Struct_3(arg_0.a), _wgslsmith_f_op_f32(-var_1.b.x), arg_0).c)).c);
    let var_3 = _wgslsmith_f_op_f32(max(548f, _wgslsmith_f_op_f32(trunc(-2325f))));
    var var_4 = vec2<u32>(abs(0u), 1u);
    return func_2(Struct_3(var_2.a), var_3, Struct_3(Struct_1(!arg_0.a.a, vec3<i32>(arg_2.x, reverseBits(u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 0i, var_2.a.b.x), u_input.a)), select(1u != var_4.x, true & var_1.a.x, arg_1.x || var_2.a.c), i32(-1i) * -2327i))).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(Struct_1(vec3<bool>(true, any(vec2<bool>(true, true)), true), vec3<i32>(u_input.a.x, u_input.e.x, ~u_input.a.x), func_1(u_input.d) && true, func_2(Struct_3(Struct_1(vec3<bool>(false, false, true), vec3<i32>(-2147483647i, 18900i, -63649i), false, u_input.a.x)), _wgslsmith_f_op_f32(356f * -1061f), Struct_3(Struct_1(vec3<bool>(true, false, true), u_input.e.zww, true, 18616i))).d)), select(vec3<bool>(false, true, func_2(Struct_3(Struct_1(vec3<bool>(true, false, false), u_input.a.www, true, -16617i)), _wgslsmith_f_op_f32(ceil(-191f)), Struct_3(Struct_1(vec3<bool>(true, false, false), vec3<i32>(2147483647i, u_input.b.x, -1i), false, -2147483647i))).c.a.x), !func_2(Struct_3(Struct_1(vec3<bool>(true, true, false), u_input.e.xyw, false, u_input.b.x)), _wgslsmith_f_op_f32(min(-1000f, 258f)), Struct_3(Struct_1(vec3<bool>(true, false, true), u_input.a.wzx, true, 1751i))).c.a, select(!func_2(Struct_3(Struct_1(vec3<bool>(true, false, true), u_input.e.www, true, u_input.e.x)), 279f, Struct_3(Struct_1(vec3<bool>(true, true, true), u_input.a.wxy, false, u_input.a.x))).c.a, vec3<bool>(true, true, true), true)), -abs(~vec2<i32>(2147483647i, 0i) & vec2<i32>(-62357i, u_input.e.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -177f), -857f, _wgslsmith_f_op_f32(trunc(1550f))));
    let var_1 = var_0.a;
    var var_2 = _wgslsmith_sub_vec4_i32(~vec4<i32>(_wgslsmith_div_i32(u_input.e.x, var_0.d) & firstLeadingBit(var_0.b.x), ~func_2(Struct_3(Struct_1(vec3<bool>(var_1.x, var_1.x, true), vec3<i32>(-8879i, 0i, var_0.b.x), var_0.c, var_0.b.x)), 876f, Struct_3(Struct_1(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<i32>(var_0.b.x, u_input.b.x, 2147483647i), var_1.x, u_input.a.x))).d, -59539i, _wgslsmith_sub_i32(~var_0.d, ~0i)), vec4<i32>(35853i, ~min(0i | var_0.b.x, ~1i), var_0.b.x, firstTrailingBit(2147483647i)));
    let var_3 = !select(vec4<bool>(var_0.a.x, _wgslsmith_f_op_f32(-1799f + -2434f) < _wgslsmith_f_op_f32(round(-570f)), true, var_0.c), !select(vec4<bool>(var_1.x, false, true, var_0.c), !vec4<bool>(false, var_1.x, var_0.c, var_0.c), !vec4<bool>(var_0.c, false, var_0.a.x, var_0.a.x)), vec4<bool>(true, var_0.c, false, all(select(vec4<bool>(true, var_0.a.x, true, false), vec4<bool>(var_0.a.x, false, false, var_0.c), vec4<bool>(var_1.x, var_0.c, true, var_0.a.x)))));
    var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1100f + 1000f))), -969f)), firstTrailingBit(30112u), var_2.yyz, u_input.e.x);
}

