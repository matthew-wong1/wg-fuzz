struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: array<bool, 22> = array<bool, 22>(true, false, false, true, true, false, false, true, true, true, true, false, false, true, true, true, true, true, false, true, true, false);

var<private> global2: i32;

var<private> global3: f32 = 1199f;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = arg_0.c << ((vec3<u32>(~(~33881u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.x, 38629u, 4285u, 0u) | vec4<u32>(arg_0.c.x, 1u, arg_0.c.x, arg_3.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, arg_2.c.x, arg_2.c.x), vec4<u32>(4294967295u, arg_2.c.x, 0u, arg_2.c.x))), countOneBits(arg_3.c.x) | min(78694u, arg_2.c.x)) | vec3<u32>(~0u, ~38275u, max(firstLeadingBit(arg_3.c.x), 1u))) % vec3<u32>(32u));
    var var_1 = Struct_4(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(59270u, 90351u, select(4294967295u, u_input.a, true), arg_2.c.x), min(~vec4<u32>(35830u, 0u, 8108u, 4216u), vec4<u32>(0u, 10312u, 18120u, arg_3.c.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.c.x, arg_3.c.x, arg_2.c.x), arg_0.c), 8329u, arg_0.c.x, arg_2.c.x))), arg_2.b.a, Struct_1(1i >= u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.c, 218f, 1269f, arg_2.b.c) + vec4<f32>(arg_0.a.x, arg_2.b.c, arg_0.a.x, arg_3.b.c)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -727f, 751f, -1004f), arg_0.b.b, vec4<bool>(true, true, arg_1.x, global0[_wgslsmith_index_u32(u_input.a, 20u)]))))), _wgslsmith_f_op_f32(step(-379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_3.b.b.x, arg_3.b.b.x)), _wgslsmith_f_op_f32(-arg_0.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x, 159f <= arg_2.a.x)))));
    var_1 = Struct_4(~countOneBits(var_1.a) << (var_1.a % vec4<u32>(32u)), true, Struct_1(!arg_1.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -1000f, arg_0.a.x, -1078f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(794f, arg_0.a.x, -749f, 3090f), arg_3.b.b)))))), _wgslsmith_f_op_f32(min(-220f, 691f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.b.c)))))));
    let var_2 = vec4<u32>(~(var_0.x | select(arg_3.c.x, arg_0.c.x, true)), countOneBits(~21963u), arg_0.c.x, reverseBits(var_1.a.x)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(19150u, arg_2.c.x, arg_0.c.x), vec3<u32>(1u, 0u, 4294967295u)) >> (~63431u % 32u), 8460u, ~u_input.a, 128966u), vec4<u32>(1u, abs(67483u), _wgslsmith_mult_u32(68374u >> (var_0.x % 32u), var_1.a.x), _wgslsmith_clamp_u32(firstLeadingBit(50694u), ~53920u, 0u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-977f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.c - arg_0.b.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-397f * arg_0.a.x), 1289f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(192f)), 1020f)))));
    return abs(vec4<u32>(arg_3.c.x, abs(firstLeadingBit(countOneBits(106136u))), 38025u, ~(~_wgslsmith_dot_vec4_u32(var_2, var_2))));
}

fn func_2() -> Struct_3 {
    global1 = array<bool, 22>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1333f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1863f)))));
    var var_1 = _wgslsmith_f_op_f32(sign(615f));
    var var_2 = ~12805i;
    var var_3 = Struct_4(_wgslsmith_mod_vec4_u32(~firstTrailingBit(func_3(Struct_2(vec4<f32>(var_0, var_0, 1328f, -424f), Struct_1(global1[_wgslsmith_index_u32(0u, 22u)], vec4<f32>(1865f, var_0, var_0, 697f), -776f), vec3<u32>(u_input.a, 4294967295u, 61895u)), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(u_input.a, 20u)], global1[_wgslsmith_index_u32(0u, 22u)]), Struct_2(vec4<f32>(var_0, -713f, var_0, 523f), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 20u)], vec4<f32>(610f, -1104f, 310f, var_0), var_0), vec3<u32>(u_input.a, u_input.a, u_input.a)), Struct_2(vec4<f32>(106f, var_0, var_0, 173f), Struct_1(false, vec4<f32>(-210f, 1000f, var_0, var_0), -1181f), vec3<u32>(u_input.a, 0u, 32228u)))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 0u, u_input.a), vec4<u32>(u_input.a, 97879u, 38294u, u_input.a)) << (~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))), firstLeadingBit(1i) < u_input.c, Struct_1(all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, var_0, var_0, var_0), vec4<f32>(var_0, -330f, var_0, -374f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, 198f, var_0, -664f))))), var_0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-712f * _wgslsmith_f_op_f32(f32(-1f) * -1218f)), _wgslsmith_f_op_f32(floor(-1493f)), u_input.c != _wgslsmith_sub_i32(-2147483647i, u_input.b))));
    return Struct_3(Struct_2(var_3.c.b, var_3.c, _wgslsmith_mod_vec3_u32(firstTrailingBit(max(vec3<u32>(1u, u_input.a, var_3.a.x), vec3<u32>(30111u, 1u, u_input.a))), firstTrailingBit(var_3.a.www >> (var_3.a.zxx % vec3<u32>(32u))))));
}

fn func_1() -> Struct_4 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-198f))), 1013f, -2147483647i != min(_wgslsmith_sub_i32(1860i, -25460i), -u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-431f, 564f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1124f, 163f), -974f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(198f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-854f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-481f, -436f)), _wgslsmith_f_op_f32(f32(-1f) * -268f)))))));
    global1 = array<bool, 22>();
    let var_1 = func_2();
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, countOneBits(var_1.a.c.x)), ~(~1183u)), max(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.c.x, 0u, 26472u), vec3<u32>(var_1.a.c.x, u_input.a, u_input.a)), _wgslsmith_mult_u32(var_1.a.c.x, 120790u))), var_1.a.c.yz >> ((var_1.a.c.xz ^ firstTrailingBit(var_1.a.c.yx & var_1.a.c.yz)) % vec2<u32>(32u)));
    global1 = array<bool, 22>();
    return Struct_4(vec4<u32>(29305u, ~(~reverseBits(4294967295u)), 24279u, 34907u), func_2().a.b.a, var_1.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(1041f - 969f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(265f, -110f)), var_1.a.b.b.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * 138f), _wgslsmith_f_op_f32(f32(-1f) * -1127f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = u_input.c;
    let var_2 = func_1();
    var var_3 = vec3<bool>(!((func_2().a.b.a & true) || var_0.c.a), !(!var_2.c.a), true);
    global3 = _wgslsmith_f_op_f32(round(var_2.c.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_sub_i32(var_1, -64345i)), -vec2<i32>(-2147483647i, 1i)), _wgslsmith_f_op_vec2_f32(-var_0.c.b.xx), var_0.a.x);
}

