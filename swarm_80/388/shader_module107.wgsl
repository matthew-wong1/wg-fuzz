struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(-14064i, i32(-2147483648), 1i, 19124i, -48707i, -6732i, -27491i, 4347i, -9144i, 0i, -15715i, 1i, -1i, 2147483647i, 0i, 30988i, 23097i, -40476i, 1i);

var<private> global1: Struct_1 = Struct_1(141f, vec4<f32>(1098f, -1000f, 391f, -1267f), vec3<bool>(true, true, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.a.x, select(25594u, u_input.a.x, false)), _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), vec3<i32>(-1i, _wgslsmith_mult_i32(min(global0[_wgslsmith_index_u32(25380u, 19u)], 1i & global0[_wgslsmith_index_u32(55330u, 19u)]), ~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], -2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 19u)])), 34797i));
}

