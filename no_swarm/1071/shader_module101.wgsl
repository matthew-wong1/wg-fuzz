struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_4 = Struct_4(Struct_3(Struct_1(vec2<f32>(102f, -348f), 1u), vec3<f32>(833f, -1000f, -2669f), vec2<i32>(-36948i, 8357i)), Struct_3(Struct_1(vec2<f32>(803f, 668f), 57014u), vec3<f32>(1254f, 1000f, -1103f), vec2<i32>(2147483647i, 1i)), vec3<u32>(0u, 0u, 0u), Struct_3(Struct_1(vec2<f32>(2588f, -827f), 0u), vec3<f32>(599f, 420f, 107f), vec2<i32>(8512i, 78i)));

var<private> global2: u32 = 5917u;

var<private> global3: array<Struct_1, 5>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_sub_vec4_i32(vec4<i32>(-global1.b.c.x, ~_wgslsmith_clamp_i32(29191i, 2147483647i, -2147483647i), reverseBits(-2147483647i), ~(-1i)), select(vec4<i32>(u_input.b, 17797i, global1.a.c.x, _wgslsmith_mod_i32(-4702i, -24957i)), _wgslsmith_div_vec4_i32(~vec4<i32>(global1.a.c.x, -24964i, 2147483647i, -1i), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b)), vec4<bool>(false, global0.x && global0.x, any(vec2<bool>(true, true)), any(vec4<bool>(false, true, false, global0.x))))));
    global2 = global1.d.a.b;
    var var_1 = u_input.a.x;
    var var_2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(683f, -1892f, global1.d.a.a.x))), vec3<f32>(126f, _wgslsmith_div_f32(-1031f, global1.d.a.a.x), -176f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-208f, global1.d.b.x, global1.b.a.a.x)) + _wgslsmith_div_vec3_f32(global1.d.b, vec3<f32>(global1.b.a.a.x, 519f, -919f))) - global1.a.b)), u_input.a.zz, global1.c.x);
}

