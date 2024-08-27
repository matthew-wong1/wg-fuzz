struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9>;

var<private> global1: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(vec2<f32>(553f, 2706f), 4294967295u, -1689f), Struct_4(vec2<f32>(1182f, -1238f), 48173u, -1000f), Struct_4(vec2<f32>(1365f, 860f), 4294967295u, 932f), Struct_4(vec2<f32>(1045f, 446f), 0u, 363f), Struct_4(vec2<f32>(-722f, 1278f), 4294967295u, -1513f), Struct_4(vec2<f32>(-328f, 1250f), 1u, 669f), Struct_4(vec2<f32>(1000f, -245f), 25103u, -415f), Struct_4(vec2<f32>(-584f, 1917f), 17405u, 324f), Struct_4(vec2<f32>(189f, 1363f), 3949u, 970f), Struct_4(vec2<f32>(-952f, 1000f), 11110u, 422f), Struct_4(vec2<f32>(1327f, -1000f), 4294967295u, -232f), Struct_4(vec2<f32>(409f, 1000f), 73916u, 1110f), Struct_4(vec2<f32>(-2501f, 447f), 71413u, 1089f), Struct_4(vec2<f32>(-476f, -1642f), 10387u, 1000f), Struct_4(vec2<f32>(-1815f, 1243f), 34813u, -920f), Struct_4(vec2<f32>(-880f, 2540f), 78488u, 1423f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~u_input.d.x, -u_input.e.x), min(select(~u_input.a.x, _wgslsmith_div_u32(~u_input.a.x, ~4294967295u), !all(global0[_wgslsmith_index_u32(7451u, 9u)])), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.a.x), ~vec2<u32>(4294967295u, u_input.a.x))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 0u | u_input.a.x, ~u_input.a.x, ~0u), ~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), select(12466u, select(78249u, 1u << (u_input.a.x % 32u), u_input.e.x <= u_input.b.x), 1i <= -u_input.e.x), _wgslsmith_mod_u32(reverseBits(_wgslsmith_add_u32(1u, u_input.a.x)), _wgslsmith_add_u32(4294967295u, u_input.a.x))), -select(35197i, 28903i, false), 351f);
}

