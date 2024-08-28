struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: vec3<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(17867u, 28341u, 4294967295u);

var<private> global1: array<vec4<i32>, 27>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4) -> f32 {
    var var_0 = countOneBits(~(~max(max(vec3<u32>(4294967295u, 69801u, u_input.a), vec3<u32>(29715u, global0.x, 4294967295u)), firstLeadingBit(vec3<u32>(u_input.b, arg_1.a.a, 45275u)))));
    let var_1 = Struct_2(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), arg_0.x != arg_1.d), vec2<bool>(arg_0.x != arg_1.d, true), select(vec2<bool>(true, false), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), true))), 2147483647i, select(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, false, true))), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))), vec3<bool>(any(vec3<bool>(true, true, true)), true, any(vec3<bool>(true, false, true)))), _wgslsmith_mod_i32(1i, 66615i), Struct_1(92077u));
    global1 = array<vec4<i32>, 27>();
    let var_2 = ~_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_add_u32(var_1.e.a, u_input.d.x));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-685f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2013f))))));
    return -595f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>) -> vec2<bool> {
    global1 = array<vec4<i32>, 27>();
    var var_0 = vec4<bool>(!(!(_wgslsmith_f_op_f32(select(384f, 373f, false)) > _wgslsmith_f_op_f32(func_3(vec4<f32>(-1726f, 1000f, -403f, 1929f), Struct_4(Struct_1(global0.x), Struct_1(32317u), Struct_1(u_input.a), -1000f))))), true, (~(~u_input.a) <= 75288u) | all(vec4<bool>(any(vec3<bool>(false, true, true)), all(vec3<bool>(true, false, false)), true, true)), !any(vec4<bool>(true, true, true, 1u >= arg_0.x)));
    let var_1 = max(~max(max(~2147483647i, -2147483647i), arg_1.x ^ arg_1.x), abs(arg_1.x));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d.x), vec2<u32>(113770u, arg_0.x)), 4294967295u), ~global0.yy) | ~1u);
    let var_3 = Struct_3(!select(!var_0.xyy, var_0.zwz, !var_0.zzw), var_2, Struct_1(var_2.a));
    return vec2<bool>(any(var_0.xzw) || all(vec4<bool>(true, var_0.x, select(var_3.a.x, var_0.x, var_0.x), var_3.a.x)), var_0.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<i32>, arg_3: f32) -> vec2<bool> {
    let var_0 = arg_2.x;
    let var_1 = global0.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(arg_0.yz))));
    return func_2(_wgslsmith_add_vec2_u32(u_input.c.yy, _wgslsmith_mod_vec2_u32(global0.yy, ~countOneBits(u_input.d.xz))), ~_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -44i), vec2<i32>(2147483647i, -1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0, var_0), arg_2.yz)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<bool>) -> StorageBuffer {
    let var_0 = arg_0.b;
    var var_1 = select(~abs(global0.zz), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(31886u, 41166u) << (vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.c.yz >> (vec2<u32>(global0.x, 6480u) % vec2<u32>(32u)), select(u_input.c.yx, u_input.d.ww, arg_1.a.x)), ~_wgslsmith_add_vec2_u32(global0.xy, vec2<u32>(52668u, 10320u))), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-131f, 695f, -1109f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(288f, 1083f, -604f), vec3<f32>(1926f, 902f, -818f), vec3<bool>(true, true, true))) * vec3<f32>(248f, 1226f, 1064f))), true, -(vec3<i32>(var_0, arg_0.d, -53095i) ^ vec3<i32>(var_0, var_0, 2147483647i)) ^ vec3<i32>(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(global0.x, 27u)], vec4<i32>(-1i, var_0, 1i, 0i)), ~arg_0.d, var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -915f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(148f))))).x);
    let var_2 = Struct_4(arg_1.c, arg_0.e, Struct_1(~u_input.d.x), _wgslsmith_f_op_f32(round(336f)));
    return StorageBuffer(1359f, var_2.b.a, vec3<f32>(-1533f, 1076f, _wgslsmith_f_op_f32(f32(-1f) * -419f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 27>();
    let x = u_input.a;
    s_output = func_4(Struct_2(func_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -693f), _wgslsmith_f_op_f32(step(-249f, 1000f)), _wgslsmith_f_op_f32(-594f - -161f)), true, vec3<i32>(1i, 1i, 1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-383f)), -552f)), ~(13817i | select(0i, 0i, false)), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)), _wgslsmith_add_i32(2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-5428i, -5312i, 14171i), vec3<i32>(25789i, -23646i, 2147483647i))), Struct_1(_wgslsmith_mod_u32(1u, ~21003u))), Struct_3(vec3<bool>(_wgslsmith_f_op_f32(round(-703f)) > _wgslsmith_f_op_f32(round(1164f)), any(vec3<bool>(false, true, false)), (4294967295u >> (u_input.b % 32u)) >= global0.x), Struct_1(_wgslsmith_add_u32(1u, 1u) << (~u_input.b % 32u)), Struct_1(~(~global0.x))), select(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true)), vec4<bool>(false, any(vec3<bool>(true, false, false)), true, true), false), !vec4<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(true, true)), true, true), false));
}

