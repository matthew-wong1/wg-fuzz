struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(1u, vec2<f32>(698f, 705f), -291f), Struct_1(4294967295u, vec2<f32>(-750f, 416f), -716f), Struct_1(49450u, vec2<f32>(-465f, 308f), -1050f), Struct_1(1u, vec2<f32>(-933f, 176f), 374f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    var var_0 = Struct_3(global0[_wgslsmith_index_u32((countOneBits(1u | u_input.a.x) << (0u % 32u)) >> (36098u % 32u), 4u)], all(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, any(vec3<bool>(false, true, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, 1u, 0u), ~2285u) >> (~_wgslsmith_mod_u32(abs(var_0.a.a), 1u) % 32u), vec2<f32>(var_0.a.c, var_0.a.b.x));
}

