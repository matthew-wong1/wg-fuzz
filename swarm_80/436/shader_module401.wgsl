struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(50685u, 0u, 1u), vec3<u32>(1u, 1u, 54966u), vec3<u32>(42140u, 1u, 30077u), vec3<u32>(0u, 0u, 1u), vec3<u32>(4294967295u, 49500u, 92331u), vec3<u32>(0u, 83115u, 4294967295u), vec3<u32>(4294967295u, 1u, 40907u), vec3<u32>(1u, 9701u, 15428u), vec3<u32>(38327u, 1u, 16924u), vec3<u32>(0u, 5515u, 0u), vec3<u32>(4294967295u, 4294967295u, 12992u));

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 0u, 3227u, 4294967295u);

var<private> global2: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-660f, -211f, 381f), vec3<f32>(-791f, -777f, -1043f), vec3<f32>(-479f, -1094f, -234f), vec3<f32>(-1372f, -609f, -1000f), vec3<f32>(1000f, -1264f, 1114f), vec3<f32>(234f, -1836f, 743f), vec3<f32>(-609f, -602f, -443f), vec3<f32>(-348f, 560f, -668f), vec3<f32>(290f, -1159f, 361f), vec3<f32>(163f, -1000f, 380f), vec3<f32>(-121f, 1000f, -129f), vec3<f32>(-102f, 1362f, 1440f), vec3<f32>(753f, -868f, 580f), vec3<f32>(-1000f, 932f, 1000f), vec3<f32>(564f, 749f, -452f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(216f - 1000f), _wgslsmith_f_op_f32(-271f - -565f), -979f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1533f, 447f, 908f)) - vec3<f32>(-1171f, 1653f, -2093f))) * global2[_wgslsmith_index_u32(((global1.x ^ u_input.b.x) >> (_wgslsmith_mod_u32(69136u, global1.x) % 32u)) | _wgslsmith_mod_u32(0u | u_input.b.x, global1.x), 15u)]));
    global1 = u_input.b;
    global1 = ~_wgslsmith_mult_vec4_u32(~(~_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(global1.x, u_input.b.x, global1.x, 58965u))), vec4<u32>(1u, abs(~u_input.b.x), _wgslsmith_dot_vec2_u32(min(global1.yw, vec2<u32>(global1.x, 18374u)), _wgslsmith_mod_vec2_u32(u_input.b.xw, vec2<u32>(u_input.b.x, global1.x))), firstLeadingBit(1u)));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(sign(var_0.x)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(round(var_0.x)))), true);
    let var_2 = vec2<i32>(-u_input.a, u_input.a << (global1.x % 32u)) << (vec2<u32>(0u, ~(u_input.b.x ^ global1.x) | _wgslsmith_mod_u32(abs(69549u), ~global1.x)) % vec2<u32>(32u));
    return ~(~(u_input.b | ~(vec4<u32>(7476u, 4294967295u, u_input.b.x, 4294967295u) ^ u_input.b)));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: i32) -> vec4<f32> {
    global0 = array<vec3<u32>, 11>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -211f), -1041f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(265f)), 1285f)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1329f, -479f), vec2<f32>(151f, 459f), false)), vec2<f32>(648f, 118f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-171f, 1216f)))))))), all(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(7577u, 15u)]) * global2[_wgslsmith_index_u32(arg_1.x, 15u)]), _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(~52548u, 15u)] + _wgslsmith_f_op_vec3_f32(round(global2[_wgslsmith_index_u32(arg_1.x, 15u)]))))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1132f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1384f + -1071f), _wgslsmith_f_op_f32(trunc(var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))));
    var var_2 = 0u;
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1825f, -240f)), _wgslsmith_f_op_f32(abs(2785f)), !var_0.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(ceil(1f)))), var_1.zx, var_0.c);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_1.x, -182f, -950f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.x, 888f, -1286f, var_0.b.x), vec4<f32>(-266f, -485f, var_0.a, var_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1426f, var_0.a, 1421f, var_1.x))))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-360f - var_1.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-885f + -1029f), -361f)), var_0.b.x, -197f, var_1.x));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1622f, 2089f, arg_3.b.x, -792f), vec4<f32>(-299f, 1866f, 1606f, -964f))) * vec4<f32>(arg_3.b.x, arg_3.a, -1949f, arg_3.b.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_3.a, -552f, 306f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(760f, 869f, 690f, arg_3.b.x), vec4<f32>(arg_3.b.x, 1619f, arg_3.a, arg_3.b.x), vec4<bool>(false, arg_2.x, false, arg_0))))), vec4<f32>(1166f, _wgslsmith_f_op_f32(abs(arg_3.a)), arg_3.a, arg_3.b.x))));
    var var_1 = arg_3;
    global2 = array<vec3<f32>, 15>();
    var var_2 = arg_3;
    var_0 = _wgslsmith_f_op_vec4_f32(func_4(-arg_1.x, func_3(), -42966i));
    return -556f;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global2 = array<vec3<f32>, 15>();
    global2 = array<vec3<f32>, 15>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1096f, -1652f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(532f))), arg_0.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-166f, _wgslsmith_f_op_f32(func_2(true, vec2<i32>(u_input.a, u_input.a), vec3<bool>(false, false, false), Struct_1(-1000f, arg_0, true))), _wgslsmith_f_op_f32(-arg_0.x), 1f), vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.x, 820f)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(select(1255f, arg_0.x, true)), _wgslsmith_f_op_f32(max(-1058f, 703f))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), arg_0, !(!any(vec2<bool>(true, true))));
    let var_2 = select(vec3<bool>(var_1.c, var_1.c, all(vec3<bool>(var_1.c & true, var_1.c | true, false))), vec3<bool>(any(!vec3<bool>(false, true, var_1.c)), _wgslsmith_f_op_f32(var_1.a * 444f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), !var_1.c), var_1.c);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1294f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-677f)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.b), _wgslsmith_f_op_vec4_f32(func_4(u_input.a | ~u_input.a, u_input.b, select(u_input.a, 58574i, 42096i <= u_input.a))).zy)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 11>();
    global0 = array<vec3<u32>, 11>();
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -421f)), -291f) * vec2<f32>(_wgslsmith_f_op_f32(449f + _wgslsmith_f_op_f32(1128f * 1168f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1082f, -853f))))));
    global2 = array<vec3<f32>, 15>();
    var var_1 = firstTrailingBit(min(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, -8153i) | vec4<i32>(u_input.a, u_input.a, -41857i, 0i), vec4<i32>(min(u_input.a, 2147483647i), -30308i >> (u_input.b.x % 32u), -5205i << (u_input.b.x % 32u), _wgslsmith_mult_i32(0i, 6937i))), vec4<i32>(_wgslsmith_sub_i32(u_input.a, -u_input.a), ~u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -42199i, 18458i, 32406i), vec4<i32>(1i, 10235i, u_input.a, u_input.a), vec4<i32>(-1i, u_input.a, 1i, u_input.a)), vec4<i32>(u_input.a, u_input.a, -1i, 22522i)), min(min(u_input.a, u_input.a), firstTrailingBit(u_input.a)))));
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, ~countOneBits(abs(global1.x)), 4294967295u, _wgslsmith_add_u32(~6318u, ~global1.x)), _wgslsmith_mult_vec4_u32(~u_input.b, ~_wgslsmith_mult_vec4_u32(select(u_input.b, vec4<u32>(global1.x, u_input.b.x, global1.x, global1.x), var_0.c), u_input.b)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) * -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-209f, var_0.a) - var_0.b), var_0.c | all(select(!vec4<bool>(true, var_0.c, var_0.c, true), !vec4<bool>(var_0.c, var_0.c, false, false), var_0.c)));
    var var_4 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(var_0.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)))));
    global0 = array<vec3<u32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, ~u_input.b.zz);
}

