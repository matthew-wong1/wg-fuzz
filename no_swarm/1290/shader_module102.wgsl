struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(1u, false, true, vec4<f32>(1870f, -1628f, -326f, 166f)), Struct_1(4294967295u, true, false, vec4<f32>(163f, -263f, -836f, 1507f)), Struct_1(1u, false, true, vec4<f32>(307f, -636f, 312f, -1276f)), Struct_1(1u, true, true, vec4<f32>(603f, -2411f, 1000f, -166f)), Struct_1(26468u, false, true, vec4<f32>(1610f, 125f, -651f, 2575f)), Struct_1(4294967295u, false, true, vec4<f32>(-903f, -1182f, 118f, -542f)), Struct_1(5823u, false, true, vec4<f32>(1159f, -1670f, 134f, 1628f)), Struct_1(26493u, true, false, vec4<f32>(1357f, -189f, -273f, -2919f)), Struct_1(13171u, false, false, vec4<f32>(306f, -245f, -1276f, -484f)), Struct_1(79456u, true, true, vec4<f32>(-1152f, 565f, 720f, -529f)), Struct_1(0u, true, true, vec4<f32>(-871f, -277f, -1159f, 222f)), Struct_1(4294967295u, true, true, vec4<f32>(-158f, 119f, -752f, -536f)), Struct_1(4294967295u, false, false, vec4<f32>(-2328f, -1070f, -173f, -579f)), Struct_1(4294967295u, false, false, vec4<f32>(-533f, 1037f, 683f, -565f)), Struct_1(5489u, true, true, vec4<f32>(667f, -1000f, 111f, 338f)), Struct_1(53659u, true, false, vec4<f32>(1000f, -514f, 2648f, 407f)), Struct_1(7182u, false, true, vec4<f32>(-170f, -1101f, 928f, 306f)), Struct_1(4294967295u, true, true, vec4<f32>(-177f, 858f, 274f, -1000f)), Struct_1(1u, false, true, vec4<f32>(331f, 999f, -1055f, 1669f)));

var<private> global1: bool = true;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(126f, -1132f) + vec2<f32>(-1024f, -812f))))))));
    let var_1 = all(!vec4<bool>(true, !all(vec2<bool>(false, true)), any(vec2<bool>(false, false)), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)))));
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, _wgslsmith_add_u32(u_input.a, abs(~4294967295u))), 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -289f)), 1194f))), u_input.c);
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    return select(!vec2<bool>(any(select(vec2<bool>(var_2.a.b, true), vec2<bool>(true, var_1), var_1)), var_1), select(!select(select(vec2<bool>(var_2.a.b, true), vec2<bool>(false, false), var_2.a.b), select(vec2<bool>(var_1, false), vec2<bool>(var_1, var_2.a.c), false), true), !vec2<bool>(select(var_2.a.c, var_1, var_2.a.c), all(vec4<bool>(false, var_2.a.c, true, true))), var_2.a.b), vec2<bool>(!all(!vec4<bool>(true, true, true, var_2.a.c)), !var_2.a.b));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = Struct_1(~arg_0, all(select(vec4<bool>(u_input.e != arg_0, false, 4294967295u < u_input.c.x, all(vec4<bool>(false, false, true, false))), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), any(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1026f, 229f, 538f, 136f) * vec4<f32>(111f, 368f, -446f, -637f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1232f, -554f, _wgslsmith_f_op_f32(ceil(-817f)), -1000f))));
    let var_1 = u_input.b.yz;
    var var_2 = true;
    let var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(28434u, 0u), 0u, u_input.a, 42276u), _wgslsmith_sub_vec4_u32(~vec4<u32>(15648u, arg_0, 0u, 1u), vec4<u32>(4294967295u, 4294967295u, arg_0, u_input.a) | vec4<u32>(arg_0, arg_0, 1u, 4294967295u))), all(select(func_3(), select(vec2<bool>(true, false), vec2<bool>(false, false), var_0.c), true && var_0.b)), !(!var_0.b), _wgslsmith_f_op_vec4_f32(-var_0.d)), Struct_1(_wgslsmith_add_u32(var_0.a, reverseBits(var_0.a)), true || var_0.b, !(u_input.b.x > -u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.d.x)), -1345f), _wgslsmith_f_op_f32(-990f - _wgslsmith_f_op_f32(max(-408f, 1246f))), var_0.d.x)), all(select(select(select(vec4<bool>(var_0.c, var_0.c, var_0.c, true), vec4<bool>(var_0.c, true, var_0.b, var_0.b), var_0.c), vec4<bool>(false, true, var_0.c, false), var_0.c), vec4<bool>(true, var_0.c, all(vec3<bool>(var_0.c, true, var_0.b)), var_0.c || var_0.c), var_0.b)), var_0, global0[_wgslsmith_index_u32(arg_0, 19u)]);
    let var_4 = vec4<i32>(~(-firstLeadingBit(u_input.b.x)), _wgslsmith_clamp_i32((u_input.b.x | _wgslsmith_dot_vec2_i32(var_1, vec2<i32>(61461i, u_input.b.x))) ^ _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), reverseBits(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.b.xy), -var_1)), 2147483647i), 2147483647i, -2147483647i);
    return var_0.a;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec3<u32>) -> u32 {
    var var_0 = vec4<u32>(arg_3.x, arg_3.x, _wgslsmith_clamp_u32(~arg_3.x, max(arg_3.x, 117619u) ^ ~4294967295u, _wgslsmith_mult_u32(func_2(arg_1.d.a), u_input.c.x)), arg_3.x) ^ ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(10954u, arg_1.e.a, 1u, 4294967295u), firstTrailingBit(vec4<u32>(u_input.e, 0u, u_input.a, u_input.c.x))));
    let var_1 = vec3<i32>(~(-2147483647i), abs(_wgslsmith_clamp_i32(min(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, -2147483647i), -2147483647i), u_input.b.x, u_input.b.x)), u_input.b.x);
    global1 = true;
    let var_2 = Struct_3(arg_1.d, -515f, arg_3);
    var var_3 = Struct_2(Struct_1(arg_3.x, true, any(vec3<bool>(arg_1.e.d.x == -923f, !var_2.a.b, !arg_1.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(477f)), arg_0, _wgslsmith_div_f32(-2483f, var_2.b), _wgslsmith_div_f32(arg_1.b.d.x, 735f)))), Struct_1(14221u, false, any(!vec4<bool>(false, true, false, var_2.a.c)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1378f * arg_1.e.d.x))), -1353f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-828f * arg_1.b.d.x) + _wgslsmith_f_op_f32(-var_2.b)), -123f)), arg_1.e.b, arg_1.b, global0[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(11266u, 16351u), 0u, false) >> (33524u % 32u), 19u)]);
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(u_input.b.x >= 0i, true && !all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), u_input.e >= 67739u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-772f))))))) - _wgslsmith_f_op_f32(-485f - -393f));
    let var_2 = firstTrailingBit(vec3<i32>(-1i, -1048i, firstLeadingBit(-1i)));
    var var_3 = _wgslsmith_add_vec3_u32(u_input.c, u_input.c);
    var var_4 = _wgslsmith_div_i32(-(var_2.x << (min(func_1(1166f, Struct_2(global0[_wgslsmith_index_u32(var_3.x, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], true, Struct_1(1u, false, true, vec4<f32>(-1771f, 150f, -1247f, -774f)), global0[_wgslsmith_index_u32(u_input.e, 19u)]), vec3<i32>(var_2.x, var_2.x, 1i), vec3<u32>(var_3.x, u_input.a, 100015u)), _wgslsmith_div_u32(1u, 4294967295u)) % 32u)), abs(var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, 111f, var_2, var_2);
}

