struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(-124f, -536f, -364f, 876f, -1193f, -1595f, 878f, 529f, 1315f, -167f);

var<private> global1: array<bool, 13> = array<bool, 13>(true, false, false, true, false, true, false, true, true, true, false, false, true);

var<private> global2: array<bool, 5> = array<bool, 5>(true, true, true, true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: f32) -> f32 {
    return _wgslsmith_f_op_f32(select(-502f, _wgslsmith_div_f32(_wgslsmith_div_f32(1226f, _wgslsmith_f_op_f32(f32(-1f) * -1343f)), global0[_wgslsmith_index_u32(~0u, 10u)]), !all(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), 13u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29556u, 35486u, 8086u), vec3<u32>(4294967295u, u_input.b, 30185u)), 5u)], !global1[_wgslsmith_index_u32(u_input.b, 13u)]))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_5, arg_3: bool) -> Struct_3 {
    var var_0 = Struct_1(28771u, !((_wgslsmith_f_op_f32(func_2(arg_2.a)) >= _wgslsmith_f_op_f32(1203f + arg_2.a)) && !(global1[_wgslsmith_index_u32(arg_2.b, 13u)] & true)));
    var var_1 = u_input.c;
    global2 = array<bool, 5>();
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(302f + _wgslsmith_f_op_f32(-arg_2.a)))))));
    let var_3 = max(min(u_input.c.xzy, var_1.wyw), vec3<i32>(-1i) * -vec3<i32>(-1i, var_1.x, ~(-2147483647i)));
    return Struct_3(vec4<u32>(countOneBits(firstLeadingBit(3209u)), arg_1.x, select(var_0.a, 1u << (u_input.b % 32u), !(arg_2.a != arg_0.x)), ~u_input.b));
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = func_3(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(531f + global0[_wgslsmith_index_u32(u_input.b, 10u)]))))), countOneBits(vec4<u32>(113425u, 19988u & (u_input.b >> (u_input.b % 32u)), ~u_input.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(40254u, 4294967295u, u_input.b, u_input.b), vec4<u32>(4294967295u, 1u, 1u, 1u)), u_input.b))), Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 10u)]))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 10u)])))), 81659u), (u_input.a ^ ~(2147483647i | u_input.c.x)) != 12197i);
    let var_1 = !(!global1[_wgslsmith_index_u32(var_0.a.x, 13u)]);
    global0 = array<f32, 10>();
    var var_2 = var_1;
    global1 = array<bool, 13>();
    return Struct_4(-1662f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(abs(1i));
    global2 = array<bool, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_1(-34986i).a, _wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.b, 10u)], -1000f, global1[_wgslsmith_index_u32(u_input.b, 13u)])), _wgslsmith_div_f32(1000f, -281f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], -1143f, -435f, -1125f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(6219u, 10u)], var_0.a, -139f, global0[_wgslsmith_index_u32(93905u, 10u)]), vec4<f32>(115f, -650f, global0[_wgslsmith_index_u32(u_input.b, 10u)], 368f), global2[_wgslsmith_index_u32(0u, 5u)])))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], var_0.a, 932f, 1000f), vec4<f32>(var_0.a, var_0.a, -271f, var_0.a)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1448f, var_0.a, var_0.a, global0[_wgslsmith_index_u32(20048u, 10u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0[_wgslsmith_index_u32(u_input.b, 10u)], -266f, global0[_wgslsmith_index_u32(49936u, 10u)])), global1[_wgslsmith_index_u32(2556u, 13u)])), any(vec4<bool>(false, true, true, true)) && true)), vec4<bool>(global1[_wgslsmith_index_u32(~u_input.b, 13u)], all(select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 13u)], false), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 5u)], true), vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b, 13u)]))), false, true))), 539f);
}

