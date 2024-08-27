struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1139f;

var<private> global1: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(41254i, -1i, -1i), vec3<i32>(2147483647i, 1i, -44125i), vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(22806i, -10225i, 0i), vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(-21722i, i32(-2147483648), -1i), vec3<i32>(-6920i, 24844i, -9432i), vec3<i32>(2147483647i, i32(-2147483648), 9014i), vec3<i32>(2147483647i, 29632i, 15978i), vec3<i32>(2147483647i, 26587i, 2498i), vec3<i32>(1i, -33414i, -1i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = u_input.c;
    var var_1 = Struct_1(select(vec2<bool>(-754f >= _wgslsmith_f_op_f32(sign(1407f)), true), arg_0.a, true), vec4<u32>(u_input.a.x, arg_0.c & abs(0u), firstLeadingBit(~36017u), arg_0.b.x), 105298u);
    let var_2 = arg_0.b.ww;
    var var_3 = false;
    var_0 = ~(~(~0u));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, ~(~(23355u >> (var_2.x % 32u))), reverseBits(1u), 0u), ~(~var_1.b));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> vec3<f32> {
    var var_0 = !arg_1.a;
    global1 = array<vec3<i32>, 12>();
    let var_1 = arg_1;
    global1 = array<vec3<i32>, 12>();
    let var_2 = 0u;
    return _wgslsmith_div_vec3_f32(vec3<f32>(-1640f, _wgslsmith_f_op_f32(step(-2378f, -1418f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1641f - 1278f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1176f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: f32) -> vec3<f32> {
    global0 = arg_3;
    var var_0 = vec2<u32>(32142u, 27999u);
    let var_1 = false;
    var var_2 = Struct_3(abs(global1[_wgslsmith_index_u32(42392u, 12u)]));
    let var_3 = countOneBits(vec2<u32>(24000u, _wgslsmith_add_u32(_wgslsmith_mult_u32(var_0.x, u_input.a.x), u_input.a.x)) | _wgslsmith_clamp_vec2_u32(select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, arg_2.x), vec2<u32>(arg_2.x, 0u)), u_input.a.zz >> (arg_2.yw % vec2<u32>(32u)), select(vec2<bool>(arg_0.x, false), vec2<bool>(true, arg_0.x), false)), vec2<u32>(u_input.c, func_2(Struct_1(arg_1.wx, arg_2, u_input.a.x))), vec2<u32>(_wgslsmith_sub_u32(arg_2.x, arg_2.x), u_input.c)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(-543f, 195f), Struct_1(arg_1.wz, vec4<u32>(var_3.x, 69976u, 1u, 4294967295u), u_input.c), vec3<f32>(1070f, -771f, arg_3))))) - vec3<f32>(-391f, _wgslsmith_f_op_f32(-arg_3), arg_3)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1618f, -1190f, 118f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1447f, -940f, -386f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(786f * _wgslsmith_f_op_f32(trunc(-681f))), -752f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2174f, 158f) - _wgslsmith_f_op_f32(-942f - -283f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1661f))))));
    global0 = _wgslsmith_f_op_f32(1647f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1600f + -2860f) * _wgslsmith_f_op_f32(sign(-1239f)))) - 1000f));
    var var_0 = ~_wgslsmith_add_u32(_wgslsmith_mod_u32(89110u, ~abs(u_input.a.x)), u_input.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(func_1(!vec4<bool>(false, all(vec3<bool>(true, true, true)), all(vec2<bool>(true, false)), false), vec4<bool>(true, select(false, true, true) & true, false, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), _wgslsmith_mult_vec4_u32(~(vec4<u32>(u_input.c, 0u, 0u, u_input.a.x) | ~vec4<u32>(12513u, u_input.a.x, 1u, 46956u)), ~max(vec4<u32>(u_input.a.x, u_input.c, 4608u, u_input.a.x), ~vec4<u32>(90660u, u_input.a.x, u_input.a.x, 87216u))), 187f));
    var var_2 = min(abs(~vec2<i32>(u_input.b, u_input.b) & vec2<i32>(u_input.b, u_input.b)), ~(vec2<i32>(-1i) * -vec2<i32>(u_input.b, 3659i)) & vec2<i32>(~firstTrailingBit(u_input.b), u_input.b));
    var var_3 = vec3<bool>(false, true, all(vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, abs(-u_input.b) ^ reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-56045i, u_input.b), vec2<i32>(u_input.b, var_2.x))), u_input.b), _wgslsmith_add_i32(0i, _wgslsmith_add_i32(12164i & reverseBits(var_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(38770i, u_input.b, -27559i), vec3<i32>(-11295i, -1i, var_2.x)))));
}

