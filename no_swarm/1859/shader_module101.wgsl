struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<bool>, 30>;

var<private> global2: i32 = 2147483647i;

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(-2797f, vec2<u32>(18292u, 39818u), i32(-2147483648), vec4<u32>(29201u, 4294967295u, 4294967295u, 4294967295u))), Struct_2(Struct_1(1148f, vec2<u32>(4294967295u, 39036u), -1i, vec4<u32>(59795u, 4294967295u, 1u, 4294967295u))), Struct_2(Struct_1(150f, vec2<u32>(54919u, 1724u), 2147483647i, vec4<u32>(46805u, 90636u, 74705u, 0u))), Struct_2(Struct_1(1000f, vec2<u32>(4294967295u, 7586u), 2147483647i, vec4<u32>(4294967295u, 20349u, 0u, 1u))), Struct_2(Struct_1(1188f, vec2<u32>(47966u, 18300u), 38144i, vec4<u32>(1u, 15246u, 1u, 5586u))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = array<vec3<bool>, 30>();
    let var_1 = 31123i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, (firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(28341i, var_1, var_1), vec3<i32>(var_1, -1i, var_1))) & vec3<i32>(_wgslsmith_clamp_i32(22200i, -36055i, -31948i), var_1, var_1)) | (_wgslsmith_mult_vec3_i32(vec3<i32>(var_1, -1i, var_1), vec3<i32>(var_1, 11336i, 0i)) & vec3<i32>(0i, -var_1, var_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.xzz)) * _wgslsmith_f_op_vec3_f32(-global0.zxx)), global0.xz, firstTrailingBit(vec4<i32>(abs(var_1), _wgslsmith_add_i32(-1i, var_1) << (max(u_input.d, 1u) % 32u), 61068i, -var_1)));
}

