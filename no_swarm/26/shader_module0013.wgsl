struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = arg_0;
    let var_1 = Struct_2(~u_input.c, vec2<bool>(true, true), _wgslsmith_sub_vec3_i32(~(-vec3<i32>(u_input.b, 2147483647i, u_input.c) ^ ~vec3<i32>(-32244i, u_input.c, 1i)), vec3<i32>(-(i32(-1i) * -2147483647i), select(u_input.c, 1i, true) << (abs(64683u) % 32u), _wgslsmith_add_i32(8622i, u_input.b) & 2147483647i)), _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 3496u)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(11547u, min(~u_input.a, 1u))));
    var_0 = arg_0;
    var_0 = Struct_1(arg_0.a, 104f, 146f);
    let var_2 = -981f;
    return vec3<bool>(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 1141u), u_input.a, firstTrailingBit(var_1.d.x)) != _wgslsmith_clamp_u32(var_1.d.x, select(reverseBits(u_input.a), var_1.d.x >> (39288u % 32u), !var_1.b.x), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.x, var_1.d.x, u_input.a, 4294967295u), vec4<u32>(4294967295u, var_1.d.x, var_1.d.x, 4294967295u)))), !var_1.b.x, true);
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: f32, arg_3: vec2<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_clamp_i32(~firstLeadingBit(~15018i), min(u_input.c, u_input.c) << (_wgslsmith_clamp_u32(~4583u, 0u, countOneBits(u_input.a)) % 32u), firstLeadingBit(abs(0i))) < countOneBits(countOneBits(firstTrailingBit(~(-29974i))));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1272f, arg_2))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))))))));
    let var_2 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(999f)) + var_1.x), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x)), 591f)))));
    var var_3 = all(vec4<bool>(var_0 | true, !any(arg_0), any(vec2<bool>(any(vec4<bool>(true, true, var_0, true)), true)), !func_3(Struct_1(vec4<f32>(arg_2, var_2.x, var_2.x, var_1.x), 879f, 662f)).x));
    var_3 = true;
    return !vec3<bool>(!select(false, any(vec4<bool>(true, arg_0.x, false, arg_3.x)), false), !arg_1, any(func_3(Struct_1(var_2, var_1.x, 916f))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<u32>(16535u, 4294967295u, 0u);
    var var_1 = select(vec3<bool>(true, true, true), func_4(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), all(func_3(Struct_1(vec4<f32>(560f, -720f, 1068f, -1731f), 1125f, 662f))) || false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -545f))) + _wgslsmith_div_f32(-1203f, _wgslsmith_f_op_f32(select(-1376f, 1000f, false)))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), func_3(Struct_1(vec4<f32>(1149f, -1159f, -621f, -2033f), -1275f, -505f)).yx, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    var_1 = vec3<bool>(true, false, false);
    let var_2 = ~(vec4<i32>(2147483647i, firstLeadingBit(-18222i) >> (_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(1u, u_input.a, 19290u)) % 32u), min(~u_input.c, u_input.b), select(~u_input.b, u_input.b & u_input.c, var_1.x)) ^ abs(_wgslsmith_add_vec4_i32(vec4<i32>(0i, -1535i, -12490i, 0i), vec4<i32>(u_input.c, -10402i, u_input.b, 0i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(11462u, u_input.a, 12300u, 1u), vec4<u32>(1u, 4294967295u, 49401u, 0u)) % vec4<u32>(32u))));
    var_1 = vec3<bool>(!all(vec4<bool>(func_4(vec3<bool>(true, var_1.x, true), var_1.x, -1191f, var_1.zx).x, any(vec4<bool>(var_1.x, var_1.x, true, true)), !var_1.x, var_1.x)), true, !(!var_1.x));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-461f, _wgslsmith_f_op_f32(trunc(-749f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(235f, 1230f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1421f + 375f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -862f) + -1126f) + _wgslsmith_f_op_f32(-383f - _wgslsmith_f_op_f32(-1129f * 1305f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-341f * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-425f)))), (-1023f > _wgslsmith_f_op_f32(round(-389f))) == var_1.x)));
}

fn func_5(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(~_wgslsmith_mult_i32(firstLeadingBit(~u_input.b), _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.c, u_input.c, -44925i, u_input.c), vec4<i32>(u_input.b, -65392i, u_input.c, u_input.c)), min(vec4<i32>(16177i, u_input.c, u_input.b, u_input.c), vec4<i32>(u_input.c, 18419i, u_input.b, u_input.b)))), !(!vec2<bool>(any(vec3<bool>(false, true, true)), u_input.a != 51045u)), select(select(_wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.b, 1i, 6381i), vec3<i32>(69995i, u_input.c, -2147483647i), vec3<bool>(true, true, false)), abs(vec3<i32>(u_input.c, -2147483647i, u_input.b))), select(-vec3<i32>(u_input.b, 1i, u_input.c), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, 10441i, 40454i), vec3<i32>(29077i, u_input.c, u_input.c)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), vec3<bool>(true, true, true)), vec3<i32>(-u_input.c, _wgslsmith_sub_i32(u_input.c, -48761i), u_input.c) >> (max(~vec3<u32>(135915u, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, u_input.a) >> (vec3<u32>(0u, u_input.a, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), func_3(arg_0).yy, vec2<bool>(true, true)))), vec2<u32>(_wgslsmith_add_u32(1u, u_input.a), max(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, 56134u, 1u), vec4<u32>(1u, 1u, u_input.a, 78488u))), _wgslsmith_mult_u32(~u_input.a, u_input.a))));
    let var_1 = -_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_0.c.x, var_0.c.x), abs(var_0.a), abs(u_input.b), -var_0.c.x), vec4<i32>(-1i) * -vec4<i32>(-22518i, var_0.c.x, 0i, -20746i)), firstTrailingBit(reverseBits(vec4<i32>(u_input.c, 0i, u_input.b, 37362i))));
    var var_2 = 4294967295u;
    var var_3 = Struct_2(~(~(u_input.b << (var_0.d.x % 32u))), vec2<bool>(!(!(-378f >= arg_0.c)), var_0.b.x), firstLeadingBit(vec3<i32>(select(var_1.x, -35192i, true) >> (_wgslsmith_div_u32(1u, 68757u) % 32u), ~(var_1.x >> (1u % 32u)), var_0.c.x)), abs(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(var_0.d, var_0.d), ~vec2<u32>(329u, u_input.a))) & ~var_0.d);
    let var_4 = 2147483647i;
    return (-var_4 << (_wgslsmith_sub_u32(var_3.d.x, ~(~7874u)) % 32u)) > ~(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-63429i, u_input.b)), firstLeadingBit(var_1.wz)) << ((u_input.a & (1u ^ var_3.d.x)) % 32u));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-882f, 777f, 1617f, -1000f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(719f, -620f, 1000f, -403f), vec4<f32>(1779f, 928f, 242f, -1186f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(884f, -764f, 3138f, 1090f)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true))))));
    var var_1 = func_5(func_2());
    var_1 = false;
    var_1 = func_4(vec3<bool>(true | any(vec3<bool>(false, false, false)), func_3(func_2()).x, all(vec4<bool>(true, true, true, true))), all(!vec3<bool>(func_5(Struct_1(var_0, var_0.x, 163f)), false, select(false, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(687f)))), select(func_4(select(vec3<bool>(true, true, true), func_4(vec3<bool>(true, true, true), true, 1000f, vec2<bool>(false, false)), any(vec3<bool>(false, true, true))), true, 2432f, vec2<bool>(true, true)).yz, vec2<bool>(true, true), vec2<bool>(true, true))).x;
    var var_2 = Struct_2(-1i, vec2<bool>(any(vec4<bool>(any(vec3<bool>(true, true, false)), all(vec2<bool>(false, true)), func_4(vec3<bool>(true, false, false), false, var_0.x, vec2<bool>(false, false)).x, true)), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), any(vec2<bool>(false, true))))), vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(u_input.b, u_input.c), -11213i), countOneBits(~(~vec2<u32>(1u, u_input.a)) ^ abs(~vec2<u32>(u_input.a, 65u))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(~(vec3<u32>(1650u, reverseBits(u_input.a), ~9805u) << (select(_wgslsmith_add_vec3_u32(vec3<u32>(15437u, u_input.a, 8753u), vec3<u32>(7689u, u_input.a, u_input.a)), ~vec3<u32>(u_input.a, 4294967295u, 10374u), true) % vec3<u32>(32u))), ~abs(select(~vec3<u32>(1u, 71872u, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(59710u, 1526u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<bool>(true, true, false))));
    let var_1 = 1542f;
    var var_2 = func_1();
    var var_3 = func_2();
    var_3 = func_2();
    let var_4 = abs(_wgslsmith_mult_i32(-1i, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(-16275i);
}

