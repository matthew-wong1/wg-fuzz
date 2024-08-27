struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(1u, 4294967295u, 4294967295u, 9328u, 1u, 4294967295u, 18657u, 87601u, 59788u, 67785u, 3023u, 67310u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_2 {
    global0 = array<u32, 12>();
    var var_0 = u_input.a.x;
    var_0 = min(u_input.d, 1i);
    var_0 = -36144i;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1132f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1069f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1842f, 548f) - vec2<f32>(404f, 184f)))), _wgslsmith_f_op_f32(808f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-684f)))), any(vec2<bool>(select(true, false, true), false))));
    return var_1;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> bool {
    var var_0 = -u_input.a.zxz << (_wgslsmith_mod_vec3_u32(abs(~_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 1u, 0u))), ~(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], 4294967295u, u_input.b.x)) >> (~_wgslsmith_sub_vec3_u32(vec3<u32>(53571u, 1u, 3223u), vec3<u32>(41436u, 1u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_1 = vec3<u32>(~select(59200u, min(reverseBits(u_input.b.x), firstLeadingBit(57323u)), !(!arg_0.a.d)), ~69615u, ~global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(31478u, 1u)), 12u)]);
    var var_2 = Struct_1(arg_0.a.c, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -134f), -810f), arg_0.a.c, var_0.x == u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(floor(-794f));
    var var_4 = abs(u_input.a);
    return var_2.d;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> f32 {
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    return arg_0.a.b.x;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(-var_0.a.b);
    let var_2 = 846f;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -285f) + _wgslsmith_f_op_f32(func_4(var_0, func_3(Struct_2(var_0.a), true, -1i) | (var_0.a.b.x <= -884f)))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_1.x)))), var_0.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1397f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - var_0.a.c) - _wgslsmith_f_op_f32(-581f + 464f))) - var_1.x), any(vec2<bool>(var_0.a.d, var_0.a.d)));
    var var_4 = var_0;
    return Struct_1(_wgslsmith_f_op_f32(select(func_2().a.c, -1841f, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1245f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.a))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + func_2().a.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 * var_0.a.b.x), _wgslsmith_f_op_f32(880f * var_1.x)))), all(vec3<bool>(true, var_0.a.d, true)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> vec2<f32> {
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    var var_0 = firstTrailingBit(67939u) | 18649u;
    global0 = array<u32, 12>();
    var_0 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], 12u)], 12u)];
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(1640f + 1619f), vec2<f32>(-1483f, -212f), -794f, true)), func_1())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2().a.b - vec2<f32>(1f, 1f))))));
    var var_1 = func_2();
    var var_2 = firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], 12u)], u_input.b.x, 26484u)), vec4<u32>(global0[_wgslsmith_index_u32(0u, 12u)], 69834u, 0u, 4926u) >> (~vec4<u32>(67394u, 90584u, 9906u, 1u) % vec4<u32>(32u))), ~(~1u), abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)], 4294967295u), vec3<u32>(0u, 21024u, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]))), u_input.b.x));
    var var_3 = var_1.a;
    var_1 = Struct_2(var_1.a);
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

