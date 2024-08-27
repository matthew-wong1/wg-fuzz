struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -271f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<u32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f) * 647f);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1842f);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1883f)) + _wgslsmith_f_op_f32(314f - -680f))))) * -769f);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1025f) + _wgslsmith_f_op_f32(-var_0)) - _wgslsmith_f_op_f32(-var_0));
    global0 = var_0;
    return _wgslsmith_sub_vec3_u32(vec3<u32>(41702u, 1u, u_input.c) & ~vec3<u32>(u_input.c, 1u, firstTrailingBit(4294967295u)), ~(~abs(reverseBits(vec3<u32>(26731u, 46740u, u_input.c)))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_add_vec3_u32(~func_3(), vec3<u32>(abs(1u), _wgslsmith_div_u32(u_input.c, u_input.c), ~4294967295u)) << (abs(func_3()) % vec3<u32>(32u)));
    var_0 = Struct_1(~(~var_0.a));
    var var_1 = Struct_2(vec4<u32>(countOneBits(_wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c) & ~51477u), func_3().x, ~1u, _wgslsmith_clamp_u32(~var_0.a.x, 1u, var_0.a.x)), Struct_1(var_0.a));
    let var_2 = Struct_1(_wgslsmith_mod_vec3_u32(max(vec3<u32>(select(var_0.a.x, 1u, false), ~u_input.c, ~var_1.b.a.x), select(vec3<u32>(1u, u_input.c, 13915u), vec3<u32>(var_0.a.x, 5032u, var_1.b.a.x) | var_0.a, vec3<bool>(false, false, true))), ~(~max(var_0.a, var_1.b.a))));
    var var_3 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(abs(var_0.a.x), u_input.c) | countOneBits(_wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(var_0.a.x, 4294967295u, var_0.a.x))), _wgslsmith_add_u32(_wgslsmith_div_u32(select(7506u, var_2.a.x, true), var_1.b.a.x | var_2.a.x), _wgslsmith_dot_vec4_u32(var_1.a, _wgslsmith_mult_vec4_u32(vec4<u32>(12418u, var_2.a.x, var_1.a.x, 1u), vec4<u32>(14007u, 4294967295u, u_input.c, var_2.a.x)))), abs(~u_input.c) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, 0u), vec3<u32>(1u, 42718u, var_2.a.x)) % 32u)));
    return var_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: i32) -> u32 {
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-903f * 1107f), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))));
    let var_0 = Struct_2(arg_1, Struct_1(vec3<u32>(_wgslsmith_div_u32(24620u, ~arg_1.x), _wgslsmith_mult_u32(25687u, 1u) << (_wgslsmith_div_u32(arg_1.x, arg_2.a.x) % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.x, arg_1.x), vec2<u32>(arg_1.x, 4294967295u)), ~u_input.c))));
    var var_1 = arg_2;
    var var_2 = Struct_2(var_0.a, func_2());
    let var_3 = var_2.b;
    return abs(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(_wgslsmith_add_u32(47853u, ~(u_input.c << (u_input.c % 32u)) >> (_wgslsmith_div_u32(~u_input.c, u_input.c) % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.c, 16571u), ~u_input.c, ~u_input.c, u_input.c), vec4<u32>(u_input.c, _wgslsmith_add_u32(4294967295u, u_input.c), func_1(vec4<f32>(-448f, -984f, -638f, -1781f), vec4<u32>(21060u, 33463u, u_input.c, u_input.c), Struct_1(vec3<u32>(u_input.c, 1u, 27585u)), u_input.b.x), u_input.c)));
    let var_1 = true;
    let var_2 = ~(~(vec4<u32>(_wgslsmith_mult_u32(7015u, 0u), var_0, 4294967295u, ~var_0) >> (abs(vec4<u32>(49381u, u_input.c, 20581u, 26244u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstLeadingBit(~(-3416i)), _wgslsmith_add_i32(-4510i, select(u_input.a, 53070i, var_1)), u_input.a, u_input.a) & _wgslsmith_mult_vec4_i32(~firstTrailingBit(vec4<i32>(-24595i, u_input.b.x, u_input.b.x, u_input.a)), -min(vec4<i32>(3752i, u_input.b.x, 7701i, u_input.a), vec4<i32>(-1i, -3832i, u_input.a, 0i))), 16569i);
}

