struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: vec4<u32>;

var<private> global2: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<i32>(-30120i, -41413i, 2147483647i), vec3<i32>(1i, 61079i, 35541i), vec3<i32>(10910i, i32(-2147483648), i32(-2147483648)), vec3<i32>(45952i, -26980i, 0i), vec3<i32>(-1i, 14739i, 0i), vec3<i32>(88042i, 0i, 2147483647i), vec3<i32>(2147483647i, 11509i, 28498i), vec3<i32>(29350i, -14464i, 2147483647i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(-5666i, 1i, 60978i), vec3<i32>(-21343i, 0i, 9993i), vec3<i32>(-3172i, 33978i, 0i), vec3<i32>(-1033i, 0i, -43298i), vec3<i32>(33465i, -71208i, 2147483647i), vec3<i32>(7054i, -40560i, 2147483647i), vec3<i32>(1i, 2147483647i, 46158i), vec3<i32>(-30869i, -33113i, -1i), vec3<i32>(12273i, i32(-2147483648), -7165i), vec3<i32>(-45437i, -29160i, -1i), vec3<i32>(72892i, 0i, 31134i), vec3<i32>(32616i, -19980i, i32(-2147483648)), vec3<i32>(29087i, 1i, 2147483647i), vec3<i32>(24156i, 1i, -1i), vec3<i32>(-33805i, 1i, -1i), vec3<i32>(-14366i, 2147483647i, 2147483647i), vec3<i32>(21725i, -1i, 0i), vec3<i32>(6869i, 2147483647i, i32(-2147483648)), vec3<i32>(-75284i, 8779i, 0i), vec3<i32>(50507i, -388i, 1i));

var<private> global3: array<u32, 21> = array<u32, 21>(49543u, 14201u, 77379u, 0u, 21515u, 2863u, 0u, 36470u, 0u, 4294967295u, 4294967295u, 75500u, 4294967295u, 0u, 1u, 1u, 1u, 0u, 7394u, 40354u, 17466u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1434f, -1400f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(832f + -130f), -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2024f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-184f, -364f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u), 66599u << (_wgslsmith_clamp_u32(max(~global1.x, _wgslsmith_add_u32(u_input.a.x, global1.x)), 48536u, max(_wgslsmith_mod_u32(1u, global1.x), ~global3[_wgslsmith_index_u32(82741u, 21u)])) % 32u));
}

