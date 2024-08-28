struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, true, false, false, true, false, false, true, false, false);

var<private> global1: Struct_1 = Struct_1(true, -340f);

var<private> global2: array<i32, 14>;

var<private> global3: bool = false;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~_wgslsmith_mult_u32(30703u, 1u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 27907u, 75961u), vec3<u32>(20341u, 0u, 133135u)), ~1050u, ~4294967295u)) << (_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 24829u), vec2<u32>(21298u, 28877u)), ~4294967295u) % 32u), 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~9867u & _wgslsmith_dot_vec2_u32(vec2<u32>(5650u, 27025u), vec2<u32>(30249u, 95644u))), -347f, 2147483647i);
}

