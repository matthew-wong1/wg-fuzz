struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<i32> {
    let var_0 = vec2<bool>(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), any(vec4<bool>(false, false, true, false)))), true);
    let var_1 = ~u_input.a;
    let var_2 = Struct_1(vec2<i32>(u_input.c | ~(~u_input.a), -_wgslsmith_mod_i32(0i, var_1)), var_0, ~(~(~vec3<i32>(u_input.c, 41525i, 37242i))) & -firstLeadingBit(vec3<i32>(u_input.a, -1i, var_1)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -356f)), -662f));
    let var_3 = Struct_1(vec2<i32>(~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-24782i, 14209i, 16003i, -9611i), vec4<i32>(var_1, 1i, 20207i, 27905i)), firstLeadingBit(vec4<i32>(2147483647i, 2147483647i, -1i, 2147483647i))), -80930i), select(select(!select(vec2<bool>(var_0.x, false), var_0, var_2.b), var_2.b, true), vec2<bool>(var_2.b.x, _wgslsmith_f_op_f32(892f * 1562f) >= _wgslsmith_f_op_f32(var_2.d.x - var_2.d.x)), vec2<bool>(var_2.b.x, true)), vec3<i32>(max(-firstTrailingBit(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i) & vec2<i32>(u_input.b, var_1), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, var_2.c.x), var_2.c.zy))), _wgslsmith_clamp_i32(firstTrailingBit(-49474i), _wgslsmith_mod_i32(u_input.c, var_1), countOneBits(-1i)) << (~(~1u) % 32u), ~var_2.c.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(var_2.d)))));
    let var_4 = !var_2.b.x;
    return reverseBits(vec2<i32>(-1i, firstTrailingBit(reverseBits(-2147483647i))));
}

fn func_2(arg_0: vec2<i32>) -> vec2<i32> {
    var var_0 = Struct_1(func_3(), select(vec2<bool>(false, false), vec2<bool>(true, true), true), ~vec3<i32>(_wgslsmith_add_i32(-u_input.b, ~u_input.b), -_wgslsmith_sub_i32(1i, 2147483647i), 1i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1644f, 646f)))))));
    let var_1 = false;
    var var_2 = Struct_1(-vec2<i32>(-arg_0.x, var_0.c.x), vec2<bool>(var_0.b.x, var_0.b.x), var_0.c, var_0.d);
    let var_3 = Struct_1(select(abs(var_0.c.yz) >> (select(vec2<u32>(1u, 1u), ~vec2<u32>(29125u, 0u), var_2.b) % vec2<u32>(32u)), vec2<i32>(var_0.c.x, _wgslsmith_mult_i32(-1i, var_0.a.x)), vec2<bool>(false || (var_1 & var_2.b.x), var_1)), var_2.b, var_2.c, vec2<f32>(_wgslsmith_f_op_f32(select(125f, 525f, any(vec3<bool>(true, true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d.x), 1667f)));
    var_2 = Struct_1(var_3.c.zz, vec2<bool>(var_0.b.x, var_2.b.x), firstLeadingBit(var_2.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.x, _wgslsmith_f_op_f32(1553f - var_3.d.x))) * vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(floor(var_0.d.x)))));
    return (var_3.c.xx << (firstLeadingBit(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(172700u, 0u), vec2<u32>(4294967295u, 41983u)))) % vec2<u32>(32u))) ^ var_2.c.yy;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(arg_0.a ^ -vec2<i32>(~arg_3.a.x, _wgslsmith_sub_i32(-22695i, arg_0.a.x)), !arg_3.b, vec3<i32>(_wgslsmith_clamp_i32(select(13664i, 13650i, any(vec4<bool>(true, true, true, true))), countOneBits(_wgslsmith_mult_i32(2147483647i, arg_0.a.x)), arg_0.c.x), _wgslsmith_div_i32(i32(-1i) * -2147483647i, (arg_1 & 0i) | -22953i), 0i), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1601f * 479f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.d.x + -705f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d.x)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> Struct_1 {
    var var_0 = func_4(Struct_1(max(firstLeadingBit(vec2<i32>(u_input.b, arg_0.x)), func_2(select(arg_0.yx, arg_0.zz, vec2<bool>(false, true)))), vec2<bool>(any(vec3<bool>(true, true, false)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), vec3<i32>(2147483647i, u_input.c, ~(-1i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(1051f, arg_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1137f, 1464f) + vec2<f32>(-970f, arg_1))))), 0i, select(!vec3<bool>(true, true, any(vec3<bool>(false, true, false))), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), Struct_1(vec2<i32>(~_wgslsmith_mult_i32(1i, 2147483647i), _wgslsmith_mult_i32(0i, ~(-5536i))), vec2<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), select(false, true, select(true, false, false))), vec3<i32>(reverseBits(_wgslsmith_sub_i32(22783i, u_input.a)), -arg_0.x, max(2147483647i, ~0i)), vec2<f32>(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(arg_1 + 651f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(abs(-1023f))))));
    return Struct_1(arg_0.wy << (~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(14616u, 18228u, 4294967295u, 1u), vec4<u32>(4847u, 845u, 28157u, 12799u)), _wgslsmith_clamp_u32(0u, 1u, 7766u)) % vec2<u32>(32u)), vec2<bool>(!(!var_0.b.x), false), vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(arg_0.wyw, vec3<i32>(arg_0.x, arg_0.x, 1i)), -arg_0.zzz), vec2<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b, -7272i, -1i, 2147483647i), -select(vec4<i32>(u_input.a, 24781i, u_input.c, -1588i), vec4<i32>(-2147483647i, u_input.c, u_input.b, u_input.c), vec4<bool>(true, true, false, false))), ~(~(vec4<i32>(-64899i, -2147483647i, u_input.b, 8339i) & vec4<i32>(u_input.c, u_input.b, u_input.b, u_input.c))), true), _wgslsmith_f_op_f32(-210f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_0 = Struct_1(-firstTrailingBit(var_0.c.xx | _wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.x, var_0.c.x), var_0.c.zz)), !var_0.b, var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(455f, var_0.d.x)), _wgslsmith_div_vec2_f32(var_0.d, var_0.d)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(287f, -1209f) + var_0.d))))));
    let var_1 = 1u;
    var_0 = Struct_1(vec2<i32>(43633i >> ((_wgslsmith_div_u32(var_1, 4294967295u) ^ 4294967295u) % 32u), ~u_input.a), !var_0.b, firstLeadingBit(-var_0.c), var_0.d);
    let var_2 = var_0.d;
    var var_3 = true;
    var var_4 = Struct_1(_wgslsmith_mod_vec2_i32(max(var_0.c.zy, vec2<i32>(-57454i, _wgslsmith_div_i32(-1i, var_0.a.x))), _wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.c), func_4(Struct_1(var_0.a, vec2<bool>(false, true), vec3<i32>(u_input.c, var_0.a.x, var_0.a.x), var_0.d), u_input.b, !vec3<bool>(var_0.b.x, true, var_0.b.x), func_1(vec4<i32>(2147483647i, 0i, var_0.c.x, u_input.b), -866f)).c.xx)), vec2<bool>(2070u != (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 4294967295u, var_1, 46137u), vec4<u32>(var_1, 62345u, 1u, var_1)) ^ ~var_1), all(!vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x))), reverseBits(_wgslsmith_sub_vec3_i32(-vec3<i32>(var_0.c.x, 16817i, var_0.c.x), vec3<i32>(0i, u_input.c, -40342i) | vec3<i32>(-2147483647i, u_input.c, var_0.a.x))) << (~min(vec3<u32>(1u, 18742u, 1u), reverseBits(vec3<u32>(46477u, 1u, var_1))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1040f, var_0.d.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(119f, 1000f)) - vec2<f32>(var_0.d.x, var_2.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), 1449f))));
    let x = u_input.a;
    s_output = StorageBuffer(-830f);
}

