struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_div_u32(0u, _wgslsmith_sub_u32(51419u, 1u));
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 70497i, 26204i, -55485i), vec4<i32>(arg_0.x, arg_0.x, -2147483647i, -18861i)), ~_wgslsmith_div_i32(arg_0.x, -3592i)), -85993i, 44663i), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(-select(vec3<i32>(2147483647i, arg_0.x, 6824i), vec3<i32>(arg_0.x, arg_0.x, arg_0.x), true), -_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, -1i, -9246i), vec3<i32>(arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, abs(0i), 64307i), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(4230i, 1i, 1i), vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), ~vec3<i32>(arg_0.x, arg_0.x, 35144i)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
    var var_3 = Struct_1(false, arg_0.x, var_0, vec2<bool>(any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), false)), ~max(arg_0.x, var_1.x) != arg_0.x));
    let var_4 = Struct_1(false, abs(_wgslsmith_dot_vec2_i32(-arg_0, _wgslsmith_clamp_vec2_i32(arg_0, arg_0, vec2<i32>(-3783i, var_1.x)))) ^ -17822i, 4294967295u, var_3.d);
    return ~firstLeadingBit(min(~vec3<u32>(24256u, 0u, u_input.b), ~(vec3<u32>(1u, var_4.c, 4294967295u) ^ vec3<u32>(4294967295u, var_4.c, 4294967295u))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = ~func_3(min(vec2<i32>(-4648i, arg_0.b) & (vec2<i32>(-2147483647i, -6341i) & vec2<i32>(arg_0.b, arg_1.b)), -vec2<i32>(arg_0.b, arg_1.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, -1452f, 1427f, -865f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-659f, -590f, 304f, 792f))));
    let var_1 = Struct_1(all(vec2<bool>(true, true)), 0i, ~firstLeadingBit(arg_2.x), !select(!arg_0.d, vec2<bool>(true, all(vec3<bool>(false, arg_1.d.x, true))), !any(vec4<bool>(arg_1.d.x, arg_0.d.x, arg_1.a, true))));
    let var_2 = var_1;
    var var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c, ~firstTrailingBit(firstLeadingBit(arg_0.c)), countOneBits(4294967295u), 14127u), ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.c, 1u, var_0.x, arg_0.c), vec4<u32>(arg_1.c, u_input.c, 99671u, 49902u)))));
    var_3 = ~(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.c, var_1.c | 1u, 1u, ~4294967295u), vec4<u32>(~var_1.c, 51631u, 48355u, firstTrailingBit(4294967295u))) << (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.c, 8290u, 36469u, arg_2.x), ~vec4<u32>(1u, var_1.c, 88519u, u_input.c)), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.c, 1u, 4294967295u, 1u), ~vec4<u32>(23254u, 5967u, var_0.x, var_3.x))) % vec4<u32>(32u)));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_clamp_vec3_i32(min(vec3<i32>(-4242i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -27411i), vec2<i32>(arg_0.b, arg_0.b)) & (arg_0.b ^ arg_0.b), arg_2.b), vec3<i32>(arg_2.b, 1607i, arg_0.b)), select(select(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -3251i, -1i), vec3<i32>(arg_2.b, arg_0.b, arg_0.b))), abs(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.b, arg_2.b, arg_2.b), vec3<i32>(arg_0.b, -2147483647i, arg_0.b))), select(arg_0.d.x | arg_2.a, !arg_1.x, func_2(arg_2, Struct_1(arg_1.x, 1i, arg_2.c, arg_1.xy), u_input.a, vec2<f32>(1235f, -927f)).d.x)), vec3<i32>(1i, 1i, arg_2.b), !arg_1), _wgslsmith_add_vec3_i32(select(-vec3<i32>(7105i, 1i, arg_0.b) & (vec3<i32>(20547i, arg_2.b, arg_2.b) & vec3<i32>(arg_2.b, arg_2.b, -42i)), select(min(vec3<i32>(-61126i, -7188i, arg_0.b), vec3<i32>(-2147483647i, arg_0.b, -19210i)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 2147483647i, arg_2.b), vec3<i32>(2147483647i, -2147483647i, arg_0.b)), arg_0.a), true), ~(max(vec3<i32>(-2147483647i, -21307i, 1i), vec3<i32>(1i, arg_0.b, -2147483647i)) << (arg_3.xyw % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_sub_vec4_u32(arg_3, vec4<u32>(arg_3.x << (~(~0u) % 32u), ~abs(arg_0.c) << (firstLeadingBit(func_3(var_0.xy, vec4<f32>(-1393f, 1973f, -996f, 1229f)).x) % 32u), _wgslsmith_div_u32((4294967295u | u_input.a.x) & max(arg_0.c, 37102u), ~arg_0.c), ~(func_3(var_0.yy, vec4<f32>(922f, 1117f, -466f, -119f)).x ^ arg_3.x)));
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_1(!(!func_4(Struct_1(false, 1532i, 1u, vec2<bool>(var_0, var_0)), vec3<bool>(true, var_0, false), func_2(Struct_1(var_0, -3894i, 1u, vec2<bool>(false, false)), Struct_1(var_0, 0i, 88622u, vec2<bool>(var_0, false)), vec2<u32>(u_input.c, u_input.b), vec2<f32>(-1000f, -1658f)), ~vec4<u32>(u_input.a.x, 14898u, 0u, u_input.c))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(727i, -13532i), vec2<i32>(1i, 1i), firstLeadingBit(vec2<i32>(29970i, 16494i))), firstLeadingBit(vec2<i32>(-1i, 2147483647i) >> (u_input.a % vec2<u32>(32u)))), ~abs(firstLeadingBit(vec2<i32>(-2147483647i, 0i)))), 0u << (~(~u_input.a.x >> (u_input.a.x % 32u)) % 32u), !vec2<bool>(var_0, var_0));
    var_1 = func_2(Struct_1(all(vec3<bool>(!var_1.a, var_0, true | var_0)), -(~(~0i)), 1u, vec2<bool>(false, true || (var_0 && var_1.d.x))), Struct_1(!var_0, var_1.b, func_3(abs(vec2<i32>(-3596i, var_1.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(667f, 803f, 555f, 1000f) + vec4<f32>(-437f, -2805f, -1654f, -625f)))).x, select(var_1.d, var_1.d, false)), firstTrailingBit(select(~(~u_input.a), vec2<u32>(var_1.c, 44035u) >> (u_input.a % vec2<u32>(32u)), !(var_1.b > -2147483647i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2997f, 1096f) - vec2<f32>(-1016f, 722f)) + vec2<f32>(-1845f, -470f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(331f, 383f) + vec2<f32>(-1000f, -337f))), var_1.b < 37427i))));
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~select(max(4294967295u, 22734u), 0u, true), var_1.c, (51042u ^ func_3(vec2<i32>(var_1.b, 17518i), vec4<f32>(-1000f, -1449f, 1556f, 1000f)).x) & ~(~2548u)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~(vec3<u32>(u_input.b, 60888u, u_input.c) ^ vec3<u32>(u_input.a.x, 1u, u_input.b)), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(0u, 48556u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.c, 46848u), vec3<u32>(20864u, 12850u, u_input.a.x)))), ~_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(u_input.c, u_input.a.x, 18009u)), vec3<u32>(var_1.c, 6691u, u_input.c))));
    var_1 = Struct_1(!(!func_2(Struct_1(var_1.a, 68347i, var_2, vec2<bool>(var_0, var_0)), Struct_1(false, 16111i, var_2, var_1.d), u_input.a, vec2<f32>(1000f, -823f)).a) == true, _wgslsmith_dot_vec4_i32(abs(firstTrailingBit(min(vec4<i32>(56523i, var_1.b, 0i, 2147483647i), vec4<i32>(var_1.b, -2147483647i, -21132i, 19613i)))), ~vec4<i32>(1i, _wgslsmith_clamp_i32(18769i, 45779i, -20796i), -25493i, var_1.b)), min(abs(60858u), u_input.b), vec2<bool>(!var_1.d.x, true));
    return func_2(func_2(Struct_1((var_0 || true) & var_1.d.x, ~var_1.b, _wgslsmith_clamp_u32(abs(var_1.c), ~8932u, ~var_1.c), select(func_2(Struct_1(var_1.a, 0i, var_1.c, var_1.d), Struct_1(var_0, 7277i, u_input.c, vec2<bool>(var_0, var_1.a)), vec2<u32>(var_1.c, var_1.c), vec2<f32>(651f, 825f)).d, var_1.d, select(vec2<bool>(var_0, true), vec2<bool>(true, var_1.a), vec2<bool>(var_0, false)))), Struct_1(var_1.d.x, ~0i, ~var_1.c, select(!var_1.d, var_1.d, select(vec2<bool>(var_0, var_0), vec2<bool>(var_1.a, false), var_1.d.x))), ~vec2<u32>(u_input.a.x, var_2), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(round(-1773f)))), func_2(func_2(func_2(func_2(Struct_1(false, -2147483647i, 4294967295u, vec2<bool>(false, var_0)), Struct_1(true, 0i, u_input.a.x, vec2<bool>(var_1.d.x, var_1.a)), u_input.a, vec2<f32>(826f, 1197f)), Struct_1(var_0, 5300i, var_1.c, vec2<bool>(false, true)), firstLeadingBit(u_input.a), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(806f, 922f)))), func_2(Struct_1(false, -54010i, 28638u, vec2<bool>(false, false)), func_2(Struct_1(var_0, -2147483647i, 4894u, var_1.d), Struct_1(false, var_1.b, 81114u, var_1.d), vec2<u32>(4294967295u, 0u), vec2<f32>(-589f, 747f)), firstLeadingBit(vec2<u32>(u_input.b, 0u)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(980f, -235f), vec2<f32>(-254f, 528f), vec2<bool>(false, true)))), u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(815f, -268f), vec2<f32>(1508f, -439f), false)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-203f, -754f) * vec2<f32>(268f, -2959f)))), Struct_1(true, reverseBits(2147483647i | var_1.b), var_1.c, !(!vec2<bool>(var_0, true))), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, u_input.a << (u_input.a % vec2<u32>(32u))), vec2<u32>(max(u_input.b, 0u), var_1.c), ~u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-178f, -1414f)))), ~vec2<u32>(~1u, 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2059f, -1022f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1231f, -362f) + vec2<f32>(-1293f, -182f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-944f, -825f)), _wgslsmith_f_op_f32(trunc(-420f))))));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> i32 {
    var var_0 = arg_0.b;
    var var_1 = arg_0;
    let var_2 = -min(_wgslsmith_div_vec2_i32(~(vec2<i32>(-1i, 27742i) & vec2<i32>(arg_0.b, arg_0.b)), vec2<i32>(countOneBits(var_1.b), var_1.b)), select(vec2<i32>(var_1.b, 1i), vec2<i32>(arg_0.b | 447i, -var_1.b), vec2<bool>(true, false)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(318f)))))) * -1000f);
    var var_4 = var_3;
    return _wgslsmith_clamp_i32(~var_2.x, ~(-5097i), func_1().b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(1i, func_5(func_1(), 1u));
    var var_1 = ~vec4<i32>(~countOneBits(func_1().b), _wgslsmith_mod_i32(0i, ~(-var_0.x)), ~firstTrailingBit(var_0.x), var_0.x);
    var_1 = max(~_wgslsmith_mult_vec4_i32(firstLeadingBit(-vec4<i32>(var_1.x, 50639i, -10701i, 1i)), ~vec4<i32>(-1i, -2147483647i, var_1.x, var_0.x)), ~vec4<i32>(~var_1.x, 45408i, var_0.x, 7410i));
    var_1 = ~(min(~(vec4<i32>(var_0.x, var_1.x, 4711i, var_0.x) & vec4<i32>(var_1.x, 2147483647i, -2147483647i, var_1.x)), vec4<i32>(-var_0.x, ~(-7932i), 2147483647i, var_1.x)) & abs(vec4<i32>(3053i, _wgslsmith_div_i32(-9127i, -23973i), -41805i, ~var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(435f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(149f - -1000f))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-55487i), ~vec2<u32>(1u, u_input.c), firstLeadingBit(~select(vec4<i32>(var_1.x, var_1.x, var_1.x, -60888i), vec4<i32>(var_1.x, 18457i, var_1.x, var_1.x), vec4<bool>(true, false, true, true))) >> (vec4<u32>(_wgslsmith_sub_u32(~u_input.b, 39207u & u_input.c), u_input.c, 7704u, ~4294967295u | func_1().c) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2))), _wgslsmith_f_op_f32(-var_2)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-248f, 834f, 1861f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2, -1389f, var_2))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, 251f) * vec3<f32>(var_2, var_2, var_2))))));
}

