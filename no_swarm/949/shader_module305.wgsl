struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = vec3<bool>(u_input.a != u_input.a, true, any(vec2<bool>(true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true))))));
    let var_2 = Struct_1(true, max(vec4<i32>(_wgslsmith_div_i32(-u_input.a, -1i), 2147483647i, u_input.a, -2147483647i & u_input.a), _wgslsmith_div_vec4_i32((vec4<i32>(u_input.a, u_input.a, u_input.a, 2423i) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 31293u) % vec4<u32>(32u))) >> (vec4<u32>(4294967295u, arg_0, arg_0, 58581u) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_i32(vec4<i32>(30106i, u_input.a, 73034i, u_input.a), vec4<i32>(0i, u_input.a, u_input.a, 2147483647i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1332f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(465f + 258f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), _wgslsmith_clamp_vec3_u32(max(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0, 21660u, arg_0), ~vec3<u32>(arg_0, 35060u, arg_0)), ~(~vec3<u32>(arg_0, 1u, 0u))), vec3<u32>(u_input.b.x, ~44412u & (arg_0 << (arg_0 % 32u)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 18072u, u_input.b.x, 33922u)), firstTrailingBit(vec4<u32>(arg_0, u_input.b.x, u_input.b.x, 59581u)))), countOneBits(~u_input.b)));
    var_0 = -248f;
    var var_3 = var_1.x;
    return _wgslsmith_div_vec3_f32(var_2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.c, vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(-var_2.c.x)))));
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = Struct_1(true, firstTrailingBit(_wgslsmith_clamp_vec4_i32(-vec4<i32>(21688i, -62878i, arg_0, arg_0), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 26218i, 0i, u_input.a), vec4<i32>(41806i, arg_0, u_input.a, 1i)), vec4<i32>(-6641i, 2147483647i, 90215i, arg_0) | vec4<i32>(0i, arg_0, arg_0, 27121i)) ^ -_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a, 6927i, 23366i), vec4<i32>(arg_0, arg_0, u_input.a, arg_0))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_3(~select(31116u, 14824u, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(func_3(u_input.b.x))))))), u_input.b);
    let var_1 = _wgslsmith_f_op_f32(floor(var_0.c.x));
    let var_2 = 1626f;
    var var_3 = false;
    var_3 = var_0.a;
    return select(-u_input.a, ~_wgslsmith_mult_i32(u_input.a, u_input.a), all(select(vec4<bool>(true, false, true, var_0.a), select(vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(true, false, var_0.a, true)), !var_0.a)) || var_0.a);
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = select(select(select(select(!vec3<bool>(true, false, arg_2.a.x), !vec3<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x), arg_2.a), !(!arg_2.a), select(arg_2.a, arg_2.a, vec3<bool>(true, true, arg_2.a.x))), select(!(!vec3<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x)), vec3<bool>(arg_2.a.x, select(arg_2.a.x, arg_2.a.x, true), all(arg_2.a)), !(!arg_2.a)), arg_2.a), !vec3<bool>(false, true | (u_input.b.x <= 87249u), false), arg_2.a.x & all(vec3<bool>(true, false, all(vec4<bool>(arg_2.a.x, false, true, arg_2.a.x)))));
    let var_1 = arg_2.a.x;
    let var_2 = arg_2;
    var var_3 = Struct_1(var_2.a.x | !any(vec2<bool>(false, true)), _wgslsmith_div_vec4_i32(firstTrailingBit((vec4<i32>(arg_1, -44415i, -2147483647i, u_input.a) & vec4<i32>(35347i, 2147483647i, arg_0.x, -1i)) >> (~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), vec4<i32>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 21104i, -1i), vec4<i32>(arg_0.x, arg_0.x, -2147483647i, u_input.a)), -45003i), -1i, ~(-2147483647i) ^ _wgslsmith_clamp_i32(arg_0.x, arg_1, 1i), ~arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 112f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1022f - -1899f)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2346f)) + _wgslsmith_f_op_f32(round(-304f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1495f, 967f))), _wgslsmith_f_op_f32(f32(-1f) * -212f))), u_input.b);
    var var_4 = _wgslsmith_div_vec3_i32(vec3<i32>(firstTrailingBit(57964i), _wgslsmith_mod_i32(~0i, _wgslsmith_dot_vec3_i32(firstLeadingBit(var_3.b.xyz), var_3.b.zyy)), -_wgslsmith_div_i32(-1i, arg_1) & -47911i), -(~var_3.b.xzz));
    return !var_2.a;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(func_4(-(~vec2<i32>(u_input.a, u_input.a)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a >> (4294967295u % 32u), 1i), _wgslsmith_div_i32(-2147483647i, u_input.a), ~func_2(u_input.a)), Struct_2(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))));
    var var_1 = !var_0.a.x;
    return Struct_1(true, abs(~vec4<i32>(-u_input.a, countOneBits(-34500i), u_input.a, -1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(484f, 1046f, 426f), vec3<f32>(-1484f, -1000f, -1000f), var_0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(115f, -1000f, -1243f), vec3<f32>(-353f, 827f, -683f), var_0.a))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 150f, 1102f)))), vec3<u32>(~(~u_input.b.x | u_input.b.x), 1u, countOneBits(1333u)));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = 4294967295u;
    var_0 = 0u;
    var_0 = u_input.b.x;
    var var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(1u, 31793u, 28542u, u_input.b.x), vec4<u32>(27868u, 35243u, arg_2, arg_1.d.x), vec4<bool>(false, arg_1.a, true, arg_1.a)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, arg_2, u_input.b.x, arg_2), countOneBits(vec4<u32>(arg_2, u_input.b.x, arg_1.d.x, 4294967295u)))) | 4294967295u, _wgslsmith_mod_u32(arg_2, reverseBits(reverseBits(arg_2))), ~_wgslsmith_add_u32(~(~1u), arg_2), 4294967295u);
    return Struct_2(select(func_4(arg_0.yy, u_input.a, Struct_2(func_4(vec2<i32>(arg_0.x, 65313i), 54500i, Struct_2(vec3<bool>(arg_1.a, arg_1.a, false))))), vec3<bool>(all(select(vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a), vec4<bool>(true, arg_1.a, true, arg_1.a), true)), !arg_1.a, arg_1.a && true), !func_4(arg_1.b.ww, u_input.a, Struct_2(vec3<bool>(arg_1.a, false, arg_1.a)))));
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = func_1();
    var_0 = func_1();
    var_0 = func_1();
    let var_1 = 4305u;
    var_0 = func_1();
    return -abs(abs(vec4<i32>(arg_0, -8231i, select(u_input.a, -1i, arg_2.a.x), _wgslsmith_mod_i32(2147483647i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1((~u_input.a != _wgslsmith_add_i32(14536i >> (u_input.b.x % 32u), firstTrailingBit(u_input.a))) & any(vec2<bool>(select(true, false, false), true)), -func_6(u_input.a, ~select(36852u, 0u, true), func_5(select(vec3<i32>(u_input.a, u_input.a, -30460i), vec3<i32>(4711i, u_input.a, 1i), false), func_1(), 1u << (u_input.b.x % 32u), vec4<f32>(955f, 1454f, 375f, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_1().c.x, _wgslsmith_f_op_f32(-856f - -734f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -810f), _wgslsmith_mult_vec3_u32(vec3<u32>(~reverseBits(20102u), 4294967295u, _wgslsmith_mult_u32(17450u, u_input.b.x | u_input.b.x)), vec3<u32>(~firstTrailingBit(u_input.b.x), u_input.b.x, u_input.b.x)));
    var_0 = Struct_1(true, -vec4<i32>(-(~u_input.a), firstTrailingBit(-1i), var_0.b.x, func_6(_wgslsmith_sub_i32(-1i, -75475i), 56132u, Struct_2(vec3<bool>(var_0.a, false, var_0.a))).x), vec3<f32>(-764f, var_0.c.x, -697f), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(66662u, _wgslsmith_add_u32(u_input.b.x, 6788u), var_0.d.x), ~(vec3<u32>(1u, u_input.b.x, 1721u) & u_input.b)), u_input.b.x ^ ~4294967295u, ~(~u_input.b.x)));
    var var_1 = -(~var_0.b << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b.x, _wgslsmith_mult_u32(var_0.d.x, 0u), firstTrailingBit(14388u)), ~vec4<u32>(var_0.d.x, 35396u, 0u, 4294967295u)) % vec4<u32>(32u)));
    var_0 = Struct_1(var_0.a, abs(vec4<i32>(var_1.x, ~u_input.a, ~func_2(16107i), ~max(var_0.b.x, 1i))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(var_0.c, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.c.x, 1556f, -999f))), func_5(var_0.b.zyy, Struct_1(var_0.a, var_0.b, var_0.c, vec3<u32>(1u, 4294967295u, var_0.d.x)), var_0.d.x, vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)).a)))), vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(-func_1().c.x), var_0.c.x))), var_0.d);
    var var_2 = Struct_2(!vec3<bool>(true, !var_0.a, all(func_4(var_0.b.xz, -1i, Struct_2(vec3<bool>(true, true, var_0.a))))));
    var_0 = Struct_1(func_2(~abs(u_input.a)) != 0i, _wgslsmith_sub_vec4_i32(func_1().b, firstTrailingBit(abs(~vec4<i32>(-2147483647i, 4702i, var_1.x, 2147483647i)))), var_0.c, func_1().d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(15740u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(6885u, 0u, 32547u, var_0.d.x)), 1u)), ~_wgslsmith_clamp_u32(abs(var_0.d.x), 54017u, _wgslsmith_mod_u32(var_0.d.x, u_input.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(u_input.b.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, 1230f, var_0.c.x) * var_0.c)))));
}

