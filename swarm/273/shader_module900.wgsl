struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(105829u, 4114u, 0u, 4294967295u, 0u, 18963u, 73721u, 1u, 78418u, 0u, 1u, 20443u, 4198u, 78973u, 103813u, 59006u, 43739u, 3876u, 20295u, 24256u, 1u, 0u, 3121u, 34900u, 8201u, 32072u);

var<private> global1: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: f32) -> vec4<u32> {
    let var_0 = arg_0;
    return u_input.d;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    global0 = array<u32, 26>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -663f));
    var var_1 = vec3<i32>(69473i, ~(-select(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c.x), vec2<i32>(13293i, u_input.c.x)), ~(-47893i), any(vec3<bool>(false, true, false)))), -19114i);
    let var_2 = vec2<i32>(7944i, -1i);
    global0 = array<u32, 26>();
    return all(!vec2<bool>(arg_3.d, !arg_3.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 26>();
    var var_0 = firstTrailingBit(reverseBits(vec4<u32>(~0u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 26u)], 26u)], 1u), 0u, 4294967295u))) ^ reverseBits(select(vec4<u32>(u_input.d.x, ~1u, max(u_input.e, global0[_wgslsmith_index_u32(17474u, 26u)]), select(global0[_wgslsmith_index_u32(u_input.a, 26u)], 0u, true)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -200f)), true));
    let var_1 = !select(vec4<bool>(true, !all(vec2<bool>(false, false)), false, false), vec4<bool>(true, true, true, func_2(~u_input.c, u_input.a, func_1(-397f), Struct_1(u_input.d, true, -1183f, false, vec4<bool>(false, true, true, false)))), true);
    var var_2 = var_0.x;
    let var_3 = 23493u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-398f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1165f)), _wgslsmith_f_op_f32(-1396f - 887f))))));
}

