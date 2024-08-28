struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
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

var<private> global0: vec3<u32> = vec3<u32>(61704u, 47335u, 7608u);

var<private> global1: i32;

var<private> global2: array<u32, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = arg_0;
    let var_1 = arg_0;
    global2 = array<u32, 4>();
    global1 = _wgslsmith_dot_vec2_i32(~u_input.d.xy, -u_input.d.zx) >> (_wgslsmith_dot_vec4_u32(var_0.a, (~var_0.a >> (vec4<u32>(4692u, arg_0.a.x, var_1.a.x, 25764u) % vec4<u32>(32u))) | ~(~arg_0.a)) % 32u);
    global0 = arg_0.a.xwx;
    return StorageBuffer(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec3<u32>(_wgslsmith_sub_u32(u_input.b, ~76857u), _wgslsmith_mult_u32(_wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(1u, 4u)]), 52729u), ~_wgslsmith_dot_vec2_u32(global0.yy, global0.zy));
    global1 = u_input.a;
    let x = u_input.a;
    s_output = func_1(Struct_1(reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(global0.xx, global0.xy), countOneBits(global2[_wgslsmith_index_u32(0u, 4u)]), ~global0.x, reverseBits(0u))), 1i));
}

