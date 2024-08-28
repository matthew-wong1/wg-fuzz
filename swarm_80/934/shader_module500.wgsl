struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    global0 = array<vec4<bool>, 21>();
    global0 = array<vec4<bool>, 21>();
    return _wgslsmith_div_f32(-445f, -969f);
}

fn func_2() -> bool {
    var var_0 = Struct_1(vec4<f32>(676f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(11891u, vec3<u32>(1u, 4294967295u, 47496u), vec2<bool>(true, true), -1i), ~vec2<u32>(1u, 0u), Struct_1(vec4<f32>(-270f, 2437f, 1000f, 429f), u_input.b.x, u_input.a.x, false, vec4<i32>(-30538i, u_input.b.x, u_input.a.x, 9171i)), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(min(2037f, _wgslsmith_f_op_f32(func_3(Struct_3(78752u, vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec2<bool>(false, false), u_input.a.x), vec2<u32>(1u, 1u), Struct_1(vec4<f32>(-316f, -652f, 1487f, 343f), 1i, -63291i, true, vec4<i32>(1i, u_input.a.x, -41572i, u_input.b.x)), vec2<bool>(true, true))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(1357f + 584f))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(min(u_input.a.x, 0i), i32(-1i) * -42913i), vec2<i32>(-u_input.b.x, max(u_input.b.x, u_input.b.x))), _wgslsmith_mult_i32(-36463i, -abs(u_input.b.x))), ~(-28149i), any(select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, false, true)), true, any(vec2<bool>(false, false))), all(vec4<bool>(true, false, false, false)) || true)), vec4<i32>(u_input.b.x, 40638i, ~u_input.b.x, abs(u_input.b.x)));
    let var_1 = ~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(69291u, 1u, 0u, 16518u)) | select(4294967295u, 1u, any(vec2<bool>(var_0.d, var_0.d)))) ^ 33901u;
    global0 = array<vec4<bool>, 21>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-353f, 472f, 315f, var_0.a.x))), vec4<f32>(638f, 787f, 2327f, -332f))), _wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 142f)))), !(!global0[_wgslsmith_index_u32(0u, 21u)])))), -(0i << (_wgslsmith_div_u32(_wgslsmith_mult_u32(12080u, var_1), select(var_1, var_1, var_0.d)) % 32u)), _wgslsmith_mod_i32(abs(var_0.b), -45373i), (49316u << (~(~var_1) % 32u)) > abs(~12249u), -firstTrailingBit(var_0.e));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a * var_2.a) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1422f, var_0.a.x, -730f, 693f))))), select(_wgslsmith_add_i32(var_2.c, ~u_input.a.x), -24189i, var_0.d), max(firstTrailingBit(u_input.a.x), u_input.b.x ^ 2147483647i), true, max(select(firstLeadingBit(vec4<i32>(var_0.b, u_input.a.x, 30518i, -29653i)), vec4<i32>(17292i, -20113i, var_0.c, u_input.b.x), false), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -37533i, u_input.b.x, 1i), vec4<i32>(0i, -2147483647i, var_2.e.x, -1i), vec4<i32>(-41085i, var_2.b, 55494i, 0i)), vec4<i32>(-1i, var_2.e.x, 2147483647i, -46564i)))));
    return !(0u >= var_1) | any(!select(select(vec2<bool>(false, true), vec2<bool>(var_0.d, false), vec2<bool>(var_0.d, false)), vec2<bool>(true, true), !vec2<bool>(var_3.a.d, false)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> Struct_2 {
    let var_0 = arg_0.a.a.wz;
    let var_1 = Struct_3(~1u, _wgslsmith_mult_vec3_u32(vec3<u32>(~(~37467u), _wgslsmith_mult_u32(1u, arg_1.a), arg_1.b.x), ~(~arg_1.b)), select(select(select(vec2<bool>(arg_2, arg_1.c.x), select(arg_1.c, vec2<bool>(true, false), arg_1.c), any(vec3<bool>(true, false, arg_1.c.x))), arg_1.c, all(!arg_1.c)), !(!arg_1.c), true), arg_1.d);
    let var_2 = ~60235u;
    var var_3 = arg_0.a.e.xz;
    var var_4 = any(global0[_wgslsmith_index_u32(max(48874u, ~4294967295u), 21u)]);
    return Struct_2(arg_0.a);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global0 = array<vec4<bool>, 21>();
    global0 = array<vec4<bool>, 21>();
    let var_0 = Struct_3(~7530u, countOneBits(vec3<u32>(1u, 1u, 1u)), select(!vec2<bool>(arg_0.a.d || true, true), vec2<bool>(all(vec2<bool>(true, arg_0.a.d)) && true, !arg_0.a.d), select(select(select(vec2<bool>(false, arg_0.a.d), vec2<bool>(arg_0.a.d, true), arg_0.a.d), select(vec2<bool>(arg_0.a.d, arg_0.a.d), vec2<bool>(arg_0.a.d, false), vec2<bool>(true, true)), all(vec3<bool>(arg_0.a.d, true, true))), vec2<bool>(false, !arg_0.a.d), vec2<bool>(true, arg_0.a.d))), arg_0.a.b);
    global0 = array<vec4<bool>, 21>();
    global0 = array<vec4<bool>, 21>();
    return func_4(Struct_2(arg_0.a), Struct_3(1u, firstLeadingBit(vec3<u32>(~45172u, 16166u, 1u)), select(!var_0.c, var_0.c, false), select(_wgslsmith_div_i32(u_input.b.x, 45706i), countOneBits(var_0.d), all(vec2<bool>(true, false))) >> (57717u % 32u)), func_2());
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<bool>, arg_3: f32) -> Struct_2 {
    global0 = array<vec4<bool>, 21>();
    return func_5(func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1459f, -437f, 617f, 1000f) + vec4<f32>(146f, 222f, arg_3, -1375f)), countOneBits(2147483647i), arg_0.x, func_2(), ~vec4<i32>(1i, u_input.b.x, -26323i, arg_0.x))), Struct_3(36830u, _wgslsmith_clamp_vec3_u32(vec3<u32>(30059u, 5333u, 75984u), vec3<u32>(1u, 144537u, 0u), vec3<u32>(4294967295u, 12744u, 29734u)) ^ vec3<u32>(42042u, 1u, 0u), select(select(arg_2.yy, vec2<bool>(false, arg_2.x), arg_1), vec2<bool>(arg_1, arg_1), false), u_input.a.x), true));
}

fn func_6(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_2) -> f32 {
    var var_0 = arg_2.a;
    var var_1 = reverseBits(_wgslsmith_mult_vec2_i32(-(select(u_input.a, var_0.e.ww, false) >> (~vec2<u32>(arg_1.x, 30864u) % vec2<u32>(32u))), func_5(func_4(Struct_2(Struct_1(vec4<f32>(arg_2.a.a.x, arg_2.a.a.x, var_0.a.x, 1822f), -2147483647i, arg_2.a.e.x, false, vec4<i32>(var_0.c, 0i, -6183i, var_0.b))), Struct_3(65289u, vec3<u32>(7224u, 1u, arg_1.x), vec2<bool>(true, var_0.d), 7932i), var_0.d)).a.e.yz));
    let var_2 = func_4(func_4(func_5(arg_2), Struct_3(arg_1.x, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, 0u, 3851u), _wgslsmith_sub_vec3_u32(arg_1.xxw, vec3<u32>(27722u, arg_1.x, 0u))), !select(vec2<bool>(false, arg_2.a.d), vec2<bool>(arg_0, var_0.d), vec2<bool>(true, true)), -35244i), any(!(!vec4<bool>(false, false, true, arg_0)))), Struct_3(~(~arg_1.x) & 0u, ~_wgslsmith_mult_vec3_u32(~arg_1.yzw, arg_1.xxw), select(select(vec2<bool>(var_0.d, arg_0), vec2<bool>(true, arg_0), vec2<bool>(var_0.d, true)), select(vec2<bool>(true, true), vec2<bool>(arg_2.a.d, arg_0), var_0.d), func_5(arg_2).a.d), var_1.x), false);
    var var_3 = Struct_1(var_0.a, var_1.x << (reverseBits(37783u) % 32u), u_input.b.x, !arg_0, min(func_1(arg_2.a.e.xyx | vec3<i32>(-57281i, u_input.b.x, 1i), false, global0[_wgslsmith_index_u32(reverseBits(1u), 21u)], _wgslsmith_f_op_f32(arg_2.a.a.x - arg_2.a.a.x)).a.e ^ -_wgslsmith_add_vec4_i32(var_0.e, vec4<i32>(30369i, var_0.c, 55521i, 23631i)), vec4<i32>(-28507i << (arg_1.x % 32u), _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_2.a.c, var_2.a.e.x), ~u_input.b.x), var_0.e.x, 2147483647i)));
    let var_4 = func_1(arg_2.a.e.www, all(global0[_wgslsmith_index_u32(0u, 21u)]), select(vec4<bool>(false, arg_0, true, true), vec4<bool>(false, true, min(arg_1.x, 0u) == (10352u ^ arg_1.x), false), arg_2.a.d), -253f).a.d;
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~vec3<u32>(_wgslsmith_sub_u32(4294967295u, 0u), ~39124u, 36028u), _wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(2929u, 45976u, 0u), vec3<u32>(4294967295u, 67143u, 4294967295u)), select(countOneBits(vec3<u32>(9316u, 27305u, 4294967295u)), vec3<u32>(11671u, 0u, 57812u), true)), true) >> ((vec3<u32>(~(~15857u), _wgslsmith_div_u32(~37109u, ~9834u), _wgslsmith_clamp_u32(1u, 20603u >> (0u % 32u), 4294967295u)) >> (vec3<u32>(_wgslsmith_sub_u32(73884u, 1u), ~(~21385u), 1u) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -550f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1457f - 1157f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -788f)), 298f, true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(899f, 1039f)))));
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-684f))))));
    var var_2 = _wgslsmith_mult_i32(~u_input.a.x, ~_wgslsmith_add_i32(_wgslsmith_add_i32(~(-2147483647i), u_input.a.x >> (var_0.x % 32u)), -47383i));
    let var_3 = true;
    var var_4 = ~(~var_0.x);
    let var_5 = var_0.x | var_0.x;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(true, reverseBits(abs(vec4<u32>(var_5, 55042u, var_5, 4294967295u) >> (vec4<u32>(4294967295u, var_0.x, 53220u, var_5) % vec4<u32>(32u)))), func_1(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.b.x), false, !select(global0[_wgslsmith_index_u32(35062u, 21u)], vec4<bool>(true, false, var_3, false), vec4<bool>(var_3, true, var_3, var_3)), 239f))), -1474f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~(var_5 | ~var_5), firstLeadingBit(1u >> (var_5 % 32u)) << (var_5 % 32u)));
}

