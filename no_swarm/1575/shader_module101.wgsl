struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    let var_0 = Struct_2(Struct_1(43112i, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.b.x), abs(vec2<i32>(2147483647i, u_input.b.x))), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(37453u, 60138u, u_input.a.x, u_input.c.x)) << ((vec4<u32>(1u, u_input.a.x, 6052u, 1u) | vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, u_input.c.x)) % vec4<u32>(32u)), ~(~vec4<u32>(44206u, 38406u, u_input.a.x, 87644u))), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -1i), vec3<i32>(u_input.b.x, 76223i, u_input.b.x)), ~u_input.b, firstTrailingBit(vec3<i32>(-42419i, 2147483647i, -1i))), u_input.b, vec3<i32>(u_input.b.x, max(-11374i, u_input.b.x), 0i)), vec3<bool>(!(u_input.c.x < 29927u), false, all(vec3<bool>(true, true, true)))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, u_input.b.x), 2147483647i, u_input.b.x), u_input.b.x), false, Struct_1(u_input.b.x, u_input.b.zy, _wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.a.x, 0u), ~10130u), reverseBits(~(-u_input.b)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))));
    var var_1 = Struct_2(var_0.d, u_input.b.x, any(!var_0.d.e), var_0.d);
    var_1 = var_0;
    var var_2 = _wgslsmith_add_i32(_wgslsmith_mod_i32(~((var_1.a.a << (1u % 32u)) ^ _wgslsmith_dot_vec2_i32(var_0.a.b, vec2<i32>(var_1.b, 1i))), ~var_1.d.b.x), firstTrailingBit(~abs(-1i)) ^ _wgslsmith_mod_i32(u_input.b.x, firstLeadingBit(reverseBits(0i))));
    var_1 = Struct_2(Struct_1(var_0.d.d.x >> (var_1.a.c % 32u), abs(-var_0.a.b), ~min(var_0.d.c, 1u), vec3<i32>(1i, i32(-1i) * -u_input.b.x, firstLeadingBit(reverseBits(var_1.d.a))), select(vec3<bool>(false, !var_0.c, true), !select(vec3<bool>(var_0.a.e.x, false, true), var_0.d.e, var_1.a.e), vec3<bool>(true, var_0.a.e.x, false))), i32(-1i) * -1i, false, var_0.d);
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: i32, arg_3: bool) -> vec2<i32> {
    var var_0 = ~(~u_input.a.x);
    var var_1 = Struct_1(u_input.b.x, u_input.b.yx, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(159u, 67603u), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(27837u, 8971u, u_input.c.x, 6378u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 6386u)), vec4<u32>(~u_input.c.x, u_input.c.x, u_input.a.x << (33186u % 32u), reverseBits(1u)))), -arg_1, vec3<bool>(arg_3, arg_2 >= _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_1.x, -22492i), vec3<i32>(-2147483647i, u_input.b.x, -38633i)), _wgslsmith_div_u32(reverseBits(u_input.a.x), reverseBits(u_input.c.x)) > abs(u_input.c.x)));
    var var_2 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.a.x, ~u_input.a.x), ~(~u_input.a.yx & vec2<u32>(var_1.c, var_1.c)));
    var var_3 = -arg_1.x;
    let var_4 = ~_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.b.xy, vec2<i32>(u_input.b.x, -1i)), reverseBits(u_input.b.xy)), vec2<i32>(select(arg_1.x, ~(-2147483647i), !arg_3), _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.b.xy), var_1.b)), reverseBits(vec2<i32>(-arg_1.x, arg_1.x)));
    return var_4 & (~vec2<i32>(max(arg_2, 2147483647i), 1i) ^ var_1.d.zz);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(17927i, func_4(vec2<bool>(true, true), -_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.b.x) << (u_input.a % vec3<u32>(32u)), u_input.b), select(19768i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 2428i), u_input.b), any(vec4<bool>(true, true, true, true))), func_3()), u_input.c.x, vec3<i32>(_wgslsmith_add_i32(-abs(61245i), ~min(u_input.b.x, -79911i)), _wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(u_input.b.x, -5228i)), countOneBits(abs(u_input.b.x))), vec3<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)))));
    let var_1 = Struct_1(-_wgslsmith_mod_i32(-1i, 10598i), _wgslsmith_mod_vec2_i32(vec2<i32>(firstTrailingBit(u_input.b.x >> (u_input.c.x % 32u)), u_input.b.x), vec2<i32>(-_wgslsmith_mod_i32(0i, -1i), func_4(var_0.e.yz, u_input.b, _wgslsmith_clamp_i32(var_0.b.x, 26025i, -17585i), var_0.e.x).x)), u_input.a.x, -u_input.b, select(select(select(vec3<bool>(var_0.e.x, var_0.e.x, var_0.e.x), var_0.e, var_0.e.x), select(vec3<bool>(true, var_0.e.x, var_0.e.x), var_0.e, !vec3<bool>(false, false, var_0.e.x)), select(var_0.e, !var_0.e, var_0.e.x)), vec3<bool>(!all(var_0.e.xx), false, true), vec3<bool>(true, all(var_0.e.zx), !(!var_0.e.x))));
    let var_2 = Struct_2(Struct_1(-27721i, _wgslsmith_clamp_vec2_i32(u_input.b.zz, var_1.d.zx, ~countOneBits(vec2<i32>(1i, var_0.a))), _wgslsmith_dot_vec2_u32(u_input.c, u_input.a.zz | vec2<u32>(19063u, 0u)), firstLeadingBit(select(-vec3<i32>(var_0.b.x, var_0.d.x, var_1.d.x), _wgslsmith_sub_vec3_i32(var_0.d, var_0.d), !var_1.e.x)), !vec3<bool>(all(var_1.e), true, var_0.e.x)), 0i, ((var_1.d.x <= ~u_input.b.x) & (u_input.b.x != (i32(-1i) * -7499i))) | var_0.e.x, Struct_1(~abs(~var_0.b.x), min(var_1.b, _wgslsmith_add_vec2_i32(min(var_1.d.zx, var_0.b), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), vec2<i32>(var_1.b.x, 0i)))), _wgslsmith_add_u32(var_0.c, ~select(var_0.c, 46713u, var_1.e.x)), var_0.d, vec3<bool>(!var_1.e.x || var_1.e.x, var_1.e.x, func_3())));
    var_0 = var_2.a;
    var_0 = Struct_1(1i, vec2<i32>(-(u_input.b.x >> (var_0.c % 32u)), -15748i), 1u, -_wgslsmith_clamp_vec3_i32(vec3<i32>(reverseBits(-62051i), -var_1.a, ~var_2.d.d.x), vec3<i32>(func_4(var_0.e.yx, var_1.d, -2147483647i, false).x, 1i, -1i), select(vec3<i32>(-1i, var_2.a.d.x, 1i), -vec3<i32>(var_0.d.x, 63295i, var_2.b), select(var_2.a.e, var_2.a.e, var_1.e.x))), var_2.a.e);
    return Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(29260i, -2147483647i, 1i, var_0.b.x), vec4<i32>(var_0.b.x, 0i, var_0.d.x, -1464i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_2.a.b.x, -65216i, u_input.b.x, var_1.d.x), -vec4<i32>(var_0.d.x, 54768i, -1i, -2147483647i))), firstTrailingBit(vec4<i32>(-1i << (0u % 32u), _wgslsmith_mult_i32(0i, -56464i), i32(-1i) * -1i, var_1.a))), var_0.b, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x & var_1.c, 4294967295u), vec2<u32>(_wgslsmith_div_u32(14627u, 32272u), _wgslsmith_add_u32(1u, 0u))), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(select(abs(vec3<i32>(var_1.d.x, u_input.b.x, var_2.b)), var_0.d & vec3<i32>(var_0.a, 46222i, 35229i), var_2.c), vec3<i32>(2147483647i, 0i, var_1.a)), u_input.b), var_2.d.e);
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> vec3<i32> {
    let var_0 = func_2();
    let var_1 = var_0.e.x;
    return ~_wgslsmith_mult_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_2.a, -32395i, 2147483647i), min(u_input.b, var_0.d))), func_2().d);
}

fn func_5(arg_0: vec3<i32>, arg_1: i32, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(firstLeadingBit(~(-1i)), max(-u_input.b.zy, reverseBits(vec2<i32>(arg_0.x, 10417i))), u_input.a.x, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, _wgslsmith_div_i32(10002i, arg_0.x), ~24866i), -arg_0 | _wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_1, arg_0.x), vec3<i32>(-2147483647i, arg_1, u_input.b.x))), vec3<bool>(true, !any(vec2<bool>(false, true)), all(vec4<bool>(false, false, false, false)))), -4814i, any(select(vec4<bool>(false, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, false, false), func_3()))), func_2());
    var_0 = Struct_2(Struct_1(u_input.b.x, vec2<i32>(~(-31205i | arg_0.x), var_0.b & arg_0.x), min(_wgslsmith_mult_u32(~37312u, var_0.d.c), 0u), select(abs(vec3<i32>(-2147483647i, -59780i, arg_0.x)), -reverseBits(vec3<i32>(u_input.b.x, var_0.b, 16419i)), !select(vec3<bool>(true, false, false), vec3<bool>(true, var_0.a.e.x, var_0.a.e.x), false)), !var_0.d.e), -(~2147483647i), any(select(var_0.d.e, var_0.d.e, var_0.a.e)), func_2());
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, _wgslsmith_f_op_f32(ceil(352f)), _wgslsmith_f_op_f32(max(-321f, 453f)))));
    var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(-49859i, var_0.d.b.x, u_input.b.x, arg_1), vec4<i32>(arg_0.x, 0i, u_input.b.x, arg_1))), var_0.a.b, 13988u, arg_0 & -select(vec3<i32>(var_0.a.d.x, 12455i, arg_0.x), var_0.a.d, true), select(!vec3<bool>(true, false, var_0.d.e.x), select(select(vec3<bool>(var_0.d.e.x, var_0.a.e.x, true), var_0.a.e, var_0.c), vec3<bool>(var_0.d.e.x, var_0.d.e.x, false), false), any(vec2<bool>(true, true)))), var_0.b, !var_0.c, var_0.d);
    var_0 = Struct_2(var_0.d, var_0.a.b.x, var_0.d.e.x, var_0.a);
    return Struct_1(-35516i, -((vec2<i32>(-1i, -45171i) << (_wgslsmith_add_vec2_u32(u_input.c, u_input.c) % vec2<u32>(32u))) >> (select(countOneBits(u_input.c), vec2<u32>(u_input.a.x, 35139u), vec2<bool>(var_0.a.e.x, true)) % vec2<u32>(32u))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(88893u, u_input.c.x), ~(~var_0.d.c)), _wgslsmith_div_vec3_i32(~(abs(var_0.d.d) | _wgslsmith_div_vec3_i32(arg_0, arg_0)), vec3<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(u_input.b.x, arg_1)) & arg_0.x, firstLeadingBit(var_0.b))), !var_0.a.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(u_input.c);
    var var_1 = func_5(func_1(2147483647i, ~abs(vec4<u32>(0u, 24851u, var_0.x, 4294967295u) & vec4<u32>(u_input.c.x, var_0.x, 76476u, var_0.x)), Struct_1(abs(0i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), ~u_input.b.yy), ~_wgslsmith_mult_u32(0u, 3553u), u_input.b, vec3<bool>(true, true, true)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(false, true, false, false)), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false))), abs(u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-582f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(546f))))));
    var var_3 = func_2();
    var_3 = func_2();
    let var_4 = Struct_1(countOneBits(func_2().b.x), vec2<i32>(func_2().d.x, 0i), var_3.c, var_1.d, vec3<bool>(any(!var_1.e.xx), ((var_3.e.x && var_3.e.x) | true) || true, !all(var_3.e.xz)));
    var_2 = -1333f;
    let var_5 = 152f;
    var_3 = Struct_1(0i, abs(vec2<i32>(~(-46078i), ~0i)), ~select(u_input.a.x | var_1.c, ~var_0.x, true) >> (var_0.x % 32u), u_input.b, func_2().e);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1i) | var_3.b, vec2<i32>(u_input.b.x, var_3.b.x) ^ vec2<i32>(var_1.d.x, -47496i)) ^ -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5) - _wgslsmith_f_op_f32(floor(861f))) + _wgslsmith_f_op_f32(-var_5)) - var_5), vec4<f32>(-1094f, 1605f, var_5, -358f), var_3.b.x);
}

