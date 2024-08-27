struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1718f) - -1249f);
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(571f, arg_0.d.x, arg_0.d.x, arg_2.a.d.x) - arg_0.d)))) - arg_2.a.d), _wgslsmith_f_op_vec4_f32(arg_2.a.d * arg_2.a.d));
    var var_1 = min(firstTrailingBit(_wgslsmith_mult_i32(41005i, 42221i) ^ -arg_0.a.x) >> (1u % 32u), 76131i);
    let var_2 = Struct_2(arg_1);
    var var_3 = select(select(vec2<bool>(false, !(arg_1.a.x < arg_0.a.x)), vec2<bool>(arg_2.a.d.x != global0.x, true), any(!vec2<bool>(arg_2.a.c, arg_0.c))), vec2<bool>(!(true | any(vec2<bool>(arg_2.a.c, arg_1.c))), !any(vec2<bool>(var_2.a.c, true))), true);
    return ~abs(arg_1.a);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(func_3(Struct_1(~countOneBits(vec2<i32>(arg_0, arg_0)), (vec4<u32>(47974u, arg_1.x, arg_1.x, 18657u) | vec4<u32>(arg_1.x, arg_1.x, u_input.a.x, arg_1.x)) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 12954u, u_input.b.x, u_input.a.x), vec4<u32>(30801u, 56551u, arg_1.x, u_input.a.x)), select(true, true, arg_2.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -989f, 412f, global0.x) - vec4<f32>(global0.x, global0.x, 1035f, -316f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 165f, global0.x, global0.x))))), Struct_1(vec2<i32>(-63209i, 25432i), ~min(vec4<u32>(u_input.b.x, 4294967295u, u_input.a.x, u_input.b.x), vec4<u32>(4294967295u, arg_1.x, 0u, arg_1.x)), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1922f, global0.x, global0.x)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, 1373f, global0.x, -1579f))))), Struct_2(Struct_1(vec2<i32>(arg_0, arg_0), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_1.x, u_input.a.x, 0u), vec4<u32>(u_input.b.x, arg_1.x, 0u, u_input.b.x)), !arg_2.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1505f, -752f, -1593f, global0.x))))), vec4<u32>(arg_1.x, max(~9004u, ~abs(0u)), arg_1.x, ~reverseBits(arg_1.x)), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(641f, global0.x, global0.x, global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) * _wgslsmith_div_vec4_f32(var_0.d, vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -271f, _wgslsmith_f_op_f32(step(var_0.d.x, -2528f)), _wgslsmith_f_op_f32(round(var_0.d.x))))), var_0.d));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) - _wgslsmith_f_op_vec4_f32(min(var_0.d, var_0.d)));
    global0 = _wgslsmith_f_op_vec4_f32(var_0.d - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, -1000f, -660f, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(1135f - _wgslsmith_f_op_f32(select(-317f, var_0.d.x, false))), _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(abs(-828f))), _wgslsmith_f_op_f32(-var_0.d.x), 768f)));
    var var_1 = global0.x;
    return Struct_1(vec2<i32>(var_0.a.x, abs(i32(-1i) * -2147483647i)), var_0.b, any(select(select(!vec3<bool>(arg_2.x, arg_2.x, true), !vec3<bool>(false, false, var_0.c), vec3<bool>(true, var_0.c, false)), !select(vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(arg_2.x, var_0.c, arg_2.x), var_0.c), arg_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, _wgslsmith_f_op_f32(-var_0.d.x), -496f, _wgslsmith_f_op_f32(select(var_0.d.x, -365f, arg_2.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec3<bool>) -> vec3<bool> {
    let var_0 = ~vec3<i32>(41864i, -_wgslsmith_div_i32(_wgslsmith_div_i32(arg_0.a.x, 2147483647i), arg_2.a.a.x), abs(arg_0.a.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1128f * _wgslsmith_div_f32(arg_0.d.x, -1000f)))));
    var_1 = 436f;
    var_1 = _wgslsmith_f_op_f32(min(arg_2.a.d.x, _wgslsmith_f_op_f32(-221f - global0.x)));
    var_1 = arg_0.d.x;
    return !arg_3;
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> Struct_3 {
    return Struct_3(arg_1.a | ((firstLeadingBit(arg_0) ^ u_input.a.x) << (select(39238u, firstTrailingBit(u_input.a.x), any(vec4<bool>(arg_1.c.x, arg_1.c.x, true, arg_1.b.x))) % 32u)), arg_1.c.yy, select(select(!(!vec3<bool>(arg_1.c.x, arg_1.c.x, false)), !select(vec3<bool>(false, arg_1.c.x, arg_1.b.x), arg_1.c, arg_1.b.x), select(arg_1.c, vec3<bool>(false, false, arg_1.c.x), true)), func_4(Struct_1(_wgslsmith_add_vec2_i32(arg_1.d.xy, arg_1.d.zy), firstTrailingBit(vec4<u32>(arg_1.a, 0u, 4294967295u, arg_1.a)), !arg_1.c.x, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(327f, global0.x, -345f, global0.x), vec4<f32>(global0.x, 1372f, -424f, global0.x)))), !(!arg_1.c.x), Struct_2(func_2(47806i, vec2<u32>(35032u, 44219u), vec2<bool>(arg_1.b.x, true))), !arg_1.c), select(!select(vec3<bool>(true, true, arg_1.b.x), vec3<bool>(arg_1.c.x, true, arg_1.b.x), arg_1.b.x), select(vec3<bool>(arg_1.b.x, true, false), select(arg_1.c, vec3<bool>(true, false, true), arg_1.c), true), vec3<bool>(true, arg_1.d.x >= arg_1.d.x, arg_1.b.x | false))), arg_1.d, countOneBits(countOneBits(~(~vec3<i32>(arg_1.d.x, arg_1.e.x, arg_1.d.x)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(1813f + global0.x)), _wgslsmith_f_op_f32(arg_3.d.x * global0.x), _wgslsmith_f_op_f32(-global0.x)), arg_3.d), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(arg_3.d)), _wgslsmith_f_op_vec4_f32(select(arg_3.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.d.x, arg_3.d.x, arg_3.d.x, 562f)) + arg_3.d), select(!vec4<bool>(true, arg_2, true, false), !vec4<bool>(arg_2, true, arg_0.c.x, true), vec4<bool>(arg_2, false, arg_0.b.x, arg_2)))), !vec4<bool>(arg_3.c || arg_3.c, arg_2, !arg_0.c.x, !arg_0.b.x)))));
    let var_0 = Struct_2(func_2(_wgslsmith_mod_i32(-arg_0.e.x, 136i & arg_3.a.x) | arg_3.a.x, vec2<u32>(_wgslsmith_mult_u32(29486u, ~arg_3.b.x), arg_0.a), !(!arg_0.c.zz)));
    var var_1 = arg_0;
    var var_2 = select(vec4<bool>(all(!func_1(arg_0.a, Struct_3(var_1.a, vec2<bool>(arg_0.b.x, arg_2), arg_0.c, arg_0.e, arg_0.d)).c.zy), arg_2, false & (!var_1.c.x || true), var_0.a.c), select(!select(vec4<bool>(false, arg_0.b.x, arg_3.c, var_1.c.x), !vec4<bool>(arg_0.c.x, false, false, false), var_1.c.x), select(vec4<bool>(arg_2, any(vec4<bool>(arg_0.c.x, false, true, true)), arg_0.b.x, true), vec4<bool>(arg_0.c.x, false, true && arg_2, var_0.a.c), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, var_0.a.c, true), false)), vec4<bool>(!(!arg_0.c.x), !(!var_0.a.c), false, false)), !(var_0.a.d.x < _wgslsmith_f_op_f32(max(-2280f, var_0.a.d.x))) && arg_3.c);
    var var_3 = Struct_3(~countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 19421u, 4294967295u), u_input.a)), vec2<bool>(var_0.a.a.x == -select(arg_0.e.x, -1i, arg_2), !func_1(arg_1.x, arg_0).c.x), vec3<bool>(func_2(~arg_3.a.x | var_1.d.x, _wgslsmith_add_vec2_u32(max(arg_3.b.yz, var_0.a.b.yw), ~var_0.a.b.xw), !vec2<bool>(false, arg_2)).c, var_0.a.c, true), vec3<i32>(49739i, ~(i32(-1i) * -16459i), ~(-2147483647i) >> (arg_1.x % 32u)), var_1.e);
    return select(select(vec2<bool>(all(var_2.zxx), any(vec4<bool>(false, var_0.a.c, arg_2, var_3.c.x))), vec2<bool>(false, !func_2(-2147483647i, vec2<u32>(0u, 34504u), vec2<bool>(var_2.x, var_1.c.x)).c), select(!func_4(var_0.a, false, var_0, vec3<bool>(false, true, false)).xx, select(!var_1.c.xz, var_1.c.xy, true), false)), !(!(!vec2<bool>(var_3.b.x, false))), !(!vec2<bool>(true, select(var_0.a.c, false, var_1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, -1234f, any(vec3<bool>(true, true, true))))), 141f, 1535f, -220f);
    var var_0 = Struct_3(u_input.a.x, !(!func_5(func_1(u_input.a.x, Struct_3(1u, vec2<bool>(true, false), vec3<bool>(true, false, true), vec3<i32>(-44962i, -2147483647i, 0i), vec3<i32>(-2147483647i, -33058i, 0i))), max(u_input.a, vec3<u32>(u_input.b.x, 1808u, 24348u)), false, Struct_1(vec2<i32>(0i, -2147483647i), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 10004u), false, vec4<f32>(186f, 1455f, -1417f, global0.x)))), vec3<bool>(true, true, true), ~vec3<i32>(_wgslsmith_mult_i32(countOneBits(72186i), _wgslsmith_div_i32(-2147483647i, 8647i)), firstLeadingBit(~(-2147483647i)), i32(-1i) * -1i), -vec3<i32>(countOneBits(1i), 2147483647i, _wgslsmith_div_i32(func_3(Struct_1(vec2<i32>(-54481i, 52572i), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 88081u), false, vec4<f32>(global0.x, global0.x, global0.x, global0.x)), Struct_1(vec2<i32>(47741i, 13721i), vec4<u32>(u_input.a.x, u_input.b.x, 1u, u_input.b.x), true, vec4<f32>(global0.x, -1035f, global0.x, global0.x)), Struct_2(Struct_1(vec2<i32>(-2147483647i, 50453i), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 1u), true, vec4<f32>(654f, global0.x, global0.x, global0.x)))).x, 34862i)));
    var var_1 = func_2(~_wgslsmith_clamp_i32(0i, _wgslsmith_mult_i32(var_0.e.x, select(50211i, var_0.e.x, false)), _wgslsmith_dot_vec2_i32(vec2<i32>(-27618i, 69700i), abs(vec2<i32>(var_0.e.x, 2147483647i)))), firstLeadingBit(_wgslsmith_div_vec2_u32(u_input.a.xz | u_input.a.zz, vec2<u32>(63842u, u_input.b.x)) & _wgslsmith_mult_vec2_u32(reverseBits(u_input.b), u_input.a.zy)), var_0.b);
    let var_2 = var_1.a.x;
    global0 = _wgslsmith_f_op_vec4_f32(select(var_1.d, vec4<f32>(593f, 1956f, var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(func_2(-9700i, var_1.b.xw, vec2<bool>(false, false)).d.x)))), !all(!(!var_0.c))));
    var var_3 = !(var_0.c.x | false);
    let var_4 = _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(max(vec4<i32>(var_1.a.x, var_1.a.x, 1i, var_0.e.x), ~vec4<i32>(var_1.a.x, 47162i, -29950i, var_1.a.x)), -abs(vec4<i32>(var_0.d.x, -26519i, var_1.a.x, -35610i))), max(vec4<i32>(23631i, 1i, var_1.a.x | -5996i, var_0.e.x << (var_0.a % 32u)), -abs(vec4<i32>(-24543i, 9235i, -2147483647i, var_1.a.x))), -vec4<i32>(~var_0.d.x, -33140i, abs(-26716i), -12910i)) | select(vec4<i32>(-func_3(Struct_1(var_1.a, vec4<u32>(u_input.a.x, var_1.b.x, var_0.a, 29796u), var_0.c.x, vec4<f32>(2157f, -1219f, 145f, 1874f)), Struct_1(var_0.e.yz, var_1.b, var_0.b.x, var_1.d), Struct_2(Struct_1(vec2<i32>(var_1.a.x, var_1.a.x), vec4<u32>(var_0.a, var_1.b.x, var_0.a, 14613u), var_0.b.x, vec4<f32>(var_1.d.x, var_1.d.x, -1014f, var_1.d.x)))).x, min(-1i, _wgslsmith_mod_i32(9187i, var_1.a.x)), _wgslsmith_div_i32(2147483647i >> (0u % 32u), var_1.a.x), firstTrailingBit(~(-31751i))), ~(~(-vec4<i32>(var_1.a.x, var_1.a.x, -26329i, -10784i))), var_1.c && var_0.b.x);
    global0 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, var_0.e.x, func_2(~(~var_0.e.x), vec2<u32>(~var_1.b.x, 1u), select(vec2<bool>(var_4.x < 2147483647i, !var_1.c), !var_0.b, func_1(u_input.b.x, Struct_3(u_input.b.x, var_0.c.xy, var_0.c, var_4.zyw, var_4.yzx)).b.x)).b, var_0.d.x);
}

