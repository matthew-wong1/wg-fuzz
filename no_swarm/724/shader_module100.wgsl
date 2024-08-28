struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_5 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<i32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_5(614f, 1u);
    var var_1 = _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(select(~vec2<u32>(18708u, var_0.b), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(var_0.b, 21044u)), true), ~(vec2<u32>(var_0.b, var_0.b) | vec2<u32>(67116u, var_0.b))), ~vec2<u32>(firstTrailingBit(37243u), _wgslsmith_dot_vec4_u32(vec4<u32>(56051u, var_0.b, var_0.b, var_0.b) | vec4<u32>(59839u, 8161u, var_0.b, var_0.b), firstTrailingBit(vec4<u32>(var_0.b, 38052u, 0u, var_0.b)))));
    var_1 = var_0.b;
    global0 = (arg_0.a.x && ((any(arg_0.a.zzw) & arg_1.x) | arg_1.x)) && (var_0.a <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    let var_2 = -294f;
    return ~_wgslsmith_clamp_u32((_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 1u), vec2<u32>(33372u, 54146u)) | var_0.b) ^ var_0.b, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(8641u, 63480u, 1u, var_0.b), vec4<u32>(26125u, var_0.b, var_0.b, var_0.b)), vec4<u32>(4294967295u, 0u, 4294967295u, var_0.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(53215u, var_0.b, var_0.b, var_0.b) ^ vec4<u32>(var_0.b, var_0.b, var_0.b, var_0.b), abs(vec4<u32>(27044u, var_0.b, var_0.b, var_0.b)))), var_0.b);
}

fn func_2(arg_0: bool) -> vec2<bool> {
    global0 = true == any(!select(select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true), select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(true, arg_0, arg_0, false), true), false));
    var var_0 = !(!all(vec4<bool>(true, arg_0, true, false)));
    let var_1 = vec2<u32>(func_3(Struct_3(select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, true, false, true), vec4<bool>(arg_0, arg_0, true, arg_0))), select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, true, false), arg_0), !vec3<bool>(true, arg_0, true), global1.x > 6765i)) | 10617u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(31451u, 1u, 1u, 1u), vec4<u32>(5983u, 8572u, 74156u, 4294967295u), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), select(vec4<u32>(110200u, 1u, 3833u, 23471u), vec4<u32>(109050u, 50404u, 4294967295u, 25801u), arg_0)), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_2 = vec3<bool>(arg_0, true, all(!select(vec3<bool>(false, arg_0, true), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0)), !vec3<bool>(false, true, arg_0))));
    let var_3 = Struct_1(1167f);
    return vec2<bool>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a, _wgslsmith_div_f32(-585f, var_3.a))) <= 1443f);
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> u32 {
    global1 = select(reverseBits(-(~firstLeadingBit(u_input.b.zzy))), u_input.b.yxw, arg_1.a.wzy);
    global1 = vec3<i32>(u_input.a.x, 77611i, -(~2058i));
    var var_0 = !func_2(true);
    let var_1 = u_input.b.xyz;
    var var_2 = Struct_2(Struct_1(-1471f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1033f, _wgslsmith_f_op_f32(ceil(1265f))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(672f, 751f) * vec2<f32>(-2822f, -192f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2038f, 319f) * vec2<f32>(-854f, -516f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(386f, 180f) - vec2<f32>(143f, 1831f)))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(144f, -698f)))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(606f + -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(984f, -722f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -383f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -347f))))), -1924f);
    let var_1 = Struct_3(vec4<bool>((_wgslsmith_f_op_f32(var_0.x + var_0.x) <= _wgslsmith_div_f32(1918f, -577f)) || true, true, false, any(vec2<bool>(true, true))));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(33968u, 0u, 19968u), vec3<u32>(4294967295u, 4294967295u, 1u)), var_1), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 12864u)), 1u), vec4<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(19630u, func_1(21057u, var_1), ~21785u), min(func_1(1676u, var_1), ~1u)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 1u)), vec2<u32>(1u, 1u)), 1u));
    global1 = _wgslsmith_mult_vec3_i32(max(u_input.b.wwz, u_input.b.wyz), u_input.b.ywz << (~vec3<u32>(_wgslsmith_mod_u32(var_2, 27861u), 4294967295u, 33781u ^ var_2) % vec3<u32>(32u)));
    global0 = var_1.a.x;
    let var_3 = var_1.a.zzz;
    global1 = vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x, global1.x | (_wgslsmith_add_i32(2147483647i, -1i) & ~global1.x), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -21064i), global1.xx), -global1.x), ~select(-2147483647i, u_input.a.x, var_1.a.x))), -global1.x, ~global1.x);
    var var_4 = var_1;
    let var_5 = _wgslsmith_mod_vec4_i32(-abs(vec4<i32>(u_input.a.x, 4996i, 1i, -1i)), u_input.b) | _wgslsmith_div_vec4_i32(~u_input.b, select(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global1.x, 1i, u_input.b.x), vec4<i32>(u_input.b.x, global1.x, global1.x, u_input.b.x)), u_input.b, var_4.a.x) << ((min(vec4<u32>(15637u, 39421u, var_2, 1u), vec4<u32>(var_2, 0u, 75046u, var_2)) ^ vec4<u32>(var_2, 54108u, var_2, var_2)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(var_0, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-541f + var_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -228f))), var_0.x, -1000f), select(select(select(vec4<bool>(var_4.a.x, true, true, true), var_1.a, var_4.a), select(vec4<bool>(var_1.a.x, var_3.x, false, var_3.x), var_4.a, var_3.x), var_4.a), var_1.a, var_1.a))), firstLeadingBit(vec3<u32>(0u, ~(~0u), 1u << (var_2 % 32u))), 1117f, var_0.x, reverseBits(~firstLeadingBit(vec2<i32>(-23178i, 0i))));
}

