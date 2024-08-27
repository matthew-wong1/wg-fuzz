struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-678i, 1u), Struct_1(-25048i, 4294967295u), Struct_1(0i, 1u), Struct_1(27249i, 7329u), Struct_1(-28107i, 1u), Struct_1(0i, 157u), Struct_1(0i, 4294967295u), Struct_1(2147483647i, 1u), Struct_1(28377i, 33290u), Struct_1(0i, 0u), Struct_1(2147483647i, 49193u), Struct_1(0i, 0u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: i32) -> vec4<u32> {
    var var_0 = Struct_1(13773i, u_input.e);
    var_0 = Struct_1(2147483647i, u_input.e);
    var var_1 = false;
    let var_2 = u_input.d;
    var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 12u)];
    return ~vec4<u32>(4294967295u, _wgslsmith_div_u32(16048u, ~u_input.e), var_0.b, ~var_0.b);
}

fn func_2() -> Struct_1 {
    let var_0 = -u_input.d;
    let var_1 = _wgslsmith_mod_i32(abs(-u_input.c.x | ~1i), ~(_wgslsmith_mod_i32(u_input.c.x, ~u_input.a) << (u_input.b.x % 32u)));
    global0 = array<Struct_1, 12>();
    let var_2 = _wgslsmith_mod_vec4_u32(~select(func_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(sign(711f)), firstTrailingBit(u_input.c.x)), vec4<u32>(26387u, u_input.b.x & 1u, ~u_input.b.x, 0u), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(0u << (u_input.b.x % 32u), u_input.b.x), 1u), _wgslsmith_mult_u32(~(88031u | u_input.e), u_input.b.x), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 88892u, u_input.b.x, u_input.e)), ~vec4<u32>(u_input.b.x, 29299u, u_input.b.x, u_input.b.x)), u_input.e));
    let var_3 = -2027f;
    return global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 4294967295u), vec2<u32>(u_input.e, u_input.e))), _wgslsmith_add_u32(select(var_2.x, 1u, var_3 < var_3), _wgslsmith_dot_vec3_u32(var_2.yzw, var_2.zxy) & ~0u)), 12u)];
}

fn func_1() -> u32 {
    let var_0 = Struct_1(_wgslsmith_sub_i32(firstTrailingBit(-2658i), u_input.a), _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.e, ~u_input.b.x, abs(9236u), 1u), _wgslsmith_div_vec4_u32(vec4<u32>(13421u, u_input.b.x, u_input.e, u_input.e) & vec4<u32>(u_input.e, u_input.e, u_input.b.x, u_input.b.x), ~vec4<u32>(27342u, u_input.b.x, u_input.e, 0u))), vec4<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, 51913u) << (44537u % 32u), u_input.e)));
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    var var_1 = func_2();
    global0 = array<Struct_1, 12>();
    return reverseBits(reverseBits(1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_sub_u32(~52158u, ~_wgslsmith_add_u32(u_input.e, 78371u)), ~(~24871u), any(vec3<bool>(true, true, true)));
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    let var_1 = vec3<bool>(false, false, all(vec4<bool>(true, true, true, true)) | (1u != (func_1() | _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.e, u_input.b.x)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1062f, -329f, -1583f, 445f) * vec4<f32>(-145f, 540f, -154f, 580f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1445f, 638f, -445f, -319f)), vec4<f32>(-1418f, 384f, 1000f, 1053f), any(var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(u_input.a), 1u, u_input.a ^ -min(u_input.d.x << (4294967295u % 32u), u_input.d.x), 412f);
}

