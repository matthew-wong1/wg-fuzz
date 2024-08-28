struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1111f) - -798f) - 263f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a.x, -154f))), _wgslsmith_f_op_f32(sign(arg_0.a.x)), arg_0.a.x)));
    let var_1 = (5880u << (_wgslsmith_clamp_u32(min(u_input.a.x, firstTrailingBit(4294967295u)), ~(~4294967295u), _wgslsmith_add_u32(u_input.a.x, ~u_input.a.x)) % 32u)) ^ ~abs(1u);
    var var_2 = vec3<bool>(any(!select(!vec4<bool>(arg_0.c.x, arg_0.d, false, arg_0.d), vec4<bool>(arg_0.c.x, arg_0.d, arg_0.d, true), select(vec4<bool>(true, true, arg_0.c.x, true), vec4<bool>(true, true, true, arg_0.d), vec4<bool>(false, true, true, false)))), arg_0.c.x, true);
    var var_3 = vec4<bool>(!any(!(!vec3<bool>(false, arg_0.c.x, false))), _wgslsmith_div_i32(min(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), -79617i), u_input.b.x) > countOneBits(_wgslsmith_add_i32(-2209i, _wgslsmith_dot_vec2_i32(u_input.b.ww, vec2<i32>(u_input.b.x, u_input.b.x)))), all(!(!vec3<bool>(var_2.x, arg_0.c.x, false))), var_2.x | (!arg_0.c.x & select(arg_0.b, any(vec4<bool>(arg_0.b, false, arg_0.c.x, true)), arg_0.c.x)));
    var var_4 = Struct_2(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(floor(var_0.x))))), all(var_3.xx), vec2<bool>(var_3.x, true), var_2.x);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(step(arg_2.a.x, 1000f));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2518f), _wgslsmith_f_op_f32(147f * _wgslsmith_f_op_f32(step(376f, -1169f))));
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(func_3(arg_2)) < var_1.x, any(select(vec4<bool>(arg_2.d, arg_2.b, any(vec3<bool>(arg_1, arg_2.d, false)), true), select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(false, arg_1, arg_2.d, arg_1), true), true || (true && arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -621f)) > _wgslsmith_f_op_f32(func_3(Struct_2(arg_2.a, arg_1, arg_2.c, all(vec4<bool>(arg_1, arg_1, arg_1, arg_1))))));
    let var_3 = select(var_2.x, false, var_2.x);
    let var_4 = ~(-vec3<i32>(9448i & _wgslsmith_add_i32(u_input.b.x, arg_3.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i) | u_input.b.wz, ~vec2<i32>(u_input.b.x, 211i)), ~firstTrailingBit(-53063i)));
    return var_2.x | (((_wgslsmith_f_op_f32(-var_1.x) <= _wgslsmith_f_op_f32(-var_1.x)) || false) & !(any(vec4<bool>(true, var_2.x, var_2.x, false)) & (arg_2.a.x < -1429f)));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(122f, _wgslsmith_f_op_f32(f32(-1f) * -300f), -914f, _wgslsmith_f_op_f32(f32(-1f) * -1114f)) - vec4<f32>(-782f, 1f, -591f, _wgslsmith_f_op_f32(min(605f, -1975f)))), vec4<f32>(_wgslsmith_f_op_f32(-885f + _wgslsmith_div_f32(2004f, -253f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1306f - 770f) + -1352f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -845f))), 1f)) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-613f + 259f), _wgslsmith_f_op_f32(min(-1045f, 2342f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-583f * 670f) + _wgslsmith_f_op_f32(select(-1000f, 1000f, false)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1537f)), -424f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(211f + -1519f))), func_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), true, Struct_2(vec2<f32>(-454f, 2316f), true, vec2<bool>(false, true), true), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i))))), _wgslsmith_f_op_f32(func_3(Struct_2(vec2<f32>(-1533f, 319f), false, vec2<bool>(true, false), true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(265f - -1333f))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1538f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1013f * 886f) - _wgslsmith_f_op_f32(-var_0.x)))) * _wgslsmith_f_op_f32(985f - _wgslsmith_f_op_f32(-var_0.x))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -790f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x))), 1017f))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) - var_0.x));
    var_1 = var_0.yy;
    var var_2 = var_0.wwx;
    return firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(u_input.a.x, 1u, u_input.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, u_input.a.x), select(u_input.a, vec3<u32>(20666u, u_input.a.x, 99267u), true), select(u_input.a, vec3<u32>(u_input.a.x, 11808u, 62102u), vec3<bool>(false, true, true)))), min(u_input.a.x, 0u) | abs(u_input.a.x), _wgslsmith_sub_u32(min(1u << (u_input.a.x % 32u), u_input.a.x), abs(35762u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))) || all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))) | (select(~2524u, ~u_input.a.x, true) > func_1())) | ((_wgslsmith_div_i32(u_input.b.x, 2147483647i) & select(u_input.b.x, -1i, true)) == 1i);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -127f)))))), _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-201f, 742f), vec2<f32>(740f, 146f))), func_2(~vec4<u32>(u_input.a.x, 21254u, 1u, u_input.a.x), true, Struct_2(vec2<f32>(1000f, -922f), true, vec2<bool>(false, true), true), Struct_1(u_input.b.wxy)), vec2<bool>(true, true), func_2(~vec4<u32>(76945u, u_input.a.x, u_input.a.x, 14458u), true, Struct_2(vec2<f32>(-753f, 1000f), false, vec2<bool>(false, false), true), Struct_1(vec3<i32>(-1i, -2147483647i, u_input.b.x)))))));
    var var_2 = vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(0u, u_input.a.x));
    let var_3 = Struct_2(var_1, !select(false | any(vec2<bool>(true, true)), true, true), !(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), false))), true);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)) + -1507f)));
    let var_5 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_3.a.x, var_1.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1963f)), 1843f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(641f, var_5.x, var_1.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, -695f, 1702f) + var_5), _wgslsmith_f_op_vec3_f32(vec3<f32>(773f, 1000f, 1924f) + vec3<f32>(var_1.x, var_1.x, var_1.x)))))), var_5, !vec3<bool>(var_3.d & true, true, var_3.d & var_3.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.a)));
}

