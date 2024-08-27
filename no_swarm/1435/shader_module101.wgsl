struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec3<f32>(149f, -906f, -1498f), false), Struct_2(vec3<f32>(105f, 1104f, -227f), false), Struct_2(vec3<f32>(1690f, 1000f, -310f), false), Struct_2(vec3<f32>(805f, 1665f, 1771f), false), Struct_2(vec3<f32>(-536f, -174f, 639f), false), Struct_2(vec3<f32>(-1070f, -1000f, -131f), false), Struct_2(vec3<f32>(1000f, -1236f, 1108f), true), Struct_2(vec3<f32>(304f, -723f, -678f), false), Struct_2(vec3<f32>(2302f, 429f, -1139f), true), Struct_2(vec3<f32>(263f, 433f, -462f), true), Struct_2(vec3<f32>(-909f, 528f, -1318f), false));

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2, arg_3: u32) -> vec3<i32> {
    global1 = arg_1.b;
    var var_0 = _wgslsmith_f_op_f32(round(-630f));
    global0 = array<Struct_2, 11>();
    global1 = -32717i;
    var_0 = _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(floor(-1283f)));
    return vec3<i32>(48575i, firstLeadingBit(_wgslsmith_dot_vec4_i32(-(vec4<i32>(arg_0, arg_1.b, 1i, -201i) | vec4<i32>(arg_0, arg_0, arg_0, -1i)), abs(vec4<i32>(arg_0, 1i, arg_1.b, 2147483647i)) >> (~vec4<u32>(arg_3, 3811u, u_input.d.x, arg_3) % vec4<u32>(32u)))), _wgslsmith_div_i32(_wgslsmith_sub_i32(-firstLeadingBit(1i), -(u_input.c ^ -26386i)), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b, arg_1.b, 0i), vec3<i32>(-41775i, 6947i, -46177i)) | _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 6570i, arg_1.b), vec3<i32>(arg_1.b, 0i, -2147483647i)))));
}

fn func_2(arg_0: f32, arg_1: f32) -> vec4<bool> {
    global0 = array<Struct_2, 11>();
    global1 = _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(func_3(countOneBits(u_input.c), Struct_3(arg_0, -2147483647i, vec2<bool>(false, true)), Struct_2(vec3<f32>(-766f, arg_1, 528f), false), ~1u), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 17778i, 0i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.c, 39183i), vec3<i32>(-49860i, -2147483647i, u_input.b)))), firstTrailingBit(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 12542i, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -1i, u_input.c), vec3<i32>(u_input.b, u_input.c, u_input.c)))));
    return !(!vec4<bool>(any(vec4<bool>(true, false, false, false)), false, _wgslsmith_f_op_f32(exp2(arg_0)) > arg_1, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> vec2<u32> {
    global1 = u_input.c;
    let var_0 = !(!func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2543f + 274f))), 686f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(344f, _wgslsmith_f_op_f32(-359f + -333f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1185f + 1042f), 103f, true))) + _wgslsmith_f_op_f32(f32(-1f) * -1574f)));
    global1 = -41500i;
    var var_2 = u_input.c;
    return _wgslsmith_div_vec2_u32(~reverseBits(u_input.a.xx), ~((u_input.a.zz & u_input.a.zz) | _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 69908u), vec2<u32>(u_input.a.x, u_input.e))) >> (~(~u_input.a.yy << ((u_input.d.yx << (vec2<u32>(u_input.d.x, 79658u) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1i;
    let var_0 = firstLeadingBit(vec3<i32>(_wgslsmith_mult_i32(~1i, ~u_input.c >> (~1u % 32u)), (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 46463i), vec2<i32>(-29735i, u_input.c)) & -23923i) & 898i, 2147483647i | u_input.b));
    var var_1 = Struct_1(!vec4<bool>(select(true, all(vec4<bool>(false, false, true, true)), false), true, !(0i > u_input.c), false), ~vec2<u32>(0u, 54961u), !(true & all(vec4<bool>(true, true, true, true))), _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(9725u, u_input.d.x, u_input.e, 0u), vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.a.x)), u_input.d.x)));
    global0 = array<Struct_2, 11>();
    var var_2 = Struct_1(var_1.a, _wgslsmith_mod_vec2_u32(vec2<u32>(82704u, ~reverseBits(14265u)), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 18790u), func_1(vec3<bool>(var_1.a.x, true, var_1.a.x), var_1.c), vec2<u32>(u_input.e, u_input.e)), max(_wgslsmith_clamp_vec2_u32(u_input.a.yw, vec2<u32>(0u, 42262u), var_1.b), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, var_1.d), vec2<u32>(u_input.d.x, 44380u))))), var_1.b.x <= 1u, _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d, 0u, 54140u, var_1.d), u_input.d), countOneBits(var_1.b.x), var_1.b.x | 4294967295u), ((var_1.d >> (var_1.b.x % 32u)) >> (_wgslsmith_mod_u32(u_input.e, 4294967295u) % 32u)) ^ u_input.d.x));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1575f, -581f)))))), u_input.c, !(!var_2.a.xx));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_1(var_2.a.zxx, false).x, _wgslsmith_mult_u32(u_input.e, ~reverseBits(0u))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-3103f - var_3.a), -205f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-893f * var_3.a) + 1218f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-999f)), var_3.a)))), var_3.b | _wgslsmith_clamp_i32(23812i, abs(u_input.c), 0i), abs(var_1.d));
}

