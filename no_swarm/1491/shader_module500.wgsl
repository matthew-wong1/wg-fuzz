struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<u32> {
    let var_0 = ~vec4<i32>(-_wgslsmith_mod_i32(29624i, -1i) | _wgslsmith_div_i32(u_input.a >> (u_input.c.x % 32u), -u_input.a), u_input.a, ~(-11672i), ~_wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(u_input.a, u_input.a)));
    var var_1 = firstTrailingBit(min(u_input.c.wz << (vec2<u32>(~0u, _wgslsmith_sub_u32(0u, u_input.b)) % vec2<u32>(32u)), u_input.c.zw));
    var var_2 = Struct_1(any(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false))), vec3<u32>(~(~(126988u & u_input.c.x)), var_1.x, u_input.b), u_input.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-276f * -1750f), _wgslsmith_f_op_f32(round(1600f)), -1471f) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_f_op_f32(242f - -1236f), -1301f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(563f, 1211f, 290f), vec3<f32>(524f, -785f, 801f), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-608f, 333f, -779f) + vec3<f32>(855f, 1186f, -669f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1721f, 131f, 845f))))));
    var_2 = Struct_1(~(~1i) > (u_input.a >> (var_1.x % 32u)), u_input.c.xzx, _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 4294967295u, 4294967295u, 21752u), u_input.c), var_2.b.x & _wgslsmith_mult_u32(var_2.b.x, 0u)) ^ 1u, vec3<f32>(var_2.d.x, 553f, var_2.d.x));
    let var_3 = Struct_1(true, ~(~vec3<u32>(select(var_1.x, u_input.b, false), _wgslsmith_add_u32(u_input.b, 9822u), ~48241u)), var_1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.x, var_2.d.x, 543f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1174f), _wgslsmith_f_op_f32(sign(var_2.d.x)), -1466f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_2.d), _wgslsmith_f_op_vec3_f32(-var_2.d))))));
    return u_input.c;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)))))) + arg_0.d.x);
    let var_0 = ~countOneBits(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -16924i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, u_input.a))), abs(abs(vec2<i32>(u_input.a, u_input.a)))));
    var var_1 = vec2<u32>(~27102u, ~1u);
    global0 = _wgslsmith_f_op_f32(floor(-307f));
    let var_2 = func_3();
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(211f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-228f, arg_2)), 455f, arg_1.d.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1009f, arg_2, _wgslsmith_f_op_f32(abs(-1400f)), -2117f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(781f, arg_0.d.x, arg_2, 1742f), vec4<f32>(481f, arg_0.d.x, 1085f, -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -156f, arg_2, -762f))))));
    let var_1 = func_2(arg_0, true, _wgslsmith_f_op_vec3_f32(-arg_1.d));
    global0 = _wgslsmith_f_op_f32(trunc(var_1.d.x));
    let var_2 = true;
    let var_3 = var_2;
    return select(!select(!select(vec3<bool>(var_2, false, true), vec3<bool>(var_3, var_2, var_1.a), arg_0.a), select(!vec3<bool>(var_2, true, true), select(vec3<bool>(true, var_1.a, var_3), vec3<bool>(false, var_2, arg_1.a), vec3<bool>(var_3, var_1.a, var_2)), !var_2), vec3<bool>(select(false, true, arg_0.a), true, all(vec2<bool>(false, false)))), select(select(!(!vec3<bool>(true, arg_1.a, true)), !select(vec3<bool>(true, true, false), vec3<bool>(arg_1.a, var_1.a, var_3), vec3<bool>(false, true, arg_1.a)), !vec3<bool>(var_2, arg_0.a, var_2)), select(vec3<bool>(arg_0.a, !arg_1.a, false), select(select(vec3<bool>(arg_0.a, true, false), vec3<bool>(var_2, false, var_3), true), vec3<bool>(arg_0.a, arg_0.a, var_1.a), vec3<bool>(var_1.a, false, arg_0.a)), vec3<bool>(all(vec2<bool>(var_1.a, var_2)), select(arg_1.a, var_2, arg_0.a), true)), vec3<bool>(var_2, false, false)), (select(false, all(vec4<bool>(true, var_1.a, false, false)), all(vec2<bool>(false, false))) && all(select(vec2<bool>(arg_1.a, var_2), vec2<bool>(true, arg_1.a), vec2<bool>(var_2, true)))) & all(vec3<bool>(func_2(Struct_1(false, arg_1.b, 4294967295u, vec3<f32>(arg_1.d.x, -176f, var_1.d.x)), arg_1.a, arg_1.d).a, select(true, false, false), any(vec4<bool>(arg_0.a, false, true, arg_0.a)))));
}

fn func_1() -> u32 {
    let var_0 = vec3<i32>(i32(-1i) * -u_input.a, 0i, -2147483647i);
    var var_1 = select(select(!vec3<bool>(any(vec3<bool>(true, true, false)), all(vec4<bool>(true, true, true, false)), true), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false), !select(vec3<bool>(all(vec4<bool>(false, true, true, true)), any(vec2<bool>(false, false)), true), vec3<bool>(false, false, true), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), true))), select(vec3<bool>(true, any(vec4<bool>(false, false, false, true)), false), !func_4(func_2(Struct_1(true, u_input.c.zxy, u_input.c.x, vec3<f32>(-302f, -439f, 1682f)), true, vec3<f32>(758f, -751f, 591f)), func_2(Struct_1(false, vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), u_input.b, vec3<f32>(-717f, -451f, 854f)), false, vec3<f32>(-984f, 1140f, 108f)), -1692f), vec3<bool>(true, true, true)));
    let var_2 = select(vec4<bool>(false, any(vec3<bool>(var_1.x, false, var_1.x)), false, !(!any(vec3<bool>(true, false, true)))), vec4<bool>((u_input.b > ~u_input.b) && var_1.x, var_1.x, true, select(true, all(func_4(Struct_1(var_1.x, vec3<u32>(u_input.c.x, u_input.b, u_input.c.x), 74690u, vec3<f32>(1290f, 1713f, 258f)), Struct_1(var_1.x, u_input.c.xyx, 3632u, vec3<f32>(348f, -951f, 548f)), -1213f).zy), true)), select(!select(vec4<bool>(true, false, var_1.x, var_1.x), !vec4<bool>(true, var_1.x, var_1.x, var_1.x), select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false), var_1.x)), select(!select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), vec4<bool>(true, true, true, !var_1.x), true), select(vec4<bool>(true, any(vec2<bool>(var_1.x, false)), false, true), vec4<bool>(any(vec3<bool>(var_1.x, var_1.x, true)), all(vec4<bool>(true, var_1.x, var_1.x, var_1.x)), !var_1.x, all(vec4<bool>(var_1.x, var_1.x, var_1.x, true))), _wgslsmith_mod_i32(-1i, var_0.x) <= _wgslsmith_sub_i32(72875i, u_input.a))));
    var_1 = var_2.yyy;
    global0 = _wgslsmith_div_f32(-808f, 847f);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_1(~u_input.b > 4294967295u, u_input.c.xzx, func_1(), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-356f + 610f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1613f, -1000f) - -1184f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1244f, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1335f)) * _wgslsmith_f_op_f32(f32(-1f) * -1055f))));
    var var_2 = abs(_wgslsmith_div_i32(-75023i, -1i));
    var_0 = !(!var_1.a | (1i <= -(0i | u_input.a)));
    var var_3 = _wgslsmith_dot_vec2_i32(~(-_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -40273i), vec2<i32>(u_input.a, -2147483647i)), firstLeadingBit(vec2<i32>(-2147483647i, 1i)))), firstTrailingBit(vec2<i32>(u_input.a ^ -34079i, min(u_input.a, _wgslsmith_clamp_i32(u_input.a, 1i, 1i)))));
    let var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

