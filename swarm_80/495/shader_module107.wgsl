struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, 21541i, 0i);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> i32 {
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(-arg_0.b.x, abs(2147483647i)), _wgslsmith_mod_i32(global0.x, -arg_0.b.x)), u_input.a), reverseBits(arg_2.b.x), global0.x);
    global0 = firstTrailingBit(_wgslsmith_sub_vec3_i32(firstLeadingBit(~vec3<i32>(-22772i, -2147483647i, 4080i)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(4796i, u_input.b, u_input.c), vec3<i32>(26698i, arg_0.b.x, -1i)), ~vec3<i32>(arg_0.b.x, -1i, 1i))) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_3, 3815u, arg_2.a.x), abs(arg_2.a) >> ((arg_2.a | vec3<u32>(1u, 128762u, arg_2.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_1 = -7958i;
    var_1 = arg_0.b.x;
    var_1 = -u_input.a;
    return arg_2.b.x;
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, select(84698u, 34591u, false), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4146u))), select(min(vec3<u32>(4294967295u, 534u, 1u), vec3<u32>(1u, 15083u, 15498u)), abs(vec3<u32>(1u, 0u, 1u)), vec3<bool>(true, true, true))), ~reverseBits(57158u)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(4087i, -45791i, 46676i, 1i) ^ ~vec4<i32>(u_input.a, -45000i, 55155i, u_input.c), vec4<i32>(~u_input.b, 1i, 34735i, ~28993i)), vec4<i32>(select(global0.x, -22396i, false), max(global0.x, 16848i), u_input.a, 2147483647i) >> (firstTrailingBit(vec4<u32>(17415u, 4294967295u, 37000u, 7695u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-905f, 243f, -945f) * vec3<f32>(-755f, -543f, -999f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-339f, -1594f, 1730f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(251f * -390f)), 375f, 231f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(2282f, _wgslsmith_f_op_f32(round(1000f))) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-341f * -434f), -1801f)), -744f)));
    global0 = vec3<i32>(~(-u_input.b), func_1(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * var_0.c.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d.x)))), Struct_1(var_0.a, var_0.b, vec3<f32>(-1323f, _wgslsmith_f_op_f32(-var_0.d.x), -328f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.d)))), var_0.a.x), -global0.x);
    let var_1 = -vec3<i32>(-2147483647i, abs(~(i32(-1i) * -10883i)), var_0.b.x);
    return vec4<i32>(-3206i, _wgslsmith_add_i32(~2147483647i, _wgslsmith_clamp_i32(func_1(Struct_1(var_0.a, vec4<i32>(1i, 2147483647i, 2147483647i, u_input.a), vec3<f32>(254f, 338f, var_0.c.x), vec2<f32>(-1551f, -593f)), var_0.c.x, var_0, _wgslsmith_mult_u32(var_0.a.x, var_0.a.x)), var_0.b.x, 1i >> (min(var_0.a.x, var_0.a.x) % 32u))), _wgslsmith_sub_i32(1i ^ _wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(0i, global0.x, u_input.c, var_0.b.x)), max(1i ^ var_0.b.x, u_input.c | 12096i)) << (var_0.a.x % 32u), firstTrailingBit(func_1(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), 2437f), Struct_1(vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x) << (var_0.a % vec3<u32>(32u)), vec4<i32>(1i, 51576i, -39700i, -2147483647i) >> (vec4<u32>(var_0.a.x, 4294967295u, 0u, var_0.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(step(var_0.c, vec3<f32>(-747f, -1034f, 1618f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, -728f))), ~(4294967295u << (var_0.a.x % 32u)))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec3<u32>(4294967295u, firstTrailingBit(1u), 11997u), ~min(-(~vec4<i32>(-50818i, global0.x, global0.x, 1i)), func_3()), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(336f, -833f, -573f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -652f), _wgslsmith_f_op_f32(f32(-1f) * -191f))));
    global0 = vec3<i32>(-func_1(Struct_1(var_0.a, vec4<i32>(-1i, 1i, 2147483647i, 1i), _wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(var_0.d.x, -1458f, var_0.d.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1671f, -621f))), var_0.c.x, Struct_1(vec3<u32>(var_0.a.x, 51977u, var_0.a.x) | vec3<u32>(11630u, var_0.a.x, var_0.a.x), vec4<i32>(global0.x, 1i, 1i, 1i), var_0.c, vec2<f32>(-934f, -1499f)), ~countOneBits(4294967295u)), ~global0.x, 1i);
    let var_1 = Struct_1(select(~countOneBits(vec3<u32>(58038u, 26045u, 1u)), abs(vec3<u32>(~var_0.a.x, var_0.a.x, ~0u)), all(vec3<bool>(true, true, true))), -(~abs(min(var_0.b, var_0.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2742f, 322f, 313f) - var_0.c) - _wgslsmith_f_op_vec3_f32(exp2(var_0.c)))), _wgslsmith_f_op_vec3_f32(var_0.c * var_0.c)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + _wgslsmith_f_op_f32(276f * 2475f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(101f * -343f))))));
    let var_2 = var_1.c.x;
    let var_3 = true;
    return Struct_1(vec3<u32>(var_0.a.x, var_1.a.x, ~4294967295u), var_1.b, var_1.c, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(-395f, 1854f)), -288f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_2)), _wgslsmith_f_op_f32(-var_2)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1894f, -1000f), var_1.d) + var_0.d)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> StorageBuffer {
    let var_0 = arg_1.c.x;
    global0 = arg_1.b.zzx;
    var var_1 = 23122u;
    global0 = arg_0.b.wzy;
    global0 = vec3<i32>(i32(-1i) * -33619i, _wgslsmith_div_i32(0i, global0.x), abs(max(-func_2().b.x, ~_wgslsmith_div_i32(59803i, arg_1.b.x))));
    return StorageBuffer(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(global0.x, ~(~(-(u_input.a << (29505u % 32u)))), _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, func_1(Struct_1(vec3<u32>(19117u, 49275u, 1u), vec4<i32>(2147483647i, u_input.b, -6984i, 1589i), vec3<f32>(1104f, 1150f, -695f), vec2<f32>(850f, 811f)), -215f, Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec4<i32>(-10877i, u_input.a, 0i, global0.x), vec3<f32>(-783f, -305f, -1000f), vec2<f32>(-637f, 843f)), 0u)), ~(-4863i)) ^ ((firstLeadingBit(u_input.a) & -u_input.c) ^ (u_input.a & -15337i)));
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-692f - 207f) * _wgslsmith_f_op_f32(max(-865f, -541f))))) * -1628f)));
    global0 = abs(_wgslsmith_sub_vec3_i32(~(vec3<i32>(-46355i, -2025i, global0.x) & -vec3<i32>(global0.x, -1i, global0.x)), _wgslsmith_add_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-6196i, 38255i, -7104i), vec3<i32>(u_input.b, -22644i, 92300i), vec3<i32>(128i, global0.x, 1i)), vec3<i32>(max(1i, -35500i), max(2147483647i, global0.x), 2147483647i))));
    global0 = _wgslsmith_add_vec3_i32(countOneBits(min(~abs(vec3<i32>(30279i, global0.x, global0.x)), reverseBits(vec3<i32>(-20725i, u_input.a, u_input.b)))), ~reverseBits(select(abs(vec3<i32>(-3108i, global0.x, -20013i)), ~vec3<i32>(-85056i, 1i, -5947i), vec3<bool>(false, true, true))));
    global0 = firstTrailingBit(~(-select(abs(vec3<i32>(global0.x, u_input.c, global0.x)), countOneBits(vec3<i32>(u_input.a, global0.x, u_input.b)), any(vec3<bool>(false, false, false)))));
    global0 = abs(~(-_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, 2147483647i, 1i)), select(vec3<i32>(-2147483647i, -1155i, -13088i), vec3<i32>(u_input.b, 8844i, -27024i), true))));
    let x = u_input.a;
    s_output = func_4(func_2(), func_2(), vec3<bool>(any(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true))), true));
}

