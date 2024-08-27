struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: vec2<bool>) -> bool {
    var var_0 = reverseBits(~_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, arg_2, arg_2), _wgslsmith_div_vec3_u32(vec3<u32>(arg_2, arg_2, arg_2), vec3<u32>(25626u, arg_2, arg_2)))) & countOneBits(vec3<u32>(~120230u, _wgslsmith_mod_u32(reverseBits(arg_2), 4294967295u), arg_2));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(538f, 1000f, 576f, 1000f)), vec4<f32>(1005f, -1000f, -668f, 1417f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 848f, -105f, -671f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 747f, -1000f, -634f))), !vec4<bool>(false, arg_3.x, false, arg_3.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(520f, -1000f, -725f, 1083f), vec4<f32>(237f, -628f, 555f, 219f), arg_3.x)))))));
    var_0 = ~vec3<u32>(4294967295u, 48248u, select(abs(1u), 4294967295u, any(select(arg_3, arg_3, vec2<bool>(arg_3.x, arg_3.x)))));
    var var_2 = vec4<bool>(arg_3.x, arg_3.x, true, false);
    var_2 = vec4<bool>(any(vec4<bool>(all(select(vec4<bool>(false, var_2.x, false, true), vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(true, var_2.x, arg_3.x, false))), all(select(vec4<bool>(arg_3.x, var_2.x, false, var_2.x), vec4<bool>(true, true, true, false), vec4<bool>(arg_3.x, false, var_2.x, var_2.x))), true, true)), false, true, !(_wgslsmith_f_op_f32(-1664f + _wgslsmith_f_op_f32(step(var_1.x, var_1.x))) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(122f, 1095f, var_2.x)), var_1.x))));
    return true & arg_3.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> vec2<i32> {
    let var_0 = ~(~max(_wgslsmith_mult_u32(1u, ~0u), max(min(0u, 90413u), abs(0u))));
    let var_1 = vec4<bool>(false, _wgslsmith_clamp_i32(u_input.a, _wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_add_i32(u_input.a, u_input.a)), _wgslsmith_mod_i32(0i, firstTrailingBit(32396i))) == arg_0.d.a.x, any(vec4<bool>((arg_0.e.x != arg_0.d.a.x) & (u_input.a != u_input.a), select(arg_0.c.a.x <= 13852i, true, arg_1.x | arg_1.x), any(!arg_1), func_3(arg_0.d, firstTrailingBit(16492i), var_0, select(arg_1.wx, vec2<bool>(false, true), vec2<bool>(true, false))))), arg_1.x);
    let var_2 = Struct_1(arg_0.c.a << (vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(23721u, 4294967295u, var_0, var_0), vec4<u32>(4294967295u, 1u, var_0, 53393u)), var_0), ~(~var_0), _wgslsmith_sub_u32(select(var_0, var_0, true), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(22782u, 50924u))), 0u) % vec4<u32>(32u)));
    let var_3 = Struct_1(vec4<i32>(var_2.a.x & arg_0.e.x, -2147483647i, _wgslsmith_mod_i32(arg_0.a.x >> (var_0 % 32u), -1i) | _wgslsmith_mult_i32(arg_0.d.a.x, firstLeadingBit(2147483647i)), 1i));
    var var_4 = arg_0;
    return vec2<i32>(max(-_wgslsmith_add_i32(countOneBits(-2147483647i), _wgslsmith_add_i32(var_4.c.a.x, var_4.d.a.x)), -1i), arg_0.c.a.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = -func_4(Struct_2(firstLeadingBit(firstLeadingBit(vec4<i32>(2147483647i, -57954i, arg_0.x, -74202i))), -2803f, Struct_1(reverseBits(vec4<i32>(0i, arg_0.x, -2147483647i, u_input.a))), Struct_1(vec4<i32>(-2147483647i, -1i, 23458i, 2147483647i) ^ vec4<i32>(arg_1.x, 47474i, u_input.a, 15898i)), ~select(vec4<i32>(arg_1.x, arg_0.x, 5128i, -44542i), vec4<i32>(u_input.a, -45736i, arg_1.x, -2147483647i), vec4<bool>(true, false, true, false))), vec4<bool>(true, !func_3(Struct_1(vec4<i32>(arg_1.x, 2147483647i, -7144i, u_input.a)), u_input.a, 67524u, vec2<bool>(true, false)), func_3(Struct_1(vec4<i32>(u_input.a, -73883i, arg_1.x, arg_1.x)), -38947i, 1u, vec2<bool>(false, true)), true));
    let var_1 = select(vec3<bool>(true, true, true), select(vec3<bool>(24055i == -var_0.x, any(vec2<bool>(true, true)), all(vec2<bool>(true, true))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), true), vec3<bool>(_wgslsmith_add_u32(1u, 35406u) >= select(42640u, 4294967295u, true), true, true | all(vec3<bool>(false, true, false)))), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)));
    let var_2 = 4294967295u;
    var var_3 = Struct_1(-_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, 1i, u_input.a, u_input.a) ^ -vec4<i32>(25673i, arg_0.x, arg_0.x, var_0.x), select(abs(vec4<i32>(-9750i, var_0.x, 0i, arg_1.x)), ~vec4<i32>(var_0.x, arg_1.x, 1i, -1i), true)));
    var var_4 = Struct_2(var_3.a, -1368f, Struct_1(abs(var_3.a ^ min(vec4<i32>(-1i, 1i, u_input.a, var_0.x), var_3.a))), Struct_1(vec4<i32>(arg_1.x, select(countOneBits(arg_0.x), abs(-1i), var_1.x), _wgslsmith_clamp_i32(-1i, -1i, -var_0.x), -20986i)), var_3.a);
    return Struct_2(~(~var_3.a), var_4.b, var_4.d, var_4.c, _wgslsmith_div_vec4_i32(-var_4.d.a, select(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_0.x, 1189i, var_3.a.x), vec4<i32>(var_0.x, arg_1.x, 2147483647i, var_4.e.x)), abs(vec4<i32>(2147483647i, arg_1.x, -6695i, 9477i)), !(!vec4<bool>(false, false, true, var_1.x)))));
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = arg_0.c.a;
    var_0 = -vec4<i32>(1i, u_input.a, _wgslsmith_mult_i32(arg_0.d.a.x, 5397i), var_0.x) >> (vec4<u32>(~_wgslsmith_mult_u32(13972u, 17465u), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(29010u, 1u, 1u, 77996u), vec4<u32>(75594u, 1u, 23022u, 4294967295u)) & ~71650u), _wgslsmith_mod_u32(firstLeadingBit(1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 2643u, 25314u), vec3<u32>(56859u, 2813u, 1u))), 1u) % vec4<u32>(32u));
    var_0 = vec4<i32>(16267i, select(0i, ~_wgslsmith_div_i32(0i, 0i ^ arg_0.e.x), !all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true))), -(-8459i ^ arg_0.c.a.x), i32(-1i) * -min(54194i, ~u_input.a));
    var var_1 = 0u;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * _wgslsmith_f_op_f32(-arg_0.b)), 568f, 2470f))));
    return var_0.x;
}

fn func_6(arg_0: vec4<i32>, arg_1: u32) -> Struct_2 {
    var var_0 = (((true || (2147483647i > arg_0.x)) || (~arg_1 < arg_1)) || true) != (any(vec4<bool>(true, false, select(false, true, true), false)) | false);
    var_0 = 1076f == _wgslsmith_f_op_f32(step(250f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-170f, _wgslsmith_f_op_f32(f32(-1f) * -703f))) + 734f)));
    var_0 = false;
    var_0 = !func_3(Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 7582i, arg_0.x, u_input.a), arg_0), arg_0)), -(~(~arg_0.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(24274u, 4294967295u, 0u, arg_1)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 70001u, 84005u, arg_1), vec4<u32>(0u, arg_1, 0u, 4294967295u))), ~reverseBits(vec4<u32>(arg_1, 4294967295u, 4294967295u, 4294967295u))), vec2<bool>(true, true));
    var var_1 = _wgslsmith_f_op_f32(-929f * -898f);
    return Struct_2(_wgslsmith_mult_vec4_i32(func_2(arg_0.wz, func_2(vec2<i32>(u_input.a, arg_0.x), arg_0.xzz).e.xzw).e, vec4<i32>(countOneBits(_wgslsmith_div_i32(arg_0.x, -1i)), 1i, firstTrailingBit(arg_0.x) >> ((arg_1 << (arg_1 % 32u)) % 32u), reverseBits(arg_0.x) >> (~0u % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -830f), Struct_1(vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, arg_0.x, u_input.a), vec4<i32>(-1i, u_input.a, -1i, -24822i)), min(func_5(Struct_2(arg_0, -718f, Struct_1(arg_0), Struct_1(vec4<i32>(u_input.a, arg_0.x, u_input.a, arg_0.x)), vec4<i32>(u_input.a, u_input.a, 14518i, u_input.a))), u_input.a), ~arg_0.x, _wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(arg_0.x, u_input.a)))), func_2(-vec2<i32>(2147483647i, ~u_input.a), vec3<i32>(arg_0.x, firstTrailingBit(53448i), 57598i)).c, arg_0);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec3<u32>) -> vec4<i32> {
    let var_0 = func_6(vec4<i32>(arg_0.x, min(reverseBits(arg_0.x), func_5(func_2(vec2<i32>(44385i, -4101i), arg_0.wzw))), ~min(select(-15842i, 0i, arg_1.x), 28438i), u_input.a), abs(_wgslsmith_sub_u32(arg_2.x, arg_2.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -166f, 390f, var_0.b) + _wgslsmith_f_op_vec4_f32(vec4<f32>(284f, -405f, var_0.b, -600f) * vec4<f32>(682f, var_0.b, -1609f, -1000f))))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = vec3<bool>(all(vec2<bool>(true, any(!vec4<bool>(true, arg_1.x, true, arg_1.x)))), false, true);
    return -firstTrailingBit(vec4<i32>(-2147483647i, -2147483647i, _wgslsmith_sub_i32(arg_0.x, -20016i), arg_0.x)) & countOneBits(vec4<i32>(_wgslsmith_add_i32(~u_input.a, i32(-1i) * -2147483647i), arg_0.x, abs(_wgslsmith_div_i32(-11920i, arg_0.x)), (-185i ^ arg_0.x) << (arg_2.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<i32>(~13491i, ~1i, _wgslsmith_sub_i32(u_input.a, 1i), ~_wgslsmith_mult_i32(reverseBits(u_input.a), u_input.a)), _wgslsmith_f_op_f32(trunc(1f)), Struct_1(-(-vec4<i32>(1i, -15763i, u_input.a, 5284i) & func_1(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec2<bool>(false, true), vec3<u32>(1u, 1u, 67053u)))), func_2(-func_2(vec2<i32>(u_input.a, u_input.a), vec3<i32>(u_input.a, 1i, u_input.a)).a.ww ^ ~abs(vec2<i32>(u_input.a, u_input.a)), vec3<i32>(-(u_input.a << (16156u % 32u)), -1i, -1i)).c, reverseBits(vec4<i32>(~7032i, ~26084i, -32452i, _wgslsmith_clamp_i32(-2147483647i, -33610i, 13704i) << (_wgslsmith_add_u32(72820u, 52243u) % 32u))));
    let var_1 = var_0.c;
    var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(~9221u, abs(49812u))), firstTrailingBit(~1u), min(countOneBits(_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(19288u, 8365u))), abs(select(1u, min(1u, 27986u), true))), 51416u);
    let var_3 = Struct_1(vec4<i32>(-1i, var_0.d.a.x, 1i, abs(-1i)));
    var var_4 = var_3;
    var_2 = _wgslsmith_sub_vec4_u32(~firstTrailingBit(vec4<u32>(0u, var_2.x, 0u, 119204u)) >> ((vec4<u32>(~var_2.x, ~var_2.x, _wgslsmith_div_u32(var_2.x, 1u), var_2.x) << (vec4<u32>(~4294967295u, 0u, ~var_2.x, var_2.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(1u, var_2.x, select(4294967295u, _wgslsmith_dot_vec2_u32(select(var_2.zx, vec2<u32>(var_2.x, 1u), false), vec2<u32>(var_2.x, 61090u)), true), 50306u));
    let var_5 = vec3<u32>(18421u, abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(~66890u, ~0u | _wgslsmith_dot_vec3_u32(var_2.zyx, var_2.yww), 7126u, _wgslsmith_dot_vec3_u32(select(var_2.wxw, vec3<u32>(4294967295u, 4294967295u, 1u), true), _wgslsmith_clamp_vec3_u32(var_2.wzw, var_2.xwx, var_2.zyz))), _wgslsmith_div_vec4_u32(~vec4<u32>(var_2.x, 0u, var_2.x, 0u), ~(~vec4<u32>(4294967295u, var_2.x, 41107u, 1u)))));
    var var_6 = _wgslsmith_f_op_f32(round(213f));
    let var_7 = select(vec4<bool>(select(true, true, false), !select(false, true, true), true, true), select(!vec4<bool>(true, all(vec4<bool>(false, true, true, false)), var_0.b > 1140f, true), !select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true), true), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))), var_0.b == _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.a.x, -11104i), vec2<i32>(2147483647i, 1i)), vec3<i32>(var_0.d.a.x, -879i, 29896i)).b - _wgslsmith_f_op_f32(-730f + _wgslsmith_f_op_f32(-var_0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~var_2.wy), var_0.b);
}

