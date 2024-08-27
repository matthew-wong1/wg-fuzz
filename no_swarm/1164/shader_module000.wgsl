struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<u32> = vec2<u32>(14u, 0u);

var<private> global2: array<vec4<i32>, 8>;

var<private> global3: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec3<u32>) -> bool {
    let var_0 = arg_1;
    let var_1 = Struct_1(var_0.a);
    global0 = min(arg_3.x, 40915u << (~_wgslsmith_mult_u32(abs(u_input.b.x), 1u) % 32u));
    global0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_3.x << (arg_3.x % 32u), ~8537u, 4294967295u), arg_3) << (_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, 11743u)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(arg_3, vec3<u32>(u_input.b.x, global1.x, global1.x)), vec3<u32>(global1.x, arg_3.x, 47380u)), firstTrailingBit(vec3<u32>(arg_3.x, 44097u, global1.x))) % vec3<u32>(32u)), arg_3);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-602f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -490f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-492f * 1000f), 213f) * _wgslsmith_f_op_f32(ceil(-331f))))));
    return any(!(!(!select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, true, true), vec3<bool>(arg_2, true, arg_2)))));
}

fn func_2(arg_0: u32, arg_1: i32) -> f32 {
    let var_0 = vec2<bool>(true, !(!(!(arg_1 == -6809i))));
    global2 = array<vec4<i32>, 8>();
    global1 = vec2<u32>(0u & _wgslsmith_add_u32(~(~0u), select(30349u, ~4294967295u, func_3(Struct_1(vec2<i32>(-1i, arg_1)), Struct_1(u_input.a.xy), var_0.x, vec3<u32>(22957u, 4294967295u, arg_0)))), _wgslsmith_clamp_u32(arg_0, abs(~max(arg_0, 1u)), 29853u));
    global3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(244f, 542f, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1344f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1201f)))))));
    global1 = u_input.b;
    return -402f;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_2(~_wgslsmith_mod_u32(30184u, 8974u), u_input.a.x)), 459f, arg_0.a.x);
    var var_1 = ~_wgslsmith_div_u32(1u, ~global1.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1282f - -804f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -255f) * -560f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(340f)) + _wgslsmith_f_op_f32(-arg_0.a.x)))), var_0.x);
    let var_3 = ~vec4<i32>(-(~u_input.a.x), 38057i, u_input.a.x, u_input.a.x);
    global2 = array<vec4<i32>, 8>();
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(946f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1410f)))) - _wgslsmith_f_op_f32(func_1(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-988f, 896f, -610f, -132f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1174f, 922f, -1191f, 157f) * vec4<f32>(-2110f, 481f, -1423f, -319f))))))));
    let var_1 = reverseBits(u_input.a);
    let var_2 = _wgslsmith_mod_u32(~u_input.b.x, u_input.b.x);
    let var_3 = Struct_1(reverseBits(firstLeadingBit(-var_1.xz) | -(~var_1.yz)));
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 666f, var_0))))));
    global3 = -641f;
    let var_5 = u_input.b;
    var var_6 = Struct_3(var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~var_2, 8u)], _wgslsmith_mod_u32(countOneBits(~(~89263u)), ~firstLeadingBit(~18061u)), var_6.a.wx, -977f);
}

