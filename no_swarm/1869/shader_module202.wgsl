struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9>;

var<private> global1: array<u32, 30>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_4(Struct_1(select(min(abs(vec3<i32>(u_input.d, u_input.d, u_input.b)), vec3<i32>(0i, u_input.b, -1i) >> (vec3<u32>(u_input.c, 0u, 24441u) % vec3<u32>(32u))), firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.b), vec3<i32>(u_input.a, 1i, u_input.d))), true), -161f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-878f)))), u_input.d == ~u_input.b, Struct_2(~(~u_input.c), abs(1u), Struct_1(-_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.d, u_input.b), vec3<i32>(20207i, 2147483647i, u_input.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1634f * -1243f), _wgslsmith_f_op_f32(f32(-1f) * -1171f))), -412f)), ~reverseBits(u_input.a));
    let var_1 = Struct_2(~(~select(_wgslsmith_mod_u32(74627u, u_input.c), 0u, !var_0.b)), 0u, var_0.a);
    let var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 33547u, u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)]), vec4<u32>(var_1.b, var_1.a, 4294967295u, u_input.c), vec4<u32>(var_0.c.a, var_0.c.b, 1u, 13493u)), ~vec4<u32>(var_1.a, 1u, global1[_wgslsmith_index_u32(var_0.c.b, 30u)], 1u)), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b, global1[_wgslsmith_index_u32(51140u, 30u)], 1u, 1u), vec4<u32>(16213u, 1u, 0u, 17775u)))), ~abs(~var_0.c.b)) ^ ~(~vec2<u32>(abs(28329u), global1[_wgslsmith_index_u32(countOneBits(var_0.c.a), 30u)]));
    let var_3 = _wgslsmith_f_op_f32(step(var_0.a.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1441f)))));
    var var_4 = select(abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.c.a, 27564u, 72u, var_1.a) ^ vec4<u32>(var_2.x, 4294967295u, var_2.x, 4294967295u), ~vec4<u32>(8393u, 1u, 1u, var_0.c.b))), vec4<u32>(0u, 23019u, ~u_input.c, countOneBits(_wgslsmith_clamp_u32(var_0.c.a, var_1.b, 12466u) | ~4294967295u)), var_0.b);
    return abs(vec4<i32>(_wgslsmith_mult_i32(min(0i, _wgslsmith_clamp_i32(u_input.b, 1i, 3584i)), ~1i), 44339i, ~(-var_0.d), (_wgslsmith_dot_vec4_i32(vec4<i32>(4630i, var_1.c.a.x, -1i, 2147483647i), vec4<i32>(var_0.c.c.a.x, u_input.a, -1i, var_1.c.a.x)) | abs(-16165i)) << (max(global1[_wgslsmith_index_u32(~25960u, 30u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 72700u), vec2<u32>(4294967295u, 1u)), 30u)]) % 32u)));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -2147483647i;
    let var_1 = Struct_5(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d >> (arg_0.c.a % 32u), ~1i, max(-9372i, u_input.a), arg_3.a.x) & ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a.a.x, arg_0.d, u_input.a, -2547i), vec4<i32>(2147483647i, arg_0.d, 2147483647i, u_input.a)), -func_3()), arg_0.a, Struct_1(firstTrailingBit(countOneBits(arg_3.a)), arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -414f)), Struct_4(arg_3, all(vec3<bool>(any(vec3<bool>(arg_0.b, arg_0.b, true)), all(vec2<bool>(true, arg_0.b)), any(vec3<bool>(arg_0.b, arg_0.b, arg_0.b)))), Struct_2(arg_1.x, countOneBits(19208u), arg_3), -func_3().x));
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(abs(_wgslsmith_clamp_u32(max(global1[_wgslsmith_index_u32(arg_0.c.a, 30u)], 43829u), 0u, 0u)), 0u), vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(abs(arg_1)), abs(_wgslsmith_add_vec3_u32(arg_1, arg_1))), global1[_wgslsmith_index_u32(var_1.d.c.a ^ ~u_input.c, 30u)]));
    let var_3 = _wgslsmith_sub_vec3_i32(-(~vec3<i32>(27642i, var_1.c.a.x, arg_3.a.x)) << (vec3<u32>(47402u, var_1.d.c.a, 86637u) % vec3<u32>(32u)), abs(var_1.b.a) << ((vec3<u32>(var_1.d.c.a << (global1[_wgslsmith_index_u32(46193u, 30u)] % 32u), ~0u, var_1.d.c.b) | select(firstLeadingBit(arg_1), _wgslsmith_add_vec3_u32(vec3<u32>(var_2, global1[_wgslsmith_index_u32(12723u, 30u)], 50347u), arg_1), all(vec2<bool>(arg_0.b, var_1.d.b)))) % vec3<u32>(32u)));
    var var_4 = var_1.d;
    return arg_3;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.c.a;
    let var_1 = Struct_5(vec4<i32>(-func_2(Struct_4(arg_0.c, false, Struct_2(global1[_wgslsmith_index_u32(26021u, 30u)], u_input.c, arg_0.c), -11517i), vec3<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(arg_0.a, 30u)]), vec2<f32>(1868f, arg_0.c.c), Struct_1(vec3<i32>(u_input.d, 1i, 51661i), arg_0.c.c, arg_0.c.c)).a.x ^ abs(24607i), abs(max(_wgslsmith_add_i32(u_input.d, -1i), -1i)), u_input.a, -2147483647i), func_2(Struct_4(func_2(Struct_4(Struct_1(vec3<i32>(16656i, arg_0.c.a.x, 0i), arg_0.c.c, -652f), false, Struct_2(48242u, u_input.c, Struct_1(arg_0.c.a, arg_0.c.b, arg_0.c.c)), var_0.x), max(vec3<u32>(global1[_wgslsmith_index_u32(27433u, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23908u, 30u)], 30u)], arg_0.a), vec3<u32>(60323u, 1u, arg_0.b)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1828f, -497f), vec2<f32>(arg_0.c.c, arg_0.c.b))), Struct_1(vec3<i32>(var_0.x, u_input.d, u_input.b), arg_0.c.b, -1657f)), any(vec4<bool>(true, true, true, true)), Struct_2(0u, arg_0.b | arg_0.b, arg_0.c), ~(-577i << (u_input.c % 32u))), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(37895u, global1[_wgslsmith_index_u32(u_input.c, 30u)], 22471u, 4294967295u), vec4<u32>(92122u, global1[_wgslsmith_index_u32(67352u, 30u)], 0u, 42810u)), ~1u, min(u_input.c, 20344u)), vec2<f32>(_wgslsmith_f_op_f32(step(2358f, arg_0.c.c)), -1000f), func_2(Struct_4(func_2(Struct_4(Struct_1(vec3<i32>(44663i, u_input.b, -6798i), arg_0.c.b, arg_0.c.b), true, arg_0, -71541i), vec3<u32>(u_input.c, 4294967295u, arg_0.a), vec2<f32>(1000f, arg_0.c.c), Struct_1(var_0, 889f, arg_0.c.c)), -2147483647i > var_0.x, Struct_2(4294967295u, 38002u, arg_0.c), 1i), min(max(vec3<u32>(0u, 4294967295u, arg_0.a), vec3<u32>(3112u, 4294967295u, u_input.c)), vec3<u32>(7475u, 7093u, 69388u)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c.c, arg_0.c.b), vec2<f32>(arg_0.c.c, arg_0.c.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-558f, arg_0.c.c)))), Struct_1(arg_0.c.a, -1101f, arg_0.c.c))), arg_0.c, Struct_4(Struct_1(arg_0.c.a, 1000f, _wgslsmith_f_op_f32(step(-135f, -341f))), true, Struct_2(~arg_0.a, global1[_wgslsmith_index_u32(u_input.c, 30u)], arg_0.c), var_0.x));
    let var_2 = _wgslsmith_f_op_f32(-func_2(Struct_4(func_2(Struct_4(var_1.b, var_1.d.b, Struct_2(var_1.d.c.b, global1[_wgslsmith_index_u32(arg_0.b, 30u)], Struct_1(var_0, -1844f, arg_0.c.b)), u_input.a), vec3<u32>(arg_0.a, 4294967295u, arg_0.b) & vec3<u32>(u_input.c, 88328u, 107542u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-671f, arg_0.c.c)), func_2(Struct_4(var_1.c, var_1.d.b, arg_0, -14239i), vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(59815u, 30u)], 83378u), vec2<f32>(451f, var_1.c.c), Struct_1(vec3<i32>(-2147483647i, -21877i, u_input.b), -1436f, arg_0.c.c))), all(select(vec3<bool>(var_1.d.b, false, false), vec3<bool>(var_1.d.b, false, false), var_1.d.b)), var_1.d.c, _wgslsmith_mult_i32(_wgslsmith_mod_i32(54182i, u_input.b), arg_0.c.a.x)), ~(vec3<u32>(0u, 1u, u_input.c) >> (vec3<u32>(arg_0.b, 0u, 4294967295u) % vec3<u32>(32u))) << (vec3<u32>(abs(global1[_wgslsmith_index_u32(arg_0.b, 30u)]), 41951u, 21642u) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.c.c.b, var_1.c.b))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b.b, var_1.c.c), vec2<f32>(var_1.d.c.c.c, 1244f))) - vec2<f32>(arg_0.c.b, 1719f))), Struct_1(min(vec3<i32>(arg_0.c.a.x, -2147483647i, arg_0.c.a.x), vec3<i32>(var_1.a.x, u_input.a, 25053i)) >> (max(vec3<u32>(var_1.d.c.b, 4585u, arg_0.a), vec3<u32>(var_1.d.c.a, 35812u, 7088u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(sign(-1776f)), 1000f)).b);
    global0 = array<vec4<bool>, 9>();
    let var_3 = select(select(!(!global0[_wgslsmith_index_u32(u_input.c | 4539u, 9u)]), vec4<bool>((var_1.d.c.b == 4294967295u) | select(var_1.d.b, true, false), true, all(!vec3<bool>(false, var_1.d.b, var_1.d.b)), (var_1.d.b && true) == true), vec4<bool>(false, any(!vec3<bool>(var_1.d.b, var_1.d.b, var_1.d.b)), true, false)), !(!global0[_wgslsmith_index_u32(63082u, 9u)]), vec4<bool>(false, false, select((192f != var_1.c.c) && any(vec2<bool>(var_1.d.b, var_1.d.b)), _wgslsmith_mult_i32(var_1.c.a.x, 0i) <= (0i << (global1[_wgslsmith_index_u32(u_input.c, 30u)] % 32u)), !var_1.d.b), any(select(vec4<bool>(var_1.d.b, false, false, var_1.d.b), vec4<bool>(false, false, var_1.d.b, var_1.d.b), var_1.d.b))));
    return Struct_1(vec3<i32>(-_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_1.b.a.x, 0i), _wgslsmith_sub_i32(var_1.c.a.x, var_1.a.x)), ~u_input.d, -arg_0.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.c + arg_0.c.b))))), _wgslsmith_f_op_f32(arg_0.c.b - 3003f));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_4) -> Struct_2 {
    global0 = array<vec4<bool>, 9>();
    var var_0 = 9543u;
    let var_1 = max(-vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(157i, 7787i, u_input.b), vec3<i32>(arg_3.d, -20209i, arg_3.c.c.a.x)), arg_0.d, firstTrailingBit(arg_3.d), ~arg_0.d), countOneBits(reverseBits(vec4<i32>(arg_3.a.a.x, 2147483647i, arg_3.c.c.a.x, 41274i))) | (firstTrailingBit(vec4<i32>(arg_3.d, arg_0.a.a.x, arg_0.d, arg_3.a.a.x)) >> (vec4<u32>(0u, arg_1.x, 4294967295u, 0u) % vec4<u32>(32u)))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.c.b, global1[_wgslsmith_index_u32(18330u, 30u)], arg_1.x), _wgslsmith_div_vec3_u32(arg_1.xzz, arg_1.xzz)), arg_0.c.b, ~arg_0.c.a, 43127u), vec4<u32>(33480u, arg_1.x, _wgslsmith_div_u32(1u, 1u), 0u)) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.c.c.c, 575f))))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a.c, arg_3.c.c.c), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.c.c.b, -443f), vec2<f32>(arg_3.a.b, -1123f)))))), !arg_3.b || all(select(vec2<bool>(arg_3.b, arg_0.b), vec2<bool>(true, false), true)))));
    let var_3 = Struct_4(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, _wgslsmith_sub_i32(2147483647i, 22888i), -arg_3.a.a.x), arg_0.a.a), arg_0.a.b, _wgslsmith_f_op_f32(-arg_3.c.c.c)), all(select(!select(vec2<bool>(arg_3.b, arg_3.b), vec2<bool>(arg_2, arg_0.b), vec2<bool>(arg_2, true)), select(!vec2<bool>(arg_0.b, false), select(vec2<bool>(false, false), vec2<bool>(arg_2, false), true), select(vec2<bool>(arg_0.b, arg_3.b), vec2<bool>(true, arg_0.b), true)), firstLeadingBit(global1[_wgslsmith_index_u32(u_input.c, 30u)]) < global1[_wgslsmith_index_u32(abs(u_input.c), 30u)])), arg_0.c, ~(~(-2147483647i)));
    return arg_0.c;
}

fn func_1(arg_0: f32) -> Struct_2 {
    global1 = array<u32, 30>();
    let var_0 = reverseBits(~(-(~(vec2<i32>(32655i, 30868i) & vec2<i32>(-1i, u_input.b)))));
    let var_1 = -(_wgslsmith_div_vec3_i32(vec3<i32>(0i, var_0.x, var_0.x), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, u_input.d, var_0.x) | vec3<i32>(-56343i, var_0.x, u_input.d), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, u_input.b, u_input.b), vec3<i32>(1i, 24212i, -2147483647i)))) >> (vec3<u32>(~countOneBits(1u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(78588u, 30u)], 14718u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 60696u, u_input.c), false), vec3<u32>(u_input.c, u_input.c, 1251u)), ~(~global1[_wgslsmith_index_u32(u_input.c, 30u)])) % vec3<u32>(32u)));
    let var_2 = true;
    let var_3 = !select(select(!(!vec3<bool>(var_2, var_2, var_2)), !vec3<bool>(var_2, var_2, true), select(!vec3<bool>(var_2, var_2, true), select(vec3<bool>(var_2, true, false), vec3<bool>(true, var_2, false), vec3<bool>(true, false, var_2)), vec3<bool>(false, false, var_2))), !vec3<bool>(arg_0 > 1424f, all(vec4<bool>(false, false, var_2, var_2)), true), var_2);
    return func_5(Struct_4(func_4(Struct_2(_wgslsmith_div_u32(4294967295u, u_input.c), 1u, func_2(Struct_4(Struct_1(vec3<i32>(var_0.x, -2147483647i, 9207i), 1013f, -1128f), true, Struct_2(u_input.c, 28154u, Struct_1(vec3<i32>(u_input.b, var_1.x, var_0.x), 1043f, -1160f)), var_0.x), vec3<u32>(1u, 35428u, u_input.c), vec2<f32>(arg_0, 671f), Struct_1(vec3<i32>(u_input.a, var_1.x, -17223i), -1688f, -153f)))), var_2, Struct_2(u_input.c, ~abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 30u)], 30u)]), func_2(Struct_4(Struct_1(var_1, -449f, -808f), false, Struct_2(4294967295u, u_input.c, Struct_1(vec3<i32>(-1i, var_1.x, var_0.x), arg_0, -1379f)), var_0.x), select(vec3<u32>(10274u, u_input.c, 100526u), vec3<u32>(1u, u_input.c, 19929u), var_3.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(548f, arg_0)), Struct_1(var_1, 356f, 757f))), firstLeadingBit(2147483647i)), abs(select(vec4<u32>(u_input.c, 60273u, 76760u, 1u) | vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)], 0u, 0u), ~vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.c, 30u)], 11051u, 4294967295u), any(vec2<bool>(var_2, var_2))) >> (vec4<u32>(~u_input.c, global1[_wgslsmith_index_u32(u_input.c, 30u)], ~3102u, select(115465u, u_input.c, false)) % vec4<u32>(32u))), var_3.x, Struct_4(Struct_1(select(vec3<i32>(24123i, -44668i, u_input.d), var_1, vec3<bool>(var_3.x, false, var_2)), arg_0, _wgslsmith_f_op_f32(-func_4(Struct_2(global1[_wgslsmith_index_u32(u_input.c, 30u)], 79208u, Struct_1(vec3<i32>(var_1.x, var_0.x, 21886i), arg_0, arg_0))).b)), !all(select(vec2<bool>(false, false), vec2<bool>(false, true), var_2)), Struct_2(~(~global1[_wgslsmith_index_u32(u_input.c, 30u)]), u_input.c, func_2(Struct_4(Struct_1(vec3<i32>(49229i, 65598i, var_1.x), -1732f, arg_0), var_2, Struct_2(1u, u_input.c, Struct_1(vec3<i32>(-44364i, var_1.x, u_input.a), 687f, arg_0)), 34589i), ~vec3<u32>(0u, 48971u, global1[_wgslsmith_index_u32(u_input.c, 30u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 370f) * vec2<f32>(arg_0, 446f)), Struct_1(vec3<i32>(var_1.x, var_0.x, u_input.b), 860f, 1000f))), -19400i));
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    global1 = array<u32, 30>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-548f, _wgslsmith_div_f32(arg_2.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.c.c, 863f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(func_2(Struct_4(Struct_1(arg_2.a.a, 437f, 499f), arg_0, arg_1, -1i), vec3<u32>(5386u, u_input.c, 16516u), vec2<f32>(213f, 354f), Struct_1(arg_2.a.a, arg_2.a.b, arg_2.a.c)).b, _wgslsmith_f_op_f32(floor(1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.c))), 514f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(861f, arg_2.a.c, arg_1.c.c, -1746f)))), vec4<f32>(arg_2.a.b, _wgslsmith_div_f32(arg_2.a.c, 1000f), _wgslsmith_f_op_f32(arg_2.a.c + arg_2.a.c), _wgslsmith_f_op_f32(f32(-1f) * -2379f)))));
    var var_1 = ~12394u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-734f)), _wgslsmith_f_op_f32(select(-1608f, _wgslsmith_div_f32(arg_2.a.c, var_0.x), !arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-587f, 340f, false))))));
    let var_3 = vec3<i32>(0i, -1i, 21062i);
    return func_4(Struct_2(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1u, 30u)], 4885u), 0u, arg_2.a));
}

fn func_7(arg_0: Struct_1) -> Struct_3 {
    global0 = array<vec4<bool>, 9>();
    global0 = array<vec4<bool>, 9>();
    return Struct_3(Struct_1(_wgslsmith_clamp_vec3_i32(~func_6(false, Struct_2(global1[_wgslsmith_index_u32(u_input.c, 30u)], 12990u, arg_0), Struct_3(Struct_1(vec3<i32>(2147483647i, 1i, 53665i), 1052f, arg_0.c))).a, arg_0.a, -(vec3<i32>(2147483647i, -1i, -41517i) | arg_0.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(step(-1000f, arg_0.c)), any(vec3<bool>(false, true, true)))))), func_4(Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.c), 30u)], 19376u, func_5(Struct_4(arg_0, true, Struct_2(u_input.c, 10736u, Struct_1(arg_0.a, arg_0.c, arg_0.b)), arg_0.a.x), vec4<u32>(global1[_wgslsmith_index_u32(25191u, 30u)], 0u, u_input.c, 4294967295u), false, Struct_4(Struct_1(arg_0.a, -647f, -674f), true, Struct_2(23094u, global1[_wgslsmith_index_u32(u_input.c, 30u)], arg_0), -17046i)).c)).c));
}

fn func_8(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<bool>) -> bool {
    var var_0 = vec4<i32>(~func_3().x, ~(i32(-1i) * -1i), -2147483647i, arg_1.a.a.x) | (~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 2147483647i, -59433i, -28596i), vec4<i32>(13727i, 2147483647i, u_input.a, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, u_input.b, arg_1.a.a.x, u_input.a), vec4<i32>(u_input.d, 20184i, arg_1.a.a.x, 20462i))) & -vec4<i32>(_wgslsmith_mult_i32(0i, u_input.a), arg_1.a.a.x, -34013i, arg_1.a.a.x));
    let var_1 = vec3<f32>(arg_1.a.b, _wgslsmith_f_op_f32(-func_1(arg_1.a.b).c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.c + -764f) - arg_1.a.b));
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!any(vec2<bool>(true, true)) == true, func_8(vec4<bool>(any(vec2<bool>(true, true)), u_input.b == countOneBits(u_input.d), false, (1u | u_input.c) < u_input.c), func_7(func_6(true, func_1(465f), Struct_3(Struct_1(vec3<i32>(u_input.d, -1i, u_input.b), -154f, 1690f)))), !(!select(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(38541u, 9u)], global0[_wgslsmith_index_u32(u_input.c, 9u)]))));
    global1 = array<u32, 30>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(840f, _wgslsmith_f_op_f32(-2101f + 2888f)) - vec2<f32>(_wgslsmith_f_op_f32(-func_2(Struct_4(Struct_1(vec3<i32>(34157i, u_input.b, u_input.a), 396f, 702f), var_0.x, Struct_2(55015u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 30u)], 30u)], Struct_1(vec3<i32>(0i, -1i, u_input.d), 1391f, 454f)), 1346i), abs(vec3<u32>(0u, 0u, u_input.c)), _wgslsmith_div_vec2_f32(vec2<f32>(148f, -1731f), vec2<f32>(-1177f, -1000f)), Struct_1(vec3<i32>(-2147483647i, 38870i, 1i), 1036f, -510f)).b), func_6(true, func_1(_wgslsmith_f_op_f32(f32(-1f) * -1091f)), func_7(func_7(Struct_1(vec3<i32>(u_input.d, u_input.b, u_input.a), 232f, -1734f)).a)).b));
    let var_2 = Struct_3(func_6(true, Struct_2(global1[_wgslsmith_index_u32(countOneBits(~global1[_wgslsmith_index_u32(0u, 30u)]), 30u)], global1[_wgslsmith_index_u32(reverseBits(7407u | global1[_wgslsmith_index_u32(81040u, 30u)]), 30u)], Struct_1(~vec3<i32>(-1i, -2147483647i, u_input.d), var_1.x, -746f)), Struct_3(func_2(Struct_4(Struct_1(vec3<i32>(u_input.a, u_input.d, -18512i), 351f, var_1.x), var_0.x, Struct_2(global1[_wgslsmith_index_u32(u_input.c, 30u)], 0u, Struct_1(vec3<i32>(2147483647i, u_input.d, u_input.d), var_1.x, 456f)), -17435i), ~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], u_input.c, 4294967295u), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(772f, var_1.x), vec2<f32>(var_1.x, 1392f))), func_4(Struct_2(u_input.c, u_input.c, Struct_1(vec3<i32>(u_input.b, 0i, -615i), var_1.x, var_1.x)))))));
    let var_3 = Struct_1(var_2.a.a, func_6(-2147483647i == _wgslsmith_mod_i32(2147483647i, u_input.a), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1243f)), var_2).c, _wgslsmith_f_op_f32(-var_2.a.b));
    var var_4 = -vec3<i32>(var_3.a.x, ~((28281i ^ u_input.a) & -31599i), _wgslsmith_mult_i32(53672i, var_2.a.a.x));
    let var_5 = Struct_4(func_7(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f) * 369f)).c).a, all(var_0), Struct_2(min(func_1(var_3.c).b, func_5(Struct_4(Struct_1(var_2.a.a, 1182f, -761f), var_0.x, Struct_2(1u, 1u, Struct_1(var_3.a, -601f, -196f)), var_3.a.x), max(vec4<u32>(12977u, 113703u, 4294967295u, global1[_wgslsmith_index_u32(u_input.c, 30u)]), vec4<u32>(0u, 1u, global1[_wgslsmith_index_u32(38711u, 30u)], u_input.c)), var_0.x, Struct_4(Struct_1(var_2.a.a, -412f, var_3.c), true, Struct_2(u_input.c, u_input.c, var_3), u_input.a)).b), _wgslsmith_add_u32(0u, countOneBits(14893u >> (0u % 32u))), Struct_1(-var_2.a.a, _wgslsmith_f_op_f32(ceil(var_1.x)), -295f)), ~(-_wgslsmith_mult_i32(2147483647i, var_4.x) & abs(13757i)));
    global0 = array<vec4<bool>, 9>();
    global0 = array<vec4<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(min(min(~(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.c, 30u)], var_5.c.a)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(var_5.c.a, 30u)], 32068u), vec2<u32>(u_input.c, 0u)), var_5.c.b)), _wgslsmith_mult_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_5.c.b), vec2<u32>(0u, 40418u)), vec2<u32>(85209u, u_input.c), var_0), ~vec2<u32>(var_5.c.b, 101080u) << (vec2<u32>(54654u, u_input.c) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.c)), 521f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_5.c.c.b))) + _wgslsmith_f_op_f32(min(var_5.c.c.b, -847f))));
}

