struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(23818u, false), Struct_1(4294967295u, true), Struct_1(9812u, true), Struct_1(1u, false), Struct_1(17350u, true), Struct_1(0u, true), Struct_1(4294967295u, false), Struct_1(4294967295u, false), Struct_1(4294967295u, true), Struct_1(26048u, true), Struct_1(65363u, false), Struct_1(4197u, true), Struct_1(0u, false), Struct_1(4294967295u, true), Struct_1(33738u, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    var var_0 = ~1u;
    var_0 = 1u << (select(_wgslsmith_sub_u32(~1u ^ _wgslsmith_clamp_u32(43661u, 20116u, 4814u), 100522u), 4294967295u, any(vec4<bool>(false, true, true, true))) % 32u);
    var var_1 = vec2<u32>(1u, 1u);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(vec2<u32>(var_1.x, 4294967295u), vec2<u32>(var_1.x, var_1.x))) | ~(~(~vec2<u32>(41000u, 4294967295u))));
}

