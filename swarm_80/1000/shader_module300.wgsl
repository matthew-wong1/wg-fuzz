struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: f32) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1785f, 224f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -783f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(653f, arg_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-402f, -289f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, 1000f) * vec2<f32>(_wgslsmith_f_op_f32(448f - _wgslsmith_f_op_f32(-607f - arg_3)), 309f));
    var var_0 = global0.x;
    var var_1 = Struct_1(!arg_1.x, vec4<i32>(0i, u_input.a.x, ~(~_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), arg_2.x), _wgslsmith_clamp_vec3_i32(reverseBits(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, arg_2.x, u_input.a.x), vec3<i32>(-5489i, -31033i, arg_2.x)))), vec3<i32>(arg_2.x, arg_2.x, firstTrailingBit(-44039i & u_input.a.x)), ~vec3<i32>(1i, 1i, 1i)), vec3<i32>(-2147483647i, -1i, u_input.a.x | arg_2.x), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(~0u, ~1u), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(3712u, 0u, 3854u), ~51088u, ~0u)), ~4294967295u, 1u, 54018u));
    var var_2 = _wgslsmith_f_op_f32(-arg_0);
    return vec2<f32>(-665f, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(arg_3 * 1000f)));
}

fn func_2() -> bool {
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(-1000f, vec4<bool>(true, true, true, true), abs(reverseBits(u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 253f) + _wgslsmith_f_op_f32(-1000f + -643f)))), vec2<f32>(-140f, -152f), vec2<bool>(select(true, all(vec2<bool>(true, true)), true), false)))));
    var var_0 = ~5080u << (abs(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(93742u, 24685u, 22617u), select(vec3<u32>(115613u, 1386u, 77707u), vec3<u32>(0u, 4294967295u, 6094u), vec3<bool>(true, false, false))))) % 32u);
    var var_1 = true;
    var var_2 = Struct_1(true | any(vec2<bool>(true, true)), abs(max(vec4<i32>(max(-1i, u_input.a.x), u_input.a.x, max(u_input.a.x, -23089i), u_input.a.x), vec4<i32>(select(u_input.a.x, -30324i, true), u_input.a.x, ~u_input.a.x, ~u_input.a.x))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.a.x, 56977i, u_input.a.x), ~(~vec3<i32>(1929i, u_input.a.x, 6460i)), ~vec3<i32>(u_input.a.x, 2147483647i, -1i) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(58491u, 54493u, 7239u), vec3<u32>(2923u, 7427u, 26223u), vec3<u32>(1u, 48795u, 4294967295u)) % vec3<u32>(32u))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), -vec3<i32>(-_wgslsmith_div_i32(44339i, u_input.a.x), 955i, 2147483647i), ~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(42703u, 72139u, 0u, 59983u)), ~vec4<u32>(4294967295u, 35837u, 1u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 23693u)), firstLeadingBit(vec4<u32>(4294967295u, 1u, 5999u, 80091u)) | firstTrailingBit(vec4<u32>(1u, 1u, 67298u, 30408u))));
    var_0 = 25471u;
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = global0.x;
    var_0 = _wgslsmith_f_op_f32(-1025f * _wgslsmith_div_f32(1115f, -572f));
    var var_1 = 219f;
    var var_2 = u_input.a;
    var_2 = arg_2.c.yx;
    return arg_2;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = global0.x;
    var var_1 = ~(~(17293u ^ _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, arg_0, 4294967295u), arg_1.e.zwx), arg_1.e.yxz)));
    let var_2 = _wgslsmith_mult_u32(arg_0, 23741u) << (abs(arg_1.e.x) % 32u);
    let var_3 = 51029u;
    let var_4 = arg_1;
    return func_4(arg_3, func_4(select(vec2<bool>(func_2(), !arg_1.a), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(-2147483647i == arg_1.b.x, all(vec4<bool>(false, arg_1.a, var_4.a, false)))), func_4(arg_3, var_4, var_4, _wgslsmith_mod_vec3_i32(~arg_1.b.zyx, var_4.d)), func_4(arg_3, func_4(!vec2<bool>(arg_3.x, arg_3.x), var_4, Struct_1(arg_1.a, vec4<i32>(var_4.c.x, u_input.a.x, 19940i, 1i), vec3<i32>(2147483647i, u_input.a.x, 22334i), vec3<i32>(arg_1.b.x, arg_1.d.x, -11461i), vec4<u32>(arg_0, 52432u, 1u, 35442u)), arg_1.b.yyy << (var_4.e.xxx % vec3<u32>(32u))), func_4(vec2<bool>(true, var_4.a), Struct_1(false, vec4<i32>(arg_1.d.x, arg_1.c.x, u_input.a.x, var_4.d.x), vec3<i32>(-20944i, -13771i, -1i), var_4.b.wwy, vec4<u32>(4294967295u, 1u, arg_1.e.x, var_2)), func_4(vec2<bool>(true, true), var_4, var_4, arg_1.c), vec3<i32>(-50618i, arg_1.c.x, u_input.a.x)), var_4.c), vec3<i32>(abs(u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_4.d.x, arg_1.d.x), vec2<i32>(var_4.c.x, var_4.c.x)) | abs(var_4.d.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_1.d.x, 2147483647i, -38404i), ~0i))), func_4(select(arg_3, select(arg_3, vec2<bool>(true, true), select(false, false, true)), _wgslsmith_mod_i32(u_input.a.x, -7046i) <= -18078i), Struct_1(_wgslsmith_f_op_f32(-526f - -2758f) <= _wgslsmith_f_op_f32(ceil(-1221f)), vec4<i32>(~u_input.a.x, var_4.b.x & var_4.b.x, 1i, func_4(arg_3, Struct_1(true, vec4<i32>(u_input.a.x, u_input.a.x, arg_1.d.x, var_4.b.x), vec3<i32>(arg_1.c.x, arg_1.d.x, arg_1.c.x), vec3<i32>(arg_1.c.x, -2147483647i, 39607i), vec4<u32>(arg_0, 42001u, 0u, var_3)), Struct_1(true, vec4<i32>(arg_1.c.x, arg_1.b.x, u_input.a.x, var_4.d.x), vec3<i32>(arg_1.c.x, 0i, 1i), vec3<i32>(0i, var_4.d.x, -23953i), vec4<u32>(1u, 0u, var_4.e.x, 4294967295u)), vec3<i32>(arg_1.d.x, 20852i, arg_1.c.x)).b.x), vec3<i32>(_wgslsmith_mult_i32(1i, 0i), u_input.a.x, 0i), ~vec3<i32>(arg_1.b.x, u_input.a.x, 0i), ~var_4.e), var_4, _wgslsmith_sub_vec3_i32(var_4.d, vec3<i32>(abs(u_input.a.x), ~arg_1.c.x, func_4(arg_3, Struct_1(var_4.a, vec4<i32>(1i, 0i, 38335i, arg_1.b.x), vec3<i32>(-2910i, -10613i, u_input.a.x), var_4.c, vec4<u32>(var_3, arg_0, var_3, var_3)), Struct_1(true, vec4<i32>(53658i, arg_1.d.x, -2147483647i, var_4.c.x), vec3<i32>(arg_1.c.x, var_4.c.x, 45229i), vec3<i32>(2147483647i, -2147483647i, -38492i), vec4<u32>(1u, 68639u, arg_2, var_3)), vec3<i32>(8526i, var_4.b.x, 1i)).b.x))), var_4.d);
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = ~0u;
    let var_1 = func_5(2283u, func_4(vec2<bool>(true, true), Struct_1(func_2(), -vec4<i32>(-51143i, u_input.a.x, -29673i, u_input.a.x) | max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(0i, -2852i, u_input.a.x, u_input.a.x)), vec3<i32>(-3881i, u_input.a.x, reverseBits(-2147483647i)), vec3<i32>(u_input.a.x | 9037i, u_input.a.x, i32(-1i) * -1i), _wgslsmith_add_vec4_u32(~vec4<u32>(28125u, 1u, 0u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0, 0u, var_0), vec4<u32>(1u, 73038u, 82094u, 18101u)))), Struct_1(false, abs(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 1i)), select(vec3<i32>(-17833i, -1i, 37731i), vec3<i32>(-2147483647i, 2147483647i, 1i), true), max(vec3<i32>(u_input.a.x, -2147483647i, 44699i), -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~(~vec4<u32>(var_0, arg_0, arg_0, arg_0))), ~_wgslsmith_clamp_vec3_i32(select(vec3<i32>(1i, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), true), ~vec3<i32>(u_input.a.x, u_input.a.x, 6299i), countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_sub_u32(arg_0, _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0, 25463u), arg_0)), !select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), u_input.a.x == -15595i), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), true));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global0.x), -292f) * global0.x), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-698f - _wgslsmith_f_op_f32(trunc(812f))))));
    var var_2 = func_4(vec2<bool>(func_2(), false), var_1, func_5(var_1.e.x, Struct_1(var_1.a, var_1.b, reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(26989i, 0i, u_input.a.x), var_1.c)), var_1.d, abs(vec4<u32>(arg_0, 1u, var_0, var_0))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_1.e.zy, var_1.e.yw), ~var_0) & var_1.e.x, !(!(!vec2<bool>(true, var_1.a)))), vec3<i32>(-16051i, -32782i, 0i));
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -1041f))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) - vec2<f32>(-1170f, global0.x))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(424f, global0.x) + vec2<f32>(-1686f, global0.x)) - vec2<f32>(502f, 1532f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), vec2<f32>(-372f, global0.x), false)))))));
    var var_0 = vec2<bool>(true, true);
    let var_1 = ~(~0u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1214f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(445f * 1351f)), _wgslsmith_f_op_f32(min(244f, _wgslsmith_f_op_f32(-global0.x))), false)), _wgslsmith_f_op_f32(func_1(~abs(9173u)))));
    global0 = var_2.yy;
    let var_3 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-661f, global0.x)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1917f - -715f))))), 395f, var_2.x);
    let var_4 = vec3<bool>(true, func_4(!vec2<bool>(var_0.x || var_0.x, true & var_0.x), func_5(firstTrailingBit(~var_1), Struct_1(false, abs(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, 0i, -24448i), func_5(var_1, Struct_1(false, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(1i, 47795i, -10618i), vec3<i32>(u_input.a.x, 10544i, u_input.a.x), vec4<u32>(4294967295u, var_1, 0u, var_1)), 36104u, vec2<bool>(false, false)).d, vec4<u32>(var_1, 4294967295u, var_1, var_1) << (vec4<u32>(0u, 0u, var_1, 0u) % vec4<u32>(32u))), abs(var_1 >> (var_1 % 32u)), !select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x))), Struct_1(true, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(14801i, 18144i, u_input.a.x, u_input.a.x), vec4<i32>(1i, 98830i, 11855i, 2147483647i)), reverseBits(-14811i), u_input.a.x ^ u_input.a.x, u_input.a.x), firstTrailingBit(select(vec3<i32>(u_input.a.x, -1i, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, -16548i), var_0.x)), func_4(select(vec2<bool>(false, var_0.x), vec2<bool>(true, true), vec2<bool>(var_0.x, true)), func_5(32820u, Struct_1(var_0.x, vec4<i32>(0i, -1i, -2147483647i, 1i), vec3<i32>(u_input.a.x, -2880i, u_input.a.x), vec3<i32>(1i, -27887i, u_input.a.x), vec4<u32>(var_1, var_1, var_1, 1u)), 4294967295u, vec2<bool>(var_0.x, var_0.x)), Struct_1(var_0.x, vec4<i32>(8372i, u_input.a.x, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, -5233i, u_input.a.x), vec4<u32>(13541u, 0u, 25045u, var_1)), -vec3<i32>(-53185i, u_input.a.x, -2147483647i)).c, vec4<u32>(77376u ^ var_1, ~54303u, 24437u, min(2385u, var_1))), -vec3<i32>(u_input.a.x, _wgslsmith_add_i32(-15346i, u_input.a.x), -48781i)).a, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2133f, var_2.x)), func_4(var_4.xx, func_4(!vec2<bool>(var_4.x, false), Struct_1(false, max(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -16555i, u_input.a.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, -2147483647i, 17253i), vec3<i32>(27275i, u_input.a.x, 2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 9203i, u_input.a.x), vec3<i32>(u_input.a.x, -45283i, -29534i)), vec4<u32>(4294967295u, var_1, var_1, 1u)), func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 55869u, 4294967295u), vec3<u32>(8682u, 0u, var_1)), func_5(84402u, Struct_1(var_4.x, vec4<i32>(-3120i, -6340i, -28442i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(-1511i, -13982i, u_input.a.x), vec4<u32>(var_1, var_1, 73313u, var_1)), var_1, vec2<bool>(true, var_4.x)), 66846u, select(var_4.yy, vec2<bool>(false, var_0.x), false)), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-58894i, 2147483647i, 3895i), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(45189i, u_input.a.x, -2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, -53129i)))), Struct_1(all(vec3<bool>(var_0.x, var_4.x, var_4.x)), min(reverseBits(vec4<i32>(-84375i, u_input.a.x, -16734i, 3598i)), ~vec4<i32>(1i, 2147483647i, -13231i, -58455i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 67180i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-27921i, -2147483647i, -11866i), vec3<i32>(u_input.a.x, 2147483647i, 1i)), vec3<i32>(u_input.a.x, 24269i, u_input.a.x)), vec3<i32>(firstTrailingBit(38475i), _wgslsmith_clamp_i32(u_input.a.x, 2147483647i, u_input.a.x), u_input.a.x), vec4<u32>(var_1, ~53154u, var_1, ~var_1)), select((vec3<i32>(9792i, -54242i, 1i) >> (vec3<u32>(var_1, 0u, 85326u) % vec3<u32>(32u))) >> (vec3<u32>(0u, 41536u, var_1) % vec3<u32>(32u)), vec3<i32>(u_input.a.x ^ u_input.a.x, select(-2147483647i, -44608i, false), -46113i), all(vec4<bool>(true, false, var_4.x, var_4.x)))).e.x);
}

