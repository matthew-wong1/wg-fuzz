struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-753f + arg_0), arg_0)), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(step(arg_0, arg_0))))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1150f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0)), arg_0))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-var_0.x)), arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(556f * var_0.x))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = 608f;
    var var_1 = -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, -41146i) << (~vec3<u32>(arg_1.x, u_input.e.x, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.c, u_input.a, u_input.d), abs(vec3<i32>(u_input.a, u_input.a, -8811i)))), u_input.c, u_input.c, _wgslsmith_mod_i32(~firstTrailingBit(2147483647i), -18179i << ((arg_0.x & arg_2.x) % 32u)));
    var var_2 = any(vec4<bool>(!(_wgslsmith_f_op_f32(-arg_3.b.a) != _wgslsmith_f_op_f32(arg_3.e.a * 263f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.a)) != _wgslsmith_div_f32(274f, _wgslsmith_f_op_f32(arg_3.b.a - arg_3.e.a)), all(vec3<bool>(true, true, true)), true));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1023f)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.e.a))))), _wgslsmith_f_op_f32(arg_3.a.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(310f))), _wgslsmith_f_op_f32(arg_3.e.a * _wgslsmith_f_op_f32(func_3(224f))))), -619f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(452f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-950f + arg_3.e.a))) * arg_3.e.a));
    return !vec4<bool>(true, _wgslsmith_add_i32(u_input.a, u_input.a) > _wgslsmith_sub_i32(countOneBits(-11692i), ~var_1.x), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), all(vec4<bool>(true, true, true, false)))), false);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_4 {
    var var_0 = select(select(min(~vec2<u32>(1u, arg_2.c.x) >> (~u_input.e % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(arg_2.c, select(u_input.e, vec2<u32>(u_input.e.x, 2525u), vec2<bool>(false, false)))), vec2<u32>(24672u, ~arg_2.d.x), false), arg_1.c, select(select(vec2<bool>(true, true), !(!vec2<bool>(arg_0.x, false)), arg_0.x), !select(arg_0.ww, select(arg_0.xx, vec2<bool>(false, true), true), arg_0.xy), u_input.a != u_input.c));
    var_0 = reverseBits(u_input.b);
    let var_1 = arg_1;
    var var_2 = select(arg_0.zy, vec2<bool>(true || arg_0.x, !arg_0.x), false);
    var_0 = u_input.b;
    return Struct_4(abs(~vec2<u32>(var_0.x, 4294967295u)), arg_1.a, ~(~min(vec3<u32>(4294967295u, arg_1.d.x, 4294967295u), ~vec3<u32>(16606u, 57772u, var_1.c.x))), vec3<bool>(any(!arg_0.wy) == func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, 1u, 55471u, var_0.x), vec4<u32>(arg_1.c.x, arg_2.d.x, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, arg_1.c.x)), _wgslsmith_mult_vec2_u32(u_input.e, arg_2.c), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.x, 432u), vec3<u32>(var_0.x, arg_1.d.x, 7219u)), arg_1).x, _wgslsmith_sub_u32(~arg_2.c.x, max(29405u, var_1.c.x)) <= 45636u, all(func_2(vec4<u32>(1u, 1u, 51140u, 22760u) ^ vec4<u32>(var_0.x, var_0.x, arg_1.d.x, 1u), _wgslsmith_add_vec2_u32(u_input.e, vec2<u32>(0u, 0u)), ~vec3<u32>(8912u, arg_2.d.x, 38573u), Struct_2(var_1.e, arg_2.a, vec2<u32>(24279u, arg_1.d.x), vec2<u32>(var_0.x, var_1.c.x), Struct_1(-863f))))));
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = func_2(min(reverseBits(vec4<u32>(_wgslsmith_sub_u32(arg_0.a.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_0.a.x), vec3<u32>(1u, arg_0.c.x, arg_0.c.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, arg_0.c.x, 1u), vec3<u32>(u_input.b.x, arg_0.a.x, u_input.b.x)), 34532u)), ~vec4<u32>(~11565u, 22431u, ~4294967295u, _wgslsmith_mult_u32(39898u, 99998u))), vec2<u32>(19923u << (_wgslsmith_clamp_u32(5940u, 1u, 44135u) % 32u), ~(~(~1u))), arg_0.c, Struct_2(func_4(!(!vec4<bool>(arg_0.d.x, false, arg_0.d.x, false)), Struct_2(Struct_1(-1000f), func_4(vec4<bool>(false, true, arg_0.d.x, arg_0.d.x), Struct_2(Struct_1(arg_0.b.a), Struct_1(-260f), u_input.b, arg_0.a, arg_0.b), Struct_2(arg_0.b, Struct_1(arg_0.b.a), vec2<u32>(125044u, 140838u), vec2<u32>(arg_0.a.x, 4294967295u), Struct_1(arg_0.b.a))).b, arg_0.a, arg_0.a, func_4(vec4<bool>(arg_0.d.x, true, arg_1, true), Struct_2(arg_0.b, Struct_1(-1472f), u_input.e, arg_0.a, Struct_1(arg_0.b.a)), Struct_2(arg_0.b, arg_0.b, arg_0.c.yy, arg_0.a, arg_0.b)).b), Struct_2(arg_0.b, Struct_1(arg_0.b.a), vec2<u32>(2388u, u_input.b.x), func_4(vec4<bool>(false, true, false, false), Struct_2(Struct_1(arg_0.b.a), arg_0.b, u_input.e, u_input.b, Struct_1(arg_2.x)), Struct_2(Struct_1(arg_2.x), Struct_1(177f), u_input.b, u_input.e, arg_0.b)).a, Struct_1(860f))).b, arg_0.b, _wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(~u_input.e.x, u_input.e.x), _wgslsmith_add_vec2_u32(arg_0.c.zy, ~vec2<u32>(19704u, 34115u))), firstTrailingBit(u_input.e), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.a + arg_2.x) + 323f)))).xz;
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_0.b.a, 872f) - vec3<f32>(arg_0.b.a, -1000f, -2555f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(104f, arg_2.x, arg_2.x))) + vec3<f32>(1000f, -1697f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + arg_2.x) * -127f)))));
    var_0 = !arg_0.d.xy;
    var_0 = arg_0.d.xy;
    let var_2 = Struct_3(-14399i);
    return func_4(select(select(select(vec4<bool>(var_0.x, false, false, true), func_2(vec4<u32>(0u, u_input.b.x, 43274u, arg_0.c.x), vec2<u32>(arg_0.c.x, 1u), vec3<u32>(1u, 1u, 20840u), Struct_2(arg_0.b, arg_0.b, arg_0.c.xz, u_input.b, arg_0.b)), !arg_0.d.x), !vec4<bool>(arg_1, arg_0.d.x, false, false), !(!vec4<bool>(arg_1, var_0.x, arg_1, false))), select(!vec4<bool>(true, false, false, arg_1), select(vec4<bool>(arg_1, true, var_0.x, arg_0.d.x), func_2(vec4<u32>(22916u, arg_0.a.x, 15557u, 32186u), vec2<u32>(29598u, 0u), arg_0.c, Struct_2(Struct_1(var_1.x), Struct_1(var_1.x), u_input.e, vec2<u32>(60906u, 50680u), Struct_1(364f))), select(vec4<bool>(var_0.x, true, false, arg_1), vec4<bool>(true, false, var_0.x, arg_0.d.x), vec4<bool>(true, false, false, true))), arg_0.d.x), true), Struct_2(arg_0.b, func_4(vec4<bool>(!arg_1, true, arg_2.x >= var_1.x, true), Struct_2(Struct_1(-131f), Struct_1(-1253f), arg_0.a, arg_0.c.xx, func_4(vec4<bool>(arg_0.d.x, true, arg_0.d.x, false), Struct_2(arg_0.b, Struct_1(arg_0.b.a), u_input.e, vec2<u32>(130741u, 52923u), arg_0.b), Struct_2(Struct_1(arg_2.x), Struct_1(arg_0.b.a), arg_0.a, arg_0.c.yz, Struct_1(arg_0.b.a))).b), Struct_2(func_4(vec4<bool>(true, var_0.x, true, true), Struct_2(Struct_1(524f), Struct_1(-1255f), vec2<u32>(arg_0.c.x, arg_0.a.x), u_input.b, arg_0.b), Struct_2(Struct_1(-526f), Struct_1(-1789f), u_input.b, vec2<u32>(4294967295u, 11505u), Struct_1(-205f))).b, arg_0.b, u_input.b, _wgslsmith_div_vec2_u32(vec2<u32>(34695u, arg_0.a.x), arg_0.a), Struct_1(arg_0.b.a))).b, _wgslsmith_add_vec2_u32(arg_0.a, _wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_0.c.x), vec2<u32>(4294967295u, arg_0.c.x))) | ~(~vec2<u32>(0u, u_input.e.x)), min(vec2<u32>(4294967295u, 51387u), arg_0.a), func_4(func_2(_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_0.c.x, 2321u, 50621u), vec4<u32>(arg_0.a.x, u_input.e.x, u_input.b.x, u_input.b.x)), vec2<u32>(1u, u_input.e.x), arg_0.c, Struct_2(arg_0.b, arg_0.b, arg_0.c.xx, arg_0.c.xz, Struct_1(arg_2.x))), Struct_2(Struct_1(arg_2.x), arg_0.b, u_input.e, arg_0.c.xy ^ arg_0.a, func_4(vec4<bool>(arg_1, arg_0.d.x, var_0.x, false), Struct_2(arg_0.b, Struct_1(arg_2.x), vec2<u32>(arg_0.c.x, 4294967295u), vec2<u32>(arg_0.a.x, u_input.e.x), arg_0.b), Struct_2(arg_0.b, Struct_1(546f), vec2<u32>(0u, 1u), vec2<u32>(arg_0.c.x, arg_0.a.x), arg_0.b)).b), Struct_2(Struct_1(arg_0.b.a), Struct_1(var_1.x), ~arg_0.c.xx, arg_0.a, Struct_1(arg_0.b.a))).b), Struct_2(Struct_1(323f), arg_0.b, min(~abs(vec2<u32>(u_input.b.x, 51147u)), (vec2<u32>(arg_0.a.x, 29425u) >> (u_input.e % vec2<u32>(32u))) ^ vec2<u32>(u_input.b.x, u_input.e.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(~arg_0.c.x, u_input.e.x), firstTrailingBit(arg_0.a)), arg_0.b));
}

fn func_6(arg_0: Struct_4) -> Struct_3 {
    var var_0 = vec2<i32>(-35052i, ~_wgslsmith_div_i32(2147483647i, -1i));
    var_0 = reverseBits(min(vec2<i32>(0i, u_input.c), min(vec2<i32>(var_0.x, var_0.x), ~vec2<i32>(var_0.x, -30441i)))) & abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.c) ^ vec2<i32>(19082i, u_input.c), ~(-vec2<i32>(u_input.c, u_input.d))));
    var var_1 = arg_0.b.a;
    let var_2 = arg_0.b.a;
    let var_3 = var_2;
    return Struct_3(~2147483647i);
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> Struct_4 {
    var var_0 = 52365u;
    let var_1 = u_input.e.x;
    var var_2 = func_6(func_5(func_4(func_2(reverseBits(vec4<u32>(4294967295u, 0u, var_1, arg_0)), ~u_input.e, vec3<u32>(arg_0, 1u, 84589u), Struct_2(Struct_1(145f), Struct_1(-1285f), vec2<u32>(arg_0, 0u), u_input.b, Struct_1(-109f))), Struct_2(Struct_1(812f), Struct_1(860f), _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(1u, arg_0)), u_input.b, Struct_1(-952f)), Struct_2(Struct_1(-1000f), Struct_1(1092f), vec2<u32>(10581u, var_1), _wgslsmith_clamp_vec2_u32(u_input.e, vec2<u32>(107624u, u_input.e.x), vec2<u32>(u_input.e.x, arg_0)), Struct_1(828f))), !any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1434f, -736f)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -387f))))));
    var var_3 = Struct_2(Struct_1(-998f), Struct_1(775f), u_input.b, countOneBits(abs(min(~vec2<u32>(u_input.b.x, 27593u), func_5(Struct_4(vec2<u32>(arg_0, 20463u), Struct_1(283f), vec3<u32>(var_1, 0u, 78001u), vec3<bool>(false, true, true)), true, vec2<f32>(736f, 225f)).c.zx))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-561f)))));
    let var_4 = Struct_4(var_3.c, func_4(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), false), Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_3.e.a)), var_3.a, vec2<u32>(~1u, 0u), ~abs(vec2<u32>(0u, arg_0)), func_4(func_2(vec4<u32>(0u, 4294967295u, 14180u, 0u), var_3.d, vec3<u32>(4294967295u, var_1, 83179u), Struct_2(Struct_1(403f), Struct_1(var_3.b.a), vec2<u32>(1u, 0u), vec2<u32>(var_3.c.x, 1u), Struct_1(var_3.e.a))), Struct_2(var_3.e, var_3.b, vec2<u32>(var_3.d.x, 3813u), u_input.b, var_3.b), Struct_2(var_3.b, var_3.b, var_3.c, var_3.c, Struct_1(var_3.e.a))).b), Struct_2(func_5(Struct_4(vec2<u32>(21347u, var_3.c.x), var_3.e, vec3<u32>(arg_0, var_1, 82029u), vec3<bool>(true, false, true)), var_3.a.a <= 331f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.a, var_3.b.a))).b, var_3.a, func_5(Struct_4(var_3.c, var_3.b, vec3<u32>(u_input.e.x, 10442u, arg_0), vec3<bool>(false, false, false)), u_input.c > arg_1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(1906f, var_3.a.a) + vec2<f32>(var_3.e.a, var_3.a.a))).a, _wgslsmith_mult_vec2_u32(var_3.d >> (vec2<u32>(21296u, 0u) % vec2<u32>(32u)), var_3.d), Struct_1(_wgslsmith_f_op_f32(var_3.b.a + -902f)))).b, vec3<u32>(firstTrailingBit(28774u), ~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), ~var_3.c.x), !vec3<bool>(true, true, all(vec3<bool>(true, true, false)) || true));
    return var_4;
}

fn func_7(arg_0: Struct_4, arg_1: vec4<i32>) -> i32 {
    var var_0 = arg_0.d.x;
    var_0 = func_5(arg_0, u_input.c != ~2313i, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1550f, -1611f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-306f, 1289f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.b.a, 1340f))), vec2<f32>(arg_0.b.a, 1214f))), !(u_input.a < -26256i))), !select(arg_0.d.yx, !vec2<bool>(arg_0.d.x, arg_0.d.x), func_2(vec4<u32>(u_input.b.x, 1u, arg_0.c.x, u_input.e.x), arg_0.a, vec3<u32>(4294967295u, arg_0.a.x, u_input.e.x), Struct_2(Struct_1(arg_0.b.a), arg_0.b, vec2<u32>(31964u, arg_0.a.x), vec2<u32>(u_input.b.x, 32288u), arg_0.b)).xz)))).d.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a * -998f)))))));
    var var_2 = Struct_1(511f);
    var var_3 = func_6(Struct_4(countOneBits(arg_0.a) | vec2<u32>(~arg_0.c.x, arg_0.c.x), arg_0.b, max(_wgslsmith_sub_vec3_u32(func_4(vec4<bool>(arg_0.d.x, true, false, arg_0.d.x), Struct_2(arg_0.b, arg_0.b, vec2<u32>(0u, 0u), vec2<u32>(13892u, arg_0.c.x), Struct_1(arg_0.b.a)), Struct_2(arg_0.b, Struct_1(var_1.a), vec2<u32>(arg_0.c.x, 6171u), arg_0.c.xx, arg_0.b)).c, ~vec3<u32>(4294967295u, 0u, 30424u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.e.x, u_input.e.x, arg_0.a.x), arg_0.c)), arg_0.d));
    return firstTrailingBit(_wgslsmith_add_i32(~reverseBits(select(-1i, -2147483647i, arg_0.d.x)), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(27640i << (u_input.b.x % 32u));
    var var_1 = ~_wgslsmith_div_vec4_i32(vec4<i32>(var_0, u_input.c, func_7(func_1(42501u, Struct_3(1i)), -vec4<i32>(34197i, var_0, u_input.c, -17516i)), -2147483647i), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_0, -2147483647i, u_input.d, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.a, var_0, -1i), vec4<i32>(-1i, u_input.d, 34954i, 1i), vec4<i32>(u_input.c, u_input.c, -25621i, var_0)) ^ min(vec4<i32>(u_input.d, var_0, -2147483647i, -26163i), vec4<i32>(var_0, u_input.d, var_0, u_input.d))));
    var_1 = select(firstLeadingBit(countOneBits(select(-vec4<i32>(-1i, 22128i, var_1.x, 24524i), vec4<i32>(2147483647i, u_input.d, 49745i, var_0), true))), ~firstLeadingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(19396i, -1i, 2147483647i, 0i), -vec4<i32>(-2147483647i, 1i, var_0, var_1.x))), vec4<bool>(true, !func_4(vec4<bool>(true, false, false, true), Struct_2(Struct_1(253f), Struct_1(-932f), u_input.b, u_input.b, Struct_1(1809f)), Struct_2(Struct_1(530f), Struct_1(1407f), u_input.e, vec2<u32>(u_input.b.x, 4294967295u), Struct_1(-1230f))).d.x | false, true, true));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1214f);
    var var_3 = vec3<u32>(~u_input.b.x, u_input.b.x, _wgslsmith_sub_u32(1u, 0u)) & ~min(max(vec3<u32>(u_input.b.x, 0u, 37459u), vec3<u32>(86725u, 1u, u_input.b.x)) & ~vec3<u32>(u_input.b.x, u_input.e.x, 7253u), (vec3<u32>(u_input.e.x, u_input.b.x, u_input.b.x) | vec3<u32>(u_input.b.x, u_input.b.x, u_input.e.x)) << (vec3<u32>(u_input.e.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1602f), 729f)));
    var_2 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-932f, _wgslsmith_f_op_f32(-259f * 146f), 242f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, var_4.a, -905f))), vec3<f32>(_wgslsmith_f_op_f32(floor(var_4.a)), _wgslsmith_f_op_f32(-var_4.a), -1000f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.a, var_4.a, var_4.a)))), vec3<f32>(_wgslsmith_f_op_f32(var_4.a * -1293f), 464f, func_5(Struct_4(vec2<u32>(u_input.e.x, u_input.b.x), var_4, vec3<u32>(u_input.e.x, 4294967295u, var_3.x), vec3<bool>(false, false, true)), func_5(Struct_4(var_3.zz, var_4, vec3<u32>(1u, 59998u, 28585u), vec3<bool>(true, true, false)), false, vec2<f32>(var_4.a, 1000f)).d.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-313f, var_4.a) + vec2<f32>(-1870f, -1066f))).b.a), vec3<bool>(true, true, true))), vec4<u32>(var_3.x, ~_wgslsmith_mod_u32(107831u, 1u), 1u, 3659u), ~_wgslsmith_clamp_vec2_u32(u_input.e, ~(~u_input.e), vec2<u32>(abs(u_input.e.x), func_4(vec4<bool>(false, false, true, false), Struct_2(var_4, var_4, var_3.xz, vec2<u32>(56061u, var_3.x), var_4), Struct_2(Struct_1(-448f), Struct_1(var_4.a), u_input.e, var_3.zz, Struct_1(var_4.a))).c.x)));
}

