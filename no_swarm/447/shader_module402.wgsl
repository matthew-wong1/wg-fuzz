struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>) -> vec3<bool> {
    let var_0 = !select(vec2<bool>(true, true), vec2<bool>(!(arg_0.x >= arg_0.x), arg_0.x == arg_0.x), vec2<bool>(false, any(vec2<bool>(true, true))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-1f));
    let var_2 = _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(u_input.a.x, 0i) >> (~arg_0 % vec2<u32>(32u))), min(vec2<i32>(2147483647i, -1311i), _wgslsmith_mod_vec2_i32(u_input.a, u_input.a) & _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -8696i), u_input.a))) & (u_input.a | firstLeadingBit(u_input.a));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1232f, 2742f, var_1.a, var_1.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -456f, -1513f, var_1.a) + vec4<f32>(-2149f, var_1.a, var_1.a, -1779f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(237f, var_1.a, -258f, var_1.a) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-164f, 2097f, 1311f, -1000f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1287f), _wgslsmith_f_op_f32(floor(var_1.a)), -2179f)), vec4<f32>(-240f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(ceil(var_1.a)), var_1.a))));
    let var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -339f), var_1.a, var_3.x) - _wgslsmith_f_op_vec3_f32(-var_3.wyy)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_3.wzz)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_3.x, -1147f)))))));
    return select(!(!select(!vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false))), !(!vec3<bool>(false, 12172u == arg_0.x, 49361i > var_2.x)), all(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), select(!vec3<bool>(var_0.x, true, var_0.x), !vec3<bool>(var_0.x, true, false), false), u_input.a.x > reverseBits(-2147483647i))));
}

fn func_2() -> vec3<u32> {
    var var_0 = true;
    var var_1 = -(((vec4<i32>(0i, u_input.a.x, -16787i, u_input.a.x) & (vec4<i32>(u_input.a.x, 6629i, u_input.a.x, 0i) | vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x))) & vec4<i32>(-1i, i32(-1i) * -15267i, -2147483647i, -9096i)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-1i, 2147483647i), 1i, ~u_input.a.x, u_input.a.x), countOneBits(min(vec4<i32>(u_input.a.x, -9839i, u_input.a.x, 17225i), vec4<i32>(-201i, u_input.a.x, -39637i, u_input.a.x)))));
    var var_2 = !select(vec3<bool>(u_input.a.x >= ~1i, true, false), select(vec3<bool>(true, true, true), func_3(vec2<u32>(15917u, 28972u)), vec3<bool>(true, true, true)), vec3<bool>(!select(false, false, false), all(vec4<bool>(true, true, true, true)), true));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1447f) * _wgslsmith_f_op_f32(step(279f, -1757f))), _wgslsmith_f_op_f32(-1f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1986f + 842f))) - 1f)));
    var var_4 = reverseBits(~select(abs(vec4<u32>(0u, 65828u, 1u, 8381u)), vec4<u32>(4294967295u, 6390u, 5340u, 94918u), !vec4<bool>(true, var_2.x, var_2.x, var_2.x)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    return abs(vec3<u32>(52085u | (~var_4.x >> (_wgslsmith_mod_u32(1u, var_4.x) % 32u)), var_4.x, 0u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a))))));
    var var_2 = arg_0;
    var_0 = u_input.a.x;
    return Struct_1(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -285f), _wgslsmith_f_op_f32(step(arg_1.a, 1000f)), true)), _wgslsmith_f_op_f32(step(251f, _wgslsmith_f_op_f32(arg_1.a - 830f)))))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(~4294967295u, func_4(func_2(), Struct_1(-998f)), 1u, func_4(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), func_2()), func_4(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(5942u, 1u, 0u), vec3<u32>(4294967295u, 16931u, 14760u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 45964u, 1u), vec3<u32>(4294967295u, 20389u, 1u)), countOneBits(vec3<u32>(6916u, 4294967295u, 4294967295u))), func_4(vec3<u32>(48856u, 41101u, 1u), func_4(vec3<u32>(67069u, 12303u, 4294967295u), Struct_1(2384f))))).a);
    let var_1 = -u_input.a;
    var var_2 = ~vec2<i32>(~(~_wgslsmith_dot_vec2_i32(var_1, vec2<i32>(-1i, u_input.a.x))), -var_1.x);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -245f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1463f))), _wgslsmith_f_op_f32(f32(-1f) * -1021f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-762f, -1376f, _wgslsmith_f_op_f32(step(-249f, -1164f))), vec3<f32>(_wgslsmith_div_f32(1235f, -869f), _wgslsmith_f_op_f32(abs(-1198f)), -312f), true)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(267f, -1070f, 879f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1346f, -449f), vec3<f32>(1544f, -219f, 831f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(select(-676f, -708f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1574f)) + vec3<f32>(-504f, _wgslsmith_f_op_f32(trunc(781f)), _wgslsmith_f_op_f32(sign(-1456f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1205f, _wgslsmith_div_f32(-548f, -690f), _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-376f - -223f), var_0.x, -1210f)));
    let var_2 = vec2<u32>(4294967295u, abs(max(20032u, 1u)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0));
    var var_3 = false;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 343f, -870f, 1128f))))));
    let var_5 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -690f));
    var var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, vec2<u32>(var_2.x, ~var_6.c));
}

