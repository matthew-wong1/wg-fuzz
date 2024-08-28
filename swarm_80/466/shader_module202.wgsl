struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4) -> vec2<bool> {
    let var_0 = arg_1.d.d.b;
    let var_1 = 1i;
    return arg_1.e.c.wy;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: f32) -> vec4<bool> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-50884i, -19826i, arg_0.a, 0i), select(vec4<i32>(arg_0.a, u_input.a, u_input.a, -19704i), vec4<i32>(u_input.a, arg_0.a, -6816i, -2147483647i), arg_0.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(3842i, -2147483647i), ~vec2<i32>(9587i, -13293i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-779f + -1000f)))), select(arg_0.c, !vec4<bool>(false, arg_0.d, true, arg_1), u_input.a == arg_0.a), !(!(arg_0.a == arg_0.a))));
    let var_1 = select(vec2<bool>(var_0.a.d, all(select(vec3<bool>(arg_0.d, arg_1, false), var_0.a.c.xxx, var_0.a.c.wxw))), arg_0.c.yx, !(!vec2<bool>(u_input.a <= 85837i, all(vec2<bool>(arg_1, false)))));
    let var_2 = 4294967295u;
    let var_3 = select(select(!(!vec2<bool>(true, var_1.x)), !(!func_3(vec2<bool>(false, var_1.x), Struct_4(1476f, Struct_2(vec3<i32>(arg_0.a, var_0.a.a, var_0.a.a), vec4<u32>(0u, 1u, 4294967295u, 24468u), vec4<i32>(var_0.a.a, -30375i, arg_0.a, u_input.a), Struct_1(var_0.a.a, -464f, vec4<bool>(true, var_1.x, arg_1, true), var_1.x), vec3<i32>(var_0.a.a, arg_0.a, u_input.a)), Struct_3(Struct_1(arg_0.a, var_0.a.b, var_0.a.c, true)), Struct_2(vec3<i32>(0i, arg_0.a, var_0.a.a), vec4<u32>(51302u, 1u, var_2, var_2), vec4<i32>(-16537i, u_input.a, -1i, arg_0.a), arg_0, vec3<i32>(47544i, -27109i, 4794i)), arg_0))), var_1.x), select(arg_0.c.yz, var_1, select(var_1, !var_0.a.c.yy, vec2<bool>(!arg_0.d, false))), true);
    let var_4 = vec4<f32>(var_0.a.b, 1202f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-508f))));
    return select(vec4<bool>(true, false, var_2 >= (var_2 & 30929u), func_3(vec2<bool>(any(vec3<bool>(arg_0.d, arg_1, true)), all(vec3<bool>(var_0.a.d, var_1.x, false))), Struct_4(_wgslsmith_f_op_f32(round(var_0.a.b)), Struct_2(vec3<i32>(var_0.a.a, arg_0.a, arg_0.a), vec4<u32>(var_2, var_2, var_2, 49163u), vec4<i32>(arg_0.a, arg_0.a, 1i, u_input.a), arg_0, vec3<i32>(63637i, arg_0.a, 28692i)), Struct_3(Struct_1(arg_0.a, -564f, arg_0.c, true)), Struct_2(vec3<i32>(arg_0.a, arg_0.a, -1i), vec4<u32>(var_2, var_2, 83058u, var_2), vec4<i32>(var_0.a.a, var_0.a.a, -1i, 2147483647i), Struct_1(2147483647i, 2285f, vec4<bool>(var_0.a.d, arg_1, true, false), false), vec3<i32>(-1i, u_input.a, 2147483647i)), Struct_1(72219i, -1582f, vec4<bool>(var_3.x, arg_1, var_1.x, var_1.x), true))).x), vec4<bool>(false, (abs(var_2) <= ~var_2) != (_wgslsmith_clamp_i32(14048i, var_0.a.a, var_0.a.a) <= u_input.a), var_2 >= 0u, true), !var_0.a.d);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: u32) -> vec4<bool> {
    let var_0 = 70070u;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1109f, -183f)), 906f, 745f, -683f), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1014f - -1000f), -757f)), -635f, _wgslsmith_f_op_f32(-1027f - _wgslsmith_f_op_f32(-1000f * -2178f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -452f)))))));
    var var_2 = all(vec3<bool>(any(!(!vec3<bool>(true, false, arg_0.x))), all(!arg_2.zx), true));
    var var_3 = Struct_1(reverseBits(2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1415f)) * 799f), _wgslsmith_f_op_f32(sign(var_1.x))), select(!vec4<bool>(!arg_2.x, true, true, u_input.a <= u_input.a), select(!func_2(Struct_1(u_input.a, -539f, arg_2, arg_0.x), arg_0.x, var_1.x, -157f), !vec4<bool>(false, false, arg_2.x, false), arg_2.x), !any(arg_2)), arg_2.x);
    let var_4 = Struct_2(vec3<i32>(i32(-1i) * -var_3.a, ~_wgslsmith_add_i32(select(var_3.a, -304i, false), _wgslsmith_sub_i32(u_input.a, u_input.a)), -1i), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(max(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, 1u, arg_1.x, arg_1.x), vec4<u32>(27107u, 55373u, 0u, arg_3)), ~vec4<u32>(var_0, var_0, var_0, arg_1.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_1.x, arg_1.x, 4294967295u), vec4<u32>(arg_1.x, 4294967295u, arg_1.x, arg_1.x)) & (vec4<u32>(27942u, 82708u, arg_3, arg_3) << (vec4<u32>(67425u, var_0, 16582u, 848u) % vec4<u32>(32u)))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(min(vec4<u32>(4294967295u, var_0, 7070u, arg_3), vec4<u32>(59993u, arg_1.x, arg_1.x, 0u)), abs(vec4<u32>(4294967295u, var_0, 86328u, 1u))), vec4<u32>(arg_1.x, 4294967295u, arg_1.x, var_0) << (vec4<u32>(7084u, 19059u, 0u, var_0) % vec4<u32>(32u)))), -reverseBits(~vec4<i32>(26851i, -2147483647i, 0i, var_3.a)), Struct_1(_wgslsmith_clamp_i32(~u_input.a, _wgslsmith_mod_i32(~(-37994i), 1i | u_input.a), var_3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -156f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(var_1.x, -666f))), func_2(Struct_1(_wgslsmith_mod_i32(42382i, 1i), 321f, vec4<bool>(arg_2.x, var_3.d, arg_0.x, false), arg_0.x), false, _wgslsmith_f_op_f32(step(-309f, var_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-421f * var_1.x), var_3.b, var_3.d))), arg_0.x || !(!arg_2.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-14639i), ~35361i), -vec2<i32>(u_input.a, 0i)), ~(max(-1i, 2147483647i) ^ select(0i, 0i, arg_2.x)), abs(u_input.a)));
    return var_4.d.c;
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = all(!func_4(vec2<bool>(true, false), _wgslsmith_div_vec3_u32(select(vec3<u32>(1u, 4294967295u, arg_0), vec3<u32>(arg_0, 5011u, arg_0), false), abs(vec3<u32>(arg_0, arg_0, 0u))), !func_2(Struct_1(u_input.a, 591f, vec4<bool>(false, true, true, false), false), false, -245f, 1213f), ~_wgslsmith_div_u32(arg_0, arg_0)));
    var var_1 = select(!(!vec2<bool>(var_0, var_0)), vec2<bool>(var_0, false & (var_0 && true)), !var_0);
    var_1 = select(!vec2<bool>(func_2(Struct_1(-6970i, 1000f, vec4<bool>(false, false, true, true), false), true, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -454f)).x, !(false & var_0)), func_2(Struct_1(-17804i, -678f, !(!vec4<bool>(false, false, true, var_1.x)), var_0), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-537f, -222f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1320f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(130f * 461f), _wgslsmith_f_op_f32(floor(1510f)), !var_0)))).yw, vec2<bool>(true, true));
    var var_2 = Struct_2(-vec3<i32>(u_input.a, -59278i, select(_wgslsmith_mult_i32(-1i, -2147483647i), u_input.a, false)), vec4<u32>(countOneBits(14484u), ~4528u, arg_0, ~1u), vec4<i32>(~(u_input.a | firstTrailingBit(u_input.a)), min(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), max(vec4<i32>(0i, -13148i, -5699i, u_input.a), vec4<i32>(u_input.a, 5009i, 1i, u_input.a))), reverseBits(-34144i)), 5802i, 2147483647i), Struct_1(~abs(u_input.a | u_input.a), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(445f)))), !vec4<bool>(var_1.x == var_0, true, true, any(vec2<bool>(var_1.x, var_0))), select(var_1.x & (arg_0 != arg_0), true, false)), vec3<i32>(1i, min(_wgslsmith_clamp_i32(min(-61333i, u_input.a), _wgslsmith_add_i32(-24099i, u_input.a), ~8513i), _wgslsmith_add_i32(u_input.a, -26127i) | _wgslsmith_mod_i32(u_input.a, u_input.a)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 2147483647i, -21606i), -vec3<i32>(u_input.a, -2147483647i, 16177i)), firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(7120i, u_input.a, u_input.a), vec3<i32>(u_input.a, 2343i, -2147483647i))))));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.d.b)) + var_2.d.b), Struct_2(firstLeadingBit(var_2.e), min(var_2.b, var_2.b), vec4<i32>(~(u_input.a >> (arg_0 % 32u)), -countOneBits(-30890i), u_input.a, i32(-1i) * -28486i), Struct_1(firstLeadingBit(_wgslsmith_dot_vec2_i32(var_2.c.yw, vec2<i32>(19845i, var_2.d.a))), var_2.d.b, vec4<bool>(var_0, var_2.d.c.x, false, -302f == var_2.d.b), true), var_2.e), Struct_3(Struct_1(1i, var_2.d.b, var_2.d.c, func_4(var_2.d.c.yy, reverseBits(var_2.b.ywx), vec4<bool>(var_1.x, true, var_1.x, var_2.d.d), arg_0).x)), Struct_2(abs(_wgslsmith_mult_vec3_i32(-var_2.e, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 0i), vec3<i32>(var_2.e.x, var_2.e.x, 2147483647i), var_2.c.zyz))), var_2.b, select(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.a, 2147483647i, 29599i), vec4<i32>(0i, 8970i, 23020i, u_input.a), var_2.c), vec4<i32>(u_input.a, u_input.a, var_2.a.x, var_2.a.x)), abs(vec4<i32>(u_input.a, var_2.c.x, 3761i, -10547i)), select(func_4(var_2.d.c.wx, var_2.b.xxw, var_2.d.c, 10184u), func_2(var_2.d, true, -780f, 1000f), true)), var_2.d, var_2.c.zyx), Struct_1(0i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-389f, var_2.d.b))))), var_2.d.c, true));
    return !(!all(var_3.d.d.c) | all(vec4<bool>(true, true && var_1.x, var_3.c.a.d, var_2.e.x >= var_2.d.a)));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = Struct_5(_wgslsmith_div_u32(~41474u, ~_wgslsmith_add_u32(arg_1.b.x, 1u & arg_1.b.x)), Struct_2(vec3<i32>(u_input.a, firstTrailingBit(~arg_1.e.x), -590i), arg_1.b, vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(arg_1.d.a), 2147483647i), abs(~u_input.a), u_input.a, select(-9888i, arg_0 ^ -2147483647i, arg_1.d.c.x)), Struct_1(~_wgslsmith_dot_vec3_i32(arg_1.a, arg_1.c.xyw), arg_1.d.b, select(arg_1.d.c, vec4<bool>(arg_1.d.d, false, true, false), vec4<bool>(true, arg_1.d.c.x, arg_1.d.d, false)), select(true, arg_1.d.d && arg_1.d.c.x, true & arg_1.d.d)), arg_1.e), vec3<i32>(_wgslsmith_mult_i32(arg_0, 1i), 32068i, reverseBits(_wgslsmith_mult_i32(arg_1.a.x, -35705i)) >> (~(~4294967295u) % 32u)), Struct_2(-(~(~arg_1.c.wwy)), reverseBits(~arg_1.b), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 24799i, abs(2147483647i), 45316i), vec4<i32>(arg_1.d.a, 50746i, ~0i, -36170i)), arg_1.d, vec3<i32>(arg_1.d.a, -2147483647i, arg_1.c.x)));
    var var_1 = ~vec4<u32>(1u, 62339u << (abs(0u) % 32u), var_0.b.b.x, countOneBits(~1u)) ^ abs(_wgslsmith_add_vec4_u32(~arg_1.b, select(max(var_0.d.b, vec4<u32>(var_0.a, arg_1.b.x, 0u, 21929u)), vec4<u32>(var_0.d.b.x, 56803u, arg_1.b.x, 0u), var_0.d.d.c)));
    let var_2 = var_0.d.d.c.zzw;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(470f)))), arg_1, Struct_3(arg_1.d), Struct_2(~vec3<i32>(reverseBits(18183i), 24118i, firstTrailingBit(2147483647i)), countOneBits(countOneBits(vec4<u32>(1u, 0u, 4294967295u, arg_1.b.x))), vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(var_0.b.a.x, u_input.a)), arg_0 << (var_1.x % 32u), firstLeadingBit(25285i), 1i), arg_1.d, vec3<i32>(2147483647i, 1i, abs(~u_input.a))), var_0.d.d);
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1988f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.e.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d.d.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-553f, 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.a + 1096f))) * 906f)));
    return StorageBuffer(firstTrailingBit(firstLeadingBit(var_3.b.e.zz)), min(max(-37558i & abs(var_3.d.c.x), max(var_0.b.e.x, _wgslsmith_div_i32(1i, -1i))), 169i), _wgslsmith_sub_vec2_i32(var_3.d.c.zy, -min(var_3.d.a.zx, vec2<i32>(0i, -12555i))), 17418i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_4.yzx)), var_4.xyy));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_sub_i32(u_input.a, 1i)) << (2398u % 32u), Struct_2(vec3<i32>(21499i, u_input.a, u_input.a), countOneBits(~(~vec4<u32>(1u, 57715u, 101378u, 4294967295u))), select(~vec4<i32>(2881i, 1i, u_input.a, -1i), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(1i, 1i, u_input.a, -27497i)), reverseBits(vec4<i32>(u_input.a, -16117i, -9426i, 1i))), vec4<bool>(true, true, any(vec2<bool>(true, true)), func_1(26644u))), Struct_1(-(0i << (1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(188f - -130f)), vec4<bool>(true, true, true, false), firstTrailingBit(-4263i) != max(u_input.a, 2147483647i)), vec3<i32>(u_input.a, u_input.a, ~(u_input.a << (133044u % 32u)))));
}

