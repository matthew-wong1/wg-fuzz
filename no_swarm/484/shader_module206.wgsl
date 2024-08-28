struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 177f;

var<private> global1: vec3<u32>;

var<private> global2: u32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec3<bool> {
    return select(!(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(false, true, true))), select(vec3<bool>(true, false, (arg_0.x >= arg_0.x) && all(vec3<bool>(true, false, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), arg_0.x < -601f), vec3<bool>(true, all(vec2<bool>(true, true)), true), vec3<bool>(true, true, true)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false))), true);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(~u_input.a, 1u, u_input.a, ~0u), !func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-739f, -771f, 381f, 409f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1466f, -1000f, -927f, 1347f), vec4<f32>(656f, -1368f, 517f, -973f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(712f, -1568f, -920f, -358f) - vec4<f32>(-3441f, 1207f, -121f, -673f)))))), (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) < _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(476f)))) | (func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(548f, -102f, -1198f, 776f), vec4<f32>(714f, 890f, -1000f, 232f), vec4<bool>(true, true, true, true)))).x | !(u_input.a <= 1u)), true);
    let var_1 = Struct_1(vec4<u32>(u_input.a, global1.x, min(38308u, 15591u) & _wgslsmith_sub_u32(4294967295u, u_input.a), 4294967295u) | ~select(~vec4<u32>(var_0.a.x, 11361u, 70912u, u_input.a), vec4<u32>(u_input.a, 2863u, 16275u, 0u), var_0.e), var_0.b, _wgslsmith_f_op_vec4_f32(step(var_0.c, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1640f, var_0.c.x, var_0.c.x, -1386f))))))), var_0.e, !func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, -789f) * var_0.c)).x && var_0.d);
    var var_2 = var_1.c.x;
    let var_3 = vec2<f32>(1000f, 1592f);
    var var_4 = var_1;
    return var_1;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global1 = select(~_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(arg_1.a.x, 1u, 31753u)), ~vec3<u32>(15472u, global1.x, global1.x)), _wgslsmith_sub_vec3_u32(countOneBits(~arg_1.a.wwy), vec3<u32>(firstTrailingBit(58275u), _wgslsmith_add_u32(~arg_1.a.x, global1.x >> (u_input.a % 32u)), u_input.a)), arg_1.e);
    global2 = abs(4294967295u);
    let var_0 = arg_1.c;
    var var_1 = Struct_1(vec4<u32>(u_input.a, ~1u, (33299u | global1.x) ^ firstTrailingBit(_wgslsmith_sub_u32(21832u, arg_1.a.x)), abs(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_1.a.xxw, arg_1.a.xwy), _wgslsmith_clamp_vec3_u32(vec3<u32>(28991u, global1.x, global1.x), vec3<u32>(global1.x, 32909u, 0u), vec3<u32>(0u, u_input.a, 1u))))), arg_1.b, var_0, arg_1.b.x, arg_1.d);
    var var_2 = arg_1;
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_sub_u32(~(~(~global1.x) & func_4(arg_1.x, func_2(), 1i).a.x), arg_0.a.x);
    var var_1 = _wgslsmith_sub_vec2_u32(~select(abs(arg_0.a.xx), ~vec2<u32>(47192u, global1.x), !vec2<bool>(true, arg_0.b.x)), vec2<u32>(select(1u, _wgslsmith_mod_u32(u_input.a, global1.x), arg_0.d), u_input.a)) & _wgslsmith_div_vec2_u32(firstTrailingBit(global1.zy), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.a.zz << (arg_0.a.xw % vec2<u32>(32u)), vec2<u32>(u_input.a, 4294967295u)), ~(arg_0.a.xx | vec2<u32>(u_input.a, arg_0.a.x))));
    var var_2 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0.a, vec4<u32>(~var_1.x, func_2().a.x, countOneBits(var_1.x), 0u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a, 0u) | arg_0.a, _wgslsmith_sub_vec4_u32(vec4<u32>(38081u, 13838u, 0u, arg_0.a.x), arg_0.a))), arg_0.a), !arg_0.b, func_2().c, select(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * 661f)) > _wgslsmith_f_op_f32(sign(func_4(arg_1.x, arg_0, arg_1.x).c.x)), arg_0.c.x >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3 + arg_0.c.x)))), !arg_0.b.x);
    let var_3 = vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x & arg_2.x);
    global2 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(min(global1.x, u_input.a), ~var_2.a.x), ~select(arg_0.a.zw, vec2<u32>(var_2.a.x, arg_0.a.x), arg_0.b.xz)), vec2<u32>(0u, ~arg_0.a.x) ^ global1.zz);
    return global1.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<u32>) -> vec4<u32> {
    global1 = vec3<u32>(abs((_wgslsmith_sub_u32(arg_1.x, 0u) | 50611u) << (~min(u_input.a, arg_0.x) % 32u)), func_5(func_4(u_input.b.x, func_2(), -(~2147483647i)), -vec4<i32>(-2147483647i ^ u_input.b.x, -2147483647i, ~u_input.b.x, abs(-33364i)), _wgslsmith_div_vec3_i32(u_input.b.wzy, _wgslsmith_mod_vec3_i32(vec3<i32>(-83214i, u_input.b.x, 0i), u_input.b.ywx >> (vec3<u32>(37159u, u_input.a, 68796u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1366f + -587f) * 1204f), -2857f))), 87179u);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1788f, 237f)) * -1000f), -425f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f))))), 1637f);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), 1261f));
    let var_1 = select(func_4(-u_input.b.x, func_4(u_input.b.x, func_2(), _wgslsmith_dot_vec2_i32(u_input.b.wy, u_input.b.zz)), _wgslsmith_mod_i32((i32(-1i) * -13455i) << (u_input.a % 32u), _wgslsmith_add_i32(~(-2147483647i), u_input.b.x))).b.yy, !(!(!func_2().b.zy)), vec2<bool>(true, func_3(var_0).x));
    let var_2 = arg_1.x;
    return ~vec4<u32>(30242u, _wgslsmith_div_u32(func_4(1i, Struct_1(arg_1, vec3<bool>(false, var_1.x, var_1.x), var_0, var_1.x, var_1.x), -37141i).a.x, 1u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.x, u_input.a), vec2<u32>(arg_1.x, var_2)), vec2<u32>(u_input.a, arg_0.x)), global1.x) ^ select(func_4(-9027i, func_2(), abs(-15627i)).a, firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(arg_1, arg_1), arg_1)), select(vec4<bool>(false, var_1.x, false, arg_0.x != u_input.a), select(vec4<bool>(true, var_1.x, true, true), select(vec4<bool>(false, false, true, var_1.x), vec4<bool>(var_1.x, true, false, var_1.x), var_1.x), vec4<bool>(var_1.x, true, false, false)), select(!vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(var_1.x, true, false, var_1.x), select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x)))));
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = arg_1.b.xx;
    global2 = ~func_5(arg_1, u_input.b, vec3<i32>(_wgslsmith_div_i32(-u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, u_input.b.x))), -1i, -_wgslsmith_mod_i32(arg_0, -884i)), -1318f);
    let var_1 = Struct_1(_wgslsmith_div_vec4_u32(countOneBits(arg_1.a), arg_1.a), select(vec3<bool>(true, _wgslsmith_f_op_f32(abs(-1737f)) != func_4(0i, Struct_1(vec4<u32>(global1.x, 1659u, global1.x, 11232u), arg_1.b, vec4<f32>(633f, arg_1.c.x, 638f, 109f), false, false), u_input.b.x).c.x, (arg_1.c.x != arg_1.c.x) == all(arg_1.b)), func_4(~_wgslsmith_clamp_i32(arg_0, 2147483647i, 2147483647i), arg_1, -2147483647i).b, arg_1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-176f, arg_1.c.x, 215f, arg_1.c.x))))), select(true, var_0.x, arg_1.b.x), arg_1.b.x);
    let var_2 = var_1.c.xyx;
    var var_3 = Struct_1(~firstTrailingBit(min(arg_1.a & vec4<u32>(var_1.a.x, global1.x, global1.x, 4294967295u), ~var_1.a)), select(var_1.b, vec3<bool>(arg_1.e, any(select(vec4<bool>(var_1.d, true, false, arg_1.d), vec4<bool>(true, arg_1.e, true, true), vec4<bool>(var_1.b.x, arg_1.e, false, var_0.x))), arg_1.b.x), func_2().b.x), _wgslsmith_f_op_vec4_f32(-var_1.c), any(arg_1.b), any(var_1.b.zz));
    return firstTrailingBit(vec4<u32>(firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(~(~arg_1.a), var_3.a), var_3.a.x, global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~min(countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(35u, global1.x, 1u), ~vec3<u32>(u_input.a, 1u, global1.x))), vec3<u32>(~u_input.a, ~u_input.a, ~(u_input.a & global1.x)));
    var var_0 = Struct_1(func_6(firstLeadingBit(u_input.b.x), Struct_1(func_1(vec3<u32>(u_input.a, 1430u, 47867u), vec4<u32>(u_input.a, u_input.a, 112294u, u_input.a)) | ~vec4<u32>(80067u, u_input.a, 78630u, global1.x), func_2().b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1101f, 144f, -2563f, 302f) * vec4<f32>(-1685f, 223f, -435f, 1036f)), _wgslsmith_div_vec4_f32(vec4<f32>(-197f, -192f, 818f, -1520f), vec4<f32>(1294f, -770f, -1252f, -1557f)))), select(func_2().e, any(vec2<bool>(true, false)), true), select(u_input.b.x < 25958i, select(false, false, true), func_2().e))), vec3<bool>(~(~1597u) == firstLeadingBit(u_input.a | 51592u), !(u_input.a > u_input.a), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-237f, 496f, 714f, 1151f))))), _wgslsmith_div_vec4_f32(vec4<f32>(-1221f, 735f, -849f, -261f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-157f, 751f, 351f, 1224f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 895f, -1153f, 1217f) - vec4<f32>(356f, 668f, -1638f, 1815f)))))), any(vec4<bool>(true, true != select(false, false, true), !all(vec2<bool>(false, false)), true)), !(!func_2().b.x));
    var var_1 = 46916u;
    global0 = _wgslsmith_div_f32(1f, var_0.c.x);
    var_1 = ~(~u_input.a);
    global0 = var_0.c.x;
    let var_2 = var_0.e;
    var var_3 = vec2<bool>(var_0.e, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c.x)) - var_0.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), 1000f, _wgslsmith_f_op_f32(max(var_0.c.x, var_0.c.x))))), ~_wgslsmith_add_i32(-37204i, -19493i), 2984f);
}

