struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> i32 {
    return i32(-1i) * -u_input.d.x;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> i32 {
    global0 = array<vec2<f32>, 26>();
    var var_0 = Struct_1(0i);
    let var_1 = abs(-_wgslsmith_clamp_vec3_i32(u_input.d & -u_input.d, vec3<i32>(reverseBits(var_0.a), 0i, func_2(arg_0, arg_2)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, -1i, -2087i), vec3<i32>(-1i, 0i, arg_1.a)), vec3<i32>(-1i, arg_1.a, -8453i))));
    var_0 = arg_1;
    var_0 = Struct_1(arg_1.a);
    return 80749i;
}

fn func_3() -> vec2<i32> {
    global0 = array<vec2<f32>, 26>();
    global0 = array<vec2<f32>, 26>();
    var var_0 = u_input.c;
    var var_1 = vec2<bool>(true, all(select(vec4<bool>(true, false, true, all(vec4<bool>(true, false, true, true))), vec4<bool>(any(vec3<bool>(false, false, true)), false, false, true), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)))));
    var_1 = vec2<bool>(!((var_1.x & var_1.x) && true) && any(vec2<bool>(select(var_1.x, var_1.x, var_1.x), any(vec3<bool>(var_1.x, true, true)))), var_1.x & (_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -473f))) != -786f));
    return _wgslsmith_sub_vec2_i32(~vec2<i32>(17139i, -u_input.d.x), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-1949i, 63744i, 1i), ~10488i, reverseBits(1i)), ~u_input.d), u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 26>();
    let var_0 = func_1(43086u, Struct_1(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d.x, -35770i, 13614i), vec3<i32>(-36500i, 2147483647i >> (1u % 32u), _wgslsmith_div_i32(u_input.d.x, -2147483647i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(175f, -387f, 2480f)), vec3<f32>(2457f, 479f, -1849f), false)))));
    let var_1 = ~(~_wgslsmith_mod_vec2_i32((u_input.d.zx >> (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))) ^ u_input.d.xx, -min(vec2<i32>(u_input.d.x, 76592i), vec2<i32>(var_0, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1652f * _wgslsmith_f_op_f32(min(189f, -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -234f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(473f * 1262f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(735f, 1268f, 1088f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1275f, 414f, -449f, 209f) + vec4<f32>(434f, 1303f, 346f, 1024f))))), ~func_3(), vec4<i32>(-17450i, 8218i, var_1.x, u_input.d.x));
}

