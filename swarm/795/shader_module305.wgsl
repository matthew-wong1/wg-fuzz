struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1257f;

var<private> global1: f32 = 508f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<u32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-630f + -881f))) + -992f);
    var var_0 = (-_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(1i, -13447i, u_input.b)), reverseBits(vec3<i32>(-31430i, -1i, u_input.b))) & _wgslsmith_mod_i32(28398i, 1i)) ^ -2147483647i;
    global1 = -930f;
    global1 = _wgslsmith_f_op_f32(-1000f + -223f);
    global0 = -406f;
    return vec3<u32>((_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a.x, 36944u), u_input.a) >> (1u % 32u)) | u_input.a.x, _wgslsmith_dot_vec2_u32(~u_input.a.xx, u_input.a.xz), _wgslsmith_dot_vec4_u32(max(vec4<u32>(firstTrailingBit(u_input.a.x), u_input.a.x, 1u, 4653u), vec4<u32>(_wgslsmith_mod_u32(0u, u_input.a.x), ~u_input.a.x, ~1u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x))), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 64359u, 25512u)) >> (~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 36875u) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_4 {
    let var_0 = arg_0.x;
    var var_1 = vec2<i32>(_wgslsmith_mod_i32(~u_input.b, arg_1.b), arg_1.b);
    let var_2 = Struct_1(func_3(), arg_1.a.b);
    let var_3 = (u_input.a.x & arg_1.a.a.x) >> (80816u % 32u);
    global1 = _wgslsmith_f_op_f32(sign(-353f));
    return Struct_4(true, 32579u);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = func_2(vec3<bool>(true, true, true), arg_1, arg_0.xx);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a.b.x, arg_0.x, 423f, arg_0.x))), vec4<f32>(-1404f, arg_0.x, -1173f, -1258f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(260f, arg_1.a.b.x, arg_1.a.b.x, arg_0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 948f, arg_1.a.b.x, arg_1.a.b.x))))));
    let var_2 = arg_1.a.b.x;
    var_0 = Struct_4(!((any(vec4<bool>(var_0.a, var_0.a, var_0.a, false)) & true) != var_0.a), ~arg_1.a.a.x);
    var var_3 = Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(~var_0.b, arg_1.a.a.x, ~0u)), vec3<f32>(-820f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-arg_0.x))));
    return Struct_1(var_3.a.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -480f) + _wgslsmith_f_op_f32(step(-609f, 756f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-698f, -568f) * _wgslsmith_f_op_f32(-arg_1.a.b.x))), arg_1.a.b.x, 1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(313f, _wgslsmith_f_op_f32(sign(-582f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(430f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1000f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1700f - -1300f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-156f - -1448f)));
    let var_1 = Struct_4(false, max(50862u, _wgslsmith_mult_u32(_wgslsmith_add_u32(90879u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), (78161u | u_input.a.x) << (1u % 32u))));
    var var_2 = func_1(var_0, Struct_3(Struct_1(~u_input.a, var_0), u_input.b << (4294967295u % 32u)));
    var_2 = Struct_1(func_3(), var_0);
    var var_3 = Struct_3(func_1(_wgslsmith_f_op_vec3_f32(-var_2.b), Struct_3(func_1(vec3<f32>(-510f, var_2.b.x, -245f), Struct_3(Struct_1(vec3<u32>(u_input.a.x, 0u, var_2.a.x), vec3<f32>(var_0.x, var_2.b.x, -1429f)), 2147483647i)), countOneBits(_wgslsmith_sub_i32(u_input.b, -8568i)))), 41757i);
    var var_4 = !var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(38763i, var_3.a.a.x, abs(-min(vec2<i32>(u_input.b, -2147483647i), ~vec2<i32>(-2147483647i, -2147483647i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(696f, _wgslsmith_f_op_f32(-var_3.a.b.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_2.b.x, -477f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, -434f, var_3.a.b.x, 199f), vec4<f32>(var_2.b.x, var_2.b.x, -416f, var_3.a.b.x))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(712f * -1554f)), var_3.a.b.x, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(floor(var_3.a.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_2.b.x)))))));
}

