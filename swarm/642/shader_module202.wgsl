struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 5>;

var<private> global1: u32 = 78752u;

var<private> global2: vec3<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> f32 {
    global2 = -(~vec3<i32>(reverseBits(~global2.x), firstTrailingBit(global2.x) >> (28305u % 32u), _wgslsmith_dot_vec3_i32(min(vec3<i32>(63810i, global2.x, global2.x), vec3<i32>(5094i, global2.x, global2.x)), vec3<i32>(global2.x, global2.x, global2.x) & vec3<i32>(global2.x, global2.x, 0i))));
    return -936f;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1322f, _wgslsmith_f_op_f32(f32(-1f) * -1301f))))));
    global1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.a, 39280u)) | ~(~vec2<u32>(u_input.a, 0u)), max(min(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(8156u, u_input.a))), vec2<u32>(firstTrailingBit(u_input.a), 15386u))), ~vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(18974u, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, 4294967295u) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), ~(~60592u)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(355f - 124f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1402f - 1632f), _wgslsmith_f_op_f32(func_3(Struct_3(-412f, Struct_1(vec2<f32>(432f, 362f), vec4<u32>(u_input.a, u_input.a, u_input.a, 2237u))), true)))), true | any(vec3<bool>(false, false, false)))) + -1371f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-908f, 1400f))))))));
    let var_1 = vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(30875u, u_input.a) << (~u_input.a % 32u)) ^ _wgslsmith_mod_u32(~abs(u_input.a), ~(~u_input.a)), select(4679u, u_input.a, true), 44762u);
    global2 = _wgslsmith_mod_vec3_i32(~(~vec3<i32>(global2.x, arg_0, global2.x)), vec3<i32>(-20665i, abs(~(-6939i)), -51010i));
    return _wgslsmith_dot_vec2_u32(var_1.zx, (vec2<u32>(_wgslsmith_mod_u32(var_1.x, u_input.a), 2399u) & var_1.zz) ^ var_1.yy);
}

fn func_1(arg_0: vec4<u32>) -> vec2<f32> {
    var var_0 = !vec4<bool>(select(any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))), false, !all(vec2<bool>(false, true))), !(u_input.a < func_2(global2.x)), true, true);
    let var_1 = arg_0.ww;
    global2 = vec3<i32>(-9530i, -(49140i & max(global2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, global2.x, global2.x), vec3<i32>(global2.x, global2.x, -2147483647i)))), 281i);
    let var_2 = var_0.xww;
    var_0 = !vec4<bool>(var_1.x != var_1.x, !any(select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(var_2.x, true, false, var_0.x), vec4<bool>(true, var_0.x, false, var_2.x))), true, true);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(280f, -555f))))) + vec2<f32>(290f, _wgslsmith_div_f32(_wgslsmith_div_f32(-324f, -1088f), 1f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(501f - _wgslsmith_f_op_f32(step(1000f, -1297f))), 929f)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(-1962f, 1347f)), _wgslsmith_f_op_f32(-673f * -1516f)), _wgslsmith_f_op_vec2_f32(func_1(~vec4<u32>(4294967295u, u_input.a, 10227u, u_input.a))))), vec2<f32>(_wgslsmith_f_op_f32(498f - -688f), _wgslsmith_f_op_f32(select(-592f, _wgslsmith_f_op_f32(f32(-1f) * -1523f), true))), !select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
    let var_1 = ~(~_wgslsmith_clamp_vec3_u32(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 42016u, u_input.a), vec3<u32>(4294967295u, 68450u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~vec3<u32>(4294967295u, 1u, 32945u)), vec3<u32>(~1u, ~60512u, u_input.a), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u))));
    global1 = ~u_input.a;
    let var_2 = all(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)))));
    let var_3 = -firstLeadingBit(select(max(vec4<i32>(-2147483647i, 2598i, 1i, 4855i), -vec4<i32>(global2.x, global2.x, -2147483647i, -1i)), vec4<i32>(-1i) * -vec4<i32>(global2.x, 1i, global2.x, global2.x), true));
    global2 = -var_3.xyz >> (vec3<u32>(~abs(~var_1.x), 4294967295u, _wgslsmith_div_u32(34028u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(14197u, 2529u, var_1.x, u_input.a), vec4<u32>(0u, 1u, u_input.a, var_1.x)))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(var_0.x)), -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global2.yx, -global2.xz), -28297i), var_3.x, abs(select(firstTrailingBit(vec3<i32>(-28240i, -8778i, 95701i)), var_3.xwy & var_3.zxy, true)) | min(var_3.xxz, _wgslsmith_div_vec3_i32(var_3.zwz, vec3<i32>(21283i, var_3.x, 2147483647i) | var_3.zxx)), var_1 >> (firstLeadingBit(~max(vec3<u32>(u_input.a, 71013u, 30009u), var_1)) % vec3<u32>(32u)));
}

