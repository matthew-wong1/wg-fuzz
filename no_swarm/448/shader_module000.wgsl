struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(4294967295u, 4551u, 75531u, 62593u), vec4<u32>(12676u, 4294967295u, 36061u, 4294967295u), vec4<u32>(18467u, 58689u, 112982u, 64894u), vec4<u32>(26025u, 26156u, 0u, 0u), vec4<u32>(4294967295u, 49149u, 4294967295u, 1u), vec4<u32>(23203u, 1u, 6438u, 108182u), vec4<u32>(12699u, 1u, 78168u, 1u), vec4<u32>(38002u, 4294967295u, 15082u, 4294967295u));

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<i32>(46992i, -1i, -7212i), false, vec3<f32>(495f, 497f, 818f), vec3<f32>(464f, 449f, -620f), vec2<bool>(false, true)), Struct_1(vec3<i32>(12011i, 43741i, 28055i), true, vec3<f32>(-889f, -985f, 848f), vec3<f32>(634f, -1000f, 906f), vec2<bool>(true, false)), Struct_1(vec3<i32>(-34277i, -4157i, 2147483647i), false, vec3<f32>(385f, -797f, -1000f), vec3<f32>(946f, -545f, 770f), vec2<bool>(false, false)), Struct_1(vec3<i32>(-8047i, 31662i, 9608i), true, vec3<f32>(1349f, 1519f, 1562f), vec3<f32>(-1634f, -714f, -1004f), vec2<bool>(true, true)), Struct_1(vec3<i32>(-23081i, 2147483647i, 16983i), true, vec3<f32>(-598f, -392f, -1679f), vec3<f32>(-1067f, 869f, -572f), vec2<bool>(false, false)), Struct_1(vec3<i32>(39786i, -17918i, -30224i), false, vec3<f32>(-614f, 564f, 999f), vec3<f32>(-131f, -975f, -1383f), vec2<bool>(true, false)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: u32) -> vec3<i32> {
    return u_input.b;
}

fn func_1(arg_0: vec2<bool>) -> vec3<i32> {
    let var_0 = ~u_input.b;
    global0 = array<vec4<u32>, 8>();
    global1 = array<Struct_1, 6>();
    var var_1 = 1189f;
    global1 = array<Struct_1, 6>();
    return func_2(var_0.yy, arg_0.x, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 8>();
    global0 = array<vec4<u32>, 8>();
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(-43274i, u_input.b.x, -20221i)), min(abs(u_input.b), func_1(select(vec2<bool>(false, true), vec2<bool>(false, true), true)))), vec3<i32>(1i, _wgslsmith_add_i32(-_wgslsmith_clamp_i32(-1i, u_input.c, u_input.b.x), u_input.c), ~u_input.b.x));
    var var_1 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, all(vec3<bool>(false, true, true)))), !select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, false, false)), true);
    var_0 = -(~_wgslsmith_mod_i32(abs(func_2(u_input.a, var_1.x, 0u).x), -40943i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1869f, -1754f, 1597f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -707f), 1f, -845f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -408f)), -1363f, _wgslsmith_f_op_f32(-1077f * _wgslsmith_f_op_f32(sign(2245f)))), select(!select(vec3<bool>(true, var_1.x, true), vec3<bool>(true, true, false), vec3<bool>(var_1.x, var_1.x, true)), vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, true, true), !var_1.x)))), u_input.b.xy << (vec2<u32>(_wgslsmith_div_u32(1u, ~64947u), 73690u) % vec2<u32>(32u)), -u_input.b);
}

