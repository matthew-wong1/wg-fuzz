struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 17>;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> StorageBuffer {
    let var_0 = global0.zz;
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(505f, global0.x, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(221f, var_0.x))), _wgslsmith_f_op_f32(-1038f - _wgslsmith_div_f32(global0.x, global0.x)), 119f)), global2.b);
    global1 = array<Struct_1, 17>();
    var var_1 = vec4<f32>(-404f, global0.x, global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-global0.x))));
    let var_2 = vec2<bool>(false, !any(vec3<bool>(true, true, true)));
    return StorageBuffer(-29520i, ~select(vec3<u32>(~18448u, _wgslsmith_div_u32(1u, 11239u), 209u), reverseBits(vec3<u32>(4294967295u, 4294967295u, 1u)) >> (firstLeadingBit(vec3<u32>(31310u, 77205u, 68792u)) % vec3<u32>(32u)), !select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(true, var_2.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

