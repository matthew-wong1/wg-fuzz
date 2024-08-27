struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17>;

var<private> global1: array<Struct_1, 30>;

var<private> global2: vec4<u32> = vec4<u32>(1u, 1u, 0u, 1u);

var<private> global3: Struct_2 = Struct_2(vec4<i32>(16309i, -2402i, -30246i, 66527i), Struct_1(false, vec4<f32>(263f, 602f, -1000f, 495f)), vec2<f32>(-1000f, -2069f), Struct_1(true, vec4<f32>(859f, 1000f, -877f, 817f)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global3.d.b.x), 1747f, global3.a.wzw, vec4<i32>(-_wgslsmith_dot_vec3_i32(global3.a.ywx, global3.a.xww | global3.a.zxw), i32(-1i) * -25537i, u_input.a, _wgslsmith_sub_i32(_wgslsmith_add_i32(~0i, u_input.a), -_wgslsmith_add_i32(u_input.a, u_input.a))));
}

