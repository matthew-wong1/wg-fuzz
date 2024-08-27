struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(1i, -10476i, -1i, 40126i, -1i, 7009i, 2147483647i, 1i, 2147483647i, -7112i, -1i, -9731i, -6459i);

var<private> global1: array<vec4<bool>, 23>;

var<private> global2: f32 = -895f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    global1 = array<vec4<bool>, 23>();
    let var_0 = !select(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, false), any(vec2<bool>(true, true))), true);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -276f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1408f * 1022f)))), var_0.x)));
    let var_1 = vec2<bool>(var_0.x & true, var_0.x);
    global1 = array<vec4<bool>, 23>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(round(813f))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> bool {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var var_0 = _wgslsmith_div_f32(-2105f, _wgslsmith_div_f32(806f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-760f - _wgslsmith_f_op_f32(sign(1632f))))));
    var_0 = 1000f;
    global2 = 550f;
    var var_1 = Struct_1(vec3<f32>(1f, _wgslsmith_f_op_f32(select(131f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-228f, -1088f) * 1590f), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-629f, 239f) + _wgslsmith_f_op_f32(974f - -1683f)) * _wgslsmith_f_op_f32(2104f + -1095f))), false, !select(!vec2<bool>(arg_0.x, arg_0.x), select(!arg_0.zz, select(arg_0.yy, arg_0.yx, vec2<bool>(true, arg_0.x)), true), select(vec2<bool>(false, true), vec2<bool>(arg_0.x, true), !arg_0.yz)));
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    global1 = array<vec4<bool>, 23>();
    var_0 = !(any(vec4<bool>(any(vec2<bool>(false, false)), true, func_2(vec3<bool>(true, false, false), u_input.a.x), 4294967295u == u_input.a.x)) && !(true & any(global1[_wgslsmith_index_u32(4294967295u, 23u)])));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -441f) + -1344f) - _wgslsmith_f_op_f32(f32(-1f) * -276f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-154f)))));
    var var_2 = vec4<bool>(true, var_1, var_1, true && select(true, true, true));
    return Struct_1(vec3<f32>(804f, 1438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 1574f)) + _wgslsmith_f_op_f32(f32(-1f) * -730f)))), all(!vec4<bool>(any(var_2.wy), select(var_2.x, true, var_2.x), !var_1, true)), select(select(!select(var_2.wy, var_2.zw, var_1), var_2.xw, true), select(var_2.yw, select(!vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true), select(var_2.yz, vec2<bool>(var_1, false), false)), vec2<bool>(!var_2.x, false)), any(!select(var_2.xw, var_2.wy, var_2.xw))));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = vec4<i32>(abs(firstTrailingBit(-9726i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(1u, arg_1), arg_1, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, 659u), vec3<u32>(48583u, 57645u, 18610u)), u_input.a.x | 37098u), vec4<u32>(u_input.a.x, firstTrailingBit(~u_input.a.x), 51669u, firstTrailingBit(select(arg_1, arg_1, true)))), 13u)], _wgslsmith_sub_i32(~u_input.c, u_input.c), -16667i);
    global1 = array<vec4<bool>, 23>();
    global2 = arg_2.a.x;
    var var_1 = arg_2;
    global2 = _wgslsmith_f_op_f32(round(1f));
    return Struct_3(Struct_2(vec2<u32>(~arg_1 ^ arg_1, min(40377u & arg_1, u_input.a.x)), arg_2, 0i < ~(var_0.x ^ -8574i), func_1(), !global1[_wgslsmith_index_u32(~(~44101u), 23u)]), arg_2, true);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.b.a.x, arg_1.a.b.a.x)));
    global0 = array<i32, 13>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(553f, var_0.x))))));
    var var_1 = !select(arg_1.a.e.zzz, func_4(1678f, arg_1.a.a.x, func_1()).a.e.xyz, true);
    let var_2 = !arg_1.a.e.xxw;
    return func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1036f)) + func_1().a.x), max(arg_1.a.a.x, arg_1.a.a.x), arg_1.b).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~u_input.b.xx, func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1034f))))), 57750u, func_1()));
    global0 = array<i32, 13>();
    let var_1 = var_0.d;
    let var_2 = vec2<bool>(var_1.b, all(!func_4(_wgslsmith_f_op_f32(ceil(var_1.a.x)), ~u_input.a.x, func_4(819f, 556u, Struct_1(vec3<f32>(-1000f, -588f, var_1.a.x), var_1.c.x, var_0.d.c)).a.d).a.e));
    let var_3 = func_4(1281f, 1u, func_1()).a;
    var var_4 = _wgslsmith_add_i32(global0[_wgslsmith_index_u32(~var_3.a.x, 13u)], 2147483647i);
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xy, -2147483647i, min(var_0.a.x, var_0.a.x));
}

