struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: array<Struct_2, 1>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: bool, arg_3: vec4<u32>) -> bool {
    global1 = array<Struct_2, 1>();
    let var_0 = Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(arg_3.ww, select(u_input.c, vec2<u32>(9536u, arg_3.x), arg_2 == arg_2)), max(vec2<u32>(~arg_3.x, max(u_input.b, arg_3.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(20289u, arg_3.x), firstTrailingBit(vec2<u32>(u_input.b, 1u))))), ~firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, 2147483647i, arg_0.x, u_input.e.x), vec4<i32>(arg_0.x, -2147483647i, arg_0.x, -50840i)), countOneBits(vec4<i32>(u_input.e.x, u_input.d, -845i, u_input.d)), vec4<i32>(25058i, u_input.e.x, u_input.d, 19264i))), arg_3.x << (0u % 32u), 77765u, ~countOneBits(_wgslsmith_mult_i32(u_input.e.x, ~arg_0.x)));
    global1 = array<Struct_2, 1>();
    global1 = array<Struct_2, 1>();
    let var_1 = var_0;
    return true;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = vec2<bool>(true, all(vec4<bool>(func_3(arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(476f, -756f) + vec2<f32>(-198f, 443f)), select(true, true, false), vec4<u32>(u_input.a, 1u, 0u, 30108u) << (vec4<u32>(1u, u_input.c.x, u_input.b, u_input.c.x) % vec4<u32>(32u))), !(u_input.d != -53129i), 1i != u_input.d, true)));
    let var_1 = select(!select(vec4<bool>(true & var_0.x, false, var_0.x != var_0.x, var_0.x), !(!vec4<bool>(var_0.x, var_0.x, false, false)), select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, false), var_0.x)), vec4<bool>(_wgslsmith_add_i32(i32(-1i) * -19492i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.e.x, arg_0.x, 13677i), vec4<i32>(-1i, arg_0.x, arg_0.x, arg_0.x))) < _wgslsmith_mult_i32(arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -2147483647i, arg_0.x, -25985i), vec4<i32>(0i, u_input.e.x, arg_0.x, arg_0.x))), any(select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(true, var_0.x, true, false), vec4<bool>(false, var_0.x, var_0.x, false))) && var_0.x, false, true != var_0.x), var_0.x);
    global0 = array<Struct_2, 17>();
    let var_2 = ~(~(~_wgslsmith_dot_vec2_u32(u_input.c | u_input.c, _wgslsmith_add_vec2_u32(u_input.c, u_input.c))));
    let var_3 = ~(~countOneBits(12242u));
    return ~(_wgslsmith_add_u32(~16204u, 1u) & ~u_input.b);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~(~func_2(u_input.e)), 1u)];
    global0 = array<Struct_2, 17>();
    let var_1 = _wgslsmith_mult_vec2_i32(min(~(vec2<i32>(-1i) * -vec2<i32>(62348i, u_input.d)), vec2<i32>(-43589i, 13072i)), -(~firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, 0i), u_input.e.zz))));
    var var_2 = vec4<bool>(true, true, true, all(!vec3<bool>(all(vec2<bool>(false, true)), true, all(vec2<bool>(true, false)))));
    global1 = array<Struct_2, 1>();
    return Struct_1(min(select(vec2<u32>(_wgslsmith_add_u32(arg_0.a, arg_0.a), var_0.a), ~vec2<u32>(arg_0.a, var_0.a), func_3(vec3<i32>(u_input.e.x, -1i, u_input.e.x), vec2<f32>(-890f, -1374f), var_2.x, vec4<u32>(arg_0.a, u_input.b, arg_0.a, 36689u)) && true), ~u_input.c), vec4<i32>(-(-11768i >> (1u % 32u)), ~(-u_input.e.x) ^ reverseBits(-23050i), min(_wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, u_input.d, u_input.d), vec3<i32>(var_1.x, 31270i, var_1.x), vec3<bool>(true, true, var_2.x)), firstLeadingBit(u_input.e)), 52879i), countOneBits(~select(-31331i, var_1.x, var_2.x))), ~(~4294967295u), 4294967295u, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.e.x, u_input.e.x, u_input.d, -1i), firstLeadingBit(vec4<i32>(13882i, 12023i, var_1.x, -2147483647i))), -9637i & -var_1.x, ~_wgslsmith_dot_vec3_i32(u_input.e, u_input.e))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    global0 = array<Struct_2, 17>();
    global1 = array<Struct_2, 1>();
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(617f + _wgslsmith_f_op_f32(279f + 255f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1286f)), -405f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-314f - _wgslsmith_div_f32(1186f, 896f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-536f, _wgslsmith_f_op_f32(100f * 167f))))), vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -704f) * _wgslsmith_f_op_f32(trunc(-2151f)))), -1026f, -750f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -924f))));
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(~(~75903u), 19731u), vec2<u32>(0u, func_2(-(~u_input.e))));
    let var_2 = any(vec3<bool>(true, true, true)) | ((_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-524f * var_0.x))) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + _wgslsmith_f_op_f32(-var_0.x))) | false);
    return _wgslsmith_f_op_f32(trunc(-1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(false, any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 4719u), 17u)], func_1(global1[_wgslsmith_index_u32(u_input.b, 1u)]), -u_input.e.x, Struct_1(vec2<u32>(u_input.b, 2959u), vec4<i32>(u_input.d, u_input.e.x, u_input.e.x, u_input.e.x), u_input.a, 4294967295u, 2147483647i))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-969f + 1205f)));
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(406f * _wgslsmith_div_f32(-2001f, -1245f)) - 1f) + _wgslsmith_f_op_f32(floor(-416f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1175f)), _wgslsmith_f_op_f32(floor(-1284f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1702f + 571f)))))));
    var var_2 = false;
    let var_3 = global1[_wgslsmith_index_u32(~24318u | select(abs(_wgslsmith_sub_u32(~u_input.b, 20231u)), max(~5956u, u_input.c.x), !var_0), 1u)];
    let var_4 = vec3<i32>(~(-(~(~(-1i)))), 1i, abs(2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(~((_wgslsmith_mult_u32(u_input.c.x, var_3.a) & u_input.b) >> (~1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-173f))), ~22723i, vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a, var_3.a, u_input.a) >> (vec3<u32>(22070u, 2987u, var_3.a) % vec3<u32>(32u)), vec3<u32>(var_3.a, var_3.a, u_input.a)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.a), vec2<u32>(u_input.b, var_3.a)), var_3.a, ~var_3.a));
}

