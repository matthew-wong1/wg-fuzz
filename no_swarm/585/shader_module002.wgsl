struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<f32> = vec2<f32>(630f, -656f);

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 60u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_4) -> bool {
    var var_0 = 2056u;
    var var_1 = Struct_4(arg_0.a);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1112f, global1.x), _wgslsmith_f_op_f32(-1202f + _wgslsmith_f_op_f32(var_1.a.x + -241f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, -784f))))) + _wgslsmith_f_op_vec2_f32(-var_1.a.xz));
    var var_2 = Struct_3(arg_1.a);
    var var_3 = all(vec2<bool>(true, true));
    return true;
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -228f), global1.x, global1.x, global1.x), vec4<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), -291f, _wgslsmith_f_op_f32(abs(global1.x)), 973f)) - vec4<f32>(_wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1092f)), global1.x, -1378f)));
    global0 = all(select(select(!arg_0.c.ywy, vec3<bool>(true, arg_0.c.x && true, select(true, false, arg_0.c.x)), vec3<bool>(false, func_3(Struct_4(var_0.a), Struct_3(arg_0.c), Struct_4(var_0.a)), arg_0.c.x && arg_0.c.x)), vec3<bool>(arg_0.c.x, true, arg_0.c.x), !select(arg_0.c.wyx, !arg_0.c.wxw, arg_0.c.x)));
    global0 = !arg_0.c.x;
    global1 = _wgslsmith_f_op_vec2_f32(-var_0.a.wx);
    var var_1 = select(vec3<bool>(true, any(select(arg_0.c, !arg_0.c, select(vec4<bool>(false, false, arg_0.c.x, arg_0.c.x), vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, false), arg_0.c.x))), arg_0.d > 1i), select(vec3<bool>(select(arg_0.c.x, arg_0.c.x, true) && true, true, true), vec3<bool>(any(arg_0.c.yxy), arg_0.c.x, any(select(arg_0.c.yzx, vec3<bool>(false, arg_0.c.x, arg_0.c.x), arg_0.c.x))), all(!select(vec4<bool>(arg_0.c.x, false, true, arg_0.c.x), vec4<bool>(false, arg_0.c.x, false, arg_0.c.x), true))), !(!vec3<bool>(true, true, any(arg_0.c.xy))));
    return select(!vec3<bool>(false, arg_0.c.x, arg_0.c.x), arg_0.c.wyw, vec3<bool>(true, arg_0.c.x, u_input.d < max(u_input.d, global2.x)));
}

fn func_1(arg_0: f32) -> Struct_4 {
    global0 = select(!all(vec3<bool>(true, true, true)), true, any(vec2<bool>(true, true))) == !(!any(vec2<bool>(true, false)));
    let var_0 = !select(vec2<bool>(select(true, true, true), true), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), false), true);
    var var_1 = !all(!(!(!var_0)));
    global1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), global1.x, true)), 1399f)));
    let var_2 = select(!select(select(!vec3<bool>(false, false, var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), true), true), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false), var_0.x), select(func_2(Struct_1(vec4<u32>(0u, 53332u, u_input.e.x, 12859u), u_input.a.x, vec4<bool>(var_0.x, false, true, var_0.x), -22022i)), !vec3<bool>(var_0.x, false, var_0.x), var_0.x)), vec3<bool>(all(var_0) && false, all(vec4<bool>(true, false, var_0.x, var_0.x)), select(var_0.x, (u_input.d >> (global2.x % 32u)) >= ~u_input.b, select(global2.x, global2.x, false) <= max(6208u, u_input.e.x))), true);
    return Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1643f, global1.x, 3056f, arg_0) + vec4<f32>(arg_0, global1.x, arg_0, 1292f)))) * vec4<f32>(420f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-524f, arg_0)) + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))));
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> Struct_3 {
    global0 = true;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(685f * 735f) - arg_0.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_1))))))));
    var var_0 = func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_0.a.x)))));
    var var_1 = func_1(var_0.a.x).a.x;
    var var_2 = Struct_1(vec4<u32>(select(_wgslsmith_clamp_u32(u_input.d, global2.x, global2.x), 1u | u_input.b, false) ^ ~71215u, 12412u, _wgslsmith_dot_vec2_u32(vec2<u32>(~9711u, _wgslsmith_mult_u32(u_input.e.x, 4294967295u)), vec2<u32>(u_input.e.x ^ 4294967295u, ~global2.x)), 1u), -11050i, vec4<bool>(!all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2412f * 327f), _wgslsmith_f_op_f32(var_0.a.x - 1313f))) == -714f, false, true), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c, min(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.a.x), u_input.a.yy))), _wgslsmith_div_i32(-44895i, 20280i)));
    return Struct_3(vec4<bool>(var_2.c.x, select(var_2.c.x, true, false), (var_2.c.x & true) == (true | any(var_2.c.zz)), 0u > max(var_2.a.x, u_input.b)));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec2_u32(reverseBits(u_input.e), u_input.e);
    var var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~58141u, ~(~0u), 4294967295u, u_input.d), max(~firstTrailingBit(vec4<u32>(1u, 4294967295u, var_0.x, 21565u)), reverseBits(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e.x, global2.x, 20188u, 4294967295u), vec4<u32>(4218u, 4294967295u, global2.x, global2.x)))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(step(func_1(global1.x).a.x, 697f)), 946f);
    global0 = !arg_0.a.x;
    var var_2 = ((u_input.c ^ -(~u_input.c)) << (var_0.x % 32u)) & 37411i;
    return Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, var_0.x, _wgslsmith_div_u32(global2.x, global2.x & 11983u)), vec4<u32>(u_input.d, 13327u, _wgslsmith_dot_vec2_u32(vec2<u32>(35015u, global2.x), vec2<u32>(1u, u_input.d)), firstLeadingBit(20065u)) >> (~(vec4<u32>(var_0.x, global2.x, 59927u, 1u) | vec4<u32>(u_input.e.x, 101252u, global2.x, 0u)) % vec4<u32>(32u))), u_input.a.x, !select(vec4<bool>(true, any(vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x)), !arg_0.a.x, arg_0.a.x), vec4<bool>(true, true, false, func_3(Struct_4(vec4<f32>(-1796f, -1000f, global1.x, global1.x)), arg_0, Struct_4(vec4<f32>(global1.x, -404f, -589f, -262f)))), arg_0.a), -1i);
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(func_5(func_4(Struct_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, -1000f, global1.x, global1.x)))), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(abs(global1.x))))));
    var var_1 = !(!var_0.a.c.wx);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, global1.x)))) * vec2<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -1000f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -900f)))));
    var_1 = select(var_0.a.c.wx, select(vec2<bool>(true, !(arg_1.c.x || false)), func_5(func_4(func_1(214f), _wgslsmith_f_op_f32(ceil(1176f)))).c.ww, vec2<bool>(all(!var_0.a.c), var_0.a.c.x)), !select(var_0.a.c.wy, func_2(func_5(Struct_3(var_0.a.c))).yz, true));
    global0 = var_1.x;
    return Struct_2(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec2<u32>(1u, _wgslsmith_add_u32(u_input.d, global2.x)) << (reverseBits(~(~vec2<u32>(4294967295u, 0u))) % vec2<u32>(32u)), func_5(func_4(func_1(_wgslsmith_div_f32(-1386f, global1.x)), 1000f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -1000f) + vec2<f32>(global1.x, global1.x))) * vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(abs(-431f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -151f), _wgslsmith_f_op_f32(global1.x * 1726f)), vec2<f32>(_wgslsmith_f_op_f32(269f * -1000f), _wgslsmith_div_f32(global1.x, global1.x)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, _wgslsmith_f_op_f32(187f + 1241f)))), vec2<f32>(global1.x, -1372f))));
    global0 = !(!func_4(Struct_4(vec4<f32>(-1685f, var_1.x, global1.x, 653f)), 725f).a.x);
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(485f, global1.x)))), _wgslsmith_f_op_f32(-var_1.x))), -818f)) == -204f;
    var var_2 = _wgslsmith_mult_i32(-func_5(Struct_3(vec4<bool>(var_0.a.c.x, var_0.a.c.x, true, var_0.a.c.x))).d, -(~_wgslsmith_mult_i32(0i, 2147483647i)) | _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(-u_input.a.zxy, vec3<i32>(var_0.a.b, 1i, -10139i)), var_0.a.d, func_6(~u_input.e, var_0.a).a.d));
    let var_3 = 21778u;
    let x = u_input.a;
    s_output = StorageBuffer(1u, max(var_0.a.a.zwx, ~(select(var_0.a.a.wxx, vec3<u32>(41551u, 1u, var_0.a.a.x), var_0.a.c.x) & var_0.a.a.zxw)), var_0.a.a.xyx, var_3);
}

