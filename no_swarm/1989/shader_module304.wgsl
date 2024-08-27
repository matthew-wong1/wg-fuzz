struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec4<bool>(true, true, false, false));

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<vec3<bool>, 13>;

var<private> global3: bool;

var<private> global4: Struct_1 = Struct_1(1u, vec4<bool>(false, false, true, true));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1903f, 249f, -1047f, 869f)))))) + vec4<f32>(135f, -927f, _wgslsmith_f_op_f32(-1891f + _wgslsmith_f_op_f32(sign(-1444f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(114f - 289f))))) + vec4<f32>(1644f, _wgslsmith_div_f32(1573f, -452f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1645f + 776f), _wgslsmith_f_op_f32(floor(-493f)))) - _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, -1659f), _wgslsmith_f_op_f32(select(-650f, 1489f, false)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-290f, 764f), -994f, global0.b.x)), _wgslsmith_f_op_f32(min(1f, -449f)), all(vec2<bool>(global0.b.x, false))))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x * var_0.x))), 1000f)))), var_0.x));
    var var_2 = (vec2<i32>(-2147483647i, countOneBits(0i)) & -select(u_input.a.yz, u_input.a.xx, true)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, max(u_input.a.x, u_input.a.x) ^ u_input.a.x), vec2<i32>(-u_input.a.x, 0i) << (_wgslsmith_mult_vec2_u32(vec2<u32>(global0.a, global0.a) & vec2<u32>(global0.a, global4.a), max(vec2<u32>(26724u, 0u), vec2<u32>(57742u, 29022u))) % vec2<u32>(32u)));
    global3 = true;
    var var_3 = _wgslsmith_mod_u32(max(global0.a, global0.a) ^ global4.a, _wgslsmith_mod_u32(~global0.a, 77777u)) | (global4.a << (global0.a % 32u));
    return select(global0.b.yz, select(select(global4.b.wx, select(select(global0.b.yw, vec2<bool>(global4.b.x, false), false), !vec2<bool>(global0.b.x, false), any(vec3<bool>(global4.b.x, false, false))), global4.b.x), select(select(!vec2<bool>(false, global4.b.x), vec2<bool>(global0.b.x, global0.b.x), !global4.b.yz), select(vec2<bool>(global4.b.x, global0.b.x), vec2<bool>(true, true), vec2<bool>(false, global4.b.x)), global0.b.xw), global4.b.x), select(select(vec2<bool>(false, global0.b.x), global4.b.wy, true), vec2<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.a), vec2<u32>(58261u, global0.a)) >= 0u), global4.b.x));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: u32) -> i32 {
    let var_0 = Struct_1(max(~((global4.a ^ 12519u) | _wgslsmith_add_u32(global0.a, 4294967295u)), ~(_wgslsmith_sub_u32(13827u, arg_3) & (arg_1.a | arg_1.a))), global0.b);
    var var_1 = Struct_1(2900u, vec4<bool>(false, var_0.b.x, !global4.b.x, var_0.b.x));
    var var_2 = vec3<f32>(arg_2.x, arg_2.x, _wgslsmith_f_op_f32(round(-1375f)));
    global3 = !(!any(var_0.b));
    let var_3 = Struct_1(global4.a, arg_1.b);
    return min(u_input.a.x, _wgslsmith_mult_i32(countOneBits(507i), u_input.a.x)) ^ u_input.a.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>(any(arg_1.b.ww), func_4(any(func_3()), Struct_1(148282u >> (1u % 32u), select(arg_2.b, arg_2.b, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-593f, -799f, 1581f, 146f)))), 1u) != u_input.a.x);
    var var_1 = 93833u;
    var var_2 = max(global4.a, ~1u);
    var var_3 = Struct_1(~abs(~4294967295u), vec4<bool>(!any(vec2<bool>(global0.b.x, var_0.x)), all(!arg_2.b.xz), any(vec2<bool>(true, !global4.b.x)), all(select(!arg_2.b.zw, vec2<bool>(global0.b.x, false), global4.b.wy))));
    var var_4 = global2[_wgslsmith_index_u32(3069u, 13u)];
    return Struct_1(arg_0.x, !select(select(arg_2.b, vec4<bool>(global0.b.x, false, var_4.x, true), false), global0.b, arg_1.b));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    global0 = func_2(vec4<u32>(~arg_1.a, abs(1u), ~(~arg_1.a), ~_wgslsmith_mod_u32(select(global0.a, global0.a, false), ~67724u)), Struct_1(~global4.a, vec4<bool>(true, global0.b.x, !select(false, global4.b.x, true), true)), arg_1);
    var var_0 = global1[_wgslsmith_index_u32(15540u, 6u)];
    var var_1 = countOneBits(vec4<u32>(_wgslsmith_div_u32(min(1u, global0.a), arg_1.a), ~arg_1.a, _wgslsmith_mod_u32(~global4.a, arg_1.a | global4.a), 16120u)) | (~_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.a, arg_1.a, global0.a, global0.a), vec4<u32>(global0.a, var_0.a, 48211u, global4.a)) >> (firstLeadingBit(vec4<u32>(~global4.a, 0u, global4.a, ~2883u)) % vec4<u32>(32u)));
    let var_2 = select(func_2(vec4<u32>(~var_0.a, _wgslsmith_add_u32(25419u, _wgslsmith_dot_vec3_u32(var_1.xzz, vec3<u32>(var_1.x, arg_1.a, var_1.x))), _wgslsmith_clamp_u32(func_2(vec4<u32>(4294967295u, 1u, var_1.x, 4294967295u), Struct_1(48179u, vec4<bool>(true, true, var_0.b.x, arg_0.x)), global1[_wgslsmith_index_u32(52288u, 6u)]).a, _wgslsmith_div_u32(0u, global0.a), global4.a), 18079u), func_2(vec4<u32>(global0.a & arg_1.a, firstTrailingBit(global0.a), var_0.a, _wgslsmith_sub_u32(9704u, arg_1.a)), global1[_wgslsmith_index_u32(global0.a, 6u)], Struct_1(arg_1.a, var_0.b)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(1u) >> ((arg_1.a & global0.a) % 32u), arg_1.a), 6u)]).b.zww, select(global4.b.wxz, global4.b.xyy, select(select(vec3<bool>(true, false, var_0.b.x), select(global4.b.yzx, vec3<bool>(global4.b.x, global4.b.x, global0.b.x), var_0.b.x), select(global0.b.xwz, global2[_wgslsmith_index_u32(global0.a, 13u)], vec3<bool>(arg_1.b.x, global4.b.x, true))), var_0.b.ywx, true)), !(firstTrailingBit(u_input.a.x) != -1i));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-500f, 268f, -1405f) * vec3<f32>(594f, -1262f, 119f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-611f, -1961f, -201f))) + vec3<f32>(-2026f, _wgslsmith_f_op_f32(select(318f, -1041f, global0.b.x)), -243f)))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1157f)))), _wgslsmith_f_op_f32(abs(-610f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-718f * -623f), 209f))), -1159f));
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> u32 {
    global0 = Struct_1(abs(global4.a), !vec4<bool>(_wgslsmith_mult_i32(52424i, u_input.a.x) >= -69580i, false, true, true));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-792f, _wgslsmith_div_f32(-751f, 2605f), _wgslsmith_f_op_f32(f32(-1f) * -1226f), _wgslsmith_div_f32(-2542f, 310f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1141f, 1888f, -1405f, -1463f), vec4<f32>(1192f, -1329f, 1000f, -798f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(324f, 907f, -469f, 522f), vec4<f32>(-1000f, 1037f, -533f, -1276f), global0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-939f, 1948f, 1459f, 1401f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1851f, 1308f, 789f, 2037f)))))));
    let var_1 = global1[_wgslsmith_index_u32(global0.a, 6u)];
    global4 = func_2(vec4<u32>(0u, max(4925u << (0u % 32u), 27129u), 4294967295u, ((arg_0.a >> (global0.a % 32u)) >> (global4.a % 32u)) ^ 12025u), arg_0, global1[_wgslsmith_index_u32(0u, 6u)]);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-793f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.x))))), -1493f));
    return _wgslsmith_sub_u32(~23403u, 31193u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global1[_wgslsmith_index_u32(global0.a, 6u)];
    let var_0 = -_wgslsmith_div_i32(abs(u_input.a.x), firstLeadingBit(u_input.a.x));
    global2 = array<vec3<bool>, 13>();
    var var_1 = Struct_1(_wgslsmith_div_u32(func_5(func_1(vec2<bool>(global4.b.x, global0.b.x), Struct_1(global4.a, global0.b))), 0u) & _wgslsmith_add_u32(global0.a, ~global4.a), vec4<bool>(global4.b.x, global0.b.x | false, all(vec3<bool>(global4.b.x, func_3().x, global0.b.x)), all(vec4<bool>(true, true, global4.b.x, true))));
    global4 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_1.a, 25355u), 6u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -921f)) + 873f) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(915f)))), _wgslsmith_f_op_f32(sign(-187f))));
    let var_3 = !vec4<bool>(!any(vec3<bool>(true, true, global0.b.x)), true, global0.b.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1723f), 1f), -1096f, _wgslsmith_f_op_f32(f32(-1f) * -1057f)), ~firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, -635i), vec4<i32>(2147483647i, var_0, -7691i, 0i)) ^ -vec4<i32>(1i, u_input.a.x, 51556i, 1i)), abs(~_wgslsmith_sub_vec3_u32(max(vec3<u32>(105434u, global0.a, 4294967295u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(0u, 41120u, 29876u))), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(1i, 80811i, 38532i, 1i >> (global0.a % 32u))), vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 8481i) | -1i, ~(-var_0), _wgslsmith_add_i32(u_input.a.x, select(u_input.a.x, u_input.a.x, true)), -56109i)));
}

