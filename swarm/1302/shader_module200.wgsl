struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4>;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(-29530i, vec3<u32>(0u, 35400u, 4294967295u), -35761i, vec4<u32>(0u, 67580u, 48238u, 4362u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), any(vec2<bool>(true, true)) && true), select(vec3<bool>(true, all(vec3<bool>(true, false, false)), u_input.a >= global2.a), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    global1 = Struct_1(global1.a, min(abs(~vec3<u32>(global2.b.x, global2.b.x, 46835u)) | _wgslsmith_sub_vec3_u32(~global2.b, ~vec3<u32>(59664u, 4294967295u, global1.d.x)), ~vec3<u32>(~30685u, _wgslsmith_add_u32(1u, global1.d.x), select(38969u, 4294967295u, var_0))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(global2.c, -5175i), vec2<i32>(u_input.a, 0i)) | global1.c, vec4<u32>(global2.d.x, ~global1.d.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~global0[_wgslsmith_index_u32(global1.b.x, 4u)], ~vec2<u32>(38951u, global1.d.x)), abs(4294967295u), 4294967295u), ~global2.b.x));
    let var_1 = Struct_1(-2147483647i, ~(~global2.b | ~_wgslsmith_add_vec3_u32(global1.d.zww, vec3<u32>(global1.b.x, 11439u, 22616u))), max(i32(-1i) * -10102i, 64697i), ~global1.d);
    var var_2 = !select(vec4<bool>(var_0, var_0, any(select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), false)), true), vec4<bool>(select(true, var_0, !var_0), true, false, !(!var_0)), select(!vec4<bool>(var_0, false, false, false), select(vec4<bool>(false, var_0, false, var_0), !vec4<bool>(false, var_0, var_0, true), var_0 != true), vec4<bool>(false, var_0, true, true)));
    let var_3 = Struct_1(_wgslsmith_clamp_i32(~select(1i, -1i, true), ~global2.a, max(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, global2.c, global2.a), vec3<i32>(-1i, var_1.a, -2147483647i)))) << (3829u % 32u), vec3<u32>(4294967295u, global2.b.x, ~var_1.d.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(~5714i, global1.c), _wgslsmith_add_i32(_wgslsmith_sub_i32(global2.a, var_1.a), 1i)), vec4<u32>(49439u, var_1.b.x, global2.d.x, 4294967295u));
    return var_0 != var_0;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    global1 = Struct_1(-112906i, _wgslsmith_mult_vec3_u32(countOneBits(~vec3<u32>(43327u, global1.d.x, 16975u)), global1.d.zxx), abs(global1.a ^ u_input.a), ~vec4<u32>(reverseBits(~global1.b.x), ~arg_1.x, ~min(1u, 0u), _wgslsmith_sub_u32(global1.b.x, 1u)));
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(203f * 240f) - arg_0)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(397f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(196f + 256f)))), func_3());
    let var_1 = select(vec2<bool>(var_0.x, !(~global2.a < 2147483647i)), !select(!select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true), true), select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), vec2<bool>(false, var_0.x), any(vec2<bool>(var_0.x, false))), var_0.x), select(vec2<bool>(all(select(vec2<bool>(var_0.x, true), vec2<bool>(true, true), var_0.x)), !(true != var_0.x)), select(select(!vec2<bool>(var_0.x, true), select(vec2<bool>(false, true), vec2<bool>(var_0.x, false), false), select(vec2<bool>(true, var_0.x), vec2<bool>(false, true), vec2<bool>(false, true))), select(!vec2<bool>(var_0.x, var_0.x), !vec2<bool>(false, var_0.x), true), vec2<bool>(true, var_0.x)), select(vec2<bool>(all(vec4<bool>(true, true, var_0.x, var_0.x)), u_input.a == u_input.a), vec2<bool>(arg_0 != -1000f, !var_0.x), vec2<bool>(true, true))));
    global2 = Struct_1(-((-19547i >> (_wgslsmith_mod_u32(arg_1.x, 60551u) % 32u)) | -global2.a), min(firstTrailingBit(global2.b), ~abs(abs(vec3<u32>(arg_1.x, global1.d.x, 46591u)))), countOneBits(1i), vec4<u32>(select(~(1u | arg_1.x), ~(~arg_1.x), false != all(vec4<bool>(var_1.x, false, false, var_1.x))), ~(1u << (arg_1.x % 32u)), ~(~global2.d.x), _wgslsmith_clamp_u32(arg_1.x, 0u, arg_1.x)));
    global2 = Struct_1(50808i, global1.b, firstTrailingBit(_wgslsmith_sub_i32(countOneBits(-72918i), -36688i)), vec4<u32>(global1.d.x, abs(~(~global1.b.x)), abs(~(~global2.b.x)), _wgslsmith_dot_vec2_u32(firstLeadingBit(countOneBits(global2.d.yx)), ~_wgslsmith_sub_vec2_u32(arg_1.yy, vec2<u32>(arg_1.x, 1u)))));
    return Struct_1(~firstLeadingBit(-7055i), firstTrailingBit(arg_1), global2.a, global2.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> i32 {
    global0 = array<vec2<u32>, 4>();
    var var_0 = Struct_1(~2147483647i, select(global2.d.xxw, vec3<u32>(_wgslsmith_clamp_u32(max(global2.b.x, global1.b.x), _wgslsmith_dot_vec3_u32(global2.b, vec3<u32>(global1.d.x, global1.d.x, global1.d.x)), arg_1.d.x), 0u, 35581u), !arg_2), global1.a, global2.d);
    let var_1 = select(-arg_1.c >= global2.c, all(vec3<bool>(arg_3.x, all(arg_3.yzx), false)), arg_2);
    return _wgslsmith_sub_i32(0i, ~(~(-(~15449i))));
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    var var_0 = global1.a;
    var var_1 = Struct_1(_wgslsmith_sub_i32(1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2.d.x, 1u, 72326u) ^ vec4<u32>(37653u, global2.b.x, global1.b.x, global1.b.x), firstLeadingBit(global2.d)) % 32u), func_4(func_2(-1109f, _wgslsmith_clamp_vec3_u32(vec3<u32>(52682u, global1.d.x, 0u), global2.b, global2.d.yzy)), func_2(-211f, vec3<u32>(global2.d.x, 39537u, global2.b.x)), all(vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, true))), ~countOneBits(global2.d.zzw), 4941i, global2.d);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    let var_3 = Struct_1(global1.c, ~firstTrailingBit(var_1.d.xwy), var_1.a, _wgslsmith_div_vec4_u32(select(min(var_1.d, vec4<u32>(1u, var_1.d.x, global2.b.x, 4294967295u)), vec4<u32>(global1.d.x, 26389u, var_1.d.x, 4294967295u), vec4<bool>(true, true, true, true)), _wgslsmith_add_vec4_u32(var_1.d, ~var_1.d)) ^ vec4<u32>(min(global2.b.x, ~24874u), ~65179u << ((global1.d.x | 0u) % 32u), global2.d.x, _wgslsmith_sub_u32(~global2.b.x, ~12508u)));
    var_2 = 856f;
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(firstLeadingBit(-func_1(vec3<f32>(-1594f, -203f, 159f))), ~global2.d.zyz, -_wgslsmith_dot_vec3_i32(vec3<i32>(min(14918i, global1.c), countOneBits(-1i), func_1(vec3<f32>(-195f, -695f, 1342f))), vec3<i32>(-30729i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global2.c), vec2<i32>(global1.a, 1i)), min(global1.c, global2.a))), global1.d);
    var var_0 = false;
    var_0 = false;
    global1 = Struct_1(global2.a, _wgslsmith_mult_vec3_u32(~vec3<u32>(~global2.d.x, ~global2.b.x, global2.b.x), vec3<u32>(40137u, global1.d.x, ~global2.d.x)), func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(175f, -1000f), _wgslsmith_f_op_f32(max(462f, 703f)))))), vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(48909u), global2.b.x), _wgslsmith_dot_vec2_u32(firstTrailingBit(global2.d.xx), global1.b.yx), ~(global2.d.x & 1u))).c, abs(global1.d) ^ (global2.d | vec4<u32>(global1.b.x ^ 4294967295u, reverseBits(64678u), ~global2.b.x, _wgslsmith_mod_u32(global1.b.x, global2.d.x))));
    var var_1 = select(!vec2<bool>(!func_3(), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false))), vec2<bool>(true, true), select(vec2<bool>(true, any(vec2<bool>(true, true))), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(false, false), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))), all(vec2<bool>(true, all(vec2<bool>(false, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(260f))) + _wgslsmith_f_op_f32(f32(-1f) * -351f)), -1408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1866f)) - -226f) - 2137f), _wgslsmith_f_op_f32(sign(-2737f))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 2147483647i, reverseBits(7429i)), -(vec3<i32>(-1i) * -vec3<i32>(-1i, global2.c, 2147483647i))), 67615u);
}

