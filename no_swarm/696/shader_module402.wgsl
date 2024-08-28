struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-108f * _wgslsmith_f_op_f32(step(1274f, 1000f))), -1000f, true)))));
    let var_1 = Struct_2(Struct_1(1u < u_input.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -261f) + vec2<f32>(var_0, 387f)))))), Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, var_0), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, -747f), vec2<f32>(-886f, var_0))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, var_0)))))), Struct_1(true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(510f, -1346f), vec2<f32>(var_0, 138f), vec2<bool>(false, true))))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(816f, var_0, -1881f) * vec3<f32>(821f, -1000f, -1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-701f, var_0, 351f), vec3<f32>(var_0, 1530f, var_0), true))), vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1527f - -580f)), _wgslsmith_f_op_f32(-var_0))), Struct_1(any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, 1119f))))))));
    let var_2 = u_input.b.zz;
    var var_3 = Struct_4(vec2<bool>(any(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, var_1.c.a, false, false), vec4<bool>(true, var_1.c.a, var_1.b.a, true))), all(vec2<bool>(true, true))), var_1.c);
    var var_4 = Struct_2(Struct_1(~u_input.c.x < _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 28234u), abs(vec2<u32>(4294967295u, 1u))), var_3.b.b), Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_3.b.b - var_1.a.b), var_1.a.b)))), var_3.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(419f, -2138f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.b.b.x, 1847f) * _wgslsmith_f_op_f32(max(var_1.a.b.x, -210f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-616f, var_1.a.b.x, 443f), vec3<f32>(var_0, var_0, var_3.b.b.x)), var_1.d), _wgslsmith_f_op_vec3_f32(select(var_1.d, vec3<f32>(-869f, var_0, var_3.b.b.x), select(vec3<bool>(false, var_3.a.x, var_3.b.a), vec3<bool>(var_3.a.x, false, var_1.c.a), false))), select(vec3<bool>(var_3.b.a, var_3.b.a, var_1.c.a), vec3<bool>(var_3.b.a, false, true), !var_1.a.a)))), Struct_1(any(vec4<bool>(var_3.b.a, var_3.b.a | var_1.e.a, true, select(false, true, var_3.b.a))), var_1.d.zx));
    return all(select(var_3.a, var_3.a, !(u_input.a != -18808i))) & var_1.e.a;
}

fn func_2() -> f32 {
    let var_0 = firstLeadingBit(_wgslsmith_add_vec2_i32(u_input.b.zy, vec2<i32>(~53453i, 21477i)));
    var var_1 = func_3();
    return _wgslsmith_f_op_f32(f32(-1f) * -2434f);
}

fn func_4(arg_0: vec3<f32>) -> Struct_4 {
    let var_0 = select(vec3<bool>(!any(vec3<bool>(false, false, true)), !(!any(vec3<bool>(true, true, true))), false), select(vec3<bool>(true, true, true), vec3<bool>(true, !any(vec3<bool>(true, false, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false))), !all(vec4<bool>(true, false, true, true))), !select(vec3<bool>(all(vec2<bool>(false, false)), true, any(vec4<bool>(false, false, false, false))), vec3<bool>(true, arg_0.x > 838f, false), vec3<bool>(true, true, true)));
    var var_1 = u_input.b.xz;
    let var_2 = reverseBits(~reverseBits(-vec4<i32>(u_input.a, -2147483647i, var_1.x, var_1.x)));
    var var_3 = Struct_3(-_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(var_1.x, -1i, u_input.b.x, -1i), var_2), -(var_2 | var_2)));
    var var_4 = ~(~(firstLeadingBit(u_input.c.yz) | vec2<u32>(15584u, 31146u))) | vec2<u32>(0u, _wgslsmith_dot_vec2_u32(min(u_input.c.yx, u_input.c.xy), min(u_input.c.yx, vec2<u32>(u_input.d, 4294967295u))) >> (u_input.c.x % 32u));
    return Struct_4(!vec2<bool>(true, var_0.x), Struct_1(func_3() | true, arg_0.zx));
}

fn func_1(arg_0: i32) -> vec4<u32> {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1776f - _wgslsmith_f_op_f32(-1000f * 194f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(f32(-1f) * -920f))));
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1457f, 1582f, var_0.b.b.x), vec3<f32>(213f, var_0.b.b.x, 1256f), var_0.b.a)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.b.x, 1554f, var_0.b.b.x))))))))).b;
    var var_2 = Struct_1(!any(vec3<bool>(var_0.a.x & var_0.b.a, any(vec3<bool>(var_1.a, true, var_0.b.a)), func_4(vec3<f32>(var_0.b.b.x, 1060f, var_0.b.b.x)).b.a)), var_1.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-308f, var_0.b.b.x), _wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(-100f, 445f)))))));
    var_2 = var_0.b;
    return vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.d, u_input.d, 40187u, u_input.d) | vec4<u32>(50153u, 4294967295u, u_input.d, 6722u)), vec4<u32>(u_input.d, u_input.d, 79817u, 50243u) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 53525u, u_input.c.x, 74785u), vec4<u32>(u_input.d, u_input.c.x, 71665u, 4294967295u), vec4<u32>(25849u, 0u, 0u, 1u)) % vec4<u32>(32u))), u_input.c.x ^ 4294967295u), ~countOneBits(u_input.c.x | u_input.d) >> ((u_input.d ^ 20266u) % 32u), _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, 4294967295u), 138328u), 19296u >> (_wgslsmith_div_u32(42254u, u_input.d) % 32u)) & _wgslsmith_dot_vec3_u32(u_input.c, ~u_input.c), 0u);
}

fn func_5(arg_0: vec4<u32>, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.a.b - _wgslsmith_f_op_vec2_f32(floor(arg_2.xz))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-232f - 343f), _wgslsmith_f_op_f32(arg_3.d.x * arg_3.e.b.x)) - arg_2.zy), vec2<f32>(443f, -432f))));
    let var_1 = Struct_2(Struct_1(arg_3.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1628f, -347f))) + vec2<f32>(_wgslsmith_f_op_f32(var_0.x - arg_3.b.b.x), _wgslsmith_f_op_f32(-arg_2.x)))), func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_3.b.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x + -356f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2168f - -210f)))).b, arg_3.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), -244f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-346f)) - -1688f)) * _wgslsmith_f_op_vec3_f32(select(arg_2, vec3<f32>(_wgslsmith_f_op_f32(-arg_3.a.b.x), 1f, -1000f), all(vec3<bool>(arg_3.a.a, true, arg_3.c.a)) && func_3()))), Struct_1(arg_3.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(func_4(arg_2).b.b)) - _wgslsmith_f_op_vec2_f32(-arg_2.zz))));
    let var_2 = min(vec4<i32>(min(_wgslsmith_mult_i32(arg_1, u_input.b.x) | max(u_input.a, arg_1), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_1, arg_1, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-19481i, 1i, -61704i, arg_1), vec4<i32>(u_input.a, 2147483647i, arg_1, arg_1)))), _wgslsmith_clamp_i32(arg_1, 2147483647i, _wgslsmith_mod_i32(u_input.b.x, arg_1) << (u_input.d % 32u)), -(~(~u_input.b.x)), reverseBits(firstTrailingBit(arg_1))), _wgslsmith_add_vec4_i32(-select(-vec4<i32>(24796i, arg_1, -2147483647i, arg_1), vec4<i32>(-2147483647i, 5278i, arg_1, -59762i), vec4<bool>(false, false, arg_3.e.a, var_1.a.a)), vec4<i32>(_wgslsmith_mult_i32(-2147483647i, ~u_input.a), arg_1, ~(-arg_1), -84904i)));
    return Struct_2(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) * _wgslsmith_f_op_vec3_f32(vec3<f32>(124f, -1219f, 766f) - _wgslsmith_f_op_vec3_f32(-var_1.d)))).b, var_1.e, var_1.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2164f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.b.x))))), arg_3.a);
}

fn func_6(arg_0: u32, arg_1: Struct_2) -> Struct_3 {
    let var_0 = min(~u_input.c.yx, ~(~vec2<u32>(~arg_0, ~0u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(arg_1.d, _wgslsmith_div_vec3_f32(arg_1.d, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(arg_1.d, vec3<f32>(-111f, arg_1.b.b.x, 586f))))))))));
    var var_2 = arg_1.e;
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.d), vec3<f32>(-1285f, var_1.x, var_1.x), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(158f, arg_1.a.b.x, arg_1.a.b.x), vec3<f32>(var_2.b.x, -1323f, -1197f))) * vec3<f32>(var_1.x, arg_1.b.b.x, -754f)))));
    return Struct_3(_wgslsmith_div_vec4_i32(abs(vec4<i32>(~u_input.b.x, ~u_input.a, u_input.b.x, countOneBits(u_input.b.x))), select(select(vec4<i32>(u_input.b.x, u_input.b.x, 44163i, 1i), vec4<i32>(2147483647i, -1i, 7588i, u_input.a), vec4<bool>(var_3.a.x, var_3.a.x, false, var_2.a)), ~vec4<i32>(2147483647i, u_input.a, 1i, -58729i), !vec4<bool>(false, arg_1.c.a, var_3.a.x, false)) ^ abs(select(vec4<i32>(1i, -2147483647i, u_input.b.x, -2147483647i), vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, 2147483647i), var_3.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_u32(u_input.c, ~vec3<u32>(~5367u, u_input.d, 1u));
    var var_1 = all(vec2<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), true));
    let var_2 = !(!(!vec4<bool>(true, true, true, all(vec3<bool>(false, false, true)))));
    let var_3 = func_6(~min(~1u, _wgslsmith_div_u32(~1u, _wgslsmith_add_u32(var_0.x, 1u))), func_5(~(~func_1(-17811i)), _wgslsmith_mod_i32(firstLeadingBit(~2147483647i), 49749i), vec3<f32>(1f, 1f, 1f), Struct_2(func_4(vec3<f32>(1198f, -1599f, -1187f)).b, func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(700f, -881f, -219f)))).b, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-724f, 1285f, 828f) - vec3<f32>(-2501f, -1023f, -338f))).b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -385f), _wgslsmith_f_op_f32(-849f + -904f), -1000f), Struct_1(false && var_2.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(524f, 605f))))));
    var_1 = var_2.x;
    var var_4 = Struct_1(!((all(var_2) == var_2.x) | var_2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1210f, 1000f))))))));
    var var_5 = Struct_3(reverseBits(vec4<i32>(-1i, u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, var_3.a.x), _wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(u_input.b.x, u_input.a))), i32(-1i) * -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_3.a.zxx, vec3<i32>(var_3.a.x, _wgslsmith_dot_vec2_i32(var_3.a.wz, var_5.a.yw), max(var_5.a.x, u_input.b.x))), select(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-41967i, -3100i) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(var_5.a.x, 2147483647i))), firstTrailingBit(_wgslsmith_dot_vec3_i32(var_3.a.ywx, vec3<i32>(24056i, 52258i, 21683i))), ~reverseBits(var_3.a.x)), vec3<i32>(-75665i, _wgslsmith_mod_i32(u_input.a, var_3.a.x) << (12292u % 32u), var_5.a.x), vec3<bool>(!(!var_2.x), any(select(var_2.yxz, vec3<bool>(var_4.a, false, var_4.a), var_2.x)), var_2.x)), _wgslsmith_div_vec2_i32(min(vec2<i32>(_wgslsmith_sub_i32(1i, u_input.b.x), _wgslsmith_sub_i32(var_5.a.x, 2233i)), vec2<i32>(~var_5.a.x, var_3.a.x)), vec2<i32>(13421i, select(var_3.a.x >> (1u % 32u), -var_3.a.x, true))));
}

