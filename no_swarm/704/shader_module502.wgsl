struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<u32>) -> f32 {
    let var_0 = vec2<bool>(true, select(false, true, true));
    var var_1 = var_0.x;
    var_1 = (abs(_wgslsmith_dot_vec4_i32(vec4<i32>(18482i, -55868i, -1i, -3712i), countOneBits(vec4<i32>(-3817i, 0i, -19659i, -2147483647i)))) << (~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2, arg_2), ~vec2<u32>(126704u, arg_2.x)) % 32u)) >= _wgslsmith_add_i32(_wgslsmith_mod_i32(~_wgslsmith_div_i32(2147483647i, -2147483647i), 1i), _wgslsmith_clamp_i32(~countOneBits(0i), i32(-1i) * -16037i, ~(~(-1i))));
    var_1 = all(vec2<bool>(arg_2.x <= 0u, all(vec4<bool>(false && var_0.x, var_0.x, false, true))));
    var var_2 = Struct_1(vec2<i32>(firstTrailingBit(firstTrailingBit(~(-2147483647i))), -1i), arg_1, ~vec4<i32>(-(i32(-1i) * -2147483647i), select(45926i, _wgslsmith_div_i32(3761i, 2147483647i), !var_0.x), -1i, _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 30100i, -53583i), vec3<i32>(-7727i, 2147483647i, 1i)), ~0i)), arg_2.x, _wgslsmith_mult_i32(-12293i, ~(-1i)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1121f)) - _wgslsmith_f_op_f32(arg_1 - arg_0.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2.d;
    var var_1 = _wgslsmith_sub_u32(abs(4294967295u), ~4294967295u);
    var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 78593u), abs(vec3<u32>(arg_2.d, 0u, arg_2.d))), ~vec3<u32>(1u, arg_0.d, arg_0.d) & abs(select(vec3<u32>(var_0, arg_0.d, 91925u), vec3<u32>(arg_2.d, arg_0.d, 48774u), vec3<bool>(arg_1.x, arg_1.x, true)))), vec3<u32>(~_wgslsmith_mod_u32(~31241u, 56758u), 102107u, u_input.a));
    let var_2 = Struct_1(select(min(vec2<i32>(arg_2.a.x, -1i) | vec2<i32>(arg_2.a.x, arg_0.c.x), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.c.x, 1i), arg_2.a)), vec2<i32>(arg_2.e << (u_input.a % 32u), -60930i), !select(arg_1, vec2<bool>(false, arg_1.x), false)) ^ reverseBits(vec2<i32>(-2147483647i, arg_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(func_3(vec2<f32>(-1341f, 621f), 636f, vec2<u32>(arg_2.d, 4294967295u))))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(trunc(-880f))) - _wgslsmith_div_f32(-330f, _wgslsmith_f_op_f32(arg_2.b * 228f)))), min(~vec4<i32>(-16225i, -2147483647i, abs(arg_2.e), -arg_2.c.x), arg_2.c), 4294967295u, -14836i);
    let var_3 = vec3<u32>(_wgslsmith_add_u32(~firstTrailingBit(1u), abs(reverseBits(reverseBits(var_0)))), ~arg_2.d, var_0);
    return 85864u;
}

fn func_1(arg_0: f32, arg_1: u32) -> vec2<i32> {
    var var_0 = ~(~countOneBits(vec4<u32>(4294967295u, 64937u, 4294967295u, u_input.a) & vec4<u32>(u_input.a, arg_1, u_input.a, 61382u)) >> (~max(~vec4<u32>(arg_1, arg_1, 11339u, arg_1), ~vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_sub_u32(~firstTrailingBit(~u_input.a), countOneBits(~max(func_2(Struct_1(vec2<i32>(-1i, 15772i), arg_0, vec4<i32>(97368i, 0i, 0i, 1i), var_0.x, -1i), vec2<bool>(false, false), Struct_1(vec2<i32>(-1607i, -54920i), arg_0, vec4<i32>(-1i, -1i, 8258i, -1i), 0u, 2147483647i)), 1u)));
    var var_2 = ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.a, var_0.x, var_0.x), firstTrailingBit(var_0.xyw) ^ ~var_0.wzx, _wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_1, var_0.x), var_0.yzx) << (~var_0.xyw % vec3<u32>(32u))));
    var_2 = ~max(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(u_input.a, 1u, var_2.x), vec3<u32>(var_2.x, 4294967295u, 102685u)), vec3<u32>(91256u, u_input.a, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1532u, u_input.a), vec3<u32>(1u, u_input.a, 1u))), var_0.wxx) >> (var_0.wwz % vec3<u32>(32u));
    var var_3 = Struct_1(vec2<i32>(-2147483647i, ~(-61129i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) + _wgslsmith_f_op_f32(exp2(arg_0))) * arg_0)), vec4<i32>(2147483647i, ~42372i, firstLeadingBit(~firstLeadingBit(28762i)), 47448i), ~(~_wgslsmith_mod_u32(countOneBits(var_2.x), ~arg_1)), 7736i >> (var_0.x % 32u));
    return _wgslsmith_add_vec2_i32(vec2<i32>(var_3.e, var_3.a.x), -vec2<i32>(reverseBits(countOneBits(0i)), -(~23498i)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec3<bool> {
    var var_0 = 48819u;
    let var_1 = ~(~4294967295u);
    var var_2 = false;
    let var_3 = Struct_1(vec2<i32>(max(-57233i, 2147483647i), -arg_1) & func_1(-1024f, ~firstLeadingBit(1u)), -1843f, abs(vec4<i32>(~(-arg_0.c.x), countOneBits(-57583i), ~min(-1i, arg_0.a.x), ~(~arg_0.c.x))), 83047u, -83509i);
    let var_4 = Struct_1(_wgslsmith_div_vec2_i32(var_3.c.xz & _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-14617i, arg_0.a.x), arg_0.a), _wgslsmith_mod_vec2_i32(vec2<i32>(-3875i, 2147483647i), var_3.a)), countOneBits(-vec2<i32>(arg_1, -15332i))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)), _wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_div_f32(var_3.b, 185f))))), _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, -599f))))), arg_0.c, _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_2, abs(~var_1)), u_input.a), var_3.a.x);
    return !vec3<bool>(true, true, any(vec4<bool>(true, select(true, false, false), true, any(vec3<bool>(true, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(abs(countOneBits((vec3<i32>(21088i, -23436i, -28090i) << (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u))) << (~vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u)))));
    let var_1 = 1573f;
    var var_2 = vec2<f32>(var_1, -168f);
    let var_3 = any(select(func_4(Struct_1(func_1(var_2.x, u_input.a), var_1, reverseBits(vec4<i32>(var_0.x, var_0.x, 2147483647i, 0i)), ~u_input.a, 0i), _wgslsmith_sub_i32(abs(16729i), var_0.x), 117612u), vec3<bool>(true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))), !(var_0.x == 0i)), _wgslsmith_f_op_f32(floor(1682f)) != _wgslsmith_f_op_f32(-1665f - _wgslsmith_f_op_f32(-var_2.x))));
    var_0 = min(select(max(reverseBits(vec3<i32>(var_0.x, -23781i, var_0.x)), abs(vec3<i32>(var_0.x, var_0.x, 39537i))), ~(countOneBits(vec3<i32>(-40383i, var_0.x, var_0.x)) | (vec3<i32>(2147483647i, 14540i, var_0.x) | vec3<i32>(var_0.x, 1i, var_0.x))), ~(~u_input.a) == u_input.a), vec3<i32>(var_0.x, _wgslsmith_add_i32(var_0.x, -_wgslsmith_dot_vec2_i32(var_0.zx, vec2<i32>(4923i, var_0.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(var_0.x, -7950i), -1i, _wgslsmith_div_i32(9749i, var_0.x)), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(var_0.x, -2147483647i, -1i)), vec3<i32>(-7538i, 2147483647i, var_0.x) & vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(27730i, 1i, -3272i)))));
    let var_4 = 0u & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(14744u, 1u, u_input.a)), firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)) | select(vec3<u32>(27293u, 141247u, u_input.a), vec3<u32>(4294967295u, u_input.a, 80806u), vec3<bool>(true, var_3, true))), ~u_input.a);
    let var_5 = _wgslsmith_div_u32(u_input.a, 4294967295u);
    var var_6 = (-_wgslsmith_clamp_i32(1i, var_0.x << (2737u % 32u), 1i) << (var_5 % 32u)) << (_wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(min(vec4<u32>(var_4, 0u, 4294967295u, 15622u), vec4<u32>(var_4, var_4, var_5, 4798u)), reverseBits(vec4<u32>(var_5, 15522u, u_input.a, 12347u)))), (vec4<u32>(97205u, var_4, 32552u, 40772u) << (vec4<u32>(var_4, 43613u, u_input.a, u_input.a) % vec4<u32>(32u))) & _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(15846u, var_5, 4294967295u, 102964u), vec4<u32>(var_4, u_input.a, var_5, 82548u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_5, 13307u, var_4, 4294967295u), vec4<u32>(50474u, u_input.a, u_input.a, var_4)))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xx, _wgslsmith_dot_vec3_u32(~min(_wgslsmith_mult_vec3_u32(vec3<u32>(var_5, 58008u, var_5), vec3<u32>(4294967295u, 0u, u_input.a)), ~vec3<u32>(38711u, var_4, 32715u)), select(vec3<u32>(var_4, 4294967295u, u_input.a), vec3<u32>(72221u, 4294967295u, 45987u), true) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 72895u) << (vec3<u32>(var_5, 4294967295u, 13267u) % vec3<u32>(32u)), reverseBits(vec3<u32>(1u, var_5, var_5)))));
}

