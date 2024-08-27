struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: f32;

var<private> global1: array<vec4<u32>, 26>;

var<private> global2: i32 = -1i;

var<private> global3: vec3<u32> = vec3<u32>(16645u, 22963u, 0u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(select(global1[_wgslsmith_index_u32(abs(global3.x), 26u)] ^ firstLeadingBit(global1[_wgslsmith_index_u32(global3.x, 26u)]), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, global3.x, global3.x) ^ global1[_wgslsmith_index_u32(4294967295u, 26u)], _wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(u_input.a, 26u)], vec4<u32>(4294967295u, global3.x, u_input.a, u_input.a), vec4<u32>(u_input.a, 49506u, 0u, u_input.a))), true), ~global1[_wgslsmith_index_u32(u_input.a, 26u)]) ^ global1[_wgslsmith_index_u32(37085u, 26u)];
    let var_1 = _wgslsmith_mult_i32(-abs(max(_wgslsmith_mult_i32(1i, 1i), max(1i, -2147483647i))), 0i);
    global2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-640f, 1f, true)));
}

