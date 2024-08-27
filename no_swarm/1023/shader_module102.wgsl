struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 23>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    let var_0 = arg_0.x;
    let var_1 = vec2<u32>(~arg_0.x, ~4294967295u);
    global0 = array<vec4<i32>, 23>();
    global0 = array<vec4<i32>, 23>();
    global0 = array<vec4<i32>, 23>();
    return 56525u;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    global0 = array<vec4<i32>, 23>();
    return countOneBits(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(43669u, arg_0.x, u_input.b.x, u_input.b.x) << (vec4<u32>(arg_0.x, u_input.b.x, arg_0.x, 54100u) % vec4<u32>(32u)), ~vec4<u32>(arg_0.x, 76335u, 4294967295u, 4294967295u), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true))), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, u_input.b.x, 533u, arg_0.x), vec4<u32>(1u, arg_0.x, 1u, 76088u), vec4<u32>(4964u, 4294967295u, 47645u, arg_0.x)), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, arg_0.x), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32) -> vec4<u32> {
    return ~select(select(vec4<u32>(arg_1.b.b, u_input.b.x, 18940u, arg_1.e.b), ~vec4<u32>(4294967295u, 17423u, 8131u, arg_1.d.b), false), vec4<u32>(u_input.b.x, ~4294967295u, ~3914u, 6582u ^ u_input.b.x), arg_0.x) >> (vec4<u32>(~53499u, 4294967295u, func_2(u_input.b), min(15698u, func_3(vec3<u32>(u_input.b.x, 1u, 19048u), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -1061f) + vec2<f32>(arg_2, -144f)), -vec2<i32>(27540i, -53701i), -1711i))) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>) -> Struct_1 {
    global0 = array<vec4<i32>, 23>();
    global0 = array<vec4<i32>, 23>();
    global0 = array<vec4<i32>, 23>();
    return Struct_1(_wgslsmith_dot_vec3_i32(select(firstTrailingBit(u_input.a.zzy), ~u_input.a.zyw, !(306f < arg_1.x)), u_input.c), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 23>();
    var var_0 = 1u;
    let var_1 = true;
    let var_2 = any(vec4<bool>(false & !all(vec2<bool>(var_1, true)), !var_1, true, any(!(!vec4<bool>(false, var_1, false, var_1)))));
    var var_3 = vec3<bool>(var_2, true, var_2);
    var var_4 = func_4(~_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(0u, u_input.b.x, 4294967295u, 1u) & vec4<u32>(1u, 52786u, u_input.b.x, u_input.b.x)), func_1(!vec4<bool>(true, var_1, false, var_3.x), Struct_2(-2147483647i, Struct_1(1i, 42917u), 1u, Struct_1(u_input.a.x, u_input.b.x), Struct_1(25912i, 1u)), _wgslsmith_f_op_f32(abs(-669f))), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(u_input.b.x, 24334u, 0u, 1u)) >> (vec4<u32>(u_input.b.x, u_input.b.x, 116457u, 0u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2318f, 1216f, 1158f, 542f))) * vec4<f32>(_wgslsmith_f_op_f32(round(-200f)), _wgslsmith_f_op_f32(floor(-542f)), -1070f, 422f))));
    var_0 = ~_wgslsmith_mult_u32(37654u, max(~min(1u, u_input.b.x), ~72707u << (~var_4.b % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(-u_input.a.zy, vec2<i32>(1i, u_input.c.x)), ~u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(929f - -1930f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-217f, -277f) * _wgslsmith_f_op_f32(f32(-1f) * -214f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -400f)))), _wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, var_4.a, _wgslsmith_clamp_i32(u_input.a.x, 0i, u_input.c.x), ~(-13932i)), ~vec4<i32>(u_input.c.x, 2147483647i, 2147483647i, func_4(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 5771u), vec4<f32>(1058f, 1263f, 117f, 616f)).a)));
}

