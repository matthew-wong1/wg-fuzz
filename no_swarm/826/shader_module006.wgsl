struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<bool>(true, false, false, true), 41788u), Struct_1(vec4<bool>(false, false, false, true), 4294967295u), Struct_1(vec4<bool>(true, false, false, true), 27807u), Struct_1(vec4<bool>(true, false, true, true), 14380u), Struct_1(vec4<bool>(true, true, false, true), 4294967295u), Struct_1(vec4<bool>(false, true, true, false), 4294967295u), Struct_1(vec4<bool>(false, true, false, false), 0u), Struct_1(vec4<bool>(true, false, true, true), 4294967295u), Struct_1(vec4<bool>(false, false, true, false), 60288u), Struct_1(vec4<bool>(false, true, false, false), 57163u), Struct_1(vec4<bool>(true, false, true, false), 19407u), Struct_1(vec4<bool>(true, false, true, true), 1u), Struct_1(vec4<bool>(false, true, false, false), 53974u), Struct_1(vec4<bool>(false, true, false, false), 526u), Struct_1(vec4<bool>(true, true, true, false), 0u), Struct_1(vec4<bool>(false, false, true, true), 39528u), Struct_1(vec4<bool>(true, false, true, false), 37688u), Struct_1(vec4<bool>(true, false, true, false), 83196u), Struct_1(vec4<bool>(false, true, true, true), 4294967295u), Struct_1(vec4<bool>(true, false, true, true), 52969u), Struct_1(vec4<bool>(true, true, true, false), 1u), Struct_1(vec4<bool>(false, true, false, false), 0u), Struct_1(vec4<bool>(true, false, true, true), 48453u));

var<private> global1: array<bool, 32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    let var_0 = 930f;
    let var_1 = ~(~reverseBits(vec4<i32>(~(-1i), ~0i, ~(-2147483647i), _wgslsmith_mult_i32(-1i, 0i))));
    global0 = array<Struct_1, 23>();
    let var_2 = var_1.x;
    let var_3 = Struct_2((~_wgslsmith_div_u32(29072u, u_input.a) >> (abs(_wgslsmith_mult_u32(u_input.a, u_input.a)) % 32u)) | u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(select(~vec3<u32>(56783u, u_input.a, 118737u), ~vec3<u32>(u_input.a, var_3.a, var_3.a), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 32u)], global1[_wgslsmith_index_u32(u_input.a, 32u)], true)), ~vec3<u32>(0u, 0u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 44363u, var_3.a) << (vec3<u32>(var_3.a, var_3.a, 0u) % vec3<u32>(32u)), vec3<u32>(4294967295u, 4294967295u, u_input.a))) | abs(vec3<u32>(u_input.a, var_3.a, u_input.a)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(var_0 + var_0)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -243f) - vec3<f32>(var_0, -2386f, -1000f)), vec3<f32>(var_0, var_0, 1216f)))))), -_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(var_1.x, 34439i), -53301i), ~var_1.zz), vec2<u32>(~u_input.a, ~(~21374u & var_3.a)), vec3<i32>(1i, ~(-30212i), -abs(35195i)));
}

