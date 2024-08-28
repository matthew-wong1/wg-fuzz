struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

var<private> global1: array<u32, 30>;

var<private> global2: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(472f, -532f, -1727f, -448f), vec4<f32>(283f, -818f, 1000f, 979f), vec4<f32>(1000f, -1499f, 323f, 1000f), vec4<f32>(-430f, -415f, -799f, -1096f), vec4<f32>(-1249f, -1111f, 158f, 2167f), vec4<f32>(-2594f, 646f, -1154f, -1977f), vec4<f32>(653f, 494f, -991f, 187f), vec4<f32>(-1000f, -511f, 884f, -2082f), vec4<f32>(1818f, -103f, -708f, -903f), vec4<f32>(1000f, 187f, -852f, -1571f), vec4<f32>(551f, 367f, 510f, -371f), vec4<f32>(-1281f, 1000f, -820f, -1611f), vec4<f32>(-1785f, -357f, -1056f, 1062f), vec4<f32>(1543f, 1219f, 878f, -1487f), vec4<f32>(-289f, -215f, -1382f, 394f), vec4<f32>(2595f, 124f, 1000f, -308f), vec4<f32>(-290f, 1000f, 476f, -1726f), vec4<f32>(235f, -1510f, 1000f, -941f), vec4<f32>(1266f, 693f, 1032f, -2059f), vec4<f32>(139f, 1000f, 971f, 139f), vec4<f32>(-780f, 978f, -205f, 690f), vec4<f32>(-1256f, 1000f, 248f, 1417f), vec4<f32>(1612f, 577f, -267f, 1545f), vec4<f32>(196f, 1120f, 1015f, -1362f));

var<private> global3: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(1623i, 2147483647i, 19588i, -38515i), vec4<i32>(0i, 2147483647i, -1i, 15499i), vec4<i32>(2147483647i, 35949i, 0i, -1i), vec4<i32>(-11046i, 8568i, 0i, 2147483647i), vec4<i32>(-1i, -52574i, 24275i, 1i), vec4<i32>(0i, -1i, 2767i, 16808i), vec4<i32>(49618i, 0i, 53692i, -1i), vec4<i32>(29842i, -9850i, 20723i, -1539i), vec4<i32>(0i, -9876i, 0i, 21126i), vec4<i32>(8213i, 2147483647i, i32(-2147483648), -45695i), vec4<i32>(14842i, 1i, 29896i, 15020i), vec4<i32>(i32(-2147483648), 12317i, 0i, -21196i), vec4<i32>(-19064i, 22507i, 1i, 15958i));

var<private> global4: Struct_1 = Struct_1(vec4<f32>(-913f, -446f, -1026f, 229f), vec2<bool>(false, true), false, vec4<u32>(0u, 1u, 1503u, 4294967295u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: vec4<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1145f, _wgslsmith_f_op_f32(196f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a.b.a.x * arg_0.a.c.a.x), arg_1.b.a.x, arg_0.b.x)))), arg_0.a.c.a.wx));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(global4.a.x + 467f), _wgslsmith_f_op_f32(trunc(1000f)), -339f, _wgslsmith_f_op_f32(global4.a.x + 2990f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(333f, 2369f, var_0.x, _wgslsmith_f_op_f32(-418f * arg_3.x)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(38898u, 78009u, arg_0.a.c.d.x, arg_0.a.c.d.x), vec4<u32>(arg_0.a.c.d.x, 4294967295u, arg_1.a.x, 4294967295u)), 1u >> (u_input.b % 32u)), 24u)])), select(vec2<bool>(true, !(arg_2 > -45103i)), !(!vec2<bool>(true, arg_0.a.b.b.x)), global4.b), !(!any(vec3<bool>(true, false, false))) && false, select(max(vec4<u32>(firstTrailingBit(85523u), u_input.b >> (64958u % 32u), arg_0.a.c.d.x, arg_0.a.c.d.x), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.a.yyz, vec3<u32>(global4.d.x, 0u, 4294967295u)), 30112u, 1u << (global1[_wgslsmith_index_u32(47441u, 30u)] % 32u), firstLeadingBit(4294967295u))), vec4<u32>(arg_0.a.b.d.x, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(24473u, u_input.b), 30u)], 30u)], firstTrailingBit(35398u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(arg_0.a.c.d.x, 30u)])), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, arg_0.a.a.x), arg_1.a.zx)), 30u)]), true));
    let var_2 = global4.a.xzx;
    global2 = array<vec4<f32>, 24>();
    global4 = var_1;
    return global4.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    global3 = array<vec4<i32>, 13>();
    global4 = arg_0;
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.x)))));
    global3 = array<vec4<i32>, 13>();
    global3 = array<vec4<i32>, 13>();
    return global4.d.x;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> Struct_4 {
    let var_0 = func_4(Struct_1(vec4<f32>(-1106f, _wgslsmith_f_op_f32(-151f + 1090f), -229f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.a.x, global4.a.x))), vec2<bool>(true, true), global4.c, vec4<u32>(1u, 74173u, 4294967295u >> (~u_input.b % 32u), ~(~15147u))), Struct_2(_wgslsmith_div_vec4_u32(func_3(global0[_wgslsmith_index_u32(global4.d.x, 11u)], Struct_2(vec4<u32>(u_input.b, 0u, 42206u, u_input.b), Struct_1(global2[_wgslsmith_index_u32(0u, 24u)], vec2<bool>(true, false), true, global4.d), Struct_1(global4.a, global4.b, true, global4.d)), _wgslsmith_dot_vec3_i32(arg_1.zyw, arg_1.yxy), vec4<f32>(global4.a.x, -400f, 456f, -236f)), vec4<u32>(14833u, ~23176u, _wgslsmith_dot_vec4_u32(global4.d, vec4<u32>(34233u, 4091u, 105786u, 15954u)), ~46514u)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1300f, 700f, global4.a.x, -726f)), global4.b, true, global4.d), Struct_1(vec4<f32>(global4.a.x, _wgslsmith_f_op_f32(-global4.a.x), -2310f, global4.a.x), !vec2<bool>(global4.c, true), false && !global4.c, _wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global4.d.x, 30u)], 0u, 51842u, 1u), global4.d))));
    global4 = Struct_1(global2[_wgslsmith_index_u32(var_0, 24u)], vec2<bool>(!global4.c, arg_0), !global4.c, vec4<u32>(1375u << ((u_input.b | var_0) % 32u), ~1u, 4294967295u, ~(0u << (1u % 32u)) << ((u_input.b | ~u_input.b) % 32u)));
    let var_1 = Struct_3(Struct_2(_wgslsmith_sub_vec4_u32(~global4.d, ~vec4<u32>(4294967295u, global4.d.x, 82014u, var_0)), Struct_1(global2[_wgslsmith_index_u32(~(~0u), 24u)], vec2<bool>(any(vec4<bool>(arg_0, false, true, true)), true), !all(vec3<bool>(global4.b.x, global4.b.x, global4.b.x)), vec4<u32>(abs(u_input.b), ~var_0, func_4(Struct_1(global2[_wgslsmith_index_u32(1u, 24u)], global4.b, true, global4.d), Struct_2(global4.d, Struct_1(vec4<f32>(-424f, global4.a.x, -123f, 720f), vec2<bool>(arg_0, arg_0), global4.b.x, vec4<u32>(4294967295u, 17185u, u_input.b, 51770u)), Struct_1(vec4<f32>(-335f, global4.a.x, 421f, global4.a.x), vec2<bool>(false, global4.c), global4.c, global4.d))), ~4294967295u)), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, global4.a.x, 925f, global4.a.x) - vec4<f32>(global4.a.x, global4.a.x, -1000f, global4.a.x)))), select(global4.b, select(global4.b, global4.b, false), select(global4.b, global4.b, true)), !(global4.c || false), select(vec4<u32>(u_input.b, u_input.b, global4.d.x, 9955u), vec4<u32>(1u, u_input.b, 9420u, global4.d.x), vec4<bool>(arg_0, arg_0, false, true)))), select(vec4<bool>(arg_0, ~27115u >= _wgslsmith_sub_u32(2239u, global1[_wgslsmith_index_u32(8719u, 30u)]), true, arg_0 & !arg_0), select(vec4<bool>(false, true, arg_0 | false, global4.c), vec4<bool>(true, !global4.c, all(vec2<bool>(true, true)), global4.c), arg_0), any(vec3<bool>(!global4.c, global4.a.x == 531f, true))), 13847i);
    let var_2 = Struct_2(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(38028u, 1u, 18338u, 47420u), global4.d, _wgslsmith_mod_vec4_u32(vec4<u32>(79056u, 1u, u_input.b, 0u), global4.d)) >> (vec4<u32>(global4.d.x, func_4(Struct_1(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 30u)], 24u)], vec2<bool>(var_1.a.c.c, arg_0), true, vec4<u32>(global4.d.x, 26788u, var_1.a.b.d.x, 123213u)), Struct_2(var_1.a.b.d, var_1.a.c, var_1.a.c)), 4294967295u, 0u) % vec4<u32>(32u)), var_1.a.b, var_1.a.c);
    global1 = array<u32, 30>();
    return Struct_4(global4.c);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_2 {
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(arg_3.a, _wgslsmith_f_op_vec4_f32(abs(global4.a))))), arg_0.wx, all(arg_0.wy), ~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(1u, u_input.b, 2925u, 11412u), arg_3.d), select(arg_3.d, arg_3.d, arg_0.x), vec4<u32>(4294967295u, 1u, 1u, 89921u)), global4.d));
    global4 = Struct_1(global2[_wgslsmith_index_u32(abs(reverseBits(1u)), 24u)], select(vec2<bool>(global4.c, arg_0.x), arg_0.yy, !vec2<bool>(false, !arg_0.x)), arg_3.b.x, vec4<u32>(~0u, abs(arg_3.d.x), max(~(~arg_2.x), ~30106u), ~40164u));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -332f), _wgslsmith_f_op_f32(343f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -372f) + global4.a.x)))), _wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_f_op_f32(sign(global4.a.x)));
    var var_1 = func_2(all(vec3<bool>(all(select(global4.b, vec2<bool>(false, arg_0.x), arg_3.c)), !(true || arg_3.b.x), _wgslsmith_f_op_f32(global4.a.x - 1422f) >= _wgslsmith_f_op_f32(-444f * var_0.x))), ~reverseBits(vec4<i32>(u_input.a.x, abs(613i), 2147483647i, 497i)));
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 11u)];
    return Struct_2(vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(~arg_1), ~func_3(global0[_wgslsmith_index_u32(4294967295u, 11u)], var_2.a, -2147483647i, global4.a).yw), max(_wgslsmith_mod_u32(select(arg_1.x, 13127u, true), ~global4.d.x), (global1[_wgslsmith_index_u32(arg_1.x, 30u)] ^ global1[_wgslsmith_index_u32(1u, 30u)]) | 4807u), func_4(arg_3, Struct_2(arg_3.d & vec4<u32>(64015u, 1u, 19241u, 36997u), Struct_1(vec4<f32>(global4.a.x, -115f, var_2.a.b.a.x, 1000f), arg_0.zz, true, vec4<u32>(u_input.b, 9285u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], global1[_wgslsmith_index_u32(91392u, 30u)])), Struct_1(vec4<f32>(var_2.a.c.a.x, -2446f, 112f, 1488f), vec2<bool>(var_2.b.x, arg_0.x), false, vec4<u32>(global4.d.x, 51729u, var_2.a.b.d.x, global1[_wgslsmith_index_u32(arg_3.d.x, 30u)])))), global1[_wgslsmith_index_u32(4294967295u, 30u)]), var_2.a.b, Struct_1(var_2.a.c.a, !select(select(var_2.b.zx, vec2<bool>(false, false), false), vec2<bool>(true, global4.c), select(vec2<bool>(global4.b.x, false), arg_0.yy, var_2.a.c.b)), all(!var_2.b.yxy), func_3(Struct_3(Struct_2(vec4<u32>(arg_2.x, 0u, 0u, 1u), Struct_1(vec4<f32>(var_2.a.b.a.x, arg_3.a.x, global4.a.x, -608f), vec2<bool>(true, var_2.a.c.b.x), false, var_2.a.b.d), Struct_1(vec4<f32>(-1000f, var_0.x, -1292f, -1000f), arg_3.b, false, arg_3.d)), vec4<bool>(false, false, arg_3.b.x, false), u_input.a.x ^ u_input.a.x), Struct_2(vec4<u32>(global1[_wgslsmith_index_u32(53961u, 30u)], u_input.b, global1[_wgslsmith_index_u32(arg_2.x, 30u)], arg_2.x), Struct_1(arg_3.a, vec2<bool>(arg_0.x, false), global4.b.x, vec4<u32>(1u, 4294967295u, 56862u, 31349u)), arg_3), _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, var_2.c), _wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(global4.d.x, 13u)])), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(var_2.a.b.a, vec4<f32>(var_2.a.b.a.x, -931f, arg_3.a.x, global4.a.x)))))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: bool, arg_3: bool) -> StorageBuffer {
    global3 = array<vec4<i32>, 13>();
    global1 = array<u32, 30>();
    global3 = array<vec4<i32>, 13>();
    let var_0 = min(u_input.a.x, 2147483647i);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(334f, -374f, -310f, 582f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1202f, arg_0.a.b.a.x, -464f, -1656f)))))), global4.b, 1i >= _wgslsmith_dot_vec4_i32(abs(-global3[_wgslsmith_index_u32(arg_0.a.a.x, 13u)]), vec4<i32>(0i, arg_0.c, var_0, arg_0.c)), vec4<u32>(global4.d.x, abs(countOneBits(~55079u)), min(global4.d.x, 4294967295u), firstTrailingBit(107523u)));
    return StorageBuffer(_wgslsmith_div_i32(reverseBits(-var_0), 2147483647i), _wgslsmith_sub_vec3_u32(abs(max(vec3<u32>(u_input.b, 1u, 1u), vec3<u32>(35106u, global4.d.x, global4.d.x))) | ~func_3(global0[_wgslsmith_index_u32(var_1.d.x, 11u)], arg_0.a, arg_0.c, vec4<f32>(-742f, global4.a.x, global4.a.x, global4.a.x)).yxy, select(vec3<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(15372u, 30u)], arg_0.a.b.d.x), 0u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(1u, 30u)], global4.d.x)), (arg_0.a.a.wxw & arg_0.a.c.d.zyz) & func_1(vec4<bool>(false, arg_2, arg_0.a.c.b.x, arg_3), arg_0.a.b.d.ww, vec3<u32>(arg_1.x, 0u, 35835u), Struct_1(var_1.a, vec2<bool>(true, true), arg_2, global4.d)).b.d.yww, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(37511u, 30u)], 4294967295u) != ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 24>();
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    let x = u_input.a;
    s_output = func_5(Struct_3(func_1(!vec4<bool>(false, global4.c, false, false), global4.d.ww, global4.d.yxy, Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.b), 24u)], !global4.b, global4.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(global4.d.x, global4.d.x, 41022u, 1u), global4.d, global4.d))), select(!select(vec4<bool>(false, true, global4.b.x, false), vec4<bool>(global4.c, true, false, global4.b.x), false), vec4<bool>(true, false, true, global4.b.x), all(global4.b)), 17914i), global4.d.yzw, true, global4.c);
}

