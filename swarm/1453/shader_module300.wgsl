struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: Struct_4) -> f32 {
    var var_0 = Struct_1(arg_3.a.x);
    var_0 = Struct_1(-57544i);
    var var_1 = countOneBits(u_input.b.x >> (~(~u_input.b.x >> (abs(0u) % 32u)) % 32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1219f, 749f, -734f, 490f))) - vec4<f32>(891f, 968f, 1048f, -138f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-396f, 129f, 744f, -779f))), select(arg_0, vec4<bool>(arg_1.b.x, arg_3.b.x, arg_3.b.x, arg_1.b.x), var_0.a < -38487i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(143f, -1000f, -960f, -1000f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-103f, -673f, 2071f, 339f))))))));
    let var_3 = arg_3.a;
    return var_2.x;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_4) -> vec2<i32> {
    let var_0 = ~countOneBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_3.a.x, 13802i, u_input.c), countOneBits(vec3<i32>(arg_3.a.x, 2147483647i, arg_3.a.x)) >> (~u_input.b.xxz % vec3<u32>(32u))));
    let var_1 = vec2<i32>(var_0, _wgslsmith_mod_i32(_wgslsmith_add_i32(var_0, _wgslsmith_clamp_i32(-u_input.a, 2147483647i, 11129i)), -2147483647i));
    let var_2 = _wgslsmith_dot_vec2_u32(u_input.b.yz, firstLeadingBit(vec2<u32>(~8191u, u_input.b.x))) >= arg_2;
    let var_3 = Struct_1(~(-arg_3.a.x >> (~1u % 32u)) << (((1u << (0u % 32u)) ^ ~(~arg_2)) % 32u));
    var var_4 = Struct_2(arg_3.b.x);
    return -vec2<i32>(abs(firstTrailingBit(arg_3.a.x)), -(_wgslsmith_dot_vec2_i32(arg_3.a.zy, vec2<i32>(2147483647i, var_3.a)) >> (select(arg_2, 57388u, var_4.a) % 32u)));
}

fn func_2(arg_0: Struct_3) -> f32 {
    let var_0 = 4294967295u;
    let var_1 = u_input.b.yzw | vec3<u32>(~firstTrailingBit(var_0), _wgslsmith_div_u32(abs(u_input.b.x), _wgslsmith_add_u32(~var_0, 4294967295u)), _wgslsmith_mod_u32(firstTrailingBit(1u), var_0));
    let var_2 = func_4(_wgslsmith_f_op_f32(func_3(vec4<bool>(arg_0.b.a, arg_0.a.a, true, true), Struct_4(abs(vec3<i32>(1i, 2147483647i, 1i)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, arg_0.b.a), vec3<bool>(false, arg_0.b.a, true))), vec2<u32>(var_0, 1u), Struct_4(vec3<i32>(-1i, u_input.a, u_input.a), !vec3<bool>(false, arg_0.a.a, false)))), Struct_3(arg_0.a, arg_0.b), 1u, Struct_4(vec3<i32>(-1i, u_input.a, -1i), !(!vec3<bool>(false, arg_0.b.a, false)))) & _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(~12693i, 0i)), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-1i, 2147483647i), ~vec2<i32>(2147483647i, 9327i), vec2<i32>(-1965i, u_input.a)), firstLeadingBit(vec2<i32>(1i, 1i))));
    let var_3 = ~(~(~(~(~u_input.b.wy))));
    let var_4 = arg_0;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -416f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1439f, -722f) * _wgslsmith_f_op_f32(max(-410f, -1354f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(346f))))))));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-167f * -663f), _wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(false), Struct_2(true))))) - vec2<f32>(_wgslsmith_f_op_f32(-994f - -2474f), _wgslsmith_f_op_f32(step(-181f, 214f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -438f) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1127f, var_0.x), _wgslsmith_f_op_f32(ceil(-616f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -220f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-766f, var_0.x)))) - vec2<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -720f))))));
    let var_1 = min(u_input.b.x, u_input.b.x);
    var var_2 = vec4<bool>(true, true, true, true);
    return StorageBuffer(-2147483647i, ~var_1, firstTrailingBit(max(~(-vec4<i32>(1i, -1i, 48612i, -1i)), firstTrailingBit(-vec4<i32>(27604i, u_input.a, u_input.a, -45168i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 1220f, -425f, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -983f, 1000f, var_0.x))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 480f, -2359f, -609f), vec4<f32>(var_0.x, -887f, var_0.x, -1597f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<u32>(~(_wgslsmith_div_u32(74005u, u_input.b.x) >> (_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 1u) % 32u)), ~u_input.b.x), ~reverseBits(~vec2<u32>(u_input.b.x, u_input.b.x)), false);
    let var_1 = -(select(vec2<i32>(1i, abs(0i)), -vec2<i32>(u_input.a, -31448i), true | select(true, false, true)) ^ ~max(vec2<i32>(u_input.a, 1i), vec2<i32>(2147483647i, u_input.a)));
    var var_2 = ~(var_0.x << (_wgslsmith_mod_u32(u_input.b.x, 73178u) % 32u));
    let var_3 = _wgslsmith_f_op_f32(step(-1523f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-678f + -532f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1079f))))))));
    let var_4 = vec3<f32>(744f, 414f, -1434f);
    var var_5 = vec3<u32>(49916u, abs(~_wgslsmith_mod_u32(52650u, var_0.x)) | ~u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 18134u, u_input.b.x), u_input.b.xxy), u_input.b.wzz), 1u));
    let x = u_input.a;
    s_output = func_1();
}

