struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> Struct_2 {
    let var_0 = 1i ^ (reverseBits(abs(reverseBits(arg_0.b))) << (~(~65559u) % 32u));
    var var_1 = select(!vec4<bool>(true, !(arg_1 != 1333f), true, arg_0.a.x), vec4<bool>(true, any(select(!vec4<bool>(arg_0.a.x, true, arg_0.a.x, true), vec4<bool>(false, true, false, true), !vec4<bool>(false, false, arg_0.a.x, false))), true, true), arg_0.a.x);
    var var_2 = ~(~(~(~(~vec4<u32>(arg_0.c.x, 64518u, 37869u, 1u)))));
    var var_3 = Struct_3(-select(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.b, arg_0.b, arg_2), -vec3<i32>(1i, var_0, 1i)), ~(vec3<i32>(arg_0.b, arg_2, var_0) & vec3<i32>(-1i, arg_0.b, -6698i)), false), ~(var_2.x << (72053u % 32u)), select(var_1.yyy, var_1.zxx, false), -_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.b, 12073i, -2147483647i, 0i), vec4<i32>(2147483647i, -2147483647i, arg_0.b, -1i)), -vec4<i32>(var_0, 0i, -35417i, 2147483647i)) >> (reverseBits(vec4<u32>(42371u, 37207u, ~10683u, 1u)) % vec4<u32>(32u)));
    var var_4 = var_2.x;
    return arg_0;
}

fn func_3() -> u32 {
    var var_0 = countOneBits(-_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)), vec3<i32>(1i, 1i, 1i)));
    var_0 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(1i << (u_input.a % 32u), _wgslsmith_add_i32(-var_0.x, -var_0.x)), var_0.x), 42170i, var_0.x);
    var_0 = firstTrailingBit(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(var_0.x, var_0.x, var_0.x), -vec3<i32>(var_0.x, var_0.x, 24002i), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 0i, 2147483647i), -vec3<i32>(var_0.x, var_0.x, 2147483647i)), _wgslsmith_sub_vec3_i32(-vec3<i32>(var_0.x, -2147483647i, -3965i), -vec3<i32>(-2147483647i, -2147483647i, 9535i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, -33215i, 0i) >> (vec3<u32>(u_input.a, 0u, 9695u) % vec3<u32>(32u)), vec3<i32>(621i, 12364i, var_0.x), vec3<i32>(var_0.x, -1i, var_0.x) ^ vec3<i32>(var_0.x, 26119i, var_0.x)) & vec3<i32>(max(-1i, var_0.x), -15488i, -42094i)));
    var_0 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(-reverseBits(-vec3<i32>(2147483647i, var_0.x, -66438i)), -(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_0.x, var_0.x), vec3<i32>(var_0.x, var_0.x, var_0.x)) & vec3<i32>(var_0.x, var_0.x, -1i)), _wgslsmith_sub_vec3_i32(~vec3<i32>(var_0.x, -2147483647i, var_0.x), countOneBits(vec3<i32>(var_0.x, 33606i, var_0.x)))));
    var_0 = firstLeadingBit(vec3<i32>(select(-2147483647i, -25824i, true), _wgslsmith_div_i32(reverseBits(-2147483647i), 2147483647i), var_0.x | firstTrailingBit(_wgslsmith_add_i32(var_0.x, var_0.x))));
    return _wgslsmith_clamp_u32(30186u, 22760u, ~(~(~(~4294967295u))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = func_3();
    let var_1 = vec3<u32>(~_wgslsmith_clamp_u32(var_0 | _wgslsmith_mult_u32(arg_0.c.x, 1u), 1u, u_input.b), abs(~var_0), var_0);
    let var_2 = vec2<bool>(any(vec3<bool>(true, true, !arg_1.x)), !arg_1.x);
    var var_3 = arg_1;
    let var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1169f + _wgslsmith_f_op_f32(-132f - 611f)) * -246f), 2157f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1318f + 403f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(439f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-441f)), _wgslsmith_div_f32(-1500f, 1409f), _wgslsmith_f_op_f32(select(964f, 1697f, false)), 1098f))), select(vec4<bool>(var_3.x & !arg_0.a.x, arg_0.a.x, false, -arg_0.b >= arg_0.b), select(!(!arg_1), arg_1, all(func_1(arg_0, 107f, 0i).a.zz)), vec4<bool>(all(func_1(arg_0, 742f, -2147483647i).a.yz), !all(arg_1), var_2.x && arg_1.x, var_3.x))));
    return func_1(arg_0, var_4.x, _wgslsmith_dot_vec4_i32(abs(min(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.b, -30246i, arg_0.b, arg_0.b), vec4<i32>(arg_0.b, arg_0.b, 2147483647i, 16033i)), abs(vec4<i32>(arg_0.b, 29742i, arg_0.b, arg_0.b)))), min(vec4<i32>(arg_0.b, -arg_0.b, 1i, reverseBits(arg_0.b)), select(~vec4<i32>(-8013i, 15012i, 2147483647i, arg_0.b), vec4<i32>(arg_0.b, -23076i, arg_0.b, arg_0.b), all(vec4<bool>(false, false, arg_1.x, true))))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = Struct_3(-min(arg_1.yxy, vec3<i32>(arg_1.x, 16978i, arg_2.b) << (arg_2.c % vec3<u32>(32u))), 30593u, func_1(arg_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(775f + 1521f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1375f))))), ~(-72784i)).a, arg_1 << (~(~(~vec4<u32>(u_input.b, arg_2.c.x, 32120u, u_input.a))) % vec4<u32>(32u)));
    let var_1 = select(var_0.c, vec3<bool>(all(select(vec3<bool>(true, false, arg_2.a.x), !arg_0.xzw, true)), !any(!vec4<bool>(arg_2.a.x, arg_0.x, var_0.c.x, arg_0.x)), ((20835u ^ u_input.a) | u_input.b) != ~arg_2.c.x), vec3<bool>(var_0.c.x, true, false));
    var var_2 = ~func_1(Struct_2(vec3<bool>(false & var_0.c.x, arg_0.x & false, 63103i != arg_2.b), 17944i, vec3<u32>(_wgslsmith_mod_u32(73124u, 53700u), u_input.a & arg_2.c.x, 1u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.x, 7741i, arg_1.x), select(vec3<i32>(arg_2.b, arg_2.b, -69476i) << (arg_2.c % vec3<u32>(32u)), arg_1.xxy, arg_2.a.x))).c.x;
    let var_3 = 15508i;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-617f, -501f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1294f, 1303f) * vec2<f32>(-1367f, 1815f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(2304f, 1266f) - vec2<f32>(1000f, 1545f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -708f), 1f))), _wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(true, true, true, all(vec3<bool>(false, true, false))), firstTrailingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(53677i, 0i, -45981i, 339i), abs(vec4<i32>(-2147483647i, -1i, -4163i, 43035i)))), func_2(func_1(Struct_2(vec3<bool>(true, true, true), 28217i, vec3<u32>(1u, u_input.b, u_input.a)), _wgslsmith_f_op_f32(min(-645f, 734f)), -17574i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)))));
    var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1053f, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1810f + -2014f), _wgslsmith_f_op_f32(f32(-1f) * -371f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(473f, var_0.x)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 476f), vec2<f32>(2370f, 1188f)), func_2(Struct_2(vec3<bool>(true, true, false), -2147483647i, vec3<u32>(16411u, u_input.b, 31606u)), vec4<bool>(false, true, true, true)).a.xx))))));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-463f, -522f) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1436f, 236f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(971f, var_0.x) - vec2<f32>(873f, var_0.x))), false)))));
    let var_1 = ~(~vec3<i32>(abs(6066i), ~(-58575i), _wgslsmith_mod_i32(-15783i, -2147483647i)) & (vec3<i32>(0i, _wgslsmith_mult_i32(0i, -2147483647i), countOneBits(42994i)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b), firstLeadingBit(vec3<u32>(u_input.a, 13249u, 38638u))) % vec3<u32>(32u))));
    var var_2 = firstTrailingBit(var_1);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-479f, 675f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2154f, var_0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -827f))))));
    var var_3 = Struct_3(countOneBits(-var_1), countOneBits(~(~(u_input.b & u_input.b))), !func_2(func_2(Struct_2(vec3<bool>(true, false, false), var_1.x, vec3<u32>(u_input.b, 1u, u_input.b)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false))), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true))).a, ~countOneBits(vec4<i32>(var_2.x, var_1.x, 83559i, -264i) << (vec4<u32>(u_input.b, 0u, 1u, 17875u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(select(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.b, var_3.b, 6393u, 4294967295u), vec4<u32>(u_input.a, 3224u, 4294967295u, 0u)), vec4<u32>(_wgslsmith_mod_u32(0u, 22884u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b, u_input.b, 1u), vec3<u32>(u_input.a, var_3.b, u_input.b)), 25503u), true), ~vec4<u32>(~var_3.b, var_3.b, var_3.b, var_3.b ^ 40549u), !vec4<bool>(var_3.c.x, false, var_3.c.x, any(vec2<bool>(true, false)))), vec2<f32>(602f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 495f))), _wgslsmith_f_op_f32(ceil(589f)))));
}

