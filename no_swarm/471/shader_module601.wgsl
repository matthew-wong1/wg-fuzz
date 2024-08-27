struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-695f - -1341f);
    var_0 = 292f;
    var_0 = -451f;
    let var_1 = Struct_2(Struct_1(firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(2147483647i, -1i), -84432i, firstTrailingBit(-24484i), reverseBits(0i))), true, 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1026f, 1000f, -1061f) * vec3<f32>(-1650f, -485f, 820f)), vec3<f32>(-1049f, 433f, 1779f))))), _wgslsmith_div_u32(0u, _wgslsmith_sub_u32(firstLeadingBit(4294967295u), ~_wgslsmith_add_u32(u_input.a.x, arg_0))), Struct_1(-vec4<i32>(i32(-1i) * -17013i, _wgslsmith_mod_i32(0i, -1i), abs(18123i), -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(333f)) + -535f) <= 344f, arg_0 & _wgslsmith_div_u32(u_input.a.x, ~16236u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-612f, 813f, -709f)))), true))), select(vec3<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a.x, 2825u, 31882u), vec3<u32>(arg_0, u_input.a.x, arg_0)), vec3<u32>(4294967295u, 4294967295u, u_input.a.x)), _wgslsmith_mult_u32(~1u, _wgslsmith_div_u32(30019u, u_input.a.x)), arg_0), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, u_input.a.x, 1u), vec3<u32>(arg_0, 267u, 31774u)) >> (vec3<u32>(0u, arg_0, 0u) % vec3<u32>(32u))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(684f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2242f, var_1.a.d.x)), var_1.a.d.x)))));
    return firstTrailingBit(~vec4<i32>(1i, ~firstLeadingBit(-72336i), (-43098i >> (0u % 32u)) | ~var_1.a.a.x, 2147483647i));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(-191f, arg_0));
    var_0 = _wgslsmith_f_op_f32(arg_0 * -183f);
    let var_1 = u_input.a;
    return Struct_1(-func_3(0u), false, 4294967295u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1320f, _wgslsmith_f_op_f32(f32(-1f) * -835f), true)) + arg_0), 148f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, arg_0))), -725f, true))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(805f))))))), u_input.a.x, Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 86203i >> (u_input.a.x % 32u), _wgslsmith_add_i32(12563i, 7963i), ~1i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(122i, 24110i, 25761i, -60918i), vec4<i32>(-3920i, -2147483647i, -21656i, -34678i))), true, u_input.a.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(130f, -1052f, 1605f) - vec3<f32>(-1049f, 564f, -1916f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -630f), _wgslsmith_div_f32(219f, 942f), -684f), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true))))), vec3<u32>(0u, _wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(46828u, u_input.a.x, 1u, 20821u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u))), countOneBits(_wgslsmith_mod_u32(~18390u, u_input.a.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(trunc(var_0.a.d.x))) + vec2<f32>(1237f, var_0.c.d.x))));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(126f)) + -250f) * -234f)));
    let var_4 = ~vec3<u32>(_wgslsmith_mult_u32(select(var_0.b, ~68219u, true), _wgslsmith_mult_u32(4294967295u, min(u_input.a.x, 2440u))), func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x - var_3)))).c, var_0.d.x);
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(447f + _wgslsmith_f_op_f32(469f - -1845f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(1f)), 383f, true | (all(vec4<bool>(false, false, false, true)) || false))) - _wgslsmith_f_op_f32(-1000f * 971f));
    var var_1 = Struct_1(vec4<i32>(1i, i32(-1i) * -2147483647i, reverseBits(abs(select(-2147483647i, -2147483647i, true))), min(-(~(-2147483647i)), -_wgslsmith_sub_i32(-41660i, 0i))), any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec3<bool>(true, false, true)), true, all(vec4<bool>(false, false, false, true)), all(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true))), _wgslsmith_div_u32(1u, u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0), -586f, _wgslsmith_f_op_f32(var_0 + -1407f)))));
    let var_2 = Struct_2(func_1(), _wgslsmith_clamp_u32(_wgslsmith_div_u32(firstTrailingBit(u_input.a.x), var_1.c), _wgslsmith_div_u32(_wgslsmith_div_u32(~4294967295u, _wgslsmith_clamp_u32(var_1.c, 118232u, var_1.c)), ~var_1.c), abs(u_input.a.x)), func_2(var_0), ~vec3<u32>(_wgslsmith_clamp_u32(func_2(671f).c, abs(var_1.c), ~4294967295u), ~select(1u, u_input.a.x, false), _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), vec3<u32>(var_1.c, u_input.a.x, u_input.a.x)))));
    var var_3 = var_2;
    var_1 = Struct_1(~(_wgslsmith_mult_vec4_i32(var_3.a.a, vec4<i32>(var_3.c.a.x, var_1.a.x, -6261i, 2147483647i)) >> (vec4<u32>(1u, ~var_2.a.c, abs(var_1.c), u_input.a.x) % vec4<u32>(32u))), any(vec2<bool>(false, true)), (countOneBits(~4294967295u) ^ (_wgslsmith_sub_u32(var_3.c.c, u_input.a.x) >> (~var_3.d.x % 32u))) & reverseBits(reverseBits(~18622u)), vec3<f32>(_wgslsmith_f_op_f32(max(var_1.d.x, var_3.a.d.x)), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(318f * var_3.a.d.x)))), _wgslsmith_f_op_f32(-1000f * -108f)));
    let var_4 = Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-123f * -516f))), _wgslsmith_add_u32(_wgslsmith_add_u32(firstTrailingBit(1u), 1u) | 0u, _wgslsmith_mult_u32(_wgslsmith_div_u32(reverseBits(0u), var_2.c.c), u_input.a.x)), var_3.a, ~var_2.d);
    var var_5 = -(var_3.a.a.xyx << (_wgslsmith_div_vec3_u32(vec3<u32>(var_2.b, _wgslsmith_mod_u32(var_3.a.c, 15974u), 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_3.a.c, 37871u) | vec3<u32>(var_2.b, var_3.b, var_1.c), ~var_4.d, vec3<u32>(var_2.d.x, 58686u, var_2.b))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.zz, _wgslsmith_mult_vec4_i32(var_1.a, vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(43343i, var_5.x, 2147483647i, 0i), vec4<i32>(-19716i, 2147483647i, -27763i, 2147483647i)), 28715i, var_3.c.a.x, var_2.a.a.x)), func_2(var_1.d.x).a, _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_mod_i32(735i, var_2.c.a.x), _wgslsmith_mod_i32(var_5.x, var_1.a.x), 50061i, -6028i), var_4.c.a));
}

