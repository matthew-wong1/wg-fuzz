struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: array<bool, 28>;

var<private> global2: u32 = 32494u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global0 = array<i32, 6>();
    let var_0 = vec2<u32>(~0u, _wgslsmith_add_u32(max(~(~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1588u, 24014u), ~vec3<u32>(23676u, 50983u, 3631u))), countOneBits(0u)));
    return var_0.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_2.b;
    var var_1 = Struct_2(Struct_1(min(firstLeadingBit(~vec2<u32>(4294967295u, 33332u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.c, 13748u), vec2<u32>(arg_2.a.x, 0u), vec2<u32>(4294967295u, arg_2.c))), !(arg_2.b & any(vec4<bool>(true, arg_1, true, true))), arg_3.c));
    return Struct_3(arg_0.x, Struct_2(var_1.a), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1441f, 1390f)) * -769f)), vec4<u32>(0u, 70940u, func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-479f, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, -587f, arg_0.x))), vec4<f32>(781f, 1010f, arg_0.x, -177f), !vec4<bool>(false, var_1.a.b, arg_1, arg_1)))), _wgslsmith_dot_vec3_u32(~vec3<u32>(18265u, 96296u, 1u), vec3<u32>(var_1.a.a.x, arg_2.c, arg_2.a.x)) & min(_wgslsmith_sub_u32(73954u, 64436u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.a.x, arg_2.a.x, var_1.a.c, 1u), vec4<u32>(0u, arg_3.a.x, 20917u, 4294967295u)))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_1(abs(max(_wgslsmith_mult_vec2_u32(~vec2<u32>(70254u, 59813u), vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u))), true, min(~(~(~5977u)), ~(~1u)));
    global1 = array<bool, 28>();
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(163f, -726f, -168f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1172f, 291f, -1536f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(528f, -1000f, 169f)))))), true, Struct_1(var_0.a, (true || any(vec2<bool>(global1[_wgslsmith_index_u32(var_0.c, 28u)], true))) | true, var_0.c), Struct_1(vec2<u32>(_wgslsmith_add_u32(var_0.c >> (79877u % 32u), ~28461u), _wgslsmith_mod_u32(var_0.a.x, var_0.a.x)), var_0.a.x == 0u, 5237u));
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    return Struct_2(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, -1206f, -1053f) + vec3<f32>(var_1.c, -310f, 297f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a, -1000f, -2161f))) - vec3<f32>(-1394f, var_1.a, -344f))), all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(var_0.c, 28u)], false), !vec4<bool>(global1[_wgslsmith_index_u32(var_1.b.a.c, 28u)], var_0.b, false, var_1.b.a.b), !vec4<bool>(var_1.b.a.b, true, global1[_wgslsmith_index_u32(1u, 28u)], false))), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, -336f, var_1.a)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, var_1.a, var_1.c)))), global1[_wgslsmith_index_u32(~var_0.c, 28u)], var_1.b.a, Struct_1(vec2<u32>(var_1.b.a.a.x, var_1.b.a.a.x), any(vec2<bool>(var_0.b, var_0.b)), var_0.a.x | 22305u)).b.a, var_0).b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    global0 = array<i32, 6>();
    global2 = 8419u;
    let var_1 = Struct_3(393f, Struct_2(Struct_1(~vec2<u32>(1u, 1u), true, abs(countOneBits(0u)))), _wgslsmith_f_op_f32(f32(-1f) * -111f), reverseBits(~(~vec4<u32>(12516u, 97892u, 4146u, 4294967295u))));
    let var_2 = func_1(vec3<i32>(~firstTrailingBit(-17574i), 13339i, ~(-u_input.a.x)));
    global2 = _wgslsmith_sub_u32(19982u, abs(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_1.d.zzw, var_1.d.zxx), ~5322u))) ^ ~0u;
    global1 = array<bool, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, var_1.c), vec2<f32>(var_1.a, 696f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, -1000f), vec2<f32>(-1395f, var_1.a), vec2<bool>(global1[_wgslsmith_index_u32(1u, 28u)], true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, -2639f) + vec2<f32>(var_1.a, 248f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -188f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(253f, -242f) - vec2<f32>(var_1.a, 686f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.c, -1169f)))))), ~(~_wgslsmith_sub_vec4_u32(var_1.d, countOneBits(var_1.d))), 12201i);
}

