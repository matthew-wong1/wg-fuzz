struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(35083u, 0u), vec2<u32>(4294967295u, 105023u), vec2<u32>(4294967295u, 33070u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 13799u), vec2<u32>(0u, 40397u), vec2<u32>(4294967295u, 68412u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 83710u), vec2<u32>(0u, 0u), vec2<u32>(72029u, 4294967295u), vec2<u32>(4294967295u, 104501u), vec2<u32>(3555u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(28010u, 6726u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = !(!(!(!(!arg_1.a))));
    global0 = array<vec2<u32>, 16>();
    global0 = array<vec2<u32>, 16>();
    var var_1 = Struct_1(-2147483647i, ~(~14690u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.e.x, arg_0.c.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, 436f) + arg_1.b.e.ww), vec2<f32>(arg_0.c.x, -378f), arg_1.a)))), _wgslsmith_div_vec4_u32(arg_1.b.d, abs(vec4<u32>(u_input.d, arg_1.b.d.x, arg_0.b, reverseBits(arg_1.b.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(604f, -1176f)), _wgslsmith_f_op_f32(-arg_0.e.x), 1083f, 464f) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.e.x, 954f, -725f, 764f))))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.e.x - arg_1.b.c.x), _wgslsmith_f_op_f32(arg_0.e.x + arg_1.b.e.x), _wgslsmith_f_op_f32(min(246f, 2142f))) * arg_0.e.wxw), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b.e.wwx)), arg_1.b.e.www)), !vec3<bool>(arg_1.a != true, true, true))));
    return vec2<f32>(arg_1.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c.x))) + -427f));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<i32>) -> Struct_1 {
    return Struct_1(~firstLeadingBit(_wgslsmith_dot_vec4_i32(-u_input.a, firstTrailingBit(vec4<i32>(arg_2.x, arg_0.c.x, 0i, u_input.a.x)))), 13360u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(_wgslsmith_dot_vec2_i32(arg_2.zy, arg_0.c), 1u, _wgslsmith_f_op_vec2_f32(ceil(arg_0.b.e.yx)), arg_0.b.d, vec4<f32>(arg_0.b.c.x, -606f, arg_0.b.e.x, 1415f)), arg_0))), vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(978u, 1u)), global0[_wgslsmith_index_u32(1u, 16u)]), u_input.e, max(1u, _wgslsmith_div_u32(firstLeadingBit(0u), 1u)), arg_1.x), arg_0.b.e);
}

fn func_4(arg_0: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(arg_0.a.e, func_2(Struct_2(arg_0.b.x, Struct_1(-14663i, 4294967295u, vec2<f32>(457f, arg_0.a.c.x), vec4<u32>(arg_0.a.d.x, u_input.b, u_input.d, arg_0.a.d.x), arg_0.a.e), vec2<i32>(-32716i, u_input.c.x)), vec2<u32>(0u, arg_0.a.d.x), vec3<i32>(arg_0.a.a, u_input.a.x, 0i)).e, !(!vec4<bool>(true, arg_0.b.x, true, arg_0.b.x)))))));
    var var_1 = Struct_2(false, Struct_1(-47513i, 100793u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1245f)), -431f)), func_2(Struct_2(all(vec4<bool>(arg_0.b.x, true, false, false)), arg_0.a, vec2<i32>(arg_0.a.a, u_input.a.x)), ~arg_0.a.d.xz, vec3<i32>(func_2(Struct_2(arg_0.b.x, arg_0.a, vec2<i32>(-2147483647i, 0i)), vec2<u32>(0u, 133097u), u_input.a.xzw).a, _wgslsmith_dot_vec3_i32(u_input.a.zwz, vec3<i32>(u_input.a.x, u_input.a.x, -23022i)), arg_0.a.a)).d, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a.e))))), u_input.a.yx);
    let var_2 = ~firstTrailingBit(0i);
    let var_3 = Struct_1(-1i, _wgslsmith_dot_vec4_u32(select(firstTrailingBit(arg_0.a.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(72767u, 19513u, var_1.b.b, 11064u), var_1.b.d, vec4<u32>(var_1.b.d.x, 8101u, arg_0.a.d.x, var_1.b.b)), select(vec4<bool>(var_1.a, true, true, true), vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_0.b.x), false)), arg_0.a.d) ^ ~(~(~17770u)), vec2<f32>(_wgslsmith_f_op_f32(1383f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(357f, 1255f))), var_1.b.e.x), vec4<u32>(~(~0u) ^ _wgslsmith_div_u32(max(u_input.e, 740u), 12544u), var_1.b.d.x, 40728u, select(1u, 25491u, all(vec2<bool>(var_1.a, false)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1222f, var_1.b.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.c.x), -1390f))), _wgslsmith_f_op_vec4_f32(var_1.b.e - arg_0.a.e))));
    let var_4 = !all(vec4<bool>(var_1.a, arg_0.b.x, false || var_1.a, true)) || all(select(vec3<bool>(all(vec4<bool>(false, arg_0.b.x, var_1.a, var_1.a)), !var_1.a, true), vec3<bool>(var_1.a, 4294967295u != arg_0.a.b, arg_0.a.d.x <= u_input.b), arg_0.b));
    return var_4;
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_4(Struct_1(25669i, ~31380u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1034f, 357f)))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 0u, 60880u), vec4<u32>(u_input.d, 13546u, 4294967295u, 1u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1569f, 549f, 1490f, -644f) - vec4<f32>(2862f, 588f, -1540f, -2477f))))), vec3<bool>(func_4(Struct_4(func_2(Struct_2(true, Struct_1(2147483647i, u_input.e, vec2<f32>(1402f, 886f), vec4<u32>(u_input.d, 4294967295u, 2342u, 0u), vec4<f32>(-423f, -161f, 497f, -467f)), vec2<i32>(u_input.a.x, -2147483647i)), global0[_wgslsmith_index_u32(u_input.e, 16u)], u_input.c), select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, true, false), vec3<bool>(true, arg_0, false)))), any(select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), arg_0)), 0u != _wgslsmith_clamp_u32(~u_input.b, 1u, u_input.e)));
    global0 = array<vec2<u32>, 16>();
    var var_1 = vec4<u32>(~var_0.a.b, firstLeadingBit(4294967295u) << (u_input.e % 32u), ~(~_wgslsmith_mult_u32(11422u, 16802u)), var_0.a.d.x) ^ var_0.a.d;
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3140f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-218f, 849f))))));
    return Struct_2(true, Struct_1(0i, 81581u, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3), var_0.a.c.x)), var_3), ~(~min(var_0.a.d, var_0.a.d)), vec4<f32>(_wgslsmith_f_op_f32(sign(var_3)), var_3, _wgslsmith_f_op_f32(-var_0.a.e.x), -1621f)), _wgslsmith_sub_vec2_i32(u_input.a.wx, u_input.c.yz));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<u32>) -> u32 {
    global0 = array<vec2<u32>, 16>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1304f)))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.e.x * _wgslsmith_f_op_f32(min(arg_0.b.e.x, 1640f)))))));
    global0 = array<vec2<u32>, 16>();
    global0 = array<vec2<u32>, 16>();
    let var_1 = arg_0;
    return _wgslsmith_add_u32(firstLeadingBit(abs(_wgslsmith_dot_vec3_u32(var_1.b.d.xwy << (arg_2.zxw % vec3<u32>(32u)), vec3<u32>(var_1.b.b, var_1.b.d.x, arg_0.b.d.x) >> (vec3<u32>(var_1.b.d.x, 48255u, arg_0.b.b) % vec3<u32>(32u))))), countOneBits(max(4294967295u, ~(~u_input.d))));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    var var_0 = select(select(vec3<bool>(true, !all(vec2<bool>(true, arg_2.a)), arg_2.a), vec3<bool>(arg_2.b.e.x >= arg_2.b.e.x, any(vec3<bool>(false, false, arg_2.a)) & any(vec4<bool>(arg_2.a, arg_2.a, arg_2.a, false)), true), false), vec3<bool>(!arg_2.a, false, true), !vec3<bool>(false, arg_2.a, arg_2.a));
    var var_1 = Struct_1(firstTrailingBit(abs(-func_2(Struct_2(false, Struct_1(arg_2.b.a, arg_1.x, arg_2.b.e.yw, arg_2.b.d, arg_2.b.e), vec2<i32>(-1i, arg_3)), vec2<u32>(arg_2.b.b, 9646u), vec3<i32>(arg_3, arg_2.b.a, arg_3)).a)), 56689u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_2.b.e.xy, arg_2.b.e.zx)))), max(select(vec4<u32>(~0u, ~1u, arg_0.x, ~arg_1.x), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 16903u, arg_2.b.b), arg_2.b.d)), arg_2.a), vec4<u32>(~(71341u | arg_1.x), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2.b.d.x), arg_0.zx) ^ arg_0.x, arg_2.b.d.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b.c.x), -992f, arg_2.b.e.x, _wgslsmith_f_op_f32(-242f - arg_2.b.c.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2234f, arg_2.b.c.x, 1820f, arg_2.b.c.x)), _wgslsmith_f_op_vec4_f32(arg_2.b.e * vec4<f32>(arg_2.b.c.x, 920f, 706f, -1115f)))))));
    var_0 = select(!(!vec3<bool>(all(vec4<bool>(var_0.x, arg_2.a, arg_2.a, arg_2.a)), arg_2.a, any(vec2<bool>(true, false)))), select(vec3<bool>(!any(vec2<bool>(var_0.x, false)), !arg_2.a, func_1(all(vec3<bool>(false, true, var_0.x))).a), vec3<bool>(var_0.x, arg_2.a, var_0.x), !select(!vec3<bool>(true, arg_2.a, true), vec3<bool>(false, var_0.x, var_0.x), var_0.x)), select(vec3<bool>(arg_2.a, arg_2.a, !any(vec4<bool>(arg_2.a, var_0.x, var_0.x, false))), vec3<bool>(var_0.x, arg_2.a, true), arg_2.b.c.x < arg_2.b.c.x));
    var_1 = arg_2.b;
    var var_2 = arg_3;
    return func_1(!var_0.x);
}

fn func_7(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(arg_2.a.b.a, 1i)), vec2<i32>(firstLeadingBit(25244i), _wgslsmith_add_i32(-1i, 1i))) | arg_0.c;
    var var_1 = arg_3;
    let var_2 = ~vec2<i32>(-_wgslsmith_clamp_i32(countOneBits(arg_0.c.x), -47158i, u_input.c.x), -44070i);
    var var_3 = arg_3;
    global0 = array<vec2<u32>, 16>();
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e, 1u), vec3<u32>(39914u, u_input.e, u_input.e)), ~0u), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, u_input.b, 1u), vec3<u32>(u_input.b, u_input.e, 13188u)))), ~vec3<u32>(~4294967295u, u_input.b, abs(4294967295u))));
    var_0 = 1u;
    let var_1 = func_7(func_6(vec3<u32>(func_5(func_1(true), -vec3<i32>(0i, u_input.a.x, u_input.a.x), abs(vec4<u32>(u_input.b, 1u, 101807u, u_input.d))), ~(u_input.e >> (4294967295u % 32u)), ~reverseBits(1u)), max(~(~vec2<u32>(1u, u_input.e)), vec2<u32>(~4294967295u, 4294967295u)), Struct_2(true, Struct_1(u_input.c.x | -1i, 0u, func_2(Struct_2(true, Struct_1(u_input.a.x, 0u, vec2<f32>(-1000f, 1000f), vec4<u32>(u_input.d, 1u, u_input.b, u_input.b), vec4<f32>(-973f, 387f, -1725f, -273f)), vec2<i32>(u_input.c.x, -1i)), global0[_wgslsmith_index_u32(36062u, 16u)], vec3<i32>(u_input.c.x, u_input.a.x, u_input.a.x)).e.ww, vec4<u32>(u_input.b, 67326u, 8659u, 0u) & vec4<u32>(u_input.b, 0u, 4294967295u, u_input.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(-830f, -1417f, -409f, -186f) + vec4<f32>(938f, 1152f, -1000f, -498f))), u_input.c.xx << ((global0[_wgslsmith_index_u32(u_input.d, 16u)] & vec2<u32>(1u, u_input.b)) % vec2<u32>(32u))), func_2(func_1(true), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, u_input.d), ~u_input.d), 16u)], -vec3<i32>(0i, -3256i, u_input.c.x)).a), 277f, Struct_3(func_1(all(vec3<bool>(false, false, false)) | true), 52910u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), 0u), Struct_4(Struct_1(-1i, select(func_5(Struct_2(false, Struct_1(-1i, 20853u, vec2<f32>(1375f, 1389f), vec4<u32>(21199u, 39355u, u_input.b, u_input.b), vec4<f32>(2038f, -351f, 968f, 1000f)), u_input.a.xw), u_input.a.zwy, vec4<u32>(58715u, 0u, u_input.e, u_input.b)), 33299u, true), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, -649f))), vec4<u32>(firstTrailingBit(u_input.d), u_input.e, _wgslsmith_sub_u32(0u, u_input.e), ~4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(819f, 870f, 366f, -1636f)))), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, any(vec3<bool>(false, false, false)), true))));
    var var_2 = _wgslsmith_mult_i32(-21687i, min(countOneBits(u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.c.zy, -vec2<i32>(-28380i, -1i) << (vec2<u32>(u_input.b, u_input.d) % vec2<u32>(32u)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c.x, func_6(var_1.a.d.zyz, var_1.a.d.zw, Struct_2(false, Struct_1(5787i, var_1.a.b, vec2<f32>(-407f, var_1.a.e.x), var_1.a.d, var_1.a.e), ~u_input.c.zy), var_1.a.a).b.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1279f, var_1.a.e.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_1.a.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(430f, var_1.a.c.x)))))), _wgslsmith_f_op_f32(-var_3.x), var_1.a.e.wyw, -(~(~var_1.a.a)));
}

