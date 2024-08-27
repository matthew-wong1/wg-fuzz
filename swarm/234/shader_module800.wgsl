struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(2147483647i, 2009f, true), Struct_1(-22720i, 1621f, true), Struct_1(i32(-2147483648), -1036f, true), Struct_1(-1i, 1230f, false), Struct_1(-1i, 1809f, false), Struct_1(55836i, -1000f, true), Struct_1(-1i, -1113f, false), Struct_1(1i, 766f, true), Struct_1(-14425i, -1727f, true), Struct_1(-33868i, -1242f, true), Struct_1(-49682i, 1014f, false), Struct_1(-25381i, -140f, true), Struct_1(i32(-2147483648), 841f, true), Struct_1(0i, -344f, false), Struct_1(1i, -350f, true), Struct_1(-23188i, 1269f, false), Struct_1(1i, -1755f, true), Struct_1(19261i, 329f, true), Struct_1(14781i, -1385f, true), Struct_1(0i, -397f, true), Struct_1(24010i, 829f, false), Struct_1(-6951i, 1306f, true), Struct_1(2147483647i, 2020f, false), Struct_1(2147483647i, -1000f, false), Struct_1(0i, 154f, false), Struct_1(-28874i, -1446f, false), Struct_1(1i, 259f, true), Struct_1(i32(-2147483648), 260f, true), Struct_1(5791i, -1956f, false), Struct_1(-12107i, -1942f, true), Struct_1(i32(-2147483648), 449f, true));

var<private> global1: array<vec2<f32>, 5>;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<f32, 20> = array<f32, 20>(-1998f, 683f, 403f, 154f, 1135f, 1142f, 1054f, 1247f, -2177f, -1000f, 778f, 600f, 692f, 983f, -867f, 1237f, 1887f, -2497f, -1697f, -677f);

var<private> global4: f32 = 645f;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_2) -> bool {
    let var_0 = select(vec3<u32>(~(~_wgslsmith_clamp_u32(arg_3.b.x, 4294967295u, arg_3.b.x)), _wgslsmith_dot_vec2_u32(min(reverseBits(vec2<u32>(arg_3.b.x, 1u)), vec2<u32>(1816u, 4294967295u)), vec2<u32>(1u, arg_3.b.x ^ 1u)), ~(~68229u)), _wgslsmith_sub_vec3_u32(arg_3.b.wyz, _wgslsmith_sub_vec3_u32(abs(vec3<u32>(1u, 4294967295u, arg_3.b.x)), reverseBits(arg_3.b.wzy))), false);
    let var_1 = arg_3.d.b;
    let var_2 = arg_3.d.a;
    var var_3 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(select(var_0.x, var_0.x, true) >> (countOneBits(var_0.x) % 32u), var_0.x, _wgslsmith_mod_u32(~4294967295u, 36247u), var_0.x), arg_3.b);
    let var_4 = arg_3;
    return any(arg_3.c.yy);
}

fn func_2(arg_0: i32, arg_1: u32) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(10045i, global3[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(arg_1, arg_1)), 20u)], false && !func_3(vec2<bool>(global2.x, global2.x), -2147483647i, vec2<f32>(1000f, global3[_wgslsmith_index_u32(0u, 20u)]), Struct_2(Struct_1(arg_0, -947f, false), vec4<u32>(4294967295u, arg_1, 4294967295u, arg_1), vec3<bool>(true, global2.x, global2.x), Struct_1(-6550i, global3[_wgslsmith_index_u32(17521u, 20u)], true)))), reverseBits(vec4<u32>(abs(~39299u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(42044u, 16991u, arg_1), 1u), arg_1, _wgslsmith_mod_u32(30683u, max(arg_1, arg_1)))), select(select(select(select(vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, global2.x, global2.x), global2.x), select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(true, false, false), vec3<bool>(global2.x, global2.x, global2.x)), true), !vec3<bool>(global2.x, false, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, global2.x, global2.x), false)), vec3<bool>(true, false, global2.x), !select(vec3<bool>(true, false, global2.x), select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, global2.x, false), global2.x), global2.x)), Struct_1(i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(6640u, 20u)])), global2.x));
    let var_1 = Struct_2(Struct_1(i32(-1i) * -9999i, _wgslsmith_f_op_f32(-1f), global2.x), firstLeadingBit(~vec4<u32>(var_0.b.x, var_0.b.x, arg_1, 43230u)) | var_0.b, vec3<bool>(true, global2.x, all(select(select(vec4<bool>(var_0.d.c, false, false, true), vec4<bool>(var_0.d.c, true, false, true), true), vec4<bool>(true, global2.x, true, true), true))), Struct_1(select(reverseBits(u_input.a.x), u_input.a.x, true) ^ _wgslsmith_div_i32(countOneBits(2147483647i), 8980i), _wgslsmith_f_op_f32(f32(-1f) * -460f), !(global2.x || false)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1015f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(790f * 638f), _wgslsmith_f_op_f32(sign(-1000f))))), 1841f, _wgslsmith_f_op_f32(trunc(-217f))));
    global0 = array<Struct_1, 31>();
    var var_3 = firstLeadingBit(vec4<i32>(-1i) * -(vec4<i32>(-1i) * -vec4<i32>(12711i, -41638i, var_1.a.a, var_0.d.a)));
    return !vec3<bool>(false, var_1.d.c, true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(arg_1.b.zxz, countOneBits(firstTrailingBit(arg_1.b.zwy))), 31u)], arg_1.b, select(arg_1.c, !select(!arg_1.c, select(arg_1.c, arg_1.c, true), false), select(vec3<bool>(true, all(vec3<bool>(true, arg_1.d.c, true)), true), !vec3<bool>(global2.x, false, true), arg_1.c)), Struct_1(~arg_1.d.a, 584f, ~firstTrailingBit(arg_0.a) != ~firstTrailingBit(38222i)));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_0.b)), -1871f)))), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(4294967295u, 20u)], -365f)), 335f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1260f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(145f, _wgslsmith_f_op_f32(sign(-799f)), var_0.a.a >= -56413i)))), _wgslsmith_f_op_f32(-arg_1.a.b)));
    global2 = arg_1.c.yz;
    return Struct_2(arg_0, var_0.b, select(vec3<bool>(global2.x, any(arg_1.c) & arg_1.c.x, true), !var_0.c, !vec3<bool>(func_2(-2147483647i, 26500u).x, func_3(arg_1.c.zz, var_0.a.a, global1[_wgslsmith_index_u32(arg_1.b.x, 5u)], arg_1), !arg_1.d.c)), arg_0);
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<f32>, 5>();
    global3 = array<f32, 20>();
    var var_0 = func_4(global0[_wgslsmith_index_u32(13396u, 31u)], Struct_2(Struct_1(~1i, _wgslsmith_f_op_f32(f32(-1f) * -624f), global2.x), vec4<u32>(abs(7296u), _wgslsmith_div_u32(1u, 24712u), min(1u, ~4294967295u), select(_wgslsmith_sub_u32(116201u, 18246u), 1u, all(vec4<bool>(global2.x, true, true, false)))), !func_2(_wgslsmith_dot_vec3_i32(u_input.a.wwy, vec3<i32>(u_input.a.x, -11233i, u_input.a.x)), 29216u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(~1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(18375u, 1u, 20978u), vec3<u32>(101357u, 4294967295u, 31109u))), 31u)]));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_sub_i32(1i, min(-2147483647i, u_input.a.x)), _wgslsmith_add_i32(1i, var_0.a.a), -2147483647i, ~var_0.a.a)), 1320f, -45175i < u_input.a.x);
    var var_2 = _wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, 11250u), var_0.b.xyx) | 47447u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 19359u, 0u, 0u), vec4<u32>(var_0.b.x, 6993u, 1u, var_0.b.x))), ~(~(~var_0.b.x)), 1u | ~var_0.b.x, var_0.b.x));
    return func_4(func_4(global0[_wgslsmith_index_u32(956u, 31u)], Struct_2(func_4(Struct_1(-21098i, -828f, true), func_4(global0[_wgslsmith_index_u32(6510u, 31u)], Struct_2(Struct_1(u_input.a.x, -982f, var_0.d.c), vec4<u32>(0u, var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(global2.x, global2.x, var_0.c.x), var_0.a))).d, var_0.b, !var_0.c, func_4(Struct_1(u_input.a.x, -2007f, var_1.c), Struct_2(var_1, var_0.b, vec3<bool>(true, global2.x, var_1.c), Struct_1(var_0.d.a, var_0.a.b, false))).d)).a, func_4(func_4(Struct_1(_wgslsmith_dot_vec3_i32(u_input.a.yzy, u_input.a.yzz), _wgslsmith_f_op_f32(-var_1.b), false & var_1.c), Struct_2(Struct_1(-1i, var_1.b, true), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, var_0.b.x, 9345u), var_0.b, var_0.b), func_4(var_1, Struct_2(global0[_wgslsmith_index_u32(0u, 31u)], var_0.b, var_0.c, Struct_1(var_1.a, var_1.b, true))).c, func_4(var_1, Struct_2(Struct_1(2147483647i, var_1.b, true), vec4<u32>(var_0.b.x, var_0.b.x, 24433u, var_0.b.x), var_0.c, Struct_1(-15915i, 2060f, global2.x))).a)).a, func_4(var_0.a, Struct_2(var_0.d, select(var_0.b, var_0.b, vec4<bool>(global2.x, var_1.c, true, true)), var_0.c, Struct_1(-46201i, -354f, false))))).d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(func_1(), arg_1.b, func_2((~arg_1.a.a & -27151i) & firstTrailingBit(32989i), ~_wgslsmith_dot_vec2_u32(~arg_1.b.xx, arg_1.b.yz)), Struct_1(~select(u_input.a.x, arg_0.a, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-2240f)))) - 407f), true));
    let var_1 = arg_1.c.xy;
    global0 = array<Struct_1, 31>();
    var var_2 = ~(var_0.b.x & countOneBits(~11336u));
    var var_3 = Struct_1(~arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.a.b, _wgslsmith_f_op_f32(-1775f - 148f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(864f, 211f)))), true);
    return Struct_1(arg_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.d.b * arg_0.b), arg_0.b, func_1().c)), !var_1.x == true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(max(56183i, 1i), u_input.a.x, ~u_input.a.x), -(~vec3<i32>(u_input.a.x, 31618i, 1i))), -441f, true), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(64771u, 25568u, 1u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(78240u, 0u, 24834u, 58307u), vec4<u32>(34670u, 4294967295u, 34922u, 19254u))), 1u), 42060u, 9199u, ~(~1u)), !select(!(!vec3<bool>(global2.x, global2.x, global2.x)), vec3<bool>(true, global2.x, true), !vec3<bool>(false, global2.x, global2.x)), func_5(global0[_wgslsmith_index_u32(max(0u, min(102979u, ~16183u)), 31u)], Struct_2(func_1(), ~vec4<u32>(4294967295u, 14392u, 20581u, 64698u), vec3<bool>(true, global2.x, global2.x), func_1())));
    var var_1 = ~_wgslsmith_div_vec2_u32(var_0.b.xy, max(var_0.b.wx, abs(var_0.b.yy) & countOneBits(vec2<u32>(var_0.b.x, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1013f, -213f, var_0.d.b)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(var_1.x, 5u)])) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1110f, -1270f))) - global1[_wgslsmith_index_u32(4294967295u, 5u)])) * global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(min(0u, var_1.x), var_1.x ^ 0u), func_4(global0[_wgslsmith_index_u32(~var_0.b.x, 31u)], func_4(Struct_1(u_input.a.x, -1858f, global2.x), Struct_2(Struct_1(1i, var_0.d.b, true), vec4<u32>(var_0.b.x, 31142u, var_1.x, var_1.x), vec3<bool>(false, global2.x, false), Struct_1(-19239i, -1235f, false)))).b.xz), 5u)]), _wgslsmith_dot_vec4_u32(max(vec4<u32>(68091u, 0u, 4294967295u, var_1.x) >> (var_0.b % vec4<u32>(32u)), vec4<u32>(var_0.b.x, 0u, ~0u, reverseBits(1u))), ~var_0.b));
}

