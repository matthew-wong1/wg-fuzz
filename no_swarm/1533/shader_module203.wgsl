struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 60512u;

var<private> global1: Struct_1 = Struct_1(-1i, vec2<u32>(0u, 18221u), vec2<f32>(669f, -368f), -1238f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: f32) -> vec4<bool> {
    var var_0 = ~(vec3<i32>(-1i) * -vec3<i32>(i32(-1i) * -1i, 0i, 2147483647i));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2504f, arg_2)))))), 167f));
    return !(!(!select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32) -> vec2<u32> {
    let var_0 = u_input.a.x;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1647f) - -887f)) + global1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-912f, _wgslsmith_f_op_f32(-global1.d))) - _wgslsmith_f_op_f32(floor(549f))), global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d + global1.c.x) + _wgslsmith_f_op_f32(-global1.c.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.d))))));
    let var_2 = vec2<u32>(var_0 << (~14405u % 32u), ~_wgslsmith_add_u32(u_input.a.x << (global1.b.x % 32u), var_0 << (u_input.a.x % 32u))) | vec2<u32>(select(~u_input.a.x, var_0, false), max(~39952u, abs(40681u)));
    let var_3 = global1.c.x;
    var var_4 = -48943i;
    return vec2<u32>(_wgslsmith_clamp_u32(~47010u, 104037u, var_0), 28613u);
}

fn func_2() -> f32 {
    global0 = u_input.a.x;
    global1 = Struct_1(global1.a, _wgslsmith_add_vec2_u32(func_4(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), func_3(global1.b.x, vec3<f32>(global1.d, global1.c.x, 712f), -724f), true), global1.a), ~vec2<u32>(4294967295u << (global1.b.x % 32u), global1.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(global1.d)), _wgslsmith_f_op_f32(-110f + 1012f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(716f)) * -1000f)));
    let var_0 = Struct_1(5989i, vec2<u32>(func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), 1i).x, global1.b.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global1.c), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1094f, global1.d))))))), _wgslsmith_f_op_f32(176f * 1000f));
    var var_1 = (reverseBits(-vec2<i32>(-2147483647i, -1i)) ^ ((vec2<i32>(0i, var_0.a) & (vec2<i32>(0i, -2147483647i) >> (var_0.b % vec2<u32>(32u)))) ^ (vec2<i32>(-1i) * -vec2<i32>(var_0.a, global1.a)))) & (~vec2<i32>(~23812i, var_0.a >> (global1.b.x % 32u)) | max(-vec2<i32>(-1i, var_0.a) >> ((vec2<u32>(32287u, 19925u) & u_input.a) % vec2<u32>(32u)), vec2<i32>(-1i) * -vec2<i32>(var_0.a, var_0.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, -351f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(102f + 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-518f)), global1.d))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, var_0.c.x, global1.d, global1.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, global1.d, var_0.c.x, global1.c.x)), any(vec2<bool>(true, false))))))));
    return -284f;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> u32 {
    let var_0 = 0u;
    var var_1 = vec3<f32>(-1000f, -212f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 167f, 1090f) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(global1.c.x)), 290f, _wgslsmith_div_f32(arg_0, -827f))))));
    let var_3 = vec4<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), ~_wgslsmith_mult_i32(-global1.a, max(global1.a, 1i)) != -35039i, true);
    global1 = Struct_1(~2147483647i, u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.xx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(336f, -1582f), arg_1)))))), -1703f);
    return ~87708u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~68251u;
    var var_0 = 979f;
    var var_1 = firstTrailingBit(vec3<i32>(~reverseBits(_wgslsmith_mod_i32(global1.a, 0i)), 2147483647i | -_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, global1.a, -33591i), vec3<i32>(global1.a, global1.a, global1.a)), -global1.a));
    let var_2 = Struct_2(~100497u, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 445f, global1.d), vec3<f32>(global1.c.x, -293f, 643f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, 190f, global1.d))))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.d), -1000f)), global1.c.x, global1.d))), Struct_1(-2147483647i, vec2<u32>(func_1(_wgslsmith_f_op_f32(1331f - global1.d), _wgslsmith_f_op_vec2_f32(sign(global1.c))), 54191u), global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global1.d, 518f)), _wgslsmith_f_op_f32(global1.d * 1058f))) - 1000f)), ~vec3<u32>(~max(global1.b.x, 74116u), u_input.a.x, 34005u), Struct_1(1i, ~select(vec2<u32>(4294967295u, u_input.a.x), global1.b, vec2<bool>(false, false)) | vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 53023u, 4294967295u, 24074u), vec4<u32>(u_input.a.x, 0u, global1.b.x, 0u)), u_input.a.x), _wgslsmith_f_op_vec2_f32(-global1.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(global1.d - -843f)))));
    var var_3 = Struct_1(_wgslsmith_mod_i32(var_2.e.a ^ 2147483647i, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.e.a, -1i, global1.a), vec3<i32>(-47772i, global1.a, -2147483647i)))) >> (~global1.b.x % 32u), vec2<u32>(34385u, (global1.b.x | func_1(var_2.b.x, vec2<f32>(global1.d, global1.c.x))) | ~_wgslsmith_div_u32(0u, 36969u)), var_2.b.yz, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -960f))));
    let var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<u32>(firstTrailingBit(_wgslsmith_mod_u32(var_3.b.x, var_2.e.b.x)), 0u), ~var_3.b), var_2.e.a, vec4<u32>(65973u, global1.b.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(firstLeadingBit(vec4<u32>(9372u, 6022u, 67167u, var_2.d.x))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.d.x, 65175u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 0u, 0u))), _wgslsmith_dot_vec3_u32(min(countOneBits(var_2.d), reverseBits(vec3<u32>(var_3.b.x, var_2.a, u_input.a.x))), _wgslsmith_sub_vec3_u32(var_2.d & var_2.d, var_2.d))), abs(0i));
}

