struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(775f)));
}

fn func_2(arg_0: Struct_5, arg_1: f32) -> f32 {
    var var_0 = Struct_2(arg_0.b.x, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.b.wxw, vec3<f32>(arg_0.b.x, 295f, arg_1)) + vec3<f32>(-126f, arg_0.b.x, _wgslsmith_f_op_f32(select(380f, arg_0.b.x, true)))), arg_0.b.xxz, u_input.a), Struct_1(arg_0.b.yyy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-629f, 792f, arg_1)))), _wgslsmith_sub_i32(arg_0.a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(43086i, arg_0.a, 0i), vec3<i32>(-1i, u_input.a, -2147483647i)), u_input.a)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(func_3(~var_0.c.c)), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), 728f))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-999f, arg_1, arg_0.b.x) - vec3<f32>(arg_1, var_0.b.b.x, -698f)), _wgslsmith_f_op_vec3_f32(ceil(arg_0.b.www))), vec3<f32>(527f, var_0.c.a.x, _wgslsmith_f_op_f32(var_0.b.b.x * arg_0.b.x))), -_wgslsmith_dot_vec2_i32(vec2<i32>(-6192i, arg_0.a), vec2<i32>(-1i, -24936i)) & 2147483647i), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.b)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(958f, var_0.a, arg_0.b.x)), arg_0.b.yzx), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, arg_0.b.x, var_0.c.b.x) - vec3<f32>(1510f, -114f, -146f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-759f, 1581f, 744f)), !vec3<bool>(arg_0.d.x, arg_0.d.x, true)))), -1i));
    var_0 = Struct_2(1000f, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_0.b.x, -227f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -113f))), 1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.b + vec3<f32>(arg_1, var_0.b.a.x, arg_0.b.x))), u_input.a), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.zwx)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.c.b), _wgslsmith_div_vec3_f32(var_0.b.b, vec3<f32>(var_0.b.b.x, -899f, arg_0.b.x)), arg_0.d.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(var_0.c.c)), _wgslsmith_f_op_f32(max(var_0.b.b.x, -1656f)), arg_0.b.x) * _wgslsmith_div_vec3_f32(vec3<f32>(1069f, var_0.c.b.x, arg_1), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, -1108f, 727f), vec3<f32>(-329f, -103f, arg_1), arg_0.d.yxw)))), -countOneBits(_wgslsmith_mod_i32(u_input.a, var_0.c.c))));
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(~abs(max(1539i, arg_0.a)), _wgslsmith_mult_i32(var_0.b.c, var_0.b.c >> (4294967295u % 32u)) & u_input.a), -_wgslsmith_mod_vec2_i32(max(~vec2<i32>(var_0.b.c, u_input.a), abs(vec2<i32>(u_input.a, arg_0.a))), -(~vec2<i32>(14966i, arg_0.a))));
    var var_2 = countOneBits(vec4<i32>(-1i) * -vec4<i32>(reverseBits(u_input.a), ~u_input.a, 2147483647i, ~(-2147483647i)));
    return _wgslsmith_f_op_f32(trunc(1288f));
}

fn func_1() -> Struct_5 {
    let var_0 = vec2<i32>(-41802i, ~(-37893i));
    var var_1 = ~u_input.b.yx;
    var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(23409u, 60236u, 1u))), 2444u), vec3<u32>(max(12217u, var_1.x) | var_1.x, var_1.x, _wgslsmith_add_u32(~u_input.b.x, ~var_1.x))), ~1u);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(590f, -513f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_5(-1i, vec4<f32>(-1308f, -500f, 890f, 2381f), vec2<u32>(u_input.b.x, 1u), vec4<bool>(false, false, true, true)), -1932f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-167f, -1616f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-847f + 438f)))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(func_3(min(1i, 1i))), _wgslsmith_f_op_f32(f32(-1f) * -1212f), 122f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(602f - 965f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)), 674f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -521f)), 1536f))));
    var_1 = ~(_wgslsmith_mult_vec2_u32(u_input.b.xx, abs(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 3490u), vec2<u32>(var_1.x, 31450u)))) << (~min(u_input.b.xx, ~vec2<u32>(var_1.x, var_1.x)) % vec2<u32>(32u)));
    return Struct_5(_wgslsmith_div_i32(28753i, _wgslsmith_mult_i32(abs(-1i), 7352i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_2), var_2, vec4<bool>(true, true, true, true))))) + _wgslsmith_f_op_vec4_f32(-var_2)), _wgslsmith_clamp_vec2_u32(u_input.b.yx, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 33346u) >> (u_input.b.zx % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.b.yx, vec2<u32>(19978u, 0u))) & vec2<u32>(1u, firstLeadingBit(60267u)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 26717u), u_input.b.zy) ^ vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(42308u, var_1.x, 9849u, var_1.x), vec4<u32>(u_input.b.x, 130169u, u_input.b.x, 43259u)))), !vec4<bool>(abs(u_input.b.x) >= 0u, _wgslsmith_f_op_f32(f32(-1f) * -145f) < _wgslsmith_f_op_f32(var_2.x * 492f), false, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2117f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -828f) + _wgslsmith_f_op_f32(f32(-1f) * -132f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(1259f, 1199f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))))));
    var var_1 = countOneBits(_wgslsmith_div_vec4_i32((_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -37270i, u_input.a, u_input.a)) & vec4<i32>(u_input.a, u_input.a, 41992i, u_input.a)) & ~(~vec4<i32>(u_input.a, u_input.a, -1i, 2147483647i)), vec4<i32>(~32174i, reverseBits(-u_input.a), 1i, u_input.a)));
    var var_2 = func_1();
    var_1 = firstTrailingBit(vec4<i32>(-28451i, 1i, i32(-1i) * -2147483647i, u_input.a));
    var_2 = func_1();
    var var_3 = _wgslsmith_add_vec2_u32(var_2.c, firstTrailingBit(vec2<u32>(31327u, _wgslsmith_clamp_u32(~1464u, var_2.c.x & 4294967295u, 33293u))));
    var_1 = countOneBits(~(~firstLeadingBit(vec4<i32>(49033i, 1i, var_1.x, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(-firstTrailingBit(u_input.a))))), _wgslsmith_f_op_vec3_f32(step(var_2.b.wzy, var_2.b.xww)), _wgslsmith_sub_vec4_i32(select(firstTrailingBit(vec4<i32>(-1i, u_input.a, u_input.a, 19515i)), vec4<i32>(var_1.x, var_1.x, 37652i, u_input.a), vec4<bool>(var_2.d.x, var_2.d.x, var_2.d.x, false)) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.c.x, var_3.x, u_input.b.x, u_input.b.x), vec4<u32>(30119u, var_3.x, 0u, var_2.c.x)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.c.x, 18579u, 4294967295u, 52539u), vec4<u32>(var_3.x, 1u, 95401u, var_2.c.x), vec4<u32>(73946u, var_3.x, 8521u, 45297u))) % vec4<u32>(32u)), vec4<i32>(u_input.a, (var_2.a >> (0u % 32u)) | countOneBits(-1i), _wgslsmith_sub_i32(firstLeadingBit(-23948i), 1i), var_2.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(u_input.b.x ^ 1u), 43582u, 0u), u_input.b), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(firstTrailingBit(var_2.a), var_2.a), -2147483647i), var_2.a));
}

