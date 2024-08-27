struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(636f, vec4<f32>(-1791f, -1827f, -1803f, 445f), false, vec3<f32>(-117f, 1310f, -244f), 0i);

var<private> global1: Struct_2 = Struct_2(false, Struct_1(-143f, vec4<f32>(221f, 590f, 1000f, -388f), false, vec3<f32>(-2658f, 273f, -589f), -2812i), Struct_1(-1569f, vec4<f32>(-827f, -851f, 287f, 209f), false, vec3<f32>(-902f, 1139f, -1000f), -1i), vec4<u32>(0u, 87014u, 0u, 4294967295u), vec3<u32>(22671u, 58040u, 13404u));

var<private> global2: f32;

var<private> global3: array<bool, 7> = array<bool, 7>(false, false, false, true, false, true, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = 1u;
    let var_1 = Struct_2(true, global1.c, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(189f, 1563f)) * -592f))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.d.x))), 2555f, _wgslsmith_f_op_f32(global1.c.d.x - _wgslsmith_f_op_f32(global0.d.x * -2008f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.c.d.x)), _wgslsmith_f_op_f32(global1.c.b.x + arg_0.c.a))), !global0.c != global3[_wgslsmith_index_u32(min(global1.e.x, 0u), 7u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global0.d))) - _wgslsmith_f_op_vec3_f32(-global1.b.b.zyz)), countOneBits(~_wgslsmith_add_i32(u_input.c.x, global0.e))), _wgslsmith_mult_vec4_u32(arg_0.d, reverseBits(countOneBits(vec4<u32>(arg_0.d.x, 4294967295u, global1.d.x, 4294967295u)))) & ~vec4<u32>(global1.e.x & global1.e.x, var_0, ~4294967295u, 1u), ~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(43998u, var_0, 0u), u_input.b.wxw))));
    let var_2 = select(select(select(!select(vec2<bool>(global1.c.c, global3[_wgslsmith_index_u32(0u, 7u)]), vec2<bool>(global3[_wgslsmith_index_u32(global1.e.x, 7u)], true), false), !select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, var_1.a), vec2<bool>(global0.c, false)), select(!vec2<bool>(false, var_1.c.c), vec2<bool>(true, true), select(vec2<bool>(arg_0.b.c, false), vec2<bool>(false, false), true))), !select(vec2<bool>(arg_0.b.c, true), !vec2<bool>(var_1.c.c, global0.c), all(vec4<bool>(true, true, arg_0.c.c, false))), !(!vec2<bool>(true, var_1.b.c))), !vec2<bool>(select(all(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 7u)], false, global1.c.c, global0.c)), global1.d.x >= var_0, var_1.a), !any(vec3<bool>(true, global3[_wgslsmith_index_u32(arg_0.e.x, 7u)], true))), select(!vec2<bool>(global1.b.c, !arg_0.c.c), select(vec2<bool>(true, global0.c), vec2<bool>(true, any(vec4<bool>(arg_0.c.c, global0.c, false, true))), !(!vec2<bool>(arg_0.c.c, global0.c))), !select(!vec2<bool>(false, global1.a), select(vec2<bool>(false, true), vec2<bool>(true, global0.c), vec2<bool>(global1.c.c, global1.b.c)), true)));
    let var_3 = arg_0;
    var var_4 = global0.b.wy;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, global0.d.x, -1330f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1261f, -1123f, var_1.c.b.x)))));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = -5065i;
    var var_1 = arg_0.d;
    global2 = 1022f;
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1963f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1803f)) - _wgslsmith_f_op_f32(1792f + global1.b.d.x)), _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(-arg_0.c.a)), arg_0.b.d.x))), true, _wgslsmith_f_op_vec3_f32(func_3(Struct_2(all(select(vec2<bool>(arg_0.a, false), vec2<bool>(true, true), global1.a)), Struct_1(_wgslsmith_f_op_f32(round(arg_0.c.a)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(950f, -1000f, arg_0.b.a, global0.a))), true, global1.c.d, abs(29055i)), Struct_1(-2093f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(878f, global0.a, -769f, 1629f)), any(vec3<bool>(false, true, true)), global0.d, 15974i), ~(~global1.d), arg_0.e))), _wgslsmith_mod_i32(-18999i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(36195i, 46248i)), u_input.c.wy)));
    let var_2 = _wgslsmith_div_vec3_u32(abs(vec3<u32>(min(0u, var_1.x), ~var_1.x, 40925u)), vec3<u32>(~global1.e.x, 0u, 1u));
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_1 {
    global3 = array<bool, 7>();
    let var_0 = Struct_1(-655f, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -475f), global1.c.b.x, 318f, func_2(Struct_2(select(global0.c, false, arg_2.b.a), func_2(Struct_2(false, global1.b, arg_2.a, vec4<u32>(0u, 4294967295u, global1.e.x, global1.e.x), u_input.b.zyx)).c, func_2(arg_2.b).c, firstLeadingBit(global1.d), firstLeadingBit(vec3<u32>(37208u, 4294967295u, arg_3.x)))).c.b.x), select(false, arg_1.x, arg_2.a.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b.b.b.yxx)), vec3<f32>(_wgslsmith_f_op_f32(-global1.b.a), global0.b.x, _wgslsmith_f_op_f32(-arg_0.c.d.x))))), _wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, global0.e), 1i));
    let var_1 = arg_2;
    global1 = arg_0;
    global0 = func_2(arg_2.b).b;
    return var_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1.b;
    let var_1 = global0.c != true;
    global0 = func_4(func_2(arg_1), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * -650f)) > _wgslsmith_f_op_f32(floor(arg_1.c.b.x)), !(var_0.c | all(vec4<bool>(global1.a, global3[_wgslsmith_index_u32(25550u, 7u)], false, false))), true, all(select(!vec4<bool>(var_0.c, true, true, true), vec4<bool>(true, true, true, true), !vec4<bool>(true, global1.a, var_1, global3[_wgslsmith_index_u32(u_input.e.x, 7u)])))), Struct_3(var_0, arg_1), vec2<u32>(~arg_1.e.x, ~min(arg_1.d.x, 1u) ^ arg_1.e.x));
    global1 = Struct_2(true, arg_1.c, Struct_1(-1389f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + global1.c.b), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(349f)), _wgslsmith_div_f32(-1172f, 1000f), -2240f)), abs(var_0.e >> (global1.e.x % 32u))), ~(~global1.d), vec3<u32>(1u, ~min(global1.e.x, 52107u) & select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 80034u), vec2<u32>(70469u, 33273u)), abs(arg_1.d.x), arg_1.c.c), reverseBits(~1u)));
    var var_2 = _wgslsmith_mod_u32(~29288u, func_2(Struct_2(global0.c, global1.b, Struct_1(var_0.a, arg_1.c.b, false, var_0.b.zyx, u_input.c.x), ~vec4<u32>(0u, u_input.b.x, global1.e.x, arg_1.e.x), func_2(Struct_2(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], Struct_1(438f, arg_1.c.b, var_0.c, arg_1.c.d, -18947i), Struct_1(748f, vec4<f32>(arg_1.c.a, var_0.b.x, global0.a, global1.c.a), global3[_wgslsmith_index_u32(global1.d.x, 7u)], vec3<f32>(470f, 2851f, 615f), global1.b.e), u_input.b, vec3<u32>(global1.e.x, u_input.b.x, arg_1.e.x))).d.wxy)).e.x << (u_input.e.x % 32u));
    return func_2(func_2(arg_1)).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.c;
    global3 = array<bool, 7>();
    global1 = Struct_2(!global0.c, global1.c, func_1(_wgslsmith_mult_vec3_i32(u_input.c.zzz, min(u_input.c.wyx, u_input.c.ywy)), Struct_2(any(vec2<bool>(true, true)), Struct_1(global1.c.a, vec4<f32>(global0.d.x, 262f, global0.b.x, var_0.b.x), all(vec2<bool>(var_0.c, global3[_wgslsmith_index_u32(u_input.e.x, 7u)])), global0.d, firstTrailingBit(-22434i)), global1.c, _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(10052u, global1.d.x, 1u, 64988u), u_input.b, global1.d), firstLeadingBit(vec4<u32>(global1.e.x, global1.d.x, 46005u, 806u)), global1.d), ~(vec3<u32>(1u, global1.e.x, u_input.e.x) ^ vec3<u32>(global1.e.x, 39129u, 33472u)))), ~reverseBits(vec4<u32>(1u, 17944u, global1.e.x, u_input.e.x) & ~vec4<u32>(0u, 15243u, u_input.b.x, 25505u)), func_2(Struct_2(true, Struct_1(_wgslsmith_f_op_f32(select(-432f, 560f, global3[_wgslsmith_index_u32(28037u, 7u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.d.x, -315f, -1037f, var_0.d.x)), global0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(764f, var_0.a, var_0.a) + var_0.b.yxy), -22418i), Struct_1(global1.c.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.d.x, -193f, 520f, global1.b.d.x)), func_4(Struct_2(false, Struct_1(global0.a, vec4<f32>(-166f, 421f, global0.b.x, 827f), global0.c, global0.b.zyw, 3702i), Struct_1(-865f, vec4<f32>(-286f, var_0.a, global0.a, var_0.b.x), false, global0.b.wxw, var_0.e), vec4<u32>(global1.d.x, 1u, 4294967295u, global1.e.x), u_input.b.xwx), vec4<bool>(global3[_wgslsmith_index_u32(1u, 7u)], true, global1.a, global3[_wgslsmith_index_u32(u_input.e.x, 7u)]), Struct_3(global1.c, Struct_2(global0.c, Struct_1(var_0.b.x, vec4<f32>(-310f, global0.d.x, -160f, global1.b.d.x), false, global1.b.d, 0i), Struct_1(global1.b.a, vec4<f32>(-686f, 1563f, 1310f, -768f), true, vec3<f32>(var_0.b.x, -1000f, 955f), global1.b.e), u_input.b, u_input.b.wzy)), vec2<u32>(0u, u_input.e.x)).c, _wgslsmith_f_op_vec3_f32(-var_0.d), abs(2147483647i)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, global1.e.x, u_input.e.x, u_input.e.x), vec4<u32>(90191u, 4294967295u, global1.d.x, global1.d.x)), select(~vec3<u32>(25031u, global1.e.x, 1u), vec3<u32>(119092u, global1.e.x, u_input.b.x), vec3<bool>(var_0.c, true, false)))).d.xyy);
    let var_1 = _wgslsmith_add_vec4_i32(firstTrailingBit(~(~vec4<i32>(-1i, var_0.e, 8289i, 1i))) & _wgslsmith_mod_vec4_i32(vec4<i32>(global1.c.e, ~global0.e, ~u_input.d, -u_input.a), _wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(-1i, u_input.a, var_0.e, u_input.a)) ^ firstLeadingBit(u_input.c)), -(~u_input.c) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(global1.d), vec4<u32>(4294967295u, 3147u, u_input.e.x, global1.e.x)), u_input.b) % vec4<u32>(32u)));
    var_0 = global1.b;
    global2 = 1363f;
    global0 = func_1(~(~vec3<i32>(_wgslsmith_mult_i32(u_input.c.x, u_input.d), 54243i, ~u_input.d)), func_2(Struct_2(all(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], global1.a)), func_2(func_2(Struct_2(global0.c, global1.b, global1.c, vec4<u32>(global1.d.x, 4294967295u, 1u, global1.d.x), vec3<u32>(u_input.b.x, global1.d.x, 4294967295u)))).c, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -138f), global1.c.b, true, vec3<f32>(-1000f, global0.b.x, -1972f), firstLeadingBit(-30366i)), (vec4<u32>(global1.e.x, u_input.b.x, u_input.e.x, 1u) >> (vec4<u32>(u_input.b.x, 1u, u_input.b.x, 4205u) % vec4<u32>(32u))) & _wgslsmith_sub_vec4_u32(global1.d, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 1u, global1.e.x), ~vec3<u32>(1u, 0u, 0u)))));
    let var_2 = vec4<u32>(~_wgslsmith_add_u32(u_input.e.x, min(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 1u), vec2<u32>(39380u, 1u)))), firstLeadingBit(u_input.e.x), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(59031u, 4294967295u, 8957u, u_input.e.x), global1.d), ~global1.d.x, countOneBits(~0u)), 22136u);
    var_0 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_0.d * _wgslsmith_f_op_vec3_f32(select(global0.b.xxx, vec3<f32>(_wgslsmith_f_op_f32(-global1.b.a), _wgslsmith_f_op_f32(trunc(global1.c.b.x)), _wgslsmith_f_op_f32(-global1.b.a)), !vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 7u)], global1.b.c)))));
}

