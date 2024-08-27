struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-194f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-861f))))))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -143f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(208f, 1010f))))));
    var var_1 = ~firstTrailingBit(-2147483647i & _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b, 1i), u_input.b));
    var_0 = 1f;
    return _wgslsmith_f_op_f32(1f * 1105f);
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(func_3(!select(vec2<bool>(true, true), vec2<bool>(true, u_input.b > -10843i), false)));
    let var_1 = all(select(vec3<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, true, true, true)) && true), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), true), (all(vec4<bool>(true, true, false, true)) && all(vec2<bool>(false, true))) || any(vec4<bool>(false, false, true, false))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 511f) - 113f)))), -1153f);
    var var_2 = Struct_1(max(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(1i, u_input.b, -2147483647i)) >> ((u_input.a.wyy << (vec3<u32>(4294967295u, u_input.a.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), min(-vec3<i32>(u_input.b, -2147483647i, u_input.b), firstLeadingBit(vec3<i32>(u_input.b, u_input.b, -1i)))), ~70694i), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -675f), _wgslsmith_div_f32(-177f, -1536f), 814f))), u_input.b | (_wgslsmith_clamp_i32(i32(-1i) * -2194i, _wgslsmith_mult_i32(1i, -1i), u_input.b >> (0u % 32u)) | u_input.b), -(1i ^ u_input.b) <= select(~1i, abs(u_input.b), ~0u <= u_input.a.x));
    var_2 = Struct_1((~var_2.a ^ (~23402i << (reverseBits(u_input.a.x) % 32u))) & -5496i, _wgslsmith_div_vec3_f32(vec3<f32>(-783f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(497f)), var_2.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b.x)))), vec3<f32>(-1173f, var_2.b.x, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(var_2.b.x * var_2.b.x)))), ~(-47007i), true);
    return Struct_3(Struct_2(vec3<i32>(-1i, ~u_input.b, (var_2.c & -64870i) >> (~u_input.a.x % 32u))), Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(reverseBits(var_2.c), _wgslsmith_mod_i32(1i, u_input.b), select(21387i, -2147483647i, var_2.d)), ~vec3<i32>(var_2.c, 1i, u_input.b))));
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -876f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-364f)))))));
    let var_2 = Struct_1(-1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1846f, -328f, -1359f))), ~(-2147483647i), all(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true)));
    let var_3 = Struct_4(var_0.a.a.x & 2147483647i, !(!(!select(vec4<bool>(true, true, false, var_2.d), vec4<bool>(var_2.d, var_2.d, false, false), var_2.d))), u_input.a.x, vec4<u32>(~_wgslsmith_div_u32(countOneBits(u_input.a.x), 6873u), _wgslsmith_sub_u32(firstLeadingBit(~u_input.a.x), 4294967295u), u_input.a.x, 1293u), func_2().a);
    let var_4 = -vec2<i32>(_wgslsmith_clamp_i32(var_2.c, 8400i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a, 59068i), vec2<i32>(u_input.b, 0i)) << (_wgslsmith_mult_u32(var_3.c, u_input.a.x) % 32u)), _wgslsmith_add_i32(select(u_input.b, 1i, true) >> (u_input.a.x % 32u), -7830i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + -1464f) * _wgslsmith_f_op_f32(var_2.b.x * var_2.b.x)))) + var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.zx;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-792f - 2185f)) + _wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(vec3<i32>(u_input.b, 18461i, u_input.b)), Struct_2(vec3<i32>(1i, u_input.b, 0i)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1096f * _wgslsmith_f_op_f32(abs(1462f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1000f, 1133f)), _wgslsmith_f_op_f32(abs(543f))))))));
    let var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(_wgslsmith_div_u32(4294967295u, 1u)), u_input.a.x, var_0.x), ~vec3<u32>(var_0.x, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 33927u))), 9143u, max(u_input.a.x, _wgslsmith_add_u32(~u_input.a.x, ~_wgslsmith_mod_u32(4294967295u, u_input.a.x))));
    let var_3 = !(_wgslsmith_f_op_f32(var_1 + var_1) > var_1);
    let var_4 = func_2();
    var var_5 = ~_wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(firstTrailingBit(var_4.b.a), max(var_4.a.a, var_4.a.a)), max(var_4.b.a, var_4.b.a));
    var_5 = u_input.b ^ firstTrailingBit(~(~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2, _wgslsmith_f_op_f32(min(var_1, var_1)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))));
}

