struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false));

var<private> global2: vec4<i32> = vec4<i32>(-1i, 1i, -21273i, 6808i);

var<private> global3: Struct_1;

var<private> global4: vec2<i32> = vec2<i32>(2147483647i, 2147483647i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: vec2<u32>) -> vec3<i32> {
    var var_0 = arg_0.x;
    global4 = ~vec2<i32>(-((global4.x >> (0u % 32u)) | _wgslsmith_add_i32(global2.x, -2147483647i)), global4.x);
    global3 = global1[_wgslsmith_index_u32(u_input.a, 6u)];
    global2 = -_wgslsmith_clamp_vec4_i32(-vec4<i32>(_wgslsmith_mod_i32(global4.x, global2.x), u_input.b >> (70256u % 32u), u_input.b << (arg_0.x % 32u), u_input.b), min(countOneBits(abs(vec4<i32>(0i, 1i, global2.x, -2147483647i))), _wgslsmith_mod_vec4_i32(~vec4<i32>(0i, 37998i, global4.x, global4.x), _wgslsmith_div_vec4_i32(vec4<i32>(global4.x, 1i, -27272i, global2.x), vec4<i32>(2147483647i, -2147483647i, -3425i, 2147483647i)))), ~firstLeadingBit(vec4<i32>(2147483647i, global4.x, global4.x, -47812i)));
    let var_1 = ~1u != arg_0.x;
    return vec3<i32>(-35151i, _wgslsmith_dot_vec3_i32(~(~vec3<i32>(global4.x, 31607i, u_input.b)), global2.yzy), _wgslsmith_mod_i32(2147483647i, u_input.b));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> bool {
    var var_0 = Struct_1(!all(vec4<bool>(!global3.a, select(true, false, true), true & global3.a, select(true, true, false))));
    let var_1 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-175f + _wgslsmith_f_op_f32(trunc(1185f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(839f - -357f) + _wgslsmith_f_op_f32(-236f * -806f)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(select(689f, -659f, true))))));
    let var_2 = -1675f;
    var_0 = Struct_1(true);
    let var_3 = global1[_wgslsmith_index_u32(~u_input.a ^ 4294967295u, 6u)];
    return global3.a;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: vec4<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_1, arg_1)), -436f))))));
    return global1[_wgslsmith_index_u32(0u, 6u)];
}

fn func_1() -> vec2<f32> {
    let var_0 = 1667f;
    global2 = vec4<i32>(select(-15445i, abs(global2.x), global3.a), 30636i, -5218i | -global4.x, abs(16056i));
    let var_1 = 1u;
    global3 = Struct_1(select(false, !global3.a, any(select(select(vec3<bool>(global3.a, false, true), vec3<bool>(false, global3.a, global3.a), vec3<bool>(true, global3.a, global3.a)), vec3<bool>(global3.a, global3.a, true), select(vec3<bool>(true, true, false), vec3<bool>(global3.a, false, false), global3.a)))));
    let var_2 = func_4(func_3(var_1, firstLeadingBit(abs(vec4<u32>(var_1, 1u, 4294967295u, 0u)) >> (~vec4<u32>(var_1, u_input.a, u_input.a, 28863u) % vec4<u32>(32u))), vec4<i32>(abs(u_input.b), u_input.b, 33103i, _wgslsmith_clamp_i32(-82673i, -70762i, 0i) << (var_1 % 32u)), firstLeadingBit(global2.yzz) ^ func_2(vec2<u32>(1u, 49703u))), var_0, !all(!vec2<bool>(false, global3.a)), select(!vec4<bool>(all(vec2<bool>(false, true)), true, global3.a, true), vec4<bool>(abs(1i) <= global4.x, false, true, !func_3(var_1, vec4<u32>(0u, u_input.a, 0u, 4294967295u), vec4<i32>(u_input.b, -33630i, 2147483647i, global4.x), global2.zxz)), !select(select(vec4<bool>(true, global3.a, true, global3.a), vec4<bool>(false, true, true, global3.a), false), select(vec4<bool>(true, global3.a, true, false), vec4<bool>(true, false, false, global3.a), vec4<bool>(global3.a, global3.a, false, global3.a)), vec4<bool>(global3.a, false, false, global3.a))));
    return vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 * -397f), -1076f, any(vec2<bool>(false, false)))) - 1307f), var_0)), _wgslsmith_f_op_f32(-var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(!any(vec3<bool>(true, global3.a, false)), global3.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) * _wgslsmith_f_op_vec2_f32(func_1()));
    global2 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~(-1i), 1i, 0i, max(u_input.b, -1i)) & ((vec4<i32>(global2.x, u_input.b, u_input.b, -15066i) >> (vec4<u32>(59754u, u_input.a, u_input.a, 19484u) % vec4<u32>(32u))) << (firstTrailingBit(vec4<u32>(u_input.a, 17446u, u_input.a, u_input.a)) % vec4<u32>(32u))), ~(~vec4<i32>(-1i, -29217i, 41266i, 1i))), vec4<i32>(max(u_input.b & global2.x, u_input.b >> (4294967295u % 32u)) | global4.x, firstTrailingBit(global4.x), global4.x, max(func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))).x, -5627i)));
    let var_2 = 4294967295u;
    var var_3 = func_4(true, var_1.x, func_4(global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 1137f) - _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_1.x))), !var_0.x, select(!(!vec4<bool>(true, true, false, var_0.x)), vec4<bool>(!var_0.x, all(vec2<bool>(global3.a, false)), all(vec2<bool>(true, false)), global3.a), true)).a, vec4<bool>(all(select(vec4<bool>(false, var_0.x, global3.a, true), !vec4<bool>(true, false, var_0.x, global3.a), select(vec4<bool>(global3.a, var_0.x, true, var_0.x), vec4<bool>(false, false, global3.a, false), vec4<bool>(global3.a, global3.a, true, true)))), var_0.x, select(true, -575f < var_1.x, global3.a), true));
    let x = u_input.a;
    s_output = StorageBuffer(global4.x, -firstTrailingBit(global4.x));
}

