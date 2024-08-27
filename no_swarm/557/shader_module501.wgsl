struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = Struct_5(vec4<bool>(all(vec3<bool>(arg_0, select(true, false, arg_0), true)), any(!(!vec2<bool>(arg_0, arg_0))), all(!select(global0[_wgslsmith_index_u32(12702u, 3u)], vec3<bool>(arg_0, arg_0, arg_0), true)), ~countOneBits(u_input.b.x) > u_input.b.x), Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(-247f)) == -468f, u_input.e & -vec4<i32>(u_input.e.x, u_input.e.x, 51296i, -1i), true, true, u_input.e.x), !arg_0, vec3<f32>(-2241f, -310f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1623f, -1190f))))), Struct_1(arg_0, ~(-(vec4<i32>(u_input.e.x, 0i, 1i, -2147483647i) >> (vec4<u32>(u_input.d, 4111u, 4294967295u, u_input.b.x) % vec4<u32>(32u)))), true, true, ~u_input.e.x), Struct_2(Struct_1(arg_0, min(vec4<i32>(2147483647i, u_input.e.x, u_input.e.x, u_input.e.x), -vec4<i32>(9323i, u_input.e.x, u_input.e.x, -1i)), any(vec3<bool>(arg_0, arg_0, arg_0)), any(!global0[_wgslsmith_index_u32(u_input.c, 3u)]), ~abs(u_input.e.x)), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(522f, 1001f, -386f), vec3<f32>(-526f, 555f, 941f)))))));
    global0 = array<vec3<bool>, 3>();
    let var_1 = var_0;
    var var_2 = select(select(vec2<bool>(var_1.b.a.a, !(!arg_0)), var_0.a.wx, true), vec2<bool>(all(select(var_0.a, !vec4<bool>(var_1.b.b, true, var_1.b.b, var_1.b.b), var_1.a.x)), any(vec2<bool>(all(vec2<bool>(arg_0, true)), arg_0 && var_0.a.x))), vec2<bool>(all(vec2<bool>(!var_0.a.x, false)), all(vec3<bool>(var_1.b.a.d, u_input.c != u_input.a, all(vec2<bool>(arg_0, var_0.b.a.c))))));
    var var_3 = var_1.b.c.zy;
    return 0i;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2392f), 328f, -509f)))), Struct_2(Struct_1(true, -u_input.e, false == all(vec3<bool>(true, false, true)), true, 3255i), u_input.e.x == 0i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-792f, 1000f, 714f))), vec3<f32>(-129f, 162f, 1370f))) - vec3<f32>(-715f, 925f, -1000f))), Struct_1(true, -(-u_input.e >> (vec4<u32>(u_input.b.x, 19536u, 0u, u_input.c) % vec4<u32>(32u))), true, _wgslsmith_f_op_f32(trunc(-758f)) > -427f, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, -2147483647i), u_input.e)));
    var var_1 = global0[_wgslsmith_index_u32(~u_input.c, 3u)];
    var var_2 = _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-var_0.a.x));
    var var_3 = Struct_4(var_0.b, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.a.x, -1000f), _wgslsmith_f_op_f32(round(1033f)), 345f)), var_0.b, Struct_1(any(select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, false), true)), _wgslsmith_mod_vec4_i32(u_input.e, _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -2147483647i, var_0.c.e, 56424i), vec4<i32>(2147483647i, 9819i, 2147483647i, var_0.c.b.x))), false | all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_0.c.d)), !(var_0.c.d | true), _wgslsmith_dot_vec2_i32(u_input.e.yx, u_input.e.zx) & var_0.c.e)), u_input.e.x, Struct_2(var_0.b.a, firstLeadingBit(func_3(var_0.c.a)) != (-var_0.b.a.b.x << (u_input.d % 32u)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(1177f, -661f, true)), _wgslsmith_f_op_f32(706f - -1113f), 1f), _wgslsmith_f_op_vec3_f32(-var_0.b.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))));
    var_0 = var_3.b;
    return Struct_4(var_0.b, var_3.b, -var_0.c.e, var_0.b, var_3.a.c.x);
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec2<bool>) -> Struct_3 {
    global0 = array<vec3<bool>, 3>();
    let var_0 = arg_1.b;
    let var_1 = Struct_4(func_2().a, var_0, _wgslsmith_clamp_i32(func_2().d.a.b.x, i32(-1i) * -max(2147483647i, 14526i), _wgslsmith_dot_vec2_i32(arg_1.a.a.b.zw ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.c.b.x, arg_1.a.a.b.x), vec2<i32>(14793i, 40231i), u_input.e.zy), vec2<i32>(-23517i, var_0.c.b.x) | vec2<i32>(-1i, -35694i))), arg_1.b.b, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(max(-197f, var_0.b.c.x)), !arg_2.x | arg_1.d.a.d)));
    var var_2 = Struct_5(!vec4<bool>(arg_1.a.a.a, !(false | var_1.a.a.d), true, !arg_1.b.c.c), Struct_2(func_2().a.a, true, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.b.c)) + var_1.a.c)))), func_2().d.a, func_2().b.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(-390f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.a.x, var_0.b.c.x) * var_0.a.x), -1239f)));
    return func_2().b;
}

fn func_1() -> Struct_3 {
    return func_4(!((1u == u_input.a) & false), func_2(), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, false)), true));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.b.c.x);
    let var_1 = arg_1;
    let var_2 = _wgslsmith_clamp_vec4_u32(abs(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.a, u_input.b.x, 4294967295u), vec4<u32>(u_input.d, 4294967295u, u_input.d, 16545u), vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, 17852u)) | max(vec4<u32>(u_input.b.x, 1u, 51222u, u_input.a), vec4<u32>(u_input.b.x, 62457u, 0u, 4294967295u)))), firstTrailingBit(~(~(~vec4<u32>(u_input.b.x, 1u, u_input.c, 27016u)))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(22909u, u_input.d, 64287u, 60195u) & vec4<u32>(u_input.d, 3070u, 74686u, u_input.a), ~vec4<u32>(36848u, u_input.c, 0u, 0u))));
    global0 = array<vec3<bool>, 3>();
    var var_3 = vec3<i32>(-24374i, firstLeadingBit(reverseBits(-(arg_0.c.e >> (u_input.b.x % 32u)))), _wgslsmith_sub_i32(var_1.b.a.b.x, -41174i));
    return func_2();
}

fn func_6(arg_0: Struct_4) -> f32 {
    global0 = array<vec3<bool>, 3>();
    let var_0 = arg_0.b;
    global0 = array<vec3<bool>, 3>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b.b.c.x)))), var_0.a.x, var_0.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(arg_0.b, Struct_5(vec4<bool>(arg_0.d.b, arg_0.a.a.d, true, var_0.b.a.a), var_0.b, arg_0.a.a, arg_0.d), arg_0.d.a.b.wzx).b.a.x))));
    var var_2 = Struct_5(vec4<bool>(arg_0.d.a.c, func_4(!(u_input.c >= u_input.b.x), arg_0, select(vec2<bool>(var_0.b.b, false), vec2<bool>(true, true), select(vec2<bool>(arg_0.b.b.b, arg_0.a.a.c), vec2<bool>(var_0.b.a.d, arg_0.b.b.a.c), arg_0.a.a.c))).c.d, arg_0.a.a.c && (var_1.x == var_0.a.x), true), arg_0.d, Struct_1(arg_0.a.a.a, countOneBits(reverseBits(vec4<i32>(var_0.c.e, -1i, 0i, arg_0.c)) << ((vec4<u32>(u_input.b.x, u_input.d, 0u, 4294967295u) | vec4<u32>(19166u, u_input.c, 0u, u_input.a)) % vec4<u32>(32u))), countOneBits(-37787i) > _wgslsmith_mod_i32(var_0.b.a.b.x, u_input.e.x), all(vec3<bool>(u_input.a <= 10869u, var_0.c.c, !var_0.b.b)), firstLeadingBit(max(0i, func_1().c.b.x))), arg_0.b.b);
    return _wgslsmith_div_f32(var_0.b.c.x, -799f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 712f;
    global0 = array<vec3<bool>, 3>();
    let var_1 = Struct_1(-42628i >= u_input.e.x, firstLeadingBit(vec4<i32>(u_input.e.x, 1i, -2147483647i, -1i)), true, (false && (u_input.b.x != u_input.d)) & any(vec4<bool>(-7135i == u_input.e.x, u_input.a < u_input.b.x, var_0 > var_0, all(vec3<bool>(true, false, false)))), u_input.e.x);
    let var_2 = var_1.e;
    let var_3 = false;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(478f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), true)) + _wgslsmith_div_f32(-392f, _wgslsmith_f_op_f32(f32(-1f) * -767f))), _wgslsmith_f_op_f32(min(-997f, _wgslsmith_f_op_f32(func_6(func_5(func_1(), Struct_5(vec4<bool>(true, true, var_1.c, false), Struct_2(Struct_1(var_1.a, var_1.b, var_1.a, var_1.d, -2147483647i), var_1.d, vec3<f32>(var_0, var_0, var_0)), var_1, Struct_2(var_1, var_1.a, vec3<f32>(var_0, 441f, 1412f))), vec3<i32>(13450i, 1i, var_2) << (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u))))))), 269f);
    var var_5 = Struct_5(select(select(select(vec4<bool>(var_1.a, var_3, true, true), vec4<bool>(true, true, true, var_1.c), false | var_1.c), select(select(vec4<bool>(var_3, true, true, true), vec4<bool>(var_3, var_3, false, var_3), false), vec4<bool>(var_1.d, false, true, var_1.d), all(global0[_wgslsmith_index_u32(41465u, 3u)])), vec4<bool>(var_1.d, u_input.e.x > var_2, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, var_1.c, false, var_1.a), !vec4<bool>(true, true, false, var_3), false), var_1.a), select(select(var_0 > 503f, all(vec4<bool>(true, var_3, var_1.c, true)), var_3 || var_1.a), !(false & var_3), any(vec3<bool>(var_3, true, var_3)))), func_2().b.b, var_1, Struct_2(Struct_1(true, func_2().b.c.b, all(vec4<bool>(false, true, true, false)), !all(global0[_wgslsmith_index_u32(u_input.a, 3u)]), _wgslsmith_add_i32(-var_2, max(var_2, u_input.e.x))), firstTrailingBit(func_1().b.a.b.x) <= (var_1.e >> (u_input.b.x % 32u)), vec3<f32>(_wgslsmith_div_f32(func_5(Struct_3(vec3<f32>(var_0, -1284f, var_4.x), Struct_2(Struct_1(var_3, var_1.b, true, var_1.d, 2147483647i), var_3, vec3<f32>(-461f, 1377f, -1523f)), var_1), Struct_5(vec4<bool>(true, true, var_1.d, var_1.d), Struct_2(var_1, var_1.a, vec3<f32>(-774f, var_4.x, 982f)), Struct_1(true, u_input.e, var_1.d, false, -2147483647i), Struct_2(var_1, true, vec3<f32>(var_4.x, var_4.x, 1052f))), var_1.b.zxz).b.a.x, var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - 456f)), _wgslsmith_f_op_f32(func_1().b.c.x * _wgslsmith_f_op_f32(select(-1000f, 595f, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x);
}

