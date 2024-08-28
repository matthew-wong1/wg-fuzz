struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(251f, 3064f, 422f, -440f), vec4<f32>(303f, -1615f, -1000f, 550f), vec4<f32>(418f, -509f, -533f, -826f), vec4<f32>(-881f, 1057f, -112f, -520f), vec4<f32>(1258f, 279f, -993f, -1801f), vec4<f32>(-865f, -867f, 912f, -1370f), vec4<f32>(655f, -406f, -1000f, -481f), vec4<f32>(-1440f, -694f, 826f, -2526f), vec4<f32>(-514f, -675f, 1000f, -115f), vec4<f32>(278f, -907f, 175f, -601f), vec4<f32>(1708f, 282f, -1682f, 1000f), vec4<f32>(-274f, -1254f, -310f, 1000f), vec4<f32>(572f, -1030f, 141f, -637f), vec4<f32>(-951f, 962f, 1527f, 125f), vec4<f32>(1330f, 383f, 1508f, 1622f), vec4<f32>(-894f, 593f, 891f, -851f), vec4<f32>(2212f, -1150f, 1000f, 1101f), vec4<f32>(-262f, -1649f, 879f, 755f), vec4<f32>(688f, 384f, -1525f, 265f), vec4<f32>(-1213f, -1338f, 700f, 1117f));

var<private> global1: array<i32, 4>;

var<private> global2: array<f32, 26> = array<f32, 26>(765f, 364f, -417f, -970f, 2714f, -990f, 1070f, 876f, -924f, -531f, -226f, 630f, -470f, 386f, -896f, -1774f, 506f, -1112f, -633f, 1160f, -258f, -162f, -710f, 676f, -729f, 1146f);

var<private> global3: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(0i, -4533i), vec2<i32>(45324i, -6508i), vec2<i32>(i32(-2147483648), -51043i), vec2<i32>(1i, 0i), vec2<i32>(16577i, -2981i), vec2<i32>(0i, 40867i), vec2<i32>(0i, -21882i), vec2<i32>(0i, 1i), vec2<i32>(i32(-2147483648), i32(-2147483648)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = global0[_wgslsmith_index_u32(0u, 20u)];
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~u_input.a.yx, abs(vec2<u32>(u_input.b, u_input.a.x))), 20u)];
    let var_3 = global1[_wgslsmith_index_u32(~u_input.a.x, 4u)] >> (~(~_wgslsmith_div_u32(~u_input.b, 1u)) % 32u);
    global1 = array<i32, 4>();
    var var_4 = Struct_1(u_input.a.xw, true, (~329u << (countOneBits(~u_input.b) % 32u)) | ~30862u);
    global0 = array<vec4<f32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~global1[_wgslsmith_index_u32(u_input.a.x ^ u_input.b, 4u)] << (~max(7124u, 35673u) % 32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1567f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1222f)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x * var_1.x))) + _wgslsmith_f_op_vec3_f32(exp2(var_1.zxx))), _wgslsmith_div_vec2_i32(~((u_input.d.zy ^ vec2<i32>(u_input.d.x, -2147483647i)) << (_wgslsmith_mult_vec2_u32(u_input.a.xw, vec2<u32>(var_4.a.x, var_4.c)) % vec2<u32>(32u))), vec2<i32>(-35606i, -u_input.d.x)));
}

