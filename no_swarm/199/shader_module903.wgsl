struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>) -> vec3<f32> {
    var var_0 = Struct_1(~23539u, u_input.a.x, 1i, abs(vec4<u32>(abs(28174u) | u_input.a.x, max(global0.x, 1u), 1u ^ arg_0.x, ~arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1226f) - _wgslsmith_f_op_f32(f32(-1f) * -1231f))) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-102f)), 130f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -533f))))));
    var_0 = Struct_1(_wgslsmith_dot_vec4_u32(var_0.d & max(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, arg_0.x, u_input.a.x, 5959u)), u_input.a), (vec4<u32>(2595u, 13319u, arg_0.x, u_input.a.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 57202u, 0u, var_0.a), vec4<u32>(0u, global0.x, arg_0.x, arg_0.x)) % vec4<u32>(32u))) | (u_input.a ^ vec4<u32>(arg_0.x, 4294967295u, 4294967295u, u_input.a.x))), _wgslsmith_mod_u32(~39053u, global0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(4000i, -1i, ~var_0.c), vec3<i32>(var_0.c, var_0.c, var_0.c)), ~(~u_input.a), -568f);
    var var_1 = select(vec2<bool>(true, select(!all(vec3<bool>(true, false, true)), all(vec2<bool>(true, true)), false)), vec2<bool>(all(vec3<bool>(true, true, true)), false), true | (335f == _wgslsmith_f_op_f32(var_0.e - _wgslsmith_f_op_f32(-var_0.e))));
    global0 = _wgslsmith_div_vec3_u32(select(vec3<u32>(_wgslsmith_dot_vec4_u32(var_0.d, u_input.a), ~select(19985u, u_input.a.x, var_1.x), global0.x), ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 37980u), firstTrailingBit(vec3<u32>(0u, 92934u, arg_0.x))), !(!(!vec3<bool>(var_1.x, true, true)))), vec3<u32>(~firstLeadingBit(4294967295u), 13641u, ~61183u));
    let var_2 = u_input.a.yzx;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0.e)))) + var_0.e), var_0.e, _wgslsmith_f_op_f32(var_0.e * -1000f)));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-1000f - -1122f);
    let var_1 = Struct_1(~73372u, firstTrailingBit(global0.x), firstTrailingBit(20843i) << (global0.x % 32u), u_input.a, -564f);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global0.yz)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - 182f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(202f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_3 = select(vec2<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), all(vec4<bool>(true, true, false, false))))), !vec2<bool>(all(vec4<bool>(true, false, true, false)), any(vec2<bool>(true, true))), all(vec2<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))), false)));
    let var_4 = ~(-((_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.c, -2147483647i, 42055i), vec3<i32>(0i, 5418i, var_1.c), vec3<i32>(57455i, var_1.c, var_1.c)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -2394i, -35611i), vec3<i32>(var_1.c, var_1.c, 13269i))) >> (~_wgslsmith_div_vec3_u32(u_input.a.xwz, vec3<u32>(global0.x, global0.x, var_1.a)) % vec3<u32>(32u))));
    return !select(-1i < ~(~var_4.x), var_3.x, var_3.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>) -> u32 {
    global0 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(max(vec3<u32>(~global0.x, ~0u, select(global0.x, u_input.a.x, arg_1.x)), ~(~vec3<u32>(62060u, arg_0.x, global0.x))), u_input.a.yyx), ~vec3<u32>(~max(global0.x, 875u), u_input.a.x ^ ~global0.x, _wgslsmith_dot_vec4_u32(~u_input.a, u_input.a)));
    let var_0 = Struct_1(~arg_0.x, u_input.a.x >> (_wgslsmith_div_u32(arg_0.x, firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a))) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), _wgslsmith_clamp_vec2_i32(firstTrailingBit(~vec2<i32>(0i, -1i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, -2147483647i), vec3<i32>(0i, -2147483647i, 2147483647i)), abs(-1i)), vec2<i32>(1i, 1i))), vec4<u32>(_wgslsmith_add_u32(~15911u, ~u_input.a.x) & arg_0.x, ~1u, 48810u, 14762u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-297f))))))));
    let var_1 = Struct_1(arg_0.x, 35747u, -56966i, var_0.d, _wgslsmith_f_op_f32(-1018f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e * -445f) - 303f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec3_f32(func_3(global0.yy)).x, _wgslsmith_f_op_f32(-2262f - var_0.e))))));
    let var_2 = var_1;
    let var_3 = Struct_1(4294967295u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(var_2.c, -var_0.c), vec4<u32>(var_1.a, reverseBits(u_input.a.x), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_1.d.x, arg_0.x)), ~vec2<u32>(var_2.b, 11989u) ^ var_0.d.ww), _wgslsmith_mod_u32(~var_0.d.x ^ global0.x, max(0u, ~1u))), var_0.e);
    return u_input.a.x;
}

fn func_1() -> bool {
    let var_0 = Struct_1(_wgslsmith_mult_u32(max(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~global0.x) ^ ~(~13253u), ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x) >> (global0.x % 32u)), min(~(~u_input.a.x), func_4(u_input.a.yw, vec4<bool>(func_2(), any(vec4<bool>(true, true, false, true)), select(true, false, true), true))), -select(-9619i, _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 12004i), -vec2<i32>(-1i, 0i)), 33410u == ~u_input.a.x), u_input.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec2<u32>(global0.x, 4294967295u))).x))));
    global0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(80066u, var_0.a, 6315u, 52580u)), ~firstLeadingBit(u_input.a) >> (~vec4<u32>(4294967295u, 52486u, global0.x, 17234u) % vec4<u32>(32u))), (u_input.a.x >> (23389u % 32u)) ^ _wgslsmith_div_u32(var_0.d.x, global0.x), countOneBits(~var_0.a));
    let var_1 = var_0;
    let var_2 = var_0;
    let var_3 = _wgslsmith_div_f32(var_2.e, -901f);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>((global0.x > 84220u) || true, true, func_1()), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, all(vec4<bool>(false, true, false, true)), true)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)), firstLeadingBit(14676i) > select(2978i, 0i, true)));
    global0 = ~(~vec3<u32>(~u_input.a.x, ~global0.x, 1u));
    var var_1 = Struct_1(~(~15990u >> ((abs(40730u) ^ global0.x) % 32u)), 38380u, -(~(-8637i << (abs(1u) % 32u))), u_input.a, _wgslsmith_f_op_f32(ceil(-1000f)));
    let var_2 = vec3<i32>(-1i, -_wgslsmith_sub_i32(abs(~(-2147483647i)), var_1.c), -(_wgslsmith_mod_i32(var_1.c & 1i, -37820i) & 1i));
    var_1 = Struct_1(_wgslsmith_mod_u32(~firstLeadingBit(~var_1.b), 4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~firstLeadingBit(u_input.a), var_1.d), firstTrailingBit(countOneBits(var_1.d ^ var_1.d))), 0i, ~(~countOneBits(var_1.d)), _wgslsmith_f_op_f32(1082f + _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1108f, -435f) - -1787f))));
    let x = u_input.a;
    s_output = StorageBuffer(14788u, ~global0.x, ~firstTrailingBit(~(vec4<i32>(var_2.x, -2147483647i, -7792i, -1i) ^ vec4<i32>(var_1.c, 48377i, var_1.c, 2458i))));
}

