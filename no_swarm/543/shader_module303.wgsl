struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    return Struct_3(Struct_1(false, ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, u_input.d.x, 34298u, u_input.e.x), vec4<u32>(21013u, arg_0.x, 45041u, 4294967295u), vec4<u32>(u_input.e.x, arg_0.x, u_input.a, arg_0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -601f), -820f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2093f, -1000f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1238f, -152f)))))));
}

fn func_3(arg_0: u32, arg_1: f32) -> bool {
    global0 = ~u_input.e.x;
    global0 = abs(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(select(62938u, 1u, false), 7824u), 8917u), u_input.e));
    let var_0 = Struct_2(all(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true)), func_2(select(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(arg_0, 30805u), vec2<u32>(arg_0, u_input.a), false), vec2<u32>(4294967295u, arg_0), vec2<u32>(0u, u_input.a)), ~u_input.d.zy, true)).a, func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(select(u_input.a, 24543u, false), 84781u), (vec2<u32>(u_input.a, arg_0) >> (vec2<u32>(arg_0, u_input.a) % vec2<u32>(32u))) >> (abs(u_input.d.xz) % vec2<u32>(32u)))).a, Struct_1(!all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), vec4<u32>(56652u, ~1u, 9396u, 648u), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(335f * arg_1), _wgslsmith_f_op_f32(102f + arg_1))), -967f)));
    var var_1 = ~vec3<u32>(abs(4294967295u) | var_0.c.b.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, var_0.c.b.x), u_input.e.x) >> (53629u % 32u), ~77117u);
    var_1 = ~firstTrailingBit(_wgslsmith_mod_vec3_u32(u_input.d, u_input.d) ^ (var_0.b.b.yzz | var_0.c.b.zzz)) >> (max(reverseBits(u_input.d), ~u_input.d) % vec3<u32>(32u));
    return false;
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = ~(~arg_0.b.x);
    var var_0 = Struct_4(502f, func_2(u_input.e), func_3(48816u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-997f + arg_0.c.x) - -984f))));
    let var_1 = u_input.b;
    var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1822f + var_0.b.a.c.x), _wgslsmith_f_op_f32(-var_0.a))) * _wgslsmith_f_op_f32(abs(1634f))), Struct_3(func_2(vec2<u32>(_wgslsmith_clamp_u32(u_input.a, 30344u, var_0.b.a.b.x), func_2(vec2<u32>(u_input.a, var_0.b.a.b.x)).a.b.x)).a), !(!arg_0.a || !var_0.b.a.a) || (-2147483647i != (i32(-1i) * -var_1)));
    var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.a.c.x, -1583f))) * -123f) - _wgslsmith_f_op_f32(-var_0.b.a.c.x)), func_2(reverseBits(firstTrailingBit(~vec2<u32>(0u, var_0.b.a.b.x)))), var_0.c);
    return _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-440f, 557f)), _wgslsmith_f_op_f32(f32(-1f) * -661f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a.c.x) * var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(true, max(vec4<u32>(1u, u_input.a, u_input.d.x, 59104u), vec4<u32>(39177u, u_input.d.x, 21227u, u_input.d.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1351f, -1000f) - vec2<f32>(979f, -391f))))) - -687f), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(~11293i, _wgslsmith_dot_vec4_i32(vec4<i32>(-27832i, 3825i, 18719i, u_input.b), vec4<i32>(38737i, u_input.b, u_input.c.x, u_input.b))), -4469i), ~countOneBits(reverseBits(0i))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(714f, -307f, 381f, 192f) * vec4<f32>(-1307f, 2270f, 361f, 1431f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(707f, 1528f, 676f, 1000f), vec4<f32>(-854f, 3564f, 1080f, -1186f), false))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1347f, 258f, 284f, -754f)))))), ~abs(38032u));
}

