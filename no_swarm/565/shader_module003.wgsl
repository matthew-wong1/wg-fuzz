struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(34603u, 44384u), vec2<u32>(0u, 0u), vec2<u32>(27088u, 34924u), vec2<u32>(12220u, 1u), vec2<u32>(45633u, 3103u), vec2<u32>(81210u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(45625u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(73579u, 4796u), vec2<u32>(0u, 65878u), vec2<u32>(4294967295u, 7905u), vec2<u32>(0u, 0u), vec2<u32>(22419u, 1u), vec2<u32>(25246u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(50423u, 58698u), vec2<u32>(35803u, 1u), vec2<u32>(36008u, 61197u), vec2<u32>(13622u, 54496u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(64368u, 28913u), vec2<u32>(63137u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(37168u, 46773u), vec2<u32>(0u, 71309u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 4294967295u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>) -> Struct_1 {
    global1 = array<vec2<u32>, 29>();
    global1 = array<vec2<u32>, 29>();
    global0 = ~firstLeadingBit(38566u);
    global1 = array<vec2<u32>, 29>();
    global1 = array<vec2<u32>, 29>();
    return Struct_1(true);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> vec2<u32> {
    return ~(~vec2<u32>(~(~39367u), 8727u));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_mult_vec2_u32(~(~(~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, arg_1), 29u)])), countOneBits(global1[_wgslsmith_index_u32(77835u, 29u)]));
    return func_3(func_2(vec2<i32>(firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(u_input.e, u_input.d, u_input.e)), vec3<i32>(38451i, u_input.a, -1i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -509f, arg_2) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-318f, arg_2, arg_2) + vec3<f32>(arg_2, arg_2, arg_2)), vec3<f32>(arg_2, -1097f, arg_2)))), ~min(~(~vec3<u32>(4294967295u, 1u, var_0.x)), firstTrailingBit(vec3<u32>(u_input.b, 11293u, 0u) << (vec3<u32>(41554u, arg_1, 4294967295u) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~25090u;
    let var_0 = vec4<f32>(-1200f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1908f)) - -177f) * -2015f), _wgslsmith_f_op_f32(sign(-948f)))), -495f, _wgslsmith_f_op_f32(-242f + 595f));
    let var_1 = func_1(Struct_1(all(vec4<bool>(true, true, true, true))), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(742f, var_0.x))))));
    global0 = abs(4294967295u);
    var var_2 = func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(_wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(u_input.a, u_input.e))), u_input.e), _wgslsmith_add_vec2_i32(u_input.c.zz, _wgslsmith_add_vec2_i32(max(u_input.c.zy, vec2<i32>(u_input.e, -44899i)), vec2<i32>(10622i, 2147483647i)))), var_0.zzz);
    var var_3 = Struct_1(any(vec2<bool>(var_2.a, !var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.wyz) + var_0.wwz), 32547i, _wgslsmith_clamp_u32((~0u | firstTrailingBit(4294967295u)) << (45437u % 32u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(100277u, u_input.b, 16183u, 56750u)), ~(~vec4<u32>(var_1.x, 4294967295u, u_input.b, 4294967295u))), min(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 1u, 8258u), ~vec3<u32>(1u, 1u, 16708u)), 16836u)), 0u, u_input.b);
}

