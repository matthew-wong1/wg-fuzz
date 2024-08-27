struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = firstTrailingBit(countOneBits(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(39320u, u_input.a, 4294967295u), vec3<u32>(23889u, arg_0.a.x, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 0u, 59702u), vec3<u32>(u_input.a, u_input.a, u_input.a)), arg_0.a.x)));
    var_0 = abs(vec3<u32>(959u, ~(arg_0.a.x & 0u), u_input.a)) >> (vec3<u32>(min(min(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, 0u, arg_0.a.x), vec4<u32>(47206u, 1602u, 77069u, u_input.a)), u_input.a), min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.a.x, 1u), vec3<u32>(22672u, u_input.a, arg_0.a.x)))), _wgslsmith_mult_u32(~arg_0.a.x, ~var_0.x) | 1u, u_input.a) % vec3<u32>(32u));
    let var_1 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(firstLeadingBit(~vec3<u32>(arg_0.a.x, u_input.a, 33650u)), vec3<u32>(1u, arg_0.a.x, 13133u) ^ ~vec3<u32>(arg_0.a.x, 4294967295u, 4294967295u)), reverseBits((vec3<u32>(u_input.a, 60914u, 4294967295u) >> (vec3<u32>(9268u, u_input.a, var_0.x) % vec3<u32>(32u))) >> (firstTrailingBit(vec3<u32>(arg_0.a.x, u_input.a, u_input.a)) % vec3<u32>(32u))));
    var_0 = reverseBits(vec3<u32>(~1u, _wgslsmith_mod_u32(arg_0.a.x, var_1), ~87u));
    var_0 = vec3<u32>(~(~(~1u)), 9256u, 38585u) & _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(arg_0.a.x, arg_0.a.x, var_0.x), vec3<u32>(var_1, 2849u, 59040u) >> (vec3<u32>(u_input.a, u_input.a, 30076u) % vec3<u32>(32u)), vec3<bool>(arg_0.c, arg_0.c, true)), vec3<u32>(firstLeadingBit(17818u), 1u, 1u)), vec3<u32>(~max(var_0.x, var_0.x), reverseBits(~2153u), u_input.a));
    return !(arg_0.c && !any(vec3<bool>(true, true, true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    let var_0 = !(!select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0.c, false, false), !vec3<bool>(arg_1.c, arg_1.c, false), arg_1.c), !select(vec3<bool>(arg_0.c, arg_0.c, arg_1.c), vec3<bool>(false, true, arg_0.c), vec3<bool>(true, true, arg_1.c))));
    var var_1 = Struct_2(select(~vec2<u32>(~arg_1.a.x, ~9875u), ~abs(~arg_1.a), all(var_0)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, select(vec4<i32>(-2147483647i, -12811i, -2147483647i, -12132i), vec4<i32>(2147483647i, 29354i, 42134i, 0i), vec4<bool>(false, arg_1.c, true, var_0.x))), vec4<i32>(arg_2, -2454i, min(u_input.c.x, u_input.d), arg_2)) << (vec4<u32>(arg_0.a.x, min(min(arg_1.a.x, u_input.a), max(arg_0.a.x, 69917u)), select(max(arg_1.a.x, arg_1.a.x), reverseBits(u_input.a), func_3(Struct_1(vec2<u32>(arg_0.a.x, 4294967295u), -581f, true))), reverseBits(~1u)) % vec4<u32>(32u)));
    let var_2 = firstLeadingBit(firstTrailingBit(reverseBits(abs(~vec2<i32>(arg_2, 0i)))));
    var_1 = Struct_2(reverseBits(abs(~vec2<u32>(17013u, 1u)) & ~(~vec2<u32>(u_input.a, arg_1.a.x))), vec4<i32>(abs(arg_2), reverseBits(u_input.b.x | ~0i), u_input.c.x, u_input.c.x));
    var var_3 = arg_0.a.x;
    return true;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec4<i32>) -> vec2<u32> {
    let var_0 = vec4<bool>(!(!all(vec2<bool>(false, true))), func_4(Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 1u) ^ vec2<u32>(u_input.a, u_input.a), countOneBits(vec2<u32>(29648u, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1458f, arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)), false), Struct_1(vec2<u32>(u_input.a, 0u), 172f, func_3(Struct_1(vec2<u32>(u_input.a, 66708u), arg_0.x, true))), ~max(u_input.c.x & u_input.b.x, arg_1.x)), true, !(true | select(false, true, false)) || true);
    var var_1 = Struct_2(~(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(74296u, 30704u)) >> (~countOneBits(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), u_input.c);
    var_1 = Struct_2(_wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.a, var_1.a), max(vec2<u32>(4294967295u, var_1.a.x), vec2<u32>(66278u, 26017u))), _wgslsmith_clamp_vec2_u32(~var_1.a, var_1.a, var_1.a), firstTrailingBit(var_1.a)), u_input.c);
    var var_2 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1u, firstTrailingBit(13801u)), ~var_1.a.x), vec2<u32>(1u, max(select(var_1.a.x, 4294967295u, false), ~10175u))), -836f, any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)));
    var_1 = Struct_2(var_2.a, abs(abs(vec4<i32>(var_1.b.x, 0i, arg_2.x, var_1.b.x)) >> (~(~vec4<u32>(4294967295u, u_input.a, 42001u, var_1.a.x)) % vec4<u32>(32u))));
    return var_1.a;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<u32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(16154u, 20361u)), arg_0.xx)), arg_0.yw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 1000f) - 532f), true);
    var var_1 = vec3<i32>(u_input.d, _wgslsmith_mod_i32(u_input.b.x, 16941i), _wgslsmith_mult_i32(-8881i >> (arg_0.x % 32u), ~18093i) & 41242i) >> (vec3<u32>(~(u_input.a | ~4783u), ~(~44354u) << (arg_0.x % 32u), _wgslsmith_mult_u32(_wgslsmith_add_u32(26475u, arg_1.x) >> (~4294967295u % 32u), _wgslsmith_dot_vec4_u32(select(arg_0, vec4<u32>(51430u, 4294967295u, 4294967295u, u_input.a), true), reverseBits(arg_0)))) % vec3<u32>(32u));
    var var_2 = Struct_2(abs(~vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.yw, vec2<u32>(4294967295u, 54482u)), ~arg_1.x)), vec4<i32>(u_input.d, ~(~(i32(-1i) * -55153i)), -2147483647i, abs(-var_1.x)));
    let var_3 = vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_0.b)), -925f);
    let var_4 = abs(firstLeadingBit(arg_0));
    return max(abs(~var_2.a.x), 4294967295u);
}

fn func_1() -> bool {
    var var_0 = func_5(~(vec4<u32>(4294967295u, 0u, u_input.a, 20265u) | reverseBits(vec4<u32>(u_input.a, 0u, u_input.a, 0u))) >> (firstTrailingBit(vec4<u32>(~83404u, 17616u, 1u, 4294967295u << (u_input.a % 32u))) % vec4<u32>(32u)), ~func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(643f, 375f)), -u_input.c, u_input.c << (~vec4<u32>(55594u, 35738u, u_input.a, u_input.a) % vec4<u32>(32u))));
    var_0 = ~_wgslsmith_sub_u32(u_input.a, 0u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, ~33660u, _wgslsmith_div_u32(18782u, 4294967295u), _wgslsmith_div_u32(1910u, u_input.a)) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a) | vec4<u32>(u_input.a, 57539u, 5465u, 1u), ~vec4<u32>(u_input.a, u_input.a, 0u, 55767u)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(66722u, 0u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 4173u) % vec4<u32>(32u)), vec4<u32>(27744u, 1u, u_input.a, 4294967295u)), vec4<u32>(~0u, _wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a & u_input.a, 1u))) % 32u);
    var var_1 = -u_input.d;
    var var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, 23539u, u_input.a)), 1u), ~_wgslsmith_mult_vec2_u32(min(vec2<u32>(u_input.a, 0u), vec2<u32>(0u, 4294967295u)), func_2(vec2<f32>(1798f, -548f), vec4<i32>(u_input.d, u_input.d, u_input.d, 0i), vec4<i32>(13343i, u_input.c.x, 18738i, u_input.c.x))));
    var_1 = 2147483647i;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(select(~vec4<u32>(_wgslsmith_add_u32(u_input.a, 0u), 68175u, u_input.a, 51049u), ~abs(_wgslsmith_div_vec4_u32(vec4<u32>(18879u, 4294967295u, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, 46045u, 21210u))), vec4<bool>(true, false, true, !func_1())), max(vec4<u32>(u_input.a, ~99901u >> (u_input.a % 32u), select(58847u, ~u_input.a, true), func_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-735f, -893f))), vec4<i32>(1i, u_input.d, u_input.d, u_input.c.x), vec4<i32>(u_input.b.x, u_input.d, u_input.b.x, u_input.b.x)).x), vec4<u32>(firstLeadingBit(~39953u), _wgslsmith_sub_u32(u_input.a, 1u), u_input.a, _wgslsmith_mult_u32(u_input.a, ~u_input.a))));
    let var_1 = select(!(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))), vec2<bool>(true, !select(true, true, true)), false);
    let var_2 = Struct_2(countOneBits(reverseBits(~vec2<u32>(u_input.a, u_input.a))) & ((firstLeadingBit(vec2<u32>(u_input.a, 1u)) >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u))) >> (vec2<u32>(var_0.x, min(0u, var_0.x)) % vec2<u32>(32u))), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.d, max(-1i, u_input.c.x), reverseBits(3220i), -u_input.d), abs(-countOneBits(vec4<i32>(u_input.b.x, -4573i, 1i, u_input.d)))));
    var var_3 = var_2.a;
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -976f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(519f - -980f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_f_op_f32(-1686f * 306f))), _wgslsmith_f_op_f32(f32(-1f) * -826f)) - vec4<f32>(_wgslsmith_div_f32(470f, 171f), -599f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-424f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-247f)))))));
    var_3 = reverseBits(abs(~var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_3.x, -202f);
}

