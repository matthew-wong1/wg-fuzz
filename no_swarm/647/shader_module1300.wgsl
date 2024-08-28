struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
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

var<private> global0: array<Struct_2, 1>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 47073u, 4294967295u, 0u);

var<private> global2: i32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(max(_wgslsmith_add_vec4_u32(vec4<u32>(15902u, u_input.d, global1.x, 1u), vec4<u32>(28037u, u_input.b.x, u_input.b.x, u_input.d)), vec4<u32>(25225u, u_input.c.x, 20933u, u_input.c.x) & vec4<u32>(u_input.c.x, global1.x, 0u, global1.x)), firstLeadingBit(vec4<u32>(u_input.c.x, 4294967295u, 1u, global1.x) | vec4<u32>(26200u, 0u, u_input.b.x, global1.x))), select(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.c.x, 35172u, 4294967295u, global1.x)), countOneBits(vec4<u32>(global1.x, u_input.b.x, 4294967295u, u_input.d))), min(vec4<u32>(9816u, u_input.d, 0u, 0u) ^ vec4<u32>(17453u, global1.x, u_input.c.x, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(65037u, 13828u, u_input.c.x, 0u), vec4<u32>(global1.x, 1u, 11728u, 4294967295u), vec4<u32>(4294967295u, u_input.d, u_input.b.x, 5426u))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), true))) ^ vec4<u32>(_wgslsmith_div_u32((0u >> (u_input.c.x % 32u)) >> (global1.x % 32u), 34307u), ~u_input.d, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, global1.x, global1.x), global1.yxy, true), select(vec3<u32>(0u, u_input.b.x, 50203u), global1.wxx, vec3<bool>(true, false, false))), ~min(1u, global1.x));
    global2 = u_input.e.x;
    var var_1 = arg_0.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-254f + -1054f), _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(round(-980f)), arg_0.x))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(var_2.xy * _wgslsmith_f_op_vec2_f32(max(arg_0, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + arg_0.x) + _wgslsmith_f_op_f32(var_2.x * var_2.x)), _wgslsmith_f_op_f32(904f * 1f)))));
    return ~global1.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_sub_u32(~4294967295u, func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1796f, -1516f))))) | 58579u;
    global2 = u_input.a.x;
    var var_1 = u_input.c.x;
    var_1 = 2149u;
    let var_2 = Struct_2(Struct_1(!all(vec4<bool>(false, true, true, false)) || true, global1.x, ~(var_0 & min(4294967295u, 71006u))), Struct_1(true, _wgslsmith_div_u32(abs(arg_1), ~select(var_0, global1.x, true)), 4294967295u), select(u_input.b.x, 25201u, true));
    return 6270u;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> vec4<f32> {
    global0 = array<Struct_2, 1>();
    global1 = firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(abs(0u), max(u_input.c.x, u_input.d), _wgslsmith_mod_u32(global1.x, u_input.b.x), ~4294967295u), vec4<u32>(1u, ~max(u_input.b.x, global1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.x, 40710u, u_input.b.x), select(vec4<u32>(1u, 21399u, 39986u, 68767u), vec4<u32>(6592u, arg_0.x, u_input.c.x, arg_0.x), vec4<bool>(false, false, true, false))), _wgslsmith_dot_vec2_u32(arg_0.zx ^ vec2<u32>(arg_0.x, 37912u), u_input.b << (vec2<u32>(arg_0.x, global1.x) % vec2<u32>(32u))))));
    let var_0 = vec3<u32>(u_input.c.x, countOneBits(_wgslsmith_add_u32(0u, _wgslsmith_mod_u32(arg_0.x, 1u))), func_2(-_wgslsmith_add_vec2_i32(~vec2<i32>(75117i, 3821i), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.x, -1i), vec2<i32>(arg_1.x, u_input.a.x))), firstTrailingBit(4294967295u)));
    let var_1 = ~(-(~(~(~vec4<i32>(2147483647i, arg_1.x, 0i, u_input.e.x)))));
    let var_2 = Struct_1(true, ~(~reverseBits(0u)), arg_0.x ^ firstLeadingBit(~func_2(u_input.a, 1u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 614f, -480f, arg_2.x) - vec4<f32>(arg_2.x, -183f, -1449f, -139f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-946f, 581f, 1497f, arg_2.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(763f, -163f, -1000f, arg_2.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, 1686f, -729f, arg_2.x))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> StorageBuffer {
    global0 = array<Struct_2, 1>();
    let var_0 = vec4<bool>(2520f >= arg_0.x, all(vec2<bool>(false, true)), !all(vec3<bool>(true, u_input.a.x > 0i, all(vec4<bool>(true, true, false, false)))), true);
    let var_1 = !(!select(!select(vec3<bool>(var_0.x, false, var_0.x), var_0.yxz, vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(!var_0.x, select(false, var_0.x, var_0.x), true), vec3<bool>(!var_0.x, var_0.x, all(var_0.yx))));
    global1 = select(vec4<u32>(firstLeadingBit(34424u) & _wgslsmith_clamp_u32(~1u, func_2(arg_1, u_input.d), u_input.d & 4526u), global1.x, 0u, countOneBits(~(global1.x | 4294967295u))), vec4<u32>(_wgslsmith_sub_u32(~0u, 18461u), max(~1u, 44312u), 6238u, ~10811u), select(var_0, var_0, true));
    let var_2 = var_0.x;
    return StorageBuffer(vec3<i32>(-44191i, 1i, 1i) & (-(vec3<i32>(4718i, u_input.a.x, u_input.e.x) | vec3<i32>(arg_1.x, 0i, 9323i)) & ~vec3<i32>(arg_2.x, -20491i, -2983i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(reverseBits(~global1.xww), vec3<i32>(u_input.e.x, 1i, countOneBits(-14923i)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(783f, -653f, -1997f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-195f, 132f, -1132f)))))))), vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-70576i, u_input.e.x)), u_input.a)) >> (vec2<u32>(global1.x, 28508u) % vec2<u32>(32u)), ~u_input.e);
}

