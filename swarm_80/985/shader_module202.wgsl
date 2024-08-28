struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(43093u, 80345u, 4294967295u), vec3<u32>(36885u, 1u, 4294967295u), vec3<u32>(0u, 1u, 1u), vec3<u32>(8784u, 21605u, 51377u), vec3<u32>(5411u, 34346u, 1u), vec3<u32>(1u, 0u, 7253u), vec3<u32>(1u, 4294967295u, 12669u), vec3<u32>(9903u, 34596u, 59146u));

var<private> global2: array<vec2<i32>, 7>;

var<private> global3: array<Struct_1, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(292f))))), -448f);
    var var_1 = -(-vec2<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, u_input.b)) & firstTrailingBit(-global2[_wgslsmith_index_u32(9244u, 7u)] & global2[_wgslsmith_index_u32(~0u, 7u)]));
    var var_2 = ~var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x | var_1.x, u_input.d.xwx, ~vec2<u32>(0u, _wgslsmith_div_u32(~u_input.d.x, 57419u << (u_input.d.x % 32u))));
}

