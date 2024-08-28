struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 13>;

var<private> global1: u32 = 2363u;

var<private> global2: i32;

var<private> global3: vec2<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<u32> {
    global2 = _wgslsmith_add_i32(0i, ~(-18120i));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2775f, -927f, 424f))) * vec3<f32>(1f, 1f, 1f));
    let var_1 = Struct_1(~arg_0, vec2<bool>(true, true), u_input.a);
    let var_2 = ~arg_0.yx;
    let var_3 = Struct_1(arg_0, vec2<bool>(true, false), abs(select(~arg_0.xy, ~(~var_2), false | all(var_1.b))));
    return ~arg_0;
}

fn func_2(arg_0: bool) -> vec2<f32> {
    var var_0 = Struct_1(~(~vec3<u32>(121822u, u_input.b.x, 8618u)) ^ min(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.a.x, u_input.b.x, 678u))), _wgslsmith_sub_vec3_u32(vec3<u32>(12331u, u_input.a.x, 1u), func_3(vec3<u32>(31967u, 49451u, 48976u)))), vec2<bool>(select(false, true, arg_0), select(arg_0, false, _wgslsmith_dot_vec4_u32(vec4<u32>(37954u, u_input.b.x, u_input.a.x, 19087u), vec4<u32>(4294967295u, u_input.a.x, u_input.b.x, u_input.a.x)) < ~u_input.b.x)), ~abs(u_input.a));
    var var_1 = Struct_1(vec3<u32>(abs(_wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.a.x)) & 1u, 6967u, u_input.a.x), var_0.b, u_input.b);
    global1 = firstTrailingBit(u_input.a.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), 544f));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1299f, -453f) + vec2<f32>(275f, -1354f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(472f, -509f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1277f, -371f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(458f, 1000f) + vec2<f32>(-765f, 922f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-632f, 573f) * vec2<f32>(2662f, -1000f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -375f))))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -911f);
    global2 = -(~reverseBits(_wgslsmith_mod_i32(global3.x, global3.x)) | abs(global3.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(1717f, var_0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-690f, var_0) - vec2<f32>(var_0, -791f))) - vec2<f32>(_wgslsmith_f_op_f32(363f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1514f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 465f) - _wgslsmith_f_op_vec2_f32(func_2(arg_2.b.x))))), true))));
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~(arg_2.a.x >> (countOneBits(1u) % 32u)), ~(~31123u), firstTrailingBit(30391u) ^ min(arg_2.a.x, u_input.a.x), abs(_wgslsmith_add_u32(~4294967295u, u_input.a.x))), reverseBits(firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_2.c.x, 89767u, arg_2.a.x), vec4<u32>(11230u, 53935u, u_input.b.x, 58036u)))), ~((~vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, 53987u) | ~vec4<u32>(1u, 1u, 1u, 0u)) & ~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 19057u)));
    let var_3 = !vec2<bool>(arg_2.b.x, false);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_sub_i32(-(~0i), -_wgslsmith_mod_i32(func_1(vec4<bool>(false, true, false, false), true, Struct_1(vec3<u32>(33595u, u_input.b.x, 0u), vec2<bool>(false, true), vec2<u32>(4294967295u, u_input.b.x))), _wgslsmith_mod_i32(u_input.c.x, firstTrailingBit(6008i))));
    var var_0 = _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(27652i, 19607i, i32(-1i) * -u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-14095i, 2147483647i), _wgslsmith_dot_vec2_i32(u_input.c.yw, u_input.c.wx)))), u_input.c << (~(~(vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.a.x) & vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))) % vec4<u32>(32u)), u_input.c);
    let var_1 = true;
    global2 = 53727i;
    let x = u_input.a;
    s_output = StorageBuffer(73792u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1819f, 1000f, var_1)) - -139f) + _wgslsmith_f_op_f32(-1164f - _wgslsmith_f_op_f32(select(649f, 607f, var_1)))), _wgslsmith_f_op_f32(trunc(-265f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_2(true)).x)))));
}

