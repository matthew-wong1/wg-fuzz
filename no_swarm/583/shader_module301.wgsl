struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_4, 25>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = vec2<f32>(-757f, _wgslsmith_f_op_f32(select(-908f, 376f, all(arg_0.a.zwz))));
    let var_1 = vec3<u32>(17462u, _wgslsmith_mod_u32(4294967295u, firstLeadingBit(_wgslsmith_add_u32(arg_0.b, arg_0.b)) ^ select(0u, firstTrailingBit(10564u), 0i >= u_input.b)), arg_0.b);
    var var_2 = all(arg_0.a.zz);
    global0 = -1895f;
    let var_3 = ~(~(firstLeadingBit(var_1.xx) << (reverseBits(vec2<u32>(arg_0.b, var_1.x)) % vec2<u32>(32u)))) >> (var_1.yy % vec2<u32>(32u));
    return select(!select(vec4<bool>(true, 15050i > u_input.b, !arg_0.a.x, 0u >= var_3.x), !select(arg_0.a, vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), false), true), arg_0.a, any(arg_0.a.wyx));
}

fn func_2() -> vec4<bool> {
    let var_0 = any(vec3<bool>(true, true, true)) & true;
    global1 = array<Struct_4, 25>();
    return !vec4<bool>(var_0, any(vec3<bool>(false, var_0, !var_0)), func_1(Struct_1(!vec4<bool>(true, false, var_0, var_0), ~1u)).x, all(vec3<bool>(var_0, var_0, any(vec2<bool>(var_0, true)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: Struct_5) -> vec3<u32> {
    return ~(~_wgslsmith_add_vec3_u32(~vec3<u32>(31317u, 161943u, arg_2.x) & _wgslsmith_div_vec3_u32(vec3<u32>(41435u, arg_2.x, 1u), arg_2.wxz), firstTrailingBit(~arg_2.xxy)));
}

fn func_4(arg_0: vec3<u32>) -> u32 {
    var var_0 = 1021f;
    let var_1 = reverseBits(vec3<u32>(_wgslsmith_sub_u32(~arg_0.x ^ ~1u, ~arg_0.x), arg_0.x, ~arg_0.x));
    let var_2 = u_input.b;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -591f)) * 127f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(893f + _wgslsmith_f_op_f32(f32(-1f) * -2193f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1042f, -794f)))));
    let var_3 = func_2().x;
    return ~34529u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(func_1(Struct_1(vec4<bool>(true, true, false, false), 28656u)), !func_2(), true), !select(func_2(), !func_2(), func_2().x), !func_2());
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(377f * -198f), 1f))));
    global1 = array<Struct_4, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_3(reverseBits(~vec2<u32>(15055u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), select(max(vec4<u32>(76889u, 1u, 12271u, 0u), vec4<u32>(9254u, 1u, 4294967295u, 1u)), vec4<u32>(84509u, 1u, 18612u, 19209u), all(var_0)), Struct_5(any(var_0), vec3<f32>(var_1.x, 272f, var_1.x)))));
}

