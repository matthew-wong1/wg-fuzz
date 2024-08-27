struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: bool,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> f32 {
    var var_0 = Struct_2((i32(-1i) * -1i) << (min(~0u | _wgslsmith_div_u32(u_input.c, arg_0.b.x), reverseBits(_wgslsmith_div_u32(arg_0.b.x, u_input.c))) % 32u), firstTrailingBit(arg_1), reverseBits(-_wgslsmith_mod_i32(~(-4478i), ~(-11673i))), select(!vec3<bool>(any(vec3<bool>(false, false, true)), all(vec4<bool>(false, true, false, false)), true), vec3<bool>(true, true, true), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true))))), _wgslsmith_sub_u32(u_input.c >> (~firstLeadingBit(arg_0.b.x) % 32u), _wgslsmith_add_u32(4294967295u, arg_1.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1661f * -194f), -102f)) - vec2<f32>(-625f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-984f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1060f, 204f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(306f, 1638f) + vec2<f32>(-637f, -153f)), vec2<bool>(var_0.d.x, false))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(243f, 1212f), vec2<f32>(984f, 157f), var_0.d.x))))));
    var var_2 = select(!select(select(vec4<bool>(var_0.d.x, true, var_0.d.x, var_0.d.x), select(vec4<bool>(false, true, false, true), vec4<bool>(var_0.d.x, true, true, var_0.d.x), var_0.d.x), select(vec4<bool>(var_0.d.x, false, var_0.d.x, var_0.d.x), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, true), vec4<bool>(var_0.d.x, true, true, false))), vec4<bool>(!var_0.d.x, var_1.x < -135f, true, false), var_0.d.x), !(!(!(!vec4<bool>(var_0.d.x, var_0.d.x, true, var_0.d.x)))), vec4<bool>(true, !(var_0.d.x | all(var_0.d)), var_0.d.x, false));
    var_0 = Struct_2(countOneBits(-9622i), ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.c, arg_0.b.x), arg_1, var_0.b))), firstTrailingBit(min(arg_0.a.x, ~u_input.b)), vec3<bool>((_wgslsmith_clamp_i32(var_0.c, arg_0.a.x, 0i) > 0i) && !select(var_0.d.x, true, true), false, var_2.x), _wgslsmith_dot_vec4_u32(var_0.b, arg_1));
    var_0 = Struct_2(2147483647i, arg_1, var_0.c, var_2.wzx, _wgslsmith_mod_u32(arg_1.x << (arg_0.b.x % 32u), firstLeadingBit(~13132u)) ^ _wgslsmith_dot_vec3_u32(select(var_0.b.yzy, max(arg_1.xzy, var_0.b.yyy), !vec3<bool>(var_2.x, true, var_0.d.x)), vec3<u32>(var_0.b.x, 1u, arg_1.x)));
    return var_1.x;
}

fn func_2(arg_0: i32, arg_1: i32) -> vec2<u32> {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-293f, _wgslsmith_f_op_f32(-1337f + _wgslsmith_f_op_f32(-399f - 1001f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(321f, -1304f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1308f + 359f)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_3(vec3<i32>(arg_1, arg_0, 0i), vec2<u32>(1u, u_input.c)), ~vec4<u32>(0u, 5234u, 0u, u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(520f + 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -609f)), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(956f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -996f))), 1629f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -616f))))), select(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, true, select(false, true, true)), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false))), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, false, false))), _wgslsmith_add_i32(arg_1, _wgslsmith_sub_i32(arg_1, 0i)) > ~reverseBits(arg_0))));
    var_0 = -_wgslsmith_clamp_i32(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(604i, u_input.a.x), u_input.a)), u_input.d, 0i);
    var var_2 = ~(_wgslsmith_div_u32(~u_input.c, 49083u) << (firstLeadingBit(abs(4294967295u)) % 32u)) >> (max(_wgslsmith_mult_u32(countOneBits(_wgslsmith_add_u32(u_input.c, u_input.c)), firstTrailingBit(u_input.c | 30349u)), 0u) % 32u);
    var var_3 = Struct_1(vec3<i32>(-u_input.a.x, _wgslsmith_mod_i32(-2147483647i, abs(2147483647i)), _wgslsmith_add_i32(u_input.b, 6301i)), _wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(_wgslsmith_clamp_u32(19689u, u_input.c, 1u)), _wgslsmith_mult_u32(u_input.c, 4294967295u)), abs(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(28131u, 4294967295u), vec2<u32>(4294967295u, u_input.c), vec2<u32>(8106u, u_input.c)), vec2<u32>(1u, u_input.c) ^ vec2<u32>(u_input.c, u_input.c)))), true, vec3<i32>(2147483647i << (u_input.c % 32u), ~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, u_input.a.x, 2147483647i)), ~vec3<i32>(arg_1, -2147483647i, -19774i)), 1i), reverseBits(~abs(u_input.c)));
    return min(abs(vec2<u32>(firstLeadingBit(_wgslsmith_mult_u32(u_input.c, 22844u)), ~0u >> (_wgslsmith_mod_u32(var_3.b.x, u_input.c) % 32u))), var_3.b ^ vec2<u32>(0u, _wgslsmith_sub_u32(u_input.c, var_3.b.x)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3.d.zy;
    let var_1 = arg_1;
    var var_2 = var_1;
    var_2 = Struct_1(var_2.d, func_2(~u_input.d, var_2.d.x ^ arg_1.d.x), arg_1.c, _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(~max(vec3<i32>(-1i, arg_1.d.x, -18242i), var_1.a), _wgslsmith_add_vec3_i32(vec3<i32>(11056i, 65317i, 90242i), ~var_1.d)), abs(_wgslsmith_mod_vec3_i32(var_2.d, _wgslsmith_add_vec3_i32(arg_1.d, vec3<i32>(-1i, u_input.a.x, var_2.a.x)))), vec3<i32>(~var_2.a.x, -1i, u_input.a.x) ^ var_2.a), _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(92275u), abs(u_input.c)) ^ countOneBits(~var_2.b), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 1u), ~reverseBits(var_2.b))));
    var var_3 = max(var_1.a >> (abs(arg_3.b.wyy) % vec3<u32>(32u)), -arg_1.a & -countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, -1i, 0i), arg_1.d)));
    return 1i;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    let var_0 = !select(vec4<bool>(all(arg_0.d) | true, any(select(vec2<bool>(false, arg_0.d.x), arg_0.d.zx, false)), true & (arg_0.d.x || true), (false & arg_1.c) | false), !vec4<bool>(arg_0.d.x, !arg_0.d.x, arg_0.d.x, any(vec2<bool>(false, true))), !select(select(vec4<bool>(false, arg_0.d.x, arg_1.c, true), vec4<bool>(true, arg_1.c, false, true), vec4<bool>(true, false, arg_1.c, true)), vec4<bool>(arg_0.d.x, arg_1.c, arg_1.c, arg_0.d.x), select(vec4<bool>(arg_1.c, arg_1.c, false, arg_0.d.x), vec4<bool>(arg_0.d.x, true, false, false), arg_1.c)));
    var var_1 = vec3<u32>(_wgslsmith_add_u32(~arg_0.e, 778u), ~firstTrailingBit(4294967295u), countOneBits(_wgslsmith_add_u32(~arg_2.b.x, arg_0.e)));
    var_1 = arg_0.b.xyz;
    var_1 = ~(~(~(vec3<u32>(arg_2.b.x, arg_1.b.x, arg_3.b.x) ^ arg_0.b.zxy)));
    var_1 = arg_0.b.zwy;
    return Struct_3(firstLeadingBit(abs(vec3<i32>(firstLeadingBit(arg_0.a), arg_1.a.x, -9724i >> (arg_0.e % 32u)))), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.c;
    var_0 = ~u_input.c;
    var var_1 = vec2<f32>(284f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1290f)))));
    var var_2 = -150f;
    var var_3 = u_input.d;
    var_2 = 942f;
    let var_4 = func_4(Struct_2(select(_wgslsmith_mult_i32(-1i, ~u_input.a.x), abs(~u_input.d), true), vec4<u32>(u_input.c, ~_wgslsmith_clamp_u32(1u, 33678u, u_input.c), abs(max(u_input.c, u_input.c)), 0u), -_wgslsmith_div_i32(func_1(false, Struct_1(vec3<i32>(2147483647i, 21861i, -6370i), vec2<u32>(u_input.c, u_input.c), false, vec3<i32>(0i, 20823i, 0i), u_input.c), u_input.a.x, Struct_2(1i, vec4<u32>(4294967295u, 1u, u_input.c, 0u), u_input.b, vec3<bool>(false, true, false), 4294967295u)), select(1i, u_input.d, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), 73029u), Struct_1(~vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), u_input.b, _wgslsmith_clamp_i32(-76530i, -23046i, 1i)), ~vec2<u32>(min(u_input.c, 65150u), _wgslsmith_mod_u32(4294967295u, u_input.c)), _wgslsmith_f_op_f32(-var_1.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-299f, var_1.x)) * var_1.x), (vec3<i32>(u_input.b, -24319i, u_input.b) >> (vec3<u32>(12337u, 4294967295u, 4294967295u) % vec3<u32>(32u))) ^ ~(-vec3<i32>(u_input.b, 2147483647i, -6645i)), ~((u_input.c ^ u_input.c) >> (~u_input.c % 32u))), Struct_3(-vec3<i32>(abs(u_input.a.x), select(u_input.d, u_input.a.x, true), 1i), func_2(18941i, 0i)), Struct_3(-select(-vec3<i32>(u_input.d, 1i, -2147483647i), abs(vec3<i32>(u_input.a.x, 14572i, 1i)), true), _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, u_input.c), ~vec2<u32>(u_input.c, 1u), select(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, u_input.c)), reverseBits(vec2<u32>(u_input.c, u_input.c)), vec2<bool>(true, true)))));
    var var_5 = Struct_1(select(firstLeadingBit(firstTrailingBit(var_4.a)), var_4.a, select(vec3<bool>(true, false, select(true, true, true)), vec3<bool>(true, false, false), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false))), min(var_4.b, vec2<u32>(func_4(Struct_2(var_4.a.x, vec4<u32>(u_input.c, var_4.b.x, 0u, var_4.b.x), var_4.a.x, vec3<bool>(false, true, false), var_4.b.x), Struct_1(var_4.a, vec2<u32>(u_input.c, var_4.b.x), false, var_4.a, u_input.c), var_4, var_4).b.x, 1u)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, true, false))) || true, select(_wgslsmith_div_vec3_i32(~(~vec3<i32>(var_4.a.x, var_4.a.x, u_input.a.x)), func_4(Struct_2(u_input.a.x, vec4<u32>(u_input.c, var_4.b.x, 1u, u_input.c), u_input.b, vec3<bool>(true, true, true), u_input.c), Struct_1(var_4.a, vec2<u32>(95483u, var_4.b.x), false, var_4.a, 15710u), var_4, var_4).a), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, var_4.a.x, u_input.d), vec3<i32>(-59922i, var_4.a.x, -36476i)) | var_4.a), false), 0u);
    var_0 = _wgslsmith_mult_u32(59959u, ~(~(~var_4.b.x)) & ~_wgslsmith_dot_vec2_u32(var_5.b, _wgslsmith_mult_vec2_u32(var_5.b, vec2<u32>(u_input.c, 21552u))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_5.a, -131f, firstLeadingBit(~(~(vec4<i32>(var_5.a.x, 32278i, u_input.b, u_input.b) << (vec4<u32>(4294967295u, u_input.c, var_4.b.x, 1u) % vec4<u32>(32u))))));
}

