struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true));

var<private> global1: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(-1287f, 1040f), vec2<f32>(515f, -497f), vec2<f32>(-1401f, 279f), vec2<f32>(773f, 687f), vec2<f32>(500f, 635f), vec2<f32>(-2063f, -1550f), vec2<f32>(1222f, 399f), vec2<f32>(441f, -520f), vec2<f32>(-1165f, -746f), vec2<f32>(-748f, -1403f), vec2<f32>(-1000f, -131f), vec2<f32>(-1263f, -1119f), vec2<f32>(-600f, 230f), vec2<f32>(443f, 1172f), vec2<f32>(-1593f, 1035f), vec2<f32>(2249f, 1434f), vec2<f32>(-1321f, -739f), vec2<f32>(-1811f, -1181f), vec2<f32>(-1383f, 1131f), vec2<f32>(214f, 1400f), vec2<f32>(453f, 1009f), vec2<f32>(1734f, -632f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>) -> vec3<u32> {
    global0 = array<vec4<bool>, 31>();
    global1 = array<vec2<f32>, 22>();
    global1 = array<vec2<f32>, 22>();
    var var_0 = 99863u;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1260f, arg_0.x) * arg_0)) * arg_0))));
    return ~(_wgslsmith_sub_vec3_u32(arg_1, _wgslsmith_add_vec3_u32(~arg_1, vec3<u32>(arg_1.x, 4294967295u, 4294967295u))) ^ _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(28477u, u_input.d, 47634u)), arg_1), ~vec3<u32>(arg_1.x, u_input.d, arg_1.x)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_5, arg_3: bool) -> i32 {
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, u_input.d << (~(~select(u_input.d, 82288u, false)) % 32u), ~(~func_1(vec3<f32>(931f, -1968f, 1362f), vec3<u32>(u_input.d, u_input.b, u_input.d))) & ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, u_input.b, u_input.d), vec3<u32>(u_input.d, 49312u, 5237u)), vec3<u32>(u_input.d, 0u, u_input.d) & vec3<u32>(1u, u_input.d, 34871u)), select(~vec2<i32>(~u_input.a, _wgslsmith_mult_i32(14405i, 0i)), vec2<i32>(func_2(u_input.c, -1000f, Struct_5(global1[_wgslsmith_index_u32(0u, 22u)], vec3<u32>(12228u, 3305u, u_input.b), u_input.c), false) | (u_input.a & 1204i), u_input.c), true));
}

