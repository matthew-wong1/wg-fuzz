struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true));

var<private> global2: vec2<i32>;

var<private> global3: Struct_4;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    let var_0 = global3.b;
    var var_1 = Struct_4(-min(~global0.x, -_wgslsmith_div_i32(u_input.e, u_input.e)), global3.b);
    let var_2 = Struct_1(~firstTrailingBit(reverseBits(-2147483647i)), global1[_wgslsmith_index_u32(u_input.a, 7u)]);
    var_1 = Struct_4(var_2.a, 303f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -187f), _wgslsmith_f_op_f32(max(-994f, -495f)), true))));
    global3 = Struct_4(-42930i, any(vec3<bool>(var_2.b.x, any(var_2.b.zy), var_2.b.x)));
    return ~global3.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = Struct_2(vec4<i32>(max(arg_1.a, func_3()), select(1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(global3.a, -1i, 2213i)), abs(u_input.c)), any(vec3<bool>(true, true, true))), _wgslsmith_mult_i32(~global3.a, global0.x), -_wgslsmith_mult_i32(-2147483647i, global2.x)));
    global3 = Struct_4(_wgslsmith_mod_i32(global2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(21692i, global0.x), -var_0.a.xy)) | 2864i, arg_2);
    let var_1 = any(vec4<bool>(arg_1.b.x, any(select(arg_1.b.zzx, select(arg_1.b.yyy, arg_1.b.yxx, arg_1.b.yzy), !arg_1.b.yzz)), global3.b, false));
    var var_2 = Struct_5(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-var_0.a.xw, vec2<i32>(global3.a, u_input.b)), ~abs(arg_1.a)), 0i >> (u_input.d % 32u), 27425i), ~(abs(_wgslsmith_dot_vec2_u32(arg_0.zx, vec2<u32>(39361u, arg_0.x))) << (u_input.a % 32u)), select(arg_0.yx, arg_0.zy, var_1));
    let var_3 = _wgslsmith_mult_vec2_u32(var_2.c, vec2<u32>(_wgslsmith_mod_u32(122324u, reverseBits(u_input.a)), u_input.d));
    return true;
}

fn func_1(arg_0: i32, arg_1: bool) -> i32 {
    let var_0 = arg_1;
    var var_1 = !vec3<bool>(true, true, func_2(_wgslsmith_mult_vec3_u32(~vec3<u32>(8066u, u_input.a, u_input.d), ~vec3<u32>(0u, u_input.d, u_input.a)), Struct_1(-56463i, select(vec4<bool>(global3.b, global3.b, true, var_0), vec4<bool>(arg_1, global3.b, var_0, arg_1), false)), arg_1));
    var var_2 = Struct_5(firstTrailingBit(u_input.c), 0u, ~min(~(vec2<u32>(u_input.a, u_input.d) ^ vec2<u32>(4294967295u, u_input.a)), ~vec2<u32>(1u, 1u)));
    let var_3 = -919f;
    var var_4 = select(!select(vec4<bool>(arg_1, false, true, arg_1), !vec4<bool>(var_0, true, false, var_1.x), !vec4<bool>(true, var_0, global3.b, arg_1)), select(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, 90296u, var_2.b, var_2.b), vec4<u32>(1u, 4294967295u, 4294967295u, var_2.b)), 7u)], vec4<bool>(arg_1, select(global0.x >= global3.a, !var_1.x, true), (-12973i | u_input.b) < global2.x, (arg_1 & false) | (global3.b & false)), vec4<bool>(all(vec2<bool>(true, true)), arg_1 || arg_1, true, global3.b)), true);
    return var_2.a.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>) -> bool {
    global2 = -_wgslsmith_sub_vec2_i32(-u_input.c.xy, arg_0.yx);
    let var_0 = Struct_2(vec4<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-7803i, arg_0.x, -2147483647i)), vec3<i32>(global3.a, arg_0.x, 0i)) | -56423i, ~global2.x, arg_0.x, -select(global2.x, 5848i, true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-537f, -642f) * -416f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1372f)), 428f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1481f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(966f, 233f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(739f))))));
    global0 = arg_1.ww;
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(94339u ^ (~u_input.d & 48792u), _wgslsmith_mod_u32(~2561u & u_input.d, ~u_input.d)), ~(~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.d, u_input.a), vec2<u32>(u_input.d, 43339u))));
    return all(vec4<bool>(any(!vec3<bool>(true, global3.b, true)), -global3.a < ~global2.x, !(1u != var_2.x), true)) | false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-vec4<i32>(global2.x, _wgslsmith_mod_i32(func_1(-1i, false), -global2.x), -4739i, i32(-1i) * -28153i), -select(max(vec4<i32>(global3.a, global3.a, u_input.e, u_input.c.x), min(vec4<i32>(40301i, u_input.c.x, -28829i, u_input.e), vec4<i32>(-1i, -9613i, 11652i, 0i))), firstLeadingBit(~vec4<i32>(global2.x, 1i, 20006i, 2147483647i)), select(false, !global3.b, global3.b & global3.b)));
    let var_1 = Struct_3((abs(vec4<i32>(u_input.e, -39048i, 1i, -2147483647i)) | (_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.x, -1i, global0.x, global3.a), vec4<i32>(2147483647i, u_input.b, global2.x, global3.a), vec4<i32>(global2.x, global0.x, -6123i, global2.x)) & vec4<i32>(global0.x, -1i, global2.x, 43610i))) ^ ((vec4<i32>(u_input.e, global3.a, global3.a, u_input.b) ^ vec4<i32>(0i, global0.x, -49085i, 53901i)) | (vec4<i32>(-24444i, 2147483647i, global3.a, global0.x) & ~vec4<i32>(global3.a, 2147483647i, 17807i, global3.a))));
    let var_2 = Struct_3(_wgslsmith_mod_vec4_i32(var_1.a, ~(-(var_1.a << (vec4<u32>(u_input.d, u_input.a, 78407u, u_input.a) % vec4<u32>(32u))))));
    global1 = array<vec4<bool>, 7>();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-1385f, _wgslsmith_f_op_f32(min(905f, 115f)), global3.b)), 1f, -1460f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~_wgslsmith_mod_i32(var_1.a.x, global2.x ^ var_2.a.x), global2.x, select(global3.a, var_2.a.x, false)));
}

