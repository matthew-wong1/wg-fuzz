struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
    d: u32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: Struct_2,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-3894i, -55855i, 1i), _wgslsmith_clamp_vec3_i32(u_input.b.xxz, u_input.b.yzx, u_input.b.yxx)), select(u_input.b.xyz, firstLeadingBit(u_input.b.yxy), global0.wyx));
    global0 = !(!vec4<bool>(u_input.c <= -12003i, true, !all(vec3<bool>(false, false, false)), !all(vec2<bool>(false, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-677f, 1436f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(223f * -1307f))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-495f, 278f), _wgslsmith_f_op_f32(floor(524f))), _wgslsmith_f_op_f32(trunc(-937f)), 570f), global0.zwy)));
    let var_2 = ~countOneBits(~vec3<u32>(_wgslsmith_div_u32(48111u, 1u), ~40995u, 1u));
    global0 = vec4<bool>(all(!(!select(global0.xx, global0.zz, global0.yw))), all(select(vec4<bool>(global0.x, any(vec2<bool>(true, true)), global0.x == global0.x, false), !select(vec4<bool>(true, global0.x, global0.x, arg_0), vec4<bool>(true, false, arg_0, arg_0), global0.x), vec4<bool>(all(vec3<bool>(false, false, global0.x)), all(vec3<bool>(arg_0, arg_0, true)), !arg_0, all(global0.yz)))), arg_0, !(true && !(global0.x != false)));
    return true;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec2<bool>) -> vec2<f32> {
    var var_0 = arg_0.b.yy;
    let var_1 = arg_0;
    var_0 = arg_2;
    global0 = vec4<bool>(true, true, true, !(all(select(vec3<bool>(var_1.c.c, false, global0.x), vec3<bool>(var_0.x, global0.x, arg_1.x), global0.xww)) && any(select(vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(true, false, global0.x, true), var_0.x))));
    var_0 = vec2<bool>(var_0.x, !(!func_3(arg_1.x)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1690f, arg_0.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a * arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.b, 1000f))))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec4<bool>) -> bool {
    var var_0 = vec3<bool>(true, true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(round(801f))))) <= _wgslsmith_f_op_f32(1f - 1247f));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1279f, 1305f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(659f, global0.xzw, Struct_2(4294967295u, arg_1, true, 33382u, u_input.a), vec2<i32>(-54462i, arg_0)), vec3<bool>(false, var_0.x, var_0.x), vec2<bool>(arg_2.x, true)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -687f), arg_1)))), !var_0.x));
    var var_2 = 0u >> (1u % 32u);
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>((2147483647i | arg_0) << (countOneBits(16317u) % 32u), 1i), -u_input.a) & _wgslsmith_sub_vec2_i32(u_input.a, u_input.b.yw);
    let var_4 = Struct_1(arg_2.zxx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-377f, 1000f)))), var_1))), !vec4<bool>(true, func_3(true), all(global0.zyz), true), arg_1, select(!vec3<bool>(func_3(arg_2.x), true, true), select(vec3<bool>(true, true, !global0.x), vec3<bool>(true, !var_0.x, var_0.x || arg_2.x), false), !vec3<bool>(true, true, arg_2.x && var_0.x)));
    return !arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(_wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.b.zxw), -vec3<i32>(u_input.d, u_input.a.x, u_input.c)) < u_input.c, global0.x);
    var_0 = vec2<bool>(true, !(any(select(global0.xyz, vec3<bool>(global0.x, true, true), vec3<bool>(false, var_0.x, false))) || (true | (global0.x | var_0.x))));
    var var_1 = Struct_1(vec3<bool>(var_0.x, !any(select(global0.yw, global0.xw, global0.xy)), select(func_1(u_input.b.x, 254f, vec4<bool>(global0.x, var_0.x, global0.x, false)), true, false) || (~4289u <= select(1u, 4294967295u, global0.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(max(-1633f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(409f, 123f)), _wgslsmith_f_op_f32(trunc(539f))))))), !vec4<bool>((-2147483647i < u_input.b.x) || any(global0.xx), false, true, func_3(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(529f, vec3<bool>(var_0.x, true, global0.x), Struct_2(5278u, -414f, false, 7916u, vec2<i32>(-20281i, u_input.d)), u_input.a), vec3<bool>(global0.x, true, global0.x), vec2<bool>(global0.x, false))).x + 434f))), select(!vec3<bool>(true | global0.x, var_0.x, true), vec3<bool>(true, _wgslsmith_f_op_f32(select(1158f, -187f, true)) > _wgslsmith_f_op_f32(136f + -1351f), true), all(vec2<bool>(!var_0.x, global0.x))));
    var_0 = !select(!var_1.c.wz, vec2<bool>(true, any(var_1.c.yz)), false);
    var var_2 = Struct_1(select(!var_1.e, !vec3<bool>(var_1.a.x, var_1.a.x, global0.x), !select(var_1.a, !global0.xxx, true)), _wgslsmith_f_op_vec2_f32(var_1.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_1.d)))))), !vec4<bool>(func_3(var_1.c.x && global0.x), !all(var_1.c), true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_1.b.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, -985f))) - _wgslsmith_f_op_f32(sign(var_1.d))), var_1.c.zxx);
    var var_3 = vec3<f32>(-1534f, _wgslsmith_f_op_vec2_f32(func_2(Struct_3(1304f, !(!vec3<bool>(true, var_1.c.x, var_0.x)), Struct_2(min(1u, 0u), var_1.b.x, func_3(var_2.a.x), ~4294967295u, u_input.b.xz), vec2<i32>(-1i) * -u_input.b.xx), var_2.e, global0.xx)).x, -1196f);
    var var_4 = Struct_2(_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(4294967295u, 60929u))), max(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), _wgslsmith_f_op_f32(-var_3.x), global0.x, countOneBits(firstTrailingBit(~(~72886u))), u_input.b.zx);
    var_1 = Struct_1(select(select(!vec3<bool>(true, var_2.a.x, false), vec3<bool>(func_3(var_1.a.x), select(true, false, true), true), !var_1.c.yxx), !select(!vec3<bool>(false, var_0.x, false), vec3<bool>(var_4.c, var_1.a.x, var_4.c), vec3<bool>(var_0.x, var_1.a.x, true)), global0.x), var_1.b, var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_4.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.d))))) + var_3.x), vec3<bool>(_wgslsmith_f_op_f32(round(var_4.b)) > 473f, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, -firstLeadingBit(u_input.b.zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.d))), ~vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, -6394i) ^ u_input.d, i32(-1i) * -18126i, _wgslsmith_add_i32(-14630i, u_input.e) ^ _wgslsmith_div_i32(24290i, var_4.e.x), u_input.d));
}

