struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_1 = Struct_1(-1320f, 3667u, vec3<bool>(true, false, false));

var<private> global1: Struct_2;

var<private> global2: array<f32, 24>;

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(-194f, 4294967295u, vec3<bool>(false, false, false))), Struct_2(Struct_1(149f, 41298u, vec3<bool>(true, false, false))), Struct_2(Struct_1(-669f, 1u, vec3<bool>(false, true, false))), Struct_2(Struct_1(1729f, 0u, vec3<bool>(false, true, true))), Struct_2(Struct_1(675f, 10616u, vec3<bool>(true, true, false))));

var<private> global4: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(196f, 43246u, vec3<bool>(false, true, false)), Struct_1(-791f, 1u, vec3<bool>(false, false, false)), Struct_1(-1279f, 1u, vec3<bool>(false, false, true)), Struct_1(273f, 66041u, vec3<bool>(false, false, false)), Struct_1(-189f, 36924u, vec3<bool>(false, false, false)), Struct_1(-1233f, 26336u, vec3<bool>(true, false, true)), Struct_1(-863f, 8155u, vec3<bool>(true, false, true)), Struct_1(246f, 42612u, vec3<bool>(true, true, false)), Struct_1(3028f, 0u, vec3<bool>(true, true, true)), Struct_1(-1189f, 0u, vec3<bool>(false, true, false)), Struct_1(307f, 1u, vec3<bool>(true, false, true)), Struct_1(-992f, 1u, vec3<bool>(false, true, false)));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a.a, -114f, false)) * global0.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, global2[_wgslsmith_index_u32(global1.a.b, 24u)])))))));
}

fn func_2() -> vec3<bool> {
    global3 = array<Struct_2, 5>();
    global3 = array<Struct_2, 5>();
    var var_0 = global1.a.a;
    global3 = array<Struct_2, 5>();
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, global1.a.b), vec2<u32>(41045u, 61709u));
    return !vec3<bool>(all(!vec4<bool>(global1.a.c.x, true, global1.a.c.x, global1.a.c.x)), !(!global0.c.x), global0.c.x);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> bool {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(-(~(-30663i)), -3547i), abs(-2147483647i)) ^ (vec2<i32>(i32(-1i) * -1i, 0i) << (_wgslsmith_mult_vec2_u32(~(~vec2<u32>(arg_0.a.b, 8689u)), abs(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a.b, 0u), vec2<u32>(arg_0.a.b, 41637u)))) % vec2<u32>(32u)));
    global1 = arg_0;
    global4 = array<Struct_1, 12>();
    var var_1 = vec2<u32>(abs(~1u) | (abs(u_input.a) << (global1.a.b % 32u)), ~reverseBits(~global1.a.b)) | ~(~vec2<u32>(countOneBits(0u), 4294967295u));
    var_1 = ~(vec2<u32>(~(~0u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 59313u, 16263u, 4241u) << (vec4<u32>(4294967295u, global0.b, u_input.a, 1u) % vec4<u32>(32u)), vec4<u32>(arg_0.a.b, 1u, arg_0.a.b, global0.b))) | vec2<u32>((26553u ^ u_input.a) >> (select(u_input.a, 1205u, true) % 32u), 1u));
    return arg_0.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-733f)), 2141f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1()))))), ~1u, func_2());
    global2 = array<f32, 24>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(695f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1627f - var_0.a), -873f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -522f))) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1.a.b, 24u)] * _wgslsmith_f_op_f32(-global1.a.a)))), ~99828u, vec3<bool>(all(vec2<bool>(all(vec2<bool>(global0.c.x, false)), func_3(global3[_wgslsmith_index_u32(27542u, 5u)], vec4<bool>(false, global1.a.c.x, false, true)))), var_0.c.x, global1.a.c.x));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(514f - var_1.a)), 72297u, vec3<bool>(global0.c.x, !(!global0.c.x | all(vec4<bool>(true, true, var_0.c.x, global1.a.c.x))), false));
    let var_2 = select(_wgslsmith_mod_vec2_u32(~firstLeadingBit(~vec2<u32>(var_0.b, var_0.b)), vec2<u32>(~u_input.a, 1u)), select(countOneBits(reverseBits(~vec2<u32>(var_1.b, global1.a.b))), vec2<u32>(4294967295u, min(global0.b, ~global1.a.b)), func_2().yz), any(var_1.c));
    var var_3 = global3[_wgslsmith_index_u32(0u, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(~((_wgslsmith_mod_u32(4294967295u, var_1.b) << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, var_3.a.b, 4294967295u), vec3<u32>(36953u, 1u, 4294967295u)) % 32u)) ^ firstLeadingBit(_wgslsmith_mult_u32(10894u, 0u))));
}

