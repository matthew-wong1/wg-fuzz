struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(482f, 18261u, vec4<i32>(32206i, -19037i, 2147483647i, 31280i));

var<private> global1: array<vec4<bool>, 9>;

var<private> global2: array<f32, 9>;

var<private> global3: vec2<i32>;

var<private> global4: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(104f, 38026u, vec4<i32>(38273i, -7406i, -22644i, 13619i)), Struct_1(-1000f, 0u, vec4<i32>(1i, -9672i, 1i, -86946i)), Struct_1(-1320f, 54184u, vec4<i32>(0i, 45942i, i32(-2147483648), 0i)), Struct_1(342f, 60278u, vec4<i32>(-1i, 0i, -51548i, 30368i)), Struct_1(678f, 51115u, vec4<i32>(i32(-2147483648), -44205i, 2147483647i, 39777i)), Struct_1(-557f, 36158u, vec4<i32>(0i, 1i, -1592i, -30469i)), Struct_1(355f, 34750u, vec4<i32>(1i, -27870i, 1i, 7301i)), Struct_1(-709f, 7149u, vec4<i32>(-9556i, 0i, -9452i, -40921i)), Struct_1(2019f, 50052u, vec4<i32>(-6363i, 0i, 16301i, -1i)), Struct_1(-1000f, 22376u, vec4<i32>(-1i, i32(-2147483648), 44777i, 3099i)), Struct_1(972f, 1u, vec4<i32>(1460i, 2147483647i, i32(-2147483648), 0i)), Struct_1(-620f, 84737u, vec4<i32>(2147483647i, 1i, i32(-2147483648), -20219i)), Struct_1(-1210f, 11486u, vec4<i32>(i32(-2147483648), 1i, 0i, -19973i)), Struct_1(823f, 4294967295u, vec4<i32>(-40317i, 0i, -4606i, -3921i)), Struct_1(1081f, 129745u, vec4<i32>(0i, -12762i, 2301i, -13478i)), Struct_1(1021f, 4294967295u, vec4<i32>(33034i, 16159i, -23670i, 2147483647i)), Struct_1(-737f, 67673u, vec4<i32>(3108i, 18066i, i32(-2147483648), -24879i)), Struct_1(666f, 52946u, vec4<i32>(1i, 17995i, -23552i, 20451i)), Struct_1(-160f, 4294967295u, vec4<i32>(-1i, -71425i, 2147483647i, -1i)), Struct_1(548f, 4294967295u, vec4<i32>(5240i, 2147483647i, -36849i, i32(-2147483648))), Struct_1(552f, 43238u, vec4<i32>(2147483647i, 15501i, 2147483647i, -33410i)), Struct_1(-596f, 72373u, vec4<i32>(2147483647i, -35792i, -29388i, -1175i)), Struct_1(807f, 60594u, vec4<i32>(0i, i32(-2147483648), 8469i, 1i)), Struct_1(-1219f, 4294967295u, vec4<i32>(28662i, 0i, 2147483647i, 1i)), Struct_1(166f, 33544u, vec4<i32>(0i, -33627i, -21236i, -1i)), Struct_1(-1981f, 11186u, vec4<i32>(-33757i, 8092i, 2147483647i, -45885i)), Struct_1(-1855f, 1u, vec4<i32>(30347i, -14792i, 32539i, 2147483647i)), Struct_1(-941f, 1u, vec4<i32>(17796i, i32(-2147483648), i32(-2147483648), -1683i)), Struct_1(547f, 0u, vec4<i32>(-1791i, -22607i, i32(-2147483648), 1i)), Struct_1(892f, 4294967295u, vec4<i32>(1i, i32(-2147483648), 2147483647i, 1i)));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    global4 = array<Struct_1, 30>();
    global1 = array<vec4<bool>, 9>();
    global2 = array<f32, 9>();
    var var_0 = arg_0.a;
    let var_1 = abs(~select(vec2<i32>(abs(24499i), firstTrailingBit(11105i)), ~(-vec2<i32>(u_input.c, global3.x)), !(!var_0.xy)));
    return Struct_2(!select(!vec3<bool>(var_0.x, var_0.x, arg_0.a.x), vec3<bool>(any(vec2<bool>(false, var_0.x)), arg_0.a.x, any(global1[_wgslsmith_index_u32(28261u, 9u)])), vec3<bool>(!arg_0.a.x, false, 35435u <= global0.b)));
}

fn func_1() -> Struct_1 {
    var var_0 = 1i << (~global0.b % 32u);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3027f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 9u)]), _wgslsmith_f_op_f32(ceil(1001f))))) - -2310f)));
    let var_2 = ~(-_wgslsmith_add_i32(~56635i >> (u_input.a.x % 32u), i32(-1i) * -2147483647i));
    let var_3 = func_2(Struct_2(select(vec3<bool>(true, any(global1[_wgslsmith_index_u32(35276u, 9u)]), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var_0 = -2147483647i;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-165f)))), 8412u, _wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.c, _wgslsmith_dot_vec2_i32(global0.c.yy, global0.c.yw), ~var_2) << (countOneBits(~vec4<u32>(global0.b, u_input.a.x, 45240u, 53331u)) % vec4<u32>(32u)), global0.c));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = !((2147483647i & global0.c.x) >= 1i);
    var var_1 = vec2<i32>(_wgslsmith_sub_i32(global0.c.x, arg_1.c.x), ~_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(arg_1.c.x, 1i), _wgslsmith_mult_i32(arg_1.c.x, global3.x)), -(73123i << (arg_0 % 32u))));
    var var_2 = firstLeadingBit(arg_1.c.wz);
    var var_3 = Struct_2(select(select(select(func_2(Struct_2(vec3<bool>(false, false, false))).a, vec3<bool>(true, true, false), vec3<bool>(true, true, true)), func_2(func_2(Struct_2(vec3<bool>(false, false, false)))).a, !func_2(Struct_2(vec3<bool>(false, false, true))).a), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(true, true)), true), all(global1[_wgslsmith_index_u32(4294967295u, 9u)]))));
    let var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-706f, global0.a, 1094f, global2[_wgslsmith_index_u32(arg_0, 9u)]) - vec4<f32>(global0.a, global2[_wgslsmith_index_u32(arg_1.b, 9u)], global2[_wgslsmith_index_u32(global0.b, 9u)], -1000f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2[_wgslsmith_index_u32(arg_0, 9u)], -414f, -331f, -313f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], arg_1.a, global0.a, -2256f))), vec4<bool>(true, var_3.a.x, var_3.a.x, var_3.a.x))))))), ~global0.c.xy, func_2(Struct_2(vec3<bool>(true, true, true))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(43980u, 43446u, global0.b, arg_1.b), vec4<u32>(u_input.a.x, arg_0, 55524u, 14125u)) ^ reverseBits(vec4<u32>(arg_0, 0u, arg_0, arg_0)), min(~vec4<u32>(u_input.a.x, arg_1.b, 43212u, 0u), firstLeadingBit(vec4<u32>(arg_0, global0.b, 0u, 4294967295u))), ~firstLeadingBit(vec4<u32>(arg_1.b, 14705u, 0u, 36843u))), ~vec4<u32>(arg_1.b, ~arg_1.b, func_1().b, global0.b)), arg_1);
    return u_input.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<i32>) -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1262f, global2[_wgslsmith_index_u32(17006u, 9u)], 796f, arg_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -1552f, 253f, 2291f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 9u)], global0.a, -1721f, -953f) + vec4<f32>(global0.a, 816f, 1332f, arg_1.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a, global2[_wgslsmith_index_u32(u_input.a.x, 9u)], 597f, 2387f), vec4<f32>(1000f, 162f, -2257f, arg_0.a))))))), vec4<f32>(arg_1.x, -1000f, 212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a, arg_1.x))))), _wgslsmith_div_vec2_i32(-(arg_0.c.yx << (vec2<u32>(arg_0.b, global0.b) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(-vec2<i32>(global3.x, arg_2.x), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 39379i), arg_2.zy))), func_2(func_2(Struct_2(vec3<bool>(true, true, true)))), ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, global0.b, 4294967295u) | vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 698u), ~vec4<u32>(arg_0.b, u_input.a.x, arg_0.b, 1u)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 18410u, 4294967295u)), vec4<u32>(u_input.a.x, 25331u, global0.b, 4294967295u) << (vec4<u32>(1u, 41244u, 7537u, 33526u) % vec4<u32>(32u)))), arg_0);
    var var_1 = _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(0u, 9u)]));
    let var_2 = vec3<bool>(true, var_0.c.a.x, !(arg_0.c.x > (1i & global0.c.x)));
    var var_3 = true;
    var var_4 = var_0.a;
    return Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(round(234f)), -228f, -1031f)) + _wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(arg_0.b, 9u)], 109f, arg_0.a, 221f), vec4<f32>(307f, 1861f, 1531f, arg_0.a), global1[_wgslsmith_index_u32(0u, 9u)])))))), global0.c.xy, Struct_2(var_2), ~var_0.d, func_1());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(1u, func_1()), 0u), 30u)], _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -936f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-647f, 819f) - vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], global0.a)) + _wgslsmith_div_vec2_f32(vec2<f32>(-455f, 1368f), vec2<f32>(global0.a, -140f))))))), vec3<i32>(-1i) * -countOneBits(vec3<i32>(global0.c.x, global0.c.x, global0.c.x)));
    let var_1 = Struct_2(select(var_0.c.a, func_2(Struct_2(!var_0.c.a)).a, var_0.c.a.x));
    var var_2 = Struct_4(vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(-206f)), 750f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(68245u, 9u)]))))), var_0.b, func_2(var_1), var_0.d, Struct_1(_wgslsmith_f_op_f32(global0.a * global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a.x, 1u), 9u)]), ~u_input.a.x, select(vec4<i32>(global0.c.x, global0.c.x, _wgslsmith_dot_vec2_i32(global0.c.yw, global0.c.wx), reverseBits(var_0.b.x)), ~(~var_0.e.c), !any(var_1.a.zz))));
    var var_3 = vec3<bool>(var_0.c.a.x, false, false);
    var var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1245f, global0.a, var_0.e.a, var_0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-940f, var_0.a.x, var_2.e.a, global2[_wgslsmith_index_u32(global0.b, 9u)])))))));
    let var_5 = !select(var_0.c.a.xz, func_4(var_0.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.yw)), vec3<i32>(~var_0.b.x, var_0.e.c.x, global3.x)).c.a.yy, !(!(!var_0.c.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(countOneBits(~var_0.d.x) | var_0.e.b), 26946u, reverseBits(countOneBits(vec2<u32>(u_input.a.x ^ 54628u, max(var_2.d.x, global0.b)))));
}

