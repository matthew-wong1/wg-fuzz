struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32> = vec4<u32>(15860u, 0u, 4294967295u, 1u);

var<private> global2: array<Struct_4, 1>;

var<private> global3: f32 = -1114f;

var<private> global4: bool = false;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.a.x, -2147483647i) << (global1.yzw % vec3<u32>(32u)), ~u_input.c), _wgslsmith_mult_vec3_i32(u_input.c, u_input.c | u_input.c)), _wgslsmith_dot_vec2_i32(~max(vec2<i32>(u_input.a.x, u_input.c.x), u_input.a.yx), vec2<i32>(u_input.c.x, -u_input.c.x))), -79191i, _wgslsmith_f_op_f32(-658f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) * global0.a)), u_input.d);
}

