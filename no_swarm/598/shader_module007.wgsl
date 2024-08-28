struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec2<u32>(15368u, 4294967295u), vec4<f32>(332f, 1702f, -188f, -1974f), 0u, vec4<f32>(171f, 574f, -620f, 162f)), Struct_2(vec2<u32>(11593u, 8672u), vec4<f32>(-1372f, 678f, 1000f, 866f), 78445u, vec4<f32>(-637f, 615f, -318f, -1187f)), Struct_2(vec2<u32>(28763u, 4294967295u), vec4<f32>(176f, 1765f, 1313f, 328f), 1u, vec4<f32>(1546f, -1045f, 2442f, 2677f)), Struct_2(vec2<u32>(10536u, 4294967295u), vec4<f32>(-685f, 1000f, -507f, -2099f), 1u, vec4<f32>(-148f, 786f, -1780f, -165f)), Struct_2(vec2<u32>(4294967295u, 38365u), vec4<f32>(1444f, 862f, 596f, -443f), 1u, vec4<f32>(565f, 1099f, 161f, 744f)), Struct_2(vec2<u32>(0u, 1u), vec4<f32>(-630f, 606f, 1196f, 1000f), 0u, vec4<f32>(-490f, 1944f, -1204f, -589f)), Struct_2(vec2<u32>(81860u, 34362u), vec4<f32>(1050f, -307f, 441f, -1225f), 31329u, vec4<f32>(1000f, 951f, 559f, -616f)), Struct_2(vec2<u32>(4294967295u, 0u), vec4<f32>(-1217f, 513f, 1027f, 713f), 53170u, vec4<f32>(-316f, -851f, 152f, 354f)), Struct_2(vec2<u32>(0u, 67005u), vec4<f32>(-261f, -203f, 1538f, -2236f), 1u, vec4<f32>(1000f, -431f, 2300f, -844f)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> u32 {
    global1 = array<Struct_2, 9>();
    return 4294967295u;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2) -> i32 {
    let var_0 = !(!vec3<bool>(arg_0.a, func_3() == 0u, !global0.x));
    global0 = var_0;
    var var_1 = arg_0.a;
    let var_2 = i32(-1i) * -select(-60705i, u_input.d.x, select(!global0.x, var_0.x, any(vec4<bool>(false, global0.x, global0.x, false))));
    var var_3 = _wgslsmith_div_f32(arg_1.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b.x, _wgslsmith_f_op_f32(-393f - -422f)))))));
    return -2147483647i;
}

fn func_1(arg_0: i32) -> i32 {
    global1 = array<Struct_2, 9>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f));
    let var_1 = 4294967295u;
    return -arg_0 & func_2(Struct_4(true, -1786f), global1[_wgslsmith_index_u32(min(10183u >> (~var_1 % 32u), _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 1u), min(var_1, u_input.c), 54693u)), 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.b, 9u)];
    let var_1 = ~u_input.d ^ -u_input.d;
    let var_2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(755f, _wgslsmith_div_i32(_wgslsmith_add_i32(~var_2 ^ (2147483647i >> (var_0.c % 32u)), ~(u_input.a << (0u % 32u))), func_1(var_1.x)), abs(vec3<u32>(firstTrailingBit(_wgslsmith_clamp_u32(var_0.a.x, 20368u, u_input.c)), 1u, 23693u)), _wgslsmith_add_vec4_i32(-select(~vec4<i32>(u_input.a, u_input.d.x, u_input.a, var_2), vec4<i32>(var_2, -7206i, var_2, var_1.x), vec4<bool>(global0.x, global0.x, global0.x, true)), -select(vec4<i32>(var_1.x, var_2, 2147483647i, 9381i), vec4<i32>(5081i, var_1.x, -17356i, 2147483647i), global0.x) & vec4<i32>(var_1.x, abs(var_1.x), _wgslsmith_mod_i32(-1i, -17104i), -6158i << (var_0.a.x % 32u))));
}

