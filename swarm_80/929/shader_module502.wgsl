struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(-1000f, 620f), vec2<f32>(-1337f, 1109f), vec2<f32>(-222f, 288f), vec2<f32>(1503f, -449f), vec2<f32>(-355f, 236f), vec2<f32>(1630f, 1000f), vec2<f32>(626f, 1289f), vec2<f32>(-540f, -1000f), vec2<f32>(-1414f, 885f), vec2<f32>(1650f, -1000f), vec2<f32>(818f, 1089f), vec2<f32>(2009f, 1979f), vec2<f32>(-616f, 977f), vec2<f32>(1005f, 1716f), vec2<f32>(-135f, 734f), vec2<f32>(448f, -791f), vec2<f32>(-296f, -506f), vec2<f32>(822f, 760f));

var<private> global2: vec2<bool>;

var<private> global3: array<vec3<u32>, 31>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<f32>) -> i32 {
    var var_0 = 494f;
    let var_1 = vec4<u32>(28305u, 94558u, abs(arg_1), global0.a.x);
    var var_2 = Struct_1(var_1);
    var var_3 = firstLeadingBit(_wgslsmith_add_vec3_i32(-vec3<i32>(i32(-1i) * -5805i, ~26556i, u_input.a.x), u_input.a.ywy));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(arg_2.x * arg_2.x))) + _wgslsmith_f_op_f32(select(-340f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-160f * arg_2.x)))), _wgslsmith_div_i32(i32(-1i) * -29908i, firstTrailingBit(var_3.x)) != 1i)));
    return _wgslsmith_div_i32(~countOneBits(-2147483647i), i32(-1i) * -2147483647i) ^ ~min(abs(-2147483647i), _wgslsmith_div_i32(_wgslsmith_mult_i32(-26568i, var_3.x), 5906i));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>, arg_3: bool) -> bool {
    let var_0 = 432f;
    var var_1 = ~vec3<i32>(~1i, ~(~func_3(false, arg_0.a.x, vec3<f32>(1273f, -328f, 255f))), 1i & -_wgslsmith_clamp_i32(-63847i, u_input.a.x, u_input.a.x));
    var var_2 = global0.a.xx;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) - var_0), _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(var_0 + -1256f))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-113f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_3)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(908f)))))));
    return all(arg_2);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = !(!select(!select(vec2<bool>(global2.x, global2.x), vec2<bool>(false, false), false), vec2<bool>(func_2(Struct_1(global0.a), global2.x, vec2<bool>(false, global2.x), false), all(vec4<bool>(false, false, true, true))), true));
    let var_1 = Struct_1(vec4<u32>(~71009u, ~1u, 1u, max(min(_wgslsmith_mod_u32(global0.a.x, global0.a.x), 1780u), _wgslsmith_sub_u32(_wgslsmith_div_u32(global0.a.x, global0.a.x), _wgslsmith_mod_u32(global0.a.x, 1u)))));
    var_0 = !(!(!vec2<bool>(true & var_0.x, global2.x)));
    var var_2 = 0i;
    var_2 = 2147483647i;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(~0u, ~1u), ~(~global0.a.x), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(global0.a.x, global0.a.x)), ~global0.a.wy), 1u) & ~global0.a);
    var var_0 = _wgslsmith_mod_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(~(vec4<i32>(-1i, u_input.a.x, u_input.a.x, 51676i) >> (global0.a % vec4<u32>(32u))), vec4<i32>(_wgslsmith_div_i32(u_input.a.x, -27782i), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), _wgslsmith_clamp_i32(-1i, u_input.a.x, 1i), ~0i)) | u_input.a);
    var_0 = u_input.a & _wgslsmith_div_vec4_i32((vec4<i32>(var_0.x, 1i, 1i, -17523i) | reverseBits(vec4<i32>(1i, u_input.a.x, 31695i, var_0.x))) << (~(~global0.a) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(~12971i, var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -57833i), vec3<i32>(u_input.a.x, -27539i, 0i)), ~u_input.a.x), vec4<i32>(1i, 1i, 1i, 1i)));
    var var_1 = _wgslsmith_mod_vec3_u32(~(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(global0.a.xzz, global0.a.zxz), ~global0.a.zwx)), _wgslsmith_mod_vec3_u32(vec3<u32>(22647u, 1u, 1u) << (~(~global3[_wgslsmith_index_u32(4294967295u, 31u)]) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(37878u, global0.a.x, 0u) ^ global0.a.yww, ~(~vec3<u32>(global0.a.x, global0.a.x, 19847u)), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(global3[_wgslsmith_index_u32(global0.a.x, 31u)], global0.a.yyy), global0.a.zyx >> (vec3<u32>(51478u, 83022u, global0.a.x) % vec3<u32>(32u))))));
    let var_2 = ~(_wgslsmith_clamp_u32(var_1.x << (max(var_1.x, var_1.x) % 32u), global0.a.x, 45663u) << (4790u % 32u));
    global3 = array<vec3<u32>, 31>();
    global0 = func_1(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 19613i), vec3<i32>(var_0.x, var_0.x, u_input.a.x)), vec3<i32>(u_input.a.x, var_0.x, u_input.a.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_0.xzw, vec3<i32>(19091i, -1i, u_input.a.x)), _wgslsmith_clamp_i32(var_0.x, 0i, -4271i)), u_input.a.x), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.zyx, u_input.a.xzz), -vec3<i32>(-20394i, 45268i, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-336f, 1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-221f + _wgslsmith_f_op_f32(floor(1140f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-570f - -2238f))))));
}

