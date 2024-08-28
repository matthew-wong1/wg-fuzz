struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_1) -> f32 {
    var var_0 = max(_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, _wgslsmith_div_u32(11175u, 59143u), 13519u), _wgslsmith_div_vec3_u32(~vec3<u32>(global0.x, arg_0.d.x, arg_3.d.x), firstLeadingBit(global0.wxy))), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(global0.zwz), ~vec3<u32>(arg_0.d.x, 1u, 4294967295u), min(vec3<u32>(69277u, arg_0.d.x, global0.x), vec3<u32>(48099u, 41791u, global0.x))), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(5632u, global0.x, 0u), arg_0.d), max(vec3<u32>(4294967295u, 12154u, 1u), arg_3.d)))) & vec3<u32>(global0.x, ~abs(_wgslsmith_mult_u32(arg_3.d.x, 4294967295u)), _wgslsmith_div_u32(firstTrailingBit(4294967295u), abs(1u)));
    global0 = countOneBits(_wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(1u, arg_3.d.x, 19846u, arg_0.d.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 53046u, var_0.x, 4294967295u) & vec4<u32>(29423u, 19119u, 55996u, 0u), vec4<u32>(global0.x, 106509u, 0u, 1u)))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(~abs(global0.x), ~4294967295u, arg_3.d.x, arg_3.d.x), abs(~vec4<u32>(27221u, var_0.x, 4294967295u, 54923u)));
    var var_1 = Struct_1(false, arg_0.b, vec3<bool>(any(vec4<bool>(arg_3.a || arg_0.e.x, any(vec4<bool>(arg_0.c.x, false, arg_3.e.x, true)), all(vec3<bool>(arg_3.a, true, true)), !arg_0.e.x)), all(vec2<bool>(arg_3.c.x, !arg_3.e.x)), all(!vec4<bool>(arg_3.c.x, false, arg_0.c.x, arg_3.e.x))), _wgslsmith_div_vec3_u32(~countOneBits(vec3<u32>(arg_3.d.x, arg_0.d.x, 3496u)), vec3<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.d.x, 1u, 60218u), vec4<u32>(var_0.x, var_0.x, 73420u, 9614u))), 57374u, 4294967295u)), vec2<bool>(arg_3.a, arg_3.c.x));
    let var_2 = abs(1i);
    var var_3 = !(!(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(arg_3.a, arg_3.e.x, false, false), var_1.a), select(vec4<bool>(arg_3.e.x, true, false, arg_3.a), vec4<bool>(true, false, arg_0.e.x, true), false), !vec4<bool>(true, false, var_1.a, false))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b.x * -1324f)));
}

fn func_2() -> vec4<u32> {
    let var_0 = vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(true, vec3<f32>(1087f, 482f, 1000f), vec3<bool>(false, true, false), vec3<u32>(global0.x, global0.x, 1u), vec2<bool>(false, false)), vec2<i32>(1i, u_input.a), u_input.a, Struct_1(false, vec3<f32>(-154f, 1000f, -127f), vec3<bool>(false, false, true), global0.ywy, vec2<bool>(false, false)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(689f, -1019f)))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(958f, 1000f) + 2567f))));
    let var_3 = Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1, var_1) + vec3<f32>(723f, var_1, 1256f))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(554f, 1750f, var_0.x) - vec3<f32>(361f, 1000f, -717f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(420f, -232f, var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_1) + vec3<f32>(var_1, -1622f, -300f)))))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), _wgslsmith_mod_vec3_u32(max(select(~global0.xzz, global0.zxz & global0.zwz, true), ~firstLeadingBit(global0.wzw)), vec3<u32>(global0.x, abs(~global0.x), _wgslsmith_mod_u32(max(global0.x, 1u), ~global0.x))), vec2<bool>(true, true));
    var var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * -1071f) + _wgslsmith_f_op_f32(-var_0.x))), 2203f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, var_3.b.x), _wgslsmith_f_op_f32(914f + -1370f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-826f, -1162f, 1054f, 1021f) - vec4<f32>(var_3.b.x, 1000f, -1212f, -227f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(707f, var_0.x, var_1, 1039f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -201f), -131f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) - -761f), _wgslsmith_f_op_f32(ceil(-228f)))), select(vec4<bool>(false, false, false, _wgslsmith_f_op_f32(var_0.x * -839f) <= -316f), select(vec4<bool>(true, true || var_3.e.x, var_3.c.x, all(vec2<bool>(var_3.c.x, var_3.a))), select(!vec4<bool>(false, true, false, var_3.a), select(vec4<bool>(true, var_3.c.x, true, var_3.a), vec4<bool>(true, true, true, var_3.e.x), vec4<bool>(var_3.e.x, var_3.c.x, false, false)), !vec4<bool>(var_3.c.x, var_3.c.x, var_3.a, false)), select(select(vec4<bool>(var_3.c.x, true, var_3.a, var_3.e.x), vec4<bool>(var_3.c.x, var_3.e.x, var_3.e.x, var_3.e.x), vec4<bool>(false, var_3.c.x, false, var_3.c.x)), select(vec4<bool>(false, false, true, var_3.a), vec4<bool>(true, var_3.a, var_3.a, true), vec4<bool>(true, false, true, var_3.c.x)), var_3.e.x)), !(!var_3.a))));
    return vec4<u32>(~1u, 64329u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.d.x, global0.x, 4294967295u), vec3<u32>(~_wgslsmith_mod_u32(var_3.d.x, 0u), _wgslsmith_dot_vec2_u32(var_3.d.yy, vec2<u32>(global0.x, var_3.d.x)), ~var_3.d.x)), countOneBits(var_3.d.x) & var_3.d.x);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = ~(~func_2()) | vec4<u32>(~50105u, 1u, func_2().x, ~firstTrailingBit(4294967295u));
    global0 = vec4<u32>(arg_3.d.x, countOneBits(~_wgslsmith_mult_u32(arg_2.d.x, arg_2.d.x)), 1u, _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(~arg_3.d.x, 4624u), ~(~51072u)), 0u));
    let var_0 = global0.x;
    global0 = vec4<u32>(1u, ~_wgslsmith_div_u32(3315u, 38809u), _wgslsmith_sub_u32(59638u, global0.x), _wgslsmith_dot_vec3_u32(~global0.xwy, vec3<u32>(1u, 83848u, 0u) << (firstLeadingBit(vec3<u32>(global0.x, arg_3.d.x, arg_2.d.x)) % vec3<u32>(32u)))) & min(select(~min(vec4<u32>(4294967295u, arg_2.d.x, 0u, global0.x), vec4<u32>(global0.x, arg_3.d.x, arg_3.d.x, 4950u)), min(vec4<u32>(33366u, 1u, arg_3.d.x, arg_3.d.x), vec4<u32>(arg_2.d.x, 52486u, 133066u, 2147u)) & ~vec4<u32>(arg_3.d.x, arg_3.d.x, 5934u, arg_3.d.x), select(select(vec4<bool>(arg_2.a, arg_2.c.x, arg_2.e.x, false), vec4<bool>(false, true, false, arg_3.e.x), vec4<bool>(true, arg_3.c.x, true, arg_3.c.x)), vec4<bool>(arg_3.a, true, arg_2.a, arg_2.e.x), !vec4<bool>(arg_3.c.x, arg_3.c.x, true, false))), func_2());
    let var_1 = arg_1;
    return ~global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_div_vec4_u32((vec4<u32>(global0.x, global0.x, 0u, 88859u) & (vec4<u32>(2507u, global0.x, global0.x, 37459u) | vec4<u32>(1u, 9093u, 4294967295u, global0.x))) ^ (_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 30500u, 1u, global0.x), vec4<u32>(global0.x, 4294967295u, global0.x, 0u)) ^ vec4<u32>(global0.x, global0.x, 45044u, 30624u)), ~vec4<u32>(~global0.x, global0.x | global0.x, func_1(-45909i, vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), Struct_1(false, vec3<f32>(1405f, 804f, -379f), vec3<bool>(false, true, false), vec3<u32>(global0.x, global0.x, global0.x), vec2<bool>(true, false)), Struct_1(false, vec3<f32>(958f, -293f, -365f), vec3<bool>(true, true, false), vec3<u32>(global0.x, 42337u, 1u), vec2<bool>(false, true))), ~global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(1u), -((vec3<i32>(u_input.a, 27201i, -1i) & abs(vec3<i32>(881i, u_input.a, -1i))) << (~_wgslsmith_div_vec3_u32(global0.yxw, vec3<u32>(1u, 68250u, 58179u)) % vec3<u32>(32u))), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-923f, -158f, 1613f))))), vec2<i32>(countOneBits(_wgslsmith_sub_i32(29695i, u_input.a)), u_input.a >> (abs(global0.x) % 32u)) | _wgslsmith_sub_vec2_i32(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-5106i, u_input.a), vec2<i32>(-1i, 5984i), vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(0i, u_input.a)), vec2<i32>(-2147483647i, -33563i) << (_wgslsmith_add_vec2_u32(global0.yz, global0.wx) % vec2<u32>(32u))));
}

