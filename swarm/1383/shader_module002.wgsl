struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<i32>;

var<private> global2: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<bool>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -749f), -1217f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-376f * arg_0.a.c) + -866f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_0.a.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0.a.a)))))), arg_0.a.c));
    var var_1 = arg_0.a;
    var var_2 = _wgslsmith_sub_vec4_i32(reverseBits(min(~vec4<i32>(global1.x, 2147483647i, global1.x, var_1.b.x), vec4<i32>(select(-16848i, 1i, true), -33736i, global1.x, global1.x))), ~vec4<i32>(10113i, ~(-13610i), 1i, 2147483647i));
    return vec2<u32>((77017u << (u_input.c.x % 32u)) << (1u % 32u), arg_0.c.x);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> i32 {
    global1 = arg_1.a.b;
    let var_0 = -440f;
    var var_1 = true;
    global0 = abs(-2147483647i);
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0), ~vec4<i32>(u_input.a, u_input.a, 2147483647i, arg_2.x), -770f), vec2<i32>(arg_2.x, arg_2.x), reverseBits(func_3(Struct_2(Struct_1(1166f, arg_1.a.b, var_0), arg_1.b, vec2<u32>(u_input.c.x, 1u)), select(vec2<bool>(true, arg_0), vec2<bool>(true, false), vec2<bool>(false, false)), vec4<bool>(arg_0, arg_0, true, arg_0)))));
    return var_2.a.a.b.x;
}

fn func_1() -> f32 {
    global0 = -48280i;
    global2 = array<vec3<bool>, 19>();
    global2 = array<vec3<bool>, 19>();
    global0 = ~(-select(~(-4443i), func_2(true, Struct_2(Struct_1(162f, vec4<i32>(2147483647i, u_input.a, global1.x, u_input.a), 246f), global1.xz, u_input.c.xw), global1.xz), true) >> (~countOneBits(firstTrailingBit(u_input.d)) % 32u));
    var var_0 = global1.zz;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1320f, -826f)) + 1274f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), 819f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1313f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(547f, -443f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(678f, 594f)))))), _wgslsmith_sub_vec3_u32(u_input.b, u_input.c.wzx), _wgslsmith_div_vec2_i32(global1.zy, vec2<i32>(abs(abs(u_input.a)), -5123i)), 5271u);
}

