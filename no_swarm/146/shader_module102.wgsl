struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: array<i32, 14> = array<i32, 14>(-71177i, -2018i, 2147483647i, 8443i, 34986i, 2147483647i, -12010i, 1i, 4698i, 11702i, 1i, 1i, -33270i, i32(-2147483648));

var<private> global2: vec3<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = arg_1.a.c.xw;
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    let var_1 = arg_1.a;
    global1 = array<i32, 14>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_div_f32(-439f, _wgslsmith_f_op_f32(abs(2819f)))))));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_1(select(!vec3<bool>(false, any(vec3<bool>(arg_1.a.a.x, false, true)), arg_1.a.d.x), arg_1.a.a, vec3<bool>(false, false, !(!arg_1.a.d.x))), abs(~arg_1.a.b), vec4<i32>(-global1[_wgslsmith_index_u32(83920u, 14u)], -1i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(arg_1.a.c, vec4<i32>(30050i, 2147483647i, 1i, -1i)), i32(-1i) * -1i), ~(-125258i)) << ((_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_1.a.b.x, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 25u)], 25u)]), vec4<u32>(5011u, 77272u, 13963u, u_input.d) | vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 25u)], 25u)], u_input.d, 1u), ~vec4<u32>(global0[_wgslsmith_index_u32(1u, 25u)], 30366u, global0[_wgslsmith_index_u32(global2.x, 25u)], u_input.d)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a.b.x, global0[_wgslsmith_index_u32(1u, 25u)], 1u, arg_1.a.b.x), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 11256u, global0[_wgslsmith_index_u32(global2.x, 25u)]), vec4<u32>(global2.x, global0[_wgslsmith_index_u32(u_input.d, 25u)], 4294967295u, 1u))) % vec4<u32>(32u)), !select(arg_1.a.d, arg_1.a.d, false));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1298f, _wgslsmith_f_op_f32(f32(-1f) * -141f)));
    let var_2 = Struct_2(var_0, _wgslsmith_f_op_f32(arg_1.b + 120f));
    var var_3 = -624f;
    let var_4 = firstTrailingBit(firstTrailingBit(vec2<i32>(-1i, -1281i)));
    return var_2.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<i32>) -> bool {
    global2 = ~_wgslsmith_clamp_vec3_u32(arg_0.b, ~vec3<u32>(arg_0.b.x, ~global2.x, 1u), ~arg_0.b);
    global0 = array<u32, 25>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - -1579f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3218f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(33355i, Struct_2(arg_0, -1000f))), _wgslsmith_f_op_f32(119f * -747f)))), Struct_2(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-754f, 1f, true)))), -189f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(1i, Struct_2(arg_0, -619f))), -838f)), 1000f));
    global2 = arg_0.b;
    global1 = array<i32, 14>();
    return !(!(!any(vec4<bool>(true, false, arg_1.x, arg_0.a.x))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: u32, arg_3: vec4<i32>) -> f32 {
    var var_0 = u_input.d;
    var var_1 = arg_1.b;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + 1102f), arg_1.b, arg_1.d.x, vec2<f32>(288f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.d.x)))))));
    let var_3 = !select(!var_2.b.a.a, arg_1.b.a.a, !vec3<bool>(arg_1.b.b < -1000f, all(vec2<bool>(arg_1.b.a.d.x, var_1.a.a.x)), var_1.a.d.x));
    let var_4 = true;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(951f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1452f * 1373f), arg_1.c)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-557f - -1268f) + _wgslsmith_f_op_f32(func_1(u_input.c.xy, Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<u32>(1u, 0u, 59118u), vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.a), vec2<bool>(false, true)), -712f))))), -393f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) * _wgslsmith_f_op_f32(f32(-1f) * -562f)))));
    global0 = array<u32, 25>();
    var_0 = _wgslsmith_f_op_f32(func_4(select(select(vec2<bool>(func_2(Struct_1(vec3<bool>(true, false, false), vec3<u32>(u_input.d, 1u, 1u), vec4<i32>(2636i, 1731i, global1[_wgslsmith_index_u32(global2.x, 14u)], 2147483647i), vec2<bool>(false, true)), vec4<bool>(true, false, false, true), vec3<i32>(0i, u_input.b, 10824i)), true), vec2<bool>(true, all(vec2<bool>(false, true))), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), all(vec2<bool>(true, true))), Struct_3(_wgslsmith_f_op_f32(floor(-1000f)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<u32>(1u, u_input.d, global0[_wgslsmith_index_u32(global2.x, 25u)]), ~vec4<i32>(-2147483647i, u_input.a, global1[_wgslsmith_index_u32(global2.x, 14u)], global1[_wgslsmith_index_u32(u_input.d, 14u)]), vec2<bool>(true, false)), -1073f), 306f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-714f, -312f))))), vec2<f32>(_wgslsmith_f_op_f32(func_1(vec2<i32>(28282i, 0i), Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<u32>(global0[_wgslsmith_index_u32(1164u, 25u)], global0[_wgslsmith_index_u32(21951u, 25u)], 15915u), vec4<i32>(global1[_wgslsmith_index_u32(global2.x, 14u)], global1[_wgslsmith_index_u32(global2.x, 14u)], global1[_wgslsmith_index_u32(27593u, 14u)], u_input.c.x), vec2<bool>(true, false)), 108f))), _wgslsmith_f_op_f32(3087f - -164f)), false))), _wgslsmith_mod_u32(~(~4294967295u), min(4294967295u, _wgslsmith_div_u32(global2.x, ~global2.x))), vec4<i32>(~(~(-u_input.b)), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], 25u)], 25u)], 14u)], global1[_wgslsmith_index_u32(global2.x, 14u)], u_input.b)), u_input.c), _wgslsmith_mod_i32(select(firstTrailingBit(global1[_wgslsmith_index_u32(8571u, 14u)]), firstLeadingBit(-1i), all(vec3<bool>(true, true, false))), firstLeadingBit(4832i)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 25u)], 14u)], -30155i), u_input.c.zy), ~(u_input.a ^ u_input.a)))));
    var var_1 = ~u_input.c.xz;
    global1 = array<i32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec4<u32>(global0[_wgslsmith_index_u32(u_input.d, 25u)], ~(~(~1u)), firstLeadingBit(_wgslsmith_add_u32(u_input.d, _wgslsmith_mod_u32(4294967295u, u_input.d))), ~global2.x));
}

