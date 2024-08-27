struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(-349f, 17579i, Struct_2(Struct_1(48155u), Struct_1(0u))), Struct_3(-1601f, 2147483647i, Struct_2(Struct_1(1u), Struct_1(44676u))), Struct_3(313f, 6255i, Struct_2(Struct_1(67005u), Struct_1(1u))), Struct_3(334f, 2147483647i, Struct_2(Struct_1(4294967295u), Struct_1(46211u))), Struct_3(130f, -13274i, Struct_2(Struct_1(126445u), Struct_1(4864u))), Struct_3(2393f, 36217i, Struct_2(Struct_1(76878u), Struct_1(44259u))), Struct_3(927f, -41943i, Struct_2(Struct_1(4294967295u), Struct_1(4184u))), Struct_3(-893f, -52057i, Struct_2(Struct_1(0u), Struct_1(0u))), Struct_3(-140f, 2147483647i, Struct_2(Struct_1(73397u), Struct_1(1u))), Struct_3(1743f, 16406i, Struct_2(Struct_1(8199u), Struct_1(6867u))), Struct_3(620f, 0i, Struct_2(Struct_1(22924u), Struct_1(8381u))), Struct_3(-787f, -77065i, Struct_2(Struct_1(54636u), Struct_1(1u))), Struct_3(-967f, -1i, Struct_2(Struct_1(10087u), Struct_1(21237u))));

var<private> global1: Struct_3 = Struct_3(-213f, -27560i, Struct_2(Struct_1(25971u), Struct_1(4294967295u)));

var<private> global2: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    let var_0 = ~_wgslsmith_div_u32(4294967295u, 813u);
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.a * arg_1.a), _wgslsmith_f_op_f32(-arg_1.a))))), u_input.b.x, arg_1.c), max(~_wgslsmith_div_vec3_u32(u_input.a, u_input.a >> (vec3<u32>(global1.c.a.a, global1.c.a.a, u_input.a.x) % vec3<u32>(32u))), u_input.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a, -934f)))), _wgslsmith_f_op_f32(floor(arg_1.a))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(263f, var_1.a.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a, global1.a)))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(354f, 874f)), 1018f, !arg_0.x)), 382f)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -438f), -55046i ^ min(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, 66265i), abs(vec3<i32>(9596i, arg_1.b, global1.b)))), var_1.a.c);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-248f, 1554f, -705f, 897f) + vec4<f32>(var_2.x, arg_1.a, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, var_1.a.a, -421f, var_2.x)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a, var_3.a, 248f, 1187f))), arg_0.x))));
    return arg_0.x;
}

fn func_2(arg_0: bool) -> f32 {
    global0 = array<Struct_3, 13>();
    let var_0 = select(!vec3<bool>(false, arg_0, true), select(vec3<bool>(!any(vec2<bool>(arg_0, false)), false, func_3(!vec2<bool>(true, arg_0), Struct_3(-227f, global1.b, global1.c), global1.c.a)), select(vec3<bool>(!arg_0, any(vec3<bool>(false, false, false)), any(vec2<bool>(arg_0, true))), select(vec3<bool>(true, arg_0, false), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, true, arg_0), false), !vec3<bool>(false, true, arg_0)), arg_0), !select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_0), vec3<bool>(false, false, arg_0), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, true), vec3<bool>(false, false, false)))), arg_0);
    var var_1 = global1.c.a;
    var var_2 = vec2<bool>(false, !all(var_0.zz));
    return 651f;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: bool) -> Struct_4 {
    global2 = global1.a;
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(929f, global1.a))) - vec2<f32>(global1.a, global1.a)))), vec2<f32>(_wgslsmith_f_op_f32(func_2(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.a)) - 1000f))))));
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(0u), ~firstLeadingBit(select(11825u, 40208u, arg_1))), 13u)], abs(select(vec3<u32>(4294967295u, u_input.a.x, global1.c.b.a), _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(global1.c.b.a, u_input.a.x, 0u)), 4294967295u < global1.c.a.a) ^ u_input.a));
    let var_2 = abs(reverseBits(~(~(~vec4<u32>(0u, var_1.a.c.a.a, 32062u, 14347u)))));
    var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(848f, -838f) * vec2<f32>(220f, 1166f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.a.a, var_1.a.a)))), vec2<f32>(_wgslsmith_f_op_f32(1320f * global1.a), -2126f))))));
    return Struct_4(Struct_3(-657f, ~u_input.c, global1.c), max(vec3<u32>(_wgslsmith_dot_vec4_u32(var_2, vec4<u32>(4294967295u, var_1.a.c.a.a, var_2.x, 49275u)), _wgslsmith_clamp_u32(var_2.x, ~var_1.a.c.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, 0u, 18520u, 1u), var_2)), 0u), vec3<u32>(~var_2.x, 1u, 0u)));
}

fn func_4(arg_0: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2686f, _wgslsmith_f_op_f32(round(1122f))), vec2<f32>(_wgslsmith_f_op_f32(func_2(false)), arg_0.a.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(217f, global1.a), vec2<f32>(arg_0.a.a, 331f)))))))));
    let var_1 = Struct_1(1u);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-1298f)), _wgslsmith_f_op_f32(trunc(-1147f)), _wgslsmith_f_op_f32(floor(1000f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1212f, global1.a, global1.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, arg_0.a.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-371f, global1.a, -1208f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(167f * var_0.x))), var_0.x, 497f));
    global0 = array<Struct_3, 13>();
    global1 = global0[_wgslsmith_index_u32(~min(global1.c.b.a, (var_1.a << (~var_1.a % 32u)) | _wgslsmith_add_u32(35782u, min(var_1.a, 1u))), 13u)];
    return _wgslsmith_clamp_u32(firstLeadingBit(global1.c.b.a), 1u, _wgslsmith_sub_u32(var_1.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(129149u, arg_0.a.c.b.a, 82661u, u_input.a.x), vec4<u32>(arg_0.a.c.b.a, 4294967295u, 1u, global1.c.a.a)) | firstTrailingBit(vec4<u32>(9589u, 1u, 11201u, global1.c.b.a)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(89880u, 25222u, 4294967295u, 89062u)), vec4<u32>(var_1.a, var_1.a, var_1.a, var_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(_wgslsmith_div_i32(14755i, abs(11554i)) << (func_4(func_1(u_input.d, true, true)) % 32u));
    let var_1 = func_1(global1.b, true, false).a.c.a;
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x), ~var_1.a), 15062u);
    var var_3 = _wgslsmith_f_op_f32(select(-2148f, global1.a, true));
    let var_4 = any(!(!vec4<bool>(true, false, any(vec3<bool>(true, false, false)), any(vec3<bool>(false, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zy);
}

