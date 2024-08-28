struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(1284f, 794f, -1147f, 259f, -1269f, -718f, 1191f, 551f, 1047f, 1000f, 658f, -516f, -451f, 1493f, -388f, -437f, 674f, -177f, 1000f, 501f, -699f, -262f, 988f, -460f, -891f, 505f, 245f);

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<u32>(27130u, 1u, 4294967295u, 16220u)), Struct_1(vec4<u32>(4294967295u, 0u, 72737u, 73340u)), Struct_1(vec4<u32>(32647u, 4294967295u, 1u, 17997u)), Struct_1(vec4<u32>(4294967295u, 96152u, 1u, 14370u)), Struct_1(vec4<u32>(4294967295u, 17722u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(13613u, 0u, 0u, 69133u)), Struct_1(vec4<u32>(83460u, 38367u, 0u, 11061u)), Struct_1(vec4<u32>(1u, 4294967295u, 15958u, 71394u)), Struct_1(vec4<u32>(72367u, 4294967295u, 34869u, 0u)), Struct_1(vec4<u32>(27983u, 101981u, 1u, 0u)), Struct_1(vec4<u32>(36476u, 0u, 1u, 0u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(~(max(37079u >> (arg_2.a.x % 32u), ~_wgslsmith_sub_u32(u_input.e, arg_2.a.x)) ^ (_wgslsmith_dot_vec3_u32(arg_2.a.zww, vec3<u32>(u_input.c.x, arg_2.a.x, arg_1)) ^ firstTrailingBit(max(26806u, arg_1)))), 11u)];
    let var_1 = var_0.a.x;
    let var_2 = ~(~u_input.c);
    let var_3 = vec4<i32>(firstTrailingBit(_wgslsmith_sub_i32(u_input.d.x, reverseBits(u_input.d.x))), 78128i, 19173i, countOneBits(_wgslsmith_mod_i32(-51400i, -arg_0.x))) & -_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, -1i, -11272i, arg_0.x), ~select(vec4<i32>(u_input.d.x, 0i, -44260i, 2147483647i), vec4<i32>(arg_0.x, -42136i, 68079i, 2147483647i), true));
    global1 = array<Struct_1, 11>();
    return global0[_wgslsmith_index_u32(arg_2.a.x, 27u)];
}

fn func_2() -> Struct_1 {
    global0 = array<f32, 27>();
    global1 = array<Struct_1, 11>();
    global0 = array<f32, 27>();
    var var_0 = vec2<f32>(505f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e, 27u)] - global0[_wgslsmith_index_u32(u_input.e, 27u)]))), _wgslsmith_f_op_f32(2207f + _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), 1u ^ u_input.b, Struct_1(vec4<u32>(4203u, 35367u, 0u, u_input.b))))))));
    return Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~28048u, abs(0u), reverseBits(u_input.e), firstTrailingBit(0u)), u_input.c), ~_wgslsmith_mod_u32(min(0u, 1u), u_input.b), _wgslsmith_mod_u32(0u, 1u), abs(u_input.e)));
}

fn func_1() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(u_input.c.yww, firstTrailingBit(u_input.c.ywx)), select(59658u, u_input.e, all(vec4<bool>(true, true, true, true)))) & 4294967295u, 11u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(418f, -1914f))))) + vec2<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(37356u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], false)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(107898u, 27u)]))))));
    var var_2 = func_2();
    var var_3 = Struct_1(~_wgslsmith_div_vec4_u32(vec4<u32>(func_2().a.x, _wgslsmith_dot_vec4_u32(var_0.a, u_input.c), 4294967295u, var_2.a.x), var_2.a));
    var var_4 = min(~(((var_2.a.x << (4294967295u % 32u)) ^ ~1u) >> ((60882u << (~var_2.a.x % 32u)) % 32u)), firstTrailingBit(~func_2().a.x));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> Struct_1 {
    global1 = array<Struct_1, 11>();
    global1 = array<Struct_1, 11>();
    let var_0 = max(u_input.a.x, abs(u_input.a.x) ^ _wgslsmith_dot_vec4_i32(firstLeadingBit(reverseBits(vec4<i32>(u_input.a.x, 2147483647i, 0i, 20520i))), ~reverseBits(vec4<i32>(2948i, -20095i, -27709i, u_input.a.x))));
    var var_1 = func_1();
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_add_u32(1u, 61879u), u_input.c.x), select(~var_1.a.x, ~var_1.a.x, false), u_input.b, countOneBits(~(~arg_0.a.x))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.yww;
    var var_1 = Struct_1(_wgslsmith_mult_vec4_u32(u_input.c, _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(48345u, 5897u, var_0.x, u_input.b)), vec4<u32>(var_0.x, u_input.c.x, 738u, var_0.x)), ~vec4<u32>(u_input.c.x, 0u, 449u, var_0.x))));
    var var_2 = global1[_wgslsmith_index_u32(var_1.a.x, 11u)];
    let var_3 = ~vec3<i32>(-1559i, u_input.d.x, 1i);
    var var_4 = Struct_1(var_2.a);
    let var_5 = vec3<i32>(_wgslsmith_mod_i32(var_3.x, u_input.d.x), u_input.d.x, -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, var_3.x), min(var_3.yx, vec2<i32>(-41941i, u_input.a.x))), min(u_input.d.x, -1i)));
    var_4 = func_4(func_1(), select(func_1().a.x, var_1.a.x, true || !all(vec3<bool>(true, false, true))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(-54693i), ~(~var_1.a));
}

