struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(2147483647i, 0i, i32(-2147483648), 10897i, 8361i, -17137i, -1i, 24881i, 37177i, -9839i, 24546i, -2306i, -1i, -1i, -1i, 10680i, 3868i, 1179i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    global0 = array<i32, 18>();
    let var_0 = _wgslsmith_clamp_u32(u_input.b & _wgslsmith_sub_u32((u_input.d >> (4294967295u % 32u)) & 53191u, ~(~u_input.b)), reverseBits(~(~(4294967295u & u_input.b))), u_input.b);
    var var_1 = -vec3<i32>(abs(global0[_wgslsmith_index_u32(0u, 18u)] >> (var_0 % 32u)), 0i, -38012i) >> (~reverseBits(~vec3<u32>(1u, 0u, var_0)) % vec3<u32>(32u));
    var var_2 = any(vec2<bool>(!all(vec4<bool>(true, true, false, true)), true));
    let var_3 = -554f;
    return false;
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: bool, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(arg_1.e, 0i), 40454i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_3.d.c, _wgslsmith_clamp_i32(-5541i, arg_1.e, -17781i)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, arg_3.d.c), abs(u_input.a)))) & (i32(-1i) * -56750i);
    global0 = array<i32, 18>();
    let var_1 = arg_3.d;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1169f * -443f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1197f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)))), ~(~max(_wgslsmith_clamp_vec4_u32(arg_1.a.b, vec4<u32>(1u, 22674u, 4294967295u, arg_3.a.x), arg_3.b), vec4<u32>(u_input.b, arg_1.a.b.x, arg_3.a.x, 28140u))), vec4<f32>(arg_1.c, arg_1.c, 1705f, arg_1.c));
    var var_3 = Struct_1(!(!select(!arg_1.a.d.a, select(vec2<bool>(false, true), arg_1.a.d.a, var_1.a.x), arg_2 == false)), arg_3.c, (~2147483647i >> (min(u_input.b, 125532u) % 32u)) << (0u % 32u));
    return !(!(!(!(!vec4<bool>(true, true, arg_2, var_1.a.x)))));
}

fn func_2() -> Struct_1 {
    let var_0 = select(select(func_4(~38319u < (u_input.d << (u_input.b % 32u)), Struct_5(Struct_2(vec3<u32>(u_input.d, u_input.d, 1u), vec4<u32>(u_input.d, u_input.d, u_input.b, 4294967295u), true, Struct_1(vec2<bool>(true, true), false, 2147483647i), u_input.c.wx), select(true, true, false), _wgslsmith_f_op_f32(abs(-931f)), 2147483647i, u_input.a), !func_3(), Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.d), vec3<u32>(u_input.d, 19458u, 49441u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 17840u, u_input.d), vec4<u32>(55922u, 12116u, 25838u, 1u)), func_3(), Struct_1(vec2<bool>(false, false), false, global0[_wgslsmith_index_u32(20110u, 18u)]), u_input.c.wx)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), select(func_4(true, Struct_5(Struct_2(vec3<u32>(0u, u_input.b, 0u), vec4<u32>(u_input.d, u_input.b, 4111u, u_input.d), true, Struct_1(vec2<bool>(false, true), true, u_input.c.x), vec2<i32>(1i, global0[_wgslsmith_index_u32(u_input.d, 18u)])), false, 563f, -9742i, global0[_wgslsmith_index_u32(1u, 18u)]), any(vec2<bool>(true, false)), Struct_2(vec3<u32>(u_input.b, 0u, 0u), vec4<u32>(4294967295u, u_input.d, u_input.d, 0u), true, Struct_1(vec2<bool>(false, true), false, u_input.c.x), u_input.c.yw)), vec4<bool>(true, any(vec2<bool>(true, false)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))), vec4<bool>(func_4(true, Struct_5(Struct_2(vec3<u32>(48252u, u_input.d, 4294967295u), vec4<u32>(u_input.d, u_input.d, 0u, u_input.b), true, Struct_1(vec2<bool>(false, true), true, 15649i), u_input.c.ww), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(387f * 958f), u_input.c.x, countOneBits(0i)), u_input.b <= 1u, Struct_2(countOneBits(vec3<u32>(39750u, u_input.d, u_input.d)), vec4<u32>(u_input.b, u_input.d, u_input.d, u_input.b), true, Struct_1(vec2<bool>(false, true), true, -15890i), u_input.c.zz)).x, true, !any(func_4(true, Struct_5(Struct_2(vec3<u32>(u_input.b, u_input.d, 24066u), vec4<u32>(69218u, 1u, u_input.b, 17097u), true, Struct_1(vec2<bool>(false, true), true, 18858i), u_input.c.yw), false, 3375f, 5210i, -2147483647i), false, Struct_2(vec3<u32>(4294967295u, u_input.d, 4294967295u), vec4<u32>(u_input.b, 11771u, u_input.b, 1u), true, Struct_1(vec2<bool>(false, false), false, u_input.a), u_input.c.yy)).zwy), true), any(vec4<bool>(true, all(func_4(false, Struct_5(Struct_2(vec3<u32>(4294967295u, u_input.b, u_input.d), vec4<u32>(u_input.d, u_input.b, u_input.d, 4294967295u), false, Struct_1(vec2<bool>(true, false), true, -35134i), u_input.c.wx), true, 776f, global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]), true, Struct_2(vec3<u32>(0u, 0u, 15153u), vec4<u32>(1u, u_input.d, u_input.b, u_input.b), false, Struct_1(vec2<bool>(false, false), false, global0[_wgslsmith_index_u32(4294967295u, 18u)]), u_input.c.wy)).xz), !(4294967295u > u_input.d), true)));
    var var_1 = ~u_input.b;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-386f, 100f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-995f)))), 122f) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1474f)), _wgslsmith_f_op_f32(f32(-1f) * -870f), _wgslsmith_f_op_f32(1f * 125f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1312f - -176f)), _wgslsmith_f_op_f32(max(-157f, -1335f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1542f, -389f), _wgslsmith_f_op_f32(max(497f, -229f))))) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + -938f))), _wgslsmith_f_op_f32(f32(-1f) * -3001f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1362f)) * 752f))));
    global0 = array<i32, 18>();
    let var_3 = Struct_1(var_0.yy, true, reverseBits(17248i));
    return var_3;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec4<u32> {
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    var var_0 = Struct_3(arg_1);
    var var_1 = Struct_5(Struct_2(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, u_input.d, arg_3), vec3<u32>(u_input.b, u_input.b, 22788u))), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_3, ~u_input.b, u_input.b, ~31242u), vec4<u32>(1u, 9133u, firstLeadingBit(arg_3), ~0u)), all(vec3<bool>(var_0.a.b, !arg_1.a.x, var_0.a.a.x)), func_2(), u_input.c.xx), _wgslsmith_dot_vec2_i32(u_input.c.zw, ~vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 18u)], 2147483647i)) != _wgslsmith_add_i32(~global0[_wgslsmith_index_u32(abs(arg_3), 18u)], max(_wgslsmith_mult_i32(48249i, global0[_wgslsmith_index_u32(53070u, 18u)]), 2147483647i)), -1000f, countOneBits(1i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(min(u_input.a, var_0.a.c), -arg_1.c, 127095i), -u_input.c.www)));
    var var_2 = var_1.a;
    return var_1.a.b;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_mod_vec4_u32(abs(abs((vec4<u32>(69043u, u_input.d, u_input.b, u_input.d) | vec4<u32>(4294967295u, u_input.d, u_input.b, 6775u)) >> (vec4<u32>(u_input.b, 12567u, u_input.d, u_input.b) % vec4<u32>(32u)))), ~abs(func_5(181f, func_2(), min(0u, u_input.b), ~54324u)));
    var var_1 = u_input.c.xw;
    var_1 = u_input.c.xx;
    let var_2 = Struct_2(var_0.www, _wgslsmith_mult_vec4_u32(~func_5(-368f, func_2(), 37595u << (var_0.x % 32u), _wgslsmith_dot_vec2_u32(var_0.zz, vec2<u32>(var_0.x, u_input.b))), ~vec4<u32>(0u, firstLeadingBit(u_input.b), 40012u, 1u)), true, Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(select(vec2<bool>(true, true), func_4(false, Struct_5(Struct_2(var_0.ywz, vec4<u32>(u_input.b, 31128u, 17773u, var_0.x), false, Struct_1(vec2<bool>(false, true), true, global0[_wgslsmith_index_u32(u_input.b, 18u)]), u_input.c.yz), true, -868f, u_input.a, -32414i), true, Struct_2(vec3<u32>(u_input.b, 3623u, 1u), vec4<u32>(var_0.x, var_0.x, 1u, var_0.x), true, Struct_1(vec2<bool>(true, false), false, u_input.c.x), u_input.c.yx)).xy, vec2<bool>(false, false))), 3864i), u_input.c.zz);
    let var_3 = _wgslsmith_mod_i32(var_2.d.c, ~_wgslsmith_dot_vec2_i32(vec2<i32>(~2199i, -62340i), vec2<i32>(u_input.c.x, max(global0[_wgslsmith_index_u32(4294967295u, 18u)], var_1.x))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-462f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1387f) - 611f))));
}

fn func_6(arg_0: f32, arg_1: vec4<f32>) -> StorageBuffer {
    let var_0 = Struct_2(~(~(~(~vec3<u32>(u_input.d, 66135u, u_input.d)))), ~(~(vec4<u32>(u_input.d, 4294967295u, 1u, 13207u) | (vec4<u32>(u_input.b, 0u, u_input.b, 4294967295u) >> (vec4<u32>(1u, u_input.b, u_input.b, 23257u) % vec4<u32>(32u))))), !func_2().b, Struct_1(!vec2<bool>(-823f != arg_1.x, arg_1.x == arg_1.x), func_4(func_4(true, Struct_5(Struct_2(vec3<u32>(u_input.b, u_input.b, u_input.d), vec4<u32>(u_input.b, 18139u, u_input.b, 59618u), false, Struct_1(vec2<bool>(true, false), false, u_input.a), vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.d, 18u)])), true, 1543f, 0i, 1i), true, Struct_2(vec3<u32>(u_input.d, u_input.d, 47568u), vec4<u32>(0u, 1u, 11528u, 4294967295u), true, Struct_1(vec2<bool>(true, false), false, -15556i), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.b, 18u)]))).x, Struct_5(Struct_2(vec3<u32>(14470u, u_input.d, u_input.b), vec4<u32>(1u, u_input.d, u_input.d, 10242u), false, Struct_1(vec2<bool>(false, true), true, u_input.c.x), vec2<i32>(0i, -2147483647i)), true, _wgslsmith_div_f32(-102f, arg_0), ~u_input.c.x, u_input.c.x), select(true, func_3(), 23172i != u_input.a), Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b), vec3<u32>(u_input.b, u_input.b, 1219u)), min(vec4<u32>(4294967295u, 15363u, u_input.d, 46431u), vec4<u32>(0u, u_input.d, 1u, 34971u)), all(vec3<bool>(true, true, true)), Struct_1(vec2<bool>(false, true), true, 1i), select(vec2<i32>(0i, 2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(1u, 18u)], -9678i), vec2<bool>(true, true)))).x, -(i32(-1i) * -39541i)), -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(64395i, u_input.c.x), vec2<i32>(u_input.c.x, 14399i)), u_input.a & -62582i) & vec2<i32>(-32020i, u_input.a));
    var var_1 = ~_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.d.c, var_0.d.c), var_0.e) | reverseBits(vec2<i32>(u_input.c.x, var_0.e.x)), vec2<i32>(u_input.a, reverseBits(1i)));
    var_1 = ~firstTrailingBit(-vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zw, vec2<i32>(global0[_wgslsmith_index_u32(5906u, 18u)], u_input.c.x)), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)));
    global0 = array<i32, 18>();
    let var_2 = var_0.d.a.x;
    return StorageBuffer(arg_1.wzw, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 18>();
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-366f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-484f, _wgslsmith_f_op_f32(ceil(1488f)))), 416f, true))), -814f);
    let var_1 = -1410f;
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    let var_2 = 31134u;
    global0 = array<i32, 18>();
    var var_3 = u_input.c;
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_1))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1, var_0.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, _wgslsmith_f_op_f32(select(-726f, var_0.x, true)), var_0.x) - vec4<f32>(_wgslsmith_f_op_f32(var_1 * var_0.x), _wgslsmith_f_op_f32(var_1 + 625f), _wgslsmith_f_op_f32(floor(var_1)), var_0.x)) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x - -1594f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_0.x) + _wgslsmith_f_op_f32(func_1())), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(761f, var_0.x)))));
}

