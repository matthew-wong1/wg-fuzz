struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: vec4<bool>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(firstLeadingBit(-(~u_input.b)) < min(-21624i, u_input.e));
    return Struct_1(all(select(!vec4<bool>(var_0.a, var_0.a, true, false), select(vec4<bool>(false, var_0.a, false, false), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), select(vec4<bool>(var_0.a, false, var_0.a, true), vec4<bool>(false, false, false, false), vec4<bool>(var_0.a, var_0.a, var_0.a, false))), !var_0.a)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_5, arg_3: Struct_4) -> Struct_1 {
    let var_0 = -28461i;
    let var_1 = arg_2;
    var var_2 = !(!arg_0.a);
    var_2 = -60872i <= firstTrailingBit(-_wgslsmith_clamp_i32(u_input.d, 0i, u_input.d));
    let var_3 = ~vec3<i32>(_wgslsmith_sub_i32(-_wgslsmith_add_i32(var_0, 2147483647i), 2147483647i), -(i32(-1i) * -6889i), ~reverseBits(u_input.e));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<u32>) -> u32 {
    let var_0 = arg_2;
    let var_1 = ~(-(vec2<i32>(~u_input.d, 14087i) & ((vec2<i32>(-2147483647i, -1i) & vec2<i32>(u_input.b, -16297i)) & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -39445i), vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, 4393i)))));
    var var_2 = Struct_2(firstLeadingBit(var_1.x << (4294967295u % 32u)));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(963f, arg_1.x, !func_3(Struct_1(arg_0.a), func_2(), Struct_5(vec3<f32>(469f, 132f, 1545f), vec4<i32>(var_1.x, var_1.x, 32126i, 29173i)), Struct_4(true)).a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -965f) + arg_1.x), -470f))));
    var_2 = Struct_2(13701i);
    return ~0u;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x + 824f))), arg_0.x)), vec4<i32>(u_input.b, ~(-2147483647i), -3799i, ~1i) >> (~vec4<u32>(~0u, 0u << (u_input.c % 32u), abs(u_input.c), ~1u) % vec4<u32>(32u)));
    var var_1 = all(!vec3<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true)) & any(vec2<bool>(true, true)), false));
    var var_2 = func_4(func_3(func_2(), func_2(), Struct_5(var_0.a, vec4<i32>(arg_2.x, 38594i, arg_2.x, 2147483647i)), Struct_4(any(vec4<bool>(true, true, false, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(508f, 1282f), vec2<f32>(-624f, var_0.a.x)))), vec2<f32>(1430f, var_0.a.x)), reverseBits(~vec3<u32>(u_input.a, 109009u, 4294967295u))) >= ~14199u;
    var_2 = false;
    var var_3 = vec2<u32>(min(~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), firstTrailingBit(vec2<u32>(u_input.c, 112786u)))) >> (21144u % 32u), ~0u >> (0u % 32u));
    return Struct_4(!(u_input.e >= ~firstLeadingBit(arg_1)));
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_4) -> u32 {
    var var_0 = !vec4<bool>(all(arg_1.yy), arg_2.a, !arg_1.x, select(u_input.a < 17670u, false, arg_1.x) | false);
    var var_1 = Struct_3(vec2<i32>(-arg_0, 6972i), 4924i, !vec4<bool>((u_input.c | u_input.a) == _wgslsmith_add_u32(0u, 0u), false || arg_1.x, true, true && !arg_1.x), _wgslsmith_add_i32(arg_0, -31096i), select(!(!(!vec4<bool>(false, arg_2.a, arg_1.x, true))), select(arg_1, !vec4<bool>(false, false, false, var_0.x), true), (1i & _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(u_input.e, 2147483647i))) == (i32(-1i) * -44434i)));
    var var_2 = Struct_4(true);
    var_0 = !select(select(var_1.e, vec4<bool>(var_2.a, arg_2.a, arg_2.a, var_2.a), 895f < _wgslsmith_f_op_f32(step(1254f, -847f))), select(vec4<bool>(var_2.a, arg_1.x || false, any(vec3<bool>(arg_2.a, true, var_0.x)), var_0.x | false), var_1.e, var_2.a), false);
    let var_3 = abs(_wgslsmith_clamp_vec3_i32(abs(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, var_1.a.x, 0i), vec3<i32>(u_input.b, var_1.b, -4839i))) | (_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, var_1.d, arg_0), vec3<i32>(-2147483647i, -2147483647i, u_input.e)) & firstTrailingBit(vec3<i32>(-10161i, arg_0, arg_0))), ~vec3<i32>(~26666i, arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(24558i, -3453i, 1i), vec3<i32>(13126i, arg_0, u_input.d))), min(select(-vec3<i32>(u_input.d, -60772i, arg_0), vec3<i32>(u_input.e, 15553i, 2147483647i), !vec3<bool>(false, true, var_1.c.x)), max(select(vec3<i32>(var_1.b, u_input.b, arg_0), vec3<i32>(1i, 31789i, 1i), var_1.e.wzx), vec3<i32>(2147483647i, arg_0, u_input.d)))));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, u_input.c, 26430u, u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 101984u), vec4<u32>(4294967295u, u_input.a, 4700u, u_input.a))) | _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 0u, 0u, 4294967295u), vec4<u32>(1u, 0u, 54728u, 1u)), ~vec4<u32>(u_input.c, 0u, u_input.a, u_input.c)), ~(~(~vec4<u32>(43707u, 0u, u_input.a, u_input.a)))) & vec4<u32>(1u, 14034u, func_5(-u_input.b, select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), func_1(vec3<f32>(360f, 685f, 858f), -1i << (u_input.c % 32u), abs(vec3<i32>(u_input.d, 81763i, u_input.e)))), 4294967295u);
    let var_1 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(-59404i, 11335i, u_input.e), vec3<i32>(u_input.b, u_input.d, u_input.d)), _wgslsmith_mult_vec3_i32(~vec3<i32>(0i, u_input.e, u_input.e), -vec3<i32>(u_input.e, u_input.e, u_input.e)))), ~vec3<i32>(_wgslsmith_mod_i32(-46754i, -10768i), ~(~53756i), _wgslsmith_clamp_i32(1i, u_input.b & 7202i, max(30830i, u_input.e))), -(~min(_wgslsmith_add_vec3_i32(vec3<i32>(49240i, 2147483647i, u_input.e), vec3<i32>(u_input.d, -676i, 23381i)), vec3<i32>(-1i, u_input.d, 19110i))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-655f - _wgslsmith_f_op_f32(trunc(-1836f))) - -466f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(2043f, -780f))) + _wgslsmith_f_op_f32(abs(879f)))) + 1478f);
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, firstTrailingBit(var_1.x >> (var_0.x % 32u)), ~(~0i), 0i), vec4<i32>(_wgslsmith_clamp_i32(16769i, -u_input.b, -1i), _wgslsmith_dot_vec2_i32(var_1.zy, ~var_1.xy), _wgslsmith_clamp_i32(~1i, -21990i << (var_0.x % 32u), _wgslsmith_div_i32(u_input.e, u_input.e)), select(-40454i, _wgslsmith_clamp_i32(-9138i, u_input.e, var_1.x), false))));
    let var_4 = var_3.a.x;
    var var_5 = -_wgslsmith_mod_i32(u_input.e, -(-var_1.x >> (~var_0.x % 32u)));
    var var_6 = select(-(~(~var_3.b)) << (~(~(~vec4<u32>(var_0.x, 64288u, var_0.x, 4294967295u))) % vec4<u32>(32u)), var_3.b, vec4<bool>(!(all(vec2<bool>(true, false)) && true), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(721f, 463f, var_3.a.x) + var_3.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, var_3.a.x, var_3.a.x))), var_3.b.x, ~vec3<i32>(2147483647i, 2147483647i, 22118i)).a, true, true));
    var var_7 = Struct_4(true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, -4537i), vec3<i32>(var_3.b.x, 2147483647i, -1i))), _wgslsmith_add_i32(1i, u_input.d) & u_input.e, reverseBits(1i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(875f))), _wgslsmith_f_op_f32(exp2(var_3.a.x)))))));
}

