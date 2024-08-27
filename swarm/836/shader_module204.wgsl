struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13>;

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<Struct_2, 25>;

var<private> global3: vec4<i32> = vec4<i32>(1i, -8449i, i32(-2147483648), -17080i);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 9>();
    global3 = vec4<i32>(-3753i, -26797i, max(global3.x, 1i), global3.x);
    var var_0 = global1[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 15253u, 79524u), abs(global0[_wgslsmith_index_u32(4294967295u, 13u)])), u_input.a.x)), 9u)];
    var_0 = Struct_1(0u > abs(u_input.a.x));
    var var_1 = select(!vec4<bool>(var_0.a, var_0.a, all(select(vec3<bool>(true, false, true), vec3<bool>(true, var_0.a, var_0.a), var_0.a)), any(vec2<bool>(false, true)) == all(vec3<bool>(true, false, false))), !vec4<bool>(true, var_0.a, true, false), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(u_input.a, abs(~max(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))));
}

