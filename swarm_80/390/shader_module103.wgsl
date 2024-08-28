struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-28548i, vec3<bool>(true, true, false)), Struct_1(i32(-2147483648), vec3<bool>(true, false, true)), Struct_1(-46201i, vec3<bool>(true, true, true)), Struct_1(1i, vec3<bool>(false, false, false)), Struct_1(i32(-2147483648), vec3<bool>(false, false, false)), Struct_1(-26188i, vec3<bool>(true, true, true)), Struct_1(1i, vec3<bool>(true, false, false)), Struct_1(2147483647i, vec3<bool>(false, false, true)), Struct_1(-24640i, vec3<bool>(true, false, true)), Struct_1(50894i, vec3<bool>(false, true, false)), Struct_1(14797i, vec3<bool>(false, true, false)), Struct_1(-20153i, vec3<bool>(true, false, false)));

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_1, 27>;

var<private> global4: array<f32, 7>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_u32(abs(u_input.c), _wgslsmith_sub_u32(u_input.c, ~u_input.b.x));
    var_0 = _wgslsmith_sub_u32(38546u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(firstTrailingBit(3054u), u_input.c), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(-760f, u_input.a, ~abs(u_input.b.x ^ 76924u) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(62309u, 1u)) << (abs(u_input.b) % vec2<u32>(32u)), u_input.b) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-721f, global4[_wgslsmith_index_u32(4294967295u, 7u)])))))));
}

