struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool, arg_3: vec4<f32>) -> vec3<i32> {
    var var_0 = min(arg_1.a.b << (abs(_wgslsmith_mult_u32(reverseBits(u_input.a.x), ~arg_0.b.c)) % 32u), ~(-1i) | ((select(5041i, 1i, arg_2) & arg_1.a.b) | 37546i));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1791f, 562f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * _wgslsmith_f_op_f32(max(arg_1.a.a.x, arg_0.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(477f, arg_0.a.a.x) * -780f), arg_1.a.a.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_3, _wgslsmith_f_op_vec4_f32(arg_3 - vec4<f32>(-189f, arg_0.b.a.x, 369f, arg_0.a.a.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, arg_0.b.a.x, 178f, 716f) - vec4<f32>(arg_0.b.a.x, -535f, arg_0.a.a.x, arg_3.x)), arg_3)))));
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(arg_1.a.a.x - arg_3.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a.x * var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -1542f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.a.a.x)), -819f))), i32(-1i) * -arg_1.a.b, arg_0.b.c);
    let var_3 = _wgslsmith_sub_i32(var_2.b, 2147483647i);
    var_0 = i32(-1i) * -12458i;
    return -reverseBits(select(vec3<i32>(37767i, 0i, 37633i), ~vec3<i32>(-13045i, arg_0.a.b, arg_0.b.b), select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, false, false), arg_2)) ^ firstTrailingBit(vec3<i32>(var_2.b, -68655i, arg_1.a.b)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_3) -> u32 {
    var var_0 = func_3(Struct_2(arg_1.a, arg_3.b, vec3<u32>(arg_3.b.c, ~arg_2.x, 2906u) | (firstTrailingBit(vec3<u32>(arg_2.x, u_input.a.x, u_input.a.x)) ^ firstTrailingBit(vec3<u32>(0u, arg_1.a.c, arg_2.x))), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(arg_3.a.wzw, vec3<u32>(arg_1.a.c, u_input.a.x, arg_1.a.c)), arg_3.a.wyz) & arg_3.a.zyx), Struct_4(arg_3.b), true && any(vec4<bool>(false, true, true, arg_3.c.b >= 54962i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.a.x, arg_1.a.a.x, -914f, arg_0.x))))));
    let var_1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2090f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1259f, arg_3.c.a.x) - -1000f)), countOneBits(abs(select(var_0.x, var_0.x, false))), select(33129u, 0u, true) | 4294967295u), Struct_1(vec2<f32>(arg_1.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1573f))), i32(-1i) * -countOneBits(arg_3.b.b), arg_1.a.c), vec3<u32>(_wgslsmith_mult_u32(~(arg_2.x | arg_2.x), arg_1.a.c ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4889u, 21252u, 0u), vec3<u32>(arg_2.x, 1u, 4294967295u))), u_input.a.x, arg_1.a.c), vec3<u32>(abs(_wgslsmith_sub_u32(53070u, 1u)), 20326u, arg_1.a.c));
    var_0 = reverseBits(_wgslsmith_add_vec3_i32(select(vec3<i32>(~arg_3.c.b, ~1i, ~1i), (vec3<i32>(var_0.x, var_0.x, var_0.x) >> (vec3<u32>(0u, u_input.a.x, 0u) % vec3<u32>(32u))) << (firstLeadingBit(vec3<u32>(0u, var_1.d.x, 25005u)) % vec3<u32>(32u)), false), func_3(var_1, Struct_4(arg_3.c), !(0i > var_0.x), vec4<f32>(_wgslsmith_f_op_f32(var_1.a.a.x - -220f), _wgslsmith_f_op_f32(ceil(arg_3.b.a.x)), _wgslsmith_f_op_f32(select(-475f, arg_0.x, false)), _wgslsmith_f_op_f32(798f - -949f)))));
    return 4294967295u;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> vec4<i32> {
    let var_0 = arg_1.a.x;
    var var_1 = arg_0;
    var_1 = ~arg_0;
    var_1 = 2147483647i;
    let var_2 = !arg_2;
    return vec4<i32>(-1i) * -min(reverseBits(vec4<i32>(1i, arg_0, 0i, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -1i, arg_1.c.b, arg_0) << (arg_1.a % vec4<u32>(32u)), -vec4<i32>(290i, arg_1.b.b, 2147483647i, arg_0)));
}

fn func_5(arg_0: vec4<i32>, arg_1: i32) -> Struct_4 {
    let var_0 = vec2<bool>(!(-9461i <= arg_0.x), true);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2133f), _wgslsmith_f_op_f32(f32(-1f) * -119f)))), ~_wgslsmith_div_i32(-arg_1, -2147483647i) >> (_wgslsmith_dot_vec3_u32(~select(vec3<u32>(u_input.a.x, 28438u, u_input.a.x), vec3<u32>(u_input.a.x, 70671u, u_input.a.x), vec3<bool>(false, var_0.x, var_0.x)), ~vec3<u32>(u_input.a.x, u_input.a.x, 1u)) % 32u), abs(u_input.a.x ^ u_input.a.x));
    let var_2 = all(!select(vec3<bool>(var_1.a.x < -1000f, !var_0.x, any(vec3<bool>(false, false, var_0.x))), vec3<bool>(!var_0.x, var_0.x, any(vec3<bool>(var_0.x, var_0.x, false))), vec3<bool>(true, !var_0.x, any(vec3<bool>(var_0.x, false, true)))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_1.a.x)))), 552f, var_1.a.x, -987f);
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-780f, var_1.a.x)))))), arg_1 | ~var_1.b, max(~(~u_input.a.x), ~u_input.a.x ^ 4294967295u)), Struct_1(var_1.a, _wgslsmith_mult_i32(_wgslsmith_mod_i32(12497i, arg_0.x << (29625u % 32u)), max(1i, var_1.b)), _wgslsmith_add_u32(_wgslsmith_sub_u32(var_1.c, 56377u ^ u_input.a.x), 67498u)), _wgslsmith_mult_vec3_u32(~((vec3<u32>(4294967295u, 22234u, var_1.c) >> (vec3<u32>(u_input.a.x, 42832u, u_input.a.x) % vec3<u32>(32u))) >> (firstTrailingBit(vec3<u32>(0u, 26974u, 14926u)) % vec3<u32>(32u))), select(reverseBits(min(vec3<u32>(17576u, u_input.a.x, u_input.a.x), vec3<u32>(1u, 0u, 4294967295u))), vec3<u32>(firstLeadingBit(u_input.a.x), 1u, _wgslsmith_mod_u32(32897u, 4294967295u)), arg_1 <= reverseBits(arg_1))), min(max(reverseBits(~vec3<u32>(65346u, var_1.c, u_input.a.x)), ~vec3<u32>(0u, u_input.a.x, 75150u) ^ ~vec3<u32>(1682u, 31897u, var_1.c)), vec3<u32>(u_input.a.x, u_input.a.x, min(0u, ~4294967295u))));
    return Struct_4(var_4.b);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_3) -> Struct_2 {
    var var_0 = vec3<f32>(1068f, _wgslsmith_f_op_f32(select(-382f, arg_2.b.a.x, any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a.a.x)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.c.a.x)))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.a.x))), arg_0.a.a.x)), arg_1.a.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var var_1 = ~(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_2.a.yzz, arg_2.a.wyy) & arg_0.a.c, arg_2.b.c, 4294967295u, _wgslsmith_mod_u32(func_2(vec2<f32>(-458f, 740f), Struct_4(arg_1.a), vec4<u32>(arg_2.b.c, 1u, arg_2.b.c, 45732u), Struct_3(arg_2.a, arg_0.a, arg_2.b, u_input.a.x)), select(4294967295u, 12911u, true))) << (~_wgslsmith_mod_vec4_u32(countOneBits(arg_2.a), ~vec4<u32>(arg_1.a.c, 4294967295u, arg_0.a.c, arg_0.a.c)) % vec4<u32>(32u)));
    var_1 = vec4<u32>(~37598u, arg_0.a.c, arg_1.a.c, arg_0.a.c);
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.a.x, arg_2.c.a.x, -610f) * vec3<f32>(arg_0.a.a.x, 1839f, -1518f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.b.a.x, 1931f, -307f), vec3<f32>(-509f, arg_0.a.a.x, -1324f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1087f, arg_1.a.a.x, arg_0.a.a.x)), true))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.a.a, vec2<f32>(104f, -1266f))))), _wgslsmith_mod_i32(32830i, min(-1i, arg_1.a.b) ^ -1i), _wgslsmith_mod_u32(func_5(vec4<i32>(arg_1.a.b, -14555i, arg_2.b.b, arg_2.b.b), 0i).a.c & 43295u, 31350u)), func_5(vec4<i32>(32937i, _wgslsmith_mod_i32(0i, -7574i), _wgslsmith_mult_i32(arg_1.a.b, _wgslsmith_add_i32(2147483647i, arg_0.a.b)), 36488i), 2147483647i).a, firstTrailingBit(_wgslsmith_clamp_vec3_u32(~(arg_2.a.zwx ^ vec3<u32>(u_input.a.x, arg_2.d, 24856u)), ~vec3<u32>(var_1.x, 0u, u_input.a.x), ~arg_2.a.wyw)), arg_2.a.xyy);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_3, arg_3: vec2<bool>) -> i32 {
    let var_0 = abs(arg_0.yy);
    var var_1 = func_6(func_5(~func_4(_wgslsmith_clamp_i32(arg_1, -29396i, 9476i), Struct_3(arg_2.a, Struct_1(vec2<f32>(arg_2.b.a.x, 244f), -2147483647i, 21227u), arg_2.b, 4294967295u), arg_3.x != true, func_2(arg_2.b.a, Struct_4(arg_2.b), arg_2.a, Struct_3(vec4<u32>(4294967295u, 0u, arg_2.a.x, 1u), Struct_1(arg_2.b.a, arg_2.c.b, 452u), arg_2.b, 0u))), 2147483647i ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_0.xz, var_0), -1i)), Struct_4(func_5(~firstTrailingBit(vec4<i32>(arg_2.c.b, -16642i, 0i, -13841i)), 1i).a), arg_2);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.c.a.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.a.x)))))));
    var var_3 = select(var_1.a.b, -44265i, var_1.c.x <= var_1.a.c);
    let var_4 = -vec3<i32>(var_1.a.b | var_1.b.b, -28869i, firstTrailingBit(arg_2.b.b));
    return max(func_4(func_5(vec4<i32>(firstLeadingBit(arg_0.x), arg_0.x, _wgslsmith_clamp_i32(arg_2.c.b, -2147483647i, -4829i), reverseBits(-1716i)), func_5(vec4<i32>(var_0.x, -24522i, 0i, var_4.x) ^ vec4<i32>(arg_0.x, arg_2.c.b, var_4.x, var_1.a.b), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 13080i, var_1.b.b, -4507i), vec4<i32>(arg_2.b.b, var_1.a.b, arg_2.c.b, var_4.x))).a.b).a.b, arg_2, arg_3.x, _wgslsmith_dot_vec3_u32(var_1.d, abs(var_1.d)) ^ abs(~1u)).x, 20344i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~(-vec4<i32>(func_1(vec3<i32>(-25167i, -2147483647i, 1i), 2147483647i, Struct_3(vec4<u32>(18248u, u_input.a.x, 4294967295u, u_input.a.x), Struct_1(vec2<f32>(-1126f, -355f), -10961i, u_input.a.x), Struct_1(vec2<f32>(343f, -4010f), -1i, u_input.a.x), 49373u), vec2<bool>(false, true)), _wgslsmith_sub_i32(19556i, -47042i), 1i, -18267i)));
    var_0 = ~(vec4<i32>(var_0.x, var_0.x, 2147483647i, 2147483647i) >> (_wgslsmith_sub_vec4_u32(reverseBits(countOneBits(vec4<u32>(76339u, u_input.a.x, 41936u, 0u))), firstLeadingBit(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1324f)) - -144f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(466f, 1000f)), -1098f))), func_5(firstLeadingBit(vec4<i32>(1i, ~var_0.x, 10782i, var_0.x)), _wgslsmith_mult_i32(var_0.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(38543i, -24410i), i32(-1i) * -1i, -var_0.x))).a.b, ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 102659u, u_input.a.x, u_input.a.x), vec4<u32>(36401u, u_input.a.x, u_input.a.x, u_input.a.x)), select(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 27519u) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(0u, u_input.a.x, 4294967295u, 1u), any(vec4<bool>(true, false, false, true)))), select((abs(vec2<i32>(var_0.x, -32975i)) | firstTrailingBit(vec2<i32>(var_0.x, var_0.x))) ^ (~vec2<i32>(var_0.x, 1i) & min(var_0.yx, var_0.xz)), ~var_0.wz, true));
}

