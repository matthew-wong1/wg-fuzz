struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = arg_0.c;
    var var_1 = Struct_3(~u_input.a);
    var_1 = Struct_3(u_input.a);
    global0 = arg_0;
    let var_2 = Struct_5(Struct_1(!arg_2.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-788f * var_0.b))))), arg_2.b), ~(~firstTrailingBit(reverseBits(vec2<u32>(998u, 1u)))), (vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d, 2147483647i), vec2<i32>(-52218i, global0.d)), i32(-1i) * -32459i) & vec2<i32>(arg_0.d | -7227i, -2147483647i)) & max(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.d, 6369i), vec2<i32>(-65400i, global0.d)) | vec2<i32>(-8135i, global0.d), abs(min(vec2<i32>(arg_0.d, 2147483647i), vec2<i32>(arg_0.d, arg_0.d)))), _wgslsmith_mod_u32(u_input.a, ~1u));
    return var_2.a.b;
}

fn func_2(arg_0: vec2<bool>) -> vec2<bool> {
    global0 = Struct_2(global0.c, vec4<f32>(-354f, 156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global0.c.a, 731f, global0.a.b), vec4<f32>(global0.b.x, global0.c.b, global0.b.x, 512f), global0.c, global0.d), vec2<f32>(global0.b.x, global0.c.c), global0.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c))))), global0.a, global0.d);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -196f), _wgslsmith_f_op_f32(sign(global0.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-434f)) * 293f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.b + 1097f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(107f - global0.a.b), _wgslsmith_f_op_f32(533f - 786f))))));
    let var_1 = vec2<i32>(global0.d, ~_wgslsmith_mult_i32(-3576i, global0.d));
    var var_2 = global0.b.zwx;
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b.ywy * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global0.b.xzy - global0.b.zyy))))));
    return vec2<bool>(!(!all(!vec4<bool>(true, arg_0.x, false, arg_0.x))), false);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<f32>) -> f32 {
    let var_0 = select(select(vec4<bool>(!select(true, global0.c.a.x, global0.a.a.x), all(arg_0.yy), any(select(vec3<bool>(arg_0.x, arg_0.x, global0.a.a.x), vec3<bool>(false, false, true), vec3<bool>(arg_0.x, global0.a.a.x, false))), global0.a.a.x), select(!(!vec4<bool>(global0.c.a.x, arg_0.x, false, arg_0.x)), select(global0.c.a, vec4<bool>(true, arg_0.x, false, global0.a.a.x), true), !(!global0.a.a)), true), !vec4<bool>(false, false, false, arg_0.x), vec4<bool>(false, arg_0.x, !(_wgslsmith_f_op_f32(-351f - arg_2.x) < global0.b.x), ~1u < abs(min(1u, u_input.a))));
    var var_1 = _wgslsmith_mult_u32(arg_1, max(firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, arg_1), vec2<u32>(0u, arg_1))), ~29563u));
    let var_2 = Struct_4(Struct_2(Struct_1(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, arg_0.x, global0.c.a.x), vec4<bool>(false, true, true, true)), arg_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b.x * global0.a.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, global0.b.x, global0.c.b, global0.a.c), vec4<f32>(607f, arg_2.x, -1083f, -1668f))) * vec4<f32>(_wgslsmith_f_op_f32(min(-273f, global0.a.c)), -907f, _wgslsmith_div_f32(-443f, global0.b.x), _wgslsmith_f_op_f32(step(global0.c.c, global0.c.b)))), Struct_1(var_0, 1741f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-146f - -1177f), -780f)), global0.d), ~firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 44963u), vec2<u32>(u_input.a, 1u))) ^ vec2<u32>(abs(arg_1 << (27157u % 32u)), reverseBits(arg_1)), _wgslsmith_f_op_f32(step(-295f, arg_2.x)));
    global0 = Struct_2(Struct_1(!vec4<bool>(true, true, var_0.x, any(vec4<bool>(arg_0.x, var_2.a.c.a.x, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -655f))), 527f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_2.a.b, vec4<f32>(arg_2.x, var_2.c, -730f, -1946f)))) - _wgslsmith_f_op_vec4_f32(-var_2.a.b)) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(func_3(var_2.a, vec2<f32>(arg_2.x, global0.c.b), Struct_1(global0.a.a, global0.a.b, global0.c.c)))), _wgslsmith_f_op_f32(-var_2.a.c.b), global0.c.b)), var_2.a.a, ~(-_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0.d), vec2<i32>(var_2.a.d, -2147483647i)), abs(var_2.a.d))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(global0.c.c * arg_2.x), _wgslsmith_f_op_f32(global0.b.x + arg_2.x), 916f));
    return _wgslsmith_f_op_f32(max(564f, 1000f));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(global0.c.a.yzy, select(select(vec3<bool>(global0.a.a.x, false, global0.a.a.x), global0.a.a.yzx, global0.a.a.x), !vec3<bool>(false, global0.a.a.x, false), true), all(global0.c.a)), _wgslsmith_sub_u32(4294967295u, ~(~u_input.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-888f, _wgslsmith_f_op_f32(f32(-1f) * -480f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(451f, -1496f), global0.b.wy)) + vec2<f32>(-691f, 318f)), func_2(!global0.c.a.zx))))));
    global0 = Struct_2(global0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1353f - _wgslsmith_f_op_f32(trunc(global0.a.c)))), _wgslsmith_f_op_f32(ceil(204f)), _wgslsmith_f_op_f32(-arg_1), global0.b.x), Struct_1(!global0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1588f * 240f), global0.c.c))), 1252f), -16594i);
    let var_1 = ~_wgslsmith_div_u32(select(4294967295u, u_input.a, all(global0.a.a.zx)), countOneBits(u_input.a));
    global0 = Struct_2(global0.c, vec4<f32>(-622f, global0.b.x, global0.a.c, 410f), Struct_1(global0.a.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1830f, _wgslsmith_f_op_f32(-arg_1)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_0) - _wgslsmith_f_op_f32(arg_1 + arg_1))), global0.c.b), ~arg_2.x ^ (global0.d | abs(-1i)));
    let var_2 = -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, ~_wgslsmith_mod_i32(global0.d, arg_2.x), global0.d), abs(reverseBits(-vec3<i32>(arg_0, 23701i, global0.d))));
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global0.c.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-740f))))));
    global0 = Struct_2(func_1(firstTrailingBit(countOneBits(-1i) << (_wgslsmith_div_u32(u_input.a, 89965u) % 32u)), 1f, -_wgslsmith_sub_vec2_i32(~vec2<i32>(global0.d, global0.d), vec2<i32>(4948i, 15096i))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c)) - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1135f + _wgslsmith_f_op_f32(ceil(-183f)))), -1545f, 412f), global0.c, global0.d);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global0.a.c)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-152f * global0.a.b)))) + _wgslsmith_f_op_vec2_f32(max(global0.b.xw, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0.b.wx)))))));
    global0 = Struct_2(Struct_1(global0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), global0.a.b), -505f), vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global0.c.a, 1481f, var_1.x), _wgslsmith_f_op_vec4_f32(-global0.b), func_1(-41651i, -646f, vec2<i32>(global0.d, global0.d)), select(global0.d, 2147483647i, true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-267f, -1000f), vec2<f32>(-681f, -136f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1000f) + global0.b.wz), !vec2<bool>(global0.a.a.x, false))), func_1(abs(global0.d), _wgslsmith_f_op_f32(-var_1.x), -vec2<i32>(global0.d, 44457i)))), _wgslsmith_f_op_f32(-var_1.x), -619f, -1054f), Struct_1(select(vec4<bool>(true, global0.a.a.x, all(global0.c.a.ww), any(global0.a.a.wy)), vec4<bool>(select(false, false, false), any(global0.a.a.yxz), any(global0.a.a.zx), !global0.a.a.x), global0.a.a), _wgslsmith_f_op_f32(step(-2328f, _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(var_1.x + global0.c.b)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(800f * func_1(global0.d, var_0, vec2<i32>(global0.d, 44819i)).b)))), global0.d);
    var var_2 = global0.c.a.wx;
    var_2 = select(!global0.c.a.zx, vec2<bool>(global0.a.a.x, true), select(vec2<bool>(global0.c.a.x, !global0.a.a.x), !global0.a.a.yz, var_2.x & var_2.x));
    global0 = Struct_2(global0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(func_4(global0.a.a.wyx, 4294967295u, var_1)), var_1.x, _wgslsmith_div_f32(-1950f, -1000f), _wgslsmith_div_f32(global0.b.x, 870f)))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.c.b)), global0.b.x, -1085f, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global0.a.a, 1708f, var_0), global0.b, global0.a, 18493i), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_0), vec2<f32>(1755f, var_1.x)), global0.a)))), Struct_1(select(select(vec4<bool>(false, var_2.x, false, global0.a.a.x), vec4<bool>(true, global0.c.a.x, true, true), !vec4<bool>(global0.c.a.x, global0.a.a.x, global0.c.a.x, false)), vec4<bool>(-390f < var_1.x, var_2.x, !var_2.x, var_1.x >= 955f), !(!vec4<bool>(global0.c.a.x, false, false, true))), 370f, _wgslsmith_div_f32(var_1.x, -706f)), abs(abs(_wgslsmith_sub_i32(-55863i, _wgslsmith_mod_i32(41081i, -32388i)))));
    var_2 = global0.a.a.wy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, reverseBits(global0.d));
}

