struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 32>;

var<private> global2: array<Struct_2, 4>;

var<private> global3: f32 = 331f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: u32) -> f32 {
    var var_0 = Struct_3(true);
    global2 = array<Struct_2, 4>();
    let var_1 = Struct_1(465f, var_0.a, vec4<i32>(1i, _wgslsmith_add_i32(~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, -2147483647i, -1i), vec4<i32>(-2147483647i, 1i, 60420i, -7416i)) >> (11791u % 32u)), (firstTrailingBit(24368i) << (arg_3 % 32u)) >> (~arg_1.x % 32u), -2147483647i), ~(-54947i));
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_div_f32(var_1.a, var_1.a)))) + 331f), var_1.a);
    global3 = -882f;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a, var_1.a)))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_2) -> i32 {
    global3 = arg_1.x;
    let var_0 = (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], u_input.a.x)), ~vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(46412u, 32u)], 82271u)), 32u)] | global1[_wgslsmith_index_u32(max(_wgslsmith_add_u32(abs(0u), ~36480u), 3331u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(10158u, 46888u, 1u, 52430u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 32u)], 1u, 109688u, 20058u))), 32u)]) | ~(~0u << ((u_input.a.x ^ (arg_3.a.x & u_input.a.x)) % 32u));
    var var_1 = Struct_1(-2347f, true, -vec4<i32>(1i, 1i, 1i, 1i), countOneBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(-11287i, 2147483647i), vec2<i32>(_wgslsmith_mult_i32(-47465i, 1i), 1i))));
    var var_2 = firstTrailingBit(max(1u, arg_3.a.x));
    return var_1.d;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> vec2<i32> {
    let var_0 = !select(vec2<bool>(arg_2.b, all(vec2<bool>(true, true))), select(!select(vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(false, arg_2.b), arg_2.b), !vec2<bool>(arg_2.b, arg_2.b), select(vec2<bool>(arg_2.b, arg_2.b), select(vec2<bool>(arg_2.b, false), vec2<bool>(arg_2.b, arg_2.b), false), arg_2.b || arg_2.b)), all(vec2<bool>(true, true)));
    let var_1 = arg_1.xw;
    var var_2 = vec3<bool>(abs(34478i) <= -select(26046i, abs(arg_3), any(var_0)), all(vec3<bool>(!(var_0.x | var_0.x), !any(vec3<bool>(true, var_0.x, var_0.x)), any(!vec4<bool>(true, false, arg_2.b, false)))), (var_0.x & any(vec2<bool>(var_0.x, false))) & select(true, any(select(var_0, vec2<bool>(true, false), vec2<bool>(arg_2.b, false))), true));
    var var_3 = _wgslsmith_div_i32(abs(arg_1.x), arg_1.x);
    var var_4 = Struct_3(var_0.x);
    return firstTrailingBit(firstLeadingBit(select(vec2<i32>(-728i, arg_3), -var_1, var_2.yx) ^ firstLeadingBit(-arg_2.c.xy)));
}

fn func_1() -> bool {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-182f * -1408f))) - _wgslsmith_f_op_f32(floor(-1022f)));
    global0 = 4294967295u;
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(425f - 358f), _wgslsmith_f_op_f32(147f * 1778f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-714f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -737f), _wgslsmith_f_op_f32(f32(-1f) * -1080f), global1[_wgslsmith_index_u32(7740u, 32u)] == 4294967295u)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-2797f)), 1423f))), 566f)));
    global2 = array<Struct_2, 4>();
    var var_1 = func_4(vec4<f32>(413f, _wgslsmith_f_op_f32(func_2(u_input.a.x, u_input.a.zz, vec3<bool>(false, true, any(vec3<bool>(false, true, false))), 55744u)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-938f, _wgslsmith_f_op_f32(-var_0.x))))), vec4<i32>(max(1i, abs(abs(296i))), 3975i, 66188i, max(func_3(vec3<bool>(true, false, true), vec3<f32>(757f, 1290f, var_0.x), -772f, Struct_2(vec4<u32>(global1[_wgslsmith_index_u32(21477u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], 0u, 15823u))), 0i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -684f)), true || (503f <= _wgslsmith_f_op_f32(ceil(var_0.x))), abs(-vec4<i32>(0i, 0i, -2147483647i, 2147483647i) & firstTrailingBit(vec4<i32>(-1524i, 49205i, -1i, 0i))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -13667i, 2147483647i), vec3<i32>(1i, 0i, -47261i)), 70363i)), 1i << (max(~global1[_wgslsmith_index_u32(~u_input.a.x, 32u)], ~u_input.a.x >> (_wgslsmith_div_u32(28265u, global1[_wgslsmith_index_u32(34831u, 32u)]) % 32u)) % 32u));
    return true;
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = countOneBits(vec3<i32>(arg_2 >> (0u % 32u), _wgslsmith_add_i32(arg_2, arg_1 & 15551i), max(arg_1, ~0i))) << (u_input.a % vec3<u32>(32u));
    var var_1 = Struct_1(441f, arg_0.a, vec4<i32>(~arg_2 << (firstTrailingBit(u_input.a.x) % 32u), -arg_2, var_0.x, -arg_2 >> (_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x) % 32u)) ^ (vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -1i, 0i, 2147483647i), vec4<i32>(var_0.x, arg_1, -12170i, var_0.x), vec4<i32>(8525i, -1i, 1i, -48053i))), _wgslsmith_sub_i32(arg_1, arg_1));
    let var_2 = u_input.a.x;
    let var_3 = arg_0;
    global2 = array<Struct_2, 4>();
    return global2[_wgslsmith_index_u32(~(~4294967295u ^ firstTrailingBit(41264u)), 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 4>();
    global0 = ~global1[_wgslsmith_index_u32(~49344u, 32u)];
    global2 = array<Struct_2, 4>();
    var var_0 = Struct_2(~vec4<u32>(28829u, u_input.a.x, firstLeadingBit(max(u_input.a.x, 96224u)), u_input.a.x));
    global2 = array<Struct_2, 4>();
    var_0 = func_5(Struct_3(select(select(true, any(vec3<bool>(false, false, true)), any(vec4<bool>(false, true, false, false))), ~var_0.a.x == u_input.a.x, func_1())), 0i, 1i, Struct_3(all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true))));
    var var_1 = Struct_2(select(_wgslsmith_mult_vec4_u32(~func_5(Struct_3(false), -2147483647i, 1i, Struct_3(true)).a, var_0.a << (max(var_0.a, var_0.a) % vec4<u32>(32u))), ~reverseBits(vec4<u32>(29710u, 27772u, global1[_wgslsmith_index_u32(1u, 32u)], 0u)), vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(0i, -_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, 7246i, -34172i), vec4<i32>(-2348i, 48819i, -32552i, 12767i), vec4<i32>(-27325i, 0i, 2147483647i, 42969i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(0i, -19680i, 46222i, -50077i), vec4<i32>(21847i, 21472i, 1i, -1i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-56363i, -57648i, 22568i, -32055i), vec4<i32>(1i, 2147483647i, -1i, 1i)), vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(2147483647i, -2147483647i, -26650i, 1i)), ~(vec4<i32>(53600i, 542i, 1i, -1i) >> (var_1.a % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1398f * -575f))))));
}

