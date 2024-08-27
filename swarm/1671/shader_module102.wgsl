struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: i32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> vec2<i32> {
    var var_0 = Struct_1(vec4<i32>(arg_0, _wgslsmith_mult_i32(reverseBits(-55166i), firstTrailingBit(2147483647i)), 0i, arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1484f), arg_0, ~select(-vec3<i32>(2147483647i, arg_0, 14185i) >> (countOneBits(vec3<u32>(2953u, 0u, u_input.a.x)) % vec3<u32>(32u)), select(vec3<i32>(arg_1.x, 8349i, arg_0) | vec3<i32>(-1i, -1i, -50139i), arg_1 >> (vec3<u32>(3201u, 53643u, u_input.a.x) % vec3<u32>(32u)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), vec3<bool>(true, true, true)), countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(12601u, u_input.a.x, u_input.a.x, 29445u), select(vec4<u32>(49345u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1841u, 1u), true))));
    var_0 = Struct_1(var_0.a, var_0.b, arg_1.x, _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(-1i) * -arg_1), countOneBits(vec3<i32>(arg_0, arg_1.x, 2147483647i) >> (select(var_0.e.wwz, var_0.e.xzy, true) % vec3<u32>(32u)))), var_0.e);
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(ceil(-212f)))), -firstLeadingBit(2147483647i), vec3<i32>(_wgslsmith_add_i32(arg_1.x, -2147483647i), var_0.c, _wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(var_0.a, var_0.a), 2147483647i)), var_0.e);
    let var_1 = Struct_1(select(firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(-39012i, 1i, 31188i, 2147483647i)), -_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -32838i, var_0.a.x, var_0.a.x), var_0.a), vec4<i32>(arg_1.x, var_0.c, var_0.d.x, 8406i) << (vec4<u32>(var_0.e.x, 4294967295u, u_input.a.x, var_0.e.x) % vec4<u32>(32u))), true), var_0.b, arg_1.x, firstTrailingBit(min(arg_1, -vec3<i32>(15982i, arg_1.x, arg_0)) & var_0.d), vec4<u32>(0u, 38232u, 81319u, _wgslsmith_mod_u32(4294967295u, 4294967295u)));
    var var_2 = select(abs(~_wgslsmith_mult_u32(reverseBits(1u), u_input.a.x)), u_input.a.x & var_1.e.x, !(!(!(-1i != var_1.d.x))));
    return _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1.yx, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.x, -29318i) << (var_1.e.xz % vec2<u32>(32u)), vec2<i32>(305i, var_1.a.x)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.e.x, 0u), ~vec2<u32>(u_input.a.x, var_0.e.x)) % vec2<u32>(32u))), ~abs(arg_1.yx));
}

fn func_4(arg_0: vec2<i32>) -> i32 {
    var var_0 = vec2<u32>(u_input.a.x, reverseBits(~29628u));
    var_0 = vec2<u32>(1u, 9492u);
    var_0 = vec2<u32>(firstTrailingBit(0u), ~u_input.a.x >> (~(~(~4294967295u)) % 32u));
    var var_1 = Struct_2(Struct_1(-(~vec4<i32>(arg_0.x, 1i, -20902i, arg_0.x)) >> (vec4<u32>(~var_0.x, 1u, firstTrailingBit(u_input.a.x), ~u_input.a.x) % vec4<u32>(32u)), 1672f, ~abs(arg_0.x), min(-vec3<i32>(4644i, 0i, arg_0.x), abs(select(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(2147483647i, -2147483647i, arg_0.x), vec3<bool>(false, false, false)))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(58022u, var_0.x, var_0.x, u_input.a.x), ~vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x))), vec4<u32>(u_input.a.x, var_0.x, firstTrailingBit(countOneBits(select(var_0.x, 73651u, true))), ~var_0.x), Struct_1(vec4<i32>(-36668i, select(arg_0.x, firstLeadingBit(1i), arg_0.x <= arg_0.x), _wgslsmith_mult_i32(reverseBits(1i), 0i), -(arg_0.x & arg_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1168f, -186f)), _wgslsmith_f_op_f32(-285f * 686f))), -999f)), arg_0.x >> (0u % 32u), reverseBits(firstLeadingBit(vec3<i32>(1i, 7829i, -40863i))), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, var_0.x, var_0.x, var_0.x) >> (abs(vec4<u32>(72747u, u_input.a.x, 1u, 0u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 61197u, u_input.a.x, var_0.x), vec4<u32>(u_input.a.x, 1u, 4294967295u, 1u)) << (~vec4<u32>(4294967295u, var_0.x, u_input.a.x, 30455u) % vec4<u32>(32u)))), Struct_1(vec4<i32>(-2147483647i, 49614i, -32972i, -7422i), _wgslsmith_f_op_f32(-119f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(727f, -1000f) - -393f)), arg_0.x, vec3<i32>(8417i, ~_wgslsmith_div_i32(-32242i, -4190i), arg_0.x), ~(~firstLeadingBit(vec4<u32>(u_input.a.x, 33827u, u_input.a.x, var_0.x)))), arg_0.x);
    var_0 = u_input.a;
    return ~_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_add_i32(-30267i, -var_1.e)), i32(-1i) * -17293i);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(1i), func_4(func_3(33669i, vec3<i32>(25786i, 1i, -29375i))), _wgslsmith_sub_i32(-43926i, countOneBits(0i)), 0i), -min(~vec4<i32>(-8335i, -2147483647i, 1i, 2147483647i), vec4<i32>(0i, -1921i, -9244i, 15680i))), ~firstLeadingBit(-12029i), ((~(-2147483647i) << (u_input.a.x % 32u)) | -43890i) << (1u % 32u));
    let var_1 = any(select(vec3<bool>(any(select(vec4<bool>(false, false, arg_0.x, true), vec4<bool>(true, false, arg_0.x, true), arg_0.x)), (var_0.x ^ 0i) < var_0.x, all(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, false, arg_0.x)))), !vec3<bool>(false, arg_0.x, any(vec3<bool>(arg_0.x, arg_0.x, false))), arg_0.x));
    let var_2 = Struct_3(Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0 >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_0.x, -1i), vec3<i32>(-32516i, var_0.x, -2147483647i), var_0)), -(var_0.x >> (u_input.a.x % 32u)), i32(-1i) * -var_0.x, var_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1339f + _wgslsmith_f_op_f32(sign(1704f))), _wgslsmith_f_op_f32(-226f * -677f), arg_0.x)), 53161i | var_0.x, vec3<i32>(_wgslsmith_mult_i32(0i, -var_0.x), _wgslsmith_add_i32(firstLeadingBit(51750i), 2737i), 10719i << (1u % 32u)), vec4<u32>(~(u_input.a.x ^ 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a.x), firstLeadingBit(vec3<u32>(4294967295u, 10367u, u_input.a.x))), ~21473u, ~4294967295u)));
    var var_3 = 1114f;
    var var_4 = var_2.a;
    return Struct_1(vec4<i32>(0i, 38638i, firstLeadingBit(-1i << (var_4.e.x % 32u)), func_3(firstLeadingBit(_wgslsmith_add_i32(1534i, var_0.x)), var_0).x), 1301f, var_0.x, ~_wgslsmith_mod_vec3_i32(vec3<i32>(~var_2.a.d.x, ~(-58959i), _wgslsmith_div_i32(var_0.x, 3054i)), ~(-var_0)), var_4.e);
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = -44666i;
    let var_1 = Struct_3(Struct_1(~_wgslsmith_clamp_vec4_i32(arg_0.a, arg_0.a, vec4<i32>(arg_0.d.x, arg_0.d.x, -1i, var_0)) ^ arg_0.a, _wgslsmith_f_op_f32(round(461f)), -(~var_0), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(19616i, var_0, var_0) >> (vec3<u32>(u_input.a.x, arg_0.e.x, 0u) % vec3<u32>(32u))), ~vec3<i32>(arg_0.a.x, arg_0.c, arg_0.c)), select(select(~vec4<u32>(48682u, u_input.a.x, 43198u, 1u), ~arg_0.e, vec4<bool>(true, true, true, true)), ~select(arg_0.e, vec4<u32>(30207u, 53768u, 4294967295u, 1u), vec4<bool>(true, false, true, true)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))))));
    let var_2 = arg_0.e.x;
    var var_3 = max(~(-(vec2<i32>(var_0, arg_0.a.x) & -vec2<i32>(var_0, arg_0.c))), ~(-(firstTrailingBit(arg_0.a.ww) & (vec2<i32>(var_0, -29522i) & vec2<i32>(var_0, 2147483647i)))));
    var var_4 = select(1u, var_2 & _wgslsmith_mod_u32(arg_0.e.x >> (var_2 % 32u), 4294967295u), _wgslsmith_add_u32(firstLeadingBit(arg_0.e.x), u_input.a.x) < 1u) | 4294967295u;
    return Struct_2(arg_0, firstTrailingBit(var_1.a.e), Struct_1(abs(countOneBits(_wgslsmith_add_vec4_i32(arg_0.a, vec4<i32>(var_3.x, -2147483647i, 0i, var_1.a.d.x)))), var_1.a.b, firstTrailingBit(~var_3.x) & -65680i, arg_0.a.wwz, arg_0.e >> (abs(_wgslsmith_mod_vec4_u32(arg_0.e, arg_0.e)) % vec4<u32>(32u))), func_2(vec3<bool>(any(vec2<bool>(true, true)), select(true, true, true), _wgslsmith_dot_vec4_i32(arg_0.a, arg_0.a) <= -var_1.a.d.x)), ~select(firstLeadingBit(abs(var_3.x)), var_0, (-2147483647i < var_0) && true));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(arg_1);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, var_0.a.b, arg_0.a.b) - vec3<f32>(1140f, arg_0.a.b, arg_0.c.b)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-147f, 1000f, 321f), vec3<f32>(var_0.a.b, arg_0.a.b, var_0.a.b))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(213f, 1692f, arg_0.c.b))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(309f, -431f))), _wgslsmith_f_op_f32(arg_1.b - 589f), _wgslsmith_f_op_f32(-2395f + _wgslsmith_f_op_f32(-var_0.a.b)))));
    let var_2 = Struct_3(arg_0.a);
    var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(352f * var_1.x), -641f, var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, 1000f, var_1.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, arg_1.b, var_0.a.b)))))));
    var_1 = vec3<f32>(arg_0.d.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_2.a.b)))))), 426f);
    return func_5(func_2(!vec3<bool>(false, all(vec2<bool>(false, true)), true))).c;
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(select(true, !(select(true, true, true) & (arg_0.b != arg_2.b)), true), true, true, all(vec4<bool>(true, true, true, true)) || select(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), func_6(Struct_2(arg_2, vec4<u32>(21570u, arg_2.e.x, arg_2.e.x, 4294967295u), Struct_1(vec4<i32>(arg_1, 1i, 2147483647i, arg_1), arg_0.b, arg_1, vec3<i32>(arg_1, arg_0.c, -1i), vec4<u32>(u_input.a.x, arg_0.e.x, u_input.a.x, arg_0.e.x)), arg_0, 65257i), arg_0).e.x >= _wgslsmith_sub_u32(arg_2.e.x, 16488u), true));
    let var_1 = u_input.a.x;
    var var_2 = ~abs(arg_0.e);
    var_2 = arg_2.e;
    let var_3 = !vec2<bool>(!any(select(var_0.zyw, vec3<bool>(false, var_0.x, true), var_0.x)), true || !(!var_0.x));
    return func_5(Struct_1(~arg_2.a & ~arg_2.a, _wgslsmith_f_op_f32(-arg_0.b), arg_0.a.x, firstLeadingBit(~(~vec3<i32>(arg_2.c, arg_1, 1i))), arg_2.e)).a;
}

fn func_1(arg_0: i32) -> StorageBuffer {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(43895i, -3204i >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(59193u, 32249u), u_input.a), vec2<u32>(u_input.a.x, u_input.a.x)) % 32u)), ((-vec2<i32>(arg_0, -37969i) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 7161u), vec2<u32>(u_input.a.x, 61029u)) % vec2<u32>(32u))) & _wgslsmith_div_vec2_i32(~vec2<i32>(arg_0, arg_0), ~vec2<i32>(arg_0, 1i))) >> (vec2<u32>(26963u, 1u) % vec2<u32>(32u)));
    var var_1 = true;
    var_1 = true;
    let var_2 = Struct_2(func_7(Struct_1(~_wgslsmith_add_vec4_i32(vec4<i32>(-2494i, -1i, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, 0i)), _wgslsmith_f_op_f32(select(-302f, _wgslsmith_f_op_f32(696f * -925f), any(vec3<bool>(false, true, true)))), ~firstLeadingBit(var_0.x), vec3<i32>(firstTrailingBit(var_0.x), -6688i, firstTrailingBit(arg_0)), vec4<u32>(0u, u_input.a.x, u_input.a.x, _wgslsmith_mod_u32(4294967295u, 6816u))), ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -34555i, var_0.x), vec3<i32>(-18699i, -2147483647i, arg_0)), vec3<i32>(arg_0, -1i, arg_0) | vec3<i32>(-2147483647i, arg_0, arg_0)), func_6(func_5(func_2(vec3<bool>(false, true, true))), func_5(Struct_1(vec4<i32>(arg_0, -3859i, var_0.x, -34330i), 1205f, 9661i, vec3<i32>(21888i, arg_0, 18544i), vec4<u32>(u_input.a.x, 4294967295u, 60199u, u_input.a.x))).d)), ~abs(func_7(func_5(Struct_1(vec4<i32>(23988i, arg_0, arg_0, -61328i), 693f, var_0.x, vec3<i32>(arg_0, var_0.x, arg_0), vec4<u32>(62768u, u_input.a.x, 1u, 26268u))).d, select(arg_0, var_0.x, true), Struct_1(vec4<i32>(-77172i, 2147483647i, -37559i, arg_0), -149f, 3821i, vec3<i32>(42918i, var_0.x, var_0.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 56178u))).e), Struct_1(abs(-vec4<i32>(-35845i, -10667i, var_0.x, arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, -1542f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2307f + -803f), func_2(vec3<bool>(true, false, false)).b)), arg_0, _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_0, 0i) << (vec3<u32>(u_input.a.x, 17611u, u_input.a.x) % vec3<u32>(32u)), -vec3<i32>(arg_0, -12443i, var_0.x)), vec3<i32>(1i, _wgslsmith_div_i32(arg_0, -2147483647i), 1i)), vec4<u32>(u_input.a.x, ~64324u, ~69015u, 25891u) ^ ~(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(11215u, 63145u, u_input.a.x, 1969u))), func_7(func_5(Struct_1(select(vec4<i32>(var_0.x, 0i, -1i, arg_0), vec4<i32>(-42983i, 0i, -19419i, 10138i), true), _wgslsmith_f_op_f32(-919f * 1000f), ~var_0.x, _wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, var_0.x, arg_0), vec3<i32>(-1i, var_0.x, 3239i)), func_7(Struct_1(vec4<i32>(arg_0, 2147483647i, arg_0, -4564i), -1158f, var_0.x, vec3<i32>(-2147483647i, var_0.x, var_0.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 8473u)), 40521i, Struct_1(vec4<i32>(19162i, var_0.x, 0i, var_0.x), 1488f, arg_0, vec3<i32>(arg_0, 1i, -34370i), vec4<u32>(20166u, 1u, 0u, u_input.a.x))).e)).d, -2147483647i, Struct_1(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(arg_0, 13381i, var_0.x, arg_0)), ~vec4<i32>(var_0.x, arg_0, -1i, var_0.x)), -110f, arg_0, ~(vec3<i32>(arg_0, 15622i, var_0.x) ^ vec3<i32>(1961i, arg_0, 39215i)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 22996u), vec4<u32>(33519u, u_input.a.x, 16997u, 48634u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 92789u, 6708u))))), ~(-51151i));
    let var_3 = Struct_2(func_6(Struct_2(var_2.a, var_2.d.e, var_2.d, func_6(var_2, func_2(vec3<bool>(false, false, false))), arg_0), var_2.c), var_2.d.e, Struct_1(firstLeadingBit(var_2.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-250f - 1244f))), ~_wgslsmith_mult_i32(arg_0, _wgslsmith_div_i32(var_0.x, var_2.a.a.x)), func_7(func_2(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), abs(-4417i), var_2.c).a.zzx, vec4<u32>(~var_2.c.e.x, var_2.c.e.x, _wgslsmith_dot_vec2_u32(~u_input.a, ~var_2.d.e.wx), ~u_input.a.x)), func_2(vec3<bool>(reverseBits(var_2.d.c) != (i32(-1i) * -8567i), select(true, true, false), false)), _wgslsmith_sub_i32(49318i, arg_0));
    return StorageBuffer(_wgslsmith_div_f32(var_3.d.b, -215f), -_wgslsmith_dot_vec4_i32(abs(var_2.d.a), vec4<i32>(var_3.c.a.x, arg_0, arg_0, arg_0) & _wgslsmith_add_vec4_i32(var_3.d.a, var_3.a.a)), vec3<u32>(var_3.a.e.x & _wgslsmith_add_u32(select(u_input.a.x, var_2.d.e.x, true), 1u), var_2.d.e.x, ~(~(var_2.d.e.x << (0u % 32u)))), ~(2147483647i >> ((_wgslsmith_add_u32(var_2.d.e.x, var_3.d.e.x) & abs(1u)) % 32u)), -3333i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false & any(vec4<bool>(true, true, true, true));
    var_0 = true;
    let x = u_input.a;
    s_output = func_1(-1i);
}

