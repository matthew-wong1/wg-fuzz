struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    var var_0 = ~abs(vec4<u32>(select(arg_1.a.x, ~66584u, arg_0.a.x), arg_1.d.x, _wgslsmith_dot_vec3_u32(max(arg_1.a, arg_1.a), vec3<u32>(0u, arg_1.a.x, 40494u)), abs(arg_1.e.x)));
    var_0 = vec4<u32>(abs(var_0.x) << (max(4294967295u, firstLeadingBit(84295u)) % 32u), ~8997u, var_0.x, select(firstLeadingBit(4294967295u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.x >> (4294967295u % 32u), min(arg_1.d.x, 8748u)), select(var_0.x, ~var_0.x, 4294967295u <= arg_1.d.x)), arg_0.a.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.c.x)));
    return _wgslsmith_sub_u32(arg_1.d.x, ~15032u);
}

fn func_2(arg_0: bool, arg_1: i32) -> u32 {
    let var_0 = vec3<bool>(!arg_0, arg_0, arg_0);
    let var_1 = Struct_3(vec4<bool>(var_0.x, true, !arg_0, !(!arg_0) || arg_0));
    var var_2 = vec4<i32>(u_input.a.x, u_input.a.x ^ arg_1, _wgslsmith_div_i32(-1i, u_input.a.x), ~(-1i));
    var var_3 = Struct_4(Struct_3(vec4<bool>(false, !(var_2.x >= var_2.x), true, var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1859f))), Struct_3(select(vec4<bool>(true, !var_1.a.x, true, true), select(vec4<bool>(var_0.x, false, var_1.a.x, arg_0), !var_1.a, any(vec3<bool>(var_1.a.x, var_0.x, arg_0))), var_1.a)), Struct_2(Struct_1(vec3<u32>(func_3(Struct_3(vec4<bool>(var_1.a.x, false, false, true)), Struct_1(vec3<u32>(35018u, 4294967295u, 26760u), 4294967295u, vec2<f32>(598f, -1212f), vec2<u32>(36688u, 20246u), vec2<u32>(4294967295u, 58770u))), 12635u, max(15255u, 4294967295u)), _wgslsmith_mult_u32(6908u, _wgslsmith_clamp_u32(4294967295u, 1u, 0u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 761f) * vec2<f32>(-109f, -821f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(698f, -278f)))), vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), abs(vec2<u32>(4294967295u, 25009u)))), Struct_1(_wgslsmith_mod_vec3_u32(min(vec3<u32>(1u, 110479u, 34128u), vec3<u32>(4294967295u, 1u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(31456u, 27127u, 0u), vec3<u32>(40509u, 27280u, 13075u), vec3<u32>(27356u, 25869u, 0u))), ~_wgslsmith_add_u32(1u, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(226f, 2078f), vec2<f32>(173f, 354f)))), vec2<u32>(1u, 1u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(10986u, 4294967295u), vec2<u32>(4294967295u, 3756u), vec2<u32>(51863u, 50651u))), Struct_1(firstLeadingBit(reverseBits(vec3<u32>(39073u, 0u, 17853u))), _wgslsmith_mod_u32(~49417u, abs(91719u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -742f), _wgslsmith_f_op_f32(1023f - -855f)), vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_sub_u32(4294967295u, 60098u), 1u)), Struct_1(vec3<u32>(countOneBits(1160u), ~25079u, 6729u >> (0u % 32u)), firstLeadingBit(0u >> (1u % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(371f, -1233f)), vec2<u32>(1u, 0u), abs(~vec2<u32>(4294967295u, 4294967295u)))));
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(556f, 988f)))))))));
    return var_3.d.c.d.x & ~(~(~(var_3.d.b.d.x >> (4294967295u % 32u))));
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    let var_0 = Struct_1(~firstTrailingBit(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(30980u, 4294967295u), vec2<u32>(4294967295u, 20303u)), func_2(true, u_input.a.x))), reverseBits(_wgslsmith_mult_u32(1u, abs(func_3(global0[_wgslsmith_index_u32(0u, 14u)], Struct_1(vec3<u32>(9005u, 79876u, 4294967295u), 30540u, vec2<f32>(-1697f, -1591f), vec2<u32>(1u, 20217u), vec2<u32>(34857u, 25968u)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-108f, -788f) * vec2<f32>(-1656f, -489f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(172f, -663f) - vec2<f32>(-1000f, 1000f))) + vec2<f32>(1337f, _wgslsmith_f_op_f32(f32(-1f) * -547f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1061f, -626f) - vec2<f32>(-137f, -227f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-669f, 2869f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-174f, 895f))), vec2<f32>(-2096f, -1000f), true))))), vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 26450u), vec2<u32>(23749u, 1u))), ~vec2<u32>(47703u, 1u), vec2<u32>(1u, ~84852u)), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, 0u), firstLeadingBit(vec2<u32>(1u, 1u)))));
    var var_1 = ~(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 15255u, 5035u, var_0.e.x), vec4<u32>(87604u, 27591u, 4294967295u, 0u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, var_0.d.x, var_0.b, var_0.b), vec4<u32>(var_0.e.x, var_0.a.x, 1u, var_0.b)) % vec4<u32>(32u)), vec4<u32>(var_0.d.x, ~var_0.a.x, 0u ^ var_0.d.x, ~var_0.b)) | (4294967295u << (reverseBits(var_0.e.x & 509u) % 32u)));
    return Struct_2(Struct_1(~vec3<u32>(var_0.e.x, var_0.e.x ^ var_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.a.x, var_0.d.x), var_0.a)), max(_wgslsmith_add_u32(4294967295u, var_0.d.x) ^ ~0u, 4294967295u), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.c.x, -210f)))), 1116f), _wgslsmith_sub_vec2_u32(vec2<u32>(51249u, 1u) >> ((var_0.a.xy ^ var_0.e) % vec2<u32>(32u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), var_0.e, vec2<u32>(var_0.a.x, 4294967295u))), var_0.a.zz), var_0, var_0, var_0);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4) -> vec2<u32> {
    global0 = array<Struct_3, 14>();
    var var_0 = Struct_1(vec3<u32>(~(~firstLeadingBit(0u)), countOneBits(1u), _wgslsmith_mult_u32(_wgslsmith_add_u32(~arg_1.d.d.a.x, 1u), ~1u)), func_3(arg_1.a, func_1().d), vec2<f32>(arg_1.d.d.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.d.d.c.x), _wgslsmith_f_op_f32(-136f + 1006f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(408f)) - -1060f))), arg_1.d.c.e, arg_1.d.a.d);
    var var_1 = !select(!arg_1.c.a.yxz, !(!arg_1.a.a.xyw), select(vec3<bool>(arg_1.c.a.x, true, arg_1.c.a.x), vec3<bool>(-43243i >= arg_0.x, arg_1.d.b.c.x > var_0.c.x, arg_1.c.a.x), any(vec2<bool>(arg_1.c.a.x, true))));
    let var_2 = Struct_2(func_1().b, Struct_1(var_0.a, arg_1.d.c.d.x & ~1u, vec2<f32>(_wgslsmith_f_op_f32(select(var_0.c.x, arg_1.d.d.c.x, true)), arg_1.d.c.c.x), ~abs(_wgslsmith_mod_vec2_u32(var_0.e, var_0.a.yx)), arg_1.d.a.e), func_1().d, func_1().d);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.a.c.x, arg_1.d.b.c.x, var_0.c.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.c.x, -839f, 1731f) - vec3<f32>(var_2.c.c.x, var_0.c.x, arg_1.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.d.c.x, 1112f, -467f) * vec3<f32>(arg_1.b, 224f, arg_1.d.b.c.x)))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c.x, _wgslsmith_f_op_f32(1443f * var_0.c.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(105f))))));
    return ~_wgslsmith_sub_vec2_u32(vec2<u32>(~(arg_1.d.c.b & var_2.d.e.x), ~arg_1.d.a.e.x), var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    var var_0 = Struct_2(Struct_1(vec3<u32>(firstTrailingBit(31844u), 4294967295u, ~0u), reverseBits(1u ^ firstTrailingBit(19757u)), vec2<f32>(-300f, 1f), func_4(-u_input.a.yzy, Struct_4(Struct_3(vec4<bool>(false, false, true, true)), _wgslsmith_f_op_f32(trunc(1978f)), Struct_3(vec4<bool>(true, false, false, false)), func_1())), vec2<u32>(firstTrailingBit(37578u), 1u)), Struct_1(reverseBits(vec3<u32>(1u, 1u, 1u)), ~0u, vec2<f32>(_wgslsmith_f_op_f32(-1863f * _wgslsmith_f_op_f32(round(1056f))), 920f), vec2<u32>(45318u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 20605u, 27333u, 90687u), vec4<u32>(1u, 18282u, 60089u, 0u)), 1u)), ~vec2<u32>(1u, 1u)), Struct_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 1u, 35313u), ~vec3<u32>(4294967295u, 7573u, 0u), vec3<u32>(1u, 1u, 1u)) << (~(~vec3<u32>(17229u, 36021u, 41670u)) % vec3<u32>(32u)), 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-761f, -110f) + vec2<f32>(2651f, 241f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-411f, -1000f) + vec2<f32>(1000f, -817f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(774f, 318f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(130f, -1312f)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))))), ~vec2<u32>(1u, 1u), vec2<u32>(~(~59355u), abs(abs(0u)))), Struct_1(~(~vec3<u32>(1u, 1u, 1u)), 35969u, vec2<f32>(func_1().b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(693f - 117f))), min(select(~vec2<u32>(67219u, 1261u), firstLeadingBit(vec2<u32>(1u, 1u)), u_input.a.x > u_input.a.x), vec2<u32>(12348u, 1u)), vec2<u32>(1u, 1u)));
    var var_1 = u_input.a.x < -(~5550i);
    var var_2 = vec2<u32>(var_0.d.b, firstTrailingBit(~1u));
    var var_3 = ~abs(-4643i);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a.wz), abs(vec3<i32>(u_input.a.x & -u_input.a.x, _wgslsmith_mod_i32(u_input.a.x | -24786i, u_input.a.x), -_wgslsmith_div_i32(u_input.a.x, u_input.a.x))));
}

