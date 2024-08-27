struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    let var_0 = -1626f;
    global0 = vec4<u32>(~3478u, min(_wgslsmith_dot_vec4_u32(~(vec4<u32>(global0.x, global0.x, 1u, global0.x) >> (vec4<u32>(4294967295u, 8681u, u_input.b, 33392u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(32830u, global0.x, 39297u, 95227u)), ~vec4<u32>(53088u, global0.x, u_input.c, 0u))), abs(global0.x)), _wgslsmith_clamp_u32(global0.x, min(~43243u, 4294967295u >> (global0.x % 32u)), 6338u), 4294967295u);
    let var_1 = vec4<bool>((_wgslsmith_clamp_u32(69948u, ~0u, u_input.b) | 0u) == ~1u, false, true, (0i < u_input.a) & all(vec2<bool>(false, u_input.c != u_input.b)));
    global0 = ~(vec4<u32>(~_wgslsmith_mod_u32(u_input.c, 83219u), u_input.c, global0.x & (u_input.b | 55612u), _wgslsmith_clamp_u32(global0.x ^ global0.x, ~u_input.c, ~16958u)) & _wgslsmith_div_vec4_u32(~vec4<u32>(global0.x, u_input.b, global0.x, global0.x), vec4<u32>(~38355u, abs(0u), ~global0.x, _wgslsmith_mod_u32(1u, u_input.c))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 + 1000f), _wgslsmith_f_op_f32(var_0 - 244f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-393f)), var_0), !(32121u < u_input.b)))), -237f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0))))));
    return var_0;
}

fn func_2() -> u32 {
    var var_0 = 19761u;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1265f * -683f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    var var_2 = Struct_1(i32(-1i) * -28984i, select(vec2<bool>(false, select(true, true, false)), !select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), false), select(true, true, true), u_input.c, vec3<i32>(u_input.a, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(0i, u_input.a), u_input.a, select(0i, -15754i, false)), ~(-vec3<i32>(43820i, -19001i, u_input.a)))));
    global0 = _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 19591u, 19582u), vec4<u32>(4294967295u, 4294967295u, global0.x, 4294967295u)), 26143u, min(u_input.b, 17447u), _wgslsmith_clamp_u32(26104u, var_2.d, 35035u)) & vec4<u32>(4761u, _wgslsmith_add_u32(868u, 0u), _wgslsmith_mult_u32(2971u, 7360u), 25816u)), max(vec4<u32>(global0.x, 1u | var_2.d, global0.x, _wgslsmith_div_u32(u_input.b, 12322u)), ~(~vec4<u32>(u_input.b, global0.x, u_input.c, global0.x))) ^ countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(9507u, u_input.b, 131892u, var_2.d), vec4<u32>(1u, 1u, global0.x, global0.x)), vec4<u32>(global0.x, 1u, 1u, global0.x) >> (vec4<u32>(global0.x, 3514u, var_2.d, 48475u) % vec4<u32>(32u)))));
    let var_3 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(61364i, -1i, ~var_2.a), _wgslsmith_mult_vec3_i32(~select(var_2.e, vec3<i32>(u_input.a, u_input.a, -56746i), var_2.b.x), var_2.e)), vec2<bool>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-32191i, u_input.a), vec2<i32>(43669i, -4857i))) < -15420i, var_2.c), all(vec3<bool>(true, true, var_2.c)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, global0.x ^ var_2.d, _wgslsmith_dot_vec2_u32(global0.xy, vec2<u32>(var_2.d, var_2.d))) & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), select(global0.yy, vec2<u32>(4075u, global0.x), false)), 28924u), var_2.e);
    return ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, var_2.d, 80751u, u_input.c)), firstTrailingBit(vec4<u32>(global0.x, u_input.b, 1u, global0.x)), abs(~vec4<u32>(4294967295u, 4294967295u, u_input.c, var_2.d))), ~(~firstTrailingBit(vec4<u32>(u_input.c, 1u, 41439u, 1u))));
}

fn func_1(arg_0: u32) -> u32 {
    global0 = _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(func_2(), global0.x, arg_0, u_input.c)), vec4<u32>(80313u << (u_input.b % 32u), ~(global0.x << (10527u % 32u)), arg_0 ^ _wgslsmith_mod_u32(u_input.c, 0u), arg_0) << (vec4<u32>(~global0.x, global0.x, 3713u, ~(~u_input.b)) % vec4<u32>(32u)));
    global0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, ~107434u, ~(_wgslsmith_dot_vec2_u32(global0.xx, global0.xw) >> (u_input.c % 32u)), _wgslsmith_mult_u32(11900u, 86860u ^ u_input.c)), ~vec4<u32>(~(~1u), abs(2850u), 1u, _wgslsmith_sub_u32(arg_0, firstLeadingBit(arg_0))), vec4<u32>(u_input.b, global0.x, global0.x, _wgslsmith_dot_vec2_u32(global0.wz, vec2<u32>(global0.x, 0u) | vec2<u32>(arg_0, u_input.b))) << ((vec4<u32>(u_input.b, ~4294967295u, max(1u, 4294967295u), u_input.c) << (vec4<u32>(2106u, _wgslsmith_clamp_u32(1u, global0.x, u_input.b), arg_0, 34484u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_0 = any(select(vec3<bool>(false, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false)), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true))), vec3<bool>(max(-2147483647i, u_input.a) >= ~1837i, any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), !(0u > u_input.b)), all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    global0 = _wgslsmith_mod_vec4_u32(~firstTrailingBit(~(~vec4<u32>(global0.x, global0.x, u_input.b, 4294967295u))), vec4<u32>(0u, 1u | _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 29140u, global0.x, u_input.b), vec4<u32>(arg_0, u_input.b, 2960u, u_input.b)), 1u, _wgslsmith_sub_u32(arg_0, u_input.c)));
    let var_1 = Struct_1(-(1i ^ ~(-u_input.a)), !vec2<bool>(var_0, true), var_0, 18505u, countOneBits(abs(vec3<i32>(min(563i, 37775i), u_input.a | -9438i, -u_input.a))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(select((_wgslsmith_clamp_u32(4294967295u, 1075u, 43039u) | 4294967295u) ^ ~u_input.c, 0u, false), global0.x);
    var_0 = _wgslsmith_mod_vec2_u32(reverseBits(global0.yw), global0.wx << (global0.zy % vec2<u32>(32u)));
    global0 = ~abs(~vec4<u32>(~u_input.c, ~79079u, 1u, _wgslsmith_mod_u32(9949u, var_0.x)));
    let var_1 = true;
    global0 = _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 1u, 1u, var_0.x), ~vec4<u32>(1u, 28315u, var_0.x, 33922u)), vec4<u32>(4294967295u, global0.x, abs(1u), func_1(global0.x)) & vec4<u32>(var_0.x, u_input.c, min(global0.x, 18779u), func_2())) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.c, global0.x, ~global0.x, u_input.c), _wgslsmith_add_vec4_u32(~vec4<u32>(var_0.x, 4294967295u, 11137u, 54328u), vec4<u32>(0u, u_input.c, 0u, 0u) & vec4<u32>(1u, 4294967295u, 0u, 1u)));
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(23883u, firstTrailingBit(min(var_0.x, var_0.x)), ~_wgslsmith_mult_u32(0u, 1u), _wgslsmith_div_u32(4294967295u, ~16522u)), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global0.zzw, vec3<u32>(0u, u_input.c, 42309u)), reverseBits(4294967295u)) & 62655u, 4294967295u, ~_wgslsmith_div_u32(u_input.c, _wgslsmith_sub_u32(global0.x, 1u)), ~48037u));
    let var_3 = !vec3<bool>(all(vec4<bool>(any(vec4<bool>(true, true, var_1, var_1)), var_1 & false, true, true)), true, global0.x < _wgslsmith_mod_u32(~30016u, max(1u, global0.x)));
    var var_4 = -1289f;
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f) - _wgslsmith_f_op_f32(1000f - -1226f)), -222f, -304f, _wgslsmith_f_op_f32(func_3()))), countOneBits(u_input.a) & u_input.a, ~u_input.b, _wgslsmith_f_op_f32(1699f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1111f))))));
}

