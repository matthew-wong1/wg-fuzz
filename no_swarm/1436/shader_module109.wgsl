struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(992f, -470f, -1641f, 136f);

var<private> global1: array<vec3<bool>, 17>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> u32 {
    let var_0 = global0.yx;
    var var_1 = select(reverseBits(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(u_input.c, -43874i, 0i)), vec3<i32>(~u_input.c, firstTrailingBit(u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-42310i, u_input.c, 1i))))), vec3<i32>(-(~(i32(-1i) * -1i)), u_input.c, 2147483647i), select(select(select(select(global1[_wgslsmith_index_u32(u_input.b, 17u)], vec3<bool>(true, true, true), false), select(global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], false), true), vec3<bool>(true, any(vec2<bool>(true, true)), select(false, true, true)), (i32(-1i) * -1i) >= firstLeadingBit(u_input.c)), vec3<bool>(true, false, !all(vec4<bool>(false, false, false, true))), true));
    global1 = array<vec3<bool>, 17>();
    let var_2 = Struct_3(!select(!select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 119f, 658f, -540f) * _wgslsmith_div_vec4_f32(vec4<f32>(-776f, global0.x, var_0.x, var_0.x), vec4<f32>(global0.x, -863f, -239f, var_0.x)))), _wgslsmith_dot_vec4_u32(firstTrailingBit(firstTrailingBit(u_input.a)), vec4<u32>(~1u, 1u | u_input.a.x, _wgslsmith_div_u32(4294967295u, u_input.b), _wgslsmith_mult_u32(u_input.a.x, u_input.b))), Struct_1(all(select(global1[_wgslsmith_index_u32(1u, 17u)], vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(0u, 17u)])), true, -14716i, firstTrailingBit(~1i), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(var_1.x, -2147483647i, 1i, u_input.c)), min(vec4<i32>(u_input.c, u_input.c, 64389i, -1i), vec4<i32>(1i, var_1.x, u_input.c, u_input.c))))), select(!vec2<bool>(true, all(vec2<bool>(true, false))), vec2<bool>(all(vec4<bool>(true, false, false, false)), all(vec2<bool>(true, true))), all(vec2<bool>(true, true))), Struct_1((false != all(global1[_wgslsmith_index_u32(u_input.a.x, 17u)])) != false, !(!any(vec3<bool>(false, true, true))), _wgslsmith_div_i32(countOneBits(-1i), ~_wgslsmith_div_i32(u_input.c, 63219i)), ~1i, vec4<i32>(~(~0i), var_1.x, countOneBits(countOneBits(25513i)), -1i)));
    var_1 = abs(vec3<i32>(countOneBits(-15903i), reverseBits(-4080i), -37891i));
    return ~reverseBits(max(abs(1u), ~0u)) | var_2.b.b;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: f32) -> vec3<i32> {
    let var_0 = -arg_0.e;
    var var_1 = true;
    let var_2 = _wgslsmith_add_u32(arg_1, ~func_3());
    var var_3 = var_0.x;
    var var_4 = _wgslsmith_sub_vec2_i32(vec2<i32>(-(~_wgslsmith_div_i32(arg_2.x, arg_0.e.x)), ~var_0.x), max(abs(reverseBits(vec2<i32>(-48282i, -15285i))), vec2<i32>(arg_0.c, _wgslsmith_div_i32(11235i, 2147483647i))) ^ arg_2);
    return -_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-6528i, 0i, arg_0.e.x, -1i), arg_0.e), countOneBits(var_0.x), firstLeadingBit(var_4.x)) | (-vec3<i32>(arg_0.c, 0i, u_input.c) | _wgslsmith_sub_vec3_i32(var_0.ywz, var_0.zxw)), countOneBits(var_0.xzy));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_3(select(select(select(vec2<bool>(arg_2.c.b, false), !vec2<bool>(false, arg_1.a), vec2<bool>(arg_2.c.b, arg_1.b)), vec2<bool>(arg_2.c.b && true, any(vec2<bool>(arg_1.b, true))), !vec2<bool>(arg_1.b, arg_1.a)), !(!vec2<bool>(arg_1.a, arg_2.c.a)), all(!vec3<bool>(arg_1.a, true, arg_2.c.b))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 646f, arg_2.a.x, arg_2.a.x)), _wgslsmith_div_vec4_f32(arg_2.a, arg_2.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2.a, arg_2.a))), 25697u, arg_2.c), select(select(!select(vec2<bool>(false, arg_1.b), vec2<bool>(arg_2.c.a, true), true), vec2<bool>(!arg_1.b, all(vec2<bool>(arg_2.c.b, arg_1.b))), any(select(vec3<bool>(arg_2.c.a, arg_2.c.a, true), global1[_wgslsmith_index_u32(u_input.b, 17u)], false))), vec2<bool>(false, !all(global1[_wgslsmith_index_u32(u_input.b, 17u)])), ~(~arg_2.b) == u_input.b), arg_2.c);
    var var_1 = min(abs(vec4<u32>(~1u, var_0.b.b, func_3(), select(arg_2.b, firstLeadingBit(u_input.b), true))), u_input.a);
    global0 = _wgslsmith_f_op_vec4_f32(abs(var_0.b.a));
    return -select(func_2(arg_2.c, u_input.b, vec2<i32>(u_input.c, ~arg_2.c.d), 959f).x, ~(i32(-1i) * -14607i), all(vec2<bool>(all(vec4<bool>(false, true, arg_2.c.a, true)), 1556f != global0.x)));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: bool) -> Struct_2 {
    var var_0 = _wgslsmith_div_i32(abs(func_4(func_2(Struct_1(false, true, -11267i, 43182i, vec4<i32>(8670i, u_input.c, 1i, u_input.c)), 17518u, vec2<i32>(u_input.c, u_input.c), -166f), Struct_1(arg_1, true, -44006i, -2147483647i, vec4<i32>(-2147483647i, 1i, -2147483647i, u_input.c)), Struct_2(vec4<f32>(223f, 1299f, global0.x, -726f), u_input.b, Struct_1(arg_2, arg_2, 0i, u_input.c, vec4<i32>(2846i, u_input.c, u_input.c, -2147483647i)))) | (abs(1i) << (1u % 32u))), abs(2147483647i));
    var var_1 = Struct_3(vec2<bool>(true, true), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(sign(664f))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f)), 284f), u_input.a.x, Struct_1(arg_2, arg_2, ~(1i & u_input.c), ~u_input.c, ~(vec4<i32>(4379i, u_input.c, u_input.c, u_input.c) >> (u_input.a % vec4<u32>(32u))))), select(!select(!vec2<bool>(arg_1, arg_2), !vec2<bool>(arg_2, true), !vec2<bool>(arg_2, true)), select(select(!vec2<bool>(arg_2, arg_1), !vec2<bool>(arg_2, arg_1), vec2<bool>(arg_1, false)), vec2<bool>(true, true), arg_1), false), Struct_1(any(select(!vec2<bool>(arg_1, true), !vec2<bool>(arg_1, true), true)), !all(!vec4<bool>(arg_2, arg_2, false, true)), 43547i, firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.c, 1i, 14792i), ~(-2812i))), vec4<i32>(-1i) * -(~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))));
    global0 = vec4<f32>(var_1.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -135f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1521f * _wgslsmith_f_op_f32(abs(global0.x)))))), _wgslsmith_div_f32(var_1.b.a.x, var_1.b.a.x), -848f);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_1.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -833f)), 1f));
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(u_input.c, ~var_1.b.c.d, -50694i, i32(-1i) * -14430i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(var_1.b.c.e.yyw, var_1.b.c.e.xwy), -var_1.b.c.e.x, ~22099i, u_input.c), ~(var_1.b.c.e >> (u_input.a % vec4<u32>(32u))), var_1.d.e), abs(min(abs(var_1.b.c.e), ~var_1.b.c.e))), var_1.b.c.e);
    return Struct_2(vec4<f32>(428f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.a.x, -1010f) - -1000f)), var_1.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1271f)), ~(~(~min(var_1.b.b, 36758u))), var_1.d);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: vec2<i32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, global0.x, arg_2, 268f), vec4<f32>(arg_2, arg_2, 1017f, 2208f), vec4<bool>(false, arg_0.c.a, true, false))))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a)))));
    global1 = array<vec3<bool>, 17>();
    let var_0 = ~(~vec3<u32>(~5336u, _wgslsmith_mult_u32(1u, 49163u), u_input.a.x));
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-643f - arg_0.a.x) * arg_0.a.x) * _wgslsmith_f_op_f32(ceil(-689f))) == _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-597f + 1275f), 1855f, any(global1[_wgslsmith_index_u32(u_input.b, 17u)])))), !(arg_0.c.a & false), !all(vec2<bool>(true, !arg_0.c.a)), false);
    let var_2 = any(vec4<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-global0.x))) <= _wgslsmith_f_op_f32(arg_2 * -1044f), arg_0.c.b && false, 6636i <= ~arg_0.c.d, all(select(select(vec4<bool>(false, var_1.x, true, true), vec4<bool>(arg_0.c.a, true, true, arg_0.c.a), vec4<bool>(var_1.x, arg_0.c.a, var_1.x, false)), !vec4<bool>(false, var_1.x, false, false), select(vec4<bool>(var_1.x, false, arg_0.c.b, false), vec4<bool>(true, true, true, true), vec4<bool>(var_1.x, arg_0.c.a, arg_0.c.b, false))))));
    return func_1(~u_input.a.yzw, true, !all(!select(vec3<bool>(true, true, var_2), vec3<bool>(var_2, var_2, arg_0.c.b), global1[_wgslsmith_index_u32(u_input.b, 17u)]))).c;
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = -(~vec4<i32>(-370i, -43351i, -49794i, 2039i)) << (u_input.a % vec4<u32>(32u));
    var var_1 = min(vec4<u32>(~((u_input.b | 26086u) << (~0u % 32u)), u_input.b, u_input.a.x, u_input.a.x), u_input.a);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(791f, global0.x, -586f, global0.x)) * vec4<f32>(global0.x, _wgslsmith_f_op_f32(-1478f - 319f), 905f, func_1(u_input.a.yyw, true, arg_0.a).a.x))), abs(54964u), func_5(func_1(var_1.wyz, arg_1, true), max(0i, arg_0.e.x), -482f, ~_wgslsmith_clamp_vec2_i32(var_0.zz, var_0.xx, select(vec2<i32>(0i, u_input.c), arg_0.e.wz, vec2<bool>(true, arg_0.b)))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-898f, global0.x)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * global0.x)) * global0.x), global0.x));
    global1 = array<vec3<bool>, 17>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_1((u_input.a.yxx | u_input.a.zwy) << (vec3<u32>(4294967295u, 70213u, u_input.a.x) % vec3<u32>(32u)), 0i >= (u_input.c ^ u_input.c), false), 25079i, global0.x, vec2<i32>(u_input.c << (u_input.a.x % 32u), _wgslsmith_div_i32(u_input.c, 22435i) << (~50245u % 32u))), true);
    var var_1 = Struct_4(~func_3(), reverseBits(abs(vec3<i32>(u_input.c, _wgslsmith_div_i32(10029i, 1i), -1i))), ~vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, u_input.c, 14298i), ~vec3<i32>(193i, var_0.c.d, 17168i)), ~var_0.c.c, ~(~(-55046i))), var_0.c.e.zw, any(select(select(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], vec3<bool>(true, var_0.c.a, true), any(vec4<bool>(true, true, true, var_0.c.a))), vec3<bool>(true, u_input.c >= -1i, all(vec3<bool>(var_0.c.a, false, var_0.c.a))), !(var_0.c.a && var_0.c.b))));
    let var_2 = Struct_3(vec2<bool>(!func_5(func_1(vec3<u32>(0u, 0u, var_1.a), true, false), -var_0.c.e.x, _wgslsmith_div_f32(var_0.a.x, 109f), vec2<i32>(var_1.b.x, var_0.c.d) << (u_input.a.yz % vec2<u32>(32u))).a, !var_0.c.a), func_1(~_wgslsmith_sub_vec3_u32(~u_input.a.wyy, firstLeadingBit(u_input.a.yxx)), var_1.e, var_0.c.a && ((u_input.b < u_input.b) | true)), !vec2<bool>(var_0.c.a, any(select(vec4<bool>(false, true, var_1.e, var_1.e), vec4<bool>(var_1.e, var_1.e, true, var_0.c.a), vec4<bool>(var_1.e, var_0.c.a, false, var_0.c.a)))), var_0.c);
    global1 = array<vec3<bool>, 17>();
    var var_3 = !vec3<bool>(all(var_2.c), true, var_1.e);
    let var_4 = select(select(!(!select(vec4<bool>(var_2.d.a, var_3.x, var_0.c.a, false), vec4<bool>(var_2.c.x, true, true, var_3.x), var_1.e)), vec4<bool>(var_1.e, all(!var_3.yx), var_1.e, all(select(vec4<bool>(var_1.e, var_2.a.x, var_3.x, var_2.b.c.a), vec4<bool>(false, true, var_0.c.a, var_3.x), var_2.b.c.b))), !select(select(vec4<bool>(true, var_1.e, false, false), vec4<bool>(var_2.d.b, var_3.x, var_0.c.a, false), var_0.c.a), select(vec4<bool>(var_1.e, true, var_3.x, false), vec4<bool>(var_1.e, var_0.c.a, true, true), false), select(vec4<bool>(var_0.c.b, true, true, true), vec4<bool>(var_1.e, false, var_3.x, true), vec4<bool>(true, var_3.x, false, false)))), vec4<bool>(var_1.e, true, !(!(var_3.x == true)), -517f < func_6(func_5(var_2.b, -4675i, -1966f, var_1.d), all(vec2<bool>(true, true))).a.x), select(vec4<bool>(var_3.x, true, var_3.x, _wgslsmith_mod_i32(var_0.c.c, 24172i) > abs(var_0.c.d)), select(!select(vec4<bool>(var_2.b.c.a, var_3.x, true, var_2.c.x), vec4<bool>(false, true, var_2.d.a, var_2.b.c.a), true), select(select(vec4<bool>(false, var_2.a.x, var_3.x, true), vec4<bool>(true, true, var_3.x, false), vec4<bool>(true, false, true, var_2.b.c.a)), select(vec4<bool>(var_3.x, var_2.d.b, var_3.x, true), vec4<bool>(var_1.e, var_2.c.x, true, true), true), vec4<bool>(var_3.x, false, var_3.x, var_2.c.x)), var_1.e), var_3.x & true));
    let var_5 = 0u;
    var_1 = Struct_4(var_1.a, _wgslsmith_add_vec3_i32(min(var_2.d.e.yzy, _wgslsmith_mod_vec3_i32(-vec3<i32>(18236i, u_input.c, var_2.d.c), var_2.d.e.yyw)), var_2.d.e.zwx), select(vec3<i32>(countOneBits(var_0.c.d), 18901i, _wgslsmith_mod_i32(var_2.d.d, -var_2.d.c)), func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b, var_5, u_input.b), u_input.a.ywy, u_input.a.ywz), true, var_2.d.b).c.e.xzx << (vec3<u32>(var_0.b, var_0.b, firstLeadingBit(var_0.b)) % vec3<u32>(32u)), select(!global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(13097u, 26229u), 17u)], !vec3<bool>(var_4.x, var_3.x, var_2.a.x), !(!vec3<bool>(var_2.d.a, var_1.e, false)))), var_2.d.e.zx, false);
    let var_6 = -752f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, 77412u >> (firstTrailingBit(53163u) % 32u), var_2.d.e.wyx, vec2<u32>(abs(~46914u), var_2.b.b), var_1.b.x);
}

