struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(1525f, -1000f, -984f), vec3<f32>(1102f, -814f, -996f), vec3<f32>(853f, 415f, -1784f), vec3<f32>(148f, -1000f, 1000f), vec3<f32>(-887f, -1185f, -410f), vec3<f32>(-689f, 299f, -932f), vec3<f32>(-272f, -521f, 1029f), vec3<f32>(276f, -1000f, 1000f));

var<private> global1: array<vec3<i32>, 8>;

var<private> global2: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(-21054i, -1i, 0i, 1i), vec4<i32>(-6623i, 1i, -17570i, -82718i), vec4<i32>(0i, 0i, i32(-2147483648), 2147483647i), vec4<i32>(-34212i, -1i, 6040i, 36520i), vec4<i32>(10800i, -21979i, 0i, -1i), vec4<i32>(1i, 38639i, 2147483647i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, -27121i, 0i), vec4<i32>(3505i, 16974i, 31553i, 2147483647i), vec4<i32>(11850i, -1033i, -1i, 0i), vec4<i32>(-6088i, 2147483647i, 2147483647i, 15318i), vec4<i32>(-23185i, i32(-2147483648), 2147483647i, 8791i), vec4<i32>(-30434i, -1i, 49135i, 19440i), vec4<i32>(-3166i, 32488i, i32(-2147483648), 1i), vec4<i32>(37677i, -27661i, 33144i, 1i), vec4<i32>(i32(-2147483648), -82004i, -1i, -42661i), vec4<i32>(-1i, i32(-2147483648), 1i, 0i), vec4<i32>(32940i, 7258i, -17467i, i32(-2147483648)), vec4<i32>(-8145i, 19580i, -31336i, -1i), vec4<i32>(39371i, 2147483647i, -1i, -34313i), vec4<i32>(-55895i, 1i, -41390i, -1i));

var<private> global3: i32;

var<private> global4: vec2<u32> = vec2<u32>(0u, 48542u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: u32) -> u32 {
    var var_0 = vec3<bool>(true, arg_0.e.x, true);
    var var_1 = Struct_1(arg_0.a, max(1u, arg_3), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~4294967295u, 8u)]), 2147483647i, arg_0.e);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c.x, var_1.c.x)))) == 225f, global4.x, vec3<f32>(_wgslsmith_f_op_f32(select(-458f, 1f, all(select(vec3<bool>(var_1.e.x, var_0.x, true), vec3<bool>(var_0.x, false, false), arg_1.e)))), _wgslsmith_f_op_f32(f32(-1f) * -1734f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), 2147483647i, !arg_0.e);
    var var_3 = select(!vec3<bool>(false, u_input.c.x == -arg_1.d, false), vec3<bool>(var_1.a, var_1.a, var_0.x && select(var_1.a, !var_2.a, !arg_0.e.x)), var_2.e.x && false);
    global3 = ~(-4866i);
    return 1u;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global4 = vec2<u32>(global4.x, ~(_wgslsmith_div_u32(16424u, global4.x) >> (func_3(Struct_1(arg_2, 69392u, vec3<f32>(-1352f, -255f, arg_0), 10973i, vec3<bool>(false, true, true)), arg_1, u_input.b, 25479u << (u_input.b.x % 32u)) % 32u)));
    var var_0 = arg_1;
    global2 = array<vec4<i32>, 20>();
    global1 = array<vec3<i32>, 8>();
    let var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(55219u, var_0.b, 0u, 4294967295u), vec4<u32>(6361u, global4.x, 1u, arg_1.b)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, var_0.b, 4294967295u, 18926u), vec4<u32>(109268u, 0u, 0u, 4294967295u)), ~u_input.b.x, _wgslsmith_mult_u32(~1u, ~u_input.b.x), ~17605u), vec4<u32>(4294967295u, 1u, 0u, _wgslsmith_clamp_u32(arg_1.b, arg_1.b >> (0u % 32u), global4.x))), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 16215u, global4.x, 0u) & vec4<u32>(1u, 0u, u_input.b.x, 4294967295u), vec4<u32>(min(7438u, var_0.b), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), u_input.b.x & 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), u_input.b)))));
    return Struct_1(true, ~_wgslsmith_sub_u32(reverseBits(1u), ~_wgslsmith_clamp_u32(u_input.b.x, 26471u, var_0.b)), vec3<f32>(662f, var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -710f)), ~1i, vec3<bool>(~(25358u & arg_1.b) <= var_0.b, 1f <= _wgslsmith_f_op_f32(abs(arg_0)), var_0.d >= ~(-7859i)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> bool {
    let var_0 = 20497u;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-208f))), arg_1.c.x);
    let var_2 = arg_1;
    global0 = array<vec3<f32>, 8>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-583f, 616f))), 575f);
    return false;
}

fn func_1(arg_0: f32) -> Struct_1 {
    return Struct_1(func_4(true, func_2(_wgslsmith_f_op_f32(arg_0 - -640f), Struct_1(false, global4.x, vec3<f32>(arg_0, 1128f, arg_0), u_input.e.x, vec3<bool>(false, true, true)), global4.x < u_input.b.x), true, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, u_input.d, u_input.e.x), vec3<i32>(u_input.c.x, 1i, u_input.e.x) ^ global1[_wgslsmith_index_u32(u_input.b.x, 8u)], max(vec3<i32>(-3331i, -86380i, u_input.a), vec3<i32>(12559i, 55136i, u_input.c.x)))) | (true && func_4(true, Struct_1(true, global4.x, vec3<f32>(arg_0, 1330f, -1000f), -2147483647i, vec3<bool>(false, true, false)), false, ~global1[_wgslsmith_index_u32(0u, 8u)])), ~global4.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(global4.x, 8u)]) - vec3<f32>(arg_0, 251f, arg_0)), global0[_wgslsmith_index_u32(4294967295u >> (func_3(Struct_1(false, 27532u, global0[_wgslsmith_index_u32(global4.x, 8u)], 41875i, vec3<bool>(false, false, false)), Struct_1(true, 1u, global0[_wgslsmith_index_u32(18070u, 8u)], -1i, vec3<bool>(true, true, false)), u_input.b, 0u) % 32u), 8u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, abs(vec2<u32>(u_input.b.x, u_input.b.x))), 8u)], vec3<bool>((1793f >= arg_0) | true, true, true))), -_wgslsmith_add_i32(36624i, ~_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(475i, -13852i, u_input.a))), vec3<bool>(true, false, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 317f;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-508f - 303f), _wgslsmith_f_op_f32(trunc(716f)))), 2127f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, var_0, var_0), vec3<f32>(var_0, 872f, -1039f), vec3<bool>(false, true, false))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, 768f, -493f), vec3<f32>(-405f, -744f, -2355f), vec3<bool>(true, false, true))))))));
    var var_2 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, 252f)) + 956f));
    global2 = array<vec4<i32>, 20>();
    var var_3 = var_2.e.zy;
    var var_4 = Struct_1(!var_3.x, u_input.b.x, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1058f, var_1.x, false))), _wgslsmith_f_op_f32(-var_0)))), u_input.d, vec3<bool>(any(func_2(-1000f, Struct_1(var_2.e.x, u_input.b.x, var_2.c, var_2.d, var_2.e), any(var_2.e.zx)).e), all(select(!vec4<bool>(true, var_3.x, true, false), vec4<bool>(true, true, var_3.x, var_3.x), true || var_3.x)), var_3.x));
    let var_5 = firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(~(~u_input.b.x), ~var_2.b & (var_2.b << (u_input.b.x % 32u))), global4.x));
    global0 = array<vec3<f32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(1415f, 444f, var_0) * var_2.c));
}

