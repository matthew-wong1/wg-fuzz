struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

var<private> global1: f32;

var<private> global2: vec2<u32> = vec2<u32>(1u, 21861u);

var<private> global3: f32 = -648f;

var<private> global4: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(4294967295u, 58256u, 16564u), vec3<u32>(0u, 4294967295u, 77037u), vec3<u32>(350u, 90970u, 1u), vec3<u32>(0u, 1u, 1u), vec3<u32>(9570u, 46054u, 0u), vec3<u32>(30952u, 1u, 0u), vec3<u32>(0u, 0u, 1u), vec3<u32>(1u, 1u, 86681u), vec3<u32>(89117u, 4294967295u, 76469u), vec3<u32>(4294967295u, 37701u, 1u), vec3<u32>(0u, 7927u, 44192u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 246u, 0u), vec3<u32>(31523u, 188u, 4294967295u), vec3<u32>(1u, 0u, 14504u), vec3<u32>(1u, 1u, 13250u), vec3<u32>(55409u, 8962u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 1u, 50829u), vec3<u32>(1u, 51826u, 61836u), vec3<u32>(62704u, 71031u, 4294967295u), vec3<u32>(25010u, 43201u, 78158u), vec3<u32>(4294967295u, 54197u, 4294967295u), vec3<u32>(44009u, 1u, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    let var_0 = Struct_2(~arg_1.e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2143f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(203f))))))));
    global1 = 731f;
    let var_1 = Struct_2(vec3<u32>(27309u, abs(44371u), ~max(1u, ~1u)), var_0.b);
    global2 = ~abs(vec2<u32>(_wgslsmith_mult_u32(u_input.b, ~1u), arg_0.a.x));
    global0 = array<vec2<u32>, 21>();
    return var_1.a.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = 1i >> (~(~func_3(Struct_2(arg_1.a, arg_1.b), Struct_1(vec4<bool>(true, true, true, false), u_input.c, arg_1.a.x, u_input.d, vec3<u32>(u_input.b, 1u, global2.x)), Struct_1(vec4<bool>(true, false, true, true), u_input.d, u_input.e, 1i, vec3<u32>(global2.x, u_input.b, 71578u)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false))) % 32u);
    let var_1 = Struct_2(~(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 34960u), vec3<u32>(arg_1.a.x, 69535u, arg_1.a.x))) >> (select(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(arg_1.a, vec3<u32>(1u, 35055u, u_input.e)), ~vec3<u32>(4294967295u, 42813u, 0u)), abs(arg_1.a) & global4[_wgslsmith_index_u32(0u, 25u)], false) % vec3<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-653f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-arg_1.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) + _wgslsmith_f_op_f32(min(1070f, arg_1.b))))), (var_0 >= firstTrailingBit(31281i)) && true)));
    let var_2 = vec3<u32>(4294967295u & arg_1.a.x, min(~0u, ~_wgslsmith_add_u32(1u | global2.x, _wgslsmith_clamp_u32(arg_2.a.x, 4294967295u, 4294967295u))), 106801u);
    var var_3 = u_input.a.wy;
    global0 = array<vec2<u32>, 21>();
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = select(vec2<bool>(arg_2.a.x, true), select(!(!arg_3.a.yy), !(!vec2<bool>(arg_2.a.x, false)), arg_3.a.xz), arg_1.xx);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-477f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-842f))), _wgslsmith_div_f32(-424f, 154f))));
    let var_2 = -u_input.a.xw;
    let var_3 = any(vec4<bool>(!(!var_0.x), u_input.d > (66128i | (72478i << (global2.x % 32u))), !func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, 273f, var_1.x, 566f))), Struct_2(vec3<u32>(u_input.b, 9535u, 60739u), -1000f), Struct_2(vec3<u32>(u_input.b, arg_3.e.x, 95993u), var_1.x)), all(arg_1.yz)));
    var var_4 = Struct_2(select(~arg_2.e, abs(~(vec3<u32>(1u, arg_0.e.x, 29643u) | arg_3.e)), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1419f, var_1.x, false)))));
    return !select(vec3<bool>(any(vec4<bool>(false, arg_2.a.x, true, false)), true, true), vec3<bool>(all(select(arg_1, arg_3.a.yyx, vec3<bool>(var_0.x, arg_2.a.x, arg_2.a.x))), any(vec4<bool>(var_0.x, true, false, true)), false), -18190i != arg_0.d);
}

fn func_1() -> bool {
    var var_0 = !func_4(Struct_1(vec4<bool>(func_2(vec4<f32>(428f, -163f, -305f, -914f), Struct_2(global4[_wgslsmith_index_u32(u_input.b, 25u)], -1269f), Struct_2(global4[_wgslsmith_index_u32(4294967295u, 25u)], -332f)), any(vec3<bool>(true, false, true)), true, true), -(~u_input.d), u_input.b, _wgslsmith_add_i32(_wgslsmith_div_i32(20321i, -1i), select(7447i, 1i, true)), max(vec3<u32>(u_input.e, u_input.e, 1u) & global4[_wgslsmith_index_u32(global2.x, 25u)], abs(global4[_wgslsmith_index_u32(4294967295u, 25u)]))), vec3<bool>(true, true, u_input.d != (1i & u_input.d)), Struct_1(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), u_input.a.x, _wgslsmith_dot_vec4_u32(max(vec4<u32>(global2.x, global2.x, 0u, global2.x), vec4<u32>(16574u, 1u, 0u, global2.x)), firstTrailingBit(vec4<u32>(29337u, global2.x, 4294967295u, u_input.e))), ~(~u_input.a.x), countOneBits(global4[_wgslsmith_index_u32(countOneBits(u_input.e), 25u)])), Struct_1(vec4<bool>(true, true, true, any(vec2<bool>(false, false))), ~2998i << (u_input.e % 32u), 0u, -firstTrailingBit(u_input.d), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 38004u, 18040u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), global4[_wgslsmith_index_u32(global2.x, 25u)], vec3<u32>(0u, 33037u, 1u)))));
    var var_1 = global2.x ^ 113435u;
    var var_2 = Struct_2(vec3<u32>(0u, u_input.e, abs(1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1324f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(794f, -180f)))))) * 698f));
    let var_3 = func_4(Struct_1(select(vec4<bool>(var_0.x, var_0.x, var_0.x, all(var_0.zz)), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, false), false), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), select(!vec4<bool>(true, var_0.x, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, var_0.x, var_0.x))), ~1i, global2.x, -u_input.a.x, abs(var_2.a)), vec3<bool>(false, true, var_0.x), Struct_1(select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, true, var_0.x, var_0.x), false), select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, true, true), all(vec2<bool>(false, true))), true), firstLeadingBit(u_input.d), global2.x << (_wgslsmith_sub_u32(28551u, 24416u << (u_input.b % 32u)) % 32u), _wgslsmith_clamp_i32(u_input.c, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -1i, u_input.a.x), u_input.a.xyy, u_input.a.wzz), ~vec3<i32>(u_input.d, 5855i, 42535i)), _wgslsmith_sub_i32(u_input.a.x, 1i)), var_2.a), Struct_1(select(vec4<bool>(true, var_0.x && true, func_4(Struct_1(vec4<bool>(true, true, true, false), -10619i, global2.x, u_input.a.x, vec3<u32>(34636u, global2.x, global2.x)), vec3<bool>(var_0.x, var_0.x, var_0.x), Struct_1(vec4<bool>(var_0.x, false, var_0.x, false), u_input.c, var_2.a.x, -2147483647i, var_2.a), Struct_1(vec4<bool>(var_0.x, false, var_0.x, false), u_input.d, 0u, -2147483647i, vec3<u32>(981u, global2.x, u_input.e))).x, u_input.a.x <= 1i), select(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), select(true, var_0.x, var_0.x)), select(!vec4<bool>(var_0.x, false, true, var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, true), vec4<bool>(var_0.x, false, false, var_0.x)), !var_0.x)), -u_input.c, ~u_input.b, u_input.a.x, global4[_wgslsmith_index_u32(global2.x, 25u)]));
    global0 = array<vec2<u32>, 21>();
    return !(!(false & all(select(vec4<bool>(false, var_3.x, false, false), vec4<bool>(var_0.x, var_3.x, var_3.x, var_3.x), vec4<bool>(var_0.x, var_3.x, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_0 = global0[_wgslsmith_index_u32(u_input.e, 21u)];
    var var_1 = global0[_wgslsmith_index_u32(select(23618u, u_input.e, true), 21u)];
    global2 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(select(global0[_wgslsmith_index_u32(var_0.x >> (_wgslsmith_mult_u32(60300u, 0u) % 32u), 21u)], ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, global2.x), 21u)], vec2<bool>(true, true)), vec2<u32>(_wgslsmith_mult_u32(var_0.x, global2.x), (global2.x << (1u % 32u)) << (1u % 32u))), ~_wgslsmith_sub_vec2_u32(abs(global0[_wgslsmith_index_u32(~var_0.x, 21u)]), vec2<u32>(47613u, 29277u)));
    global4 = array<vec3<u32>, 25>();
    var var_2 = Struct_1(!vec4<bool>(true, func_1(), !func_4(Struct_1(vec4<bool>(false, false, true, false), u_input.d, var_1.x, 22572i, vec3<u32>(var_1.x, 64169u, 0u)), vec3<bool>(true, true, true), Struct_1(vec4<bool>(false, true, false, true), -13171i, global2.x, 2259i, vec3<u32>(global2.x, global2.x, var_0.x)), Struct_1(vec4<bool>(true, false, true, false), 0i, u_input.b, u_input.a.x, global4[_wgslsmith_index_u32(51090u, 25u)])).x, true), u_input.a.x, min(countOneBits(~u_input.b), countOneBits(46935u)), ~(-1i), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, var_1.x) << (var_0.x % 32u), 25u)]);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1381f) * 669f);
    let var_4 = Struct_1(!select(select(!var_2.a, select(vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x), var_2.a, var_2.a.x), true), !var_2.a, vec4<bool>(false, false && var_2.a.x, any(vec3<bool>(false, true, true)), !var_2.a.x)), min(countOneBits(_wgslsmith_div_i32(~u_input.a.x, countOneBits(var_2.d))), ~abs(abs(var_2.d))), var_0.x, ~(~(~u_input.c)), vec3<u32>(global2.x, ~(~var_0.x), func_3(Struct_2(~vec3<u32>(33793u, 103953u, 20861u), var_3), Struct_1(select(var_2.a, var_2.a, true), select(u_input.c, 1i, true), 1u ^ var_2.e.x, max(22421i, var_2.b), var_2.e), Struct_1(select(var_2.a, var_2.a, var_2.a.x), var_2.d, _wgslsmith_mult_u32(1u, var_0.x), abs(var_2.d), var_2.e), var_2.a.wzx)));
    let x = u_input.a;
    s_output = StorageBuffer((~(vec4<u32>(global2.x, var_0.x, 37205u, 36946u) ^ vec4<u32>(0u, var_0.x, 64165u, 11727u)) & (firstTrailingBit(vec4<u32>(4294967295u, var_4.c, var_0.x, global2.x)) >> ((vec4<u32>(0u, var_1.x, var_2.c, 42214u) ^ vec4<u32>(u_input.e, 4294967295u, var_1.x, 61001u)) % vec4<u32>(32u)))) & firstLeadingBit(vec4<u32>(firstTrailingBit(var_0.x), var_1.x, ~global2.x, abs(var_1.x))));
}

