struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<u32>, 30>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: i32, arg_1: u32) -> vec2<u32> {
    global0 = false;
    let var_0 = 12609i;
    let var_1 = false;
    return vec2<u32>(1u, _wgslsmith_clamp_u32(~u_input.a.x, 4294967295u, ~_wgslsmith_mult_u32(0u, u_input.c) ^ _wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(12776u, 4294967295u))));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(389f, 1086f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-569f, 567f) * vec2<f32>(1000f, -1023f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-748f, 178f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1164f, 443f) * vec2<f32>(-1435f, -366f)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(649f, -1064f))), -444f, !select(vec3<bool>(false, u_input.a.x > 1u, u_input.c <= 0u), vec3<bool>(true, true, true), false), Struct_1(vec3<i32>(abs(u_input.b) >> (_wgslsmith_sub_u32(4294967295u, u_input.a.x) % 32u), abs(~u_input.b), u_input.b), select(u_input.c, ~u_input.c, any(vec4<bool>(true, true, false, false))), -firstLeadingBit(countOneBits(vec2<i32>(u_input.b, -1i))), !any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), ~max(u_input.b, _wgslsmith_sub_i32(-34569i, 14265i))), Struct_1(vec3<i32>(-30896i, _wgslsmith_add_i32(u_input.b, u_input.b) | -2550i, u_input.b), ~(0u & (57533u >> (u_input.c % 32u))), reverseBits(vec2<i32>(u_input.b, u_input.b)), !any(vec4<bool>(true, true, true, true)), 1i));
    let var_1 = 32710i;
    var var_2 = !select(select(!vec3<bool>(var_0.c.x, var_0.d.d, var_0.d.d), vec3<bool>(false, true, true), !(!vec3<bool>(var_0.c.x, true, false))), vec3<bool>(!var_0.e.d, all(!vec4<bool>(var_0.d.d, var_0.c.x, var_0.e.d, false)), !(!var_0.d.d)), var_0.c.x != any(!vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.e.d)));
    global0 = all(!select(vec4<bool>(var_2.x && var_0.e.d, true, !var_0.d.d, var_0.e.d), select(vec4<bool>(var_0.d.d, var_2.x, true, false), !vec4<bool>(var_0.e.d, false, true, var_2.x), select(vec4<bool>(true, var_2.x, var_0.e.d, false), vec4<bool>(false, var_2.x, var_0.c.x, false), var_2.x)), false));
    var var_3 = u_input.a;
    return max(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(1i, var_0.d.c.x, u_input.b << (1049u % 32u)), 0i << (1u % 32u), countOneBits(u_input.b) | _wgslsmith_div_i32(var_0.d.a.x, 0i)), var_0.d.a << (u_input.a % vec3<u32>(32u))), vec3<i32>(u_input.b, var_1, var_0.d.a.x) ^ min(~(~var_0.d.a), ~(-vec3<i32>(var_1, u_input.b, 0i))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-308f, 218f)), _wgslsmith_div_f32(arg_1.b, arg_1.a.x)))), arg_1.b), -941f, select(!(!select(vec3<bool>(true, arg_3.d, true), arg_1.c, false)), vec3<bool>(arg_3.d, any(select(arg_1.c, vec3<bool>(arg_3.d, false, arg_1.e.d), arg_3.d)), all(select(vec4<bool>(arg_1.d.d, arg_1.c.x, arg_1.e.d, arg_1.c.x), vec4<bool>(true, arg_3.d, arg_1.d.d, true), arg_3.d))), 1u >= _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_2.x, 9000u), ~0u)), arg_3, Struct_1(countOneBits(vec3<i32>(u_input.b, arg_1.e.e, 1i)), _wgslsmith_mult_u32(firstTrailingBit(arg_0.x), _wgslsmith_sub_u32(arg_2.x, 38793u)), vec2<i32>(0i, u_input.b) ^ arg_3.a.xy, !select(true, true, arg_3.d), -_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, -19649i), vec2<i32>(arg_3.e, arg_1.d.a.x)), countOneBits(vec2<i32>(-1i, 6634i)))));
    var var_1 = arg_1.e.d;
    var var_2 = Struct_3(Struct_1(vec3<i32>(_wgslsmith_mod_i32(firstTrailingBit(23493i), arg_1.d.c.x ^ 0i), _wgslsmith_clamp_i32(~u_input.b, firstTrailingBit(arg_3.a.x), _wgslsmith_clamp_i32(2147483647i, arg_3.e, -1i)), firstLeadingBit(u_input.b)), ~(~(~arg_3.b)), vec2<i32>(u_input.b, arg_1.e.e), true, -1i), 1773f, select(select(arg_1.c.xx, arg_1.c.yy, vec2<bool>(true, true & arg_1.c.x)), select(var_0.c.zz, vec2<bool>(false & var_0.c.x, true), all(var_0.c)), vec2<bool>(!arg_1.c.x, true)), arg_1);
    var var_3 = _wgslsmith_div_vec3_u32(arg_2.yxw, vec3<u32>(1u, ~_wgslsmith_dot_vec3_u32(arg_2.zwx, ~arg_2.wyw), 0u));
    var var_4 = !select(vec3<bool>(all(vec3<bool>(true, arg_1.e.d, false)), true, false), arg_1.c, select(var_0.c.x != arg_1.d.d, _wgslsmith_div_u32(u_input.a.x, 43963u) > 0u, !var_2.a.d));
    return any(vec3<bool>(all(!(!var_0.c)), arg_3.d, false));
}

fn func_1() -> bool {
    var var_0 = true;
    var var_1 = all(vec2<bool>(any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false));
    var var_2 = vec4<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(231f))) <= -334f), func_4(_wgslsmith_mod_vec2_u32(vec2<u32>(99056u, 2817u) & global1[_wgslsmith_index_u32(u_input.c, 30u)], ~vec2<u32>(1u, u_input.c)) & (func_2(-55089i, 51138u) ^ abs(u_input.a.xz)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-263f, 1873f) * vec2<f32>(134f, 792f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(794f, -527f)))), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), Struct_1(-vec3<i32>(u_input.b, u_input.b, -1i), u_input.c >> (107312u % 32u), -vec2<i32>(u_input.b, 0i), all(vec3<bool>(false, true, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, 48732i), vec3<i32>(u_input.b, -42172i, u_input.b))), Struct_1(vec3<i32>(2147483647i, u_input.b, 1i), ~u_input.c, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-2147483647i, u_input.b)), true, 6760i)), vec4<u32>(u_input.c << (~u_input.c % 32u), _wgslsmith_div_u32(~0u, u_input.c), ~_wgslsmith_sub_u32(0u, u_input.c), u_input.c), Struct_1(-func_3(), u_input.c, -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-35650i, u_input.b)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false)), -u_input.b)), ~_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_div_u32(u_input.c, 0u)) != _wgslsmith_sub_u32(17u, u_input.a.x), false);
    let var_3 = vec4<u32>(1u, 1u, 80347u, 84920u);
    let var_4 = Struct_3(Struct_1(vec3<i32>(~9068i, u_input.b, _wgslsmith_mult_i32(2147483647i, u_input.b)), 4294967295u, func_3().zz, false, _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, -2147483647i, u_input.b, u_input.b), vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(1i, -59705i, -7874i), 2147483647i, ~(-2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-477f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-347f - -126f))) + _wgslsmith_f_op_f32(-273f - 1f)), select(var_2.yz, var_2.wx, true), Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(197f, -1335f))), -764f, !(!select(vec3<bool>(var_2.x, false, true), var_2.www, var_2.x)), Struct_1(vec3<i32>(-1i) * -vec3<i32>(1i, u_input.b, -1i), ~u_input.c, ~vec2<i32>(u_input.b, u_input.b), var_2.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-19457i, -1i), ~1i)), Struct_1(vec3<i32>(1i, -2147483647i, -u_input.b), ~(~u_input.c), -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 11570i), vec2<i32>(u_input.b, u_input.b)), !(!var_2.x), _wgslsmith_div_i32(-15823i, reverseBits(u_input.b)))));
    return var_4.a.d;
}

fn func_5(arg_0: bool) -> Struct_4 {
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(215f, -1559f) - vec2<f32>(-1467f, -599f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -732f)))), vec3<bool>(func_1(), arg_0 != true, func_4(vec2<u32>(u_input.c, 4294967295u), Struct_2(vec2<f32>(-1357f, 1039f), 484f, vec3<bool>(arg_0, true, arg_0), Struct_1(vec3<i32>(u_input.b, u_input.b, -1i), 4294967295u, vec2<i32>(2147483647i, -2147483647i), false, u_input.b), Struct_1(vec3<i32>(u_input.b, u_input.b, u_input.b), 13619u, vec2<i32>(u_input.b, u_input.b), arg_0, 1i)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, 4294967295u), vec4<u32>(u_input.c, 0u, u_input.c, 1u)), Struct_1(vec3<i32>(u_input.b, u_input.b, 47577i), 1u, vec2<i32>(-1i, u_input.b), true, -67786i))), Struct_1(vec3<i32>(~u_input.b, u_input.b << (u_input.a.x % 32u), u_input.b), min(~u_input.c, u_input.a.x), func_3().yx, true, u_input.b), Struct_1(~vec3<i32>(-1i, u_input.b, u_input.b), u_input.c, vec2<i32>(_wgslsmith_mult_i32(u_input.b, u_input.b), i32(-1i) * -19981i), arg_0, func_3().x)), Struct_1(vec3<i32>(-1i) * -(vec3<i32>(6522i, u_input.b, 2147483647i) >> (vec3<u32>(80289u, 4294967295u, u_input.c) % vec3<u32>(32u))), 4294967295u, _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, 2147483647i)), ~vec2<i32>(-2147483647i, 55418i)), select(vec2<i32>(u_input.b, -27566i) | vec2<i32>(u_input.b, u_input.b), -vec2<i32>(0i, u_input.b), vec2<bool>(false, false)), vec2<i32>(abs(u_input.b), u_input.b << (u_input.c % 32u))), arg_0, select(~u_input.b, u_input.b ^ u_input.b, arg_0 & arg_0) & u_input.b), vec3<u32>(~_wgslsmith_add_u32(func_2(-1i, u_input.c).x, u_input.a.x), reverseBits(1u), 1u));
    let var_1 = any(select(!vec4<bool>(arg_0, var_0.a.c.x, true, var_0.a.c.x), !(!vec4<bool>(arg_0, true, false, var_0.a.c.x)), var_0.a.e.d)) && all(select(!(!vec4<bool>(false, arg_0, true, true)), !select(vec4<bool>(false, arg_0, false, false), vec4<bool>(var_0.a.c.x, var_0.b.d, var_0.b.d, false), vec4<bool>(arg_0, true, arg_0, false)), true));
    let var_2 = select(func_2(var_0.b.a.x, select(u_input.a.x, abs(~u_input.a.x), !(u_input.b < var_0.b.e))).x, countOneBits(35542u), true);
    let var_3 = min(min(_wgslsmith_add_i32(-u_input.b, -2147483647i) ^ -85034i, var_0.a.d.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 56712i, abs(-var_0.a.e.e)), select(vec3<i32>(20812i, -1i, 0i) & var_0.a.d.a, select(~var_0.b.a, var_0.b.a, vec3<bool>(var_0.b.d, true, var_1)), false)));
    global1 = array<vec2<u32>, 30>();
    return Struct_4(Struct_2(vec2<f32>(-512f, 391f), 1f, select(!(!var_0.a.c), vec3<bool>(false, var_1, true), var_0.a.c), var_0.b, Struct_1(var_0.a.d.a, 1u, var_0.a.d.c, arg_0, -2147483647i)), Struct_1(vec3<i32>(0i, ~select(u_input.b, var_0.b.e, false), var_3), select(~abs(u_input.a.x), var_2 >> (_wgslsmith_add_u32(var_2, 38633u) % 32u), func_4(vec2<u32>(u_input.a.x, u_input.a.x), var_0.a, ~vec4<u32>(0u, var_0.c.x, 0u, 4294967295u), var_0.a.d)), -var_0.a.e.c, var_1 == true, 11137i), ~(~vec3<u32>(select(var_0.b.b, 11117u, false), 52082u, ~27697u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5((~_wgslsmith_div_i32(-2147483647i, u_input.b) != -firstTrailingBit(1i)) & func_1());
    let var_1 = var_0.a.d;
    let var_2 = Struct_4(var_0.a, var_1, ~u_input.a);
    let var_3 = 37181u;
    global1 = array<vec2<u32>, 30>();
    var var_4 = func_5(false).b;
    let var_5 = 2090f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_5(any(!vec4<bool>(var_2.b.d, var_1.d, true, true))).a.a + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a.a))))), select(~_wgslsmith_mod_vec3_u32(var_2.c << (vec3<u32>(35290u, 1u, var_1.b) % vec3<u32>(32u)), var_0.c), ~(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a.d.b, u_input.c, var_4.b), vec3<u32>(1u, 4294967295u, 1u)) << (firstTrailingBit(var_0.c) % vec3<u32>(32u))), !var_4.d), -2613f);
}

