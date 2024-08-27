struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: Struct_2;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<i32> {
    var var_0 = firstLeadingBit(min(62840u, ~global1.b));
    var var_1 = Struct_2(vec2<i32>(25311i, _wgslsmith_dot_vec4_i32(u_input.b, -u_input.b)), global1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-382f, -165f, _wgslsmith_f_op_f32(-global1.d.c))) * _wgslsmith_f_op_vec3_f32(-global1.c)), Struct_1(select(vec2<bool>(false, global1.e.x), global1.d.a, vec2<bool>(true, true)), global1.d.b >> (global1.d.b % vec2<u32>(32u)), -438f, -firstLeadingBit(~u_input.b.xw), -global1.d.e), !vec2<bool>(!global1.d.a.x, false));
    var_0 = global1.d.b.x;
    var_1 = Struct_2(~_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.zz, firstLeadingBit(vec2<i32>(14938i, var_1.d.d.x)), min(u_input.b.wx, vec2<i32>(global1.a.x, var_1.d.e))), vec2<i32>(~var_1.d.d.x, _wgslsmith_clamp_i32(1i, u_input.b.x, u_input.a.x))), 1u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.c)), global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - -1655f))), Struct_1(global1.e, _wgslsmith_add_vec2_u32(abs(vec2<u32>(global1.b, 4312u)) << (global1.d.b % vec2<u32>(32u)), vec2<u32>(4319u, 15992u)), 1517f, vec2<i32>(32776i, abs(select(u_input.b.x, 0i, true))), -12458i), vec2<bool>(select(!global1.e.x, true, true), false));
    var_0 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(countOneBits(abs(11275u)), firstLeadingBit(global1.d.b.x >> (global1.d.b.x % 32u))), _wgslsmith_sub_u32(abs(var_1.b), global1.d.b.x));
    return u_input.a.zx | firstLeadingBit(vec2<i32>(~(u_input.a.x & 20267i), ~u_input.a.x));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> Struct_2 {
    global0 = ~_wgslsmith_mod_u32(select(~(~52572u), ~80035u << (global1.d.b.x % 32u), false), ~global1.d.b.x);
    global0 = global1.d.b.x;
    let var_0 = u_input.a;
    let var_1 = global1.e.x;
    var var_2 = global1.c.x;
    return Struct_2(_wgslsmith_clamp_vec2_i32(~min(global1.a, global1.d.d), select(func_3(), var_0.zy, !any(vec4<bool>(true, false, false, false))), (_wgslsmith_sub_vec2_i32(vec2<i32>(-27674i, -6415i), u_input.b.xy) ^ _wgslsmith_sub_vec2_i32(global1.d.d, vec2<i32>(arg_0.x, 2147483647i))) | (vec2<i32>(arg_0.x, 18296i) ^ vec2<i32>(1i, -1i))), global1.d.b.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, -1106f, global1.c.x) - global1.c))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global1.c))))), Struct_1(vec2<bool>(true, any(vec2<bool>(true, global1.d.a.x))), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global1.d.b.x), vec2<u32>(global1.d.b.x, 0u))), global1.c.x, abs(u_input.a.xy), -22966i), vec2<bool>(false, true));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    let var_0 = vec2<bool>(true, select(all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, global1.e.x, arg_0.e.x))), arg_1.d.a.x, arg_1.d.a.x));
    let var_1 = func_2(-u_input.a, ~(-arg_1.a.x));
    global0 = 5815u;
    global0 = (49659u << (arg_0.b % 32u)) & 14966u;
    global1 = func_2(u_input.b.wxw, -2147483647i);
    return ~var_1.b != countOneBits(0u);
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = global1.d.b.x;
    let var_0 = !(!vec3<bool>(func_4(func_2(vec3<i32>(-1i, u_input.b.x, 0i), global1.a.x), Struct_2(global1.d.d, 1u, vec3<f32>(-515f, global1.c.x, 243f), Struct_1(global1.d.a, vec2<u32>(global1.b, global1.b), arg_0, vec2<i32>(-7779i, 2147483647i), u_input.a.x), vec2<bool>(false, false))), !all(vec4<bool>(true, true, true, true)), true));
    global1 = func_2(-u_input.a, ~_wgslsmith_sub_i32(global1.a.x, ~(-46052i)));
    global0 = global1.b;
    var var_1 = 7380u;
    return func_2(u_input.b.zxy, global1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 26394u;
    let var_0 = func_1(1666f);
    global1 = var_0;
    var var_1 = func_1(global1.d.c);
    global1 = Struct_2(-firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a.x, u_input.a.x), -var_1.a, var_0.d.d)), 30822u, var_0.c, Struct_1(vec2<bool>(var_0.d.a.x, any(!var_0.d.a)), vec2<u32>(global1.d.b.x, _wgslsmith_clamp_u32(~var_1.b, countOneBits(var_1.d.b.x), 1u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-139f, _wgslsmith_f_op_f32(-var_1.d.c), false)))), u_input.b.xz, _wgslsmith_div_i32(global1.a.x, u_input.b.x & 0i) ^ _wgslsmith_sub_i32(u_input.b.x, 2147483647i ^ u_input.b.x)), global1.d.a);
    var var_2 = !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 305f) - -932f) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1983f))))));
    var var_3 = var_0;
    global1 = func_2(firstLeadingBit(_wgslsmith_add_vec3_i32(~vec3<i32>(-37945i, -1i, u_input.a.x), _wgslsmith_mod_vec3_i32(~u_input.b.www, ~vec3<i32>(-1i, var_1.a.x, 1i)))), ~(i32(-1i) * -56288i));
    var var_4 = 53848u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.d.c));
}

