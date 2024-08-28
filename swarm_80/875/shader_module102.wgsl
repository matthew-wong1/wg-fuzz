struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -245f;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1() -> i32 {
    return u_input.a;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<bool> {
    global0 = arg_1.b;
    global0 = _wgslsmith_f_op_f32(max(-1381f, -1734f));
    let var_0 = arg_1.a;
    let var_1 = Struct_2(true);
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(108f - _wgslsmith_f_op_f32(round(arg_1.b))), _wgslsmith_f_op_f32(sign(756f))));
    return vec4<bool>(!all(arg_2), arg_2.x, select(false, var_1.a, true), true);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_add_u32(abs(_wgslsmith_sub_u32(arg_3.b.x, ~4294967295u)) | abs(_wgslsmith_dot_vec2_u32(~u_input.c.xx, ~vec2<u32>(4294967295u, 0u))), max(~1u, 1532u));
    global0 = _wgslsmith_f_op_f32(min(-495f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1033f * 1167f))));
    return func_3(arg_3.b.yyx, Struct_1(-_wgslsmith_sub_i32(~u_input.d, -1867i), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-921f, _wgslsmith_f_op_f32(-1000f + -1371f)))), vec3<bool>((arg_2 ^ arg_2) >= arg_3.b.x, arg_1.x & true, arg_1.x)), !vec3<bool>(arg_3.c, false, true)).zwx;
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) * arg_0.x))));
    global0 = _wgslsmith_f_op_f32(-2193f - 1f);
    let var_0 = Struct_3(all(func_4(Struct_4(vec4<bool>(false, true, false, false), vec3<bool>(true, true, true), Struct_2(false), ~u_input.c.x), !func_3(vec3<u32>(0u, u_input.c.x, u_input.c.x), Struct_1(-42960i, -569f, vec3<bool>(false, true, false)), vec3<bool>(true, true, false)), select(u_input.c.x << (u_input.c.x % 32u), min(4294967295u, u_input.c.x), true), Struct_3(any(vec2<bool>(false, true)), min(vec4<u32>(63583u, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u)), true))), _wgslsmith_clamp_vec4_u32(select(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 52779u, u_input.c.x, 4294967295u)), ~vec4<u32>(4294967295u, u_input.c.x, 0u, u_input.c.x), ~vec4<u32>(0u, 4294967295u, u_input.c.x, 0u)), ~(~vec4<u32>(16957u, u_input.c.x, u_input.c.x, 4294967295u)), select(select(false, true, false), false, all(vec3<bool>(false, false, false)))), vec4<u32>(u_input.c.x ^ _wgslsmith_mult_u32(1u, 0u), 0u, 1u, u_input.c.x), vec4<u32>(1u, 1u, abs(abs(1u)), reverseBits(countOneBits(77625u)))), func_3(_wgslsmith_mult_vec3_u32(min(select(vec3<u32>(81704u, 17603u, 4294967295u), u_input.c, false), ~vec3<u32>(4294967295u, 1u, 1u)), vec3<u32>(countOneBits(0u), 1u, _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 34030u))), Struct_1(u_input.b, 1000f, func_4(Struct_4(vec4<bool>(false, true, true, false), vec3<bool>(true, false, true), Struct_2(false), u_input.c.x), vec4<bool>(false, true, true, true), 34116u, Struct_3(false, vec4<u32>(40888u, 23174u, 1u, u_input.c.x), false))), func_4(Struct_4(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), vec3<bool>(true, true, false), Struct_2(true), _wgslsmith_mult_u32(u_input.c.x, u_input.c.x)), vec4<bool>(true, true, true, true), u_input.c.x, Struct_3(11438i != u_input.b, ~vec4<u32>(11001u, 0u, u_input.c.x, 1u), any(vec2<bool>(false, true))))).x);
    let var_1 = !select(func_3(var_0.b.yxx, Struct_1(firstLeadingBit(-2147483647i), arg_0.x, select(vec3<bool>(var_0.a, var_0.c, true), vec3<bool>(true, true, var_0.c), var_0.c)), vec3<bool>(false, var_0.a, true)), !vec4<bool>(false, true, true, func_3(var_0.b.wyx, Struct_1(u_input.a, arg_0.x, vec3<bool>(true, false, var_0.c)), vec3<bool>(false, true, true)).x), var_0.c);
    global0 = _wgslsmith_f_op_f32(-arg_0.x);
    return Struct_3(-305f > arg_0.x, vec4<u32>(20198u & min(abs(u_input.c.x), var_0.b.x), var_0.b.x, 0u, firstTrailingBit(u_input.c.x)), any(select(vec3<bool>(true || var_0.c, true, var_0.a), vec3<bool>(any(var_1), true, select(var_1.x, var_1.x, false)), var_1.zxx)));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(!vec4<bool>(arg_2.c, all(vec4<bool>(arg_2.a, false, true, arg_2.a)), !(true & arg_3.a), -656f < _wgslsmith_f_op_f32(floor(-1121f))), vec3<bool>(any(func_3(arg_3.b.zwx, Struct_1(23725i, -1000f, vec3<bool>(arg_2.a, false, arg_2.c)), !vec3<bool>(arg_2.a, arg_2.c, arg_3.a)).xz), arg_3.a, arg_2.a), Struct_2(false), _wgslsmith_mod_u32(43748u, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c.x, arg_2.b.x ^ 86066u), firstLeadingBit(firstLeadingBit(arg_2.b.xy)))));
    let var_1 = var_0;
    global0 = 1f;
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-913f, -820f) - -2322f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1299f + 1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -885f) - _wgslsmith_f_op_f32(round(602f)))))));
    let var_2 = -1000f;
    return Struct_1(arg_1.x, 148f, vec3<bool>(true, var_1.b.x, !(_wgslsmith_f_op_f32(var_2 + var_2) > _wgslsmith_f_op_f32(-var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b & ~33353i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(725f - -245f) - 983f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f - -1760f), 1f))), !vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true | all(vec4<bool>(true, false, false, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1558f, 770f), vec2<f32>(487f, -2114f))))))));
    let var_2 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b, -2147483647i, func_1(), 1i), firstTrailingBit(-vec4<i32>(_wgslsmith_add_i32(29413i, var_0.a), var_0.a, firstTrailingBit(1i), -39420i)), vec4<i32>(-1i, ~(-2147483647i), 27621i, -55158i));
    let var_3 = func_5(abs(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c.x, 6745u, u_input.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c.x, 1u, 39681u), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 50171u))))), vec3<i32>(firstLeadingBit(u_input.a), -11905i, u_input.d), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1298f, _wgslsmith_f_op_f32(f32(-1f) * -188f), -326f, var_1.x))), Struct_3(!(!any(vec2<bool>(var_0.c.x, false))), _wgslsmith_mult_vec4_u32(abs(select(vec4<u32>(u_input.c.x, 36942u, 4294967295u, 4294967295u), vec4<u32>(0u, u_input.c.x, u_input.c.x, 44615u), var_0.c.x)), ~firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(floor(-1157f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -245f))));
    var var_4 = vec4<f32>(var_3.b, _wgslsmith_f_op_f32(var_1.x + -1926f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b))), var_1.x))), _wgslsmith_f_op_f32(-140f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(664f + _wgslsmith_f_op_f32(-var_3.b)) + 1000f)));
    var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 183f, var_3.b, var_1.x)))))))));
    let var_5 = Struct_4(vec4<bool>(false, var_0.c.x, var_3.c.x, false), !func_5(vec4<u32>(u_input.c.x, min(u_input.c.x, 0u), reverseBits(u_input.c.x), 1u), var_2.xxz, func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1549f, var_0.b, -515f, 858f), vec4<f32>(var_4.x, var_3.b, -208f, -102f), false))), Struct_3(!var_0.c.x, vec4<u32>(17161u, u_input.c.x, u_input.c.x, u_input.c.x), var_0.c.x)).c, Struct_2(var_3.c.x & var_0.c.x), ~firstLeadingBit(13024u << (u_input.c.x % 32u)) >> (1u % 32u));
    let var_6 = vec3<u32>(var_5.d, ~_wgslsmith_div_u32(~var_5.d, 1u), ~firstTrailingBit(u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1194f, _wgslsmith_f_op_vec3_f32(sign(var_4.zzy)));
}

