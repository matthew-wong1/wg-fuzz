struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(select((vec4<i32>(u_input.a, -2147483647i, 0i, u_input.b) | vec4<i32>(-2147483647i, u_input.b, 23511i, u_input.a)) & abs(vec4<i32>(u_input.b, -50809i, -43682i, u_input.b)), ~vec4<i32>(-1i, u_input.a, 1i, -21372i), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), true)) << (~vec4<u32>(71755u, 85544u, 105975u, 33690u << (0u % 32u)) % vec4<u32>(32u)), select(all(vec4<bool>(true, true, true, true)), select(true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), true), select(any(vec4<bool>(true, true, true, true)), true || all(vec2<bool>(false, false)), all(vec4<bool>(false, false, false, false)))), abs(-vec2<i32>(u_input.b, 14237i)) | _wgslsmith_div_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(27995i, u_input.b))), -vec2<i32>(u_input.a, -2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-672f, 1135f) + vec2<f32>(-2261f, 1525f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1123f, -1000f), vec2<f32>(-157f, 1015f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1678f, 128f), vec2<f32>(-1000f, 325f))))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(select(-985f, 1120f, true)), _wgslsmith_f_op_f32(114f - -1361f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1586f, 1478f), vec2<f32>(209f, -1552f), vec2<bool>(false, false))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1519f), vec2<f32>(1000f, 1000f))))))), 1i);
    let var_1 = Struct_2(vec3<i32>(-_wgslsmith_mult_i32(var_0.c.x, 2147483647i) ^ reverseBits(_wgslsmith_sub_i32(-4881i, -2929i)), _wgslsmith_div_i32(var_0.a.x & var_0.c.x, -2147483647i), var_0.a.x), Struct_1(vec4<i32>(var_0.e, -(~u_input.a), select(firstLeadingBit(29687i), _wgslsmith_sub_i32(var_0.a.x, u_input.a), -288f == var_0.d.x), 1i), !(!(!var_0.b)), vec2<i32>(var_0.e, (3403i << (1u % 32u)) << (1u % 32u)), _wgslsmith_f_op_vec2_f32(floor(var_0.d)), 43711i), var_0.a.x);
    var var_2 = vec2<u32>(1u, _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 48409u, 4294967295u), ~4294967295u) ^ _wgslsmith_clamp_u32(1u, 1u, ~0u), ~0u & _wgslsmith_dot_vec3_u32(~vec3<u32>(9605u, 3262u, 1u), vec3<u32>(67020u, 1u, 4294967295u))));
    return ~_wgslsmith_sub_vec4_u32(reverseBits(abs(vec4<u32>(1u, 4294967295u, var_2.x, var_2.x))), vec4<u32>(var_2.x, max(43376u, 34682u), 0u | var_2.x, ~88265u)) ^ vec4<u32>(~(~(var_2.x << (var_2.x % 32u))), _wgslsmith_dot_vec4_u32(firstTrailingBit(max(vec4<u32>(var_2.x, 20614u, var_2.x, 0u), vec4<u32>(0u, 17289u, 69428u, 0u))), ~vec4<u32>(0u, var_2.x, var_2.x, 0u) ^ (vec4<u32>(20574u, 29710u, 0u, 61u) >> (vec4<u32>(24493u, var_2.x, 25794u, 0u) % vec4<u32>(32u)))), var_2.x, 9887u);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: vec4<u32>) -> vec3<u32> {
    let var_0 = Struct_1(~select(~vec4<i32>(arg_1.b.b.e, arg_2, arg_0, arg_2), arg_1.b.b.a, any(vec3<bool>(true, true, true))), arg_1.b.b.b, (arg_1.a.c | ~(-arg_1.a.a.wy)) << (func_3().wx % vec2<u32>(32u)), vec2<f32>(arg_1.a.d.x, -1413f), ~(-19273i));
    var var_1 = vec3<f32>(1316f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, var_0.d.x)), -1312f);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1.a.d.x)), _wgslsmith_f_op_f32(ceil(-464f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1263f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -543f))))));
    var var_2 = vec4<f32>(-611f, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, 1112f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 1000f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_1.b.b.d.x))))))));
    let var_3 = all(select(select(vec2<bool>(true, any(vec3<bool>(true, arg_1.a.b, arg_1.a.b))), !(!vec2<bool>(false, arg_1.a.b)), true), select(select(vec2<bool>(arg_1.a.b, var_0.b), vec2<bool>(true, true), arg_3.x > arg_3.x), select(!vec2<bool>(var_0.b, var_0.b), !vec2<bool>(arg_1.a.b, false), all(vec3<bool>(arg_1.a.b, arg_1.b.b.b, true))), !var_0.b), var_0.b));
    return ~countOneBits(vec3<u32>(max(_wgslsmith_sub_u32(arg_3.x, arg_3.x), 40273u ^ arg_3.x), reverseBits(abs(arg_3.x)), ~_wgslsmith_dot_vec2_u32(arg_3.xw, arg_3.ww)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_3) -> u32 {
    let var_0 = u_input.a;
    var var_1 = ~(~(-16228i));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_1))) * vec3<f32>(_wgslsmith_f_op_f32(-719f - -2728f), 522f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1238f, 403f, false)))))));
    var var_3 = true;
    let var_4 = func_4(~(-(~select(u_input.a, u_input.b, true))), arg_2, -var_0, select(~vec4<u32>(1u, 1u, 1u, 1u), abs(func_3()), arg_0.b));
    return 39369u;
}

fn func_5(arg_0: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-1084f - -2786f);
    var var_1 = vec3<bool>(!all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)) & !((7592u & arg_0.x) <= 33288u), false, false);
    let var_2 = Struct_3(Struct_1(~abs(abs(vec4<i32>(u_input.a, u_input.a, u_input.b, 1i))), true, ~(-(~vec2<i32>(u_input.a, 0i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-186f, 1000f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-403f, 358f) * vec2<f32>(2055f, 198f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1798f, -131f) * vec2<f32>(-690f, -806f)))), -u_input.b), Struct_2(max(vec3<i32>(u_input.a, 0i, u_input.b), ~vec3<i32>(405i, -17746i, u_input.b)) ^ _wgslsmith_mult_vec3_i32(abs(vec3<i32>(12994i, 1i, -1i)), ~vec3<i32>(u_input.b, 34579i, u_input.b)), Struct_1(-(vec4<i32>(u_input.b, u_input.a, 1i, u_input.b) >> (arg_0 % vec4<u32>(32u))), true, -vec2<i32>(0i, u_input.b) << (arg_0.yw % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(-1477f - 812f), _wgslsmith_f_op_f32(655f * 938f)), 56082i), 0i));
    var_1 = vec3<bool>(false != !var_2.b.b.b, (_wgslsmith_sub_u32(arg_0.x, 16285u) == max(arg_0.x << (arg_0.x % 32u), 4294967295u)) & true, var_1.x);
    var var_3 = Struct_1((abs(vec4<i32>(0i, var_2.b.b.a.x, 8684i, -18805i)) ^ (-var_2.a.a & max(vec4<i32>(14275i, var_2.b.b.c.x, 11626i, 9608i), var_2.b.b.a))) | (_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-3974i, -47598i, u_input.b, u_input.a), var_2.a.a), vec4<i32>(-55752i, var_2.a.e, u_input.a, var_2.a.a.x), var_2.b.b.a) >> (vec4<u32>(_wgslsmith_sub_u32(arg_0.x, arg_0.x), min(4294967295u, arg_0.x), _wgslsmith_mod_u32(0u, arg_0.x), arg_0.x | 4294967295u) % vec4<u32>(32u))), true, _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.a.a.x, -25062i), var_2.a.a.zx, vec2<i32>(u_input.a, u_input.b)), vec2<i32>(-2147483647i, u_input.a), vec2<bool>(false, var_1.x)), select(-vec2<i32>(23558i, 14919i), var_2.a.c | var_2.a.a.zx, false)), select(-vec2<i32>(u_input.a, var_2.a.a.x), reverseBits(~vec2<i32>(var_2.b.c, 8554i)), vec2<bool>(true, !var_1.x))), var_2.b.b.d, 0i);
    return !(var_2.b.b.d.x > var_2.a.d.x);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec3<f32>(arg_3.d.x, -1376f, _wgslsmith_f_op_f32(-arg_0));
    let var_1 = firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), min(select(~vec3<u32>(107458u, 57668u, 116000u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(66492u, 0u, 0u), vec3<u32>(1u, 4294967295u, 39672u)), true), vec3<u32>(1u, 1u, 1u))));
    var var_2 = func_5(max(vec4<u32>(_wgslsmith_div_u32(var_1.x, var_1.x), var_1.x, func_2(Struct_1(vec4<i32>(u_input.a, arg_3.a.x, -2147483647i, u_input.a), true, arg_3.a.zx, var_0.xx, arg_3.a.x), vec3<f32>(1568f, var_0.x, var_0.x), Struct_3(arg_3, Struct_2(vec3<i32>(-1i, arg_3.a.x, 1i), arg_3, u_input.b))), var_1.x >> (0u % 32u)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 11879u), vec4<u32>(var_1.x, 1u, var_1.x, 4294967295u)), vec4<u32>(var_1.x, var_1.x, var_1.x, 42330u) & vec4<u32>(var_1.x, 1u, var_1.x, var_1.x))) & ~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, var_1.x, 1u, 1u), vec4<u32>(4294967295u, 50344u, var_1.x, var_1.x)), vec4<u32>(var_1.x, 1u, var_1.x, var_1.x)));
    var var_3 = Struct_1(arg_3.a, any(vec2<bool>((false || arg_3.b) & !arg_2, !arg_3.b)), ~vec2<i32>(_wgslsmith_mult_i32(abs(arg_3.e), ~2147483647i), 0i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_3.d))) - _wgslsmith_f_op_vec2_f32(abs(arg_3.d))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(arg_3.d, vec2<f32>(arg_1, arg_0), arg_3.b)), vec2<f32>(-562f, arg_0), !arg_2)), var_0.yy))), 2147483647i);
    var var_4 = Struct_2(~min(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b, -41268i, 2147483647i), vec3<i32>(u_input.a, arg_3.e, var_3.e) ^ vec3<i32>(var_3.c.x, 38393i, -1i)), firstLeadingBit(vec3<i32>(u_input.a, 1i, arg_3.c.x))), Struct_1(firstLeadingBit(vec4<i32>(i32(-1i) * -58001i, -var_3.a.x, _wgslsmith_div_i32(-10905i, 4355i), firstLeadingBit(u_input.b))), var_3.b, arg_3.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-274f, var_0.x)), arg_3.d.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1348f, arg_3.d.x))), _wgslsmith_add_i32(-arg_3.a.x, 1i) ^ _wgslsmith_div_i32(~var_3.c.x, arg_3.c.x << (0u % 32u))), ~arg_3.c.x);
    return Struct_2(vec3<i32>(2147483647i, 1i, var_3.c.x) | (firstLeadingBit(~vec3<i32>(u_input.b, -62426i, 1i)) >> (min(min(vec3<u32>(60745u, 25440u, 1u), var_1), var_1) % vec3<u32>(32u))), Struct_1(-var_4.b.a, any(vec3<bool>(false, func_5(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)), arg_3.b)), arg_3.a.zw, var_0.xx, ~arg_3.e), var_3.c.x ^ -2147483647i);
}

fn func_6(arg_0: Struct_2) -> Struct_3 {
    let var_0 = ~_wgslsmith_div_u32(0u, 1u);
    let var_1 = vec4<u32>(~24062u, _wgslsmith_add_u32(~(~var_0), 88068u), 4294967295u >> (~func_2(Struct_1(vec4<i32>(u_input.a, -10064i, 23167i, u_input.b), arg_0.b.b, vec2<i32>(-2147483647i, 0i), vec2<f32>(-509f, -511f), 2796i), vec3<f32>(arg_0.b.d.x, arg_0.b.d.x, arg_0.b.d.x), Struct_3(arg_0.b, arg_0)) % 32u), var_0);
    let var_2 = func_1(-1237f, _wgslsmith_f_op_f32(select(1324f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-386f, arg_0.b.d.x)), any(select(vec4<bool>(arg_0.b.b, arg_0.b.b, false, arg_0.b.b), select(vec4<bool>(arg_0.b.b, arg_0.b.b, true, false), vec4<bool>(true, arg_0.b.b, arg_0.b.b, true), arg_0.b.b), select(vec4<bool>(arg_0.b.b, arg_0.b.b, true, false), vec4<bool>(arg_0.b.b, arg_0.b.b, arg_0.b.b, arg_0.b.b), true))))), !any(!(!vec2<bool>(false, arg_0.b.b))), arg_0.b).b;
    let var_3 = firstLeadingBit(vec2<i32>(-(arg_0.c << (1u % 32u)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-11205i, var_2.c.x), firstTrailingBit(2147483647i)))) & arg_0.a.zy;
    let var_4 = Struct_3(arg_0.b, func_1(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_div_f32(var_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1669f, 1000f))), false, Struct_1(vec4<i32>(-var_2.a.x, -1i, max(-18711i, arg_0.a.x), -1i), true, arg_0.a.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.d, var_2.d) * _wgslsmith_f_op_vec2_f32(-arg_0.b.d)), ~9927i)));
    return var_4;
}

fn func_7(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    var var_0 = Struct_1(arg_2.b.b.a, !(!(!arg_1.b.b || !arg_2.b.b.b)), vec2<i32>(arg_2.b.b.e ^ _wgslsmith_sub_i32(func_6(Struct_2(vec3<i32>(arg_0, 65776i, -43373i), Struct_1(vec4<i32>(36743i, arg_1.a.x, -2147483647i, arg_0), false, vec2<i32>(u_input.a, arg_1.c), vec2<f32>(arg_1.b.d.x, arg_2.a.d.x), arg_0), arg_1.b.c.x)).a.c.x, 1i), 72951i), vec2<f32>(arg_2.a.d.x, func_6(Struct_2(_wgslsmith_div_vec3_i32(arg_1.b.a.zxz, arg_1.b.a.xwy), Struct_1(arg_1.b.a, arg_2.a.b, arg_1.b.a.wy, arg_2.a.d, -28649i), arg_0)).a.d.x), ~_wgslsmith_sub_i32(-1i, -1i));
    var var_1 = ~vec3<u32>(4294967295u, ~28821u, 0u);
    let var_2 = var_0.b;
    var_1 = vec3<u32>(30051u, _wgslsmith_mod_u32(select(0u, 25469u, false & arg_1.b.b), _wgslsmith_mult_u32(~var_1.x, _wgslsmith_div_u32(1u, var_1.x))) ^ (_wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, 4294967295u, var_1.x), vec3<u32>(0u, var_1.x, var_1.x)), vec3<u32>(var_1.x, var_1.x, 44393u)) ^ (var_1.x & _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 0u, var_1.x), vec4<u32>(16289u, var_1.x, 26406u, 16658u)))), _wgslsmith_div_u32(var_1.x, select(var_1.x, func_4(arg_0 | -29015i, func_6(Struct_2(vec3<i32>(arg_1.a.x, 2147483647i, arg_1.a.x), Struct_1(vec4<i32>(arg_0, arg_0, 0i, 0i), arg_2.a.b, vec2<i32>(22268i, 0i), arg_1.b.d, arg_0), u_input.a)), u_input.a, vec4<u32>(88913u, 70476u, 1u, var_1.x)).x, true)));
    var_0 = arg_1.b;
    return arg_1.b.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_7(u_input.a, Struct_2(select(vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(u_input.a, 1i, u_input.a), true), Struct_1(vec4<i32>(0i, u_input.b, u_input.a, 71324i), true, vec2<i32>(u_input.b, -1i), vec2<f32>(952f, -1594f), 2147483647i), -2147483647i), func_6(func_1(1079f, 101f, true, Struct_1(vec4<i32>(-15237i, u_input.a, -33558i, u_input.a), false, vec2<i32>(12570i, u_input.a), vec2<f32>(-366f, 1408f), u_input.b))))))));
    let var_1 = 1i;
    let var_2 = ~reverseBits(vec2<u32>(_wgslsmith_mod_u32(1u, countOneBits(1u)), ~_wgslsmith_add_u32(1u, 10621u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -922f), _wgslsmith_f_op_f32(236f + 627f), _wgslsmith_f_op_f32(func_7(var_1, Struct_2(vec3<i32>(u_input.a, -24257i, var_1), Struct_1(vec4<i32>(1i, 47480i, u_input.a, u_input.b), true, vec2<i32>(var_1, -24502i), vec2<f32>(var_0, -101f), 13375i), -3156i), Struct_3(Struct_1(vec4<i32>(var_1, var_1, 1i, 0i), false, vec2<i32>(var_1, -22220i), vec2<f32>(var_0, var_0), var_1), Struct_2(vec3<i32>(var_1, var_1, u_input.a), Struct_1(vec4<i32>(u_input.b, 0i, u_input.b, 37188i), true, vec2<i32>(var_1, 2147483647i), vec2<f32>(var_0, var_0), u_input.a), 21191i))))), vec3<f32>(_wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(min(var_0, var_0))))))));
    let var_4 = func_6(Struct_2(~abs(vec3<i32>(-8619i, var_1, var_1)), Struct_1(vec4<i32>(var_1, -1i, -6027i, 0i) & abs(vec4<i32>(var_1, u_input.b, 2147483647i, u_input.b)), true, ~(-vec2<i32>(u_input.a, 0i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-728f, -499f) * var_3.zx)), 21617i), -_wgslsmith_mult_i32(-42340i << (var_2.x % 32u), -13624i ^ var_1)));
    var var_5 = func_6(func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-282f, -480f)))), -1946f, false, func_6(var_4.b).a));
    let var_6 = !(_wgslsmith_dot_vec2_u32(var_2, firstLeadingBit(~var_2)) != func_3().x);
    var var_7 = vec3<bool>(all(select(vec3<bool>(true, true, any(vec2<bool>(false, var_5.b.b.b))), !(!vec3<bool>(false, var_4.a.b, var_6)), var_4.a.b)), !(var_2.x > ~(1u >> (0u % 32u))), _wgslsmith_sub_i32(abs(_wgslsmith_add_i32(var_4.a.c.x, var_1)), _wgslsmith_add_i32(var_1, -10685i) & 2147483647i) >= ~u_input.b);
    var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_5.b.a.x << (_wgslsmith_mod_u32(~0u, ~24130u) % 32u), Struct_3(var_4.b.b, Struct_2(func_1(247f, var_4.b.b.d.x, false, var_5.a).a, var_5.b.b, 1i)), _wgslsmith_add_i32(var_5.b.c, _wgslsmith_mod_i32(-u_input.b, i32(-1i) * -27050i)), vec4<u32>(~(~var_2.x), var_2.x, 4294967295u, func_2(Struct_1(vec4<i32>(var_4.b.b.e, -13066i, 2147483647i, u_input.a), var_5.a.b, var_5.b.a.xy, var_4.a.d, 2147483647i), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(284f, var_5.b.b.d.x, var_3.x), var_3, vec3<bool>(true, true, var_4.b.b.b))), var_4))).x);
}

