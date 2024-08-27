struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: vec3<i32> = vec3<i32>(33453i, -46986i, 0i);

var<private> global2: array<i32, 28>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = Struct_1(select(select(select(select(arg_2.a, vec2<bool>(true, arg_0.b.x), vec2<bool>(false, arg_2.a.x)), !vec2<bool>(arg_2.a.x, arg_2.a.x), arg_2.a), vec2<bool>(true, true), true), vec2<bool>(true, true), true), global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(31755u, 39218u) & _wgslsmith_sub_u32(u_input.b.x, 4294967295u)), 28u)] << (~max(u_input.b.x >> (u_input.b.x % 32u), u_input.e.x) % 32u), _wgslsmith_f_op_f32(min(1241f, arg_1.x)));
    var_0 = arg_0.a;
    let var_1 = firstLeadingBit(u_input.b);
    var_0 = arg_0.e;
    var var_2 = -_wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(1i, 0i, var_0.b)), firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b, global2[_wgslsmith_index_u32(var_1.x, 28u)], -2147483647i), vec3<i32>(arg_0.a.b, arg_0.e.b, global0[_wgslsmith_index_u32(88334u, 25u)]), vec3<i32>(67434i, global2[_wgslsmith_index_u32(var_1.x, 28u)], global2[_wgslsmith_index_u32(var_1.x, 28u)])) << (~vec3<u32>(u_input.a, 0u, var_1.x) % vec3<u32>(32u))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-768f + arg_2.b.x), -302f, !(var_0.b <= 0i)))), 2054f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<u32>) -> f32 {
    var var_0 = Struct_3(Struct_1(vec2<bool>(false, any(vec2<bool>(true, true))), global2[_wgslsmith_index_u32(41168u, 28u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -637f))), -937f)), vec4<bool>(any(vec3<bool>(false, true, arg_0)), true, arg_0, !(arg_0 && true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(765f, -1285f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -759f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -719f)), 328f, false)), -1587f), select(!select(select(vec2<bool>(false, true), vec2<bool>(false, arg_0), arg_0), vec2<bool>(true, true), true), vec2<bool>(all(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, arg_0), false)), true), any(vec3<bool>(any(vec2<bool>(false, false)), true, -1i > arg_1.x))), Struct_1(select(select(select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, arg_0), vec2<bool>(arg_0, false))), select(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), arg_0), vec2<bool>(true, true), arg_0), arg_0), global2[_wgslsmith_index_u32(27714u, 28u)], 521f));
    var_0 = Struct_3(var_0.a, var_0.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c * 1374f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-183f - 1693f))))), _wgslsmith_f_op_f32(ceil(-1226f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.c, var_0.e.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(625f)) - 1f))), vec2<bool>(any(var_0.d), var_0.e.a.x), var_0.e);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.x, firstLeadingBit(u_input.b.x)), 28u)];
    let var_2 = select(!select(vec2<bool>(var_0.a.a.x | var_0.a.a.x, var_0.a.a.x), !var_0.e.a, true), !select(var_0.d, select(!vec2<bool>(arg_0, true), var_0.e.a, true), var_0.e.a), var_0.b.x);
    var_1 = var_0.a.b;
    return _wgslsmith_f_op_f32(var_0.c.x * -596f);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_2) -> vec3<i32> {
    global1 = abs(vec3<i32>(global1.x, 1i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.x, -29180i), vec2<i32>(arg_1.x, global1.x)), vec2<i32>(global0[_wgslsmith_index_u32(u_input.e.x, 25u)], -7517i)))) >> (vec3<u32>(u_input.d, max(max(~u_input.e.x, u_input.e.x), ~393u), countOneBits(1897u)) % vec3<u32>(32u));
    let var_0 = vec3<bool>(any(!vec2<bool>(arg_3.a.x | true, arg_3.a.x)), !((false & arg_3.a.x) | false), !all(vec4<bool>(false, u_input.d != u_input.d, false, arg_3.a.x)));
    var var_1 = Struct_1(arg_3.a, _wgslsmith_dot_vec3_i32(arg_1, ~(-arg_1) | ~firstTrailingBit(vec3<i32>(global1.x, 40216i, -1i))), arg_0.x);
    global2 = array<i32, 28>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x))));
    return ~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.b, -2147483647i, arg_1.x), -arg_1), var_1.b, 2147483647i), arg_1);
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    global1 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-779f * 497f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(414f - 524f) + 1f), _wgslsmith_f_op_f32(-1349f - _wgslsmith_f_op_f32(1000f - -1228f)))), -_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global1.x, 1i), vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.a, 25u)], global2[_wgslsmith_index_u32(arg_0.x, 28u)])) >> ((arg_0.wzw ^ vec3<u32>(47049u, u_input.b.x, arg_0.x)) % vec3<u32>(32u)), abs(vec3<i32>(2148i, -11860i, 0i)) << (~u_input.b.xxw % vec3<u32>(32u))), _wgslsmith_f_op_f32(floor(-441f)), Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-542f, _wgslsmith_f_op_f32(func_3(false, vec4<i32>(-1i, 0i, 40131i, global2[_wgslsmith_index_u32(0u, 28u)]), vec3<u32>(1u, 36525u, 4294967295u))), 286f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-628f, 319f, -859f) + vec3<f32>(276f, -480f, 2830f)))));
    let var_0 = any(vec2<bool>(any(vec2<bool>(true, all(vec4<bool>(true, true, true, false)))), all(vec2<bool>(true, true))));
    let var_1 = Struct_2(!vec2<bool>(any(!vec4<bool>(true, var_0, true, var_0)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(630f, -1838f, -545f)))))));
    global2 = array<i32, 28>();
    var var_2 = Struct_1(vec2<bool>(!all(vec2<bool>(true, false)), select(var_0, var_0, var_1.a.x)), 1i, _wgslsmith_f_op_f32(floor(-281f)));
    return 16242i;
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: u32) -> i32 {
    let var_0 = Struct_3(Struct_1(vec2<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), true)), true), arg_1, arg_0.x), select(!vec4<bool>(true, true, arg_0.x >= 2065f, false), vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), true, any(vec4<bool>(true, true, false, false)), any(vec4<bool>(true, true, true, true))), true), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1730f, arg_0.x, arg_0.x, arg_0.x))), vec4<f32>(_wgslsmith_f_op_f32(1432f + -916f), arg_0.x, 828f, -2279f), true)))), vec2<bool>(true || select(false, true, global0[_wgslsmith_index_u32(u_input.e.x, 25u)] != global1.x), true | (u_input.b.x > min(57368u, 103223u))), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, arg_2 > 0u), true), reverseBits(global1.x) | ~(-63677i), arg_0.x));
    var var_1 = var_0.a.a;
    global0 = array<i32, 25>();
    global2 = array<i32, 28>();
    global2 = array<i32, 28>();
    return _wgslsmith_mod_i32(~(-44835i), (_wgslsmith_mult_i32(_wgslsmith_clamp_i32(36989i, var_0.e.b, -5328i), 20757i << (0u % 32u)) >> (4294967295u % 32u)) | _wgslsmith_sub_i32(-1i, ~(-24702i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec2<i32>(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(Struct_1(vec2<bool>(true, false), global1.x, -830f), vec4<bool>(false, true, true, false), vec4<f32>(-598f, 844f, -1784f, -280f), vec2<bool>(true, false), Struct_1(vec2<bool>(true, true), global0[_wgslsmith_index_u32(51459u, 25u)], 1981f)), vec4<f32>(501f, 1000f, -1564f, 1000f), Struct_2(vec2<bool>(false, false), vec3<f32>(-418f, 275f, -605f)))) + _wgslsmith_f_op_vec3_f32(func_1(Struct_3(Struct_1(vec2<bool>(false, false), -39786i, 184f), vec4<bool>(false, true, true, true), vec4<f32>(-127f, 1654f, -409f, 1000f), vec2<bool>(true, true), Struct_1(vec2<bool>(false, false), 58189i, -1388f)), vec4<f32>(-130f, 509f, 337f, -1839f), Struct_2(vec2<bool>(true, true), vec3<f32>(-1770f, -983f, 479f))))), func_2(vec4<u32>(1u, 3965u, u_input.b.x, 19644u)), _wgslsmith_mult_u32(4294967295u, u_input.d)), global0[_wgslsmith_index_u32(reverseBits(u_input.d), 25u)]));
    global2 = array<i32, 28>();
    var var_1 = ~58783u | u_input.c;
    var_1 = u_input.d;
    let var_2 = Struct_4(select(vec3<bool>(true, true, all(vec3<bool>(false, true, true))), select(vec3<bool>(true, all(vec2<bool>(true, false)), any(vec4<bool>(false, false, false, true))), vec3<bool>(true, true, all(vec2<bool>(true, true))), vec3<bool>(true, true, all(vec3<bool>(false, true, false)))), true), select(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, 2147483647i, -1i), vec3<i32>(global1.x, -9282i, 11890i), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], var_0.x, -1i)), -vec3<i32>(global2[_wgslsmith_index_u32(27155u, 28u)], global0[_wgslsmith_index_u32(u_input.e.x, 25u)], global2[_wgslsmith_index_u32(u_input.a, 28u)])), 1i, -2147483647i), -vec3<i32>(global2[_wgslsmith_index_u32(u_input.e.x, 28u)], global1.x, firstTrailingBit(0i)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), true)));
    global2 = array<i32, 28>();
    let var_3 = Struct_2(!select(!select(var_2.a.yz, vec2<bool>(var_2.a.x, var_2.a.x), var_2.a.yx), select(var_2.a.zx, var_2.a.xy, !var_2.a.x), vec2<bool>(true, var_2.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2004f, _wgslsmith_div_f32(315f, 468f), 1498f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-432f, -687f, -735f)))));
    var var_4 = select(1u, _wgslsmith_mult_u32(u_input.e.x, u_input.b.x), any(select(vec4<bool>(false, var_2.a.x, true, !var_3.a.x), select(vec4<bool>(true, var_3.a.x, true, var_3.a.x), select(vec4<bool>(true, var_3.a.x, false, true), vec4<bool>(true, true, false, false), vec4<bool>(var_2.a.x, true, true, var_3.a.x)), var_3.a.x & false), select(select(vec4<bool>(true, var_3.a.x, var_3.a.x, false), vec4<bool>(true, false, true, var_3.a.x), vec4<bool>(var_3.a.x, true, false, var_3.a.x)), vec4<bool>(var_3.a.x, true, var_3.a.x, var_3.a.x), false))));
    var var_5 = Struct_3(Struct_1(vec2<bool>(true, any(vec4<bool>(false, var_3.a.x, false, var_3.a.x))), -func_2(~u_input.b), var_3.b.x), vec4<bool>(false, true, select(all(vec3<bool>(false, true, var_2.a.x)), true, true), true), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, var_3.b.x, 139f, -585f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, var_3.b.x, 1204f, -1000f))), vec4<f32>(1781f, var_3.b.x, var_3.b.x, -1858f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(365f, -1056f, var_3.b.x, var_3.b.x)))))), select(vec2<bool>(var_2.a.x, var_3.a.x), vec2<bool>(true && (u_input.b.x >= 0u), var_3.a.x), false), Struct_1(select(var_2.a.xz, var_3.a, true), global0[_wgslsmith_index_u32(u_input.c, 25u)], var_3.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-466f, _wgslsmith_div_vec2_f32(vec2<f32>(378f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2060f))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_5.e.c * -1000f), _wgslsmith_f_op_f32(-var_5.c.x), true)), _wgslsmith_f_op_f32(-2005f * _wgslsmith_f_op_f32(var_3.b.x * var_3.b.x)))), 2147483647i);
}

