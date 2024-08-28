struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22>;

var<private> global1: array<vec2<u32>, 13>;

var<private> global2: u32 = 0u;

var<private> global3: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<f32> {
    global2 = 46941u;
    global3 = array<vec2<bool>, 31>();
    var var_0 = vec3<i32>(-22416i, 1i, -2147483647i);
    var var_1 = Struct_1((27906u >> (u_input.a.x % 32u)) | ~20628u, u_input.a.x, all(vec4<bool>(true, -var_0.x > _wgslsmith_sub_i32(var_0.x, 2147483647i), true, true)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(68805u, 22u)] - global0[_wgslsmith_index_u32(12980u, 22u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1705f, 616f, 1000f, 1637f))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1677f, 321f, 1253f, 638f)), vec4<f32>(1222f, -914f, 179f, -570f)))))));
    var var_2 = !vec3<bool>(var_1.c, var_1.c, false);
    return global0[_wgslsmith_index_u32(1u, 22u)];
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(~18392u, u_input.a.x, arg_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - vec4<f32>(1000f, 146f, -1327f, -580f)))));
    global0 = array<vec4<f32>, 22>();
    global0 = array<vec4<f32>, 22>();
    global3 = array<vec2<bool>, 31>();
    var var_1 = 4294967295u;
    return Struct_1(_wgslsmith_add_u32(12500u, var_0.a), 49508u, var_0.c, var_0.d);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: vec3<u32>) -> bool {
    var var_0 = func_2(!select(select(select(global3[_wgslsmith_index_u32(4294967295u, 31u)], vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), global3[_wgslsmith_index_u32(u_input.a.x, 31u)], vec2<bool>(true, true)), true), !global3[_wgslsmith_index_u32(min(arg_3.x, 0u), 31u)], select(vec2<bool>(true, true), !global3[_wgslsmith_index_u32(0u, 31u)], 51095u >= arg_2)));
    let var_1 = select(!(!(!global3[_wgslsmith_index_u32(arg_2 & 1u, 31u)])), global3[_wgslsmith_index_u32(~0u, 31u)], !select(vec2<bool>(true, var_0.c | false), select(!global3[_wgslsmith_index_u32(30171u, 31u)], !vec2<bool>(var_0.c, true), select(global3[_wgslsmith_index_u32(var_0.b, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)], true)), var_0.c));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(1856f + _wgslsmith_f_op_f32(trunc(-853f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1f, func_2(!vec2<bool>(false, var_0.c)).d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.d.x)))))), arg_1, _wgslsmith_f_op_f32(-var_0.d.x));
    var var_3 = func_2(var_1);
    global0 = array<vec4<f32>, 22>();
    return (var_3.b <= ~50807u) || (any(select(vec3<bool>(var_1.x, var_3.c, true), !vec3<bool>(var_3.c, false, var_0.c), any(vec3<bool>(false, var_1.x, false)))) && !any(global3[_wgslsmith_index_u32(~10387u, 31u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~19926u), u_input.a.x, true, global0[_wgslsmith_index_u32(select(firstLeadingBit(3375u), select(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), ~countOneBits(u_input.a.x), true), func_1(-1i, _wgslsmith_f_op_f32(-515f + -1286f), ~1u, u_input.a) && (-646f != _wgslsmith_f_op_f32(sign(189f)))), 22u)]);
    global1 = array<vec2<u32>, 13>();
    var var_1 = 0u;
    global2 = ~(~_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(39261u, var_0.a, var_0.b)), 13u)], firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a.x, 13u)]))) & ~104508u;
    var var_2 = !vec4<bool>(!(!(var_0.d.x <= var_0.d.x)), true, var_0.c, all(vec4<bool>(1836u < var_0.b, var_0.c, false || var_0.c, var_0.c)));
    let var_3 = vec2<bool>(true, false);
    var var_4 = Struct_1(~firstLeadingBit(~_wgslsmith_div_u32(0u, 1u)), 1615u, !any(!select(var_2.yzy, vec3<bool>(var_0.c, var_0.c, false), var_3.x)), _wgslsmith_f_op_vec4_f32(-var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a, vec3<u32>(12407u, ~select(var_4.a, var_4.b, var_0.c), min(~var_4.a, var_4.b >> (var_4.a % 32u)))), abs(4294967295u << (_wgslsmith_dot_vec2_u32(~u_input.a.zy, u_input.a.xy) % 32u)), abs(0u), 2147483647i);
}

