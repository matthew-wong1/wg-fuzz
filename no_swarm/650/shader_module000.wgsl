struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(74807u, 1u), vec2<u32>(38181u, 40182u), vec2<u32>(7317u, 52714u), vec2<u32>(0u, 0u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(32693u, 0u), vec2<u32>(4294967295u, 27117u), vec2<u32>(0u, 12797u), vec2<u32>(39757u, 27495u), vec2<u32>(0u, 1u), vec2<u32>(1u, 77774u), vec2<u32>(28021u, 1u), vec2<u32>(1u, 46981u), vec2<u32>(0u, 72059u), vec2<u32>(1u, 69987u), vec2<u32>(0u, 4294967295u), vec2<u32>(23580u, 35649u), vec2<u32>(1u, 4294967295u), vec2<u32>(7933u, 67741u), vec2<u32>(1u, 75589u), vec2<u32>(40795u, 36641u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1326f;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, ~59405u, vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(min(2147483647i, u_input.a), _wgslsmith_clamp_i32(1i, u_input.b, 22102i)), i32(-1i) * -1i), -2147483647i));
}

