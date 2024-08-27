struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(8406i, -26181i, 5298i);

var<private> global1: array<vec3<bool>, 8>;

var<private> global2: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(31537i, 41516i, 17774i), vec3<i32>(-10851i, 0i, -18925i), vec3<i32>(0i, 1i, 0i), vec3<i32>(-16086i, i32(-2147483648), 2147483647i), vec3<i32>(-59881i, -13154i, 1i), vec3<i32>(0i, -567i, 2147483647i), vec3<i32>(36683i, -32606i, 37293i), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(-9399i, 79902i, -57293i), vec3<i32>(60145i, -49086i, 7949i), vec3<i32>(3562i, -27921i, 0i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(abs(1000f))), 428f, abs(~_wgslsmith_mod_u32(1u, ~1u)), 0i, _wgslsmith_sub_i32(-42332i, _wgslsmith_dot_vec2_i32(~u_input.c.zx, _wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, 29361i), vec2<i32>(global0.x, global0.x)))) << (_wgslsmith_div_u32(select(_wgslsmith_mod_u32(17418u, u_input.a.x), u_input.a.x >> (u_input.d % 32u), true), max(27343u, u_input.d)) % 32u));
}

