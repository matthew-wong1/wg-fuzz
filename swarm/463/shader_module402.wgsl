struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec2<i32>(2147483647i, 0i)), Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec2<i32>(0i, 2147483647i)), Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec2<i32>(i32(-2147483648), 41606i)), Struct_1(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec2<i32>(4862i, -16061i)), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec2<i32>(40230i, -34783i)), Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec2<i32>(-10603i, -6860i)), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec2<i32>(-7278i, 0i)), Struct_1(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec2<i32>(-20306i, 1i)), Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec2<i32>(1i, -1741i)), Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec2<i32>(0i, 2147483647i)), Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec2<i32>(6314i, i32(-2147483648))), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec2<i32>(0i, -1i)), Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec2<i32>(2147483647i, -7473i)), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec2<i32>(2147483647i, -1i)), Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec2<i32>(34502i, 1i)), Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec2<i32>(3592i, i32(-2147483648))), Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec2<i32>(30410i, 1i)));

var<private> global1: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(-66667i, -8124i), vec2<i32>(59250i, 22099i), vec2<i32>(2147483647i, -32777i), vec2<i32>(-5676i, -14484i), vec2<i32>(-40029i, -61014i), vec2<i32>(-26080i, -8779i), vec2<i32>(-1i, -1i), vec2<i32>(0i, 20425i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-25008i, 2147483647i), vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, -15395i), vec2<i32>(2147483647i, -6532i), vec2<i32>(-6536i, 18616i), vec2<i32>(42531i, i32(-2147483648)), vec2<i32>(13770i, -1i), vec2<i32>(41233i, -23761i), vec2<i32>(-63873i, 0i), vec2<i32>(9539i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(19898i, -1i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, 0i), vec2<i32>(0i, 28654i), vec2<i32>(1i, 2147483647i), vec2<i32>(49662i, -29776i), vec2<i32>(-1i, 1i), vec2<i32>(46226i, 35937i), vec2<i32>(16270i, -35253i), vec2<i32>(-33313i, -1i), vec2<i32>(0i, -1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: bool) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 17u)];
    global0 = array<Struct_1, 17>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 17u)];
    global0 = array<Struct_1, 17>();
    global1 = array<vec2<i32>, 32>();
    return ~29616u;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec2<f32>) -> vec4<i32> {
    global1 = array<vec2<i32>, 32>();
    let var_0 = abs(select(vec3<i32>(-1i, i32(-1i) * -u_input.a, u_input.a), min(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), ~vec3<i32>(41880i, 4786i, 0i)), -vec3<i32>(23430i, -19153i, u_input.a)), (true == (31299u != arg_0.x)) || all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false))));
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~min(4294967295u, 7140u)), select(u_input.b.x, _wgslsmith_mod_u32(4294967295u, countOneBits(u_input.c)), true), _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 75684u), u_input.b.x >> (12608u % 32u)) & func_3(_wgslsmith_f_op_f32(arg_1.x - -1000f), _wgslsmith_f_op_f32(step(arg_1.x, -241f)), true)), 17u)]);
    let var_2 = Struct_5(~13190u, Struct_1(vec3<bool>(select(var_1.b.b.x, false, any(vec4<bool>(true, true, var_1.a.a.x, true))), all(var_1.a.a.yz) || all(vec4<bool>(var_1.b.a.x, true, var_1.a.a.x, false)), !(arg_1.x < arg_1.x)), var_1.a.a, var_1.b.c), -(~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a, 6853i), 1i, -var_1.a.c.x)));
    var var_3 = Struct_1(var_1.a.b, select(select(vec3<bool>(true, true, var_2.b.b.x), !select(var_1.a.a, var_1.b.b, var_2.b.b.x), false), select(var_2.b.b, !var_2.b.a, true), !var_1.a.b.x), vec2<i32>(var_0.x, ~_wgslsmith_clamp_i32(28317i, ~(-1i), _wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(var_0.x, -17334i)))));
    return firstLeadingBit(vec4<i32>(var_3.c.x, -abs(i32(-1i) * -2147483647i), countOneBits(~2147483647i), u_input.a));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> vec3<f32> {
    global1 = array<vec2<i32>, 32>();
    let var_0 = vec3<i32>(-37973i, arg_0.x, 0i);
    let var_1 = vec3<bool>(!all(vec2<bool>(arg_1.a.x, arg_1.a.x)), true, arg_1.a.x && false);
    var var_2 = var_1.x;
    var_2 = false;
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-804f))), _wgslsmith_f_op_f32(sign(748f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-651f, 490f)) * 1864f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(133f, -328f))))), -1453f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(442f, -1000f, -1336f), vec3<f32>(472f, -166f, 239f), false)), vec3<f32>(-1000f, 764f, 288f), all(vec4<bool>(true, var_1.x, arg_1.b.x, arg_1.b.x)))), vec3<f32>(_wgslsmith_div_f32(-427f, 1000f), 823f, 1813f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-329f, 423f, 1654f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(298f, -114f, 1724f), vec3<f32>(-208f, 1024f, 224f), arg_1.a.x))))))), all(select(select(arg_1.b, arg_1.b, vec3<bool>(false, true, arg_1.b.x)), !select(arg_1.b, var_1, vec3<bool>(true, arg_1.b.x, true)), true))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(arg_0, vec2<f32>(arg_0.x, arg_0.x), true)), _wgslsmith_f_op_vec2_f32(-arg_0))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-445f, 506f) - arg_0)))));
    global0 = array<Struct_1, 17>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(-vec4<i32>(u_input.a, u_input.a, 0i, arg_1.c.x) ^ func_2(u_input.b, vec3<f32>(arg_0.x, var_0.x, 1000f), vec2<f32>(var_0.x, arg_0.x)), arg_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(860f, arg_0.x, -421f)))) * vec3<f32>(arg_0.x, -691f, var_0.x)), true)), -1272f);
    global1 = array<vec2<i32>, 32>();
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1135f, arg_0.x) + vec2<f32>(184f, 177f)), _wgslsmith_f_op_vec2_f32(floor(arg_0)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.b)))) - _wgslsmith_f_op_vec2_f32(arg_0 * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.xx) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 313f))))));
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.a, u_input.a), -55624i, _wgslsmith_clamp_i32(2147483647i, 27627i, arg_1.c.x)), func_2(~vec2<u32>(arg_2, arg_2), var_1.a, _wgslsmith_f_op_vec2_f32(var_1.a.zx + var_1.a.zy)).ywx) >> ((vec3<u32>(_wgslsmith_div_u32(arg_2, u_input.c), 49596u, _wgslsmith_mult_u32(arg_2, arg_2)) << (vec3<u32>(1542u, ~1u, firstTrailingBit(35091u)) % vec3<u32>(32u))) % vec3<u32>(32u)), max(min(-(vec3<i32>(u_input.a, -2147483647i, arg_1.c.x) & vec3<i32>(u_input.a, u_input.a, arg_1.c.x)), vec3<i32>(-8981i, 1i, i32(-1i) * -29007i)), vec3<i32>(reverseBits(u_input.a), -u_input.a, func_2(u_input.b, vec3<f32>(1429f, -1285f, var_1.a.x), arg_0).x) & -vec3<i32>(arg_1.c.x, u_input.a, 14543i)), vec3<i32>(_wgslsmith_div_i32(31490i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -1855i, 0i, 1i), vec4<i32>(u_input.a, -32613i, 12736i, 36569i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-25439i, -2147483647i, u_input.a, -1i), vec4<i32>(-32545i, 21760i, 35721i, u_input.a)))), _wgslsmith_sub_i32(u_input.a, -2147483647i) & reverseBits(1i), (arg_1.c.x & u_input.a) & _wgslsmith_div_i32(u_input.a, ~(-28383i))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: vec4<bool>, arg_3: u32) -> u32 {
    let var_0 = vec3<bool>(true | arg_1.b.a.x, !(!arg_2.x), all(select(select(arg_2, vec4<bool>(false, arg_2.x, arg_1.b.b.x, arg_2.x), vec4<bool>(arg_1.b.b.x, true, arg_2.x, arg_2.x)), arg_2, !all(arg_1.b.b.yz))));
    let var_1 = Struct_5(~(~(~arg_1.a)), global0[_wgslsmith_index_u32(~1u, 17u)], -2147483647i);
    var var_2 = vec4<i32>(arg_0.x, func_2(~reverseBits(~u_input.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1353f, 1000f, 638f) * vec3<f32>(262f, 1014f, 334f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-254f, -340f, -495f), vec3<f32>(1346f, -151f, 1481f), vec3<bool>(var_1.b.a.x, false, true))), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1337f, -199f, -293f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1179f, -474f, -502f)))), var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1749f, 743f) * vec2<f32>(-897f, -251f)) - vec2<f32>(-1618f, -988f)))).x, _wgslsmith_clamp_i32(firstTrailingBit(-abs(arg_0.x)), ~(-2147483647i), arg_0.x), u_input.a);
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    return arg_1.a & _wgslsmith_mod_u32(var_1.a, u_input.b.x);
}

fn func_6(arg_0: u32, arg_1: vec2<u32>) -> i32 {
    var var_0 = Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), u_input.a > 1i), global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, false)), true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), any(vec2<bool>(true, false))), _wgslsmith_clamp_vec2_i32(vec2<i32>(~2147483647i, ~0i), ~(-vec2<i32>(u_input.a, -23742i)), vec2<i32>(~2147483647i, 1i))));
    let var_1 = Struct_5(arg_0, var_0.b, u_input.a);
    var var_2 = select(min(abs(~vec2<u32>(arg_1.x, var_1.a)) | vec2<u32>(~5480u, ~9071u), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 143802u, 16791u, var_1.a), vec4<u32>(4294967295u, 0u, 16450u, 4294967295u)), ~(~var_1.a))), arg_1, !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-656f, 819f, var_0.b.b.x)), _wgslsmith_f_op_f32(1775f + -614f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f) * 1394f)));
    return ((u_input.a << (~0u % 32u)) >> (min(arg_1.x, func_3(_wgslsmith_f_op_f32(-699f + -885f), _wgslsmith_f_op_f32(select(335f, 1212f, var_0.a.a.x)), u_input.a <= 8253i)) % 32u)) | ((-select(var_0.a.c.x, var_0.a.c.x, var_0.a.a.x) & firstLeadingBit(-2147483647i)) >> (func_5(max(func_2(u_input.b, vec3<f32>(2632f, -678f, -433f), vec2<f32>(-394f, 1000f)).wyx, _wgslsmith_mod_vec3_i32(vec3<i32>(-45378i, var_0.a.c.x, var_0.a.c.x), vec3<i32>(-16760i, var_1.b.c.x, -1i))), Struct_5(arg_1.x, Struct_1(vec3<bool>(var_1.b.b.x, var_1.b.a.x, true), vec3<bool>(false, var_0.a.a.x, false), vec2<i32>(-2147483647i, 0i)), 32517i), vec4<bool>(all(vec2<bool>(false, false)), all(var_1.b.b), 2147483647i >= var_1.c, true), min(~0u, func_3(-781f, -455f, false))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_add_u32(countOneBits(~u_input.c), _wgslsmith_div_u32(u_input.c, abs(u_input.c))), vec2<u32>(func_5(func_1(vec2<f32>(680f, -664f), Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, false, true), global1[_wgslsmith_index_u32(0u, 32u)]), u_input.b.x, u_input.b.x), Struct_5(u_input.c, Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, false, true), global1[_wgslsmith_index_u32(u_input.c, 32u)]), u_input.a), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), 1u), ~27640u)) ^ 1i;
    let var_1 = Struct_3(vec4<bool>(any(vec3<bool>(true, true, true)) || true, any(vec4<bool>(true, any(vec2<bool>(false, false)), all(vec3<bool>(false, false, true)), select(false, false, true))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), false), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(2064f)), _wgslsmith_f_op_f32(ceil(-1000f))))))), max(-countOneBits(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(7121i, 2147483647i)), ~vec2<i32>(i32(-1i) * -3927i, 29919i)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, false, true, true)), !any(vec3<bool>(true, false, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true), true))));
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(abs(-1376f));
    global0 = array<Struct_1, 17>();
    var var_4 = _wgslsmith_clamp_u32(min(4294967295u, abs(_wgslsmith_mod_u32(1u, u_input.c))), 0u, ~firstTrailingBit(0u)) > ~u_input.c;
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(781f)))));
    var_2 = all(select(select(vec3<bool>(true, true, true), select(var_1.d.xxw, select(var_1.d.zyy, var_1.a.yxy, false), var_1.d.zzy), vec3<bool>(var_1.a.x, any(vec2<bool>(var_1.d.x, var_1.d.x)), 1076f != var_3)), vec3<bool>(!(!var_1.a.x), all(var_1.d.wyx), any(select(vec3<bool>(var_1.d.x, var_1.a.x, true), var_1.d.ywx, vec3<bool>(var_1.d.x, false, var_1.d.x)))), vec3<bool>(true, true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(var_3, var_3), _wgslsmith_f_op_f32(-var_1.b)))))), var_1.c.x);
}

