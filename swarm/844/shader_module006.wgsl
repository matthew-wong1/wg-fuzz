struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = arg_1.d & arg_1.d;
    let var_1 = Struct_2(~_wgslsmith_add_u32(abs(select(10281u, u_input.a, arg_1.d)), u_input.c), select(~1u, arg_0.x, firstTrailingBit(u_input.b) <= -1i), min(abs(arg_0.yw), vec2<u32>(44613u, 26315u)), true, vec2<u32>(13882u, select(u_input.a, ~223u, false)));
    var var_2 = !(var_1.d && false) && var_0;
    var var_3 = ~max(firstTrailingBit(29851u), _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(0u), arg_1.c.x | u_input.c, _wgslsmith_mult_u32(5772u, 1703u), 68488u), ~vec4<u32>(arg_1.c.x, arg_1.c.x, 0u, 2731u)));
    var var_4 = Struct_1(min(vec2<u32>(~_wgslsmith_dot_vec2_u32(var_1.e, arg_1.e), u_input.c), var_1.c), _wgslsmith_mod_i32(~(~firstTrailingBit(-2147483647i)), abs(-1i)), true);
    return !vec4<bool>(79526u <= arg_0.x, true, _wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(arg_0.x, 34742u), var_4.a.x) == 0u, (u_input.b | u_input.b) >= -197i);
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, 90608u)))), ~_wgslsmith_div_i32(i32(-1i) * -u_input.b, ~u_input.b), any(select(vec4<bool>(true, true, true, all(vec3<bool>(false, true, true))), func_3(vec4<u32>(35475u, u_input.a, u_input.a, 23815u), Struct_2(4294967295u, u_input.c, vec2<u32>(u_input.c, 157565u), false, vec2<u32>(u_input.c, 1u))), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true))))));
    var_0 = Struct_1(var_0.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.b, 55299i, _wgslsmith_div_i32(1i, 77961i), 3061i), -vec4<i32>(15250i, 0i, 1i, i32(-1i) * -21774i)), !var_0.c);
    var_0 = Struct_1(~var_0.a, -_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.b, firstLeadingBit(1i)), _wgslsmith_mod_i32(var_0.b, 19294i), countOneBits(~1i)), true);
    var_0 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.c, var_0.a.x), var_0.a), _wgslsmith_sub_i32(var_0.b, u_input.b), false);
    var_0 = Struct_1(vec2<u32>(u_input.a, 50956u), _wgslsmith_mult_i32(var_0.b, -19957i), func_3(reverseBits(~abs(vec4<u32>(u_input.a, 13721u, 45843u, 5220u))), Struct_2(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.a.x, 26322u), 18798u), 58197u, var_0.a >> (var_0.a % vec2<u32>(32u)), !all(vec4<bool>(var_0.c, true, true, var_0.c)), var_0.a)).x);
    return vec3<i32>(abs((i32(-1i) * -2147483647i) & ~u_input.b), i32(-1i) * -2147483647i, u_input.b) ^ vec3<i32>(-(i32(-1i) * -var_0.b), u_input.b, ~(-1i));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = -(select(vec3<i32>(arg_2, arg_2, -29026i), -vec3<i32>(arg_3.b, arg_2, arg_3.b), true & arg_3.c) & func_2()) >> ((~_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_3.a.x, arg_3.a.x, arg_3.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, arg_3.a.x, arg_3.a.x), vec3<u32>(0u, arg_0.e.x, u_input.a))) << (~max(vec3<u32>(arg_0.e.x, arg_3.a.x, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.a.x, 7386u, 1u), vec3<u32>(43823u, 0u, 1u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = arg_1;
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(192f, var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(492f * -132f), 889f));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1, arg_1))))));
    let var_2 = 4294967295u;
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    return -1000f;
}

fn func_5(arg_0: bool, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_2(0u, 25698u, abs(firstTrailingBit(firstTrailingBit(vec2<u32>(69519u, 104600u)))), false, vec2<u32>(_wgslsmith_mod_u32(~14605u, 4294967295u), func_1(Struct_2(~1u, ~4024u, vec2<u32>(0u, u_input.a) >> (vec2<u32>(0u, u_input.c) % vec2<u32>(32u)), true, vec2<u32>(u_input.c, 0u) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), vec2<f32>(arg_1.x, arg_1.x), u_input.b, func_1(Struct_2(u_input.c, 4294967295u, vec2<u32>(u_input.a, 31415u), arg_0, vec2<u32>(u_input.a, 66635u)), _wgslsmith_f_op_vec2_f32(-arg_1), u_input.b | -60724i, func_1(Struct_2(u_input.c, u_input.c, vec2<u32>(4294967295u, 53880u), arg_0, vec2<u32>(u_input.c, 32488u)), vec2<f32>(-1016f, -775f), u_input.b, Struct_1(vec2<u32>(104108u, 62267u), u_input.b, arg_0)))).a.x));
    var_0 = Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(57479u, 70574u), ~vec2<u32>(58061u, 66256u)), min(var_0.b | 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(38313u, 79425u, 1u), vec3<u32>(4294967295u, u_input.c, 0u))), ~abs(var_0.e.x)), vec3<u32>(reverseBits(~u_input.c), 2526u, var_0.b)), var_0.e.x, reverseBits(_wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(var_0.c, var_0.c), var_0.e)), true, ~var_0.e ^ _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(abs(var_0.c), ~vec2<u32>(u_input.c, u_input.a)), ~vec2<u32>(21409u, 81762u) ^ _wgslsmith_div_vec2_u32(var_0.c, vec2<u32>(0u, u_input.c))));
    var var_1 = !select(vec2<bool>(true, arg_0), !select(!vec2<bool>(true, var_0.d), vec2<bool>(true, true), true), !(!select(vec2<bool>(arg_0, var_0.d), vec2<bool>(arg_0, arg_0), vec2<bool>(var_0.d, true))));
    var_0 = Struct_2(~(~var_0.e.x), ~(_wgslsmith_mult_u32(_wgslsmith_mult_u32(29134u, var_0.b), var_0.e.x) >> (abs(abs(var_0.b)) % 32u)), firstTrailingBit(~vec2<u32>(u_input.a, u_input.a) & _wgslsmith_sub_vec2_u32(~var_0.c, min(var_0.c, var_0.c))), func_1(Struct_2(_wgslsmith_mod_u32(461u, var_0.a | 47963u), u_input.c, ~vec2<u32>(var_0.e.x, var_0.a), true & (var_1.x && var_0.d), _wgslsmith_add_vec2_u32(~var_0.e, _wgslsmith_clamp_vec2_u32(var_0.c, vec2<u32>(6652u, 1u), vec2<u32>(var_0.b, 1u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)), 2147483647i, Struct_1(abs(~var_0.e), ~_wgslsmith_sub_i32(u_input.b, -25670i), arg_0)).c, ~(var_0.c & select(~var_0.e, var_0.e, var_0.d)));
    var_1 = !vec2<bool>(all(func_3(vec4<u32>(var_0.c.x, 1u, u_input.c, u_input.c), Struct_2(4294967295u, u_input.c, vec2<u32>(1u, var_0.e.x), arg_0, vec2<u32>(u_input.a, var_0.a))).zz), true);
    return Struct_2(u_input.c, _wgslsmith_add_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e.x, u_input.a, 108108u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.c, 61674u))), 0u), u_input.a), countOneBits(~var_0.c), any(select(vec2<bool>(false, !arg_0), vec2<bool>(true, 1u < var_0.a), select(!vec2<bool>(var_1.x, false), select(vec2<bool>(var_0.d, true), vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_0.d, true)), all(vec3<bool>(arg_0, arg_0, arg_0))))), ~var_0.e);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    let var_0 = u_input.a;
    var var_1 = arg_1;
    let var_2 = select(!(!(!select(vec3<bool>(true, arg_0.c, arg_0.c), vec3<bool>(arg_0.c, arg_0.c, arg_1.d), arg_0.c))), func_3(~select(select(vec4<u32>(arg_1.e.x, var_1.b, 91345u, arg_0.a.x), vec4<u32>(arg_1.a, arg_1.e.x, 4294967295u, arg_1.c.x), vec4<bool>(var_1.d, arg_1.d, false, arg_0.c)), vec4<u32>(0u, 1u, arg_0.a.x, var_0) << (vec4<u32>(arg_0.a.x, 6691u, arg_1.b, 47530u) % vec4<u32>(32u)), arg_1.d || true), Struct_2(var_0, abs(~1u), ~vec2<u32>(1274u, 0u), u_input.a >= var_1.c.x, func_1(arg_1, vec2<f32>(575f, -1036f), u_input.b, Struct_1(arg_1.c, 1i, true)).a >> ((vec2<u32>(var_0, 0u) & vec2<u32>(var_1.b, 0u)) % vec2<u32>(32u)))).xyy, true);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(_wgslsmith_div_vec2_u32(~max(vec2<u32>(47121u, u_input.c), vec2<u32>(4294967295u, u_input.a)), firstLeadingBit(reverseBits(vec2<u32>(u_input.a, 56037u)))), u_input.b, false), func_5(false, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-639f * 1289f), _wgslsmith_f_op_f32(-701f + -738f))), _wgslsmith_f_op_f32(func_4(func_1(Struct_2(4294967295u, u_input.a, vec2<u32>(u_input.a, u_input.c), true, vec2<u32>(u_input.a, 0u)), vec2<f32>(-1647f, 2965f), u_input.b, Struct_1(vec2<u32>(1945u, u_input.a), u_input.b, false)), Struct_1(vec2<u32>(u_input.c, 0u), u_input.b, true), Struct_1(vec2<u32>(12031u, u_input.c), u_input.b, false))))));
    var var_1 = func_5(select(!var_0.d, false, true) | (var_0.d | any(!vec4<bool>(var_0.d, var_0.d, false, var_0.d))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-419f, 924f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1055f, -1000f) - vec2<f32>(1304f, -1043f)), select(var_0.d, var_0.d, false))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-1188f, -692f), vec2<f32>(673f, 462f)))))))));
    let var_2 = select(select(!vec3<bool>(u_input.b < u_input.b, true, var_1.d), vec3<bool>(false && (-1i >= u_input.b), func_6(Struct_1(var_0.e, u_input.b, var_0.d), func_6(Struct_1(var_1.c, -18863i, var_1.d), Struct_2(u_input.a, 4294967295u, var_1.c, var_1.d, var_0.c))).d, all(select(vec3<bool>(var_1.d, var_1.d, false), vec3<bool>(true, var_0.d, true), vec3<bool>(true, var_1.d, var_1.d)))), reverseBits(u_input.b) > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 24278i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(u_input.b, u_input.b)))), vec3<bool>(true != select(4294967295u < var_1.b, var_1.d, !var_0.d), func_3(vec4<u32>(1u, 4294967295u, 39916u << (u_input.c % 32u), _wgslsmith_div_u32(var_0.b, var_1.e.x)), var_0).x, any(vec4<bool>(true, var_0.d, true, var_0.d || false))), select(select(vec3<bool>(var_0.d, var_1.d == var_1.d, select(true, false, var_1.d)), vec3<bool>(var_1.d, all(vec2<bool>(var_0.d, var_0.d)), func_5(var_1.d, vec2<f32>(-1710f, 1434f)).d), vec3<bool>(var_0.d, all(vec4<bool>(var_1.d, var_1.d, var_1.d, false)), var_1.d || var_1.d)), func_3(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(24984u, 74740u, var_1.c.x, 63807u), vec4<u32>(var_1.e.x, var_0.c.x, var_1.a, 1u)), select(vec4<u32>(119953u, 19070u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, var_0.a, var_1.a), vec4<bool>(var_1.d, true, true, var_1.d))), Struct_2(~4294967295u, ~var_0.a, _wgslsmith_div_vec2_u32(vec2<u32>(var_1.a, var_0.c.x), vec2<u32>(1u, 19223u)), u_input.b > 29326i, ~vec2<u32>(29230u, var_1.a))).xwx, true));
    let var_3 = true;
    let var_4 = vec3<u32>(var_0.b, u_input.c, u_input.a);
    var var_5 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-672f, _wgslsmith_f_op_f32(f32(-1f) * -1019f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-513f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1157f)))))), !all(select(var_2.xx, var_2.yy, var_2.x))));
    let var_6 = var_0;
    var_5 = -691f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.b, u_input.b & u_input.b), vec2<i32>(firstTrailingBit(-u_input.b), -countOneBits(u_input.b)), ~vec2<i32>(u_input.b & -7323i, 75346i)), ~_wgslsmith_mult_u32(~1u | ~var_1.b, ~(~1u)), 1u, select(vec2<u32>(~(~71161u), min(var_1.a, firstTrailingBit(0u))), vec2<u32>(~(var_4.x ^ 25571u), var_6.e.x), select(!select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(var_2.x, var_0.d), var_2.yy), vec2<bool>(func_5(false, vec2<f32>(261f, 215f)).d, any(var_2.xz)), !(!var_2.zy))));
}

