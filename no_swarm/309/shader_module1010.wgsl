struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>) -> vec3<i32> {
    let var_0 = arg_0;
    var var_1 = vec2<bool>(any(vec3<bool>(arg_2.x, arg_2.x, false)), arg_2.x);
    var_1 = arg_2;
    var var_2 = Struct_1(_wgslsmith_div_i32((1i << (1u % 32u)) << (1u % 32u), u_input.b.x), var_0.b, -1332f, firstLeadingBit(arg_0.d) << (abs(abs(arg_0.d)) % vec3<u32>(32u)));
    var_2 = Struct_1(arg_0.b.x >> (_wgslsmith_dot_vec2_u32(~(vec2<u32>(var_2.d.x, var_0.d.x) & var_2.d.zy), ~abs(vec2<u32>(92659u, 31218u))) % 32u), vec4<i32>(-454i, u_input.d.x, arg_0.a, arg_1), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) - var_0.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * 849f)))))), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.d.x, 16053u, ~(~arg_0.d.x)), arg_0.d));
    return vec3<i32>(u_input.e.x, _wgslsmith_clamp_i32(i32(-1i) * -30940i, _wgslsmith_mod_i32(~(-2147483647i), arg_0.a), _wgslsmith_add_i32(-2147483647i, countOneBits(arg_1))) >> (var_2.d.x % 32u), arg_1);
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0.b.xzy | ~min(func_3(Struct_1(-2147483647i, vec4<i32>(-1i, -48454i, 2147483647i, 10365i), -604f, vec3<u32>(4294967295u, 4294967295u, 45977u)), ~(-2837i), vec2<bool>(true, true)), arg_0.b.xxx);
    return min(2147483647i, _wgslsmith_dot_vec2_i32(u_input.c.xz, max(vec2<i32>(-1912i, 2147483647i) << (arg_0.d.zy % vec2<u32>(32u)), vec2<i32>(-2147483647i, -2147483647i)))) | func_3(arg_0, 2147483647i, select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, false)), true)).x;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(func_2(arg_1), ~abs(~(~vec4<i32>(45679i, arg_0, arg_0, -12211i))), -446f, _wgslsmith_mult_vec3_u32(~arg_1.d << (~arg_3.d % vec3<u32>(32u)), arg_3.d) ^ arg_3.d);
    var var_1 = !select(vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true), vec4<bool>(true, _wgslsmith_f_op_f32(-var_0.c) == arg_3.c, true, true), vec4<bool>(!any(vec2<bool>(true, false)), true, !all(vec4<bool>(false, true, false, false)), !any(vec4<bool>(false, false, true, false))));
    var_1 = vec4<bool>((var_0.c != -1704f) & !(any(vec4<bool>(false, var_1.x, var_1.x, var_1.x)) || all(vec4<bool>(true, false, var_1.x, var_1.x))), any(select(vec4<bool>(select(false, var_1.x, var_1.x), var_1.x, true, true), select(vec4<bool>(false, true, false, var_1.x), select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, true), var_1.x), !var_1.x), !any(vec2<bool>(var_1.x, var_1.x)))), all(select(vec4<bool>(var_1.x | var_1.x, var_1.x, select(var_1.x, false, false), !var_1.x), select(select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), false), !vec4<bool>(var_1.x, var_1.x, false, true), true), vec4<bool>(any(vec3<bool>(var_1.x, false, var_1.x)), false, var_1.x, arg_3.a == arg_3.a))), !(!(!var_1.x)) || var_1.x);
    let var_2 = all(var_1.ww);
    var var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~select(vec4<u32>(var_0.d.x, 9423u, arg_3.d.x, var_0.d.x), vec4<u32>(28263u, u_input.a, var_0.d.x, arg_3.d.x), false) ^ vec4<u32>(~var_0.d.x, 13761u, 1307u, ~arg_1.d.x), select(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), vec4<u32>(4294967295u, 0u, 4294967295u, 1u))), firstLeadingBit(vec4<u32>(0u, arg_1.d.x, arg_1.d.x, u_input.a)), !all(vec2<bool>(var_2, true))), vec4<u32>(~(arg_1.d.x | 1u), ~(~4294967295u), u_input.a, 10705u)), ~select(select(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.d.x, var_0.d.x, arg_1.d.x, 54407u), vec4<u32>(37249u, var_0.d.x, arg_1.d.x, 0u)), ~vec4<u32>(arg_3.d.x, var_0.d.x, 1u, u_input.a), true), select(~vec4<u32>(arg_1.d.x, 0u, 0u, 0u), firstLeadingBit(vec4<u32>(u_input.a, 68943u, var_0.d.x, 0u)), all(vec2<bool>(true, var_1.x))), !select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_2, var_2, true, false), vec4<bool>(var_1.x, false, true, true))));
    return select(~8733u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_3.d.yz, vec2<u32>(36383u, u_input.a) << ((arg_3.d.yz ^ vec2<u32>(1u, 1663u)) % vec2<u32>(32u))), ~arg_1.d.yx), any(select(select(select(vec4<bool>(true, false, var_2, true), vec4<bool>(true, var_2, false, true), vec4<bool>(false, false, true, false)), !vec4<bool>(var_1.x, false, true, var_1.x), select(vec4<bool>(var_1.x, var_2, var_2, var_2), vec4<bool>(true, var_2, var_2, var_1.x), vec4<bool>(true, false, false, var_2))), vec4<bool>(var_1.x, any(vec3<bool>(false, true, var_2)), var_1.x | false, false || var_1.x), _wgslsmith_div_i32(-32914i, -7152i) < var_0.b.x)));
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_i32(-(~u_input.c.x), u_input.c.x), reverseBits(u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1397f, 590f)))), vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(64090u, u_input.a, 17638u, 4294967295u), vec4<u32>(u_input.a, arg_0.x, u_input.a, 1u))), ~5486u >> (_wgslsmith_clamp_u32(~57654u, abs(arg_0.x), 1u) % 32u), _wgslsmith_clamp_u32(0u, 1u, abs(1942u))));
    var var_1 = vec3<i32>(u_input.b.x, -u_input.b.x, min(1i, abs(u_input.c.x) | ~func_3(Struct_1(-4521i, u_input.d, var_0.c, var_0.d), 2147483647i, vec2<bool>(false, true)).x));
    let var_2 = _wgslsmith_f_op_f32(trunc(var_0.c)) >= 1f;
    let var_3 = Struct_1(u_input.e.x >> (firstTrailingBit(0u) % 32u), _wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(u_input.d, vec4<i32>(var_0.a, var_1.x, var_0.a, -50985i)), u_input.b, _wgslsmith_sub_vec4_i32(var_0.b, vec4<i32>(2147483647i, var_1.x, 10138i, 1i)) & u_input.b) << ((reverseBits(min(vec4<u32>(arg_0.x, u_input.a, 20357u, arg_0.x), vec4<u32>(var_0.d.x, u_input.a, 63775u, 1u))) >> (~(~vec4<u32>(0u, 1u, 11390u, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0.c))))) * -253f), select(reverseBits(vec3<u32>(13065u, var_0.d.x, ~4294967295u)), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.d.x, var_0.d.x), arg_0.x), arg_0.x, var_0.d.x), vec3<bool>(-u_input.d.x <= var_0.b.x, var_2, var_2)));
    var var_4 = Struct_1(-_wgslsmith_div_i32(~u_input.d.x, _wgslsmith_mult_i32(10790i, var_3.b.x)), vec4<i32>(-_wgslsmith_add_i32(u_input.c.x >> (var_0.d.x % 32u), _wgslsmith_sub_i32(2147483647i, u_input.e.x)), ~(-3751i), reverseBits(-42474i), u_input.b.x | 1i), _wgslsmith_f_op_f32(round(var_0.c)), select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, var_3.d.x, 74714u) << (var_0.d % vec3<u32>(32u)), var_3.d), vec3<u32>(~(~25497u), 53764u, select(_wgslsmith_add_u32(var_0.d.x, var_3.d.x), _wgslsmith_clamp_u32(var_0.d.x, 1u, u_input.a), 53100u <= u_input.a)), select(select(vec3<bool>(false, true, false), !vec3<bool>(var_2, true, var_2), vec3<bool>(true, var_2, var_2)), vec3<bool>(true, !var_2, !var_2), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(var_2, false, true)))));
    return var_3;
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~max(~abs(arg_2.d), func_4(vec2<u32>(countOneBits(1u), _wgslsmith_mult_u32(26593u, u_input.a))).d);
    var var_1 = ~reverseBits(_wgslsmith_clamp_vec2_i32(arg_2.b.zy, arg_1, arg_2.b.xy)) & -abs(~vec2<i32>(u_input.e.x, arg_2.a) ^ ~vec2<i32>(arg_2.b.x, 36059i));
    var var_2 = select(vec4<bool>(any(vec2<bool>(true, all(vec4<bool>(false, false, false, true)))), all(vec4<bool>(true, true, true, true)), true, true), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, true), all(vec4<bool>(!any(vec3<bool>(false, true, true)), all(vec4<bool>(true, false, true, true)), any(vec2<bool>(true, true)), true)));
    var_1 = _wgslsmith_clamp_vec2_i32(arg_1 | _wgslsmith_add_vec2_i32(-arg_2.b.zx, select(-arg_1, vec2<i32>(u_input.c.x, var_1.x) >> (vec2<u32>(84208u, arg_2.d.x) % vec2<u32>(32u)), var_2.zw)), ~(~u_input.d.zx), _wgslsmith_clamp_vec2_i32(u_input.e.xy, min(arg_2.b.wx, -vec2<i32>(2147483647i, -2147483647i)) >> (((vec2<u32>(57728u, arg_2.d.x) ^ arg_2.d.xz) | arg_2.d.xy) % vec2<u32>(32u)), vec2<i32>(arg_2.b.x, -19391i)));
    var var_3 = arg_2;
    return func_4(~countOneBits(~func_4(var_3.d.yx).d.zz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.d.x, -_wgslsmith_dot_vec2_i32(u_input.c.xz, vec2<i32>(8286i, u_input.b.x))), _wgslsmith_clamp_i32(0i, _wgslsmith_mod_i32(-1i, u_input.c.x), ~abs(u_input.d.x))), vec4<i32>(min(0i, reverseBits(u_input.b.x)), -14223i, u_input.d.x, u_input.c.x & -2147483647i), -262f, reverseBits(~(~(~vec3<u32>(9981u, 0u, 1568u)))));
    let var_1 = func_5(firstLeadingBit(3402u), ~vec2<i32>(max(-1i, _wgslsmith_div_i32(-45705i, 1i)), _wgslsmith_div_i32(-u_input.c.x, _wgslsmith_mult_i32(-1i, u_input.c.x))), func_4(vec2<u32>(~35926u, _wgslsmith_mod_u32(var_0.d.x << (u_input.a % 32u), func_1(u_input.b.x, Struct_1(0i, vec4<i32>(u_input.b.x, -12036i, var_0.a, -1429i), var_0.c, vec3<u32>(1u, var_0.d.x, 4294967295u)), u_input.b, Struct_1(1i, u_input.d, var_0.c, var_0.d))))));
    let var_2 = 1190f;
    var_0 = var_1;
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~select(-(~var_1.b.xx), var_1.b.wx, func_3(var_1, -64932i, vec2<bool>(true, false)).x < -1i), select(vec3<u32>(15088u, 22259u, 3302u), ~select(var_3.d, vec3<u32>(28055u, var_1.d.x, 4294967295u), true), !vec3<bool>(4294967295u <= var_0.d.x, all(vec3<bool>(false, false, false)), true)), var_3.c, _wgslsmith_f_op_f32(-var_3.c), var_3.c);
}

