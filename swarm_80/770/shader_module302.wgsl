struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<f32> {
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -1895f))), 584f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(225f, -400f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(284f, -1065f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(1152f * -1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -832f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: f32, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = arg_0.b;
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-178f, 979f), _wgslsmith_f_op_vec2_f32(min(var_0.a, vec2<f32>(var_0.a.x, -607f))), vec2<bool>(arg_0.b.b.x, true))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_0.b.a.x) - vec2<f32>(arg_2, 641f)), arg_0.b.a))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-920f, -915f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(var_0.a)))))), vec2<bool>(-1000f > arg_0.b.a.x, !(_wgslsmith_f_op_f32(arg_0.b.a.x * arg_0.b.a.x) < _wgslsmith_f_op_f32(-889f - 1826f))), 3126u);
    return select(vec3<bool>(!any(select(var_0.b, arg_0.b.b, arg_0.b.b)), arg_0.b.b.x, true), select(select(!(!vec3<bool>(false, var_0.b.x, false)), select(vec3<bool>(false, true, arg_0.b.b.x), select(vec3<bool>(var_0.b.x, arg_0.b.b.x, arg_0.b.b.x), vec3<bool>(true, false, true), true), true), true), vec3<bool>(arg_0.b.b.x, var_0.b.x, !arg_0.b.b.x), !all(vec4<bool>(false, false, true, true))), !select(select(select(vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(false, false, true), var_0.b.x), vec3<bool>(true, true, true), arg_0.b.b.x), !select(vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(arg_0.b.b.x, true, true), vec3<bool>(arg_0.b.b.x, arg_0.b.b.x, true)), all(vec2<bool>(true, true))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: vec4<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.x, arg_3.x))), arg_3.x);
    var var_1 = Struct_2(1u, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1532f + arg_3.x), 342f)), vec2<bool>(all(select(arg_1, vec2<bool>(false, true), arg_1.x)), arg_0.x), ~(~(45461u | arg_2.x))), arg_3.x, min(~(vec2<i32>(28170i, u_input.d.x) | _wgslsmith_clamp_vec2_i32(vec2<i32>(30241i, u_input.e), u_input.d.xy, vec2<i32>(u_input.d.x, u_input.b.x))), max(~vec2<i32>(-29448i, -44608i), u_input.d.yy)));
    let var_2 = var_1.b;
    let var_3 = _wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, ~u_input.d.x), ~countOneBits(var_1.d)), max(var_1.d, ~u_input.b.zx));
    var_1 = Struct_2(arg_2.x, var_1.b, var_1.c, ~vec2<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.d), u_input.b), -_wgslsmith_dot_vec4_i32(u_input.d, u_input.d)));
    return arg_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32) -> f32 {
    var var_0 = ~abs(max(max(1u, u_input.c.x), _wgslsmith_sub_u32(0u, u_input.c.x))) != arg_1.a;
    var var_1 = all(func_4(select(func_2(Struct_2(arg_1.a, Struct_1(arg_1.b.a, arg_1.b.b, 71936u), -793f, vec2<i32>(arg_1.d.x, u_input.e)), max(u_input.c.xx, vec2<u32>(arg_1.b.c, arg_1.b.c)), _wgslsmith_f_op_f32(f32(-1f) * -296f), ~arg_1.d), arg_0, all(select(arg_0, vec3<bool>(arg_0.x, arg_1.b.b.x, arg_1.b.b.x), false))), arg_1.b.b, _wgslsmith_clamp_vec2_u32(u_input.c.zx, ~(~u_input.c.yy), u_input.c.wy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 870f, arg_2, 1818f) * vec4<f32>(-831f, arg_2, 1554f, arg_1.c))))));
    let var_2 = arg_1.b;
    var_0 = any(var_2.b);
    var var_3 = true == (true == !var_2.b.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(max(arg_1.c, 462f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1496f, _wgslsmith_f_op_f32(arg_2 + arg_2))))) * _wgslsmith_f_op_f32(1984f - _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x))));
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> bool {
    var var_0 = Struct_2(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, abs(~u_input.c.x)), u_input.c.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_vec2_f32(func_3()).x), _wgslsmith_f_op_f32(trunc(arg_0))), vec2<bool>(any(select(vec4<bool>(arg_1.b.b.x, true, false, arg_1.b.b.x), vec4<bool>(true, arg_1.b.b.x, false, true), vec4<bool>(true, arg_1.b.b.x, false, arg_1.b.b.x))), true), _wgslsmith_sub_u32(35277u, u_input.a)), -374f, -select(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.e, 0i, -2147483647i, arg_1.d.x)), u_input.b.x), abs(vec2<i32>(-1i, -42960i)) & -vec2<i32>(arg_1.d.x, arg_1.d.x), vec2<bool>(false, true)));
    var var_1 = select(arg_1.d, u_input.b.yy, var_0.b.b);
    var var_2 = !(_wgslsmith_dot_vec3_i32(vec3<i32>(max(1i, -1i), var_1.x, var_1.x), u_input.d.yzx) <= 30084i);
    var_0 = arg_1;
    let var_3 = arg_1;
    return select(max(1i, -1i), -(~(-arg_1.d.x)), func_4(!(!vec3<bool>(arg_1.b.b.x, var_0.b.b.x, arg_1.b.b.x)), !vec2<bool>(var_0.b.b.x, var_0.b.b.x), ~u_input.c.ww, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1717f, 1948f, 1113f, arg_0)))).x) < (-1i | var_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(true, true, true), vec3<bool>(true, !all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), func_5(_wgslsmith_f_op_f32(func_1(vec3<bool>(false, true, true), Struct_2(73517u, Struct_1(vec2<f32>(-704f, 1532f), vec2<bool>(true, true), 1u), 865f, vec2<i32>(31042i, u_input.b.x)), -738f)), Struct_2(u_input.a, Struct_1(vec2<f32>(1085f, 1418f), vec2<bool>(false, false), 0u), -1690f, u_input.b.ww)) == any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))), vec3<bool>(true, false, all(func_4(vec3<bool>(false, false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<u32>(u_input.c.x, 72146u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1142f, -1466f, -1727f, 1000f) - vec4<f32>(667f, 1381f, 504f, -464f))))));
    var var_1 = _wgslsmith_mod_i32(-1i, -1i);
    var var_2 = u_input.c;
    var_1 = -35537i;
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-246f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1354f * -635f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(653f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(107f, 315f))) - _wgslsmith_f_op_f32(sign(1184f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(72022u, u_input.c.x, max(_wgslsmith_add_u32(u_input.a, 10290u), _wgslsmith_add_u32(27525u, var_2.x)), abs(reverseBits(1u))), min(_wgslsmith_dot_vec3_i32(u_input.d.wwz, u_input.b.yyw), 1i), ~1i ^ abs(u_input.e));
}

