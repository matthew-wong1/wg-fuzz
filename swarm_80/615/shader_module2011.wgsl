struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, true, true);

var<private> global1: Struct_2;

var<private> global2: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = global1.a;
    var var_1 = -u_input.d.x;
    var_1 = 33476i;
    var_0 = -727f;
    var var_2 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-342f + _wgslsmith_div_f32(global1.a, -876f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(global1.a - global1.a)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = select(select(!select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(19069u, 3u)]), vec3<bool>(true, true, true), !vec3<bool>(global1.b.x, false, global0[_wgslsmith_index_u32(u_input.c.x, 3u)])), select(vec3<bool>(!global1.b.x, any(global1.b), !global0[_wgslsmith_index_u32(u_input.c.x, 3u)]), select(vec3<bool>(global1.b.x, false, global1.b.x), vec3<bool>(global1.b.x, true, false), any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], global1.b.x, global0[_wgslsmith_index_u32(112096u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]))), firstTrailingBit(7465i) <= (arg_0.x << (88030u % 32u))), !(_wgslsmith_f_op_f32(f32(-1f) * -1263f) != _wgslsmith_f_op_f32(-global1.a))), vec3<bool>(true, true, true), vec3<bool>(any(!global1.b), global1.b.x, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], false, true, false)) && false));
    let var_1 = !(!(!vec3<bool>(true, all(vec4<bool>(false, var_0.x, var_0.x, true)), true)));
    var var_2 = !var_1;
    global1 = Struct_2(-470f, select(vec2<bool>(false, all(select(var_1, vec3<bool>(false, var_2.x, false), vec3<bool>(var_0.x, false, false)))), !select(select(vec2<bool>(var_1.x, var_2.x), vec2<bool>(true, true), true), select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 3u)]), vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_2.x)), global1.b.x), select(true, var_1.x, !(!global0[_wgslsmith_index_u32(u_input.c.x, 3u)]))));
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(338f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(911f + global1.a))), 1548f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_3.x)), -1871f)));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-max(firstTrailingBit(u_input.d.yz), u_input.d.xy | vec2<i32>(44990i, 33385i)), firstLeadingBit(vec4<i32>(abs(u_input.b.x), u_input.e, u_input.a, u_input.b.x << (0u % 32u))))) * global1.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1060f, 368f, 283f)))) - vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(func_3(u_input.d.xy, vec4<i32>(u_input.d.x, u_input.e, u_input.a, 22082i))))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2393f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f)))), !global1.b);
    var var_3 = Struct_2(-699f, !global1.b);
    global2 = global0[_wgslsmith_index_u32(arg_2, 3u)];
    return firstLeadingBit(i32(-1i) * -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_1(u_input.c.x)), global1.a)));
    global2 = _wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, u_input.a), _wgslsmith_div_i32(func_2(75695u, u_input.c.yzw, u_input.c.x, vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 3u)], global0[_wgslsmith_index_u32(u_input.c.x, 3u)], false)) >> (u_input.c.x % 32u), ~(2147483647i >> (u_input.c.x % 32u)))) < u_input.e;
    global0 = array<bool, 3>();
    global1 = Struct_2(1068f, select(!(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)])), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 3u)] && global1.b.x, false), global1.b, !global0[_wgslsmith_index_u32(129307u << (u_input.c.x % 32u), 3u)]), global1.a < -262f));
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 53941u, 11901u, u_input.c.x)), 3093u, u_input.c.x), vec3<u32>(~1u, firstLeadingBit(u_input.c.x), u_input.c.x)) << (~(68123u | ~u_input.c.x) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_div_u32(select(2981u, u_input.c.x, false) & 0u, u_input.c.x), u_input.c.x >> (35812u % 32u), 12296u), -404f);
}

