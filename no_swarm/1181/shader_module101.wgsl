struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(-1i, -31403i, -8500i, -1i, 1i, -1i, 6844i, 0i, 1i, 45345i, 2147483647i, i32(-2147483648), 2147483647i, 52335i, 0i, -5888i, 22380i, 0i, 22316i, 1i, -26234i, 2147483647i, 0i, 7178i, 1i, 1325i, 31649i, 2147483647i, -10506i);

var<private> global1: f32;

var<private> global2: array<Struct_3, 28>;

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1091f, 360f), _wgslsmith_f_op_f32(trunc(1065f))))), false, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-258f, 825f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-582f, 1374f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-205f, -188f)))))), !global3.x);
    var_0 = Struct_1(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + -1013f)) + var_0.a.x)), true || any(arg_1.yzz), var_0.c, false == arg_1.x);
    var var_1 = 35000i;
    let var_2 = _wgslsmith_div_u32(select(firstTrailingBit(96984u), ~(~(~u_input.b)), _wgslsmith_clamp_i32(arg_0.x << (27046u % 32u), 10963i, global0[_wgslsmith_index_u32(~1u, 29u)]) <= 0i), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(~0u, u_input.a, 6731u)), vec3<u32>(u_input.a, ~_wgslsmith_clamp_u32(1u, 1u, 1u), u_input.a)));
    global3 = select(select(select(vec3<bool>(global3.x, !global3.x, !var_0.b), vec3<bool>(global3.x, true, any(vec2<bool>(false, global3.x))), all(vec2<bool>(true, true))), arg_1.xwy, !arg_1.yyw), vec3<bool>(true, var_0.d, true), !(!vec3<bool>(var_0.d, false, arg_1.x != false)));
    return vec2<u32>(reverseBits(_wgslsmith_sub_u32(9435u, _wgslsmith_add_u32(1u, 18702u ^ u_input.b))), u_input.a);
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(687f + 528f), _wgslsmith_f_op_f32(ceil(-157f)), _wgslsmith_f_op_f32(trunc(324f)), _wgslsmith_f_op_f32(-1033f + -252f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-441f, -205f, 745f, 463f))))));
    var var_1 = vec4<u32>(~_wgslsmith_mod_u32(21042u, _wgslsmith_sub_u32(~arg_0, ~arg_0)), firstLeadingBit(1u >> (~abs(u_input.b) % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, abs(4294967295u >> (1u % 32u))), firstLeadingBit(func_3(vec2<i32>(global0[_wgslsmith_index_u32(1u, 29u)], -2147483647i), vec4<bool>(false, true, true, global3.x)) ^ ~vec2<u32>(1u, u_input.a))), _wgslsmith_mult_u32(~arg_0, _wgslsmith_dot_vec3_u32(~vec3<u32>(15492u, 4294967295u, 36152u), vec3<u32>(arg_0, 4294967295u, 0u) ^ vec3<u32>(arg_0, arg_0, u_input.b))));
    let var_2 = 26304i;
    global3 = !select(select(select(select(vec3<bool>(global3.x, false, false), vec3<bool>(true, global3.x, global3.x), vec3<bool>(true, false, false)), !vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(false, global3.x, global3.x)), vec3<bool>(true, var_0.x < var_0.x, false), global3.x), !vec3<bool>(all(vec3<bool>(true, global3.x, global3.x)), true, true), vec3<bool>(any(vec2<bool>(global3.x, true)), !(!global3.x), true));
    let var_3 = -vec2<i32>(min(2147483647i, global0[_wgslsmith_index_u32(~1u, 29u)]), -1i) << ((firstLeadingBit(~vec2<u32>(u_input.a, var_1.x)) ^ vec2<u32>(~46891u, ~(~u_input.a))) % vec2<u32>(32u));
    return select(vec4<bool>(all(!vec3<bool>(global3.x, false, global3.x)), false, !(!select(true, true, global3.x)), true), !(!(!(!vec4<bool>(true, global3.x, false, true)))), vec4<bool>(true, false, any(!vec4<bool>(global3.x, global3.x, global3.x, global3.x)), true));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> bool {
    var var_0 = !(!all(!(!vec4<bool>(true, false, global3.x, true))));
    global3 = vec3<bool>(true, false, !global3.x);
    var_0 = !any(vec2<bool>(false, false));
    var var_1 = all(vec2<bool>(arg_0 >= arg_0, all(func_2(~7112u))));
    let var_2 = reverseBits(1u);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, global3.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(u_input.a >> (u_input.a % 32u)), _wgslsmith_add_u32(u_input.a, select(0u, u_input.b, global3.x))), 29u)] >= (i32(-1i) * -28360i), !(!func_1(_wgslsmith_f_op_f32(sign(-576f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-946f, -825f), vec2<f32>(586f, -491f), vec2<bool>(global3.x, global3.x))))));
    global0 = array<i32, 29>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-441f)));
    global0 = array<i32, 29>();
    global1 = -870f;
    var var_2 = Struct_3(1i);
    var var_3 = Struct_2(Struct_1(vec2<f32>(var_1, var_1), any(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.b, 28097u))).yw), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -272f), _wgslsmith_f_op_f32(trunc(var_1))), global3.x), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.b, u_input.b) << (~vec3<u32>(u_input.b, 4294967295u, u_input.b) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, u_input.b, 15494u), vec3<u32>(4294967295u, 3626u, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(abs(u_input.b), ~u_input.a), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 34732u, 4294967295u), vec4<u32>(0u, var_3.b.x, 17370u, u_input.b), vec4<u32>(80960u, u_input.b, var_3.b.x, 0u)), vec4<u32>(var_3.b.x, var_3.b.x, 4294967295u, u_input.b)), vec4<u32>(1u, reverseBits(4294967295u), 17199u, _wgslsmith_add_u32(19723u, 13487u))), ~vec4<u32>(var_3.b.x, u_input.a, ~2965u, ~1u)));
}

