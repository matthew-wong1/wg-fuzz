struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<i32>(16918i, 1i)), Struct_1(vec2<i32>(1i, 45809i)), Struct_1(vec2<i32>(-53747i, 25275i)), Struct_1(vec2<i32>(29554i, -2696i)), Struct_1(vec2<i32>(1992i, i32(-2147483648))), Struct_1(vec2<i32>(1i, 1i)), Struct_1(vec2<i32>(1i, -19488i)), Struct_1(vec2<i32>(0i, -16407i)), Struct_1(vec2<i32>(-2657i, -37195i)), Struct_1(vec2<i32>(25317i, 0i)), Struct_1(vec2<i32>(2147483647i, 1i)), Struct_1(vec2<i32>(-37700i, 2147483647i)), Struct_1(vec2<i32>(-17138i, -53496i)), Struct_1(vec2<i32>(0i, i32(-2147483648))), Struct_1(vec2<i32>(-1i, -42052i)), Struct_1(vec2<i32>(28412i, 0i)));

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(0i), Struct_2(24678i), Struct_2(-1i), Struct_2(0i), Struct_2(i32(-2147483648)), Struct_2(2147483647i), Struct_2(-4950i), Struct_2(2147483647i), Struct_2(90703i), Struct_2(i32(-2147483648)), Struct_2(-49101i), Struct_2(i32(-2147483648)), Struct_2(-1i), Struct_2(1i), Struct_2(i32(-2147483648)), Struct_2(9343i), Struct_2(2147483647i), Struct_2(2147483647i), Struct_2(2147483647i), Struct_2(46073i), Struct_2(2147483647i), Struct_2(-1i));

var<private> global3: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(0i, -11757i), vec2<i32>(33217i, -1i), vec2<i32>(-21577i, 1490i), vec2<i32>(1783i, i32(-2147483648)), vec2<i32>(-1i, -9237i), vec2<i32>(-1i, 43428i), vec2<i32>(-18114i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(-2195i, -12312i), vec2<i32>(2147483647i, 1i));

var<private> global4: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(50599u, 4294967295u, 1u), vec3<u32>(1u, 1u, 0u), vec3<u32>(33969u, 435u, 1u), vec3<u32>(14748u, 1u, 21869u), vec3<u32>(28598u, 4294967295u, 539u), vec3<u32>(29714u, 4294967295u, 73693u), vec3<u32>(0u, 62292u, 18486u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(2398u, 38242u, 65747u), vec3<u32>(29427u, 97538u, 39532u), vec3<u32>(0u, 0u, 82414u), vec3<u32>(15814u, 17243u, 40515u), vec3<u32>(0u, 20115u, 57875u), vec3<u32>(0u, 32513u, 0u), vec3<u32>(4294967295u, 13036u, 15078u), vec3<u32>(27444u, 0u, 0u), vec3<u32>(95311u, 72027u, 0u), vec3<u32>(9564u, 61988u, 10835u), vec3<u32>(29965u, 4294967295u, 4294967295u), vec3<u32>(1u, 67397u, 0u), vec3<u32>(4294967295u, 4294967295u, 45480u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_f_op_f32(f32(-1f) * -126f), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(310f + 1187f), _wgslsmith_f_op_f32(1470f - -504f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(727f)) + _wgslsmith_div_f32(1805f, 235f)))));
    var var_1 = firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, global1.x, 63019i, u_input.b)), abs(vec4<i32>(var_0.a.a, 1050i, -2147483647i, var_0.a.a)), vec4<i32>(-1i) * -vec4<i32>(0i, global1.x, var_0.a.a, 0i))));
    var_0 = Struct_3(global2[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - 287f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, 1095f) * var_0.c), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.c.x, var_0.c.x), vec2<f32>(1620f, var_0.c.x))))))), vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.c.x)), var_0.b)));
    global1 = ~var_1.yww;
    var var_2 = min(min(1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 4440u, u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(48203u, 4294967295u, 0u, 0u), vec4<u32>(1u, u_input.c, u_input.c, 3361u))) % 32u), u_input.a), 0u);
    return ~_wgslsmith_clamp_u32(firstLeadingBit(abs(u_input.c)) >> (u_input.a % 32u), 63111u, 465u);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_4(_wgslsmith_mod_i32(-9250i << (~(~u_input.c) % 32u), -2147483647i), Struct_2(-22044i), Struct_2(arg_0.x), ~(~vec2<u32>(1u, 1u)) | vec2<u32>(0u, u_input.a), Struct_2(~1i));
    var var_1 = var_0.e;
    global2 = array<Struct_2, 22>();
    var var_2 = ~(~57164u);
    global4 = array<vec3<u32>, 21>();
    return _wgslsmith_sub_u32(~_wgslsmith_add_u32(u_input.a, 4294967295u), ~_wgslsmith_sub_u32(func_3(), min(var_0.d.x, 0u) << (_wgslsmith_mod_u32(var_0.d.x, u_input.c) % 32u)));
}

fn func_4(arg_0: u32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(317f, _wgslsmith_f_op_f32(-479f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1306f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(329f - -1264f) + _wgslsmith_f_op_f32(f32(-1f) * -412f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(533f, -1194f, 1000f) * vec3<f32>(947f, -783f, -1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-533f, -205f, -1481f), vec3<f32>(523f, 427f, 944f), false)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1639f, 458f, -839f) * vec3<f32>(-467f, -892f, 241f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(503f, -1746f, 1518f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-212f, -553f, -193f))))))));
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(~arg_0 << (_wgslsmith_div_u32(~(arg_0 | 64691u), firstTrailingBit(arg_0)) % 32u), 22u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(round(var_0.x))), ~u_input.a <= ~5945u)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.zx * var_0.zy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1203f, var_0.x) * vec2<f32>(-201f, var_0.x))), any(vec3<bool>(true, true, false)))))));
    let var_2 = Struct_4(u_input.b, var_1.a, Struct_2(-26274i), abs(~firstLeadingBit(vec2<u32>(u_input.a, arg_0) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), global2[_wgslsmith_index_u32(arg_0, 22u)]);
    let var_3 = _wgslsmith_f_op_f32(-var_0.x);
    global0 = array<Struct_1, 16>();
    return Struct_4(countOneBits(1i), global2[_wgslsmith_index_u32(~select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1652u), vec2<u32>(var_2.d.x, 0u)) | 22792u, var_2.d.x, any(vec3<bool>(true, true, true))), 22u)], Struct_2(countOneBits(1i)), min(vec2<u32>(var_2.d.x, arg_0), abs(_wgslsmith_div_vec2_u32(select(vec2<u32>(41688u, u_input.c), var_2.d, true), vec2<u32>(50538u, u_input.a)))), global2[_wgslsmith_index_u32(min(~(~select(1u, u_input.a, false)), _wgslsmith_dot_vec4_u32(countOneBits(max(vec4<u32>(u_input.c, 27457u, 62567u, arg_0), vec4<u32>(14816u, u_input.c, var_2.d.x, arg_0))), abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, arg_0, 30664u, 39408u), vec4<u32>(1u, var_2.d.x, arg_0, u_input.a))))), 22u)]);
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = func_4(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a ^ 4294967295u, _wgslsmith_div_u32(1u, 1u)), func_2(vec3<i32>(_wgslsmith_mod_i32(global1.x, 1i), -735i, 29357i | global1.x), 143f, all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), global0[_wgslsmith_index_u32(~1u, 16u)])));
    global0 = array<Struct_1, 16>();
    let var_1 = vec2<i32>(_wgslsmith_sub_i32(-(global1.x >> (u_input.a % 32u)), i32(-1i) * -1624i), u_input.b) & select(global3[_wgslsmith_index_u32(11948u, 10u)], select(vec2<i32>(~global1.x, abs(2147483647i)), -(~global1.yy), true), select(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_sub_u32(u_input.a, 37251u) <= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, var_0.d.x), vec3<u32>(1u, var_0.d.x, 51028u)), _wgslsmith_sub_u32(71743u, 4270u) >= ~var_0.d.x));
    let var_2 = Struct_3(var_0.e, 800f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)) + vec2<f32>(-706f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1845f, -1307f)))));
    var var_3 = Struct_4(_wgslsmith_mult_i32(var_0.a, 45775i), global2[_wgslsmith_index_u32(0u, 22u)], func_4(u_input.a << (abs(_wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(72107u, 21u)], vec3<u32>(var_0.d.x, u_input.a, 70554u))) % 32u)).c, func_4(_wgslsmith_mult_u32(max(22610u, select(28643u, 0u, false)), 43209u)).d, Struct_2(select(~var_1.x, var_0.e.a, any(vec4<bool>(true, false, false, false)))));
    return func_4(firstLeadingBit(~_wgslsmith_add_u32(1u, ~17968u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(887f);
    let var_1 = _wgslsmith_sub_vec3_i32(-(~(vec3<i32>(-44193i, u_input.b, 0i) << (global4[_wgslsmith_index_u32(0u, 21u)] % vec3<u32>(32u)))) << (countOneBits(~abs(global4[_wgslsmith_index_u32(42918u, 21u)])) % vec3<u32>(32u)), vec3<i32>(2701i, ~(-21031i >> (1u % 32u)), max((u_input.b ^ 2147483647i) ^ _wgslsmith_div_i32(12565i, -8250i), ~var_0.a)));
    var var_2 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.b, u_input.b, u_input.b, 1i)), abs(vec4<i32>(1i, -16154i, var_1.x, var_1.x))), -(vec4<i32>(-1i, 2147483647i, -1i, -1i) >> (vec4<u32>(0u, 1u, 4294967295u, u_input.c) % vec4<u32>(32u)))), 1i));
    let var_3 = 1u == ~_wgslsmith_sub_u32(reverseBits(_wgslsmith_add_u32(var_0.d.x, 11518u)), 59258u & ~u_input.a);
    var var_4 = Struct_3(func_4(_wgslsmith_div_u32(0u, func_3())).e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1571f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(617f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1870f, 396f), _wgslsmith_f_op_f32(f32(-1f) * -554f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-874f * -504f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-910f, _wgslsmith_f_op_f32(-1621f * 1109f)))));
    var var_5 = abs(min(~abs(abs(vec4<u32>(u_input.c, u_input.a, u_input.a, 48313u))), abs(vec4<u32>(reverseBits(var_0.d.x), _wgslsmith_mod_u32(u_input.c, 94347u), abs(35834u), 4294967295u))));
    let var_6 = var_0;
    let var_7 = global2[_wgslsmith_index_u32(~(~50786u), 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b >> (0u % 32u), 60552u);
}

