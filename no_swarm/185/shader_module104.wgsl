struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec3<f32>(-1626f, -680f, 755f), vec3<u32>(7458u, 2420u, 4294967295u)), Struct_2(vec3<f32>(1549f, -1985f, 1876f), vec3<u32>(77852u, 0u, 4294967295u)), Struct_2(vec3<f32>(-1676f, -145f, -153f), vec3<u32>(1u, 0u, 26699u)), Struct_2(vec3<f32>(980f, -2161f, -219f), vec3<u32>(4294967295u, 128617u, 89118u)), Struct_2(vec3<f32>(-257f, -692f, -398f), vec3<u32>(54762u, 0u, 3511u)), Struct_2(vec3<f32>(-541f, 354f, -1000f), vec3<u32>(101631u, 4294967295u, 15254u)), Struct_2(vec3<f32>(1000f, 208f, 992f), vec3<u32>(2286u, 0u, 27959u)), Struct_2(vec3<f32>(-1849f, -589f, 862f), vec3<u32>(4294967295u, 4185u, 1u)), Struct_2(vec3<f32>(-1020f, 2016f, 377f), vec3<u32>(52720u, 0u, 34598u)), Struct_2(vec3<f32>(1423f, -1066f, -976f), vec3<u32>(35629u, 1u, 33555u)), Struct_2(vec3<f32>(242f, -351f, 415f), vec3<u32>(743u, 73125u, 4517u)), Struct_2(vec3<f32>(-717f, 428f, 908f), vec3<u32>(15516u, 0u, 28550u)), Struct_2(vec3<f32>(239f, -291f, 315f), vec3<u32>(28919u, 26488u, 10001u)), Struct_2(vec3<f32>(1200f, 1153f, -382f), vec3<u32>(26809u, 0u, 4294967295u)), Struct_2(vec3<f32>(-886f, 600f, 746f), vec3<u32>(10599u, 53454u, 51596u)), Struct_2(vec3<f32>(-639f, 779f, 3131f), vec3<u32>(0u, 30163u, 60229u)), Struct_2(vec3<f32>(428f, -675f, 540f), vec3<u32>(4604u, 0u, 11409u)), Struct_2(vec3<f32>(566f, -701f, 577f), vec3<u32>(3109u, 4294967295u, 15121u)));

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<vec3<u32>, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-11311i, 2147483647i, 1i, 1i)), _wgslsmith_dot_vec4_i32(max(vec4<i32>(-1i, -2147483647i, 0i, -13180i), vec4<i32>(2147483647i, 1i, 33778i, -23282i)), vec4<i32>(1i, 1i, 1i, 1i))) & -2147483647i) <= ~(-_wgslsmith_dot_vec2_i32(~vec2<i32>(-24629i, -34978i), vec2<i32>(2147483647i, 28192i)));
    global0 = array<Struct_2, 18>();
    var var_1 = vec2<f32>(_wgslsmith_div_f32(-682f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1672f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(177f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(970f + 280f), 1f))))));
    var var_2 = global0[_wgslsmith_index_u32(u_input.c.x, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(88426u, ~var_2.b.x, countOneBits(122079u), 87424u)) ^ reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(5358u, 0u, 50322u, u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 11758u, 0u), vec4<u32>(4294967295u, 0u, var_2.b.x, 4294967295u)))));
}

