struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), 2012f)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), -1084f)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), -816f)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), 594f)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), 373f)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), -1000f)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), 1939f)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), -2134f)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), 521f)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), -1247f)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), -1000f)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), 2053f)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), 1000f)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), -284f)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), 1260f)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), 315f)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), -813f)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), -359f)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), 605f)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), -1099f)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), 1038f)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), -1345f)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), -468f)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), 980f)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), -1664f)));

var<private> global1: i32 = 15694i;

var<private> global2: vec2<f32> = vec2<f32>(406f, 311f);

var<private> global3: Struct_1;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>) -> vec2<u32> {
    let var_0 = select(global3.a.zzz, !global3.b.xyz, select(global3.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-931f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)), true));
    let var_1 = abs(~_wgslsmith_sub_vec3_u32(~vec3<u32>(5094u, 39749u, 1763u), ~(~vec3<u32>(u_input.a, u_input.a, 0u))));
    let var_2 = vec3<bool>(_wgslsmith_dot_vec2_i32(u_input.c.xz, vec2<i32>(-1i) * -u_input.c.yy) > _wgslsmith_mod_i32((29067i & u_input.c.x) & ~24148i, -u_input.b), true, any(select(vec3<bool>(global3.b.x, var_0.x, any(vec4<bool>(global3.a.x, var_0.x, global3.b.x, false))), select(select(vec3<bool>(true, false, var_0.x), var_0, global3.b.x), select(var_0, global3.b.ywz, global3.a.x), 2225i > u_input.d), select(global3.a.yzy, select(var_0, vec3<bool>(false, var_0.x, global3.b.x), var_0), vec3<bool>(global3.b.x, global3.a.x, var_0.x)))));
    let var_3 = global0[_wgslsmith_index_u32(1u, 25u)];
    var var_4 = var_3.a;
    return vec2<u32>(u_input.a, min(select(abs(var_1.x) ^ ~74590u, ~abs(0u), all(select(var_0, vec3<bool>(true, global3.b.x, true), true))), ~((var_1.x & u_input.a) << (_wgslsmith_div_u32(u_input.a, var_1.x) % 32u))));
}

fn func_2() -> vec2<u32> {
    global0 = array<Struct_2, 25>();
    let var_0 = func_3(countOneBits(vec2<u32>(7786u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 0u, u_input.a), min(vec4<u32>(u_input.a, 34987u, 104372u, 46498u), vec4<u32>(50404u, u_input.a, 0u, u_input.a))))));
    let var_1 = var_0;
    var var_2 = -(u_input.e ^ u_input.b) & ((_wgslsmith_sub_i32(-7585i, u_input.e) | u_input.e) & _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.d, u_input.c.x), _wgslsmith_add_i32(-1257i, u_input.b)));
    let var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(~_wgslsmith_sub_i32(9446i, -8372i), -1i, 0i), vec3<i32>(-1i) * -select(vec3<i32>(-41105i, u_input.d, u_input.d), abs(u_input.c), global3.a.x));
    return abs(_wgslsmith_div_vec2_u32(~var_0, ~(~vec2<u32>(0u, 41617u)))) << (vec2<u32>(78892u, _wgslsmith_dot_vec3_u32(max(firstTrailingBit(vec3<u32>(var_1.x, 4294967295u, 5565u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 0u, 102957u), vec3<u32>(4294967295u, var_1.x, 72844u))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, 30198u) | vec3<u32>(4294967295u, 0u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(1753u, var_1.x, var_0.x), vec3<u32>(u_input.a, 489u, 4294967295u))))) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<u32>) -> u32 {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(945f, global2.x)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1252f, global3.c) + vec2<f32>(global2.x, global3.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 634f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -872f) + -504f), 233f)));
    var var_0 = vec4<f32>(113f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-328f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(156f, global3.c))))), global3.c, -1000f);
    let var_1 = u_input.c.yx;
    let var_2 = global3.b.xwz;
    global3 = Struct_1(vec4<bool>(var_2.x, all(select(global3.a.yw, vec2<bool>(false, false), true)), global3.b.x, false), !global3.a, _wgslsmith_f_op_f32(f32(-1f) * -1215f));
    return ~(~u_input.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-358f, 250f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.a.c, global3.c), vec2<f32>(arg_0.c, -579f)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c, arg_0.c)))), vec2<f32>(arg_3.a.c, 520f)))));
    global1 = ~select(-37223i, _wgslsmith_sub_i32(abs(-38735i), -2698i), all(!(!vec4<bool>(true, arg_3.a.a.x, true, true))));
    global3 = Struct_1(!(!select(arg_0.a, vec4<bool>(arg_3.a.b.x, true, arg_0.a.x, false), any(arg_0.b))), arg_3.a.a, -670f);
    global1 = u_input.b;
    let var_0 = _wgslsmith_sub_i32(u_input.d << (countOneBits(_wgslsmith_sub_u32(arg_1.x, 0u)) % 32u), -29137i) >> (16637u % 32u);
    return Struct_2(Struct_1(select(vec4<bool>(false, true, true, arg_3.a.b.x), vec4<bool>(arg_3.a.a.x, global3.b.x, false, true), arg_2.x), vec4<bool>(arg_0.a.x && (arg_3.a.a.x | true), true & any(global3.b), arg_3.a.b.x, !(global3.a.x & arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(-global3.c))))));
}

fn func_1() -> Struct_1 {
    let var_0 = min(-max(_wgslsmith_div_vec2_i32(u_input.c.xx, vec2<i32>(u_input.b, -1i)), ~vec2<i32>(-3139i, u_input.c.x)), abs(vec2<i32>(u_input.b, 0i)) | u_input.c.zz) ^ vec2<i32>(12356i, u_input.b);
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a, 0u), firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(8261u, u_input.a, u_input.a))))), 25u)];
    let var_2 = func_5(var_1.a, vec4<u32>(_wgslsmith_mod_u32(~abs(0u), ~(~u_input.a)), 27570u & ~(~u_input.a), func_4(func_2() & (vec2<u32>(20998u, u_input.a) ^ vec2<u32>(u_input.a, 0u))), _wgslsmith_div_u32(firstTrailingBit(~u_input.a), 32764u)), select(select(!global3.b.xy, global3.a.zz, !select(var_1.a.b.x, var_1.a.a.x, var_1.a.a.x)), select(var_1.a.a.ww, vec2<bool>(true, var_1.a.b.x), var_1.a.a.zy), any(select(vec2<bool>(var_1.a.a.x, true), vec2<bool>(false, var_1.a.b.x), !var_1.a.b.wz))), Struct_2(var_1.a));
    let var_3 = global0[_wgslsmith_index_u32(~min(~_wgslsmith_mod_u32(9409u, ~u_input.a), u_input.a), 25u)];
    var_1 = func_5(func_5(Struct_1(select(var_2.a.a, func_5(var_1.a, vec4<u32>(u_input.a, 0u, u_input.a, 58576u), vec2<bool>(var_1.a.b.x, true), Struct_2(Struct_1(var_1.a.b, vec4<bool>(global3.a.x, true, var_2.a.b.x, false), global3.c))).a.b, !vec4<bool>(var_1.a.b.x, var_2.a.a.x, false, true)), !func_5(Struct_1(var_2.a.b, var_2.a.b, 1000f), vec4<u32>(79262u, 0u, 35543u, u_input.a), global3.b.wx, var_2).a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), -1129f)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.a, 0u, u_input.a, 18359u), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), select(vec4<u32>(0u, 4294967295u, u_input.a, 0u), ~vec4<u32>(u_input.a, u_input.a, 1670u, 4294967295u), true)), !global3.a.zx, global0[_wgslsmith_index_u32(u_input.a, 25u)]).a, firstLeadingBit(abs(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(3396u, 26333u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(0u, u_input.a)), u_input.a, 0u))), vec2<bool>(false, func_5(Struct_1(var_2.a.b, !global3.b, var_2.a.c), ~vec4<u32>(0u, 4294967295u, 55508u, u_input.a), func_5(var_2.a, firstTrailingBit(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), !var_3.a.b.wy, global0[_wgslsmith_index_u32(~0u, 25u)]).a.a.xw, var_2).a.a.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(firstLeadingBit(vec4<u32>(16147u, u_input.a, u_input.a, 1u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, 15348u, u_input.a), vec4<u32>(u_input.a, 1469u, u_input.a, 49873u))), firstTrailingBit(select(~vec4<u32>(1u, 39666u, 1u, u_input.a), vec4<u32>(u_input.a, 10362u, 21975u, u_input.a), !var_3.a.b.x))), 25u)]);
    return func_5(func_5(var_2.a, vec4<u32>(_wgslsmith_mod_u32(14877u, 25506u), u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(40960u, 0u), vec2<u32>(13831u, u_input.a)), ~u_input.a) ^ vec4<u32>(1u, 6370u, u_input.a, ~50934u), var_2.a.b.wz, var_2).a, ~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) | vec4<u32>(u_input.a, 3925u, u_input.a, 85166u), vec4<u32>(u_input.a, 35694u, 59602u, u_input.a))), select(var_3.a.a.yy, select(global3.a.xz, var_2.a.a.wx, !vec2<bool>(true, var_3.a.b.x)), !var_2.a.a.yz), var_2).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 25>();
    let var_0 = Struct_2(func_1());
    global2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.c * -365f), _wgslsmith_f_op_f32(-global3.c)), func_5(Struct_1(global3.a, global3.a, global3.c), max(vec4<u32>(10749u, 67289u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), !vec2<bool>(false, global3.b.x), var_0).a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - 307f))));
    let var_1 = 27127u;
    let var_2 = ~(~24322u);
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.c, 194f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-198f, -443f) * vec2<f32>(_wgslsmith_f_op_f32(223f - global2.x), global2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(646f, global2.x), vec2<f32>(global3.c, 1780f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2011f, global3.c)) * vec2<f32>(1464f, var_0.a.c)), !(!vec2<bool>(true, var_0.a.a.x))))));
    global3 = func_1();
    let var_4 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1f, -205f)), -174f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -588f)))));
    var var_5 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.c, -102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x)))), 1325f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-u_input.d, _wgslsmith_mult_i32(u_input.b, ~(-1i))));
}

