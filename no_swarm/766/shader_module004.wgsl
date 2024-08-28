struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(arg_0.b * arg_0.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))));
    let var_1 = arg_0;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_1.a)))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1260f, 1602f, arg_0.a, arg_0.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_1.a, arg_0.b) + vec4<f32>(2037f, var_2.x, var_1.b, -484f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a, arg_0.b, var_1.a, arg_0.b))))))))));
    let var_3 = !select(!vec2<bool>(false, -822f < var_2.x), vec2<bool>(var_0 < _wgslsmith_f_op_f32(471f * 1232f), any(!vec2<bool>(arg_1, false))), (-28014i & u_input.c) < ~1i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -756f) * var_2.x);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(470f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(488f * arg_0.a.b) * _wgslsmith_div_f32(arg_1.b, arg_2.x))), 1000f, arg_0.a.c), _wgslsmith_mod_i32(~firstLeadingBit(1i), arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1015f, _wgslsmith_f_op_f32(func_3(Struct_1(2447f, -669f, 2147483647i), any(vec2<bool>(true, true))))))), _wgslsmith_div_u32(select(arg_0.d, ~u_input.d ^ 1u, true), abs(max(arg_0.d, u_input.e & 29161u))), min(firstTrailingBit(vec3<i32>(2147483647i, 1i, u_input.a) >> (u_input.b % vec3<u32>(32u))), firstTrailingBit(vec3<i32>(-12509i, 2147483647i, 28692i))) | vec3<i32>(u_input.a, _wgslsmith_div_i32(13642i, arg_1.c), u_input.a));
    var var_1 = ~0u;
    global0 = array<Struct_1, 8>();
    var var_2 = Struct_2(arg_1, arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * var_0.a.a))) + arg_0.c), u_input.e, var_0.e);
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-514f + -338f)), -622f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))))));
    return _wgslsmith_mult_vec4_u32(abs(select(vec4<u32>(1u << (1u % 32u), var_2.d ^ arg_0.d, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, 1u, 4294967295u, var_2.d), vec4<u32>(4294967295u, 0u, 0u, 0u)), _wgslsmith_mult_u32(arg_0.d, arg_0.d)), _wgslsmith_add_vec4_u32(vec4<u32>(7536u, 28916u, 1u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.d, var_0.d, u_input.e, u_input.d), vec4<u32>(4294967295u, arg_0.d, 4294967295u, var_2.d))), vec4<bool>(false, false, all(vec4<bool>(true, false, true, true)), true))), vec4<u32>(~var_2.d, _wgslsmith_sub_u32(~var_0.d, ~0u) & arg_0.d, 1u, arg_0.d));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = u_input.c;
    global0 = array<Struct_1, 8>();
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(func_2(Struct_2(Struct_1(_wgslsmith_f_op_f32(-457f + 308f), -855f, -2147483647i), _wgslsmith_mod_i32(1i, u_input.c | -8895i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(floor(arg_1))), ~(~54998u), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, var_0, var_0), vec3<i32>(-2147483647i, -18424i, -1i)))), global0[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-184f, 556f), vec2<f32>(1000f, 474f))) - vec2<f32>(arg_1, -810f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 136f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(568f, 402f)), vec2<bool>(true, true))), select(vec2<bool>(true, false), vec2<bool>(true, true), arg_1 == arg_1)))).x, 8u)], _wgslsmith_sub_i32(u_input.a >> (func_2(Struct_2(global0[_wgslsmith_index_u32(arg_2.x, 8u)], -5357i, -1092f, 1u, vec3<i32>(-1i, u_input.a, -1i)), global0[_wgslsmith_index_u32(u_input.d, 8u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(720f, -1000f))).x % 32u), -23675i), _wgslsmith_f_op_f32(min(-189f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(1000f - -1944f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))), arg_2.x, ~vec3<i32>(var_0, 0i, -2147483647i) << (vec3<u32>(u_input.d, min(13429u, reverseBits(arg_2.x)), countOneBits(0u) ^ _wgslsmith_mod_u32(u_input.d, arg_0.x)) % vec3<u32>(32u)));
    var var_2 = Struct_2(var_1.a, -2147483647i, arg_1, max(_wgslsmith_sub_u32(u_input.b.x, ~_wgslsmith_add_u32(0u, arg_0.x)), ~(~arg_2.x) >> (abs(0u) % 32u)), vec3<i32>(reverseBits(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.c), var_1.e), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.a), vec4<i32>(-11842i, u_input.a, 1i, -95398i)))), 41748i, -reverseBits(_wgslsmith_mod_i32(1i, 38605i))));
    let var_3 = Struct_1(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))) + _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(select(var_2.c, var_1.c, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1007f) - arg_1)))), var_2.a.c);
    return Struct_2(var_2.a, var_0, 758f, var_1.d, vec3<i32>(-2147483647i, -1i, var_3.c));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> vec3<bool> {
    let var_0 = func_4(~(~min(vec4<u32>(0u, u_input.d, 29663u, u_input.d) | vec4<u32>(arg_0.x, 34714u, u_input.e, u_input.e), vec4<u32>(53714u, u_input.b.x, 11969u, u_input.d) >> (vec4<u32>(0u, 0u, u_input.e, 15228u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(1097f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(878f, 670f)))), ~_wgslsmith_add_vec4_u32(func_2(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 8u)], arg_1, 1155f, arg_0.x, vec3<i32>(arg_1, u_input.a, 36846i)), global0[_wgslsmith_index_u32(arg_0.x, 8u)], vec2<f32>(511f, 2077f)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(29038u, u_input.b.x, u_input.d, u_input.e), vec4<u32>(arg_0.x, 1u, 715u, arg_0.x), vec4<u32>(0u, 0u, 52671u, u_input.b.x)), select(~vec4<u32>(u_input.b.x, 64069u, arg_0.x, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 6940u, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 2896u, arg_0.x, 4294967295u), vec4<u32>(arg_0.x, 11094u, 3095u, u_input.e)), vec4<bool>(false, false, false, true))));
    var var_1 = -abs(u_input.a);
    var_1 = 10739i;
    global0 = array<Struct_1, 8>();
    var var_2 = vec4<u32>(var_0.d, ~abs(~arg_0.x) >> (~(~_wgslsmith_mult_u32(var_0.d, arg_0.x)) % 32u), abs(u_input.e), func_4(min(vec4<u32>(var_0.d, arg_0.x, 4294967295u, u_input.e) & _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 26821u, 63329u, 39345u), vec4<u32>(18112u, 25616u, u_input.b.x, 0u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, var_0.d, 0u), vec4<u32>(arg_0.x, arg_0.x, 4294967295u, arg_0.x))), _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(trunc(var_0.c))), vec4<u32>(1u, u_input.b.x, 19786u, 43547u) & ~(~vec4<u32>(u_input.b.x, 0u, 28087u, 0u))).d);
    return vec3<bool>(true, true, any(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), true), vec3<bool>(false, false, true), vec3<bool>(all(vec4<bool>(true, true, false, true)), true, all(vec4<bool>(false, true, true, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(all(vec2<bool>(false, any(vec3<bool>(true, true, true)))), all(vec4<bool>(all(func_1(vec3<u32>(u_input.d, 62769u, u_input.d), u_input.a)), func_1(vec3<u32>(1u, u_input.b.x, u_input.b.x), 2147483647i).x && true, !func_1(vec3<u32>(0u, 4294967295u, 0u), u_input.a).x, true)), !select(all(vec2<bool>(false, true)), false, true));
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    let var_1 = reverseBits(_wgslsmith_clamp_vec2_i32(min(max(max(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.a, 1i)), vec2<i32>(u_input.a, 2147483647i)), vec2<i32>(_wgslsmith_div_i32(-2147483647i, 23551i), ~0i)), firstLeadingBit(max(vec2<i32>(69306i, 24362i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -46680i), vec2<i32>(-1i, u_input.a)))), vec2<i32>(func_4(vec4<u32>(u_input.d, 55463u, u_input.b.x, 99163u), 1390f, vec4<u32>(38923u, u_input.b.x, u_input.b.x, 1u)).e.x & 2147483647i, _wgslsmith_mult_i32(u_input.c, countOneBits(-11727i)))));
    global0 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<i32>(_wgslsmith_mod_i32(1i, 16034i), var_1.x, u_input.c) | vec3<i32>(_wgslsmith_mult_i32(u_input.c, u_input.a), _wgslsmith_sub_i32(1i, -10025i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 37377i, u_input.c), vec3<i32>(u_input.a, 0i, -11384i)))));
}

