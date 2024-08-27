struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 0u;

var<private> global2: vec3<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = _wgslsmith_sub_u32(1u, u_input.a);
    global2 = firstLeadingBit(countOneBits(~(~_wgslsmith_div_vec3_u32(vec3<u32>(global2.x, global2.x, 21236u), vec3<u32>(27963u, var_0, 11241u)))));
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~17457u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(35547u, var_0, global2.x, u_input.a) | vec4<u32>(global2.x, 39499u, u_input.a, global2.x)), ~vec4<u32>(var_0, 0u, 0u, 1u) >> (~vec4<u32>(12845u, u_input.a, global2.x, u_input.a) % vec4<u32>(32u))), 1u), vec3<u32>(u_input.a, var_0, ~u_input.a));
    global2 = _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>((u_input.a & global2.x) ^ ~global2.x, _wgslsmith_clamp_u32(105162u | u_input.a, ~global2.x, ~14528u), ~14923u)), ~countOneBits(max(_wgslsmith_add_vec3_u32(vec3<u32>(var_0, var_0, 1u), vec3<u32>(0u, 44767u, global2.x)), max(vec3<u32>(u_input.a, var_0, 18788u), vec3<u32>(global2.x, u_input.a, 4294967295u)))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1549f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-170f + 626f))) * -146f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(110f, _wgslsmith_f_op_f32(sign(-1000f)))))));
    return _wgslsmith_mod_i32(arg_0.a, 1i);
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<i32>) -> f32 {
    var var_0 = Struct_2(Struct_1(func_3(Struct_1(-1i), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))))), ~(~(~(~arg_1.x))));
    let var_1 = !vec3<bool>(!select(all(vec4<bool>(true, false, false, false)), true, true), true, true);
    var var_2 = var_0.a;
    var var_3 = Struct_1(-45274i);
    var_2 = Struct_1(firstTrailingBit(arg_2.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -2291f);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1023f))) + _wgslsmith_f_op_f32(abs(-1079f))), 846f, _wgslsmith_f_op_f32(func_2(countOneBits(u_input.c) & _wgslsmith_mod_i32(arg_0.a.a, u_input.c), vec4<u32>(_wgslsmith_div_u32(0u, 57791u), _wgslsmith_mod_u32(59870u, arg_0.b), 0u, abs(global2.x)), (vec4<i32>(u_input.c, 1i, arg_0.a.a, 1295i) >> (vec4<u32>(arg_0.b, 19684u, global2.x, global2.x) % vec4<u32>(32u))) >> (firstLeadingBit(vec4<u32>(arg_0.b, arg_0.b, u_input.a, 4294967295u)) % vec4<u32>(32u))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(537f, -2181f, 430f, 1686f) + vec4<f32>(-397f, 334f, -1326f, -136f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(287f, -352f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1886f * -1000f) - _wgslsmith_f_op_f32(step(-588f, -334f))), _wgslsmith_f_op_f32(step(439f, _wgslsmith_f_op_f32(-1163f + -1512f))), _wgslsmith_f_op_f32(f32(-1f) * -405f)))));
    global1 = 1u;
    var var_1 = -881f;
    let var_2 = Struct_2(Struct_1(0i), global2.x);
    let var_3 = all(!select(vec3<bool>(all(vec3<bool>(true, true, false)), all(vec4<bool>(true, false, false, true)), true), vec3<bool>(true, true, true), true));
    return Struct_1(abs(42858i));
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_2(Struct_1(-(~u_input.b.x >> (global2.x % 32u))), global2.x & ~4294967295u);
    global2 = vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(72994u, var_0.b, u_input.a | u_input.a, global2.x), vec4<u32>(var_0.b ^ u_input.a, 1u, max(global2.x, 4294967295u), ~34520u)), ~0u, _wgslsmith_add_u32(~(~32081u >> (_wgslsmith_mult_u32(52120u, u_input.a) % 32u)), 25451u));
    let var_1 = 79646u;
    var var_2 = Struct_2(arg_0, ((~u_input.a ^ reverseBits(u_input.a)) << (~68650u % 32u)) >> (4294967295u % 32u));
    var var_3 = -27639i;
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-_wgslsmith_mult_i32(46881i, _wgslsmith_sub_i32(-15474i, 0i)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b.x, firstLeadingBit(19791i)), 0i)), max(vec4<u32>(func_4(func_1(Struct_2(Struct_1(u_input.b.x), 0u))), abs(32365u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(54752u, u_input.a, 1u, 29488u), vec4<u32>(0u, 4294967295u, global2.x, 4294967295u)), vec4<u32>(19784u, u_input.a, 32613u, global2.x) << (vec4<u32>(50648u, 1u, global2.x, u_input.a) % vec4<u32>(32u))), _wgslsmith_mult_u32(countOneBits(u_input.a), 9864u & u_input.a)), vec4<u32>(_wgslsmith_mod_u32(select(39390u, u_input.a, true), ~28705u), func_4(Struct_1(u_input.b.x)), reverseBits(global2.x), ~abs(global2.x))), ~_wgslsmith_sub_u32(62854u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global2.x, global2.x, 4294967295u), ~vec4<u32>(u_input.a, 1u, u_input.a, global2.x))));
}

