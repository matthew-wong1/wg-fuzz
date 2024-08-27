struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(4294967295u, 4294967295u, 10808u), -739f, vec2<bool>(true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(~u_input.b, 28u)];
    let var_0 = _wgslsmith_f_op_f32(-948f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(165f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.b)), _wgslsmith_f_op_f32(-141f * global1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1684f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b, global1.b))))));
    var var_1 = global0[_wgslsmith_index_u32(select(~firstTrailingBit(_wgslsmith_mod_u32(43339u << (u_input.b % 32u), 0u | global1.a.x)), 0u, !global1.c.x), 28u)];
    let var_2 = _wgslsmith_clamp_u32(~0u, ~(~(~37517u) << (_wgslsmith_clamp_u32(reverseBits(global1.a.x), u_input.e, 4294967295u) % 32u)), ~min(reverseBits(var_1.a.x), global1.a.x) << (var_1.a.x % 32u));
    var_1 = Struct_1(vec3<u32>(~global1.a.x, ~_wgslsmith_clamp_u32(22383u, u_input.e, 37784u), _wgslsmith_add_u32(abs(global1.a.x), ~global1.a.x)) | ~var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-780f * _wgslsmith_div_f32(664f, _wgslsmith_f_op_f32(-global1.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -162f))), !var_1.c);
    var var_3 = 56785i;
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(select(~4294967295u | (~var_2 & (var_2 >> (49796u % 32u))), 14414u, select(min(var_1.a.x, u_input.e), 6906u, global1.c.x) != var_2), global1.a.x), 28u)];
    var var_5 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(~7304u, ~_wgslsmith_mult_u32(24211u, u_input.e), ~(abs(var_4.a.x) | (~var_1.a.x & ~global1.a.x)), vec3<u32>(var_1.a.x, var_2, var_2));
}

