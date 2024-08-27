struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29>;

var<private> global1: f32;

var<private> global2: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(55648u, 0u, 0u), vec3<u32>(1u, 4363u, 4294967295u), vec3<u32>(0u, 33355u, 79265u), vec3<u32>(9549u, 18916u, 1u), vec3<u32>(36900u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, 68005u), vec3<u32>(1u, 13633u, 1u), vec3<u32>(0u, 4281u, 4294967295u), vec3<u32>(66549u, 0u, 0u), vec3<u32>(1u, 49742u, 30001u), vec3<u32>(4294967295u, 4714u, 1u), vec3<u32>(4294967295u, 74943u, 9197u), vec3<u32>(48436u, 22479u, 0u), vec3<u32>(1u, 21738u, 1u), vec3<u32>(2565u, 34399u, 1u), vec3<u32>(4294967295u, 32204u, 28305u), vec3<u32>(0u, 0u, 33335u), vec3<u32>(1u, 4294967295u, 24887u), vec3<u32>(4294967295u, 9286u, 1u), vec3<u32>(4294967295u, 19890u, 10318u), vec3<u32>(26749u, 1996u, 81069u), vec3<u32>(0u, 39833u, 1u), vec3<u32>(70552u, 4294967295u, 4294967295u), vec3<u32>(57079u, 42678u, 0u), vec3<u32>(4294967295u, 38649u, 11030u), vec3<u32>(37575u, 8119u, 0u), vec3<u32>(1u, 1u, 40345u), vec3<u32>(56516u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 3769u, 35297u));

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

var<private> global4: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -51050i)), Struct_2(vec4<i32>(27263i, -11161i, 1i, 1i)), Struct_2(vec4<i32>(21618i, 0i, 0i, -192i)), Struct_2(vec4<i32>(-22652i, 21710i, -28210i, 2011i)), Struct_2(vec4<i32>(31996i, -21405i, 30046i, 0i)), Struct_2(vec4<i32>(20018i, 0i, -2386i, 82565i)), Struct_2(vec4<i32>(-28572i, 0i, 2147483647i, 1i)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<u32> {
    global0 = array<vec4<u32>, 29>();
    global2 = array<vec3<u32>, 30>();
    global1 = -329f;
    var var_0 = select(!vec3<bool>(!(u_input.c > 4294967295u), true, false), vec3<bool>(!(min(u_input.c, u_input.c) >= countOneBits(22868u)), !all(vec4<bool>(global3.x, true, false, false)), false), !all(global3.zz));
    return global2[_wgslsmith_index_u32(u_input.c, 30u)];
}

fn func_2() -> vec4<f32> {
    let var_0 = -max(firstLeadingBit(vec4<i32>(firstTrailingBit(u_input.a.x), u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, u_input.b, u_input.b), vec4<i32>(1i, u_input.b, u_input.a.x, -1i)), _wgslsmith_clamp_i32(u_input.b, 2147483647i, 1i))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 4335i, u_input.b, -1i), vec4<i32>(u_input.b, u_input.b, -1i, 1i)) | (vec4<i32>(u_input.b, -2147483647i, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.c, u_input.c, 47873u, 7456u) % vec4<u32>(32u))), ~vec4<i32>(u_input.b, u_input.b, u_input.b, 0i)));
    global2 = array<vec3<u32>, 30>();
    let var_1 = Struct_3(global4[_wgslsmith_index_u32(1u, 7u)], -_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b, 1422i), vec2<i32>(1i, u_input.b)), global4[_wgslsmith_index_u32(~(~7902u) | _wgslsmith_sub_u32(~_wgslsmith_div_u32(u_input.c, u_input.c), u_input.c), 7u)], _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(103147u, 0u, 0u)), max(countOneBits(vec3<u32>(u_input.c, u_input.c, u_input.c)), select(global2[_wgslsmith_index_u32(u_input.c, 30u)], global2[_wgslsmith_index_u32(u_input.c, 30u)], vec3<bool>(false, false, global3.x))), firstLeadingBit(global2[_wgslsmith_index_u32(~1u, 30u)])) >> (~func_3() % vec3<u32>(32u)));
    let var_2 = Struct_4(~_wgslsmith_sub_vec4_i32(min(vec4<i32>(-10576i, var_0.x, 2337i, var_1.c.a.x), vec4<i32>(var_1.b.x, var_0.x, -26717i, var_1.c.a.x) & var_1.c.a), ~(~vec4<i32>(2147483647i, 1i, var_1.c.a.x, 23875i))), ~(firstTrailingBit(global2[_wgslsmith_index_u32(1u, 30u)]) ^ ~vec3<u32>(var_1.d.x, u_input.c, 27017u)), ~(~_wgslsmith_add_u32(4294967295u, 19093u ^ var_1.d.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 281f, 735f))))))), 295f);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_2.d.x)), 233f)));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -900f))) - var_2.e), _wgslsmith_f_op_f32(556f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.x * 567f) + _wgslsmith_f_op_f32(-var_2.e))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.d.x, var_2.d.x, true)), _wgslsmith_f_op_f32(-1315f - _wgslsmith_f_op_f32(floor(var_2.e)))), _wgslsmith_f_op_f32(floor(1506f)))), -210f);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: i32) -> Struct_3 {
    var var_0 = arg_0;
    let var_1 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(-(~u_input.a), u_input.a), u_input.a, max(_wgslsmith_mod_vec3_i32(u_input.a, _wgslsmith_mod_vec3_i32(u_input.a, u_input.a)), min(firstLeadingBit(u_input.a), u_input.a)));
    return Struct_3(global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(10560u, abs(_wgslsmith_mult_u32(4294967295u, 1u))), 7u)], min(u_input.a.yx, ~firstTrailingBit(u_input.a.zz)) << (max(vec2<u32>(u_input.c, _wgslsmith_mod_u32(40753u, u_input.c)), func_3().yx >> (countOneBits(vec2<u32>(17407u, u_input.c)) % vec2<u32>(32u))) % vec2<u32>(32u)), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, u_input.c), global3.x), firstTrailingBit(vec2<u32>(u_input.c, 3805u))), vec2<u32>(u_input.c | u_input.c, _wgslsmith_div_u32(16777u, u_input.c))), 7u)], vec3<u32>(_wgslsmith_sub_u32(1u, ~(~u_input.c)), select(4294967295u, u_input.c, !(global3.x == false)), abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 93070u), global2[_wgslsmith_index_u32(u_input.c, 30u)]))));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<i32>, arg_3: vec4<i32>) -> f32 {
    global4 = array<Struct_2, 7>();
    let var_0 = u_input.c;
    let var_1 = !(!(!all(vec4<bool>(true, false, true, global3.x)))) & !global3.x;
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-949f, 107f, -677f, 1000f))))), _wgslsmith_f_op_vec4_f32(func_2()))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2()).x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1970f, 1273f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -2073f)) - _wgslsmith_div_f32(599f, -959f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-835f, -323f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2133f)) + _wgslsmith_f_op_f32(round(159f)))))), _wgslsmith_add_i32(arg_0.x, ~_wgslsmith_dot_vec2_i32(min(arg_2.zy, u_input.a.xx), ~vec2<i32>(-1301i, arg_2.x))));
    global1 = -241f;
    return 214f;
}

fn func_5(arg_0: Struct_4, arg_1: bool) -> vec4<bool> {
    let var_0 = select(!global3.xy, !vec2<bool>((u_input.c >= 1u) || true, all(select(global3.xx, vec2<bool>(false, arg_1), false))), global3.xx);
    global0 = array<vec4<u32>, 29>();
    global4 = array<Struct_2, 7>();
    var var_1 = arg_0;
    var_1 = Struct_4(vec4<i32>(select(countOneBits(firstLeadingBit(-2147483647i)), var_1.a.x, !arg_1), u_input.a.x, u_input.b, arg_0.a.x), var_1.b, max(1u, ~44782u), vec3<f32>(arg_0.e, -688f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -500f));
    return vec4<bool>(true, !all(!select(vec4<bool>(arg_1, true, var_0.x, global3.x), vec4<bool>(false, arg_1, global3.x, global3.x), vec4<bool>(arg_1, false, var_0.x, false))), false, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_5(Struct_4(vec4<i32>(~2147483647i, -u_input.b, u_input.b, u_input.a.x), vec3<u32>(u_input.c, ~68472u, u_input.c), 56315u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(741f, 632f, -867f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-916f, 400f, -666f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a.yy, -46182i, vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))))), global3.x);
    var var_1 = u_input.c;
    let var_2 = Struct_3(global4[_wgslsmith_index_u32(u_input.c, 7u)], vec2<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(reverseBits(vec4<i32>(-1i, 2147483647i, u_input.b, 15684i))), min(vec4<i32>(u_input.b, -40947i, u_input.b, 2147483647i), max(vec4<i32>(u_input.a.x, -7368i, -10330i, u_input.b), vec4<i32>(u_input.b, u_input.b, 0i, -11024i)))), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i)), countOneBits(max(vec4<i32>(42132i, -1i, -1i, u_input.b), vec4<i32>(u_input.b, -9692i, u_input.b, -2147483647i))))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1065f, -465f, 1749f), vec4<f32>(-924f, -559f, 1145f, -1497f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1422f, -502f, -1257f, -651f), vec4<f32>(-1448f, 340f, 1454f, -458f))) * vec4<f32>(-620f, -453f, -1407f, 442f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-996f, 1667f, -1012f)))), 0i).a, _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(35774u, u_input.c, u_input.c)), ~vec3<u32>(6528u, 4294967295u, u_input.c)) & global2[_wgslsmith_index_u32(max(min(1u, abs(u_input.c)), u_input.c), 30u)]);
    var_0 = vec4<bool>(true, !global3.x, !global3.x, false);
    var_0 = !select(select(!(!vec4<bool>(false, false, global3.x, true)), !(!vec4<bool>(var_0.x, global3.x, true, var_0.x)), select(!global3.x, true, false | global3.x)), !select(!vec4<bool>(false, var_0.x, true, false), func_5(Struct_4(vec4<i32>(1i, var_2.c.a.x, -59407i, u_input.b), global2[_wgslsmith_index_u32(u_input.c, 30u)], 15417u, vec3<f32>(1046f, 452f, -2522f), 778f), global3.x), vec4<bool>(global3.x, var_0.x, false, false)), true);
    global0 = array<vec4<u32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, 0u & ~u_input.c, var_2.a.a.x);
}

