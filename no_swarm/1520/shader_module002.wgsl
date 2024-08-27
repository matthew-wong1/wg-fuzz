struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(1587f, -590f, 1000f), vec3<f32>(-360f, 1672f, 217f), vec3<f32>(198f, -1265f, -864f), vec3<f32>(200f, 110f, 193f), vec3<f32>(997f, -801f, 1209f), vec3<f32>(-1000f, 1017f, 1000f), vec3<f32>(-914f, 342f, 151f), vec3<f32>(-821f, -1989f, 1294f), vec3<f32>(1406f, 357f, -949f), vec3<f32>(1000f, 722f, -1000f), vec3<f32>(-144f, 268f, -1324f), vec3<f32>(-835f, 734f, 1000f), vec3<f32>(1000f, -1211f, 1251f), vec3<f32>(722f, -231f, -711f), vec3<f32>(1000f, -1317f, 3345f), vec3<f32>(1254f, 185f, 864f), vec3<f32>(640f, -228f, 479f), vec3<f32>(1833f, -1578f, 1169f), vec3<f32>(-1681f, 2279f, -568f), vec3<f32>(-1020f, -1540f, 156f), vec3<f32>(-610f, 229f, -951f), vec3<f32>(-1708f, 1003f, -1928f), vec3<f32>(1000f, 1139f, -193f), vec3<f32>(-1100f, 159f, -2433f));

var<private> global3: array<Struct_1, 21>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x)))) * 320f) <= 1185f;
    var_0 = false;
    let var_1 = ~vec4<u32>(global1.a.x, global1.a.x, global1.a.x, min(global1.a.x, ~(~86717u)));
    var var_2 = abs(vec3<u32>(~4294967295u, ~global1.a.x & select(u_input.a.x, 4294967295u, true), 0u)) | ~var_1.yww;
    var_0 = -4287i == _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(u_input.b, -1i, u_input.b)), -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.b, 2147483647i), vec3<i32>(u_input.b, 44822i, u_input.b))), _wgslsmith_mod_vec3_i32(max(vec3<i32>(-2147483647i, u_input.b, 1i), vec3<i32>(23160i, -1i, u_input.b)), abs(vec3<i32>(-1i, u_input.b, -62031i) & vec3<i32>(-4810i, u_input.b, u_input.b))));
    return _wgslsmith_f_op_f32(f32(-1f) * -3291f);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_u32(u_input.a.wzy, global1.a));
    var var_1 = vec3<u32>(u_input.a.x << (~1u % 32u), ~_wgslsmith_div_u32(18714u, ~global1.a.x ^ 0u), ~2158u);
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-462f, 1919f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-219f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -318f, global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -2585f, global0.x, 652f), vec4<f32>(global0.x, -1250f, global0.x, global0.x)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-138f, 278f, 748f, 528f)), _wgslsmith_div_vec4_f32(vec4<f32>(1357f, -1563f, 348f, global0.x), vec4<f32>(global0.x, 708f, 861f, 792f))))))));
    let var_3 = select(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b, u_input.b, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(-2147483647i, 1i, u_input.b) | vec3<i32>(u_input.b, u_input.b, u_input.b))), vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_div_i32(u_input.b, -1i), u_input.b << (var_0.a.x % 32u))), vec3<i32>(~(~1i | _wgslsmith_sub_i32(u_input.b, 0i)), _wgslsmith_mod_i32(-_wgslsmith_div_i32(u_input.b, u_input.b), _wgslsmith_sub_i32(u_input.b >> (105359u % 32u), -22636i)), firstLeadingBit(~1i)), 1u >= min(4294967295u, ~global1.a.x));
    global2 = array<vec3<f32>, 24>();
    return var_2.x;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = ~countOneBits(_wgslsmith_mult_vec4_u32(countOneBits(~vec4<u32>(11438u, u_input.a.x, global1.a.x, 1u)), firstTrailingBit(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a))));
    let var_1 = 645f;
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))), global0.x, _wgslsmith_f_op_f32(trunc(var_1)), _wgslsmith_f_op_f32(f32(-1f) * -1450f)));
    let var_2 = select(!(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true))), vec4<bool>(any(vec2<bool>(any(vec4<bool>(false, false, false, false)), select(false, false, false))), true, select(all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false))), true, true), all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(false, true, false), select(false, false, false)))), !select(vec4<bool>(true, all(vec4<bool>(false, true, false, true)), true, all(vec3<bool>(false, true, false))), vec4<bool>(var_0.x != 1u, true, any(vec2<bool>(false, false)), all(vec4<bool>(false, true, false, false))), all(vec4<bool>(true, true, true, true))));
    let var_3 = global3[_wgslsmith_index_u32(4294967295u >> (_wgslsmith_mod_u32(8357u >> (_wgslsmith_clamp_u32(21450u ^ u_input.a.x, global1.a.x, u_input.a.x) % 32u), ~firstTrailingBit(u_input.a.x)) % 32u), 21u)];
    return Struct_1(~(~select(vec3<u32>(u_input.a.x, global1.a.x, var_0.x), var_3.a, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-2045f);
    global2 = array<vec3<f32>, 24>();
    let var_1 = Struct_1(global1.a);
    let var_2 = true;
    let var_3 = var_1;
    let var_4 = _wgslsmith_div_i32(0i, abs(~u_input.b));
    var var_5 = func_1(-2463f);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a, _wgslsmith_mod_u32(_wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec3_u32(u_input.a.yzz, var_3.a)), _wgslsmith_add_u32(35789u, ~countOneBits(var_0.a.x))));
}

