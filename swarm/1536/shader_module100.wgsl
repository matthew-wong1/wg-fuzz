struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(46253u, 12875u, 657u, 41114u), vec4<u32>(26832u, 39018u, 0u, 4294967295u), vec4<u32>(41828u, 4294967295u, 1u, 45646u), vec4<u32>(65942u, 4294967295u, 51701u, 0u), vec4<u32>(43676u, 0u, 119514u, 43099u), vec4<u32>(0u, 73291u, 74287u, 0u), vec4<u32>(4294967295u, 24462u, 0u, 62541u), vec4<u32>(14772u, 0u, 1u, 4294967295u), vec4<u32>(99234u, 0u, 81085u, 4294967295u), vec4<u32>(0u, 0u, 38545u, 4294967295u), vec4<u32>(27698u, 70922u, 15652u, 16825u), vec4<u32>(0u, 1596u, 2716u, 9892u), vec4<u32>(1u, 4294967295u, 107009u, 91200u), vec4<u32>(54077u, 138507u, 0u, 4294967295u), vec4<u32>(0u, 0u, 61739u, 47408u), vec4<u32>(4294967295u, 0u, 1u, 19489u), vec4<u32>(7970u, 17244u, 1u, 1u), vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(0u, 4294967295u, 19581u, 28741u), vec4<u32>(0u, 26442u, 4294967295u, 4294967295u), vec4<u32>(34135u, 0u, 12030u, 1u), vec4<u32>(39597u, 0u, 1u, 54032u), vec4<u32>(40123u, 0u, 50724u, 51524u), vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(10135u, 4294967295u, 0u, 0u), vec4<u32>(55342u, 79149u, 18947u, 0u), vec4<u32>(65615u, 28419u, 0u, 15051u), vec4<u32>(4294967295u, 26601u, 1u, 0u));

var<private> global1: array<Struct_2, 7>;

var<private> global2: vec2<u32>;

var<private> global3: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-781f, -443f, -249f), vec3<f32>(-1000f, 369f, -1000f), vec3<f32>(751f, 1000f, -1289f), vec3<f32>(-1076f, -1287f, -241f), vec3<f32>(534f, -2116f, 731f), vec3<f32>(-1000f, 858f, 394f));

var<private> global4: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(924u, 42309u, 14616u, 12386u), vec4<u32>(42065u, 52504u, 4294967295u, 64312u), vec4<u32>(32447u, 20162u, 52849u, 30959u), vec4<u32>(107543u, 14910u, 4294967295u, 9395u), vec4<u32>(4294967295u, 64543u, 18640u, 5140u), vec4<u32>(0u, 382u, 1u, 4294967295u), vec4<u32>(4294967295u, 37057u, 1u, 33760u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32((global2.x >> (~1u % 32u)) & 59770u, ~u_input.b.x), 7u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(arg_0.a, -1847f), 151f, var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(216f - -1000f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-796f, -120f, _wgslsmith_f_op_f32(1277f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(856f - arg_0.a), _wgslsmith_f_op_f32(sign(-632f)), 4294967295u < u_input.b.x))), arg_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, 230f, 1225f, var_1.x))))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2196f)) * _wgslsmith_f_op_f32(min(-876f, var_2.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1456f, arg_0.a)), -1857f))));
    var var_4 = Struct_3(var_2.wz, max(-3097i, 0i));
    return select(vec4<bool>(true, any(select(!vec3<bool>(var_0.a.b.x, var_0.a.b.x, true), vec3<bool>(true, arg_0.b.x, arg_0.b.x), !arg_0.b.x)), !select(false, true, !arg_0.b.x), false), select(vec4<bool>(var_0.a.b.x, false, true, arg_0.b.x), !vec4<bool>(var_1.x > var_2.x, var_0.a.b.x || true, true, true), arg_0.b), select(!vec4<bool>(true, any(arg_0.b.zyz), !arg_0.b.x, any(vec2<bool>(arg_0.b.x, true))), select(vec4<bool>(arg_0.b.x, 0u < global2.x, !arg_0.b.x, arg_0.b.x && var_0.a.b.x), arg_0.b, (var_0.a.a < var_4.a.x) != true), _wgslsmith_dot_vec2_u32(u_input.b & u_input.b, min(u_input.b, u_input.b)) == global2.x));
}

fn func_2() -> vec4<u32> {
    let var_0 = func_3(Struct_1(1331f, vec4<bool>(true, true, true, true)));
    var var_1 = var_0.x;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-337f + -285f) - 281f), 386f)), var_0));
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(23999i, u_input.a.x), u_input.a.x, -43361i, u_input.a.x), vec4<i32>(_wgslsmith_sub_i32(-59473i, u_input.a.x), u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 19755i, -1i), vec4<i32>(1i, u_input.a.x, u_input.a.x, -36914i)))), u_input.a.x) & u_input.a.x;
    let var_4 = global1[_wgslsmith_index_u32(76837u, 7u)];
    return vec4<u32>(firstTrailingBit(~global2.x), 0u, reverseBits(~1u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(34612u), ~u_input.b.x, ~global2.x, u_input.b.x), firstTrailingBit(global4[_wgslsmith_index_u32(~36269u, 7u)]))));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_5) -> f32 {
    var var_0 = 77942i;
    var var_1 = select(~func_2(), global0[_wgslsmith_index_u32(global2.x, 28u)], arg_2.a.a.b);
    var var_2 = arg_3.a.x;
    var_1 = func_2();
    var_1 = vec4<u32>(~arg_0, 6038u, ~_wgslsmith_clamp_u32(var_1.x, ~27172u, abs(var_1.x) ^ _wgslsmith_sub_u32(4294967295u, 2181u)), 59221u);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-893f + arg_1.x), arg_2.b.a.a, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(248f - -117f))), _wgslsmith_f_op_f32(select(198f, -111f, true)), 1u <= global2.x)) + 985f), _wgslsmith_f_op_f32(-479f * _wgslsmith_f_op_f32(171f + _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(func_1(global2.x, vec2<f32>(-384f, 388f), Struct_4(global1[_wgslsmith_index_u32(1u, 7u)], Struct_2(Struct_1(1000f, vec4<bool>(false, false, false, true))), vec4<f32>(-1990f, 183f, -480f, -555f), vec3<bool>(false, true, true)), Struct_5(vec2<i32>(3380i, u_input.a.x), u_input.a))))))));
    var var_1 = Struct_4(global1[_wgslsmith_index_u32(~u_input.b.x, 7u)], Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * var_0.x))), vec4<bool>(-465f <= var_0.x, true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 1647f, _wgslsmith_f_op_f32(113f + -167f), _wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1381f, 1000f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 530f, var_0.x, -692f))))))), select(vec3<bool>(true, true, select(false, true, true)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), u_input.a.x <= u_input.a.x), vec3<bool>(true, true, 72022u != u_input.b.x), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), select(func_3(Struct_1(var_0.x, vec4<bool>(false, true, true, true))).xxx, vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)))));
    var var_2 = !var_1.a.a.b;
    global4 = array<vec4<u32>, 7>();
    global1 = array<Struct_2, 7>();
    global4 = array<vec4<u32>, 7>();
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(523f, var_1.a.a.a)))), !(!vec4<bool>(false, var_2.x, true, var_2.x))));
    var var_4 = Struct_3(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_3.a.a)), -_wgslsmith_add_i32(~max(u_input.a.x, -2147483647i), abs(u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_f32(step(var_1.a.a.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_4.a.x * 1257f), -1210f)), var_4.a.x, var_3.a.b.x)))), ~u_input.a, _wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(select(u_input.b.x, 0u, u_input.a.x != (i32(-1i) * -1i)), 28u)], vec4<u32>(u_input.b.x, u_input.b.x << (116859u % 32u), _wgslsmith_mult_u32(u_input.b.x, 119036u >> (global2.x % 32u)), global2.x)));
}

