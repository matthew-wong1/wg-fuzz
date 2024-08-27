struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: u32,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_4(1f, 0u, ~(~global0.a >> (u_input.a % 32u)), Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-780f))))), !all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), all(vec4<bool>(false, true, false, true))), vec3<bool>(true, true, true), true), -u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(1453f - _wgslsmith_f_op_f32(f32(-1f) * -116f)), _wgslsmith_f_op_f32(f32(-1f) * -980f))), Struct_1(1u));
    var var_1 = (u_input.b.x << (~50665u % 32u)) >> (global0.a % 32u);
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.e.x, var_0.d.e.x, _wgslsmith_f_op_f32(var_0.a * var_0.d.a), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(273f - var_0.a), _wgslsmith_div_f32(var_0.a, -1391f))))));
    global0 = var_0.e;
    return _wgslsmith_f_op_f32(min(954f, -754f));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = u_input.b.x;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(func_3()), true && (firstLeadingBit(global0.a) > _wgslsmith_mult_u32(arg_0, global0.a ^ 4294967295u)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), ~2147483647i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1055f), -1685f) * vec2<f32>(_wgslsmith_f_op_f32(-979f - -563f), _wgslsmith_f_op_f32(sign(794f)))))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-300f)))), min(1u, global0.a), arg_0, Struct_3(_wgslsmith_f_op_f32(307f + -1012f), var_1.b, var_1.c, select(~(~27407i), u_input.b.x, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.e * vec2<f32>(var_1.e.x, var_1.e.x)) + _wgslsmith_f_op_vec2_f32(sign(var_1.e))) - vec2<f32>(_wgslsmith_f_op_f32(-1000f * var_1.e.x), _wgslsmith_f_op_f32(exp2(var_1.e.x))))), Struct_1(arg_0));
    var_0 = ~countOneBits(_wgslsmith_add_i32(1i ^ max(var_2.d.d, -1i), max(var_2.d.d ^ -2147483647i, min(23619i, 2147483647i))));
    let var_3 = var_2.e;
    return Struct_1(1u);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: f32) -> Struct_4 {
    global0 = arg_0;
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-758f - _wgslsmith_f_op_f32(-arg_3))), false, select(vec3<bool>(false, !(arg_1 == true), false), !select(select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, arg_1), true), vec3<bool>(arg_1, true, arg_2)), select(vec3<bool>(arg_1, all(vec3<bool>(true, arg_1, false)), arg_1 && false), vec3<bool>(arg_1 || false, true, arg_2), vec3<bool>(false, false, true))), ~(~(-(~u_input.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(794f + -362f), arg_3), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(112f, arg_3), vec2<f32>(1686f, 1000f)))), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3)))));
    let var_1 = Struct_1(29998u);
    global0 = func_2(_wgslsmith_clamp_u32(1u, global0.a, reverseBits(select(countOneBits(61249u), u_input.a, -2147483647i >= var_0.d))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(454f)))))), ~1u, _wgslsmith_mod_u32(~(func_2(u_input.a).a & (30852u ^ u_input.a)), global0.a ^ min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 32570u), vec2<u32>(43846u, 4294967295u)), 1u | global0.a)), var_0, func_2(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.a, max(u_input.a, 1781u), 19995u), func_2(global0.a).a)));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.d.e.x)) + -367f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a + var_2.a), -215f)), arg_2))), _wgslsmith_sub_u32(abs(var_1.a), ~1u), 0u, var_0, func_2(~1u));
}

fn func_1(arg_0: bool) -> vec3<bool> {
    global0 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a, global0.a), vec2<u32>(4550u, u_input.a), vec2<u32>(10204u, u_input.a)) & ~vec2<u32>(u_input.a, 5103u), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.a, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a, global0.a)))));
    let var_0 = func_4(func_2(global0.a), !arg_0, arg_0 && arg_0, _wgslsmith_f_op_f32(func_3()));
    let var_1 = ~global0.a;
    var var_2 = ~countOneBits(vec4<u32>(0u, firstTrailingBit(u_input.a), _wgslsmith_div_u32(firstTrailingBit(1u), 4294967295u), var_0.b));
    var var_3 = false;
    return select(var_0.d.c, vec3<bool>(false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-952f)), var_0.d.a)) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.d.a))), func_4(var_0.e, false, any(var_0.d.c.yx), var_0.d.a).d.c.x), vec3<bool>(var_0.d.c.x, any(func_4(Struct_1(59931u), arg_0, arg_0, -401f).d.c.xz) || arg_0, var_0.d.b));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: i32) -> Struct_4 {
    var var_0 = _wgslsmith_mult_vec4_i32(abs(~u_input.b), u_input.b);
    var var_1 = -var_0.xw;
    var var_2 = arg_1.a;
    var_0 = vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, -var_1.x, -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.xy, vec2<i32>(arg_1.d, arg_1.d)), ~u_input.b.xy)), min(_wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, 1i), 1i) | min(arg_0 | arg_1.d, ~arg_0), ~(_wgslsmith_mult_i32(18349i, var_0.x) >> (func_2(u_input.a).a % 32u))), -2147483647i, arg_0);
    let var_3 = ~(abs(u_input.a) | abs(_wgslsmith_div_u32(~6451u, _wgslsmith_mult_u32(global0.a, u_input.a))));
    return Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.e.x - arg_1.a), 561f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_4(func_2(4294967295u), arg_1.c.x, any(!vec3<bool>(arg_1.c.x, false, true)), 824f).b, u_input.a, Struct_3(-1646f, _wgslsmith_f_op_f32(-arg_1.a) < _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(abs(-367f))), select(!(!arg_1.c), vec3<bool>(true, true, true), var_1.x != _wgslsmith_dot_vec2_i32(var_0.yw, var_0.xw)), -24619i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(461f, 1641f))), Struct_1(var_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(abs(1i), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2010f), _wgslsmith_f_op_f32(round(-887f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1756f))))), true | any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), select(vec3<bool>(true, select(true, true, true), true), func_1(all(vec3<bool>(true, false, true))), func_1(true)), u_input.b.x, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(197f, 1372f), vec2<f32>(-889f, _wgslsmith_f_op_f32(ceil(-659f)))))), 1i);
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.d.a, var_0.a))))), var_0.d.e)));
    var var_2 = var_0.d.c;
    global0 = Struct_1(4294967295u);
    let var_3 = _wgslsmith_add_u32(global0.a, _wgslsmith_add_u32(~global0.a, _wgslsmith_mod_u32(~0u, abs(33456u))) & (4294967295u | var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_add_u32(23003u, 59895u))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-439f - var_0.a)), _wgslsmith_f_op_f32(func_3()), 1000f, _wgslsmith_f_op_f32(round(var_0.d.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a, 837f, 1203f, -490f)))), var_0.d.b)), var_0.d.e, 1u, u_input.b);
}

