struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(242i, 1i), vec2<i32>(2147483647i, 43473i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1257i, -74494i), vec2<i32>(60348i, i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(1i, -66497i), vec2<i32>(-20480i, -11113i), vec2<i32>(-34838i, 2147483647i), vec2<i32>(-10666i, -41960i), vec2<i32>(30592i, 1i), vec2<i32>(1i, 76307i));

var<private> global1: array<bool, 23> = array<bool, 23>(false, true, true, false, true, true, false, true, true, false, true, false, false, false, true, false, true, false, false, true, true, true, true);

var<private> global2: i32 = 2147483647i;

var<private> global3: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(4294967295u, 31714u, 27680u), vec3<u32>(31097u, 62367u, 10384u), vec3<u32>(4294967295u, 64696u, 94354u), vec3<u32>(41836u, 7825u, 4294967295u), vec3<u32>(1u, 11808u, 0u), vec3<u32>(27885u, 1u, 38756u), vec3<u32>(0u, 1u, 13423u));

var<private> global4: Struct_3 = Struct_3(vec2<bool>(true, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<u32>) -> f32 {
    return 1289f;
}

fn func_2(arg_0: vec4<i32>) -> vec2<bool> {
    global0 = array<vec2<i32>, 12>();
    global3 = array<vec3<u32>, 7>();
    var var_0 = Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(ceil(1f)), 415f), _wgslsmith_f_op_f32(func_3(global4.a.x, global4.a, vec2<u32>(~u_input.a, 1u))), (((true && global4.a.x) == global1[_wgslsmith_index_u32(u_input.a, 23u)]) | any(select(vec4<bool>(false, false, global4.a.x, global4.a.x), vec4<bool>(true, false, global1[_wgslsmith_index_u32(28158u, 23u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 23u)], global4.a.x, true)))) | false);
    let var_1 = !(!(!vec2<bool>(true, global4.a.x)));
    var var_2 = Struct_1(all(select(vec3<bool>(all(vec3<bool>(var_0.d, false, global1[_wgslsmith_index_u32(0u, 23u)])), select(true, global1[_wgslsmith_index_u32(u_input.a, 23u)], var_1.x), true), !(!vec3<bool>(var_0.a, global1[_wgslsmith_index_u32(u_input.a, 23u)], var_1.x)), vec3<bool>(!global1[_wgslsmith_index_u32(1u, 23u)], true == var_1.x, false))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-560f + var_0.b.x)))))), var_0.c, all(!select(select(vec4<bool>(false, false, true, global4.a.x), vec4<bool>(true, true, true, var_0.a), global1[_wgslsmith_index_u32(1u, 23u)]), vec4<bool>(var_0.a, false, true, var_0.d), vec4<bool>(false, global4.a.x, var_0.d, false))));
    return var_1;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: vec4<f32>) -> vec2<bool> {
    global2 = -37007i;
    let var_0 = _wgslsmith_div_i32(arg_0, -(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 1i), -global0[_wgslsmith_index_u32(u_input.a, 12u)])));
    var var_1 = vec2<f32>(arg_2.x, arg_2.x);
    var var_2 = u_input.a;
    var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(404f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -2179f)))))));
    return vec2<bool>(global1[_wgslsmith_index_u32(55081u, 23u)], true);
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>) -> Struct_1 {
    global2 = -43819i;
    global1 = array<bool, 23>();
    var var_0 = Struct_3(func_4(~(~1i), select(vec2<bool>(all(vec2<bool>(true, true)), 0u != arg_0.c), func_2(vec4<i32>(-31316i, 18218i, 0i, -5590i)), vec2<bool>(!global4.a.x, true)), vec4<f32>(1506f, -1372f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-349f, arg_0.a.b.x, arg_1.x, -689f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_1.x, 222f, arg_0.a.b.x) + vec4<f32>(872f, arg_0.a.c, arg_1.x, -1473f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.a.b.x, arg_0.a.b.x, 1000f, 220f), vec4<f32>(arg_0.a.b.x, 379f, arg_1.x, arg_1.x)))))));
    let var_1 = arg_0.a;
    var var_2 = Struct_2(vec2<f32>(696f, arg_1.x), ~vec2<u32>(u_input.a, u_input.a), min(min(~_wgslsmith_div_vec2_u32(vec2<u32>(23502u, arg_0.c), vec2<u32>(0u, u_input.a)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.c, 4294967295u), vec2<u32>(4294967295u, u_input.a), vec2<u32>(48444u, arg_0.c))), abs(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, u_input.a))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_mod_i32(4398i, 2984i), 13711i, _wgslsmith_add_i32(0i, -5006i)) | select(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(19550i, -1i, 2147483647i), select(vec3<bool>(true, var_1.a, true), vec3<bool>(false, arg_0.d.a.x, global4.a.x), global4.a.x))), var_1);
    return Struct_1(true, _wgslsmith_f_op_vec2_f32(-arg_0.a.b), arg_0.a.b.x, global4.a.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_4) -> vec3<bool> {
    var var_0 = ~_wgslsmith_sub_u32(~u_input.a, ~(_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(u_input.a, 7u)]) >> (31979u % 32u)));
    var var_1 = arg_0.yz;
    var var_2 = func_1(Struct_4(Struct_1(any(vec3<bool>(false, var_1.x, arg_0.x)), arg_2.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(204f, 431f, false))), true), arg_2.b, ~max(27460u, 0u), Struct_3(func_4(-17602i, select(vec2<bool>(false, false), vec2<bool>(var_1.x, var_1.x), global1[_wgslsmith_index_u32(4294967295u, 23u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, arg_1.c, arg_1.c, arg_1.c) - vec4<f32>(arg_2.a.c, arg_2.a.b.x, arg_2.a.b.x, arg_1.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, 1599f, arg_2.a.c, arg_1.b.x))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(arg_1.b)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f));
    var var_4 = select(vec4<bool>(false, global4.a.x, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2.c, arg_2.c ^ arg_2.c), 23u)], false), select(vec4<bool>(true, !select(global1[_wgslsmith_index_u32(u_input.a, 23u)], arg_2.a.d, false), false, arg_2.a.c >= -1034f), vec4<bool>(var_2.a, (arg_0.x & var_2.a) | true, func_2(~vec4<i32>(0i, -28080i, 0i, 15264i)).x, arg_2.a.a), vec4<bool>(true, false, false, global4.a.x)), vec4<bool>(!global1[_wgslsmith_index_u32(firstTrailingBit(arg_2.c ^ 4294967295u), 23u)], !(_wgslsmith_mult_u32(u_input.a, u_input.a) != 0u), true, true));
    return vec3<bool>(true, true, var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 23u)];
    var var_1 = -1i;
    let var_2 = any(select(select(!(!vec3<bool>(false, true, global4.a.x)), func_5(select(vec3<bool>(global4.a.x, global1[_wgslsmith_index_u32(4294967295u, 23u)], true), vec3<bool>(true, global4.a.x, true), true), func_1(Struct_4(Struct_1(global4.a.x, vec2<f32>(-805f, -2129f), 1226f, global1[_wgslsmith_index_u32(u_input.a, 23u)]), Struct_3(vec2<bool>(false, true)), 1u, Struct_3(vec2<bool>(global4.a.x, global1[_wgslsmith_index_u32(u_input.a, 23u)]))), vec2<f32>(-1140f, -240f)), Struct_4(Struct_1(global4.a.x, vec2<f32>(154f, 439f), -1000f, global4.a.x), Struct_3(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 23u)], global4.a.x)), 48885u, Struct_3(global4.a))), !vec3<bool>(false, global4.a.x, true)), select(vec3<bool>(global4.a.x || true, !global4.a.x, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, global4.a.x), select(vec3<bool>(false, global1[_wgslsmith_index_u32(5225u, 23u)], global1[_wgslsmith_index_u32(u_input.a, 23u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 23u)], global4.a.x, global4.a.x), false), true)), true));
    var var_3 = _wgslsmith_mult_vec4_u32(~reverseBits(~vec4<u32>(107082u, u_input.a, 68700u, u_input.a)), _wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(38764u, 7u)], vec3<u32>(u_input.a, 25230u, 4294967295u)), _wgslsmith_sub_u32(4294967295u, u_input.a), _wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(4294967295u, 7u)], vec3<u32>(u_input.a, u_input.a, 1873u)), 4294967295u), ~(~vec4<u32>(u_input.a, u_input.a, 0u, 0u))));
    let var_4 = any(vec2<bool>(true, func_4(_wgslsmith_div_i32(i32(-1i) * -14355i, reverseBits(-2147483647i)), func_5(func_5(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 23u)], true), Struct_1(var_2, vec2<f32>(335f, 1219f), -1577f, global1[_wgslsmith_index_u32(u_input.a, 23u)]), Struct_4(Struct_1(var_2, vec2<f32>(1323f, -1184f), -658f, false), Struct_3(global4.a), 4294967295u, Struct_3(vec2<bool>(true, false)))), Struct_1(false, vec2<f32>(-1000f, -558f), 508f, var_2), Struct_4(Struct_1(var_2, vec2<f32>(743f, -564f), -1629f, global1[_wgslsmith_index_u32(var_3.x, 23u)]), Struct_3(vec2<bool>(global4.a.x, var_2)), 1u, Struct_3(vec2<bool>(true, global4.a.x)))).yx, vec4<f32>(-708f, -872f, _wgslsmith_f_op_f32(1000f * 954f), -1278f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(148f, -520f, -760f, 540f), vec4<f32>(-2430f, -1965f, 501f, -2095f), true)))).x));
    let var_5 = global4.a;
    let var_6 = Struct_1(!global1[_wgslsmith_index_u32(~0u, 23u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1001f, 1183f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-916f - -1450f) - _wgslsmith_f_op_f32(floor(1326f))))), 969f, all(vec3<bool>(!global1[_wgslsmith_index_u32(4294967295u, 23u)], false, var_5.x)));
    global3 = array<vec3<u32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(var_3.yy, var_3.zx), ~var_3.yy) ^ select(~vec2<u32>(u_input.a, var_3.x), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_3.x), var_3.zy), func_4(2147483647i, global4.a, vec4<f32>(-2580f, var_6.c, var_6.c, -304f), vec4<f32>(-1000f, -1000f, 1000f, -1673f)))), vec3<i32>(firstLeadingBit(min(_wgslsmith_div_i32(0i, 30382i), 1i)), 2147483647i, -1i), u_input.a);
}

