struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> bool {
    var var_0 = arg_0.b;
    var_0 = Struct_2(Struct_1(var_0.d.c, _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(arg_3.a.b, arg_3.d.b), vec4<u32>(arg_3.b.x, var_0.d.b.x, 1u, arg_3.a.b.x), vec4<u32>(28303u, 1u, 58569u, var_0.d.b.x)), max(vec4<u32>(50037u, 0u, 32002u, u_input.a.x), ~arg_0.b.a.b)), vec3<i32>(-1427i, 2147483647i, 40177i), !(!(!arg_3.d.d)), abs(1i)), vec3<u32>(~(~arg_3.d.b.x), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(15595u, u_input.a.x), ~0u), ~(~u_input.a.x ^ ~var_0.a.b.x)), _wgslsmith_add_vec3_u32(max(_wgslsmith_mod_vec3_u32(max(arg_0.a.c, vec3<u32>(122100u, 1u, arg_0.a.d.b.x)), countOneBits(vec3<u32>(1u, 37180u, 1u))), ~(arg_3.b & u_input.b)), ~vec3<u32>(~u_input.b.x, _wgslsmith_mult_u32(arg_0.b.b.x, 1u), var_0.c.x)), Struct_1(var_0.d.c, min(_wgslsmith_mod_vec4_u32(countOneBits(arg_3.a.b), reverseBits(vec4<u32>(var_0.a.b.x, arg_3.a.b.x, 1u, 0u))), abs(~vec4<u32>(4294967295u, 40634u, 5010u, var_0.a.b.x))), vec3<i32>(-var_0.a.c.x, arg_2, ~1i), arg_3.a.b.x <= ~(~u_input.a.x), ~(-_wgslsmith_dot_vec3_i32(var_0.a.a, vec3<i32>(arg_3.d.c.x, 0i, arg_2)))));
    global0 = !vec2<bool>(!arg_1, !global0.x);
    let var_1 = Struct_1(abs(vec3<i32>(-1i, -1i, -2147483647i)), abs(u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(52387i, arg_0.b.d.a.x, abs(18823i)), vec3<i32>(~var_0.d.a.x, arg_0.a.a.e, _wgslsmith_add_i32(select(arg_0.a.d.e, 2147483647i, false), 1i))), global0.x, firstLeadingBit(reverseBits(arg_0.a.d.e)));
    global0 = !vec2<bool>(true, any(select(!vec4<bool>(var_1.d, arg_1, var_1.d, var_1.d), vec4<bool>(arg_1, false, arg_1, arg_3.d.d), select(vec4<bool>(false, arg_3.d.d, true, true), vec4<bool>(true, global0.x, arg_0.c, arg_0.c), true))));
    return !(arg_0.a.a.a.x <= -1i);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<i32>, arg_3: f32) -> vec4<u32> {
    global0 = !vec2<bool>(all(vec3<bool>(global0.x, global0.x, global0.x)) || true, func_3(Struct_4(Struct_2(Struct_1(vec3<i32>(arg_0, 9535i, 29803i), u_input.a, vec3<i32>(arg_2.x, arg_2.x, arg_2.x), arg_1, 1i), vec3<u32>(34323u, u_input.a.x, 1u), u_input.a.zxw, Struct_1(vec3<i32>(-67170i, -49039i, -1i), u_input.a, arg_2, false, 0i)), Struct_2(Struct_1(arg_2, vec4<u32>(u_input.b.x, 16183u, 0u, u_input.a.x), arg_2, false, arg_0), u_input.b, u_input.a.zyx, Struct_1(arg_2, u_input.a, arg_2, global0.x, -2147483647i)), all(vec2<bool>(global0.x, false))), !any(vec4<bool>(false, global0.x, global0.x, arg_1)), -100918i << (~u_input.a.x % 32u), Struct_2(Struct_1(vec3<i32>(-1i, arg_0, 0i), u_input.a, vec3<i32>(arg_2.x, arg_0, 25201i), global0.x, arg_0), select(vec3<u32>(25131u, u_input.b.x, u_input.b.x), vec3<u32>(38184u, u_input.b.x, 73422u), vec3<bool>(true, global0.x, false)), vec3<u32>(1u, u_input.a.x, 21770u) | vec3<u32>(u_input.a.x, 5176u, u_input.b.x), Struct_1(arg_2, vec4<u32>(u_input.a.x, 110988u, u_input.b.x, 23141u), arg_2, global0.x, 0i))));
    global0 = !vec2<bool>(select(all(select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(global0.x, true, false, true), vec4<bool>(false, global0.x, global0.x, true))), arg_1, select(true, true, !global0.x)), all(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, global0.x), vec2<bool>(global0.x, true)), vec2<bool>(true, global0.x), arg_1)));
    var var_0 = Struct_1(vec3<i32>(arg_0, -2147483647i << (u_input.a.x % 32u), abs(0i)), select(u_input.a, countOneBits(u_input.a), vec4<bool>(any(vec2<bool>(global0.x, true)), !global0.x, !arg_1, 18053u == u_input.b.x)) ^ (countOneBits(~u_input.a) | ~_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 3652u))), -(arg_2 | arg_2), true, arg_0);
    var var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)))) + -464f);
    return ~reverseBits(vec4<u32>(reverseBits(1u), abs(u_input.b.x), 101386u, countOneBits(72792u)));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: u32) -> Struct_5 {
    global0 = select(select(!select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, true), false), vec2<bool>(all(select(vec4<bool>(false, global0.x, false, true), vec4<bool>(global0.x, global0.x, false, true), false)), true || !global0.x), all(!select(vec4<bool>(global0.x, true, true, false), vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global0.x, true, true, false)))), select(vec2<bool>(all(select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, false, true, global0.x), true)), true), !select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, true), vec2<bool>(global0.x, false)), global0.x), select(vec2<bool>(false, true), vec2<bool>(any(!vec3<bool>(true, global0.x, true)), global0.x), any(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)))));
    var var_0 = !vec2<bool>(global0.x, true || !all(vec3<bool>(false, global0.x, global0.x)));
    var_0 = !select(vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, arg_0)) <= _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0, -51364i), vec3<i32>(39336i, arg_0, arg_0)), true), select(vec2<bool>(global0.x, var_0.x), !select(vec2<bool>(false, var_0.x), vec2<bool>(false, false), var_0.x), all(!vec2<bool>(true, var_0.x))), true);
    global0 = vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, !var_0.x), !global0.x)), global0.x);
    global0 = !vec2<bool>(any(!(!vec3<bool>(var_0.x, var_0.x, false))), false);
    return Struct_5(select(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), global0.x), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), false), select(vec2<bool>(global0.x, false), vec2<bool>(var_0.x, var_0.x), true), vec2<bool>(false, global0.x)), true), vec2<bool>(var_0.x & (var_0.x | false), false), select(vec2<bool>(all(vec4<bool>(true, false, false, true)), true), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false), true), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -705f, 453f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-682f, 264f, -871f), vec3<f32>(2067f, 437f, -1000f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-577f, 1429f, 321f) * _wgslsmith_div_vec3_f32(vec3<f32>(-1655f, -240f, 411f), vec3<f32>(-1000f, 493f, 276f))))), select(select(vec4<bool>(global0.x, false, false, true), !(!vec4<bool>(true, var_0.x, global0.x, false)), !select(global0.x, false, true)), select(!select(vec4<bool>(var_0.x, var_0.x, global0.x, false), vec4<bool>(var_0.x, global0.x, var_0.x, global0.x), vec4<bool>(false, true, global0.x, true)), select(select(vec4<bool>(global0.x, global0.x, true, var_0.x), vec4<bool>(global0.x, false, false, global0.x), global0.x), select(vec4<bool>(false, false, global0.x, false), vec4<bool>(false, var_0.x, false, global0.x), var_0.x), !vec4<bool>(false, true, false, global0.x)), _wgslsmith_div_u32(23064u, 61246u) == u_input.a.x), !global0.x), _wgslsmith_mult_vec2_i32(-_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, -16533i), vec2<i32>(1i, arg_0)), vec2<i32>(arg_0, 4404i)), _wgslsmith_div_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-20107i, -2147483647i), vec2<i32>(2147483647i, -50923i))), ~abs(vec2<i32>(arg_0, arg_0)))));
}

fn func_1() -> vec2<bool> {
    let var_0 = func_4(_wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(-vec3<i32>(-4014i, 1i, 0i), ~vec3<i32>(0i, -1i, 1i)), vec3<i32>(firstTrailingBit(-4482i), 0i, ~(-16255i)) & vec3<i32>(0i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 67881i, 2147483647i, -1i), vec4<i32>(-2147483647i, -5110i, -12241i, 0i)))), func_2(-192i, true, vec3<i32>(1i, -min(2147483647i, -33029i), ~(-10576i)), _wgslsmith_f_op_f32(step(-510f, -532f))), _wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(u_input.b.x, 57784u, u_input.a.x))), ~85258u));
    global0 = vec2<bool>(true, var_0.a.x);
    global0 = func_4(var_0.d.x, _wgslsmith_sub_vec4_u32(vec4<u32>(~1u, _wgslsmith_sub_u32(func_2(var_0.d.x, var_0.c.x, vec3<i32>(-2373i, -38608i, -2147483647i), var_0.b.x).x, ~u_input.a.x), _wgslsmith_mult_u32(min(u_input.a.x, 1u), firstTrailingBit(0u)), 1u ^ u_input.a.x), u_input.a), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.b.x))).c.zx;
    var var_1 = vec4<u32>(_wgslsmith_clamp_u32(~countOneBits(0u), 0u, ~abs(u_input.b.x)), ~u_input.b.x, _wgslsmith_mod_u32(abs(~87137u), 25601u), 26584u) | ((~(~vec4<u32>(37010u, u_input.a.x, 4294967295u, 0u)) ^ u_input.a) ^ ~vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.a.x), u_input.a.x, firstTrailingBit(u_input.a.x), 4294967295u));
    let var_2 = !(var_0.a.x && true);
    return var_0.c.wy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = select(vec2<bool>(false, global0.x), vec2<bool>(true, false), vec2<bool>(!any(!vec4<bool>(true, global0.x, false, global0.x)), all(vec2<bool>(all(vec2<bool>(global0.x, true)), global0.x))));
    let var_0 = Struct_4(Struct_2(Struct_1(vec3<i32>(1i, 1i, 1i), u_input.a, max(_wgslsmith_add_vec3_i32(vec3<i32>(8021i, -14431i, -1i), vec3<i32>(0i, 0i, 2147483647i)), vec3<i32>(1i, 1i, 1i)), func_4(1i, ~u_input.a, ~4294967295u).c.x, _wgslsmith_clamp_i32(2147483647i, 16453i, 2147483647i) | (2147483647i << (u_input.b.x % 32u))), firstTrailingBit(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x)), (_wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, vec3<u32>(1u, 51782u, 46758u)) ^ (u_input.b ^ u_input.b)) >> (~vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x) % vec3<u32>(32u)), Struct_1(~(~vec3<i32>(1i, 44480i, -9374i)), ~(u_input.a ^ vec4<u32>(3626u, u_input.b.x, 4294967295u, 1u)), _wgslsmith_mult_vec3_i32(min(vec3<i32>(0i, -25710i, 0i), vec3<i32>(-8658i, 1i, -25574i)), select(vec3<i32>(12686i, 49360i, -49949i), vec3<i32>(55792i, 19018i, 45794i), vec3<bool>(true, global0.x, true))), global0.x & (global0.x || true), ~firstLeadingBit(-2147483647i))), Struct_2(Struct_1(-(vec3<i32>(80010i, 8422i, 23873i) >> (vec3<u32>(u_input.b.x, 1u, 4294967295u) % vec3<u32>(32u))), ~min(vec4<u32>(u_input.b.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.b.x)), firstTrailingBit(countOneBits(vec3<i32>(-36852i, 0i, 0i))), _wgslsmith_mult_u32(0u, u_input.b.x) > _wgslsmith_mod_u32(u_input.b.x, 0u), _wgslsmith_mult_i32(countOneBits(19183i), countOneBits(-50495i))), reverseBits(~u_input.a.xyy), firstTrailingBit(select(u_input.b, vec3<u32>(1u, 4294967295u, u_input.b.x), true)) ^ u_input.a.xyw, Struct_1(countOneBits(vec3<i32>(1i, 1i, 1i)), vec4<u32>(_wgslsmith_div_u32(u_input.b.x, 4294967295u), u_input.a.x, u_input.b.x << (u_input.a.x % 32u), 1u), select(vec3<i32>(-39575i, 1i, -1i), vec3<i32>(2147483647i, -2147483647i, 0i), vec3<bool>(global0.x, false, false)) & firstTrailingBit(vec3<i32>(7267i, -31946i, -51517i)), true, max(-2147483647i >> (u_input.b.x % 32u), 17739i))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1996f, 738f))) * vec3<f32>(_wgslsmith_f_op_f32(floor(-539f)), -220f, 211f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-734f, 1000f, -483f))))))), 29852i, ~select(-(vec4<i32>(var_0.b.a.e, var_0.a.d.e, 11615i, var_0.b.a.a.x) >> (var_0.b.a.b % vec4<u32>(32u))), ~(vec4<i32>(-24890i, -1i, var_0.a.d.a.x, -16074i) >> (vec4<u32>(0u, u_input.a.x, var_0.a.c.x, var_0.b.b.x) % vec4<u32>(32u))), select(!vec4<bool>(global0.x, var_0.a.a.d, false, var_0.a.a.d), !vec4<bool>(global0.x, false, false, false), select(vec4<bool>(var_0.b.d.d, false, var_0.c, global0.x), vec4<bool>(false, true, var_0.a.a.d, global0.x), vec4<bool>(true, false, var_0.b.a.d, false)))));
}

