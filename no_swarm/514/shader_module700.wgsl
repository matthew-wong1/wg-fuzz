struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<f32>,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(30167u, 13119u, 42329u), vec3<u32>(1u, 7467u, 1u), vec3<u32>(32042u, 104398u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(16803u, 1u, 8563u), vec3<u32>(14177u, 4172u, 36689u), vec3<u32>(1u, 55888u, 27643u), vec3<u32>(0u, 4294967295u, 28320u), vec3<u32>(1u, 0u, 62253u), vec3<u32>(9886u, 4294967295u, 91462u), vec3<u32>(0u, 43541u, 33788u), vec3<u32>(0u, 103855u, 30338u), vec3<u32>(4294967295u, 0u, 10656u), vec3<u32>(4294967295u, 42389u, 39114u), vec3<u32>(20996u, 4294967295u, 1u), vec3<u32>(17701u, 14834u, 13758u), vec3<u32>(30115u, 0u, 1u), vec3<u32>(21381u, 8365u, 0u), vec3<u32>(90006u, 4294967295u, 35433u), vec3<u32>(49674u, 1u, 0u), vec3<u32>(1u, 3464u, 75705u), vec3<u32>(130396u, 1u, 5466u), vec3<u32>(4294967295u, 126177u, 0u), vec3<u32>(24825u, 28403u, 45660u), vec3<u32>(4294967295u, 50079u, 23052u), vec3<u32>(12668u, 16489u, 53965u));

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1611f, -437f), -577f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-130f, -1168f), vec2<f32>(1000f, -147f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-549f, 2394f)) - vec2<f32>(_wgslsmith_div_f32(1000f, -436f), _wgslsmith_f_op_f32(f32(-1f) * -2192f)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: i32) -> vec3<u32> {
    global0 = arg_0;
    var var_0 = arg_0;
    var var_1 = Struct_2(arg_0, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(235f, -679f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -952f)), _wgslsmith_f_op_f32(f32(-1f) * -1620f), _wgslsmith_f_op_f32(ceil(arg_1.x))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1141f, arg_1.x, arg_1.x), vec3<f32>(-183f, 477f, 1901f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, arg_1.x, arg_1.x), vec3<f32>(1000f, -334f, arg_1.x), global2.x)))))), global2.x, select(!(!select(vec4<bool>(false, global2.x, true, global2.x), vec4<bool>(global2.x, global2.x, global2.x, false), global2.x)), select(!(!vec4<bool>(true, global2.x, global2.x, false)), select(select(vec4<bool>(true, false, global2.x, global2.x), vec4<bool>(true, global2.x, true, global2.x), global2.x), select(vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(false, true, global2.x, false), true), true), vec4<bool>(global2.x && global2.x, true, arg_0.a.x == 33060u, false)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(global2.x, global2.x, true, global2.x), global2.x), all(vec3<bool>(false, false, false))), select(vec4<bool>(false, true, global2.x, true), vec4<bool>(true, false, global2.x, global2.x), !global2.x), vec4<bool>(global2.x, !global2.x, false, global2.x))));
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(min(global0.a.x, 72501u), global0.a.x), _wgslsmith_mult_vec2_u32(var_1.a.a.zz, vec2<u32>(_wgslsmith_clamp_u32(1u, 48803u, _wgslsmith_dot_vec2_u32(var_1.a.a.xz, vec2<u32>(arg_0.a.x, var_0.a.x))), abs(var_1.a.a.x))), vec2<u32>(0u, 22920u));
    let var_3 = global1[_wgslsmith_index_u32(abs((~(1u & arg_0.a.x) & arg_0.a.x) << (~(22354u | (u_input.a & var_0.a.x)) % 32u)), 26u)];
    return ~vec3<u32>(~firstLeadingBit(countOneBits(4294967295u)), var_1.a.a.x, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, arg_0.a.x), abs(4294967295u)));
}

fn func_2() -> vec4<i32> {
    global0 = Struct_1(firstLeadingBit(~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(global0.a.x, 9561u, 1u)), u_input.c)));
    let var_0 = !(!select(vec3<bool>(true, false, !global2.x), vec3<bool>(global2.x, global2.x, false), vec3<bool>(true, false, true)));
    var var_1 = Struct_2(Struct_1(func_4(Struct_1(~vec3<u32>(0u, global0.a.x, 1u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-961f, 344f)), _wgslsmith_f_op_vec2_f32(func_3()))), vec4<i32>(select(u_input.b, 2147483647i, var_0.x), u_input.b >> (1u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(31315i, 44389i, u_input.d), vec3<i32>(u_input.d, u_input.e, -2147483647i)), ~u_input.e), u_input.d)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-431f + 1243f))), _wgslsmith_f_op_f32(f32(-1f) * -444f)), vec3<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-401f, -457f) + _wgslsmith_f_op_f32(abs(219f))))), false, select(select(!(!vec4<bool>(var_0.x, false, var_0.x, var_0.x)), vec4<bool>(var_0.x, true || global2.x, any(var_0), !var_0.x), true), vec4<bool>(global2.x, all(select(vec2<bool>(true, false), var_0.zy, var_0.zx)), !select(false, true, var_0.x), true), select(select(select(vec4<bool>(var_0.x, global2.x, true, false), vec4<bool>(false, var_0.x, global2.x, var_0.x), vec4<bool>(true, var_0.x, false, true)), select(vec4<bool>(false, var_0.x, false, global2.x), vec4<bool>(var_0.x, false, var_0.x, true), global2.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !(!vec4<bool>(global2.x, false, var_0.x, true)), !vec4<bool>(false, true, var_0.x, global2.x))));
    global1 = array<vec3<u32>, 26>();
    var var_2 = var_1.e;
    return _wgslsmith_mult_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 87626i, u_input.b, u_input.b), vec4<i32>(-1i, u_input.d, u_input.d, -18936i)), u_input.b, select(1i, _wgslsmith_clamp_i32(u_input.d, u_input.d, 1i), true & var_0.x), select(u_input.e, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, -5672i, u_input.d, -1i), vec4<i32>(u_input.b, u_input.b, u_input.d, -1i)), false)), -select(vec4<i32>(~(-1i), 1i, i32(-1i) * -2147483647i, 31621i), select(vec4<i32>(-1i, u_input.e, u_input.b, u_input.d) << (vec4<u32>(u_input.c.x, global0.a.x, u_input.c.x, 9570u) % vec4<u32>(32u)), vec4<i32>(u_input.b, 24792i, 61479i, u_input.d) << (vec4<u32>(37078u, 48322u, 1u, u_input.a) % vec4<u32>(32u)), !var_1.e), !var_1.e));
}

fn func_1() -> Struct_2 {
    global2 = vec2<bool>(all(!select(select(vec2<bool>(true, false), vec2<bool>(global2.x, false), global2.x), select(vec2<bool>(global2.x, false), vec2<bool>(true, false), global2.x), global2.x || false)), (0u != ~_wgslsmith_sub_u32(global0.a.x, u_input.a)) || global2.x);
    global1 = array<vec3<u32>, 26>();
    global2 = !(!vec2<bool>(global2.x, true | any(vec3<bool>(global2.x, global2.x, global2.x))));
    var var_0 = func_2();
    let var_1 = ~_wgslsmith_mod_u32(abs(u_input.c.x), ~countOneBits(_wgslsmith_mult_u32(1u, 1u)));
    return Struct_2(Struct_1(select(~(~vec3<u32>(18671u, u_input.a, global0.a.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 38356u), global0.a.xy), ~50322u, global0.a.x), false)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1015f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1912f - _wgslsmith_f_op_f32(min(-139f, 637f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1881f, _wgslsmith_f_op_f32(-1085f - _wgslsmith_f_op_f32(max(-1309f, -1151f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(802f))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-766f)), -1508f, _wgslsmith_f_op_f32(floor(-418f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-299f, 351f, 3309f), vec3<f32>(-1422f, -907f, -479f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1202f, 1156f, 273f), vec3<f32>(-1208f, -329f, 457f), vec3<bool>(global2.x, true, true))))))), any(!select(vec4<bool>(false, global2.x, true, false), vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(global2.x, false, global2.x, false))) | true, select(!select(!vec4<bool>(global2.x, false, global2.x, global2.x), !vec4<bool>(global2.x, false, global2.x, global2.x), global2.x), !select(!vec4<bool>(global2.x, false, true, global2.x), select(vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(global2.x, false, global2.x, false)), all(vec3<bool>(false, global2.x, global2.x))), !(!select(vec4<bool>(true, true, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, global2.x), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(global0.a.x, 26u)]);
    let var_2 = vec4<f32>(1769f, _wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x - var_0.c.x), -1144f);
    var_0 = func_1();
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_2.wzz, var_0.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1008f, -988f, var_2.x), vec3<f32>(var_0.c.x, 1897f, 394f)) + var_2.wxz))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-518f + var_2.x), _wgslsmith_f_op_f32(-var_0.c.x)))))));
    var var_4 = 2405f;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(u_input.d, 1i, u_input.e)), vec3<i32>(u_input.e, u_input.e, u_input.b) ^ vec3<i32>(-7238i, u_input.b, u_input.e)), func_2().yyy), _wgslsmith_f_op_vec3_f32(round(var_0.c)));
}

